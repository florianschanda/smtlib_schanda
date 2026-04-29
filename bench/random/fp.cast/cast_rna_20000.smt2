(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x3F8DDB4F)))
;; x should be Float32(0x3F8DDB4F [Rational(9296719, 8388608), 1.108255])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RNA x)))
;; y should be Float16(0x3C6F [Rational(1135, 1024), 1.108398])

(declare-const z Float16)
(assert (= z ((_ to_fp 5 11) #x3C6F)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
