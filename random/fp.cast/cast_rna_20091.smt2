(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNA conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB52C15)))
;; x should be Float32(0xCAB52C15 [Rational(-11873301, 2), -5936650.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC156A582A0000000 [Rational(-11873301, 2), -5936650.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010101 #b0110101001011000001010100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
