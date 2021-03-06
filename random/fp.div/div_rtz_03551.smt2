(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00351E13)))
;; x should be Float32(0x00351E13 [Rational(3481107, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b00101010000100111111011)))
;; y should be Float32(0xCA9509FB [Rational(-9767419, 2), -4883709.500000])

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x80000000)))
(check-sat)
(exit)
