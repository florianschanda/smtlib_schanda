(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTZ conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAE1ABAB)))
;; x should be Float32(0xCAE1ABAB [Rational(-14789547, 2), -7394773.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0xC15C357560000000 [Rational(-14789547, 2), -7394773.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010101 #b1100001101010111010101100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
