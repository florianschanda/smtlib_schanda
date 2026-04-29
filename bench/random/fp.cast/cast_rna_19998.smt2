(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00001011 #b01101101000001101010000)))
;; x should be Float32(0x05B68350 [Rational(747573, 43556142965880123323311949751266331066368), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x38B6D06A00000000 [Rational(747573, 43556142965880123323311949751266331066368), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x38B6D06A00000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
