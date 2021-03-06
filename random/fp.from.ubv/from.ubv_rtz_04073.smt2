(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b00101011010101000000000001001001110101101101001101001000010100110110010010011000111110101101010010010010111001100100111110010111))
;; x should be 57592962605009388595378785198889389975

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RTZ x)))
(assert (not (fp.leq r (fp #b0 #b10001111100 #b0101101010100000000000100100111010110110100110100100))))
(check-sat)
(exit)
