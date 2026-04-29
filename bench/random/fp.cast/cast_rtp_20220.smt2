(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTP conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11111011110001001011111)))
;; x should be Float32(0x4AFDE25F [Rational(16638559, 2), 8319279.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x415FBC4BE0000000 [Rational(16638559, 2), 8319279.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010101 #b1111101111000100101111100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
