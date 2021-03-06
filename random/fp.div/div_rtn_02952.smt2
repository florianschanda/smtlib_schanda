(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01111100100011110011001)))
;; x should be Float32(0xCABE4799 [Rational(-12470169, 2), -6235084.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x007FFFFF)))
;; y should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTN x y)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
