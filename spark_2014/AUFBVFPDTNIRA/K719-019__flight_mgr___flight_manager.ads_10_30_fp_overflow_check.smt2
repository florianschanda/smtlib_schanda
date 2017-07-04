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

(declare-fun to_rep (float) Float32)

(declare-fun of_rep (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep x)) (fp.isNaN (to_rep x)))) :pattern (
  (to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (= (to_rep (of_rep x)) x)) :pattern (
  (to_rep (of_rep x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__flight_manager__engine_values__x_speed float)(rec__flight_manager__engine_values__y_speed float)))))
(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__flight_manager__engine_values__x_speed
                           (us_split_fields1 a))) (to_rep
                                                  (rec__flight_manager__engine_values__x_speed
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__flight_manager__engine_values__y_speed
                           (us_split_fields1 a))) (to_rep
                                                  (rec__flight_manager__engine_values__y_speed
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun flight_manager__engine_values__x_speed__first__bit () Int)

(declare-fun flight_manager__engine_values__x_speed__last__bit () Int)

(declare-fun flight_manager__engine_values__x_speed__position () Int)

;; flight_manager__engine_values__x_speed__first__bit_axiom
  (assert (<= 0 flight_manager__engine_values__x_speed__first__bit))

;; flight_manager__engine_values__x_speed__last__bit_axiom
  (assert
  (< flight_manager__engine_values__x_speed__first__bit flight_manager__engine_values__x_speed__last__bit))

;; flight_manager__engine_values__x_speed__position_axiom
  (assert (<= 0 flight_manager__engine_values__x_speed__position))

(declare-fun flight_manager__engine_values__y_speed__first__bit () Int)

(declare-fun flight_manager__engine_values__y_speed__last__bit () Int)

(declare-fun flight_manager__engine_values__y_speed__position () Int)

;; flight_manager__engine_values__y_speed__first__bit_axiom
  (assert (<= 0 flight_manager__engine_values__y_speed__first__bit))

;; flight_manager__engine_values__y_speed__last__bit_axiom
  (assert
  (< flight_manager__engine_values__y_speed__first__bit flight_manager__engine_values__y_speed__last__bit))

;; flight_manager__engine_values__y_speed__position_axiom
  (assert (<= 0 flight_manager__engine_values__y_speed__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((engine_values__ref (mk_engine_values__ref (engine_values__content us_rep)))))
(define-fun engine_values__ref___projection ((a engine_values__ref)) us_rep 
  (engine_values__content a))

(declare-fun position_x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun position_y () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun target_x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun target_y () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun result____split_fields () float)

(declare-fun result____split_fields1 () float)

(declare-fun flight_manager__set_engine_speed__result () float)

(declare-fun flight_manager__set_engine_speed__result1 () float)

(declare-fun o () float)

(declare-fun o1 () float)

(declare-fun o2 () float)

(declare-fun temp___145 () float)

(declare-fun temp___1451 () float)

(declare-fun o3 () float)

(declare-fun o4 () float)

(declare-fun o5 () float)

(declare-fun temp___143 () float)

(declare-fun temp___1431 () float)

(declare-fun o6 () float)

(declare-fun o7 () float)

(declare-fun o8 () float)

(declare-fun temp___149 () float)

(declare-fun temp___1491 () float)

(declare-fun o9 () float)

(declare-fun o10 () float)

(declare-fun o11 () float)

(declare-fun temp___147 () float)

(declare-fun temp___1471 () float)

(declare-fun o12 () Float32)

(declare-fun o13 () Float32)

(declare-fun o14 () float)

(declare-fun o15 () float)

(declare-fun o16 () float)

(declare-fun temp___151 () float)

(declare-fun temp___1511 () float)

(declare-fun o17 () Float32)

(declare-fun o18 () Float32)

(declare-fun o19 () float)

(declare-fun o20 () float)

(declare-fun o21 () float)

(declare-fun temp___153 () us_rep)

(declare-fun o22 () Float32)

(declare-fun o23 () Float32)

(declare-fun o24 () Float32)

(declare-fun o25 () Float32)

(declare-fun o26 () Float32)

(declare-fun o27 () Bool)

(declare-fun result____split_fields2 () us_split_fields)

(declare-fun result () us_split_fields__ref)

(declare-fun result____split_fields3 () us_split_fields)

(declare-fun result1 () us_split_fields__ref)

(declare-fun result____split_fields4 () us_split_fields)

(declare-fun result2 () us_split_fields__ref)

(declare-fun result____split_fields5 () us_split_fields)

(declare-fun result3 () us_split_fields__ref)

(declare-fun result____split_fields6 () us_split_fields)

(declare-fun flight_manager__set_engine_speed__adjust_speed__f () Float32)

(declare-fun result4 () us_split_fields__ref)

(declare-fun result____split_fields7 () us_split_fields)

(declare-fun flight_manager__set_engine_speed__adjust_speed__f1 () Float32)

(declare-fun result5 () us_split_fields__ref)

(declare-fun result____split_fields8 () us_split_fields)

(declare-fun result6 () engine_values__ref)

(declare-fun flight_manager__set_engine_speed__result2 () us_rep)

(declare-fun flight_manager__set_engine_speed__result3 () engine_values__ref)

(declare-fun flight_manager__set_engine_speed__result4 () us_rep)

(declare-fun result____split_fields9 () us_split_fields__ref)

(declare-fun flight_manager__set_engine_speed__result5 () engine_values__ref)

(declare-fun result____split_fields10 () us_split_fields)

(declare-fun flight_manager__set_engine_speed__result6 () us_rep)

(define-fun result____split_fields11 () us_split_fields__ref (mk___split_fields__ref
                                                             (mk___split_fields
                                                             result____split_fields
                                                             result____split_fields1)))

;; H
  (assert (not (or (fp.isInfinite position_x) (fp.isNaN position_x))))

;; H
  (assert (not (or (fp.isInfinite position_y) (fp.isNaN position_y))))

;; H
  (assert (not (or (fp.isInfinite target_x) (fp.isNaN target_x))))

;; H
  (assert (not (or (fp.isInfinite target_y) (fp.isNaN target_y))))

;; H
  (assert
  (=> (fp.lt target_x position_x)
  (= (to_rep o) (fp.neg (fp #b0 #b10000101 #b10010000000000000000000)))))

;; H
  (assert (=> (fp.lt target_x position_x) (= o o1)))

;; H
  (assert (=> (fp.lt target_x position_x) (= result____split_fields1 o2)))

;; H
  (assert (=> (fp.lt target_x position_x) (= temp___145 o1)))

;; H
  (assert (=> (fp.lt target_x position_x) (= temp___1451 o2)))

;; H
  (assert
  (=> (fp.lt target_x position_x) (= result result____split_fields11)))

;; H
  (assert
  (=> (fp.lt target_x position_x)
  (= result____split_fields3 (mk___split_fields temp___145 temp___1451))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (fp.lt position_x target_x)
  (= (to_rep o3) (fp #b0 #b10000101 #b10010000000000000000000)))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (fp.lt position_x target_x) (= o3 o4))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (fp.lt position_x target_x) (= result____split_fields1 o5))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (fp.lt position_x target_x) (= temp___143 o4))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (fp.lt position_x target_x) (= temp___1431 o5))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (fp.lt position_x target_x) (= result1 result____split_fields11))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (fp.lt position_x target_x)
  (= result____split_fields4 (mk___split_fields temp___143 temp___1431)))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (not (fp.lt position_x target_x))
  (= result____split_fields4 (mk___split_fields result____split_fields
                             result____split_fields1)))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (=> (not (fp.lt position_x target_x))
  (= result____split_fields4 result____split_fields2))))

;; H
  (assert
  (=> (not (fp.lt target_x position_x))
  (= result____split_fields3 result____split_fields4)))

;; H
  (assert
  (=> (fp.lt target_y position_y)
  (= (to_rep o6) (fp.neg (fp #b0 #b10000101 #b10010000000000000000000)))))

;; H
  (assert
  (=> (fp.lt target_y position_y)
  (= (rec__flight_manager__engine_values__x_speed result____split_fields3) 
  o7)))

;; H
  (assert (=> (fp.lt target_y position_y) (= o6 o8)))

;; H
  (assert (=> (fp.lt target_y position_y) (= temp___149 o7)))

;; H
  (assert (=> (fp.lt target_y position_y) (= temp___1491 o8)))

;; H
  (assert
  (=> (fp.lt target_y position_y)
  (= result2 (mk___split_fields__ref result____split_fields3))))

;; H
  (assert
  (=> (fp.lt target_y position_y)
  (= result____split_fields5 (mk___split_fields temp___149 temp___1491))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (=> (fp.lt position_y target_y)
  (= (to_rep o9) (fp #b0 #b10000101 #b10010000000000000000000)))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (=> (fp.lt position_y target_y)
  (= (rec__flight_manager__engine_values__x_speed result____split_fields3) 
  o10))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (=> (fp.lt position_y target_y) (= o9 o11))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (=> (fp.lt position_y target_y) (= temp___147 o10))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (=> (fp.lt position_y target_y) (= temp___1471 o11))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (=> (fp.lt position_y target_y)
  (= result3 (mk___split_fields__ref result____split_fields3)))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (=> (fp.lt position_y target_y)
  (= result____split_fields6 (mk___split_fields temp___147 temp___1471)))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (=> (not (fp.lt position_y target_y))
  (= result____split_fields6 result____split_fields3))))

;; H
  (assert
  (=> (not (fp.lt target_y position_y))
  (= result____split_fields5 result____split_fields6)))

;; H
  (assert
  (and (= o12 (fp.sub RNE position_x target_x))
  (not (or (fp.isInfinite (fp.sub RNE position_x target_x)) (fp.isNaN (fp.sub RNE 
  position_x target_x))))))

;; H
  (assert (= o13 (fp.abs o12)))

;; H
  (assert
  (and
  (=> (fp.lt o13 (fp #b0 #b10000010 #b01000000000000000000000))
  (fp.eq flight_manager__set_engine_speed__adjust_speed__f (fp.div RNE (fp.mul RNE 
  (to_rep
  (rec__flight_manager__engine_values__x_speed result____split_fields5)) 
  o13) (fp #b0 #b10000010 #b01000000000000000000000))))
  (not (or (fp.isInfinite flight_manager__set_engine_speed__adjust_speed__f) (fp.isNaN 
  flight_manager__set_engine_speed__adjust_speed__f)))))

;; H
  (assert (= (to_rep o14) flight_manager__set_engine_speed__adjust_speed__f))

;; H
  (assert (= o14 o15))

;; H
  (assert
  (= (rec__flight_manager__engine_values__y_speed result____split_fields5) 
  o16))

;; H
  (assert (= temp___151 o15))

;; H
  (assert (= temp___1511 o16))

;; H
  (assert (= result4 (mk___split_fields__ref result____split_fields5)))

;; H
  (assert
  (= result____split_fields7 (mk___split_fields temp___151 temp___1511)))

;; H
  (assert
  (and (= o17 (fp.sub RNE position_y target_y))
  (not (or (fp.isInfinite (fp.sub RNE position_y target_y)) (fp.isNaN (fp.sub RNE 
  position_y target_y))))))

;; H
  (assert (= o18 (fp.abs o17)))

;; H
  (assert
  (and
  (=> (fp.lt o18 (fp #b0 #b10000010 #b01000000000000000000000))
  (fp.eq flight_manager__set_engine_speed__adjust_speed__f1 (fp.div RNE (fp.mul RNE 
  (to_rep
  (rec__flight_manager__engine_values__y_speed result____split_fields7)) 
  o18) (fp #b0 #b10000010 #b01000000000000000000000))))
  (not (or (fp.isInfinite flight_manager__set_engine_speed__adjust_speed__f1) (fp.isNaN 
  flight_manager__set_engine_speed__adjust_speed__f1)))))

;; H
  (assert
  (= (to_rep o19) flight_manager__set_engine_speed__adjust_speed__f1))

;; H
  (assert
  (= (rec__flight_manager__engine_values__x_speed result____split_fields7) 
  o20))

;; H
  (assert (= o19 o21))

;; H
  (assert (= temp___153 (mk___rep (mk___split_fields o20 o21))))

;; H
  (assert (= result5 (mk___split_fields__ref result____split_fields7)))

;; H
  (assert (= result____split_fields8 (us_split_fields1 temp___153)))

;; H
  (assert
  (= flight_manager__set_engine_speed__result3 (mk_engine_values__ref
                                               flight_manager__set_engine_speed__result2)))

;; H
  (assert
  (= flight_manager__set_engine_speed__result4 flight_manager__set_engine_speed__result2))

;; H
  (assert
  (= result6 (mk_engine_values__ref
             (mk___rep
             (mk___split_fields flight_manager__set_engine_speed__result
             flight_manager__set_engine_speed__result1)))))

;; H
  (assert
  (= flight_manager__set_engine_speed__result2 (mk___rep
                                               result____split_fields8)))

;; H
  (assert
  (= flight_manager__set_engine_speed__result5 flight_manager__set_engine_speed__result3))

;; H
  (assert
  (= result____split_fields9 (mk___split_fields__ref result____split_fields8)))

;; H
  (assert
  (= flight_manager__set_engine_speed__result6 flight_manager__set_engine_speed__result4))

;; H
  (assert (= result____split_fields10 result____split_fields8))

;; H
  (assert
  (and
  (= o25 (fp.add RNE position_y (to_rep
                                (rec__flight_manager__engine_values__y_speed
                                (us_split_fields1
                                (engine_values__content
                                flight_manager__set_engine_speed__result5))))))
  (not (or (fp.isInfinite (fp.add RNE position_y (to_rep
                                                 (rec__flight_manager__engine_values__y_speed
                                                 (us_split_fields1
                                                 (engine_values__content
                                                 flight_manager__set_engine_speed__result5)))))) (fp.isNaN (fp.add RNE 
  position_y (to_rep
             (rec__flight_manager__engine_values__y_speed
             (us_split_fields1
             (engine_values__content
             flight_manager__set_engine_speed__result5))))))))))

;; H
  (assert
  (and
  (= o23 (fp.add RNE position_y (to_rep
                                (rec__flight_manager__engine_values__y_speed
                                (us_split_fields1
                                (engine_values__content
                                flight_manager__set_engine_speed__result5))))))
  (not (or (fp.isInfinite (fp.add RNE position_y (to_rep
                                                 (rec__flight_manager__engine_values__y_speed
                                                 (us_split_fields1
                                                 (engine_values__content
                                                 flight_manager__set_engine_speed__result5)))))) (fp.isNaN (fp.add RNE 
  position_y (to_rep
             (rec__flight_manager__engine_values__y_speed
             (us_split_fields1
             (engine_values__content
             flight_manager__set_engine_speed__result5))))))))))

;; H
  (assert (= o24 (fp.sub RNE o23 target_y)))

;; H
  (assert (and (= o26 o24) (not (or (fp.isInfinite o24) (fp.isNaN o24)))))

;; H
  (assert (= o27 (ite (fp.lt o26 o25) true false)))

;; H
  (assert
  (and
  (= o22 (fp.add RNE position_x (to_rep
                                (rec__flight_manager__engine_values__x_speed
                                (us_split_fields1
                                (engine_values__content
                                flight_manager__set_engine_speed__result5))))))
  (not (or (fp.isInfinite (fp.add RNE position_x (to_rep
                                                 (rec__flight_manager__engine_values__x_speed
                                                 (us_split_fields1
                                                 (engine_values__content
                                                 flight_manager__set_engine_speed__result5)))))) (fp.isNaN (fp.add RNE 
  position_x (to_rep
             (rec__flight_manager__engine_values__x_speed
             (us_split_fields1
             (engine_values__content
             flight_manager__set_engine_speed__result5))))))))))

(assert
;; WP_parameter_def
 ;; File "flight_manager.ads", line 3, characters 0-0
  (not
  (not (or (fp.isInfinite (fp.add RNE position_x (to_rep
                                                 (rec__flight_manager__engine_values__x_speed
                                                 (us_split_fields1
                                                 (engine_values__content
                                                 flight_manager__set_engine_speed__result5)))))) (fp.isNaN (fp.add RNE 
  position_x (to_rep
             (rec__flight_manager__engine_values__x_speed
             (us_split_fields1
             (engine_values__content
             flight_manager__set_engine_speed__result5))))))))))
(check-sat)
