(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b1 #b11011001 #b10111010101111010111110)))
;; x should be Float32(0xECDD5EBE [Rational(-2140960107724774392599674880), -2140960107724774392599674880.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTZ x)))
;; y should be Float128(0xC059BABD7C0000000000000000000000 [Rational(-2140960107724774392599674880), -2140960107724774392599674880.000000])

(declare-const z Float128)
(assert (= z (fp #b1 #b100000001011001 #b1011101010111101011111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
