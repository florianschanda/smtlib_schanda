(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01110010001010111011010)))
;; x should be Float32(0xCAB915DA [Rational(-6064877), -6064877.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -6064877

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101000110111010100010011))
;; z should be -6064877

(assert (not (= y z)))
(check-sat)
(exit)
