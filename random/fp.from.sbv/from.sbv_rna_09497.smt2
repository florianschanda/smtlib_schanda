(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.sbv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvsge x #b11100011111101110101001011001100110100011001000001111101100110101101101111011000011101110000100001110000110001101000111110101010))
;; x should be -37263435168714760019927624808270491734

(declare-const r Float16)
(assert (= r ((_ to_fp 5 11) RNA x)))
(assert (fp.geq r (fp #b1 #b11111 #b0000000000)))
(check-sat)
(exit)
