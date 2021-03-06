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
(assert (= (* 33554430.0 10141204801825835211973625643008.0) (fp.to_real (fp #b0 #b11111110 #b11111111111111111111111))))
(declare-fun next_representable (Float32) Float32)
(declare-fun prev_representable (Float32) Float32)
(assert (forall ((x Float32)) (! (=> (fp.isFinite32 x) (fp.lt x (next_representable x))) :pattern ((next_representable x)))))
(assert (forall ((x Float32)) (! (=> (fp.isFinite32 x) (fp.lt (prev_representable x) x)) :pattern ((prev_representable x)))))
(assert (forall ((x Float32) (y Float32)) (=> (fp.lt x y) (fp.leq (next_representable x) y))))
(assert (forall ((x Float32) (y Float32)) (=> (fp.lt y x) (fp.leq y (prev_representable x)))))
(assert (forall ((x Float32)) (! (=> (fp.isFinite32 x) (=> (not (fp.eq x (fp #b0 #b11111110 #b11111111111111111111111))) (fp.isFinite32 (next_representable x)))) :pattern ((fp.isFinite32 (next_representable x))))))
(assert (forall ((x Float32)) (! (=> (fp.isFinite32 x) (=> (not (fp.eq x (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)))) (fp.isFinite32 (prev_representable x)))) :pattern ((fp.isFinite32 (prev_representable x))))))
(declare-sort float 0)
(declare-fun user_eq (float float) Bool)
(declare-fun attr__ATTRIBUTE_IMAGE (Float32) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Float32)
(declare-const dummy float)
(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))
(define-fun dynamic_invariant ((temp___expr_60 Float32) (temp___is_init_56 Bool) (temp___skip_constant_57 Bool) (temp___do_toplevel_58 Bool) (temp___do_typ_inv_59 Bool)) Bool (=> (or (= temp___is_init_56 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (fp.isFinite32 temp___expr_60)))
(declare-const a Bool)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const b Bool)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const x Float32)
(declare-const result Float32)
(declare-const x1 Float32)
(declare-const result1 Float32)
(declare-const x2 Float32)
(assert (=> (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)) (fp.isFinite32 x)))
(assert (= result x))
(assert (= x1 (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) (next_representable x1)))
(assert (fp.lt (next_representable x1) (fp #b0 #b01111111 #b00000000000000000000000)))
(assert (fp.lt (prev_representable x1) (fp #b0 #b00000000 #b00000000000000000000000)))
(assert (fp.lt (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (prev_representable x1)))
(assert (= result1 x1))
(assert (= x2 (fp #b0 #b01111111 #b00000000000000000000000)))
(assert (fp.lt (fp #b0 #b01111111 #b00000000000000000000000) (next_representable x2)))
(assert (not (not (= x2 (fp #b0 #b11111110 #b11111111111111111111111)))))
(check-sat)
(exit)
