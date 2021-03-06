(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTNIRA)
(set-info :source |Benchmarks generated by Florian Schanda from the public SPARK 2014 testsuite and post-processed with a script to set more precise logics.|)
(set-info :category industrial)
(set-info :status unknown)

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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range temp___expr_39)))
(declare-sort tuint_64B 0)
(declare-fun tuint_64Bqtint (tuint_64B) Int)
(assert (forall ((i tuint_64B)) (and (<= (- 9223372036854775808) (tuint_64Bqtint i)) (<= (tuint_64Bqtint i) 9223372036854775807))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 9223372036854775808) x) (<= x 9223372036854775807)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (tuint_64B tuint_64B) Bool)
(declare-const dummy1 tuint_64B)
(declare-datatypes () ((tuint_64B__ref (mk_tuint_64B__ref (tuint_64B__content tuint_64B)))))
(define-fun tuint_64B__ref___projection ((a tuint_64B__ref)) tuint_64B (tuint_64B__content a))
(declare-sort uint_64 0)
(declare-fun uint_64qtint (uint_64) Int)
(assert (forall ((i uint_64)) (and (<= 0 (uint_64qtint i)) (<= (uint_64qtint i) 9223372036854775807))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 9223372036854775807)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (uint_64 uint_64) Bool)
(declare-const dummy2 uint_64)
(declare-datatypes () ((uint_64__ref (mk_uint_64__ref (uint_64__content uint_64)))))
(define-fun uint_64__ref___projection ((a uint_64__ref)) uint_64 (uint_64__content a))
(define-fun dynamic_invariant1 ((temp___expr_158 Int) (temp___is_init_154 Bool) (temp___skip_constant_155 Bool) (temp___do_toplevel_156 Bool) (temp___do_typ_inv_157 Bool)) Bool (=> (or (= temp___is_init_154 true) (<= 0 9223372036854775807)) (in_range2 temp___expr_158)))
(declare-const v Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const m Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const d Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const v_hi Int)
(declare-const v_lo Int)
(declare-const result_hi Int)
(declare-const result_lo Int)
(declare-const remainder Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const o7 Int)
(declare-const o8 Int)
(declare-const o9 Int)
(declare-const o10 Int)
(declare-const o11 Int)
(declare-const o12 Int)
(declare-const o13 Int)
(declare-const o14 Int)
(declare-const o15 Int)
(declare-const o16 Int)
(declare-const o17 Int)
(declare-const o18 Int)
(declare-const o19 Int)
(declare-const o20 Int)
(declare-const result Int)
(declare-const v_hi1 Int)
(declare-const result1 Int)
(declare-const v_lo1 Int)
(declare-const result2 Int)
(declare-const v_hi2 Int)
(declare-const result3 Int)
(declare-const v_lo2 Int)
(declare-const result4 Int)
(declare-const v_hi3 Int)
(declare-const result5 Int)
(declare-const v_lo3 Int)
(declare-const result6 Int)
(declare-const result_hi1 Int)
(declare-const result7 Int)
(declare-const remainder1 Int)
(declare-const result8 Int)
(declare-const result_hi2 Int)
(declare-const result9 Int)
(declare-const result_lo1 Int)
(assert (in_range2 v))
(assert (in_range m))
(assert (in_range d))
(assert (not (= d 0)))
(assert (and (= o (div1 v 4294967296)) (in_range2 (div1 v 4294967296))))
(assert (= result v_hi))
(assert (= v_hi1 o))
(assert (in_range2 v_hi1))
(assert (and (= o1 (mod1 v 4294967296)) (in_range2 (mod1 v 4294967296))))
(assert (= result1 v_lo))
(assert (= v_lo1 o1))
(assert (in_range2 v_lo1))
(assert (=> (<= 0 9223372036854775807) (in_range2 result_hi)))
(assert (=> (<= 0 9223372036854775807) (in_range2 result_lo)))
(assert (=> (<= 0 9223372036854775807) (in_range2 remainder)))
(assert (and (= o2 (* v_hi1 m)) (in_range1 (* v_hi1 m))))
(assert (and (= o3 o2) (in_range2 o2)))
(assert (= result2 v_hi1))
(assert (= v_hi2 o3))
(assert (and (= o4 (* v_lo1 m)) (in_range1 (* v_lo1 m))))
(assert (and (= o5 o4) (in_range2 o4)))
(assert (= result3 v_lo1))
(assert (= v_lo2 o5))
(assert (and (= o6 (+ v_hi2 (div1 v_lo2 4294967296))) (in_range1 (+ v_hi2 (div1 v_lo2 4294967296)))))
(assert (= result4 v_hi2))
(assert (= v_hi3 o6))
(assert (= result5 v_lo2))
(assert (= v_lo3 (mod1 v_lo2 4294967296)))
(assert (and (= o7 (div1 v_hi3 d)) (in_range2 (div1 v_hi3 d))))
(assert (= result6 result_hi))
(assert (= result_hi1 o7))
(assert (< result_hi1 2147483647))
(assert (and (= o8 (* result_hi1 d)) (in_range1 (* result_hi1 d))))
(assert (= o9 (- v_hi3 o8)))
(assert (and (= o10 o9) (in_range1 o9)))
(assert (and (= o11 o10) (in_range2 o10)))
(assert (= result7 remainder))
(assert (= remainder1 o11))
(assert (and (= o12 (* result_hi1 4294967296)) (in_range1 (* result_hi1 4294967296))))
(assert (and (= o13 o12) (in_range2 o12)))
(assert (= result8 result_hi1))
(assert (= result_hi2 o13))
(assert (and (= o14 (* remainder1 4294967296)) (in_range1 (* remainder1 4294967296))))
(assert (= o15 (+ v_lo3 o14)))
(assert (and (= o16 o15) (in_range1 o15)))
(assert (= o17 (+ o16 (div1 d 2))))
(assert (and (= o18 o17) (in_range1 o17)))
(assert (= o19 (div1 o18 d)))
(assert (and (= o20 o19) (in_range2 o19)))
(assert (= result9 result_lo))
(assert (= result_lo1 o20))
(assert (<= result_lo1 (- 9223372032559808512 result_hi2)))
(assert (not (in_range1 (+ result_hi2 result_lo1))))
(check-sat)
(exit)
