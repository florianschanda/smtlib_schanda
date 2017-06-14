(set-logic QF_BV)
(set-option :produce-models true)
(set-option :incremental true)
(set-info :source |Overflow checking benchmarks by Florian Schanda|)
(set-info :smt-lib-version 2.5)
(set-info :category crafted)

(define-fun in_natural_bv32 ((x (_ BitVec 8))) Bool
  (and (bvsge x (_ bv0 8))
       (bvsle x (_ bv127 8))))

(define-fun get_high_word ((x (_ BitVec 16))) (_ BitVec 16)
  (bvlshr x (_ bv8 16)))

(define-fun get_low_word ((x (_ BitVec 16))) (_ BitVec 16)
  (bvand x #x00FF))

(define-fun bvuaddo_64 ((a (_ BitVec 16)) (b (_ BitVec 16))) Bool
  (let ((result (bvadd ((_ zero_extend 1) a)
                       ((_ zero_extend 1) b))))
    (= ((_ extract 16 16) result)
       (_ bv1 1))
  ))

(declare-const v_initial (_ BitVec 16))
(assert (bvule v_initial (bvshl (_ bv1 16) (_ bv15 16))))
(declare-const m_initial (_ BitVec 8))
(assert (in_natural_bv32 m_initial))
(declare-const d_initial (_ BitVec 8))
(assert (in_natural_bv32 d_initial))
(assert (not (= d_initial (_ bv0 8))))

;; V_Hi : Uint_64 := V / 2 ** 32;
(define-const v_hi__0 (_ BitVec 16)
  (get_high_word v_initial))

;; V_Lo : Uint_64 := V rem 2 ** 32;
(define-const v_lo__0 (_ BitVec 16)
  (get_low_word v_initial))

;; V_Hi := V_Hi * Uint_64 (M);
;; (can't overflow; 32x32 -> 64)
(define-const v_hi__1 (_ BitVec 16)
  (bvmul v_hi__0 ((_ zero_extend 8) m_initial)))

;; V_Lo := V_Lo * Uint_64 (M);
;; (ditto)
(define-const v_lo__1 (_ BitVec 16)
  (bvmul v_lo__0 ((_ zero_extend 8) m_initial)))

;; V_Hi := V_Hi + V_Lo / 2 ** 32;
;; (push 1)
;; (assert (bvuaddo_64 v_hi__1 (get_high_word v_lo__1)))
;; (check-sat)
;; (pop 1)
(define-const v_hi__2 (_ BitVec 16)
  (bvadd v_hi__1 (get_high_word v_lo__1)))

;; V_Lo := V_Lo rem 2 ** 32;
;; (can't overflow)
(define-const v_lo__2 (_ BitVec 16)
  (get_low_word v_lo__1))

;; Result_Hi := V_Hi / Uint_64 (D);
;; (can't overflow)
(define-const result_hi__0 (_ BitVec 16)
  (bvudiv v_hi__2 ((_ zero_extend 8) d_initial)))

(define-const exception_0 Bool
  (bvugt result_hi__0 (_ bv127 16)))

;; Remainder := V_Hi - Result_Hi * Uint_64 (D);
;; (push 1)
;; (assert (not exception_0))
;; (assert (bvult v_hi__2 (bvmul result_hi__0 ((_ zero_extend 8) d_initial))))
;; (check-sat)
;; (pop 1)
(define-const remainder__0 (_ BitVec 16)
  (bvsub v_hi__2 (bvmul result_hi__0 ((_ zero_extend 8) d_initial))))

;; Result_Hi := Result_Hi * 2 ** 32;
;; (push 1)
;; (assert (not exception_0))
;; (assert (not (= (get_high_word result_hi__0) (_ bv0 16))))
;; (check-sat)
;; (pop 1)
(define-const result_hi__1 (_ BitVec 16)
  (bvshl result_hi__0 (_ bv8 16)))

;; Result_Lo := (V_Lo + Remainder * 2 ** 32 + Uint_64 (D / 2)) / Uint_64 (D);
;; (push 1)
;; (assert (not exception_0))
;; (push 1)
;; (assert (not (= (get_high_word remainder__0) (_ bv0 16)))) ;; remainder << 32
;; (check-sat)
;; (pop 1)
;; (push 1)
;; (assert (bvuaddo_64 v_lo__2 (bvshl remainder__0 (_ bv8 16))))
;; (check-sat)
;; (pop 1)
;; (push 1)
;; (assert (bvuaddo_64 (bvadd v_lo__2 (bvshl remainder__0 (_ bv8 16)))
;;                            (bvlshr ((_ zero_extend 8) d_initial) (_ bv1 16))))
;; (check-sat)
;; (pop 2)
(define-const result_lo__0 (_ BitVec 16)
  (bvudiv (bvadd (bvadd v_lo__2 (bvshl remainder__0 (_ bv8 16)))
                 (bvlshr ((_ zero_extend 8) d_initial) (_ bv1 16)))
          ((_ zero_extend 8) d_initial)))

(define-const exception_1 Bool
  (or exception_0 (bvugt result_lo__0 (bvsub (_ bv32767 16) result_hi__1))))

(define-const mul_div (_ BitVec 32)
  ((_ zero_extend 16) (bvadd result_hi__1 result_lo__0)))

(define-const spec_result__0 (_ BitVec 32)
  (bvmul ((_ zero_extend 16) v_initial)
         ((_ zero_extend 24) m_initial)))

(define-const spec_result__1 (_ BitVec 32)
  (bvudiv spec_result__0 ((_ zero_extend 24) d_initial)))

(define-const round_up Bool
  (bvuge (bvshl (bvurem spec_result__0 ((_ zero_extend 24) d_initial))
                (_ bv1 32))
         ((_ zero_extend 24) d_initial)))

(define-const spec_result__2 (_ BitVec 32)
  (bvadd spec_result__1 (ite round_up (_ bv1 32) (_ bv0 32))))

(assert
 (not
  (and (=> exception_1 (bvugt spec_result__2 #x0000FFFF))
       (=> (not exception_1) (= mul_div spec_result__2)))))
;; (assert (not exception_1))
;; (assert (not (= mul_div spec_result__2)))
(check-sat)
(get-value (v_initial m_initial d_initial))
(get-value (v_hi__0 v_lo__0))
(get-value (v_hi__1 v_lo__1))
(get-value (v_hi__2 v_lo__2))
(get-value (result_hi__0))
(get-value (exception_0))
(get-value (remainder__0))
(get-value (result_hi__1))
(get-value (result_lo__0))
(get-value (exception_1))
(get-value (mul_div))
(get-value (spec_result__1))
(get-value (spec_result__2))
(get-value (round_up))
(exit)
