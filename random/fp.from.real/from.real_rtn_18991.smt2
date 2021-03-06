(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on high bound (exclusive)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00100101100011010111001)))
;; x should be Float32(0xCA92C6B9 [Rational(-9619129, 2), -4809564.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- 4809564.0))))
;; w should be Float32(0xCA92C6B8 [Rational(-4809564), -4809564.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
