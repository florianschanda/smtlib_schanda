(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA94C6CD)))
;; x should be Float32(0xCA94C6CD [Rational(-9750221, 2), -4875110.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b11101001))
;; z should be -23

(assert (= y z))
(check-sat)
(exit)
