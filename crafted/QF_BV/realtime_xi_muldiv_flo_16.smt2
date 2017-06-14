(set-logic QF_BV)
(set-option :produce-models true)
(set-info :source |Verification of Mul_Div of Ada.RealTime by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)
(set-info :status unsat)

(define-const p32 (_ BitVec 16) (bvshl (_ bv1 16) (_ bv8 16)))

(declare-const a (_ BitVec 16))
(declare-const b_origin (_ BitVec 8))
(declare-const c_origin (_ BitVec 8))
(define-const b (_ BitVec 16) ((_ zero_extend 8) b_origin))
(define-const c (_ BitVec 16) ((_ zero_extend 8) c_origin))
(assert (not (= c_origin (_ bv0 8))))

;;
;; CODE
;;
(define-const b_a_high (_ BitVec 16) (bvmul b (bvudiv a p32)))
(define-const b_a_low  (_ BitVec 16) (bvmul b (bvurem a p32)))

(define-const tmp1 (_ BitVec 16) (bvadd (bvurem b_a_low p32)
                                        (bvlshr c (_ bv1 16))))
(define-const ab_1 (_ BitVec 16) (bvadd (bvadd (bvudiv b_a_low p32)
                                               b_a_high)
                                        (bvudiv tmp1 p32)))
(define-const exception Bool (bvuge (bvudiv ab_1 p32) c))
(define-const ab_0 (_ BitVec 16) (bvurem tmp1 p32))

(define-const w_1 (_ BitVec 16) (bvudiv ab_1 c))
(define-const r   (_ BitVec 16) (bvurem ab_1 c))
(define-const w_0 (_ BitVec 16) (bvudiv (bvadd (bvmul r p32) ab_0) c))

(define-const mul_div (_ BitVec 32) ((_ zero_extend 16)
                                     (bvadd w_0 (bvmul w_1 p32))))

;;
;; SPEC
;;
(define-const spec_result__0 (_ BitVec 32)
  (bvmul ((_ zero_extend 16) a)
         ((_ zero_extend 16) b)))

(define-const spec_result__1 (_ BitVec 32)
  (bvudiv spec_result__0 ((_ zero_extend 16) c)))

(define-const round_up Bool
  (bvuge (bvshl (bvurem spec_result__0 ((_ zero_extend 16) c)) (_ bv1 32))
         ((_ zero_extend 16) c)))

(define-const spec_result__2 (_ BitVec 32)
  (bvadd spec_result__1 (ite round_up (_ bv1 32) (_ bv0 32))))

(define-const spec_exception Bool
  (bvuge spec_result__2 (bvshl (_ bv1 32) (_ bv16 32))))

;;
;; VC
;;
(assert
 (not (and (= exception spec_exception)
           (=> (not exception) (= mul_div spec_result__2)))))
(check-sat)
;; (get-value (a b c))
;; (get-value (b_a_high b_a_low))
;; (get-value (tmp1))
;; (get-value (ab_0 ab_1))
;; (get-value (w_0 w_1 r))
;; (get-value (exception spec_exception))
;; (get-value (mul_div))
;; (get-value (spec_result__2 round_up))
(exit)
