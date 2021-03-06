(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000000)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0FC19337)))
;; y should be Float32(0x0FC19337 [Rational(12686135, 664613997892457936451903530140172288), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b00000000000000000000000)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (_ -zero 8 24))))
(check-sat)
(exit)
