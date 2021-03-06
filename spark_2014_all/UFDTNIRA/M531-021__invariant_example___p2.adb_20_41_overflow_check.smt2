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
(declare-sort long_long_integer 0)
(declare-fun long_long_integerqtint (long_long_integer) Int)
(assert (forall ((i long_long_integer)) (and (<= (- 9223372036854775808) (long_long_integerqtint i)) (<= (long_long_integerqtint i) 9223372036854775807))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 9223372036854775808) x) (<= x 9223372036854775807)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (long_long_integer long_long_integer) Bool)
(declare-const dummy1 long_long_integer)
(declare-datatypes () ((long_long_integer__ref (mk_long_long_integer__ref (long_long_integer__content long_long_integer)))))
(define-fun long_long_integer__ref___projection ((a long_long_integer__ref)) long_long_integer (long_long_integer__content a))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (natural natural) Bool)
(declare-const dummy2 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range3 temp___expr_39)))
(declare-sort sqrt_range 0)
(declare-fun sqrt_rangeqtint (sqrt_range) Int)
(assert (forall ((i sqrt_range)) (and (<= 0 (sqrt_rangeqtint i)) (<= (sqrt_rangeqtint i) 46340))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 46340)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (sqrt_range sqrt_range) Bool)
(declare-const dummy3 sqrt_range)
(declare-datatypes () ((sqrt_range__ref (mk_sqrt_range__ref (sqrt_range__content sqrt_range)))))
(define-fun sqrt_range__ref___projection ((a sqrt_range__ref)) sqrt_range (sqrt_range__content a))
(define-fun dynamic_invariant1 ((temp___expr_158 Int) (temp___is_init_154 Bool) (temp___skip_constant_155 Bool) (temp___do_toplevel_156 Bool) (temp___do_typ_inv_157 Bool)) Bool (=> (or (= temp___is_init_154 true) (<= 0 46340)) (in_range4 temp___expr_158)))
(declare-const n Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-sort upper_range 0)
(declare-fun upper_rangeqtint (upper_range) Int)
(assert (forall ((i upper_range)) (and (<= 0 (upper_rangeqtint i)) (<= (upper_rangeqtint i) 46341))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 46341)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq4 (upper_range upper_range) Bool)
(declare-const dummy4 upper_range)
(declare-datatypes () ((upper_range__ref (mk_upper_range__ref (upper_range__content upper_range)))))
(define-fun upper_range__ref___projection ((a upper_range__ref)) upper_range (upper_range__content a))
(define-fun dynamic_invariant2 ((temp___expr_165 Int) (temp___is_init_161 Bool) (temp___skip_constant_162 Bool) (temp___do_toplevel_163 Bool) (temp___do_typ_inv_164 Bool)) Bool (=> (or (= temp___is_init_161 true) (<= 0 46341)) (in_range5 temp___expr_165)))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant4 ((temp___expr_32 Int) (temp___is_init_28 Bool) (temp___skip_constant_29 Bool) (temp___do_toplevel_30 Bool) (temp___do_typ_inv_31 Bool)) Bool (=> (or (= temp___is_init_28 true) (<= (- 9223372036854775808) 9223372036854775807)) (in_range2 temp___expr_32)))
(declare-const lower Int)
(declare-const upper Int)
(declare-const halfway Int)
(declare-const result Int)
(declare-const lower1 Int)
(declare-const result1 Int)
(declare-const upper1 Int)
(declare-const lower2 Int)
(declare-const upper2 Int)
(declare-const halfway1 Int)
(assert (in_range3 n))
(assert (=> (<= 0 46340) (in_range4 lower)))
(assert (=> (<= 0 46341) (in_range5 upper)))
(assert (=> (<= 0 46340) (in_range4 halfway)))
(assert (= (mk_int__ref result) (mk_int__ref lower)))
(assert (= lower1 0))
(assert (= (mk_int__ref result1) (mk_int__ref upper)))
(assert (= upper1 46341))
(assert (and (<= (* lower2 lower2) n) (< n (* upper2 upper2))))
(assert (and (and (=> (<= 0 46340) (in_range4 halfway1)) (=> (<= 0 46340) (in_range4 lower2))) (=> (<= 0 46341) (in_range5 upper2))))
(assert (not (in_range2 (* upper2 upper2))))
(check-sat)
(exit)
