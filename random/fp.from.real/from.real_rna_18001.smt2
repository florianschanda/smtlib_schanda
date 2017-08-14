(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA576776)))
;; x should be Float32(0xCA576776 [Rational(-7058363, 2), -3529181.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 779573583.0 256.0))))
;; w should be Float32(0x4A39DD65 [Rational(12180837, 4), 3045209.250000])

(assert (distinct x w))
(check-sat)
(exit)
