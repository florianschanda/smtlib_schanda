(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC19F68A3)))
;; x should be Float32(0xC19F68A3 [Rational(-10447011, 524288), -19.926092])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 89811143573.0 5242880000.0))))
;; w should be Float32(0x41890A7A [Rational(4490557, 262144), 17.130116])

(assert (distinct x w))
(check-sat)
(exit)
