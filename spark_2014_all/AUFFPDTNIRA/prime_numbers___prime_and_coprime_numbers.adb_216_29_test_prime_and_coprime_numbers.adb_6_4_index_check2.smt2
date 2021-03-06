(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFFPDTNIRA)
(set-info :source |Benchmarks generated by Florian Schanda from the public SPARK 2014 testsuite and post-processed with a script to set more precise logics.|)
(set-info :category industrial)
(set-info :status unknown)

(define-fun fp.isFinite32 ((x Float32)) Bool (not (or (fp.isInfinite x) (fp.isNaN x))))
(define-fun fp.isIntegral32 ((x Float32)) Bool (or (fp.isZero x) (and (fp.isNormal x) (= x (fp.roundToIntegral RNE x)))))
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)
(declare-fun private__bool_eq (us_private us_private) Bool)
(declare-const us_null_ext__ us_private)
(declare-sort us_type_of_heap 0)
(declare-datatypes () ((us_type_of_heap__ref (mk___type_of_heap__ref (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)
(declare-datatypes () ((int__ref (mk_int__ref (int__content Int)))))
(declare-datatypes () ((bool__ref (mk_bool__ref (bool__content Bool)))))
(declare-datatypes () ((real__ref (mk_real__ref (real__content Real)))))
(declare-datatypes () ((us_private__ref (mk___private__ref (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))
(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))
(define-fun real__ref___projection ((a real__ref)) Real (real__content a))
(define-fun us_private__ref___projection ((a us_private__ref)) us_private (us_private__content a))
(declare-fun div1 (Int Int) Int)
(declare-fun mod1 (Int Int) Int)
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))
(assert (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))
(assert (forall ((x Int) (y Int)) (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))
(assert (forall ((x Int)) (= (div1 x 1) x)))
(assert (forall ((x Int)) (= (mod1 x 1) 0)))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))
(assert (forall ((x Int) (y Int) (z Int)) (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z))) (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1 (+ (* x y) z) x)))))
(assert (forall ((x Int) (y Int) (z Int)) (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z))) (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)))))
(define-fun mod2 ((x Int) (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))
(declare-fun pow2 (Int) Int)
(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite x) (fp.isPositive x)))
(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite x) (fp.isNegative x)))
(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero x) (fp.isPositive x)))
(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero x) (fp.isNegative x)))
(declare-fun of_int (RoundingMode Int) Float32)
(declare-fun to_int1 (RoundingMode Float32) Int)
(declare-const max_int Int)
(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i) (<= i max_int)))
(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i) (<= i 16777216)))
(define-fun same_sign ((x Float32) (y Float32)) Bool (or (and (fp.isPositive x) (fp.isPositive y)) (and (fp.isNegative x) (fp.isNegative y))))
(define-fun diff_sign ((x Float32) (y Float32)) Bool (or (and (fp.isPositive x) (fp.isNegative y)) (and (fp.isNegative x) (fp.isPositive y))))
(define-fun product_sign ((z Float32) (x Float32) (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive z)) (=> (diff_sign x y) (fp.isNegative z))))
(define-fun sqr ((x Real)) Real (* x x))
(declare-fun sqrt1 (Real) Real)
(define-fun same_sign_real ((x Float32) (r Real)) Bool (or (and (fp.isPositive x) (< 0.0 r)) (and (fp.isNegative x) (< r 0.0))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-fun is_prime (Int) Bool)
(declare-fun is_prime__function_guard (Bool Int) Bool)
(declare-sort value_type 0)
(declare-fun value_typeqtint (value_type) Int)
(assert (forall ((i value_type)) (and (<= 0 (value_typeqtint i)) (<= (value_typeqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (value_type value_type) Bool)
(declare-const dummy1 value_type)
(declare-datatypes () ((value_type__ref (mk_value_type__ref (value_type__content value_type)))))
(define-fun value_type__ref___projection ((a value_type__ref)) value_type (value_type__content a))
(define-fun dynamic_invariant1 ((temp___expr_208 Int) (temp___is_init_204 Bool) (temp___skip_constant_205 Bool) (temp___do_toplevel_206 Bool) (temp___do_typ_inv_207 Bool)) Bool (=> (or (= temp___is_init_204 true) (<= 0 2147483647)) (in_range2 temp___expr_208)))
(assert true)
(assert (forall ((value Int)) (! (= (= (is_prime value) true) (and (<= 2 value) (forall ((v Int)) (=> (and (<= 2 v) (<= v (- value 1))) (not (= (mod2 value v) 0)))))) :pattern ((is_prime value)))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int Bool))))))
(declare-fun slide ((Array Int Bool) Int Int) (Array Int Bool))
(assert (forall ((a (Array Int Bool))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int Bool))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int Bool)) (a__first Int) (a__last Int) (b (Array Int Bool)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154)))))) true false))
(assert (forall ((a (Array Int Bool)) (b (Array Int Bool))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun valid_prime_data ((Array Int Bool)) Bool)
(declare-fun valid_prime_data__function_guard (Bool (Array Int Bool)) Bool)
(assert true)
(assert (forall ((test_prime_and_coprime_numbers__p__set__is_prime (Array Int Bool))) (! (= (= (valid_prime_data test_prime_and_coprime_numbers__p__set__is_prime) true) (forall ((v Int)) (=> (and (<= 0 v) (<= v 100000)) (= (= (select test_prime_and_coprime_numbers__p__set__is_prime v) true) (= (is_prime v) true))))) :pattern ((valid_prime_data test_prime_and_coprime_numbers__p__set__is_prime)))))
(declare-sort tnumber_list_typeD1 0)
(declare-fun tnumber_list_typeD1qtint (tnumber_list_typeD1) Int)
(assert (forall ((i tnumber_list_typeD1)) (and (<= 0 (tnumber_list_typeD1qtint i)) (<= (tnumber_list_typeD1qtint i) 100000))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 100000)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (tnumber_list_typeD1 tnumber_list_typeD1) Bool)
(declare-const dummy2 tnumber_list_typeD1)
(declare-datatypes () ((tnumber_list_typeD1__ref (mk_tnumber_list_typeD1__ref (tnumber_list_typeD1__content tnumber_list_typeD1)))))
(define-fun tnumber_list_typeD1__ref___projection ((a tnumber_list_typeD1__ref)) tnumber_list_typeD1 (tnumber_list_typeD1__content a))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const r87b Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (integer integer) Bool)
(declare-const dummy3 integer)
(declare-datatypes () ((t88b__ref (mk_t88b__ref (t88b__content integer)))))
(define-fun t88b__ref___projection ((a t88b__ref)) integer (t88b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-fun temp_____aggregate_def_285 (Bool) (Array Int Bool))
(assert (forall ((temp___287 Bool)) (forall ((temp___288 Int)) (= (select (temp_____aggregate_def_285 temp___287) temp___288) temp___287))))
(declare-const is_prime1 (Array Int Bool))
(declare-const index_1 Int)
(declare-const index_3 Int)
(declare-const index_2 Int)
(declare-const test_prime_and_coprime_numbers__p__eratosthenes__L_5__R87b__assume Int)
(declare-const v Int)
(declare-const o Bool)
(declare-const o1 Int)
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
(assert (=> (<= 0 2147483647) (in_range2 index_1)))
(assert (=> (<= (- 2147483648) 2147483647) (in_range1 index_3)))
(assert (= (mk_map__ref result) (mk_map__ref is_prime1)))
(assert (= is_prime2 (temp_____aggregate_def_285 (distinct 1 0))))
(assert (= is_prime2 result1))
(assert (= is_prime3 (store is_prime2 0 (distinct 0 0))))
(assert (= is_prime3 result2))
(assert (= is_prime4 (store is_prime3 1 (distinct 0 0))))
(assert (and (= test_prime_and_coprime_numbers__p__eratosthenes__L_5__R87b__assume (to_int1 RNA (fp.sqrt RNE (fp #b0 #b10001111 #b10000110101000000000000)))) (in_range2 (to_int1 RNA (fp.sqrt RNE (fp #b0 #b10001111 #b10000110101000000000000))))))
(assert (= test_prime_and_coprime_numbers__p__eratosthenes__L_5__R87b__assume r87b))
(assert (in_range2 r87b))
(assert (= (mk_int__ref result3) (mk_int__ref index_2)))
(assert (= index_21 2))
(assert (<= 2 index_21))
(assert (<= index_21 r87b))
(assert (and (<= 2 index_22) (<= index_22 100000)))
(assert (forall ((v1 Int)) (=> (and (<= 0 v1) (<= v1 index_22)) (= (= (select is_prime5 v1) true) (= (is_prime v1) true)))))
(assert (forall ((v1 Int)) (=> (and (<= index_22 v1) (<= v1 100000)) (= (= (select is_prime5 v1) true) (forall ((div2 Int)) (=> (and (<= 2 div2) (<= div2 (- index_22 1))) (not (= (mod2 v1 div2) 0))))))))
(assert (and (and (and (=> (<= (- 2147483648) 2147483647) (in_range1 index_31)) (=> (<= 2 r87b) (dynamic_property 2 r87b index_22))) (=> (<= 0 2147483647) (in_range2 index_11))) (and (<= 2 index_22) (<= index_22 r87b))))
(assert (<= index_22 v))
(assert (<= v 100000))
(assert (= (= o true) (forall ((div2 Int)) (=> (and (<= 2 div2) (<= div2 (- index_22 1))) (not (= (mod2 v div2) 0))))))
(assert (= o1 (ite o 1 0)))
(assert (not (<= 0 v)))
(check-sat)
(exit)
