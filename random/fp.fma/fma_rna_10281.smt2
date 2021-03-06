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
(assert (= y (_ -zero 8 24)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4AE5FB69)))
;; z should be Float32(0x4AE5FB69 [Rational(15072105, 2), 7536052.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #x4AE5FB69))))
(check-sat)
(exit)
