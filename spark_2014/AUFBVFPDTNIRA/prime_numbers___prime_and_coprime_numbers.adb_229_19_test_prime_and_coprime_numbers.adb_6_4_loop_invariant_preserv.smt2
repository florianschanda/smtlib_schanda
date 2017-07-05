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

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(declare-sort value_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (value_type value_type) Bool)

(declare-fun dummy1 () value_type)

(declare-datatypes ()
((value_type__ref (mk_value_type__ref (value_type__content value_type)))))
(define-fun value_type__ref___projection ((a value_type__ref)) value_type 
  (value_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_178 Int)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (=>
                                      (or (= temp___is_init_175 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_178)))

(declare-sort tnumber_list_typeD1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 100000)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (tnumber_list_typeD1 tnumber_list_typeD1) Bool)

(declare-fun dummy2 () tnumber_list_typeD1)

(declare-datatypes ()
((tnumber_list_typeD1__ref
 (mk_tnumber_list_typeD1__ref
 (tnumber_list_typeD1__content tnumber_list_typeD1)))))
(define-fun tnumber_list_typeD1__ref___projection ((a tnumber_list_typeD1__ref)) tnumber_list_typeD1 
  (tnumber_list_typeD1__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int Bool))))))
(declare-fun slide ((Array Int Bool) Int Int) (Array Int Bool))

;; slide_eq
  (assert
  (forall ((a (Array Int Bool)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int Bool)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int Bool) Int Int (Array Int Bool) Int
  Int) (Array Int Bool))

;; concat_def
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (Bool Int) (Array Int Bool))

;; singleton_def
  (assert
  (forall ((v Bool))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq ((a (Array Int Bool)) (a__first Int) (a__last Int)
  (b (Array Int Bool)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (select a temp___idx_132) (select b (+ (- b__first a__first) temp___idx_132))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (select a temp___idx_132) (select b (+ (- b__first a__first) temp___idx_132))))))))))

(declare-fun compare ((Array Int Bool) Int Int (Array Int Bool) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_int2 (select a (+ i 1))) (to_int2 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_int2 (select b (+ i 1))) (to_int2 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun xorb ((Array Int Bool) Int Int (Array Int Bool) Int
  Int) (Array Int Bool))

(declare-fun andb ((Array Int Bool) Int Int (Array Int Bool) Int
  Int) (Array Int Bool))

(declare-fun orb ((Array Int Bool) Int Int (Array Int Bool) Int
  Int) (Array Int Bool))

(declare-fun notb ((Array Int Bool) Int Int) (Array Int Bool))

;; op_def
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (orb a a_first a_last b b_first b_last) i) (or (select a i) (select b (+ (- i a_first) b_first))))) :pattern ((select 
  (orb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (andb a a_first a_last b b_first b_last) i) (and (select a i) (select b (+ (- i a_first) b_first))))) :pattern ((select 
  (andb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (xorb a a_first a_last b b_first b_last) i) (xor (select a i) (select b (+ (- i a_first) b_first))))) :pattern ((select 
  (xorb a a_first a_last b b_first b_last) i)) )))))

;; notb_def
  (assert
  (forall ((a (Array Int Bool)))
  (forall ((a_first Int) (a_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (notb a a_first a_last) i) (not (select a i)))) :pattern ((select 
  (notb a a_first a_last) i)) )))))

(declare-fun is_prime (Int) Bool)

(declare-fun is_prime__function_guard (Bool Int) Bool)

;; is_prime__post_axiom
  (assert true)

;; is_prime__def_axiom
  (assert
  (forall ((value Int))
  (! (= (= (is_prime value) true)
     (and (<= 2 value)
     (forall ((v Int))
     (=> (and (<= 2 v) (<= v (- value 1))) (not (= (mod2 value v) 0)))))) :pattern (
  (is_prime value)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun valid_prime_data ((Array Int Bool)) Bool)

(declare-fun valid_prime_data__function_guard (Bool (Array Int Bool)) Bool)

;; valid_prime_data__post_axiom
  (assert true)

;; valid_prime_data__def_axiom
  (assert
  (forall
  ((test_prime_and_coprime_numbers__p__set__is_prime (Array Int Bool)))
  (! (=
     (= (valid_prime_data test_prime_and_coprime_numbers__p__set__is_prime) true)
     (forall ((v Int))
     (=> (and (<= 0 v) (<= v 100000))
     (= (= (select test_prime_and_coprime_numbers__p__set__is_prime v) true)
     (= (is_prime v) true))))) :pattern ((valid_prime_data
                                         test_prime_and_coprime_numbers__p__set__is_prime)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun r77b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes () ((t78b__ref (mk_t78b__ref (t78b__content integer)))))
(define-fun t78b__ref___projection ((a t78b__ref)) integer (t78b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun temp___250 (Bool) (Array Int Bool))

;; def_axiom
  (assert
  (forall ((temp___252 Bool))
  (forall ((temp___253 Int))
  (= (select (temp___250 temp___252) temp___253) temp___252))))

(declare-fun is_prime1 () (Array Int Bool))

(declare-fun index_1 () Int)

(declare-fun index_3 () Int)

(declare-fun index_2 () Int)

(declare-fun test_prime_and_coprime_numbers__p__eratosthenes__L_5__R77b__assume () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () (Array Int Bool))

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () (Array Int Bool))

(declare-fun result () (Array Int Bool))

(declare-fun is_prime2 () (Array Int Bool))

(declare-fun result1 () (Array Int Bool))

(declare-fun is_prime3 () (Array Int Bool))

(declare-fun result2 () (Array Int Bool))

(declare-fun is_prime4 () (Array Int Bool))

(declare-fun result3 () Int)

(declare-fun index_21 () Int)

(declare-fun is_prime5 () (Array Int Bool))

(declare-fun index_11 () Int)

(declare-fun index_31 () Int)

(declare-fun index_22 () Int)

(declare-fun result4 () Bool)

(declare-fun result5 () Int)

(declare-fun index_12 () Int)

(declare-fun result6 () Int)

(declare-fun index_32 () Int)

(declare-fun result7 () (Array Int Bool))

(declare-fun is_prime6 () (Array Int Bool))

(declare-fun is_prime7 () (Array Int Bool))

(declare-fun index_33 () Int)

(declare-fun result8 () Int)

(declare-fun index_34 () Int)

(declare-fun result9 () (Array Int Bool))

(declare-fun is_prime8 () (Array Int Bool))

;; H
  (assert (=> (<= 0 2147483647) (in_range3 index_1)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 index_3)))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref is_prime1)))

;; H
  (assert (= is_prime2 (temp___250 (of_int1 1))))

;; H
  (assert (= is_prime2 result1))

;; H
  (assert (= is_prime3 (store is_prime2 0 (of_int1 0))))

;; H
  (assert (= is_prime3 result2))

;; H
  (assert (= is_prime4 (store is_prime3 1 (of_int1 0))))

;; H
  (assert
  (and
  (= test_prime_and_coprime_numbers__p__eratosthenes__L_5__R77b__assume 
  (to_int1 RNA (fp.sqrt RNE (fp #b0 #b10001111 #b10000110101000000000000))))
  (in_range3
  (to_int1 RNA (fp.sqrt RNE (fp #b0 #b10001111 #b10000110101000000000000))))))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__eratosthenes__L_5__R77b__assume 
  r77b))

;; H
  (assert (in_range3 r77b))

;; H
  (assert (= (mk_int__ref result3) (mk_int__ref index_2)))

;; H
  (assert (= index_21 2))

;; H
  (assert (<= 2 index_21))

;; H
  (assert (<= index_21 r77b))

;; H
  (assert (and (<= 2 index_22) (<= index_22 100000)))

;; H
  (assert
  (forall ((v Int))
  (=> (and (<= 0 v) (<= v index_22))
  (= (= (select is_prime5 v) true) (= (is_prime v) true)))))

;; H
  (assert
  (forall ((v Int))
  (=> (and (<= index_22 v) (<= v 100000))
  (= (= (select is_prime5 v) true)
  (forall ((div2 Int))
  (=> (and (<= 2 div2) (<= div2 (- index_22 1))) (not (= (mod2 v div2) 0))))))))

;; H
  (assert
  (and
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range2 index_31))
  (=> (<= 2 r77b) (dynamic_property 2 r77b index_22)))
  (=> (<= 0 2147483647) (in_range3 index_11)))
  (and (<= 2 index_22) (<= index_22 r77b))))

;; H
  (assert (and (<= 0 index_22) (<= index_22 100000)))

;; H
  (assert (= o index_22))

;; H
  (assert (= result4 (select is_prime5 o)))

;; H
  (assert (= result4 true))

;; H
  (assert (= index_11 result5))

;; H
  (assert (= index_12 index_22))

;; H
  (assert (and (= o1 (* 2 index_12)) (in_range2 (* 2 index_12))))

;; H
  (assert (= index_31 result6))

;; H
  (assert (= index_32 o1))

;; H
  (assert (<= index_32 100000))

;; H
  (assert (and (<= 0 index_32) (<= index_32 100000)))

;; H
  (assert (= o2 index_32))

;; H
  (assert (= o3 (store is_prime5 o2 (of_int1 0))))

;; H
  (assert (= is_prime5 result7))

;; H
  (assert (= is_prime6 o3))

;; H
  (assert
  (forall ((v Int))
  (=> (and (<= 0 v) (<= v index_22))
  (= (= (select is_prime7 v) true) (= (is_prime v) true)))))

;; H
  (assert
  (forall ((v Int))
  (=> (and (<= index_22 v) (<= v 100000))
  (= (= (select is_prime7 v) true)
  (and
  (forall ((div2 Int))
  (=> (and (<= 2 div2) (<= div2 (- index_22 1))) (not (= (mod2 v div2) 0))))
  (=> (and (<= (+ index_22 1) v) (<= v index_33))
  (not (= (mod2 v index_22) 0))))))))

;; H
  (assert (and (<= index_22 index_33) (<= index_33 100000)))

;; H
  (assert (= (mod2 index_33 index_22) 0))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 index_33)))

;; H
  (assert
  (and (= o4 (+ index_33 index_12)) (in_range2 (+ index_33 index_12))))

;; H
  (assert (= index_33 result8))

;; H
  (assert (= index_34 o4))

;; H
  (assert (<= index_34 100000))

;; H
  (assert (and (<= 0 index_34) (<= index_34 100000)))

;; H
  (assert (= o5 index_34))

;; H
  (assert (= o6 (store is_prime7 o5 (of_int1 0))))

;; H
  (assert (= result9 is_prime7))

;; H
  (assert (= is_prime8 o6))

(declare-fun v () Int)

;; H
  (assert (<= 0 v))

;; H
  (assert (<= v index_22))

;; H
  (assert (= (select is_prime8 v) true))

(assert
;; WP_parameter_def
 ;; File "prime_and_coprime_numbers.ads", line 3, characters 0-0
  (not (= (is_prime v) true)))
(check-sat)
