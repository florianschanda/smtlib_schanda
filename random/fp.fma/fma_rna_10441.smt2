(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000000000000000000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10101010101111110001010)))
;; y should be Float32(0x80555F8A [Rational(-2797509, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z (_ -zero 8 24)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (_ +zero 8 24))))
(check-sat)
(exit)
