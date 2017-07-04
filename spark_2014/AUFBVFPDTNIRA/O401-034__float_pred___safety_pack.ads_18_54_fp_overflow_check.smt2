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

(declare-fun pow2 (Int) Int)

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

(declare-fun to_int1 (RoundingMode Float32) Int)

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

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

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

(declare-sort positive_float 0)

(define-fun in_range2 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b11111110 #b11111111111111111111111)))))

(declare-fun user_eq1 (positive_float positive_float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () positive_float)

(declare-datatypes ()
((positive_float__ref
 (mk_positive_float__ref (positive_float__content positive_float)))))
(define-fun positive_float__ref___projection ((a positive_float__ref)) positive_float 
  (positive_float__content a))

(define-fun dynamic_invariant1 ((temp___expr_1297 Float32)
  (temp___is_init_1294 Bool) (temp___skip_constant_1295 Bool)
  (temp___do_toplevel_1296 Bool)) Bool (=>
                                       (or (= temp___is_init_1294 true)
                                       (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b11111110 #b11111111111111111111111)))
                                       (in_range2 temp___expr_1297)))

(declare-fun value () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun threshold () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun res () Float32)

(declare-fun safety_pack__dead_band__result () Float32)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun result () Float32)

(declare-fun res1 () Float32)

(declare-fun result1 () Float32)

(declare-fun res2 () Float32)

(declare-fun result2 () Float32)

(declare-fun res3 () Float32)

(declare-fun result3 () Float32)

(declare-fun res4 () Float32)

(declare-fun result4 () Float32)

(declare-fun safety_pack__dead_band__result1 () Float32)

(declare-fun safety_pack__dead_band__result2 () Float32)

(declare-fun safety_pack__dead_band__result3 () Float32)

(declare-fun res5 () Float32)

(declare-fun safety_pack__dead_band__result4 () Float32)

(declare-fun res6 () Float32)

(declare-fun safety_pack__dead_band__result5 () Float32)

;; H
  (assert (not (or (fp.isInfinite value) (fp.isNaN value))))

;; H
  (assert (in_range2 threshold))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref res)))

;; H
  (assert (= res1 value))

;; H
  (assert (not (or (fp.isInfinite res1) (fp.isNaN res1))))

;; H
  (assert
  (=> (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold))
  (= result1 res1)))

;; H
  (assert
  (=> (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold))
  (= res2 (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (=> (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) value)
  (and (= o (fp.sub RNE res1 threshold))
  (not (or (fp.isInfinite (fp.sub RNE res1 threshold)) (fp.isNaN (fp.sub RNE 
  res1 threshold))))))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (=> (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) value)
  (= result2 res1))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (=> (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) value) (= res3 o))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (=> (not (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) value))
  (=> (fp.lt value (fp #b0 #b00000000 #b00000000000000000000000))
  (and (= o1 (fp.add RNE res1 threshold))
  (not (or (fp.isInfinite (fp.add RNE res1 threshold)) (fp.isNaN (fp.add RNE 
  res1 threshold)))))))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (=> (not (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) value))
  (=> (fp.lt value (fp #b0 #b00000000 #b00000000000000000000000))
  (= result3 res1)))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (=> (not (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) value))
  (=> (fp.lt value (fp #b0 #b00000000 #b00000000000000000000000))
  (= res4 o1)))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (=> (not (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) value))
  (=> (not (fp.lt value (fp #b0 #b00000000 #b00000000000000000000000)))
  (= res4 res1)))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (=> (not (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) value))
  (= res3 res4))))

;; H
  (assert
  (=> (not (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold)))
  (= res2 res3)))

;; H
  (assert
  (= safety_pack__dead_band__result1 safety_pack__dead_band__result2))

;; H
  (assert
  (= safety_pack__dead_band__result3 safety_pack__dead_band__result1))

;; H
  (assert (= result4 safety_pack__dead_band__result))

;; H
  (assert (= safety_pack__dead_band__result1 res2))

;; H
  (assert
  (= (mk_t__ref safety_pack__dead_band__result4) (mk_t__ref
                                                 safety_pack__dead_band__result2)))

;; H
  (assert (= res5 res2))

;; H
  (assert
  (= safety_pack__dead_band__result5 safety_pack__dead_band__result3))

;; H
  (assert (= res6 res2))

;; H
  (assert
  (=> (and (fp.leq (fp.neg threshold) value) (fp.leq value threshold))
  (fp.eq safety_pack__dead_band__result4 (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert (= (fp.gt value threshold) true))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (not (or (fp.isInfinite (fp.sub RNE value threshold)) (fp.isNaN (fp.sub RNE 
  value threshold))))))
(check-sat)
