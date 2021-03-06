(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB34E1A7E)))
;; x should be Float32(0xB34E1A7E [Rational(-6753599, 140737488355328), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xBE69C34FC0000000 [Rational(-6753599, 140737488355328), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xBE69C34FC0000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
