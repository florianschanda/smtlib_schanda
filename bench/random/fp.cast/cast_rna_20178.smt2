(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00010111001010011010000)))
;; x should be Float32(0x800B94D0 [Rational(-47437, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xB7D729A000000000 [Rational(-47437, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01101111101 #b0111001010011010000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
