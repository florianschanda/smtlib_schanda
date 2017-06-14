(set-logic QF_BV)
(set-info :source |SPARK inspired problems by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(declare-const x (_ BitVec 32))

(define-const r1 (_ BitVec 32)
  (bvmul (bvxor x (bvlshr x (_ bv16 32))) #x045d9f3b))

(define-const r2 (_ BitVec 32)
  (bvmul (bvxor r1 (bvlshr r1 (_ bv16 32))) #x045d9f3b))

(define-const r3 (_ BitVec 32)
  (bvxor r2 (bvlshr r2 (_ bv16 32))))

(assert (distinct x (_ bv0 32)))
(assert (= x r3))
(check-sat)
(exit)
