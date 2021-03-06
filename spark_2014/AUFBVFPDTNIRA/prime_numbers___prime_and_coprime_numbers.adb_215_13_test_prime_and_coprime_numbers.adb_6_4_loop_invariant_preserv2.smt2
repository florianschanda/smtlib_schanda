;; produced by cvc4_16.drv ;;
(set-info :smt-lib-version 2.5)
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
(define-fun __cdiv ((x Int) (y Int)) Int (ite (>= x 0) (div x y) (- (div (- x) y))))
(define-fun __cmod ((x Int) (y Int)) Int (ite (>= x 0) (mod x y) (- (mod (- x) y))))
;;; SMT-LIB2: real arithmetic
(define-fun fp.isFinite32 ((x Float32)) Bool (not (or (fp.isInfinite x) (fp.isNaN x))))
(define-fun fp.isIntegral32 ((x Float32)) Bool (or (fp.isZero x) (and (fp.isNormal x) (= x (fp.roundToIntegral RNE x)))))
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-const us_null_ext__ us_private)

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

(define-fun mod1 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

(declare-fun pow2 (Int) Int)

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                (fp.isPositive x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                 (fp.isNegative x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero x)
                                            (fp.isPositive x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero x)
                                             (fp.isNegative x)))

(declare-const max_int Int)

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isPositive y))
                    (and (fp.isNegative x) (fp.isNegative y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isNegative y))
                    (and (fp.isNegative x) (fp.isPositive y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive z))
                    (=> (diff_sign x y) (fp.isNegative z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt1 (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive x) (< 0.0 r))
                 (and (fp.isNegative x) (< r 0.0))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(declare-fun integerqtint (integer) Int)

;; integer'axiom
  (assert
  (forall ((i integer))
  (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-const dummy integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool)
  (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool)
  (temp___do_typ_inv_17 Bool)) Bool (=>
                                    (or (= temp___is_init_14 true)
                                    (<= (- 2147483648) 2147483647))
                                    (in_range1 temp___expr_18)))

(declare-fun is_prime (Int) Bool)

(declare-fun is_prime__function_guard (Bool Int) Bool)

(declare-sort value_type 0)

(declare-fun value_typeqtint (value_type) Int)

;; value_type'axiom
  (assert
  (forall ((i value_type))
  (and (<= 0 (value_typeqtint i)) (<= (value_typeqtint i) 2147483647))))

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (value_type value_type) Bool)

(declare-const dummy1 value_type)

(declare-datatypes ()
((value_type__ref (mk_value_type__ref (value_type__content value_type)))))
(define-fun value_type__ref___projection ((a value_type__ref)) value_type
  (value_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_208 Int)
  (temp___is_init_204 Bool) (temp___skip_constant_205 Bool)
  (temp___do_toplevel_206 Bool)
  (temp___do_typ_inv_207 Bool)) Bool (=>
                                     (or (= temp___is_init_204 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_208)))

;; is_prime__post_axiom
  (assert true)

;; is_prime__def_axiom
  (assert
  (forall ((value Int))
  (! (= (= (is_prime value) true)
     (and (<= 2 value)
     (forall ((v Int))
     (=> (and (<= 2 v) (<= v (- value 1))) (not (= (mod1 value v) 0)))))) :pattern (
  (is_prime value)) )))

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

(define-fun bool_eq ((a (Array Int Bool)) (a__first Int) (a__last Int)
  (b (Array Int Bool)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_154 Int))
                           (=>
                           (and (<= a__first temp___idx_154)
                           (<= temp___idx_154 a__last))
                           (= (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))))))
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
  (forall ((temp___idx_154 Int))
  (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last))
  (= (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))))))))))

(declare-const attr__ATTRIBUTE_ADDRESS Int)

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

(declare-sort tnumber_list_typeD1 0)

(declare-fun tnumber_list_typeD1qtint (tnumber_list_typeD1) Int)

;; tnumber_list_typeD1'axiom
  (assert
  (forall ((i tnumber_list_typeD1))
  (and (<= 0 (tnumber_list_typeD1qtint i))
  (<= (tnumber_list_typeD1qtint i) 100000))))

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 100000)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (tnumber_list_typeD1 tnumber_list_typeD1) Bool)

(declare-const dummy2 tnumber_list_typeD1)

(declare-datatypes ()
((tnumber_list_typeD1__ref
 (mk_tnumber_list_typeD1__ref
 (tnumber_list_typeD1__content tnumber_list_typeD1)))))
(define-fun tnumber_list_typeD1__ref___projection ((a tnumber_list_typeD1__ref)) tnumber_list_typeD1
  (tnumber_list_typeD1__content a))

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(declare-const r87b Int)

(declare-const attr__ATTRIBUTE_ADDRESS3 Int)

(define-fun to_rep ((x integer)) Int (integerqtint x))

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

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-const dummy3 integer)

(declare-datatypes () ((t88b__ref (mk_t88b__ref (t88b__content integer)))))
(define-fun t88b__ref___projection ((a t88b__ref)) integer (t88b__content a))

(declare-const attr__ATTRIBUTE_ADDRESS4 Int)

(declare-fun temp_____aggregate_def_285 (Bool) (Array Int Bool))

;; def_axiom
  (assert
  (forall ((temp___287 Bool))
  (forall ((temp___288 Int))
  (= (select (temp_____aggregate_def_285 temp___287) temp___288) temp___287))))

(declare-const is_prime1 (Array Int Bool))

(declare-const index_1 Int)

(declare-const index_3 Int)

(declare-const index_2 Int)

(declare-const test_prime_and_coprime_numbers__p__eratosthenes__L_5__R87b__assume Int)

(declare-const o Int)

(declare-const o1 Int)

(declare-const temp___292 (Array Int Bool))

(declare-const temp___291 Int)

(declare-const o2 Int)

(declare-const o3 (Array Int Bool))

(declare-const o4 Int)

(declare-const result (Array Int Bool))

(declare-const is_prime2 (Array Int Bool))

(declare-const result1 (Array Int Bool))

(declare-const is_prime3 (Array Int Bool))

(declare-const result2 (Array Int Bool))

(declare-const is_prime4 (Array Int Bool))

(declare-const result3 Int)

(declare-const index_21 Int)

(declare-const is_prime5 (Array Int Bool))

(declare-const index_11 Int)

(declare-const index_31 Int)

(declare-const index_22 Int)

(declare-const result4 Bool)

(declare-const result5 Int)

(declare-const index_12 Int)

(declare-const result6 Int)

(declare-const index_32 Int)

(declare-const result7 (Array Int Bool))

(declare-const is_prime6 (Array Int Bool))

(declare-const is_prime7 (Array Int Bool))

(declare-const index_33 Int)

(declare-const result8 Int)

(declare-const index_34 Int)

(declare-const is_prime8 (Array Int Bool))

(declare-const index_35 Int)

(declare-const is_prime9 (Array Int Bool))

(declare-const index_36 Int)

(declare-const is_prime10 (Array Int Bool))

(declare-const index_37 Int)

(declare-const is_prime11 (Array Int Bool))

(declare-const index_38 Int)

(declare-const is_prime12 (Array Int Bool))

(declare-const index_13 Int)

(declare-const index_39 int__ref)

(declare-const is_prime13 (Array Int Bool))

(declare-const index_14 Int)

(declare-const index_310 Int)

(declare-const result9 int__ref)

(declare-const index_23 Int)

(declare-const is_prime14 map__ref)

(declare-const index_15 int__ref)

(declare-const index_311 int__ref)

(declare-const index_24 int__ref)

(declare-const is_prime15 (Array Int Bool))

(declare-const index_16 Int)

(declare-const index_312 Int)

(declare-const index_25 Int)

(define-fun is_prime16 () map__ref (mk_map__ref is_prime12))

(define-fun index_313 () int__ref (mk_int__ref index_37))

(define-fun is_prime17 () map__ref (mk_map__ref is_prime10))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 index_1)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 index_3)))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref is_prime1)))

;; H
  (assert (= is_prime2 (temp_____aggregate_def_285 (distinct 1 0))))

;; H
  (assert (= is_prime2 result1))

;; H
  (assert (= is_prime3 (store is_prime2 0 (distinct 0 0))))

;; H
  (assert (= is_prime3 result2))

;; H
  (assert (= is_prime4 (store is_prime3 1 (distinct 0 0))))

;; H
  (assert
  (and
  (= test_prime_and_coprime_numbers__p__eratosthenes__L_5__R87b__assume (to_int (fp.to_real (fp.roundToIntegral RNA (fp.sqrt RNE (fp #b0 #b10001111 #b10000110101000000000000))))))
  (in_range2
  (to_int (fp.to_real (fp.roundToIntegral RNA (fp.sqrt RNE (fp #b0 #b10001111 #b10000110101000000000000))))))))

;; H
  (assert
  (= test_prime_and_coprime_numbers__p__eratosthenes__L_5__R87b__assume
  r87b))

;; H
  (assert (in_range2 r87b))

;; H
  (assert (= (mk_int__ref result3) (mk_int__ref index_2)))

;; H
  (assert (= index_21 2))

;; H
  (assert (<= 2 index_21))

;; H
  (assert (<= index_21 r87b))

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
  (forall ((div1 Int))
  (=> (and (<= 2 div1) (<= div1 (- index_22 1))) (not (= (mod1 v div1) 0))))))))

;; H
  (assert
  (and
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 index_31))
  (=> (<= 2 r87b) (dynamic_property 2 r87b index_22)))
  (=> (<= 0 2147483647) (in_range2 index_11)))
  (and (<= 2 index_22) (<= index_22 r87b))))

;; H
  (assert (and (<= 0 index_22) (<= index_22 100000)))

;; H
  (assert (= o index_22))

;; H
  (assert (= result4 (select is_prime5 o)))

;; H
  (assert (=> (= result4 true) (= index_11 result5)))

;; H
  (assert (=> (= result4 true) (= index_12 index_22)))

;; H
  (assert
  (=> (= result4 true)
  (and (= o1 (* 2 index_12)) (in_range1 (* 2 index_12)))))

;; H
  (assert (=> (= result4 true) (= index_31 result6)))

;; H
  (assert (=> (= result4 true) (= index_32 o1)))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= temp___292 is_prime5))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= temp___291 index_32))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000) (and (<= 0 index_32) (<= index_32 100000)))))

;; H
  (assert (=> (= result4 true) (=> (<= index_32 100000) (= o2 index_32))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000) (= o3 (store is_prime5 o2 (distinct 0 0))))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= is_prime5 result7))))

;; H
  (assert (=> (= result4 true) (=> (<= index_32 100000) (= is_prime6 o3))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000)
  (forall ((v Int))
  (=> (and (<= 0 v) (<= v index_22))
  (= (= (select is_prime7 v) true) (= (is_prime v) true)))))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000)
  (forall ((v Int))
  (=> (and (<= index_22 v) (<= v 100000))
  (= (= (select is_prime7 v) true)
  (and
  (forall ((div1 Int))
  (=> (and (<= 2 div1) (<= div1 (- index_22 1))) (not (= (mod1 v div1) 0))))
  (=> (and (<= (+ index_22 1) v) (<= v index_33))
  (not (= (mod1 v index_22) 0))))))))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000) (and (<= index_22 index_33) (<= index_33 100000)))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000) (= (mod1 index_33 index_22) 0))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000)
  (=> (<= (- 2147483648) 2147483647) (in_range1 index_33)))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000)
  (and (= o4 (+ index_33 index_12)) (in_range1 (+ index_33 index_12))))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= index_33 result8))))

;; H
  (assert (=> (= result4 true) (=> (<= index_32 100000) (= index_34 o4))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (not (<= index_34 100000)))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= index_34 index_35))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= is_prime7 is_prime8))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= index_36 index_34))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= is_prime9 is_prime7))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000) (= index_313 (mk_int__ref index_35)))))

;; H
  (assert
  (=> (= result4 true)
  (=> (<= index_32 100000) (= is_prime17 (mk_map__ref is_prime8)))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= index_38 index_36))))

;; H
  (assert
  (=> (= result4 true) (=> (<= index_32 100000) (= is_prime11 is_prime9))))

;; H
  (assert
  (=> (= result4 true) (=> (not (<= index_32 100000)) (= index_32 index_37))))

;; H
  (assert
  (=> (= result4 true)
  (=> (not (<= index_32 100000)) (= is_prime5 is_prime10))))

;; H
  (assert
  (=> (= result4 true) (=> (not (<= index_32 100000)) (= index_38 index_32))))

;; H
  (assert
  (=> (= result4 true)
  (=> (not (<= index_32 100000)) (= is_prime11 is_prime5))))

;; H
  (assert (=> (= result4 true) (= index_39 index_313)))

;; H
  (assert (=> (= result4 true) (= index_12 index_13)))

;; H
  (assert (=> (= result4 true) (= is_prime16 is_prime17)))

;; H
  (assert (=> (= result4 true) (= index_310 index_38)))

;; H
  (assert (=> (= result4 true) (= index_14 index_12)))

;; H
  (assert (=> (= result4 true) (= is_prime13 is_prime11)))

;; H
  (assert (=> (not (= result4 true)) (= index_39 (mk_int__ref index_31))))

;; H
  (assert (=> (not (= result4 true)) (= index_11 index_13)))

;; H
  (assert (=> (not (= result4 true)) (= is_prime5 is_prime12)))

;; H
  (assert (=> (not (= result4 true)) (= index_310 index_31)))

;; H
  (assert (=> (not (= result4 true)) (= index_14 index_11)))

;; H
  (assert (=> (not (= result4 true)) (= is_prime13 is_prime5)))

;; H
  (assert (not (= index_22 r87b)))

;; H
  (assert (= result9 (mk_int__ref index_22)))

;; H
  (assert (= index_23 (+ index_22 1)))

;; H
  (assert (= index_24 (mk_int__ref index_23)))

;; H
  (assert (= index_311 index_39))

;; H
  (assert (= index_15 (mk_int__ref index_13)))

;; H
  (assert (= is_prime14 is_prime16))

;; H
  (assert (= index_25 index_23))

;; H
  (assert (= index_312 index_310))

;; H
  (assert (= index_16 index_14))

;; H
  (assert (= is_prime15 is_prime13))

(declare-const v Int)

;; H
  (assert (<= (int__content index_24) v))

;; H
  (assert (<= v 100000))

;; H
  (assert (= (select (map__content is_prime14) v) true))

(declare-const div1 Int)

;; H
  (assert (<= 2 div1))

;; H
  (assert (<= div1 (- (int__content index_24) 1)))

(assert
;; WP_parameter_def
 ;; File "prime_and_coprime_numbers.adb", line 205, characters 0-0
  (not (not (= (mod1 v div1) 0))))
(check-sat)
(exit)
