(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00413B4C)))
;; x should be Float32(0x00413B4C [Rational(1068755, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00800000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7890E561)))
;; z should be Float32(0x7890E561 [Rational(23510722017500477958631936428605440), 23510722017500477958631936428605440.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #x7890E561))))
(check-sat)
(exit)
