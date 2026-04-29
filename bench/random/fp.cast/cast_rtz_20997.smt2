(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10100001 #b00011000000000000110111)))
;; x should be Float32(0xD08C0037 [Rational(-18790594560), -18790594560.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0xC2118006E0000000 [Rational(-18790594560), -18790594560.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000100001 #b0001100000000000011011100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
