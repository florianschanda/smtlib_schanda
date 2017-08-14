(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b01110010 #b01100100100011111100111)))
;; x should be Float32(0x393247E7 [Rational(11683815, 68719476736), 0.000170])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x3FF2648FCE0000000000000000000000 [Rational(11683815, 68719476736), 0.000170])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111111110010 #b0110010010001111110011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
