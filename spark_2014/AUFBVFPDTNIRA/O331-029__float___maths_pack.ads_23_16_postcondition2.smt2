;; produced by cvc4_16.drv ;;
(set-info :smt-lib-version 2.5)
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
(define-fun fp.isFinite32 ((x Float32)) Bool (not (or (fp.isInfinite x) (fp.isNaN x))))
(define-fun fp.isIntegral32 ((x Float32)) Bool (or (fp.isZero x) (and (fp.isNormal x) (= x (fp.roundToIntegral RNE x)))))
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-const us_null_ext__ us_private)

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

(declare-fun lsr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun pow2 (Int) Int)

(define-fun to_int1 ((x (_ BitVec 32))) Int (ite (bvsge x (_ bv0 32))
                                            (bv2nat x)
                                            (- (- 4294967296 (bv2nat x)))))

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 32))))))
(declare-fun power ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun bv_min ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))

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

(declare-fun sqrt1 (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive x) (< 0.0 r))
                 (and (fp.isNegative x) (< r 0.0))))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 Float32)))))
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort float 0)

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-const dummy float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun dynamic_invariant ((temp___expr_60 Float32)
  (temp___is_init_56 Bool) (temp___skip_constant_57 Bool)
  (temp___do_toplevel_58 Bool)
  (temp___do_typ_inv_59 Bool)) Bool (=>
                                    (or (= temp___is_init_56 true)
                                    (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                    (fp.isFinite32 temp___expr_60)))

(declare-fun float_to_unsigned_32 (Float32) (_ BitVec 32))

(declare-fun float_to_unsigned_32__function_guard ((_ BitVec 32)
  Float32) Bool)

(declare-sort source 0)

(declare-fun user_eq1 (source source) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-const dummy1 source)

(declare-datatypes ()
((source__ref (mk_source__ref (source__content source)))))
(define-fun source__ref___projection ((a source__ref)) source (source__content
                                                              a))

(define-fun dynamic_invariant1 ((temp___expr_1564 Float32)
  (temp___is_init_1560 Bool) (temp___skip_constant_1561 Bool)
  (temp___do_toplevel_1562 Bool)
  (temp___do_typ_inv_1563 Bool)) Bool (=>
                                      (or (= temp___is_init_1560 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (fp.isFinite32 temp___expr_1564)))

(declare-sort target 0)

(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 32))

(declare-fun user_eq2 (target target) Bool)

(declare-const dummy2 target)

(declare-datatypes ()
((target__ref (mk_target__ref (target__content target)))))
(define-fun target__ref___projection ((a target__ref)) target (target__content
                                                              a))

(define-fun dynamic_invariant2 ((temp___expr_1571 (_ BitVec 32))
  (temp___is_init_1567 Bool) (temp___skip_constant_1568 Bool)
  (temp___do_toplevel_1569 Bool) (temp___do_typ_inv_1570 Bool)) Bool true)

;; float_to_unsigned_32__post_axiom
  (assert
  (forall ((s Float32))
  (! (=> (dynamic_invariant1 s true true true true) (dynamic_invariant2
     (float_to_unsigned_32 s) true false true true)) :pattern ((float_to_unsigned_32
                                                               s)) )))

(declare-fun unsigned_32_to_float ((_ BitVec 32)) Float32)

(declare-fun unsigned_32_to_float__function_guard (Float32
  (_ BitVec 32)) Bool)

(declare-sort source1 0)

(declare-const attr__ATTRIBUTE_MODULUS1 (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 32))

(declare-fun user_eq3 (source1 source1) Bool)

(declare-const dummy3 source1)

(declare-datatypes ()
((source__ref1 (mk_source__ref1 (source__content1 source1)))))
(define-fun source__ref___2__projection ((a source__ref1)) source1 (source__content1
                                                                   a))

(define-fun dynamic_invariant3 ((temp___expr_1578 (_ BitVec 32))
  (temp___is_init_1574 Bool) (temp___skip_constant_1575 Bool)
  (temp___do_toplevel_1576 Bool) (temp___do_typ_inv_1577 Bool)) Bool true)

(declare-sort target1 0)

(declare-fun user_eq4 (target1 target1) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE5 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Float32)

(declare-const dummy4 target1)

(declare-datatypes ()
((target__ref1 (mk_target__ref1 (target__content1 target1)))))
(define-fun target__ref___2__projection ((a target__ref1)) target1 (target__content1
                                                                   a))

(define-fun dynamic_invariant4 ((temp___expr_1585 Float32)
  (temp___is_init_1581 Bool) (temp___skip_constant_1582 Bool)
  (temp___do_toplevel_1583 Bool)
  (temp___do_typ_inv_1584 Bool)) Bool (=>
                                      (or (= temp___is_init_1581 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (fp.isFinite32 temp___expr_1585)))

;; unsigned_32_to_float__post_axiom
  (assert
  (forall ((s (_ BitVec 32)))
  (! (=> (dynamic_invariant3 s true true true true) (dynamic_invariant4
     (unsigned_32_to_float s) true false true true)) :pattern ((unsigned_32_to_float
                                                               s)) )))

(declare-sort unsigned_32 0)

(declare-const attr__ATTRIBUTE_MODULUS2 (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_IMAGE6 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) (_ BitVec 32))

(declare-fun user_eq5 (unsigned_32 unsigned_32) Bool)

(declare-const dummy5 unsigned_32)

(declare-datatypes ()
((unsigned_32__ref (mk_unsigned_32__ref (unsigned_32__content unsigned_32)))))
(define-fun unsigned_32__ref___projection ((a unsigned_32__ref)) unsigned_32
  (unsigned_32__content a))

(define-fun dynamic_invariant5 ((temp___expr_212 (_ BitVec 32))
  (temp___is_init_208 Bool) (temp___skip_constant_209 Bool)
  (temp___do_toplevel_210 Bool) (temp___do_typ_inv_211 Bool)) Bool true)

(declare-const x Float32)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(declare-const attr__ATTRIBUTE_ADDRESS3 Int)

(declare-const attr__ATTRIBUTE_ADDRESS4 Int)

(declare-const half_x Float32)

(declare-const y Float32)

(declare-const magic_num (_ BitVec 32))

(declare-const i (_ BitVec 32))

(declare-const maths_pack__inv_sqrt__result Float32)

(declare-const o (_ BitVec 32))

(declare-const o1 Float32)

(declare-const o2 Float32)

(declare-const o3 Float32)

(declare-const o4 Float32)

(declare-const o5 Float32)

(declare-const o6 Float32)

(declare-const o7 Float32)

(declare-const o8 Float32)

(declare-const result Float32)

(declare-const half_x1 Float32)

(declare-const result1 Float32)

(declare-const y1 Float32)

(declare-const result2 (_ BitVec 32))

(declare-const magic_num1 (_ BitVec 32))

(declare-const result3 (_ BitVec 32))

(declare-const i1 (_ BitVec 32))

(declare-const result4 (_ BitVec 32))

(declare-const i2 (_ BitVec 32))

(declare-const result5 Float32)

(declare-const y2 Float32)

(declare-const result6 Float32)

(declare-const y3 Float32)

(declare-const result7 Float32)

(declare-const maths_pack__inv_sqrt__result1 Float32)

(declare-const maths_pack__inv_sqrt__result2 Float32)

(declare-const maths_pack__inv_sqrt__result3 Float32)

(declare-const half_x2 Float32)

(declare-const y4 Float32)

(declare-const magic_num2 (_ BitVec 32))

(declare-const i3 (_ BitVec 32))

(declare-const maths_pack__inv_sqrt__result4 Float32)

(declare-const half_x3 Float32)

(declare-const y5 Float32)

(declare-const magic_num3 (_ BitVec 32))

(declare-const i4 (_ BitVec 32))

(declare-const maths_pack__inv_sqrt__result5 Float32)

(declare-const result8 Float32)

;; H
  (assert (fp.isFinite32 x))

;; H
  (assert (fp.leq (fp #b0 #b00000000 #b00000000000000000000001) x))

;; H
  (assert (= (mk_t__ref1 result) (mk_t__ref1 half_x)))

;; H
  (assert
  (= half_x1 (fp.mul RNE (fp #b0 #b01111110 #b00000000000000000000000)
  x)))

;; H
  (assert (fp.isFinite32 half_x1))

;; H
  (assert (= (mk_t__ref1 result1) (mk_t__ref1 y)))

;; H
  (assert (= y1 x))

;; H
  (assert (fp.isFinite32 y1))

;; H
  (assert (= (mk_t__ref result2) (mk_t__ref magic_num)))

;; H
  (assert (= magic_num1 #x5F3759DF))

;; H
  (assert (= o (float_to_unsigned_32 y1)))

;; H
  (assert (= (mk_t__ref result3) (mk_t__ref i)))

;; H
  (assert (= i1 o))

;; H
  (assert (= i1 result4))

;; H
  (assert (= i2 (bvsub magic_num1 (bvlshr i1 ((_ int2bv 32) 1)))))

;; H
  (assert (and (= o1 (unsigned_32_to_float i2)) (fp.isFinite32 o1)))

;; H
  (assert (= y1 result5))

;; H
  (assert (= y2 o1))

;; H
  (assert
  (and (= o2 (fp.mul RNE half_x1 y2))
  (fp.isFinite32 (fp.mul RNE half_x1 y2))))

;; H
  (assert (= o3 (fp.mul RNE o2 y2)))

;; H
  (assert (and (= o4 o3) (fp.isFinite32 o3)))

;; H
  (assert
  (= o5 (fp.sub RNE (fp #b0 #b01111111 #b10000000000000000000000) o4)))

;; H
  (assert (and (= o6 o5) (fp.isFinite32 o5)))

;; H
  (assert (= o7 (fp.mul RNE y2 o6)))

;; H
  (assert (and (= o8 o7) (fp.isFinite32 o7)))

;; H
  (assert (= result6 y2))

;; H
  (assert (= y3 o8))

;; H
  (assert (= maths_pack__inv_sqrt__result1 maths_pack__inv_sqrt__result2))

;; H
  (assert (= maths_pack__inv_sqrt__result3 maths_pack__inv_sqrt__result1))

;; H
  (assert (= result7 maths_pack__inv_sqrt__result))

;; H
  (assert (= maths_pack__inv_sqrt__result1 y3))

;; H
  (assert
  (= (mk_t__ref1 maths_pack__inv_sqrt__result4) (mk_t__ref1
                                                maths_pack__inv_sqrt__result2)))

;; H
  (assert (= i3 i2))

;; H
  (assert (= magic_num2 magic_num1))

;; H
  (assert (= y4 y3))

;; H
  (assert (= half_x2 half_x1))

;; H
  (assert (= maths_pack__inv_sqrt__result5 maths_pack__inv_sqrt__result3))

;; H
  (assert (= i4 i2))

;; H
  (assert (= magic_num3 magic_num1))

;; H
  (assert (= y5 y3))

;; H
  (assert (= half_x3 half_x1))

;; H
  (assert (= result8 maths_pack__inv_sqrt__result4))

(assert
;; WP_parameter_def
 ;; File "/home/florian/adacore/spark2014/testsuite/gnatprove/tests/O331-029__float/obj/gnatprove/maths_pack.mlw", line 30671, characters 5-8
  (not
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) maths_pack__inv_sqrt__result4)))
(check-sat)
(exit)
