(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB27D1B)))
;; x should be Float32(0xCAB27D1B [Rational(-11697435, 2), -5848717.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- 5848720.0))))
;; w should be Float32(0xCAB27D20 [Rational(-5848720), -5848720.000000])

(assert (distinct x w))
(check-sat)
(exit)
