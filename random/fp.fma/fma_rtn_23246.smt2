(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0FDF8D38)))
;; x should be Float32(0x0FDF8D38 [Rational(1831335, 83076749736557242056487941267521536), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x79EE22E1)))
;; y should be Float32(0x79EE22E1 [Rational(154559260074297355232578860035866624), 154559260074297355232578860035866624.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x0045C67E)))
;; z should be Float32(0x0045C67E [Rational(2286399, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b10010100 #b10011111111001110111111)))
(check-sat)
(exit)
