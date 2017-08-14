(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b00001011 #b01101101000001101010000)))
;; x should be Float32(0x05B68350 [Rational(747573, 43556142965880123323311949751266331066368), 0.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x3F8B6D06A00000000000000000000000 [Rational(747573, 43556142965880123323311949751266331066368), 0.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b011111110001011 #b0110110100000110101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
