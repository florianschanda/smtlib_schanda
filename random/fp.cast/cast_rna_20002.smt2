(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x3F8DDB4F)))
;; x should be Float32(0x3F8DDB4F [Rational(9296719, 8388608), 1.108255])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RNA x)))
;; y should be Float128(0x3FFF1BB69E0000000000000000000000 [Rational(9296719, 8388608), 1.108255])

(declare-const z Float128)
(assert (= z ((_ to_fp 15 113) #x3FFF1BB69E0000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
