(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RNE conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x28A88EE9)))
;; x should be Float32(0x28A88EE9 [Rational(11046633, 590295810358705651712), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x3D1511DD20000000 [Rational(11046633, 590295810358705651712), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01111010001 #b0101000100011101110100100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
