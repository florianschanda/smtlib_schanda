(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC5A36087)))
;; x should be Float32(0xC5A36087 [Rational(-10707079, 2048), -5228.065918])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0xC00B46C10E0000000000000000000000 [Rational(-10707079, 2048), -5228.065918])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000000001011 #b0100011011000001000011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
