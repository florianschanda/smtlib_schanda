(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-subnormal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x800EDDBF)))
;; x should be Float32(0x800EDDBF [Rational(-974271, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0xBF7DDBB7E00000000000000000000000 [Rational(-974271, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b011111101111101 #b1101101110110111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
