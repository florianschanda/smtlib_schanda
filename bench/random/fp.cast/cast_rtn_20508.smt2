(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01010010011101000110110)))
;; x should be Float32(0x4A293A36 [Rational(5545243, 2), 2772621.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x41452746C0000000 [Rational(5545243, 2), 2772621.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x41452746C0000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
