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

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (positive positive) Bool)

(declare-fun dummy2 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(declare-sort fibonacci_argument_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 46)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (fibonacci_argument_type fibonacci_argument_type) Bool)

(declare-fun dummy3 () fibonacci_argument_type)

(declare-datatypes ()
((fibonacci_argument_type__ref
 (mk_fibonacci_argument_type__ref
 (fibonacci_argument_type__content fibonacci_argument_type)))))
(define-fun fibonacci_argument_type__ref___projection ((a fibonacci_argument_type__ref)) fibonacci_argument_type 
  (fibonacci_argument_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_185 Int)
  (temp___is_init_182 Bool) (temp___skip_constant_183 Bool)
  (temp___do_toplevel_184 Bool)) Bool (=>
                                      (or (= temp___is_init_182 true)
                                      (<= 0 46)) (in_range4 temp___expr_185)))

(declare-fun fib (Int) Int)

(declare-fun fib__function_guard (Int Int) Bool)

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

(declare-fun of_int1 (RoundingMode Int) Float32)

(declare-fun to_int2 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range5 ((x Real)) Bool (and
                                      (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                      (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range5
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
(declare-fun power (Float32 Int) Float32)

;; Power_0
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (fp.eq (power x 0) (of_int1 RNE 1)))))

;; Power_1
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (fp.eq (power x 1) x))))

;; Power_2
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (fp.eq (power x 2) (fp.mul RNE x x)))))

;; Power_3
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (fp.eq (power x 3) (fp.mul RNE x (fp.mul RNE x x))))))

;; Power_neg1
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (=> (not (fp.isZero      x))
  (fp.eq (power x (- 1)) (fp.div RNE (of_int1 RNE 1) x))))))

;; Power_neg2
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (=> (not (fp.isZero      x))
  (fp.eq (power x (- 2)) (fp.div RNE (of_int1 RNE 1) (power x 2)))))))

;; Power_neg3
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (=> (not (fp.isZero      x))
  (fp.eq (power x (- 2)) (fp.div RNE (of_int1 RNE 1) (power x 3)))))))

;; fib__def_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant2 n true true true)
     (= (fib n) (ite (or (= n 0) (= n 1)) n (+ (fib (- n 1)) (fib (- n 2)))))) :pattern (
  (fib n)) )))

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content integer)))))
(define-fun t1b__ref___projection ((a t1b__ref)) integer (t1b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun result__ () Int)

(declare-fun old__ () Int)

(declare-fun oldest () Int)

(declare-fun temp () Int)

(declare-fun i () Int)

(declare-fun result () Int)

(declare-fun oldest1 () Int)

(declare-fun result1 () Int)

(declare-fun old__1 () Int)

(declare-fun result2 () Int)

(declare-fun i1 () Int)

(declare-fun old__2 () Int)

(declare-fun oldest2 () Int)

(declare-fun temp1 () Int)

(declare-fun i2 () Int)

(declare-fun result3 () Int)

(declare-fun temp2 () Int)

(declare-fun result4 () Int)

(declare-fun oldest3 () Int)

;; H
  (assert (in_range4 n))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 result__)))

;; H
  (assert (=> (<= 1 2147483647) (in_range3 old__)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 oldest)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 temp)))

;; H
  (assert (not (not (not (= n 0)))))

;; H
  (assert (not (= n 1)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref oldest)))

;; H
  (assert (= oldest1 0))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref old__)))

;; H
  (assert (= old__1 1))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref i)))

;; H
  (assert (= i1 2))

;; H
  (assert (<= 2 i1))

;; H
  (assert (<= i1 n))

;; H
  (assert (and (= old__2 (fib (- i2 1))) (= oldest2 (fib (- i2 2)))))

;; H
  (assert
  (and
  (and
  (and
  (and (=> (<= 2 n) (dynamic_property 2 n i2))
  (=> (<= 1 2147483647) (in_range3 old__2)))
  (=> (<= 0 2147483647) (in_range2 oldest2)))
  (=> (<= 0 2147483647) (in_range2 temp1))) (and (<= 2 i2) (<= i2 n))))

;; H
  (assert (= temp1 result3))

;; H
  (assert (= temp2 oldest2))

;; H
  (assert (= oldest2 result4))

;; H
  (assert (= oldest3 old__2))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range1 (+ old__2 temp2))))
(check-sat)
