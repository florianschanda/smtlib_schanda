(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b01110001 #b11011101001101100111101)))
;; x should be Float32(0x38EE9B3D [Rational(15637309, 137438953472), 0.000114])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNE x)))
;; y should be Float16(0x0775 [Rational(1909, 16777216), 0.000114])

(declare-const z Float16)
(assert (= z (fp #b0 #b00001 #b1101110101)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
