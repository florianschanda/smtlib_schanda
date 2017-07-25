(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-option :produce-models true)
(set-info :source |Verification of Mul_Div of Ada.RealTime by Florian Schanda|)
(set-info :category crafted)
(set-info :status unsat)

(define-const p32 (_ BitVec 8) (bvshl (_ bv1 8) (_ bv4 8)))

(declare-const a (_ BitVec 8))
(declare-const b_origin (_ BitVec 4))
(declare-const c_origin (_ BitVec 4))
(define-const b (_ BitVec 8) ((_ zero_extend 4) b_origin))
(define-const c (_ BitVec 8) ((_ zero_extend 4) c_origin))
(assert (not (= c_origin (_ bv0 4))))

;;
;; CODE
;;
(define-const b_a_high (_ BitVec 8) (bvmul b (bvudiv a p32)))
(define-const b_a_low  (_ BitVec 8) (bvmul b (bvurem a p32)))

(define-const tmp1 (_ BitVec 8) (bvadd (bvurem b_a_low p32)
                                        (bvlshr c (_ bv1 8))))
(define-const ab_1 (_ BitVec 8) (bvadd (bvadd (bvudiv b_a_low p32)
                                               b_a_high)
                                        (bvudiv tmp1 p32)))
(define-const exception Bool (bvuge (bvudiv ab_1 p32) c))
(define-const ab_0 (_ BitVec 8) (bvurem tmp1 p32))

(define-const w_1 (_ BitVec 8) (bvudiv ab_1 c))
(define-const r   (_ BitVec 8) (bvurem ab_1 c))
(define-const w_0 (_ BitVec 8) (bvudiv (bvadd (bvmul r p32) ab_0) c))

(define-const mul_div (_ BitVec 16) ((_ zero_extend 8)
                                     (bvadd w_0 (bvmul w_1 p32))))

;;
;; SPEC
;;
(define-const spec_result__0 (_ BitVec 16)
  (bvmul ((_ zero_extend 8) a)
         ((_ zero_extend 8) b)))

(define-const spec_result__1 (_ BitVec 16)
  (bvudiv spec_result__0 ((_ zero_extend 8) c)))

(define-const round_up Bool
  (bvuge (bvshl (bvurem spec_result__0 ((_ zero_extend 8) c)) (_ bv1 16))
         ((_ zero_extend 8) c)))

(define-const spec_result__2 (_ BitVec 16)
  (bvadd spec_result__1 (ite round_up (_ bv1 16) (_ bv0 16))))

(define-const spec_exception Bool
  (bvuge spec_result__2 (bvshl (_ bv1 16) (_ bv8 16))))

;;
;; VC
;;
(assert
 (not (and (= exception spec_exception)
           (=> (not exception) (= mul_div spec_result__2)))))
(check-sat)
;; (get-value (a b c))
;; (get-value (spec_result__2 round_up))
;; (get-value (b_a_high b_a_low))
;; (get-value (tmp1))
;; (get-value (ab_0 ab_1))
;; (get-value (w_0 w_1 r))
;; (get-value (exception))
(exit)
