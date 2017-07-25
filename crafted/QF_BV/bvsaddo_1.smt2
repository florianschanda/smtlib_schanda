(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-option :produce-models true)
(set-info :source |Overflow checking benchmarks by Florian Schanda|)
(set-info :category crafted)
;;(set-info :status unsat)

(define-fun obvious_1_bvsaddo_32 ((a (_ BitVec 32)) (b (_ BitVec 32))) Bool
  (let ((result (bvadd ((_ sign_extend 1) a)
                       ((_ sign_extend 1) b)))
        (first (bvneg (bvshl (_ bv1 33) (_ bv31 33))))
        (last  (bvsub (bvshl (_ bv1 33) (_ bv31 33)) (_ bv1 33))))
    (or (bvslt result first)
        (bvslt last result)))
  )

(define-fun obvious_2_bvsaddo_32 ((a (_ BitVec 32)) (b (_ BitVec 32))) Bool
  (let ((result (bvadd ((_ sign_extend 1) a)
                       ((_ sign_extend 1) b))))
    (distinct ((_ extract 31 31) result)
              ((_ extract 32 32) result))
  ))

(declare-const x (_ BitVec 32))
(declare-const y (_ BitVec 32))

(assert (not (= (obvious_1_bvsaddo_32 x y)
                (obvious_2_bvsaddo_32 x y))))

(check-sat)
;; (get-value (x y))
;; (get-value ((obvious_1_bvsaddo_32 x y)))
;; (get-value ((obvious_2_bvsaddo_32 x y)))
(exit)
