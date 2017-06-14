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

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort value_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (value_type value_type) Bool)

(declare-fun dummy () value_type)

(declare-datatypes ()
((value_type__ref (mk_value_type__ref (value_type__content value_type)))))
(define-fun value_type__ref___projection ((a value_type__ref)) value_type 
  (value_type__content a))

(define-fun dynamic_invariant ((temp___expr_178 Int)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (=>
                                      (or (= temp___is_init_175 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_178)))

(declare-fun are_coprime (Int Int) Bool)

(declare-fun are_coprime__function_guard (Bool Int Int) Bool)

;; are_coprime__post_axiom
  (assert true)

;; are_coprime__def_axiom
  (assert
  (forall ((v1 Int) (v2 Int))
  (! (=> (are_coprime__function_guard (are_coprime v1 v2) v1 v2)
     (= (= (are_coprime v1 v2) true)
     (and (and (< 0 v1) (< 0 v2))
     (forall ((v Int))
     (=> (and (<= 2 v) (<= v (ite (< v1 v2) v1 v2)))
     (not (and (= (mod2 v1 v) 0) (= (mod2 v2 v) 0)))))))) :pattern ((are_coprime
                                                                    v1 v2)) )))

(declare-fun left () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun right () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort taS 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (taS taS) Bool)

(declare-fun dummy1 () taS)

(declare-datatypes () ((taS__ref (mk_taS__ref (taS__content taS)))))
(define-fun taS__ref___projection ((a taS__ref)) taS (taS__content a))

(define-fun dynamic_invariant1 ((temp___expr_228 Int)
  (temp___is_init_225 Bool) (temp___skip_constant_226 Bool)
  (temp___do_toplevel_227 Bool)) Bool (=>
                                      (or (= temp___is_init_225 true)
                                      (<= 1 2147483647)) (in_range2
                                      temp___expr_228)))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort tbS 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (tbS tbS) Bool)

(declare-fun dummy2 () tbS)

(declare-datatypes () ((tbS__ref (mk_tbS__ref (tbS__content tbS)))))
(define-fun tbS__ref___projection ((a tbS__ref)) tbS (tbS__content a))

(define-fun dynamic_invariant2 ((temp___expr_234 Int)
  (temp___is_init_231 Bool) (temp___skip_constant_232 Bool)
  (temp___do_toplevel_233 Bool)) Bool (=>
                                      (or (= temp___is_init_231 true)
                                      (<= 1 2147483647)) (in_range3
                                      temp___expr_234)))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-sort trS 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (trS trS) Bool)

(declare-fun dummy3 () trS)

(declare-datatypes () ((trS__ref (mk_trS__ref (trS__content trS)))))
(define-fun trS__ref___projection ((a trS__ref)) trS (trS__content a))

(define-fun dynamic_invariant3 ((temp___expr_240 Int)
  (temp___is_init_237 Bool) (temp___skip_constant_238 Bool)
  (temp___do_toplevel_239 Bool)) Bool (=>
                                      (or (= temp___is_init_237 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_240)))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun a () Int)

(declare-fun b () Int)

(declare-fun r () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun temp___302 () Int)

(declare-fun temp___301 () Int)

(declare-fun temp___300 () Int)

(declare-fun o2 () Int)

(declare-fun a1 () Int)

(declare-fun b1 () Int)

(declare-fun r1 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result1 () Int)

(declare-fun result () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result2 () Int)

(declare-fun result1 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result3 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result4 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result5 () Int)

(declare-fun result2 () Int)

(declare-fun a2 () Int)

(declare-fun result3 () Int)

(declare-fun b2 () Int)

(declare-fun a3 () Int)

(declare-fun b3 () Int)

(declare-fun r2 () Int)

(declare-fun result4 () Int)

(declare-fun r3 () Int)

(declare-fun a4 () Int)

(declare-fun b4 () Int)

(declare-fun a5 () Int)

(declare-fun b5 () Int)

(declare-fun a6 () Int)

(declare-fun b6 () Int)

(declare-fun r4 () Int)

(declare-fun a7 () Int)

(declare-fun b7 () Int)

(declare-fun r5 () Int)

(declare-fun a8 () Int)

(declare-fun b8 () int__ref)

(declare-fun r6 () int__ref)

(declare-fun a9 () Int)

(declare-fun b9 () Int)

(declare-fun r7 () Int)

(declare-fun result5 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result6 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result7 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result8 () Int)

(declare-fun a10 () int__ref)

(declare-fun b10 () int__ref)

(declare-fun r8 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result9 () int__ref)

(declare-fun a11 () Int)

(declare-fun b11 () Int)

(declare-fun r9 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result10 () Int)

(declare-fun a12 () int__ref)

(declare-fun b12 () int__ref)

(declare-fun r10 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result11 () int__ref)

(declare-fun a13 () Int)

(declare-fun b13 () Int)

(declare-fun r11 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result12 () Int)

(define-fun a14 () int__ref (mk_int__ref a8))

(define-fun b14 () int__ref (mk_int__ref b6))

(define-fun a15 () int__ref (mk_int__ref a6))

(define-fun b15 () int__ref (mk_int__ref b))

(define-fun a16 () int__ref (mk_int__ref a))

;; H
  (assert (in_range1 left))

;; H
  (assert (in_range1 right))

;; H
  (assert (and (<= 2 left) (<= 0 right)))

;; H
  (assert (are_coprime__function_guard (are_coprime a3 b3) a3 b3))

;; H
  (assert (are_coprime__function_guard (are_coprime left right) left 
  right))

;; H
  (assert (are_coprime__function_guard (are_coprime a3 b3) a3 b3))

;; H
  (assert (are_coprime__function_guard (are_coprime left right) left 
  right))

;; H
  (assert (=> (<= 1 2147483647) (in_range2 a)))

;; H
  (assert (=> (<= 1 2147483647) (in_range3 b)))

;; H
  (assert (=> (<= 0 2147483647) (in_range4 r)))

;; H
  (assert
  (or
  (and
  (and
  (and
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result9 
  (mk_int__ref
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result4))
  (and (= r8 (mk_int__ref r)) (and (= b10 b15) (= a10 a16))))
  (and
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result10 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result5)
  (and (= r9 r1) (and (= b11 b1) (= a11 a1)))))
  (ite (= left 0)
  (and
  (and
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result2 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result4)
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result5 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result2))
  (and
  (= result test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result)
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result2 
  right)))
  (and
  (and
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result3 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result4)
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result5 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result3))
  (and (= right 0)
  (and
  (= result1 test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result)
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result3 
  left))))))
  (and
  (and (not (= left 0))
  (and
  (and (not (= right 0))
  (and
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result3 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result)
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result3 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result1)))
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result2 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result3)))
  (and
  (and
  (and
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result9 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result7)
  (and (= r8 r6) (and (= b10 b8) (= a10 a14))))
  (and
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result10 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result8)
  (and (= r9 r7) (and (= b11 b9) (= a11 a9)))))
  (and
  (and (and (= o left) (in_range2 left))
  (and (= (mk_int__ref result2) a16) (= a2 o)))
  (and
  (and (and (= o1 right) (in_range3 right))
  (and (= (mk_int__ref result3) b15) (= b2 o1)))
  (and
  (and
  (and
  (and (= temp___302 b2)
  (and (= temp___301 a2)
  (and (= temp___300 r)
  (and
  (and (and (< 0 a3) (< 0 b3))
  (and (not (and (= a3 1) (= b3 1)))
  (= (= (are_coprime a3 b3) true) (= (are_coprime left right) true))))
  (and
  (and
  (and (=> (<= 0 2147483647) (in_range4 r2))
  (=> (<= 1 2147483647) (in_range2 a3)))
  (=> (<= 1 2147483647) (in_range3 b3)))
  (and
  (and (and (= o2 (mod2 a3 b3)) (in_range4 (mod2 a3 b3)))
  (and (= r2 result4) (= r3 o2)))
  (and (and (and (= b3 b4) (= a3 a4)) (and (= b5 b3) (= a5 a3))) (= r3 0))))))))
  (and
  (and (= r3 r4) (and (= b14 (mk_int__ref b4)) (= a15 (mk_int__ref a4))))
  (and (= r5 r3) (and (= b7 b5) (= a7 a5)))))
  (and (and (= r6 (mk_int__ref r4)) (and (= b8 b14) (= a14 a15)))
  (and (= r7 r5) (and (= b9 b7) (= a9 a7)))))
  (and (not (and (= a8 1) (< 0 (int__content b8))))
  (and
  (and
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result7 
  (mk_int__ref
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result6))
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result8 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result6))
  (and
  (= result5 (mk_int__ref
             test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result2))
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result6 
  (int__content b8))))))))))))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result11 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result9))

;; H
  (assert (= r10 r8))

;; H
  (assert (= b12 b10))

;; H
  (assert (= a12 a10))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result12 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result10))

;; H
  (assert (= r11 r9))

;; H
  (assert (= b13 b11))

;; H
  (assert (= a13 a11))

;; H
  (assert (are_coprime__function_guard (are_coprime left right) left 
  right))

;; H
  (assert
  (=> (= (are_coprime left right) true)
  (= (int__content
     test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result11) 1)))

;; H
  (assert (are_coprime__function_guard (are_coprime left right) left 
  right))

;; H
  (assert (not (= (are_coprime left right) true)))

(assert
;; WP_parameter_def
 ;; File "prime_and_coprime_numbers.ads", line 3, characters 0-0
  (not
  (< 1 (int__content
       test_prime_and_coprime_numbers__p__initialize_coprime_list__euclid__result11))))
(check-sat)
