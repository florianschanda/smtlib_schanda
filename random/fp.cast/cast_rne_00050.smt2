(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCCB62524)))
;; x should be Float32(0xCCB62524 [Rational(-95496480), -95496480.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xC196C4A480000000 [Rational(-95496480), -95496480.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000011001 #b0110110001001010010010000000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
