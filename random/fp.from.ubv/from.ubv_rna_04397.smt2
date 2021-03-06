(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvule x #b10001111000011011010011011001011011010001000110111101111000100110000110000101011101101101010100100110101100111100001111000101101))
;; x should be 190150486252073147716306301302521863725

(declare-const r Float64)
(assert (= r ((_ to_fp_unsigned 11 53) RNA x)))
(assert (fp.leq r (fp #b0 #b10001111110 #b0001111000011011010011011001011011010001000110111110)))
(check-sat)
(exit)
