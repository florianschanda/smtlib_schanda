(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b11001100001011110010100000000111001100001100111011001100101011010101110000100001000101010000100111101011100111101000101010001100))
;; x should be 271407360958560544388537912195750464140

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.leq r (fp #b0 #b11111110 #b10011000010111100101000))))
(check-sat)
(exit)
