(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100000001110111100001)))
;; x should be Float32(0xCAB01DE1 [Rational(-11541985, 2), -5770992.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 642416171.0 128.0))))
;; w should be Float32(0x4A9929F9 [Rational(10037753, 2), 5018876.500000])

(assert (distinct x w))
(check-sat)
(exit)
