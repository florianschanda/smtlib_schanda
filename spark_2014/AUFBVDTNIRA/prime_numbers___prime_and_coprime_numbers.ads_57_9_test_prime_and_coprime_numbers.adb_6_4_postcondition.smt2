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

(declare-sort tnumber_list_typeD1 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 100000)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (tnumber_list_typeD1 tnumber_list_typeD1) Bool)

(declare-fun dummy1 () tnumber_list_typeD1)

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

(define-fun bool_eq2 ((a (Array Int Bool)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_int1 (select a (+ i 1))) (to_int1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_int1 (select b (+ i 1))) (to_int1 (select a (+ j 1))))))))))) :pattern (
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

(declare-fun are_coprime (Int Int) Bool)

(declare-fun are_coprime__function_guard (Bool Int Int) Bool)

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

(declare-fun value () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun euclid (Int Int) Int)

(declare-fun euclid__function_guard (Int Int Int) Bool)

(declare-sort t52b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 100000)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t52b t52b) Bool)

(declare-fun dummy2 () t52b)

(declare-datatypes () ((t52b__ref (mk_t52b__ref (t52b__content t52b)))))
(define-fun t52b__ref___projection ((a t52b__ref)) t52b (t52b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun result__ () (Array Int Bool))

(declare-fun index () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__result () (Array Int Bool))

(declare-fun temp___254 () Int)

(declare-fun temp___252 () (Array Int Bool))

(declare-fun o () Int)

(declare-fun o1 () Bool)

(declare-fun o2 () (Array Int Bool))

(declare-fun result__1 () (Array Int Bool))

(declare-fun result () Int)

(declare-fun index1 () Int)

(declare-fun result1 () (Array Int Bool))

(declare-fun result__2 () (Array Int Bool))

(declare-fun result__3 () (Array Int Bool))

(declare-fun index2 () Int)

(declare-fun result__4 () (Array Int Bool))

(declare-fun index3 () Int)

(declare-fun result__5 () (Array Int Bool))

(declare-fun index4 () Int)

(declare-fun result__6 () (Array Int Bool))

(declare-fun index5 () Int)

(declare-fun result__7 () (Array Int Bool))

(declare-fun index6 () Int)

(declare-fun result2 () (Array Int Bool))

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__result1 () (Array Int Bool))

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__result2 () (Array Int Bool))

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__result3 () (Array Int Bool))

(declare-fun result__8 () (Array Int Bool))

(declare-fun index7 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__result4 () (Array Int Bool))

(declare-fun result__9 () (Array Int Bool))

(declare-fun index8 () Int)

(declare-fun test_prime_and_coprime_numbers__p__initialize_coprime_list__result5 () (Array Int Bool))

(define-fun result__10 () map__ref (mk_map__ref result__6))

(define-fun result__11 () map__ref (mk_map__ref result__))

(declare-fun result3 () (Array Int Bool))

;; H
  (assert (are_coprime__function_guard (are_coprime value index1) value
  index1))

;; H
  (assert
  (forall ((v Int)) (are_coprime__function_guard (are_coprime value v) 
  value v)))

;; H
  (assert (are_coprime__function_guard (are_coprime value index1) value
  index1))

;; H
  (assert
  (forall ((v Int)) (are_coprime__function_guard (are_coprime value v) 
  value v)))

;; H
  (assert (in_range1 value))

;; H
  (assert (<= 2 value))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref index)))

;; H
  (assert (= index1 0))

;; H
  (assert (=> (and (<= 0 index1) (<= index1 100000)) (= temp___254 index1)))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000)) (= temp___252 result__)))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000))
  (and
  (and (= o (euclid value index1)) (euclid__function_guard o value index1))
  (and (in_range1 o)
  (ite (= (are_coprime value index1) true) (= o 1) (< 1 o))))))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000)) (= o1 (ite (= o 1) true false))))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000))
  (= o2 (store result__ index1 o1))))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000))
  (= (mk_map__ref result1) result__11)))

;; H
  (assert (=> (and (<= 0 index1) (<= index1 100000)) (= result__2 o2)))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000))
  (forall ((v Int))
  (=> (and (<= 0 v) (<= v index2))
  (= (= (select result__3 v) true) (= (are_coprime value v) true))))))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000))
  (and
  (and
  (forall ((temp___253 Int))
  (=> (and (<= 0 temp___253) (<= temp___253 100000))
  (=> (< index2 temp___253)
  (= (select result__3 temp___253) (select temp___252 temp___253)))))
  (=> (<= 0 100000) (in_range3 index2)))
  (and (<= 0 index2) (<= index2 100000)))))

;; H
  (assert (=> (and (<= 0 index1) (<= index1 100000)) (= index2 100000)))

;; H
  (assert (=> (and (<= 0 index1) (<= index1 100000)) (= index2 index3)))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000)) (= result__3 result__4)))

;; H
  (assert (=> (and (<= 0 index1) (<= index1 100000)) (= index4 index2)))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000)) (= result__5 result__3)))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000))
  (= (mk_int__ref index5) (mk_int__ref index3))))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000))
  (= result__10 (mk_map__ref result__4))))

;; H
  (assert (=> (and (<= 0 index1) (<= index1 100000)) (= index6 index4)))

;; H
  (assert
  (=> (and (<= 0 index1) (<= index1 100000)) (= result__7 result__5)))

;; H
  (assert
  (=> (not (and (<= 0 index1) (<= index1 100000))) (= index1 index5)))

;; H
  (assert
  (=> (not (and (<= 0 index1) (<= index1 100000))) (= result__10 result__11)))

;; H
  (assert
  (=> (not (and (<= 0 index1) (<= index1 100000))) (= index6 index1)))

;; H
  (assert
  (=> (not (and (<= 0 index1) (<= index1 100000))) (= result__7 result__1)))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__result1 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__result2))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__result3 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__result1))

;; H
  (assert
  (= result2 test_prime_and_coprime_numbers__p__initialize_coprime_list__result))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__result1 
  result__6))

;; H
  (assert
  (= (mk_map__ref
     test_prime_and_coprime_numbers__p__initialize_coprime_list__result4) 
  (mk_map__ref
  test_prime_and_coprime_numbers__p__initialize_coprime_list__result2)))

;; H
  (assert (= index7 index5))

;; H
  (assert (= result__8 result__6))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__initialize_coprime_list__result5 
  test_prime_and_coprime_numbers__p__initialize_coprime_list__result3))

;; H
  (assert (= index8 index6))

;; H
  (assert (= result__9 result__7))

;; H
  (assert
  (= result3 test_prime_and_coprime_numbers__p__initialize_coprime_list__result4))

(declare-fun v () Int)

;; H
  (assert (<= 0 v))

;; H
  (assert (<= v 100000))

;; H
  (assert
  (= (select test_prime_and_coprime_numbers__p__initialize_coprime_list__result4 
  v) true))

;; H
  (assert (are_coprime__function_guard (are_coprime value v) value v))

(assert
;; WP_parameter_def
 ;; File "prime_and_coprime_numbers.ads", line 12, characters 0-0
  (not (= (are_coprime value v) true)))
(check-sat)
