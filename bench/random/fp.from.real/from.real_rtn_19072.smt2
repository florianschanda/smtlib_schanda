(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF8DD6383)))
;; x should be Float32(0xF8DD6383 [Rational(-35922373224257743434544850652889088), -35922373224257743434544850652889088.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (- 35922373224257743434544850652889089.0))))
;; w should be Float32(0xF8DD6384 [Rational(-35922375700137822005305400451137536), -35922375700137822005305400451137536.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
