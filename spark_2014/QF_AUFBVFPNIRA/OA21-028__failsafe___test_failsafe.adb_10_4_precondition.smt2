;; produced by colibri_gnatprove.drv ;;
(set-info :smt-lib-version 2.5)
(set-logic QF_AUFBVFPNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
(define-fun fp.isFinite32 ((x Float32)) Bool (not (or (fp.isInfinite x) (fp.isNaN x))))
(define-fun fp.isIntegral32 ((x Float32)) Bool (or (fp.isZero x) (and (fp.isNormal x) (= x (fp.roundToIntegral RNE x)))))
(declare-const abstr Int)

(define-fun to_int1 ((x (_ BitVec 8))) Int (ite (bvsge x (_ bv0 8)) abstr
                                           (- (- 256 abstr))))

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 255)))

(declare-const abstr1 (_ BitVec 8))

(declare-const abstr2 (_ BitVec 8))

(declare-const abstr3 (_ BitVec 8))

(declare-const abstr4 (_ BitVec 8))

(declare-const abstr5 (_ BitVec 8))

(define-fun nth_bv ((x (_ BitVec 8))
  (i (_ BitVec 8))) Bool (ite (not (= (bvand (bvlshr x i) #x01) #x00)) true
                         false))

(declare-const abstr6 Bool)

(define-fun eq_sub ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int)
  (n Int)) Bool abstr6)

(define-fun bv_min ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                (fp.isPositive x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                 (fp.isNegative x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero x)
                                            (fp.isPositive x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero x)
                                             (fp.isNegative x)))

(declare-const max_int Int)

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isPositive y))
                    (and (fp.isNegative x) (fp.isNegative y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isNegative y))
                    (and (fp.isNegative x) (fp.isPositive y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive z))
                    (=> (diff_sign x y) (fp.isNegative z))))

(define-fun sqr ((x Real)) Real (* x x))

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive x) (< 0.0 r))
                 (and (fp.isNegative x) (< r 0.0))))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(define-fun in_range1 ((x (_ BitVec 8))) Bool (and (bvule #x00 x)
                                              (bvule x #x31)))

(define-fun in_range_int ((x Int)) Bool (and (<= 0 x) (<= x 49)))

(define-fun dynamic_invariant ((temp___expr_243 (_ BitVec 8))
  (temp___is_init_239 Bool) (temp___skip_constant_240 Bool)
  (temp___do_toplevel_241 Bool)
  (temp___do_typ_inv_242 Bool)) Bool (=>
                                     (or (= temp___is_init_239 true)
                                     (bvule #x00 #x31)) (in_range1
                                     temp___expr_243)))

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(define-fun dynamic_invariant1 ((temp___expr_236 Float32)
  (temp___is_init_232 Bool) (temp___skip_constant_233 Bool)
  (temp___do_toplevel_234 Bool)
  (temp___do_typ_inv_235 Bool)) Bool (=>
                                     (or (= temp___is_init_232 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (fp.isFinite32 temp___expr_236)))

(declare-const battery_threshold Float32)

(declare-const attr__ATTRIBUTE_ADDRESS3 Int)

;; battery_threshold__def_axiom
  (assert
  (= battery_threshold (fp #b0 #b01111100 #b10011001100110011001101)))

(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 8))

(define-fun in_range2 ((x (_ BitVec 8))) Bool (and (bvule #x00 x)
                                              (bvule x #x32)))

(define-fun in_range_int1 ((x Int)) Bool (and (<= 0 x) (<= x 50)))

(define-fun dynamic_invariant2 ((temp___expr_250 (_ BitVec 8))
  (temp___is_init_246 Bool) (temp___skip_constant_247 Bool)
  (temp___do_toplevel_248 Bool)
  (temp___do_typ_inv_249 Bool)) Bool (=>
                                     (or (= temp___is_init_246 true)
                                     (bvule #x00 #x32)) (in_range2
                                     temp___expr_250)))

(declare-const current_time (_ BitVec 8))

(declare-const j Int)

(declare-const temp___325 (_ BitVec 8))

(declare-const o Bool)

(declare-const us Bool)

(declare-const us1 Bool)

(declare-const o1 Bool)

(declare-const current_time1 (_ BitVec 8))

(declare-const result Int)

(declare-const j1 Int)

(declare-const current_time2 (_ BitVec 8))

(declare-const j2 Int)

(declare-const current_time3 (_ BitVec 8))

(declare-const current_time4 (_ BitVec 8))

(declare-const j3 Int)

(declare-const current_time5 (_ BitVec 8))

(declare-const j4 Int)

(declare-const current_time6 (_ BitVec 8))

(declare-const j5 Int)

(declare-const current_time7 (_ BitVec 8))

(declare-const j6 Int)

(declare-const current_time8 (_ BitVec 8))

(declare-const current_time9 (_ BitVec 8))

(declare-const current_time10 (_ BitVec 8))

;; H
  (assert (in_range1 current_time))

;; H
  (assert (= j1 1))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 49)) (= temp___325 current_time)))

;; H
  (assert
  (=> (and (<= 1 j1) (<= j1 49))
  (and (in_range1 current_time2) (and (<= 1 j2) (<= j2 49)))))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 49)) (= j2 49)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 49)) (= j2 j3)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 49)) (= current_time3 current_time4)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 49)) (= j4 j2)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 49)) (= current_time5 current_time3)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 49)) (= j6 j4)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 49)) (= current_time7 current_time5)))

;; H
  (assert (=> (not (and (<= 1 j1) (<= j1 49))) (= j1 j5)))

;; H
  (assert (=> (not (and (<= 1 j1) (<= j1 49))) (= j6 j1)))

;; H
  (assert
  (=> (not (and (<= 1 j1) (<= j1 49))) (= current_time7 current_time1)))

(assert
;; WP_parameter_def
 ;; File "failsafe.ads", line 20, characters 0-0
  (not false))
(check-sat)
(exit)
