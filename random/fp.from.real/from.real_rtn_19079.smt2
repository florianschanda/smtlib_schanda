(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB8E1F022)))
;; x should be Float32(0xB8E1F022 [Rational(-7403537, 68719476736), -0.000108])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 1563837593.0 137438953472000.0))))
;; w should be Float32(0x373EE5EC [Rational(3127675, 274877906944), 0.000011])

(assert (distinct x w))
(check-sat)
(exit)
