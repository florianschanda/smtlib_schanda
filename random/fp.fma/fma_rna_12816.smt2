(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b01111010 #b11001100001110001000100)))
;; x should be Float32(0xBD661C44 [Rational(-3770129, 67108864), -0.056179])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z (_ -zero 8 24)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #x00000000))))
(check-sat)
(exit)
