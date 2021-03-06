(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x802B5C4C)))
;; y should be Float32(0x802B5C4C [Rational(-710419, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x49EF4914)))
;; z should be Float32(0x49EF4914 [Rational(3920453, 2), 1960226.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (_ +oo 8 24))))
(check-sat)
(exit)
