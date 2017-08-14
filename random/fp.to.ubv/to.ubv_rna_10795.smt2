(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11000001001100110110101)))
;; x should be Float32(0xCAE099B5 [Rational(-14719413, 2), -7359706.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11000110010011000001011101101100))
;; z should be 3326875500

(assert (not (= y z)))
(check-sat)
(exit)
