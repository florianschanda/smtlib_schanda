(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b00101110011110101111000)))
;; x should be Float32(0x49173D78 [Rational(1238959, 2), 619479.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x4122E7AF00000000 [Rational(1238959, 2), 619479.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x4122E7AF00000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
