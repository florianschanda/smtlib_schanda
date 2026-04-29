(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-info :source |SPARK inspired benchmarks by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

;; verification of the spark lemma library

(declare-const arg1 (_ BitVec 16))
(declare-const arg2 (_ BitVec 16))
(assert (not (= arg2 (_ bv0 16))))

(define-const x (_ BitVec 17) ((_ sign_extend 1) arg1))
(define-const y (_ BitVec 17) ((_ sign_extend 1) arg2))
(assert (not (= (bvsmod (bvneg x) (bvneg y))
                (bvneg (bvsmod x y)))))
(check-sat)
(exit)
