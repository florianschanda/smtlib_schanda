(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-halfpoint) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01110111011110101100110)))
;; x should be Float32(0xCA3BBD66 [Rational(-6151859, 2), -3075929.500000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(-oo)

(declare-const z Float16)
(assert (= z (_ -oo 5 11)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
