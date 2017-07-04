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
(declare-fun power (Float32 Int) Float32)

;; Power_0
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (fp.eq (power x 0) (of_int RNE 1)))))

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
  (fp.eq (power x (- 1)) (fp.div RNE (of_int RNE 1) x))))))

;; Power_neg2
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (=> (not (fp.isZero      x))
  (fp.eq (power x (- 2)) (fp.div RNE (of_int RNE 1) (power x 2)))))))

;; Power_neg3
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (=> (not (fp.isZero      x))
  (fp.eq (power x (- 2)) (fp.div RNE (of_int RNE 1) (power x 3)))))))

(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
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

(declare-sort float 0)

(declare-fun user_eq1 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-sort fibonacci_argument_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 46)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (fibonacci_argument_type fibonacci_argument_type) Bool)

(declare-fun dummy2 () fibonacci_argument_type)

(declare-datatypes ()
((fibonacci_argument_type__ref
 (mk_fibonacci_argument_type__ref
 (fibonacci_argument_type__content fibonacci_argument_type)))))
(define-fun fibonacci_argument_type__ref___projection ((a fibonacci_argument_type__ref)) fibonacci_argument_type 
  (fibonacci_argument_type__content a))

(define-fun dynamic_invariant ((temp___expr_185 Int)
  (temp___is_init_182 Bool) (temp___skip_constant_183 Bool)
  (temp___do_toplevel_184 Bool)) Bool (=>
                                      (or (= temp___is_init_182 true)
                                      (<= 0 46)) (in_range3 temp___expr_185)))

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort natural 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (natural natural) Bool)

(declare-fun dummy3 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range4
                                     temp___expr_33)))

(declare-fun fib (Int) Int)

(declare-fun fib__function_guard (Int Int) Bool)

;; fib__def_axiom
  (assert
  (forall ((n1 Int))
  (! (=> (dynamic_invariant n1 true true true)
     (= (fib n1) (ite (or (= n1 0) (= n1 1)) n1
                 (+ (fib (- n1 1)) (fib (- n1 2)))))) :pattern ((fib n1)) )))

(define-fun dynamic_invariant2 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(declare-fun number_theory__fib__result () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun result () Int)

(declare-fun number_theory__fib__result1 () Int)

(declare-fun number_theory__fib__result2 () Int)

(declare-fun number_theory__fib__result3 () Int)

(declare-fun number_theory__fib__result4 () Int)

(declare-fun number_theory__fib__result5 () Int)

(declare-fun result1 () Int)

;; H
  (assert (in_range3 n))

;; H
  (assert (= number_theory__fib__result1 number_theory__fib__result2))

;; H
  (assert (= number_theory__fib__result3 number_theory__fib__result1))

;; H
  (assert (=> (=> (not (= n 0)) (= n 1)) (= o5 n)))

;; H
  (assert
  (=> (not (=> (not (= n 0)) (= n 1)))
  (and (= o1 (- n 2)) (in_range3 (- n 2)))))

;; H
  (assert
  (=> (not (=> (not (= n 0)) (= n 1)))
  (and (= o2 (fib o1))
  (and (in_range4 o2)
  (and
  (= o2 (ite (or (= o1 0) (= o1 1)) o1 (+ (fib (- o1 1)) (fib (- o1 2)))))
  (fp.lt (of_int RNE o2) (fp.add RNE (fp.div RNE (power
                                                 (fp #b0 #b01111111 #b10011110001110111100111)
                                                 o1) (fp #b0 #b10000000 #b00011110001101010100000)) (fp #b0 #b01111111 #b00000000000000000000000))))))))

;; H
  (assert
  (=> (not (=> (not (= n 0)) (= n 1)))
  (and (= o (- n 1)) (in_range3 (- n 1)))))

;; H
  (assert
  (=> (not (=> (not (= n 0)) (= n 1)))
  (and (= o3 (fib o))
  (and (in_range4 o3)
  (and (= o3 (ite (or (= o 0) (= o 1)) o (+ (fib (- o 1)) (fib (- o 2)))))
  (fp.lt (of_int RNE o3) (fp.add RNE (fp.div RNE (power
                                                 (fp #b0 #b01111111 #b10011110001110111100111)
                                                 o) (fp #b0 #b10000000 #b00011110001101010100000)) (fp #b0 #b01111111 #b00000000000000000000000))))))))

;; H
  (assert (=> (not (=> (not (= n 0)) (= n 1))) (= o4 (+ o3 o2))))

;; H
  (assert
  (=> (not (=> (not (= n 0)) (= n 1))) (and (= o5 o4) (in_range2 o4))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref number_theory__fib__result)))

;; H
  (assert (= number_theory__fib__result1 o5))

;; H
  (assert
  (= (mk_int__ref number_theory__fib__result4) (mk_int__ref
                                               number_theory__fib__result2)))

;; H
  (assert (= number_theory__fib__result5 number_theory__fib__result3))

;; H
  (assert (= result1 number_theory__fib__result4))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (fp.lt (of_int RNE number_theory__fib__result4) (fp.add RNE (fp.div RNE 
  (power (fp #b0 #b01111111 #b10011110001110111100111) n) (fp #b0 #b10000000 #b00011110001101010100000)) (fp #b0 #b01111111 #b00000000000000000000000)))))
(check-sat)
