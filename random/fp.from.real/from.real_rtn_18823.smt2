(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on high bound (exclusive)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x32219407)))
;; x should be Float32(0x32219407 [Rational(10589191, 1125899906842624), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 1323649.0 140737488355328.0))))
;; w should be Float32(0x32219408 [Rational(1323649, 140737488355328), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
