(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A3E2D0A)))
;; x should be Float32(0x4A3E2D0A [Rational(6231685, 2), 3115842.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x4147C5A140000000 [Rational(6231685, 2), 3115842.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010100 #b0111110001011010000101000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
