(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (= x #b11010000011110010000111111101010100000001100010010111111101110100011001101010101010101101100110010111101000011110110011101101000))
;; x should be 277108013858531234944523634725727725416

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.eq r (fp #b0 #b10001111110 #b1010000011110010000111111101010100000001100010010111))))
(check-sat)
(exit)
