;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-fun us_null_ext__ () us_private)

(declare-sort us_type_of_heap 0)

(declare-datatypes ()
((us_type_of_heap__ref
 (mk___type_of_heap__ref (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)

(declare-datatypes () ((int__ref (mk_int__ref (int__content Int)))))
(declare-datatypes () ((bool__ref (mk_bool__ref (bool__content Bool)))))
(declare-datatypes () ((real__ref (mk_real__ref (real__content Real)))))
(declare-datatypes ()
((us_private__ref (mk___private__ref (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))

(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))

(define-fun real__ref___projection ((a real__ref)) Real (real__content a))

(define-fun us_private__ref___projection ((a us_private__ref)) us_private 
  (us_private__content a))

(declare-fun nth ((_ BitVec 8) Int) Bool)

(declare-fun lsr ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun asr ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun lsl ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun rotate_right1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun rotate_left1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun pow2 (Int) Int)

(declare-fun to_int1 ((_ BitVec 8)) Int)

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 255)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 256)) (= (bv2nat ((_ int2bv 8) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvlshr x n) (lsr x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvashr x n) (asr x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvshl x n) (lsl x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvor (bvshl v (bvurem n (_ bv8 8))) (bvlshr v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) 
  (rotate_left1 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvor (bvlshr v (bvurem n (_ bv8 8))) (bvshl v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) 
  (rotate_right1 v (bv2nat n)))))

(declare-fun nth_bv ((_ BitVec 8) (_ BitVec 8)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
  (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
  (= (nth x (bv2nat i)) (nth_bv x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 8)) (i Int))
  (=> (and (<= 0 i) (< i 256)) (= (nth_bv x ((_ int2bv 8) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8)
  (_ BitVec 8)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8))
  (n (_ BitVec 8)))
  (let ((mask (bvshl (bvsub (bvshl #x01 n) #x01) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8))
  (n (_ BitVec 8)))
  (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 8))))))
(declare-fun power ((_ BitVec 8) Int) (_ BitVec 8))

(define-fun bv_min ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int2 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 Float32)))))
(define-fun to_int3 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort time_slot 0)

(define-fun in_range2 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 49))))

(define-fun in_range_int ((x Int)) Bool (and (<= 0 x) (<= x 49)))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 8))

(declare-fun user_eq (time_slot time_slot) Bool)

(declare-fun dummy () time_slot)

(declare-datatypes ()
((time_slot__ref (mk_time_slot__ref (time_slot__content time_slot)))))
(define-fun time_slot__ref___projection ((a time_slot__ref)) time_slot 
  (time_slot__content a))

(define-fun dynamic_invariant ((temp___expr_208 (_ BitVec 8))
  (temp___is_init_205 Bool) (temp___skip_constant_206 Bool)
  (temp___do_toplevel_207 Bool)) Bool (=>
                                      (or (= temp___is_init_205 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 49)))
                                      (in_range2 temp___expr_208)))

(declare-sort battery_level_type 0)

(declare-fun user_eq1 (battery_level_type battery_level_type) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () battery_level_type)

(declare-datatypes ()
((battery_level_type__ref
 (mk_battery_level_type__ref
 (battery_level_type__content battery_level_type)))))
(define-fun battery_level_type__ref___projection ((a battery_level_type__ref)) battery_level_type 
  (battery_level_type__content a))

(declare-fun to_rep (battery_level_type) Float32)

(declare-fun of_rep (Float32) battery_level_type)

;; inversion_axiom
  (assert
  (forall ((x battery_level_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x battery_level_type))
  (! (not (or (fp.isInfinite (to_rep x)) (fp.isNaN (to_rep x)))) :pattern (
  (to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (= (to_rep (of_rep x)) x)) :pattern (
  (to_rep (of_rep x))) )))

(declare-datatypes ()
((map__ref
 (mk_map__ref (map__content (Array (_ BitVec 8) battery_level_type))))))
(declare-fun slide ((Array (_ BitVec 8) battery_level_type) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) battery_level_type))

;; slide_eq
  (assert
  (forall ((a (Array (_ BitVec 8) battery_level_type)))
  (forall ((first (_ BitVec 8)))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array (_ BitVec 8) battery_level_type)))
  (forall ((old_first (_ BitVec 8)))
  (forall ((new_first (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (= (select (slide a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array (_ BitVec 8) battery_level_type) (_ BitVec 8)
  (_ BitVec 8) (Array (_ BitVec 8) battery_level_type) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) battery_level_type))

;; concat_def
  (assert
  (forall ((a (Array (_ BitVec 8) battery_level_type))
  (b (Array (_ BitVec 8) battery_level_type)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (and
     (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (bvugt i a_last)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (bvadd (bvsub i a_last) (bvsub b_first #x01)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (battery_level_type
  (_ BitVec 8)) (Array (_ BitVec 8) battery_level_type))

;; singleton_def
  (assert
  (forall ((v battery_level_type))
  (forall ((i (_ BitVec 8)))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq ((a (Array (_ BitVec 8) battery_level_type))
  (a__first (_ BitVec 8)) (a__last (_ BitVec 8))
  (b (Array (_ BitVec 8) battery_level_type)) (b__first (_ BitVec 8))
  (b__last (_ BitVec 8))) Bool (ite (and
                                    (ite (bvule a__first a__last)
                                    (and (bvule b__first b__last)
                                    (= (bvsub a__last a__first) (bvsub b__last b__first)))
                                    (bvugt b__first b__last))
                                    (forall ((temp___idx_132 (_ BitVec 8)))
                                    (=>
                                    (and (bvule a__first temp___idx_132)
                                    (bvule temp___idx_132 a__last))
                                    (= (to_rep (select a temp___idx_132)) 
                                    (to_rep
                                    (select b (bvadd (bvsub b__first a__first) temp___idx_132)))))))
                               true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array (_ BitVec 8) battery_level_type))
  (b (Array (_ BitVec 8) battery_level_type)))
  (forall ((a__first (_ BitVec 8)) (a__last (_ BitVec 8))
  (b__first (_ BitVec 8)) (b__last (_ BitVec 8)))
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
  (and
  (ite (bvule a__first a__last)
  (and (bvule b__first b__last)
  (= (bvsub a__last a__first) (bvsub b__last b__first)))
  (bvugt b__first b__last))
  (forall ((temp___idx_132 (_ BitVec 8)))
  (=> (and (bvule a__first temp___idx_132) (bvule temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (bvadd (bvsub b__first a__first) temp___idx_132)))))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun is_valid (us_private (Array (_ BitVec 8) battery_level_type)
  (_ BitVec 8)) Bool)

(declare-fun is_valid__function_guard (Bool us_private
  (Array (_ BitVec 8) battery_level_type) (_ BitVec 8)) Bool)

(declare-fun is_raised (us_private (Array (_ BitVec 8) battery_level_type)
  (_ BitVec 8)) Bool)

(declare-fun is_raised__function_guard (Bool us_private
  (Array (_ BitVec 8) battery_level_type) (_ BitVec 8)) Bool)

(declare-fun time_below_threshold ((Array (_ BitVec 8) battery_level_type)
  (_ BitVec 8)) (_ BitVec 8))

(declare-fun time_below_threshold__function_guard ((_ BitVec 8)
  (Array (_ BitVec 8) battery_level_type) (_ BitVec 8)) Bool)

;; is_raised__post_axiom
  (assert
  (forall ((failsafe__failsafe_state us_private))
  (forall
  ((failsafe__model__battery_level_at (Array (_ BitVec 8) battery_level_type)))
  (forall ((failsafe__model__current_time (_ BitVec 8)))
  (! (=>
     (and (dynamic_invariant failsafe__model__current_time true true true)
     (= (is_valid failsafe__failsafe_state failsafe__model__battery_level_at
        failsafe__model__current_time) true))
     (and
     (= (is_valid failsafe__failsafe_state failsafe__model__battery_level_at
        failsafe__model__current_time) true)
     (=
     (= (is_raised failsafe__failsafe_state failsafe__model__battery_level_at
        failsafe__model__current_time) true)
     (bvuge (time_below_threshold failsafe__model__battery_level_at
            failsafe__model__current_time) ((_ int2bv 8) 50))))) :pattern (
  (is_raised failsafe__failsafe_state failsafe__model__battery_level_at
  failsafe__model__current_time)) )))))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant1 ((temp___expr_202 Float32)
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)) Bool (=>
                                      (or (= temp___is_init_199 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_202) (fp.isNaN temp___expr_202)))))

(declare-sort time_slot_length 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 8))

(define-fun in_range3 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 50))))

(define-fun in_range_int1 ((x Int)) Bool (and (<= 0 x) (<= x 50)))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 8))

(declare-fun user_eq2 (time_slot_length time_slot_length) Bool)

(declare-fun dummy2 () time_slot_length)

(declare-datatypes ()
((time_slot_length__ref
 (mk_time_slot_length__ref (time_slot_length__content time_slot_length)))))
(define-fun time_slot_length__ref___projection ((a time_slot_length__ref)) time_slot_length 
  (time_slot_length__content a))

(define-fun dynamic_invariant2 ((temp___expr_214 (_ BitVec 8))
  (temp___is_init_211 Bool) (temp___skip_constant_212 Bool)
  (temp___do_toplevel_213 Bool)) Bool (=>
                                      (or (= temp___is_init_211 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 50)))
                                      (in_range3 temp___expr_214)))

;; time_below_threshold__post_axiom
  (assert
  (forall
  ((failsafe__model__battery_level_at (Array (_ BitVec 8) battery_level_type)))
  (forall ((failsafe__model__current_time (_ BitVec 8)))
  (! (=> (dynamic_invariant failsafe__model__current_time true true true)
     (let ((result (time_below_threshold failsafe__model__battery_level_at
                   failsafe__model__current_time)))
     (and
     (ite (fp.leq (fp #b0 #b01111100 #b10011001100110011001101) (to_rep
                                                                (select failsafe__model__battery_level_at failsafe__model__current_time)))
     (= result ((_ int2bv 8) 0))
     (ite (forall ((s (_ BitVec 8)))
          (=> (and (bvule ((_ int2bv 8) 0) s) (bvule s ((_ int2bv 8) 49)))
          (fp.lt (to_rep (select failsafe__model__battery_level_at s)) (fp #b0 #b01111100 #b10011001100110011001101))))
     (= result ((_ int2bv 8) 50))
     (and
     (and (bvult result ((_ int2bv 8) 50))
     (fp.leq (fp #b0 #b01111100 #b10011001100110011001101) (to_rep
                                                           (select failsafe__model__battery_level_at 
                                                           (let ((temp___230 (bvsub failsafe__model__current_time result)))
                                                           (ite (bvult failsafe__model__current_time result)
                                                           (bvadd temp___230 ((_ int2bv 8) 50))
                                                           temp___230))))))
     (ite (bvuge failsafe__model__current_time (bvsub result ((_ int2bv 8) 1)))
     (forall ((s (_ BitVec 8)))
     (=>
     (and
     (bvule (let ((temp___231 (bvsub failsafe__model__current_time (bvsub result ((_ int2bv 8) 1)))))
            (ite (bvult failsafe__model__current_time (bvsub result ((_ int2bv 8) 1)))
            (bvadd temp___231 ((_ int2bv 8) 50)) temp___231)) s)
     (bvule s failsafe__model__current_time))
     (fp.lt (to_rep (select failsafe__model__battery_level_at s)) (fp #b0 #b01111100 #b10011001100110011001101))))
     (and
     (forall ((s (_ BitVec 8)))
     (=>
     (and (bvule ((_ int2bv 8) 0) s) (bvule s failsafe__model__current_time))
     (fp.lt (to_rep (select failsafe__model__battery_level_at s)) (fp #b0 #b01111100 #b10011001100110011001101))))
     (forall ((s (_ BitVec 8)))
     (=>
     (and
     (bvule (let ((temp___232 (bvsub failsafe__model__current_time (bvsub result ((_ int2bv 8) 1)))))
            (ite (bvult failsafe__model__current_time (bvsub result ((_ int2bv 8) 1)))
            (bvadd temp___232 ((_ int2bv 8) 50)) temp___232)) s)
     (bvule s ((_ int2bv 8) 49)))
     (fp.lt (to_rep (select failsafe__model__battery_level_at s)) (fp #b0 #b01111100 #b10011001100110011001101)))))))))
     (dynamic_invariant2 result true false true)))) :pattern ((time_below_threshold
                                                              failsafe__model__battery_level_at
                                                              failsafe__model__current_time)) ))))

;; is_valid__post_axiom
  (assert true)

(declare-fun current_time () (_ BitVec 8))

(declare-fun j () Int)

(declare-fun result () Int)

(declare-fun j1 () Int)

(declare-fun failsafe_state () us_private)

(declare-fun battery_level_at () (Array (_ BitVec 8) battery_level_type))

(declare-fun current_time1 () (_ BitVec 8))

(declare-fun j2 () Int)

;; H
  (assert (in_range2 current_time))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref j)))

;; H
  (assert (= j1 1))

;; H
  (assert (<= 1 j1))

;; H
  (assert (<= j1 49))

;; H
  (assert (and (in_range2 current_time1) (and (<= 1 j2) (<= j2 49))))

(assert
;; WP_parameter_def
 ;; File "failsafe.ads", line 20, characters 0-0
  (not (= (is_valid failsafe_state battery_level_at current_time1) true)))
(check-sat)
