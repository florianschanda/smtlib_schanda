(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFFPDTNIRA)
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
(declare-sort float 0)
(declare-fun user_eq (float float) Bool)
(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)
(declare-const dummy float)
(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))
(define-fun dynamic_invariant ((temp___expr_60 Float32) (temp___is_init_56 Bool) (temp___skip_constant_57 Bool) (temp___do_toplevel_58 Bool) (temp___do_typ_inv_59 Bool)) Bool (=> (or (= temp___is_init_56 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (fp.isFinite32 temp___expr_60)))
(declare-fun sin1 (Float32) Float32)
(declare-fun sin__function_guard (Float32 Float32) Bool)
(assert (forall ((x Float32)) (! (=> (dynamic_invariant x true true true true) (let ((result (sin1 x))) (and (and (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) result) (fp.leq result (fp #b0 #b01111111 #b00000000000000000000000))) (=> (fp.eq x (fp #b0 #b00000000 #b00000000000000000000000)) (fp.eq result (fp #b0 #b00000000 #b00000000000000000000000)))) (dynamic_invariant result true false true true)))) :pattern ((sin1 x)))))
(declare-fun approx_sin (Float32) Float32)
(declare-fun approx_sin__function_guard (Float32 Float32) Bool)
(declare-fun pow3 (Float32) Float32)
(declare-fun pow3__function_guard (Float32 Float32) Bool)
(declare-fun pow5 (Float32) Float32)
(declare-fun pow5__function_guard (Float32 Float32) Bool)
(declare-fun pow7 (Float32) Float32)
(declare-fun pow7__function_guard (Float32 Float32) Bool)
(assert (forall ((x Float32)) (! (=> (dynamic_invariant x true true true true) (dynamic_invariant (approx_sin x) true false true true)) :pattern ((approx_sin x)))))
(assert (forall ((x Float32)) (! (=> (dynamic_invariant x true true true true) (= (approx_sin x) (fp.sub RNE (fp.add RNE (fp.sub RNE x (fp.div RNE (pow3 x) (fp #b0 #b10000001 #b10000000000000000000000))) (fp.div RNE (pow5 x) (fp #b0 #b10000101 #b11100000000000000000000))) (fp.div RNE (pow7 x) (fp #b0 #b10001011 #b00111011000000000000000))))) :pattern ((approx_sin x)))))
(declare-const x Float32)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(assert (forall ((x1 Float32)) (! (=> (dynamic_invariant x1 true true true true) (dynamic_invariant (pow3 x1) true false true true)) :pattern ((pow3 x1)))))
(assert (forall ((x1 Float32)) (! (=> (dynamic_invariant x1 true true true true) (= (pow3 x1) (fp.mul RNE (fp.mul RNE x1 x1) x1))) :pattern ((pow3 x1)))))
(assert (forall ((x1 Float32)) (! (=> (dynamic_invariant x1 true true true true) (dynamic_invariant (pow5 x1) true false true true)) :pattern ((pow5 x1)))))
(assert (forall ((x1 Float32)) (! (=> (dynamic_invariant x1 true true true true) (= (pow5 x1) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x1 x1) x1) x1) x1))) :pattern ((pow5 x1)))))
(assert (forall ((x1 Float32)) (! (=> (dynamic_invariant x1 true true true true) (dynamic_invariant (pow7 x1) true false true true)) :pattern ((pow7 x1)))))
(assert (forall ((x1 Float32)) (! (=> (dynamic_invariant x1 true true true true) (= (pow7 x1) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x1 x1) x1) x1) x1) x1) x1))) :pattern ((pow7 x1)))))
(declare-const trigo__sin__result Float32)
(declare-const o Float32)
(declare-const result Float32)
(declare-const trigo__sin__result1 Float32)
(declare-const trigo__sin__result2 Float32)
(declare-const trigo__sin__result3 Float32)
(declare-const trigo__sin__result4 Float32)
(declare-const trigo__sin__result5 Float32)
(declare-const result1 Float32)
(assert (fp.isFinite32 x))
(assert (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) x) (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000))))
(assert (= trigo__sin__result1 trigo__sin__result2))
(assert (= trigo__sin__result3 trigo__sin__result1))
(assert (and (= o (sin1 x)) (and (fp.isFinite32 o) (and (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) o) (fp.leq o (fp #b0 #b01111111 #b00000000000000000000000))) (=> (fp.eq x (fp #b0 #b00000000 #b00000000000000000000000)) (fp.eq o (fp #b0 #b00000000 #b00000000000000000000000)))))))
(assert (= (mk_t__ref result) (mk_t__ref trigo__sin__result)))
(assert (= trigo__sin__result1 o))
(assert (= (mk_t__ref trigo__sin__result4) (mk_t__ref trigo__sin__result2)))
(assert (= trigo__sin__result5 trigo__sin__result3))
(assert (= result1 trigo__sin__result4))
(assert (not (fp.lt (fp.abs (fp.sub RNE trigo__sin__result4 (approx_sin x))) (fp #b0 #b01101100 #b10010010101001110011100))))
(check-sat)
(exit)
