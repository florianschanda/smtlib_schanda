;; produced by cvc4_14.drv ;;
(set-logic AUFBVDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.0)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
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

(declare-fun nth ((_ BitVec 32) Int) Bool)

(declare-fun lsr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun pow2 (Int) Int)

(declare-fun to_int1 ((_ BitVec 32)) Int)

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 4294967296)) (= (bv2nat ((_ int2bv 32) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvlshr x n) (lsr x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvashr x n) (asr x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvshl x n) (lsl x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_left1 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_right1 v (bv2nat n)))))

(declare-fun nth_bv ((_ BitVec 32) (_ BitVec 32)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (= (nth_bv x i) true)
  (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (nth x (bv2nat i)) (nth_bv x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 32)) (i Int))
  (=> (and (<= 0 i) (< i 4294967296))
  (= (nth_bv x ((_ int2bv 32) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 32))))))
(declare-fun power ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun bv_min ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))

(declare-sort tinteger_8B 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 128) x) (<= x 127)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (tinteger_8B tinteger_8B) Bool)

(declare-fun dummy () tinteger_8B)

(declare-datatypes ()
((tinteger_8B__ref (mk_tinteger_8B__ref (tinteger_8B__content tinteger_8B)))))
(define-fun tinteger_8B__ref___projection ((a tinteger_8B__ref)) tinteger_8B 
  (tinteger_8B__content a))

(declare-sort integer_8 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 128) x) (<= x 127)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (integer_8 integer_8) Bool)

(declare-fun dummy1 () integer_8)

(declare-datatypes ()
((integer_8__ref (mk_integer_8__ref (integer_8__content integer_8)))))
(define-fun integer_8__ref_2__projection ((a integer_8__ref)) integer_8 
  (integer_8__content a))

(define-fun dynamic_invariant ((temp___expr_147 Int)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (<= (- 128) 127)) (in_range1
                                      temp___expr_147)))

(declare-sort tinteger_32B 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (tinteger_32B tinteger_32B) Bool)

(declare-fun dummy2 () tinteger_32B)

(declare-datatypes ()
((tinteger_32B__ref
 (mk_tinteger_32B__ref (tinteger_32B__content tinteger_32B)))))
(define-fun tinteger_32B__ref___projection ((a tinteger_32B__ref)) tinteger_32B 
  (tinteger_32B__content a))

(declare-sort integer_32 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (integer_32 integer_32) Bool)

(declare-fun dummy3 () integer_32)

(declare-datatypes ()
((integer_32__ref (mk_integer_32__ref (integer_32__content integer_32)))))
(define-fun integer_32__ref_2__projection ((a integer_32__ref)) integer_32 
  (integer_32__content a))

(define-fun dynamic_invariant1 ((temp___expr_159 Int)
  (temp___is_init_156 Bool) (temp___skip_constant_157 Bool)
  (temp___do_toplevel_158 Bool)) Bool (=>
                                      (or (= temp___is_init_156 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_159)))

(declare-sort unsigned_32 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 32))

(define-fun bool_eq4 ((x (_ BitVec 32))
  (y (_ BitVec 32))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 32))

(declare-fun user_eq4 (unsigned_32 unsigned_32) Bool)

(declare-fun dummy4 () unsigned_32)

(declare-datatypes ()
((unsigned_32__ref (mk_unsigned_32__ref (unsigned_32__content unsigned_32)))))
(define-fun unsigned_32__ref___projection ((a unsigned_32__ref)) unsigned_32 
  (unsigned_32__content a))

(define-fun dynamic_invariant2 ((temp___expr_189 (_ BitVec 32))
  (temp___is_init_186 Bool) (temp___skip_constant_187 Bool)
  (temp___do_toplevel_188 Bool)) Bool true)

(declare-fun boolean_to_integer_8 (Bool) Int)

(declare-fun boolean_to_integer_8__function_guard (Int Bool) Bool)

;; boolean_to_integer_8__post_axiom
  (assert
  (forall ((b Bool))
  (! (let ((result (boolean_to_integer_8 b)))
     (=> (boolean_to_integer_8__function_guard result b) (dynamic_invariant
     result true false true))) :pattern ((boolean_to_integer_8 b)) )))

(declare-fun wheel_speed () (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun vehicle_speed () (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun apply_brakes () Int)

(declare-fun sum_out1 () Int)

(declare-fun sum_1_out1 () Int)

(declare-fun at_rest_switch_out1 () Int)

(declare-fun sum_1_out1_sat () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun sum_out11 () Int)

(declare-fun sum_1_out11 () Int)

(declare-fun sum_1_out1_sat1 () Int)

(declare-fun result () Int)

(declare-fun sum_out12 () Int)

(declare-fun result1 () Int)

(declare-fun sum_1_out1_sat2 () Int)

(declare-fun result2 () Int)

(declare-fun sum_1_out12 () Int)

(declare-fun result3 () Int)

(declare-fun sum_1_out13 () Int)

(declare-fun result4 () Int)

(declare-fun sum_1_out14 () Int)

(declare-fun result5 () Int)

(declare-fun at_rest_switch_out11 () Int)

(declare-fun result6 () Int)

(declare-fun at_rest_switch_out12 () Int)

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 apply_brakes)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 sum_out1)))

;; H
  (assert (=> (<= (- 128) 127) (in_range1 sum_1_out1)))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 at_rest_switch_out1)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 sum_1_out1_sat)))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (and (= o (bv2nat (bvmul ((_ int2bv 32) 8) vehicle_speed))) (in_range3
  (bv2nat (bvmul ((_ int2bv 32) 8) vehicle_speed))))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (and (= o1 (bv2nat (bvmul ((_ int2bv 32) 10) wheel_speed))) (in_range3
  (bv2nat (bvmul ((_ int2bv 32) 10) wheel_speed))))))

;; H
  (assert (=> (bvugt vehicle_speed ((_ int2bv 32) 0)) (= o2 (- o1 o))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0)) (and (= o3 o2) (in_range2 o2))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (= (mk_int__ref result) (mk_int__ref sum_out1))))

;; H
  (assert (=> (bvugt vehicle_speed ((_ int2bv 32) 0)) (= sum_out12 o3)))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (and
  (and (= o4 (boolean_to_integer_8 (ite (< sum_out12 0) true false)))
  (boolean_to_integer_8__function_guard o4 (ite (< sum_out12 0) true false)))
  (in_range1 o4))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (and
  (and (= o5 (boolean_to_integer_8 (ite (< 0 sum_out12) true false)))
  (boolean_to_integer_8__function_guard o5 (ite (< 0 sum_out12) true false)))
  (in_range1 o5))))

;; H
  (assert (=> (bvugt vehicle_speed ((_ int2bv 32) 0)) (= o6 (- o5 o4))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0)) (and (= o7 o6) (in_range o6))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (= (mk_int__ref result1) (mk_int__ref sum_1_out1_sat))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0)) (= sum_1_out1_sat2 o7)))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (< 127 sum_1_out1_sat2) (= result2 sum_1_out1))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (< 127 sum_1_out1_sat2) (= sum_1_out12 127))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (not (< 127 sum_1_out1_sat2))
  (=> (< sum_1_out1_sat2 (- 128)) (= result3 sum_1_out1)))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (not (< 127 sum_1_out1_sat2))
  (=> (< sum_1_out1_sat2 (- 128)) (= sum_1_out13 (- 128))))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (not (< 127 sum_1_out1_sat2))
  (=> (not (< sum_1_out1_sat2 (- 128)))
  (and (= o8 sum_1_out1_sat2) (in_range1 sum_1_out1_sat2))))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (not (< 127 sum_1_out1_sat2))
  (=> (not (< sum_1_out1_sat2 (- 128))) (= result4 sum_1_out1)))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (not (< 127 sum_1_out1_sat2))
  (=> (not (< sum_1_out1_sat2 (- 128))) (= sum_1_out14 o8)))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (not (< 127 sum_1_out1_sat2))
  (=> (not (< sum_1_out1_sat2 (- 128))) (= sum_1_out13 sum_1_out14)))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (=> (not (< 127 sum_1_out1_sat2)) (= sum_1_out12 sum_1_out13))))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (= result5 at_rest_switch_out1)))

;; H
  (assert
  (=> (bvugt vehicle_speed ((_ int2bv 32) 0))
  (= at_rest_switch_out11 sum_1_out12)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0)))
  (= result6 at_rest_switch_out1)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0)))
  (= at_rest_switch_out12 1)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0)))
  (= sum_1_out1_sat2 sum_1_out1_sat)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0)))
  (= at_rest_switch_out11 at_rest_switch_out12)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0)))
  (= sum_1_out12 sum_1_out1)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0))) (= sum_out12 sum_out1)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0)))
  (= sum_1_out1_sat2 sum_1_out1_sat1)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0)))
  (= at_rest_switch_out11 at_rest_switch_out12)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0)))
  (= sum_1_out12 sum_1_out11)))

;; H
  (assert
  (=> (not (bvugt vehicle_speed ((_ int2bv 32) 0))) (= sum_out12 sum_out11)))

(assert
;; WP_parameter_def
 ;; File "abs_controller_supplier_with_property.ads", line 22, characters 0-0
  (not
  (or (not (= vehicle_speed ((_ int2bv 32) 0))) (= at_rest_switch_out11 1))))
(check-sat)
