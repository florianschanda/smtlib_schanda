(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x47833667)))
;; x should be Float32(0x47833667 [Rational(8599143, 128), 67180.804688])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x40F066CCE0000000 [Rational(8599143, 128), 67180.804688])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x40F066CCE0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
