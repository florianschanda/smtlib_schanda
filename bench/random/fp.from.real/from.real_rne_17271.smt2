(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AB20F3F)))
;; x should be Float32(0x4AB20F3F [Rational(11669311, 2), 5834655.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 1166931057.0 200.0))))
;; w should be Float32(0x4AB20F3F [Rational(11669311, 2), 5834655.500000])

(assert (= x w))
(check-sat)
(exit)
