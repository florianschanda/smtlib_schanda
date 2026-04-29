(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00100101100011010111001)))
;; x should be Float32(0xCA92C6B9 [Rational(-9619129, 2), -4809564.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN 668091.0)))
;; w should be Float32(0x49231BB0 [Rational(668091), 668091.000000])

(assert (distinct x w))
(check-sat)
(exit)
