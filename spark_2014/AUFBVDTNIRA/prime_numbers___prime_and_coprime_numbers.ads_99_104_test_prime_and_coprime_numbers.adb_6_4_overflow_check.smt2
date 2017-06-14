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

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

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
                                     (in_range1 temp___expr_15)))

(declare-sort value_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

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
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_178)))

(declare-sort tnumber_list_typeD1 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 100000)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

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

(define-fun bool_eq3 ((a (Array Int Bool)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
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
     (and (= (bool_eq3 a a_first j b b_first i) true)
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

(declare-sort nearest_mode 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (nearest_mode nearest_mode) Bool)

(declare-fun dummy3 () nearest_mode)

(declare-datatypes ()
((nearest_mode__ref
 (mk_nearest_mode__ref (nearest_mode__content nearest_mode)))))
(define-fun nearest_mode__ref___projection ((a nearest_mode__ref)) nearest_mode 
  (nearest_mode__content a))

(define-fun dynamic_invariant2 ((temp___expr_193 Int)
  (temp___is_init_190 Bool) (temp___skip_constant_191 Bool)
  (temp___do_toplevel_192 Bool)) Bool (=>
                                      (or (= temp___is_init_190 true)
                                      (<= 0 2)) (in_range4 temp___expr_193)))

(declare-fun has_true ((Array Int Bool) Int Int) Bool)

(declare-fun has_true__function_guard (Bool (Array Int Bool) Int Int) Bool)

;; has_true__post_axiom
  (assert true)

;; has_true__def_axiom
  (assert
  (forall ((number_list (Array Int Bool)))
  (forall ((low Int) (high Int))
  (! (=> (has_true__function_guard (has_true number_list low high)
     number_list low high)
     (= (= (has_true number_list low high) true)
     (exists ((v Int))
     (and (and (<= low v) (<= v high)) (= (select number_list v) true))))) :pattern (
  (has_true number_list low high)) ))))

(declare-fun number_list () (Array Int Bool))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun mode () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun value () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun right () Int)

(declare-fun left () Int)

(declare-fun right_is_out () Bool)

(declare-fun left_is_out () Bool)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun temp___267 () Int)

(declare-fun temp___266 () Bool)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun temp___269 () Int)

(declare-fun temp___268 () Bool)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () Int)

(declare-fun o12 () Int)

(declare-fun o13 () Int)

(declare-fun o14 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () Int)

(declare-fun o17 () Int)

(declare-fun o18 () Int)

(declare-fun o19 () Int)

(declare-fun o20 () Int)

(declare-fun o21 () Int)

(declare-fun o22 () Int)

(declare-fun o23 () Int)

(declare-fun o24 () Int)

(declare-fun o25 () Int)

(declare-fun o26 () Int)

(declare-fun o27 () Int)

(declare-fun o28 () Int)

(declare-fun right_is_out1 () Bool)

(declare-fun left_is_out1 () Bool)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result1 () Int)

(declare-fun result () Int)

(declare-fun right1 () Int)

(declare-fun result1 () Int)

(declare-fun left1 () Int)

(declare-fun result2 () Bool)

(declare-fun result3 () Int)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result2 () Int)

(declare-fun result4 () Int)

(declare-fun right2 () Int)

(declare-fun result5 () Bool)

(declare-fun right_is_out2 () Bool)

(declare-fun result6 () Bool)

(declare-fun right3 () Int)

(declare-fun right_is_out3 () Bool)

(declare-fun result7 () Int)

(declare-fun right4 () Int)

(declare-fun result8 () Bool)

(declare-fun right_is_out4 () Bool)

(declare-fun result9 () Bool)

(declare-fun right_is_out5 () Bool)

(declare-fun right_is_out6 () Bool)

(declare-fun right5 () Int)

(declare-fun right_is_out7 () Bool)

(declare-fun right6 () Int)

(declare-fun right_is_out8 () Bool)

(declare-fun right7 () Int)

(declare-fun right_is_out9 () Bool)

(declare-fun right8 () Int)

(declare-fun right_is_out10 () Bool)

(declare-fun right9 () Int)

(declare-fun right_is_out11 () Bool)

(declare-fun right10 () Int)

(declare-fun right_is_out12 () Bool)

(declare-fun result10 () bool__ref)

(declare-fun right_is_out13 () Bool)

(declare-fun right11 () int__ref)

(declare-fun right_is_out14 () bool__ref)

(declare-fun right12 () Int)

(declare-fun right_is_out15 () Bool)

(declare-fun result11 () int__ref)

(declare-fun left2 () Int)

(declare-fun result12 () bool__ref)

(declare-fun left_is_out2 () Bool)

(declare-fun result13 () Bool)

(declare-fun left3 () Int)

(declare-fun left_is_out3 () Bool)

(declare-fun result14 () int__ref)

(declare-fun left4 () Int)

(declare-fun result15 () bool__ref)

(declare-fun left_is_out4 () Bool)

(declare-fun result16 () Bool)

(declare-fun left_is_out5 () bool__ref)

(declare-fun left_is_out6 () Bool)

(declare-fun left5 () int__ref)

(declare-fun left_is_out7 () bool__ref)

(declare-fun left6 () Int)

(declare-fun left_is_out8 () Bool)

(declare-fun left7 () int__ref)

(declare-fun left_is_out9 () bool__ref)

(declare-fun left8 () Int)

(declare-fun left_is_out10 () Bool)

(declare-fun left9 () int__ref)

(declare-fun left_is_out11 () bool__ref)

(declare-fun left10 () Int)

(declare-fun left_is_out12 () Bool)

(declare-fun result17 () bool__ref)

(declare-fun left_is_out13 () Bool)

(declare-fun left11 () int__ref)

(declare-fun left_is_out14 () bool__ref)

(declare-fun left12 () Int)

(declare-fun left_is_out15 () Bool)

(declare-fun result18 () Bool)

(declare-fun result19 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result3 () Int)

(declare-fun result20 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result4 () Int)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result5 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result6 () Int)

(declare-fun result21 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result7 () Int)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result8 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result9 () Int)

(declare-fun result22 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result10 () Int)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result11 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result12 () Int)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result13 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result14 () Int)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result15 () int__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result16 () Int)

(declare-fun right13 () int__ref)

(declare-fun left13 () int__ref)

(declare-fun right_is_out16 () bool__ref)

(declare-fun left_is_out16 () bool__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result17 () int__ref)

(declare-fun right14 () Int)

(declare-fun left14 () Int)

(declare-fun right_is_out17 () Bool)

(declare-fun left_is_out17 () Bool)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result18 () Int)

(declare-fun right15 () int__ref)

(declare-fun left15 () int__ref)

(declare-fun right_is_out18 () bool__ref)

(declare-fun left_is_out18 () bool__ref)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result19 () int__ref)

(declare-fun right16 () Int)

(declare-fun left16 () Int)

(declare-fun right_is_out19 () Bool)

(declare-fun left_is_out19 () Bool)

(declare-fun test_prime_and_coprime_numbers__p__nearest_number__result20 () Int)

(define-fun right_is_out20 () bool__ref (mk_bool__ref right_is_out11))

(define-fun right17 () int__ref (mk_int__ref right9))

(define-fun right_is_out21 () bool__ref (mk_bool__ref right_is_out9))

(define-fun right18 () int__ref (mk_int__ref right7))

(define-fun right_is_out22 () bool__ref (mk_bool__ref right_is_out7))

(define-fun left_is_out20 () bool__ref (mk_bool__ref left_is_out))

(define-fun right_is_out23 () bool__ref (mk_bool__ref right_is_out))

;; H
  (assert (in_range4 mode))

;; H
  (assert (in_range2 value))

;; H
  (assert (has_true__function_guard (has_true number_list value 100000)
  number_list value 100000))

;; H
  (assert (has_true__function_guard (has_true number_list 0 value)
  number_list 0 value))

;; H
  (assert (has_true__function_guard (has_true number_list 0 100000)
  number_list 0 100000))

;; H
  (assert
  (and (and (<= 0 value) (<= value 100000))
  (ite (= mode 0) (= (has_true number_list value 100000) true)
  (ite (= mode 1) (= (has_true number_list 0 value) true)
  (= (has_true number_list 0 100000) true)))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref right)))

;; H
  (assert (= right1 0))

;; H
  (assert (in_range1 right1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref left)))

;; H
  (assert (= left1 0))

;; H
  (assert (in_range1 left1))

;; H
  (assert
  (or
  (and
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result17 (mk_int__ref
                                                                 test_prime_and_coprime_numbers__p__nearest_number__result2))
  (and (= left_is_out16 left_is_out20)
  (and (= right_is_out16 right_is_out23)
  (and (= left13 (mk_int__ref left1)) (= right13 (mk_int__ref right1))))))
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result18 test_prime_and_coprime_numbers__p__nearest_number__result2)
  (and (= left_is_out17 left_is_out1)
  (and (= right_is_out17 right_is_out1)
  (and (= left14 left1) (= right14 right1))))))
  (and
  (and (and (and (<= 0 value) (<= value 100000)) (= o value))
  (= result2 (select number_list o)))
  (and (= result2 true)
  (and
  (= (mk_int__ref result3) (mk_int__ref
                           test_prime_and_coprime_numbers__p__nearest_number__result))
  (= test_prime_and_coprime_numbers__p__nearest_number__result2 value)))))
  (and
  (and
  (and (and (and (<= 0 value) (<= value 100000)) (= o value))
  (= result2 (select number_list o)))
  (and (not (= result2 true))
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result2 test_prime_and_coprime_numbers__p__nearest_number__result)
  (= test_prime_and_coprime_numbers__p__nearest_number__result2 test_prime_and_coprime_numbers__p__nearest_number__result1))))
  (and
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result17 test_prime_and_coprime_numbers__p__nearest_number__result15)
  (and (= left_is_out16 left_is_out14)
  (and (= right_is_out16 right_is_out14)
  (and (= left13 left11) (= right13 right11)))))
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result18 test_prime_and_coprime_numbers__p__nearest_number__result16)
  (and (= left_is_out17 left_is_out15)
  (and (= right_is_out17 right_is_out15)
  (and (= left14 left12) (= right14 right12))))))
  (and
  (ite (or (= mode 0) (= mode 2))
  (and
  (and
  (and (and (and (= o1 value) (not (= value 2147483647))) (= o2 (+ o1 1)))
  (and (= right1 result4) (= right2 o2)))
  (and
  (and
  (and (= temp___267 right2)
  (and (= temp___266 right_is_out)
  (and
  (and (= (mk_bool__ref result5) right_is_out23)
  (= right_is_out2 (ite (< 100000 right2) true false)))
  (or
  (and
  (and (and (= right_is_out2 right_is_out7) (= right2 right5))
  (and (= right_is_out8 right_is_out2) (= right6 right2)))
  (and
  (ite (= right_is_out2 true) (= result6 true)
  (and (and (and (<= 0 right2) (<= right2 100000)) (= o3 right2))
  (= result6 (select number_list o3)))) (= result6 true)))
  (and
  (and
  (ite (= right_is_out2 true) (= result6 true)
  (and (and (and (<= 0 right2) (<= right2 100000)) (= o3 right2))
  (= result6 (select number_list o3)))) (not (= result6 true)))
  (and
  (and
  (and (= right_is_out22 (mk_bool__ref right_is_out5)) (= right4 right5))
  (and (= right_is_out8 right_is_out6) (= right6 right4)))
  (and
  (and (and (<= (+ value 1) right3) (<= right3 100000))
  (forall ((v Int))
  (=> (and (<= value v) (<= v right3)) (not (= (select number_list v) true)))))
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 right3))
  (and
  (and (and (and (= o4 right3) (not (= right3 2147483647))) (= o5 (+ o4 1)))
  (and (= right3 result7) (= right4 o5)))
  (and (and (= right_is_out4 right_is_out5) (= right_is_out6 right_is_out4))
  (and
  (and (= right_is_out3 result8)
  (= right_is_out4 (ite (< 100000 right4) true false)))
  (and
  (ite (= right_is_out4 true) (= result9 true)
  (and (and (and (<= 0 right4) (<= right4 100000)) (= o6 right4))
  (= result9 (select number_list o6)))) (= result9 true)))))))))))))
  (and
  (and (= right_is_out21 right_is_out22) (= right18 (mk_int__ref right5)))
  (and (= right_is_out10 right_is_out8) (= right8 right6))))
  (and (and (= right_is_out20 right_is_out21) (= right17 right18))
  (and (= right_is_out12 right_is_out10) (= right10 right8)))))
  (and (and (= right_is_out14 right_is_out20) (= right11 right17))
  (and (= right_is_out15 right_is_out12) (= right12 right10))))
  (and (and (= result10 right_is_out23) (= right_is_out13 (of_int 1)))
  (and
  (and (= right_is_out14 (mk_bool__ref right_is_out13))
  (= right11 (mk_int__ref right1)))
  (and (= right_is_out15 right_is_out13) (= right12 right1)))))
  (and
  (ite (or (= mode 1) (= mode 2))
  (and
  (and
  (and
  (and (and (= o7 value) (not (= value (- 2147483648)))) (= o8 (- o7 1)))
  (and (= result11 (mk_int__ref left1)) (= left2 o8)))
  (and
  (and
  (and (= temp___269 left2)
  (and (= temp___268 left_is_out)
  (and
  (and (= result12 left_is_out20)
  (= left_is_out2 (ite (< left2 0) true false)))
  (or
  (and
  (and
  (and (= left_is_out7 (mk_bool__ref left_is_out2))
  (= left5 (mk_int__ref left2)))
  (and (= left_is_out8 left_is_out2) (= left6 left2)))
  (and
  (ite (= left_is_out2 true) (= result13 true)
  (and (and (and (<= 0 left2) (<= left2 100000)) (= o9 left2))
  (= result13 (select number_list o9)))) (= result13 true)))
  (and
  (and
  (ite (= left_is_out2 true) (= result13 true)
  (and (and (and (<= 0 left2) (<= left2 100000)) (= o9 left2))
  (= result13 (select number_list o9)))) (not (= result13 true)))
  (and
  (and (and (= left_is_out7 left_is_out5) (= left5 (mk_int__ref left4)))
  (and (= left_is_out8 left_is_out6) (= left6 left4)))
  (and
  (and (and (<= 0 left3) (<= left3 (- value 1)))
  (forall ((v Int))
  (=> (and (<= left3 v) (<= v value)) (not (= (select number_list v) true)))))
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 left3))
  (and
  (and
  (and (and (= o10 left3) (not (= left3 (- 2147483648)))) (= o11 (- o10 1)))
  (and (= result14 (mk_int__ref left3)) (= left4 o11)))
  (and
  (and (= left_is_out5 (mk_bool__ref left_is_out4))
  (= left_is_out6 left_is_out4))
  (and
  (and (= result15 (mk_bool__ref left_is_out3))
  (= left_is_out4 (ite (< left4 0) true false)))
  (and
  (ite (= left_is_out4 true) (= result16 true)
  (and (and (and (<= 0 left4) (<= left4 100000)) (= o12 left4))
  (= result16 (select number_list o12)))) (= result16 true)))))))))))))
  (and (and (= left_is_out9 left_is_out7) (= left7 left5))
  (and (= left_is_out10 left_is_out8) (= left8 left6))))
  (and (and (= left_is_out11 left_is_out9) (= left9 left7))
  (and (= left_is_out12 left_is_out10) (= left10 left8)))))
  (and (and (= left_is_out14 left_is_out11) (= left11 left9))
  (and (= left_is_out15 left_is_out12) (= left12 left10))))
  (and (and (= result17 left_is_out20) (= left_is_out13 (of_int 1)))
  (and
  (and (= left_is_out14 (mk_bool__ref left_is_out13))
  (= left11 (mk_int__ref left1)))
  (and (= left_is_out15 left_is_out13) (= left12 left1)))))
  (or
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result15 test_prime_and_coprime_numbers__p__nearest_number__result13)
  (= test_prime_and_coprime_numbers__p__nearest_number__result16 test_prime_and_coprime_numbers__p__nearest_number__result14))
  (ite (not (= (bool__content right_is_out14) true))
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result13 test_prime_and_coprime_numbers__p__nearest_number__result8)
  (= test_prime_and_coprime_numbers__p__nearest_number__result14 test_prime_and_coprime_numbers__p__nearest_number__result9))
  (ite (not (= (bool__content left_is_out14) true))
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result8 test_prime_and_coprime_numbers__p__nearest_number__result5)
  (= test_prime_and_coprime_numbers__p__nearest_number__result9 test_prime_and_coprime_numbers__p__nearest_number__result6))
  (and
  (and
  (and
  (and
  (and (= o15 (- (int__content right11) value)) (in_range1
  (- (int__content right11) value))) (= o16 (abs o15)))
  (and (= o17 o16) (in_range1 o16)))
  (and
  (and
  (and
  (and (= o13 (- (int__content left11) value)) (in_range1
  (- (int__content left11) value))) (= o14 (abs o13)))
  (and (= o18 o14) (in_range1 o14)))
  (= result18 (ite (<= o18 o17) true false))))
  (ite (= result18 true)
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result5 (mk_int__ref
                                                                test_prime_and_coprime_numbers__p__nearest_number__result3))
  (= test_prime_and_coprime_numbers__p__nearest_number__result6 test_prime_and_coprime_numbers__p__nearest_number__result3))
  (and (and (= o19 (int__content left11)) (in_range2 (int__content left11)))
  (and
  (= result19 (mk_int__ref
              test_prime_and_coprime_numbers__p__nearest_number__result2))
  (= test_prime_and_coprime_numbers__p__nearest_number__result3 o19))))
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result5 (mk_int__ref
                                                                test_prime_and_coprime_numbers__p__nearest_number__result4))
  (= test_prime_and_coprime_numbers__p__nearest_number__result6 test_prime_and_coprime_numbers__p__nearest_number__result4))
  (and
  (and (= o20 (int__content right11)) (in_range2 (int__content right11)))
  (and
  (= result20 (mk_int__ref
              test_prime_and_coprime_numbers__p__nearest_number__result2))
  (= test_prime_and_coprime_numbers__p__nearest_number__result4 o20)))))))
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result8 (mk_int__ref
                                                                test_prime_and_coprime_numbers__p__nearest_number__result7))
  (= test_prime_and_coprime_numbers__p__nearest_number__result9 test_prime_and_coprime_numbers__p__nearest_number__result7))
  (and
  (and (= o21 (int__content right11)) (in_range2 (int__content right11)))
  (and
  (= result21 (mk_int__ref
              test_prime_and_coprime_numbers__p__nearest_number__result2))
  (= test_prime_and_coprime_numbers__p__nearest_number__result7 o21))))))
  (and
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result13 (mk_int__ref
                                                                 test_prime_and_coprime_numbers__p__nearest_number__result10))
  (= test_prime_and_coprime_numbers__p__nearest_number__result14 test_prime_and_coprime_numbers__p__nearest_number__result10))
  (and (not (= (bool__content left_is_out14) true))
  (and (and (= o22 (int__content left11)) (in_range2 (int__content left11)))
  (and
  (= result22 (mk_int__ref
              test_prime_and_coprime_numbers__p__nearest_number__result2))
  (= test_prime_and_coprime_numbers__p__nearest_number__result10 o22)))))))
  (and (and (= (bool__content right_is_out14) true) false)
  (and
  (= test_prime_and_coprime_numbers__p__nearest_number__result15 test_prime_and_coprime_numbers__p__nearest_number__result11)
  (= test_prime_and_coprime_numbers__p__nearest_number__result16 test_prime_and_coprime_numbers__p__nearest_number__result12))))))))))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__nearest_number__result19 test_prime_and_coprime_numbers__p__nearest_number__result17))

;; H
  (assert (= left_is_out18 left_is_out16))

;; H
  (assert (= right_is_out18 right_is_out16))

;; H
  (assert (= left15 left13))

;; H
  (assert (= right15 right13))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__nearest_number__result20 test_prime_and_coprime_numbers__p__nearest_number__result18))

;; H
  (assert (= left_is_out19 left_is_out17))

;; H
  (assert (= right_is_out19 right_is_out17))

;; H
  (assert (= left16 left14))

;; H
  (assert (= right16 right14))

;; H
  (assert
  (=> (= (= (to_int1 (select number_list value)) (to_int1 (of_int 1))) true)
  (= (int__content
     test_prime_and_coprime_numbers__p__nearest_number__result19) value)))

;; H
  (assert
  (=>
  (= (ite (= (= (to_int1 (select number_list value)) (to_int1 (of_int 0))) true) (= 
     mode 0) false) true)
  (and
  (< value (int__content
           test_prime_and_coprime_numbers__p__nearest_number__result19))
  (forall ((v Int))
  (=>
  (and (<= value v)
  (<= v (- (int__content
           test_prime_and_coprime_numbers__p__nearest_number__result19) 1)))
  (not (= (select number_list v) true)))))))

;; H
  (assert
  (=>
  (= (ite (= (= (to_int1 (select number_list value)) (to_int1 (of_int 0))) true) (= 
     mode 1) false) true)
  (and
  (< (int__content
     test_prime_and_coprime_numbers__p__nearest_number__result19) value)
  (forall ((v Int))
  (=>
  (and
  (<= (+ (int__content
         test_prime_and_coprime_numbers__p__nearest_number__result19) 1) v)
  (<= v value)) (not (= (select number_list v) true)))))))

;; H
  (assert
  (= (ite (= (= (to_int1 (select number_list value)) (to_int1 (of_int 0))) true) (= 
     mode 2) false) true))

;; H
  (assert
  (and
  (= o23 (- value (int__content
                  test_prime_and_coprime_numbers__p__nearest_number__result19)))
  (in_range1
  (- value (int__content
           test_prime_and_coprime_numbers__p__nearest_number__result19)))))

;; H
  (assert (= o24 (abs o23)))

;; H
  (assert (and (= o25 o24) (in_range1 o24)))

;; H
  (assert (= o26 (- value o25)))

;; H
  (assert (and (= o27 o26) (in_range1 o26)))

;; H
  (assert (= o28 (+ o27 1)))

(assert
;; WP_parameter_def
 ;; File "prime_and_coprime_numbers.ads", line 3, characters 0-0
  (not (in_range1 o28)))
(check-sat)
