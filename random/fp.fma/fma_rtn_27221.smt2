(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7FA1F150)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b0 #b11010010 #b00111000000000001110101)))
;; y should be Float32(0x691C0075 [Rational(11787161633058673454481408), 11787161633058673454481408.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFF7FFFFF)))
;; z should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
