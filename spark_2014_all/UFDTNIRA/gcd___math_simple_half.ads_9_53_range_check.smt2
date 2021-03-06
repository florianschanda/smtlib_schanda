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
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (positive positive) Bool)
(declare-const dummy positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (integer integer) Bool)
(declare-const dummy1 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_18)))
(declare-fun divides (Int Int) Bool)
(declare-fun divides__function_guard (Bool Int Int) Bool)
(assert true)
(assert (forall ((a Int) (b Int)) (! (= (= (divides a b) true) (= (mod2 b a) 0)) :pattern ((divides a b)))))
(declare-const a Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const b Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const r4b Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (integer integer) Bool)
(declare-const dummy2 integer)
(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content integer)))))
(define-fun t5b__ref___projection ((a1 t5b__ref)) integer (t5b__content a1))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const c Int)
(declare-const j Int)
(declare-const math_simple_half__gcd__result Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const temp___156 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const temp___157 Int)
(declare-const o4 Int)
(declare-const x Int)
(declare-const j1 Int)
(declare-const result Int)
(declare-const c1 Int)
(declare-const result1 Int)
(declare-const math_simple_half__gcd__result1 Int)
(declare-const result2 Int)
(declare-const c2 Int)
(declare-const result3 Int)
(declare-const j2 Int)
(declare-const j3 Int)
(declare-const j4 Int)
(declare-const j5 Int)
(declare-const j6 Int)
(declare-const j7 Int)
(declare-const c3 Int)
(declare-const result4 Int)
(declare-const c4 Int)
(declare-const c5 Int)
(declare-const c6 Int)
(declare-const c7 Int)
(declare-const c8 Int)
(declare-const c9 Int)
(declare-const c10 Int)
(declare-const result5 Int)
(declare-const math_simple_half__gcd__result2 Int)
(declare-const c11 int__ref)
(declare-const j8 int__ref)
(declare-const math_simple_half__gcd__result3 int__ref)
(declare-const c12 Int)
(declare-const j9 Int)
(declare-const math_simple_half__gcd__result4 Int)
(declare-const c13 int__ref)
(declare-const j10 int__ref)
(declare-const math_simple_half__gcd__result5 int__ref)
(declare-const c14 Int)
(declare-const j11 Int)
(declare-const math_simple_half__gcd__result6 Int)
(declare-const c15 int__ref)
(declare-const j12 int__ref)
(declare-const math_simple_half__gcd__result7 int__ref)
(declare-const c16 Int)
(declare-const j13 Int)
(declare-const math_simple_half__gcd__result8 Int)
(declare-const result6 Bool)
(declare-const result7 Bool)
(define-fun c17 () int__ref (mk_int__ref c9))
(define-fun c18 () int__ref (mk_int__ref c7))
(define-fun j14 () int__ref (mk_int__ref j6))
(define-fun math_simple_half__gcd__result9 () int__ref (mk_int__ref math_simple_half__gcd__result))
(define-fun j15 () int__ref (mk_int__ref j))
(assert (in_range1 a))
(assert (in_range1 b))
(assert (and (= o (ite (< a b) a b)) (in_range1 (ite (< a b) a b))))
(assert (= (mk_int__ref result) (mk_int__ref c)))
(assert (= c1 o))
(assert (in_range1 c1))
(assert (= math_simple_half__gcd__result5 math_simple_half__gcd__result3))
(assert (= j10 j8))
(assert (= c13 c11))
(assert (= math_simple_half__gcd__result6 math_simple_half__gcd__result4))
(assert (= j11 j9))
(assert (= c14 c12))
(assert (=> (and (= (mod2 a c1) 0) (= (mod2 b c1) 0)) (= math_simple_half__gcd__result3 (mk_int__ref math_simple_half__gcd__result1))))
(assert (=> (and (= (mod2 a c1) 0) (= (mod2 b c1) 0)) (= j8 j15)))
(assert (=> (and (= (mod2 a c1) 0) (= (mod2 b c1) 0)) (= c11 (mk_int__ref c1))))
(assert (=> (and (= (mod2 a c1) 0) (= (mod2 b c1) 0)) (= math_simple_half__gcd__result4 math_simple_half__gcd__result1)))
(assert (=> (and (= (mod2 a c1) 0) (= (mod2 b c1) 0)) (= j9 j1)))
(assert (=> (and (= (mod2 a c1) 0) (= (mod2 b c1) 0)) (= c12 c1)))
(assert (=> (and (= (mod2 a c1) 0) (= (mod2 b c1) 0)) (= (mk_int__ref result1) math_simple_half__gcd__result9)))
(assert (=> (and (= (mod2 a c1) 0) (= (mod2 b c1) 0)) (= math_simple_half__gcd__result1 c1)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= math_simple_half__gcd__result3 (mk_int__ref math_simple_half__gcd__result2))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= j8 j14)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= c11 c17)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= math_simple_half__gcd__result4 math_simple_half__gcd__result2)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= j9 j7)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= c12 c10)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (and (= o1 (div1 c1 2)) (in_range1 (div1 c1 2)))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= c1 result2)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= c2 o1)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= (+ c2 1) r4b)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (in_range2 r4b)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= (mk_int__ref result3) j15)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= j2 r4b)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (= temp___156 j2))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (and (= o3 (ite (< a b) a b)) (in_range1 (ite (< a b) a b))))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (and (= o2 j2) (in_range1 j2)))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (not (= (divides o2 o3) true)))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (forall ((x1 Int)) (=> (and (<= (+ c2 1) x1) (<= x1 j3)) (not (= (divides x1 (ite (< a b) a b)) true)))))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (and (=> (<= r4b (- (ite (< a b) a b) 1)) (dynamic_property r4b (- (ite (< a b) a b) 1) j3)) (and (<= r4b j3) (<= j3 (- (ite (< a b) a b) 1)))))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (= j3 (- (ite (< a b) a b) 1)))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (= j3 j4))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (= j5 j3))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (= j14 (mk_int__ref j4)))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1))) (= j7 j5))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (not (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1)))) (= j2 j6))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (not (and (<= r4b j2) (<= j2 (- (ite (< a b) a b) 1)))) (= j7 j2))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (< 1 c2) (= temp___157 c2))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (< 1 c2) (or (and (and (= c2 c5) (= c6 c2)) (and (= (mod2 a c2) 0) (= (mod2 b c2) 0))) (and (not (and (= (mod2 a c2) 0) (= (mod2 b c2) 0))) (and (and (= c4 c5) (= c6 c4)) (and (and (< 1 c3) (forall ((x1 Int)) (=> (and (<= c3 x1) (<= x1 (ite (< a b) a b))) (not (and (= (divides x1 a) true) (= (divides x1 b) true)))))) (and (=> (<= 1 2147483647) (in_range1 c3)) (and (and (and (= o4 (- c3 1)) (in_range1 (- c3 1))) (and (= c3 result4) (= c4 o4))) (or (not (< 1 c4)) (and (< 1 c4) (and (= (mod2 a c4) 0) (= (mod2 b c4) 0)))))))))))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (< 1 c2) (= c18 (mk_int__ref c5)))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (< 1 c2) (= c8 c6))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (< 1 c2) (= c17 c18))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (< 1 c2) (= c10 c8))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (not (< 1 c2)) (= c2 c9))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (=> (not (< 1 c2)) (= c10 c2))))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= (mk_int__ref result5) math_simple_half__gcd__result9)))
(assert (=> (not (and (= (mod2 a c1) 0) (= (mod2 b c1) 0))) (= math_simple_half__gcd__result2 c9)))
(assert (= math_simple_half__gcd__result7 math_simple_half__gcd__result5))
(assert (= j12 j10))
(assert (= c15 c13))
(assert (= math_simple_half__gcd__result8 math_simple_half__gcd__result6))
(assert (= j13 j11))
(assert (= c16 c14))
(assert (and (= result6 (divides (int__content math_simple_half__gcd__result7) a)) (= (= result6 true) (= (mod2 a (int__content math_simple_half__gcd__result7)) 0))))
(assert (= result6 true))
(assert (and (= result7 (divides (int__content math_simple_half__gcd__result7) b)) (= (= result7 true) (= (mod2 b (int__content math_simple_half__gcd__result7)) 0))))
(assert (= result7 true))
(assert (<= (+ (int__content math_simple_half__gcd__result7) 1) x))
(assert (<= x (ite (< a b) a b)))
(assert (not (in_range1 x)))
(check-sat)
(exit)
