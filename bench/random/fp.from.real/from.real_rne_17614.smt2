(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCFDD6B63)))
;; x should be Float32(0xCFDD6B63 [Rational(-7429604864), -7429604864.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- 7429605121.0))))
;; w should be Float32(0xCFDD6B64 [Rational(-7429605376), -7429605376.000000])

(assert (distinct x w))
(check-sat)
(exit)
