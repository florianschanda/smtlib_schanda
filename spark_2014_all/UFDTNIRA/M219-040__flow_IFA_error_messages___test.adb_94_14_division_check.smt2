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
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const r11b Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const r12b Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const a Int)
(declare-const b Int)
(declare-const i Int)
(declare-const temp___179 Int)
(declare-const temp___178 Int)
(declare-const o Int)
(declare-const a1 Int)
(declare-const b1 Int)
(declare-const result Int)
(declare-const i1 Int)
(declare-const a2 Int)
(declare-const b2 Int)
(declare-const i2 Int)
(declare-const result1 Int)
(declare-const a3 Int)
(declare-const result2 Int)
(declare-const b3 Int)
(declare-const a4 Int)
(declare-const b4 Int)
(declare-const i3 Int)
(declare-const a5 Int)
(declare-const b5 Int)
(declare-const i4 Int)
(declare-const a6 Int)
(declare-const b6 Int)
(declare-const i5 Int)
(declare-const a7 Int)
(declare-const b7 Int)
(declare-const i6 Int)
(define-fun b8 () int__ref (mk_int__ref b6))
(define-fun a8 () int__ref (mk_int__ref a6))
(assert (in_range1 a))
(assert (in_range1 b))
(assert (= a r11b))
(assert (in_range1 r11b))
(assert (= b r12b))
(assert (in_range1 r12b))
(assert (= (mk_int__ref result) (mk_int__ref i)))
(assert (= i1 r11b))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= temp___179 b)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= temp___178 a)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (and (and (in_range1 a2) (in_range1 b2)) (and (<= r11b i2) (<= i2 r12b)))))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (and (= o (* a2 i2)) (in_range1 (* a2 i2)))))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= result1 a2)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= a3 o)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= result2 b2)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= b3 5)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= i2 r12b)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= i2 i3)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= b3 b4)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= a3 a4)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= i4 i2)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= b5 b3)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= a5 a3)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= (mk_int__ref i5) (mk_int__ref i3))))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= b8 (mk_int__ref b4))))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= a8 (mk_int__ref a4))))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= i6 i4)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= b7 b5)))
(assert (=> (and (<= r11b i1) (<= i1 r12b)) (= a7 a5)))
(assert (=> (not (and (<= r11b i1) (<= i1 r12b))) (= i1 i5)))
(assert (=> (not (and (<= r11b i1) (<= i1 r12b))) (= b8 (mk_int__ref b))))
(assert (=> (not (and (<= r11b i1) (<= i1 r12b))) (= a8 (mk_int__ref a))))
(assert (=> (not (and (<= r11b i1) (<= i1 r12b))) (= i6 i1)))
(assert (=> (not (and (<= r11b i1) (<= i1 r12b))) (= b7 b1)))
(assert (=> (not (and (<= r11b i1) (<= i1 r12b))) (= a7 a1)))
(assert (not (not (= 2 0))))
(check-sat)
(exit)
