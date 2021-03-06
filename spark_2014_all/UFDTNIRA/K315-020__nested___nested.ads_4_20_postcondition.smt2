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
(declare-sort t1b 0)
(declare-fun t1bqtint (t1b) Int)
(assert (forall ((i t1b)) (and (<= 1 (t1bqtint i)) (<= (t1bqtint i) 10))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (t1b t1b) Bool)
(declare-const dummy1 t1b)
(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort t2b 0)
(declare-fun t2bqtint (t2b) Int)
(assert (forall ((i t2b)) (and (<= 1 (t2bqtint i)) (<= (t2bqtint i) 10))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (t2b t2b) Bool)
(declare-const dummy2 t2b)
(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content t2b)))))
(define-fun t2b__ref___projection ((a t2b__ref)) t2b (t2b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const x Int)
(declare-const i Int)
(declare-const j Int)
(declare-const nested__search__result Int)
(declare-const temp___161 Int)
(declare-const temp___160 Int)
(declare-const temp___156 Int)
(declare-const temp___157 Int)
(declare-const temp___159 Int)
(declare-const temp___158 Int)
(declare-const o Int)
(declare-const j1 Int)
(declare-const result Int)
(declare-const x1 Int)
(declare-const result1 Int)
(declare-const i1 Int)
(declare-const x2 Int)
(declare-const i2 Int)
(declare-const j2 Int)
(declare-const result2 Int)
(declare-const x3 Int)
(declare-const result3 Int)
(declare-const j3 Int)
(declare-const x4 Int)
(declare-const j4 Int)
(declare-const result4 Int)
(declare-const x5 Int)
(declare-const x6 Int)
(declare-const j5 Int)
(declare-const x7 Int)
(declare-const j6 Int)
(declare-const x8 Int)
(declare-const j7 Int)
(declare-const x9 Int)
(declare-const j8 Int)
(declare-const x10 Int)
(declare-const j9 Int)
(declare-const x11 Int)
(declare-const j10 Int)
(declare-const x12 int__ref)
(declare-const i3 int__ref)
(declare-const j11 int__ref)
(declare-const x13 Int)
(declare-const i4 Int)
(declare-const j12 Int)
(declare-const x14 int__ref)
(declare-const i5 int__ref)
(declare-const j13 int__ref)
(declare-const x15 Int)
(declare-const i6 Int)
(declare-const j14 Int)
(declare-const result5 int__ref)
(declare-const nested__search__result1 Int)
(declare-const nested__search__result2 int__ref)
(declare-const nested__search__result3 Int)
(declare-const x16 int__ref)
(declare-const i7 int__ref)
(declare-const j15 int__ref)
(declare-const nested__search__result4 int__ref)
(declare-const x17 Int)
(declare-const i8 Int)
(declare-const j16 Int)
(declare-const nested__search__result5 Int)
(define-fun j17 () int__ref (mk_int__ref j9))
(define-fun x18 () int__ref (mk_int__ref x10))
(define-fun j18 () int__ref (mk_int__ref j7))
(define-fun x19 () int__ref (mk_int__ref x8))
(declare-const result6 Int)
(assert (= (mk_int__ref result) (mk_int__ref x)))
(assert (= x1 0))
(assert (in_range1 x1))
(assert (= (mk_int__ref result1) (mk_int__ref i)))
(assert (= i1 1))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= temp___161 i1)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= temp___160 x1)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= x2 (* (- i2 1) 10))))
(assert (=> (and (<= 1 i1) (<= i1 10)) (and (and (=> (<= (- 2147483648) 2147483647) (in_range1 x2)) (=> (<= 1 10) (in_range2 i2))) (and (<= 1 i2) (<= i2 10)))))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= x2 result2)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= x3 0)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (or (and (and (and (= j4 j9) (= x5 x10)) (and (= j10 j4) (= x11 x5))) (and (= temp___156 1) (and (= temp___157 10) (and (and (= j2 result3) (= j3 temp___156)) (and (and (<= temp___156 j3) (<= j3 temp___157)) (and (= temp___159 j3) (and (= temp___158 x3) (and (= x4 (* i2 (- j4 1))) (and (and (and (=> (<= (- 2147483648) 2147483647) (in_range1 x4)) (=> (<= 1 10) (in_range3 j4))) (and (<= 1 j4) (<= j4 10))) (and (and (and (= o (* i2 j4)) (in_range1 (* i2 j4))) (and (= x4 result4) (= x5 o))) (<= 45 x5))))))))))) (and (and (and (= j2 result3) (= j3 1)) (ite (and (<= 1 j3) (<= j3 10)) (and (and (and (= temp___159 j3) (and (= temp___158 x3) (and (= x4 (* i2 (- j4 1))) (and (and (and (=> (<= (- 2147483648) 2147483647) (in_range1 x4)) (=> (<= 1 10) (in_range3 j4))) (and (<= 1 j4) (<= j4 10))) (and (and (and (= o (* i2 j4)) (in_range1 (* i2 j4))) (and (= x4 result4) (= x5 o))) (and (not (<= 45 x5)) (= j4 10))))))) (and (and (= j4 j5) (= x5 x6)) (and (= j6 j4) (= x7 x5)))) (and (and (= j18 (mk_int__ref j5)) (= x19 (mk_int__ref x6))) (and (= j8 j6) (= x9 x7)))) (and (and (= j3 j7) (= x3 x8)) (and (= j8 j3) (= x9 x3))))) (and (and (and (= j17 j18) (= x18 x19)) (and (= j10 j8) (= x11 x9))) (= i2 10))))))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= j11 j17)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= i3 (mk_int__ref i2))))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= x12 x18)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= j12 j10)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= i4 i2)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= x13 x11)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= j13 j11)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= i5 i3)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= x14 x12)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= j14 j12)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= i6 i4)))
(assert (=> (and (<= 1 i1) (<= i1 10)) (= x15 x13)))
(assert (=> (not (and (<= 1 i1) (<= i1 10))) (= j13 (mk_int__ref j))))
(assert (=> (not (and (<= 1 i1) (<= i1 10))) (= i5 (mk_int__ref i1))))
(assert (=> (not (and (<= 1 i1) (<= i1 10))) (= x14 (mk_int__ref x1))))
(assert (=> (not (and (<= 1 i1) (<= i1 10))) (= j14 j1)))
(assert (=> (not (and (<= 1 i1) (<= i1 10))) (= i6 i1)))
(assert (=> (not (and (<= 1 i1) (<= i1 10))) (= x15 x1)))
(assert (= nested__search__result2 (mk_int__ref nested__search__result1)))
(assert (= nested__search__result3 nested__search__result1))
(assert (= result5 (mk_int__ref nested__search__result)))
(assert (= nested__search__result1 (int__content x14)))
(assert (= nested__search__result4 nested__search__result2))
(assert (= j15 j13))
(assert (= i7 i5))
(assert (= x16 x14))
(assert (= nested__search__result5 nested__search__result3))
(assert (= j16 j14))
(assert (= i8 i6))
(assert (= x17 x15))
(assert (= result6 (int__content nested__search__result4)))
(assert (not (<= 44 (int__content nested__search__result4))))
(check-sat)
(exit)
