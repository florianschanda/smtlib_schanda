(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB2DE79)))
;; x should be Float32(0xCAB2DE79 [Rational(-11722361, 2), -5861180.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 729161333.0 128.0))))
;; w should be Float32(0x4AADD87A [Rational(5696573), 5696573.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
