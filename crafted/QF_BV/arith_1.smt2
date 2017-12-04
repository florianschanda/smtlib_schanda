(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-info :source |SPARK inspired problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x (_ BitVec 64))
(declare-const y (_ BitVec 64))
(declare-const z (_ BitVec 64))

(define-const a (_ BitVec 64) (bvmul x (bvadd y z)))
(define-const b (_ BitVec 64) (bvadd (bvmul x y) (bvmul x z)))

(assert (distinct a b))
(check-sat)
(exit)
