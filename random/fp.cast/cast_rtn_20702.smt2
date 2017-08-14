(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b10001011 #b01000110110000010000111)))
;; x should be Float32(0xC5A36087 [Rational(-10707079, 2048), -5228.065918])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTN x)))
;; y should be Float16(0xED1C [Rational(-5232), -5232.000000])

(declare-const z Float16)
(assert (= z (fp #b1 #b11011 #b0100011100)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
