(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b11100101 #b01001011110011111010001)))
;; x should be Float32(0xF2A5E7D1 [Rational(-6572195258809322935653844910080), -6572195258809322935653844910080.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0xC654BCFA20000000 [Rational(-6572195258809322935653844910080), -6572195258809322935653844910080.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC654BCFA20000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
