(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-info :source |SPARK inspired problems by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x (_ BitVec 9))
(declare-const y (_ BitVec 9))

(define-const a (_ BitVec 9)
  (bvmul (bvadd x y) (bvadd x y)))

(define-const b (_ BitVec 9)
  (bvadd (bvmul x x) (bvmul y (bvadd (bvmul #b000000010 x) y))))

(assert (distinct a b))
(check-sat)
(exit)
