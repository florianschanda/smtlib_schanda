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

(define-fun is_not_nan ((x Float32)) Bool (or
                                          (not (or (fp.isInfinite x) (fp.isNaN x)))
                                          (fp.isInfinite  x)))

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

(define-fun bool_lt ((x Float32)
  (y Float32)) Bool (ite (fp.lt x y) true false))

(define-fun bool_le ((x Float32)
  (y Float32)) Bool (ite (fp.leq x y) true false))

(define-fun bool_gt ((x Float32)
  (y Float32)) Bool (ite (fp.lt y x) true false))

(define-fun bool_ge ((x Float32)
  (y Float32)) Bool (ite (fp.leq y x) true false))

(define-fun bool_eq ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(define-fun bool_neq ((x Float32)
  (y Float32)) Bool (ite (not (fp.eq x y)) true false))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort float 0)

(define-fun bool_eq1 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

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

(declare-fun sin1 (Float32) Float32)

(declare-fun sin__function_guard (Float32 Float32) Bool)

;; sin__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (sin1 x)))
     (and
     (and
     (and
     (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) result)
     (fp.leq result (fp #b0 #b01111111 #b00000000000000000000000)))
     (=> (fp.eq x (fp #b0 #b00000000 #b00000000000000000000000))
     (fp.eq result (fp #b0 #b00000000 #b00000000000000000000000))))
     (dynamic_invariant result true false true)))) :pattern ((sin1 x)) )))

(declare-fun approx_sin (Float32) Float32)

(declare-fun approx_sin__function_guard (Float32 Float32) Bool)

(declare-fun pow3 (Float32) Float32)

(declare-fun pow3__function_guard (Float32 Float32) Bool)

(declare-fun pow5 (Float32) Float32)

(declare-fun pow5__function_guard (Float32 Float32) Bool)

(declare-fun pow7 (Float32) Float32)

(declare-fun pow7__function_guard (Float32 Float32) Bool)

;; approx_sin__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant
     (approx_sin x) true false true)) :pattern ((approx_sin x)) )))

;; approx_sin__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (approx_sin x) (fp.sub RNE (fp.add RNE (fp.sub RNE x (fp.div RNE 
     (pow3 x) (fp #b0 #b10000001 #b10000000000000000000000))) (fp.div RNE 
     (pow5 x) (fp #b0 #b10000101 #b11100000000000000000000))) (fp.div RNE 
     (pow7 x) (fp #b0 #b10001011 #b00111011000000000000000))))) :pattern (
  (approx_sin x)) )))

(declare-fun x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

;; pow3__post_axiom
  (assert
  (forall ((x1 Float32))
  (! (=> (dynamic_invariant x1 true true true) (dynamic_invariant (pow3 x1)
     true false true)) :pattern ((pow3 x1)) )))

;; pow3__def_axiom
  (assert
  (forall ((x1 Float32))
  (! (=> (dynamic_invariant x1 true true true)
     (= (pow3 x1) (fp.mul RNE (fp.mul RNE x1 x1) x1))) :pattern ((pow3 x1)) )))

;; pow5__post_axiom
  (assert
  (forall ((x1 Float32))
  (! (=> (dynamic_invariant x1 true true true) (dynamic_invariant (pow5 x1)
     true false true)) :pattern ((pow5 x1)) )))

;; pow5__def_axiom
  (assert
  (forall ((x1 Float32))
  (! (=> (dynamic_invariant x1 true true true)
     (= (pow5 x1) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x1 x1) x1) x1) x1))) :pattern (
  (pow5 x1)) )))

;; pow7__post_axiom
  (assert
  (forall ((x1 Float32))
  (! (=> (dynamic_invariant x1 true true true) (dynamic_invariant (pow7 x1)
     true false true)) :pattern ((pow7 x1)) )))

;; pow7__def_axiom
  (assert
  (forall ((x1 Float32))
  (! (=> (dynamic_invariant x1 true true true)
     (= (pow7 x1) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x1 x1) x1) x1) x1) x1) x1))) :pattern (
  (pow7 x1)) )))

(declare-fun trigo__sin__result () Float32)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun o2 () Float32)

(declare-fun result () Float32)

(declare-fun trigo__sin__result1 () Float32)

(declare-fun trigo__sin__result2 () Float32)

(declare-fun trigo__sin__result3 () Float32)

(declare-fun trigo__sin__result4 () Float32)

(declare-fun trigo__sin__result5 () Float32)

;; H
  (assert (not (or (fp.isInfinite x) (fp.isNaN x))))

;; H
  (assert
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x) (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert (= trigo__sin__result1 trigo__sin__result2))

;; H
  (assert (= trigo__sin__result3 trigo__sin__result1))

;; H
  (assert
  (and (= o (sin1 x))
  (and (not (or (fp.isInfinite o) (fp.isNaN o)))
  (and
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  o) (fp.leq o (fp #b0 #b01111111 #b00000000000000000000000)))
  (=> (fp.eq x (fp #b0 #b00000000 #b00000000000000000000000))
  (fp.eq o (fp #b0 #b00000000 #b00000000000000000000000)))))))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref trigo__sin__result)))

;; H
  (assert (= trigo__sin__result1 o))

;; H
  (assert
  (= (mk_t__ref trigo__sin__result4) (mk_t__ref trigo__sin__result2)))

;; H
  (assert (= trigo__sin__result5 trigo__sin__result3))

;; H
  (assert
  (and (= o1 (approx_sin x))
  (and (not (or (fp.isInfinite o1) (fp.isNaN o1)))
  (= o1 (fp.sub RNE (fp.add RNE (fp.sub RNE x (fp.div RNE (pow3 x) (fp #b0 #b10000001 #b10000000000000000000000))) (fp.div RNE 
  (pow5 x) (fp #b0 #b10000101 #b11100000000000000000000))) (fp.div RNE 
  (pow7 x) (fp #b0 #b10001011 #b00111011000000000000000)))))))

;; H
  (assert (= o2 (fp.sub RNE trigo__sin__result4 o1)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (not (or (fp.isInfinite o2) (fp.isNaN o2)))))
(check-sat)
