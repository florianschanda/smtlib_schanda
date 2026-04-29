(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A8F0235)))
;; x should be Float32(0x4A8F0235 [Rational(9372213, 2), 4686106.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x4151E046A0000000 [Rational(9372213, 2), 4686106.500000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x4151E046A0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
