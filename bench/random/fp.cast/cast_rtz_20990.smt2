(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b1 #b11011001 #b10111010101111010111110)))
;; x should be Float32(0xECDD5EBE [Rational(-2140960107724774392599674880), -2140960107724774392599674880.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(0xFBFF [Rational(-65504), -65504.000000])

(declare-const z Float16)
(assert (= z (fp #b1 #b11110 #b1111111111)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
