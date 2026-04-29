(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; RTN conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA93872B)))
;; x should be Float32(0xCA93872B [Rational(-9668395, 2), -4834197.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xC15270E560000000 [Rational(-9668395, 2), -4834197.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010101 #b0010011100001110010101100000000000000000000000000000)))
;; z should be y

(assert (= y z))
(check-sat)
(exit)
