(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_BV)
(set-option :produce-models true)
(set-info :source |Verification of Mul_Div of Ada.RealTime by Florian Schanda|)
(set-info :category crafted)

(define-const p32 (_ BitVec 64) (bvshl (_ bv1 64) (_ bv32 64)))

(declare-const a (_ BitVec 64))
(declare-const b_origin (_ BitVec 32))
(declare-const c_origin (_ BitVec 32))
(define-const b (_ BitVec 64) ((_ zero_extend 32) b_origin))
(define-const c (_ BitVec 64) ((_ zero_extend 32) c_origin))
(assert (not (= c_origin (_ bv0 32))))

;;
;; CODE
;;
(define-const b_a_high (_ BitVec 64) (bvmul b (bvudiv a p32)))
(define-const b_a_low  (_ BitVec 64) (bvmul b (bvurem a p32)))

(define-const tmp1 (_ BitVec 64) (bvadd (bvurem b_a_low p32)
                                        (bvlshr c (_ bv1 64))))
(define-const ab_1 (_ BitVec 64) (bvadd (bvadd (bvudiv b_a_low p32)
                                               b_a_high)
                                        (bvudiv tmp1 p32)))
(define-const exception Bool (bvuge (bvudiv ab_1 p32) c))
(define-const ab_0 (_ BitVec 64) (bvurem tmp1 p32))

(define-const w_1 (_ BitVec 64) (bvudiv ab_1 c))
(define-const r   (_ BitVec 64) (bvurem ab_1 c))
(define-const w_0 (_ BitVec 64) (bvudiv (bvadd (bvmul r p32) ab_0) c))

(define-const mul_div (_ BitVec 128) ((_ zero_extend 64)
                                      (bvadd w_0 (bvmul w_1 p32))))

;;
;; SPEC
;;
(define-const spec_result__0 (_ BitVec 128)
  (bvmul ((_ zero_extend 64) a)
         ((_ zero_extend 64) b)))

(define-const spec_result__1 (_ BitVec 128)
  (bvudiv spec_result__0 ((_ zero_extend 64) c)))

(define-const round_up Bool
  (bvuge (bvshl (bvurem spec_result__0 ((_ zero_extend 64) c)) (_ bv1 128))
         ((_ zero_extend 64) c)))

(define-const spec_result__2 (_ BitVec 128)
  (bvadd spec_result__1 (ite round_up (_ bv1 128) (_ bv0 128))))

;;
;; VC
;;

;; (assert
;;  (not
;;   (and (=> exception_1 (bvugt spec_result (_ bv9223372036854775807 128)))
;;        (=> (not exception_1) (= mul_div spec_result)))))
(assert (not exception))
(assert (not (= mul_div spec_result__2)))
(check-sat)
(get-value (a b c))
(get-value (spec_result__2 round_up))
(get-value (b_a_high b_a_low))
(get-value (tmp1))
(get-value (ab_0 ab_1))
(get-value (w_0 w_1 r))
(get-value (exception))
(exit)
