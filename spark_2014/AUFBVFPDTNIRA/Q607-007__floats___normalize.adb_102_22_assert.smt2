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

(declare-sort t_float32 0)

(define-fun in_range2 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111101110)) x)
                                         (fp.leq x (fp #b0 #b11111110 #b11111111111111111101110)))))

(declare-fun user_eq (t_float32 t_float32) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy () t_float32)

(declare-datatypes ()
((t_float32__ref (mk_t_float32__ref (t_float32__content t_float32)))))
(define-fun t_float32__ref___projection ((a t_float32__ref)) t_float32 
  (t_float32__content a))

(define-fun dynamic_invariant ((temp___expr_135 Float32)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111101110)) (fp #b0 #b11111110 #b11111111111111111101110)))
                                      (in_range2 temp___expr_135)))

(declare-sort t1 0)

(define-fun in_range3 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10001000 #b01101000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10001000 #b01101000000000000000000)))))

(declare-fun user_eq1 (t1 t1) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () t1)

(declare-datatypes () ((t1__ref (mk_t1__ref (t1__content t1)))))
(define-fun t1__ref___projection ((a t1__ref)) t1 (t1__content a))

(define-fun dynamic_invariant1 ((temp___expr_141 Float32)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (fp.leq (fp.neg (fp #b0 #b10001000 #b01101000000000000000000)) (fp #b0 #b10001000 #b01101000000000000000000)))
                                      (in_range3 temp___expr_141)))

(declare-sort t2 0)

(define-fun in_range4 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000000 #b10000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000000 #b00000000000000000000000)))))

(declare-fun user_eq2 (t2 t2) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy2 () t2)

(declare-datatypes () ((t2__ref (mk_t2__ref (t2__content t2)))))
(define-fun t2__ref___projection ((a t2__ref)) t2 (t2__content a))

(declare-fun x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun r2 (Float32) Float32)

(declare-fun r2__function_guard (Float32 Float32) Bool)

;; r2__post_axiom
  (assert
  (forall ((x1 Float32))
  (! (=>
     (and (dynamic_invariant x1 true true true)
     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111101110)) x1))
     (dynamic_invariant (r2 x1) true false true)) :pattern ((r2 x1)) )))

;; r2__def_axiom
  (assert
  (forall ((x1 Float32))
  (! (=> (dynamic_invariant x1 true true true)
     (= (r2 x1) (fp.roundToIntegral RTN x1))) :pattern ((r2 x1)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant2 ((temp___expr_147 Float32)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (fp.leq (fp.neg (fp #b0 #b10000000 #b10000000000000000000000)) (fp #b0 #b10000000 #b00000000000000000000000)))
                                      (in_range4 temp___expr_147)))

(declare-fun v1 () Float32)

(declare-fun v2 () Float32)

(declare-fun result () Float32)

(declare-fun v11 () Float32)

;; H
  (assert (in_range3 x))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111101110)) (fp #b0 #b11111110 #b11111111111111111101110))
  (in_range2 v1)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111101110)) (fp #b0 #b11111110 #b11111111111111111101110))
  (in_range2 v2)))

;; H
  (assert (= result v1))

;; H
  (assert
  (= v11 (fp.div RNE x (fp #b0 #b10000111 #b01101000000000000000000))))

(assert
;; WP_parameter_def
 ;; File "normalize.ads", line 9, characters 0-0
  (not (fp.leq (fp.neg (fp #b0 #b10000000 #b00000000000000000000000)) v11)))
(check-sat)
