(set-logic QF_BV)
(set-info :source |SPARK inspired benchmarks by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat) ;; I think

(define-fun in_range_sum ((x (_ BitVec 64))) Bool
  (bvule x (_ bv18446744073709551 64)))

(declare-fun capacity () (_ BitVec 64))
(declare-fun requested_capacity () (_ BitVec 64))
(declare-fun value () (_ BitVec 64))

(assert (and (bvuge capacity (_ bv1 64))
             (bvule capacity (_ bv4294967295 64))))
(assert (bvule requested_capacity (_ bv18446744073709551 64)))
(assert (bvule value (_ bv4294967295 64)))
(assert (bvugt requested_capacity capacity))
(assert (bvule value capacity))

(define-fun scale () (_ BitVec 64)
  (bvudiv (bvmul value capacity) requested_capacity))

(assert (not (and (bvule scale (_ bv4294967295 64))
                  (bvule scale capacity))))
(check-sat)
(exit)
