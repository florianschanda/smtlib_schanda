(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xEA9FB1BB)))
;; x should be Float32(0xEA9FB1BB [Rational(-96529256863667874833629184), -96529256863667874833629184.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- 96529266087039911688404993.0))))
;; w should be Float32(0xEA9FB1BC [Rational(-96529266087039911688404992), -96529266087039911688404992.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
