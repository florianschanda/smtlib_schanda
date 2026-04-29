(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCFDD6B63)))
;; x should be Float32(0xCFDD6B63 [Rational(-7429604864), -7429604864.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 185740118416.0 25.0)))))
;; w should be Float32(0xCFDD6B63 [Rational(-7429604864), -7429604864.000000])

(assert (= x w))
(check-sat)
(exit)
