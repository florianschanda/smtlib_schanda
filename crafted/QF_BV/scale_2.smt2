(set-logic QF_BV)

(declare-const a (_ BitVec 16))
(declare-const b (_ BitVec 16))
(declare-const c (_ BitVec 16))

(define-const r (_ BitVec 16)
  (bvudiv (bvmul a b) c))

(assert (bvule a b))
(assert (bvult b c))

(assert (not (bvule r c)))

(check-sat)
(exit)
