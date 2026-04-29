(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01001110000101111110011)))
;; x should be Float32(0x4AA70BF3 [Rational(10947571, 2), 5473785.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x4154E17E60000000 [Rational(10947571, 2), 5473785.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010101 #b0100111000010111111001100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
