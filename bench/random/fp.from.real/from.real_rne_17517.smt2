(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA5559E6)))
;; x should be Float32(0xCA5559E6 [Rational(-6991091, 2), -3495545.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 1249055163.0 1024.0)))))
;; w should be Float32(0xC994E623 [Rational(-9758243, 8), -1219780.375000])

(assert (not (distinct x w)))
(check-sat)
(exit)
