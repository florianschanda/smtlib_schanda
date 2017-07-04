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

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 Float32)))))
(define-fun to_int3 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort float 0)

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-sort unsigned_32 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 32))

(declare-fun user_eq1 (unsigned_32 unsigned_32) Bool)

(declare-fun dummy1 () unsigned_32)

(declare-datatypes ()
((unsigned_32__ref (mk_unsigned_32__ref (unsigned_32__content unsigned_32)))))
(define-fun unsigned_32__ref___projection ((a unsigned_32__ref)) unsigned_32 
  (unsigned_32__content a))

(define-fun dynamic_invariant1 ((temp___expr_182 (_ BitVec 32))
  (temp___is_init_179 Bool) (temp___skip_constant_180 Bool)
  (temp___do_toplevel_181 Bool)) Bool true)

(declare-fun x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-sort source 0)

(declare-fun user_eq2 (source source) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy2 () source)

(declare-datatypes ()
((source__ref (mk_source__ref (source__content source)))))
(define-fun source__ref___projection ((a source__ref)) source (source__content
                                                              a))

(define-fun dynamic_invariant2 ((temp___expr_1348 Float32)
  (temp___is_init_1345 Bool) (temp___skip_constant_1346 Bool)
  (temp___do_toplevel_1347 Bool)) Bool (=>
                                       (or (= temp___is_init_1345 true)
                                       (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                       (not (or (fp.isInfinite temp___expr_1348) (fp.isNaN temp___expr_1348)))))

(declare-sort target 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 32))

(declare-fun user_eq3 (target target) Bool)

(declare-fun dummy3 () target)

(declare-datatypes ()
((target__ref (mk_target__ref (target__content target)))))
(define-fun target__ref___projection ((a target__ref)) target (target__content
                                                              a))

(define-fun dynamic_invariant3 ((temp___expr_1354 (_ BitVec 32))
  (temp___is_init_1351 Bool) (temp___skip_constant_1352 Bool)
  (temp___do_toplevel_1353 Bool)) Bool true)

(declare-fun float_to_unsigned_32 (Float32) (_ BitVec 32))

(declare-fun float_to_unsigned_32__function_guard ((_ BitVec 32)
  Float32) Bool)

;; float_to_unsigned_32__post_axiom
  (assert
  (forall ((s Float32))
  (! (=> (dynamic_invariant2 s true true true) (dynamic_invariant3
     (float_to_unsigned_32 s) true false true)) :pattern ((float_to_unsigned_32
                                                          s)) )))

(declare-sort source1 0)

(declare-fun attr__ATTRIBUTE_MODULUS2 () (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_IMAGE5 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) (_ BitVec 32))

(declare-fun user_eq4 (source1 source1) Bool)

(declare-fun dummy4 () source1)

(declare-datatypes ()
((source__ref1 (mk_source__ref1 (source__content1 source1)))))
(define-fun source__ref_2__projection ((a source__ref1)) source1 (source__content1
                                                                 a))

(define-fun dynamic_invariant4 ((temp___expr_1360 (_ BitVec 32))
  (temp___is_init_1357 Bool) (temp___skip_constant_1358 Bool)
  (temp___do_toplevel_1359 Bool)) Bool true)

(declare-sort target1 0)

(declare-fun user_eq5 (target1 target1) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE6 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Float32)

(declare-fun dummy5 () target1)

(declare-datatypes ()
((target__ref1 (mk_target__ref1 (target__content1 target1)))))
(define-fun target__ref_2__projection ((a target__ref1)) target1 (target__content1
                                                                 a))

(define-fun dynamic_invariant5 ((temp___expr_1366 Float32)
  (temp___is_init_1363 Bool) (temp___skip_constant_1364 Bool)
  (temp___do_toplevel_1365 Bool)) Bool (=>
                                       (or (= temp___is_init_1363 true)
                                       (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                       (not (or (fp.isInfinite temp___expr_1366) (fp.isNaN temp___expr_1366)))))

(declare-fun unsigned_32_to_float ((_ BitVec 32)) Float32)

(declare-fun unsigned_32_to_float__function_guard (Float32
  (_ BitVec 32)) Bool)

;; unsigned_32_to_float__post_axiom
  (assert
  (forall ((s (_ BitVec 32)))
  (! (=> (dynamic_invariant4 s true true true) (dynamic_invariant5
     (unsigned_32_to_float s) true false true)) :pattern ((unsigned_32_to_float
                                                          s)) )))

(declare-fun half_x () Float32)

(declare-fun y () Float32)

(declare-fun magic_num () (_ BitVec 32))

(declare-fun i () (_ BitVec 32))

(declare-fun o () (_ BitVec 32))

(declare-fun o1 () Float32)

(declare-fun o2 () Float32)

(declare-fun o3 () Float32)

(declare-fun result () Float32)

(declare-fun half_x1 () Float32)

(declare-fun result1 () Float32)

(declare-fun y1 () Float32)

(declare-fun result2 () (_ BitVec 32))

(declare-fun magic_num1 () (_ BitVec 32))

(declare-fun result3 () (_ BitVec 32))

(declare-fun i1 () (_ BitVec 32))

(declare-fun result4 () (_ BitVec 32))

(declare-fun i2 () (_ BitVec 32))

(declare-fun result5 () Float32)

(declare-fun y2 () Float32)

;; H
  (assert (not (or (fp.isInfinite x) (fp.isNaN x))))

;; H
  (assert (fp.leq (fp #b0 #b00000000 #b00000000000000000000001) x))

;; H
  (assert (= (mk_t__ref1 result) (mk_t__ref1 half_x)))

;; H
  (assert
  (= half_x1 (fp.mul RNE (fp #b0 #b01111110 #b00000000000000000000000) 
  x)))

;; H
  (assert (not (or (fp.isInfinite half_x1) (fp.isNaN half_x1))))

;; H
  (assert (= (mk_t__ref1 result1) (mk_t__ref1 y)))

;; H
  (assert (= y1 x))

;; H
  (assert (not (or (fp.isInfinite y1) (fp.isNaN y1))))

;; H
  (assert (= (mk_t__ref result2) (mk_t__ref magic_num)))

;; H
  (assert (= magic_num1 ((_ int2bv 32) 1597463007)))

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
  (assert
  (and (= o1 (unsigned_32_to_float i2))
  (not (or (fp.isInfinite o1) (fp.isNaN o1)))))

;; H
  (assert (= y1 result5))

;; H
  (assert (= y2 o1))

;; H
  (assert
  (and (= o2 (fp.mul RNE half_x1 y2))
  (not (or (fp.isInfinite (fp.mul RNE half_x1 y2)) (fp.isNaN (fp.mul RNE 
  half_x1 y2))))))

;; H
  (assert (= o3 (fp.mul RNE o2 y2)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (not (or (fp.isInfinite o3) (fp.isNaN o3)))))
(check-sat)
