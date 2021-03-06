(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x25548973)))
;; y should be Float32(0x25548973 [Rational(13928819, 75557863725914323419136), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80555798)))
;; z should be Float32(0x80555798 [Rational(-699123, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x7F800000))))
(check-sat)
(exit)
