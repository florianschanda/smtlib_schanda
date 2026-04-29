(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49A96BA4)))
;; x should be Float32(0x49A96BA4 [Rational(2775785, 2), 1387892.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x41352D7480000000 [Rational(2775785, 2), 1387892.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010011 #b0101001011010111010010000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
