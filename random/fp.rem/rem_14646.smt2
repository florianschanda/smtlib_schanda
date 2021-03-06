(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA8F3881)))
;; x should be Float32(0xCA8F3881 [Rational(-9386113, 2), -4693056.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x005211F5)))
;; y should be Float32(0x005211F5 [Rational(5378549, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (= result ((_ to_fp 8 24) #x0021D234)))
(check-sat)
(exit)
