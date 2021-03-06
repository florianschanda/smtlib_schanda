(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01111011111011111001110)))
;; x should be Float32(0x003DF7CE [Rational(2030567, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F7FFFFF)))
;; y should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.sub RNE x y)))
(assert (= result ((_ to_fp 8 24) #xFF7FFFFF)))
(check-sat)
(exit)
