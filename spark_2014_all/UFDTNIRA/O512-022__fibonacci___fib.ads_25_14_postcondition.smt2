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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(declare-fun factorial (Int) Int)
(declare-fun factorial__function_guard (Int Int) Bool)
(assert (forall ((n Int)) (! (=> (and (dynamic_invariant n true true true true) (<= n 7)) (dynamic_invariant (factorial n) true false true true)) :pattern ((factorial n)))))
(declare-const n1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const n2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (integer integer) Bool)
(declare-const dummy2 integer)
(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content integer)))))
(define-fun t5b__ref___projection ((a t5b__ref)) integer (t5b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (integer integer) Bool)
(declare-const dummy3 integer)
(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content integer)))))
(define-fun t6b__ref___projection ((a t6b__ref)) integer (t6b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-const p1 Int)
(declare-const p2 Int)
(declare-const i Int)
(declare-const i1 Int)
(declare-const temp___201 Int)
(declare-const temp___200 Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const temp___205 Int)
(declare-const temp___204 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const result Int)
(declare-const p11 Int)
(declare-const result1 Int)
(declare-const i2 Int)
(declare-const p12 Int)
(declare-const i3 Int)
(declare-const result2 Int)
(declare-const p13 Int)
(declare-const p14 Int)
(declare-const i4 Int)
(declare-const p15 Int)
(declare-const i5 Int)
(declare-const p16 Int)
(declare-const i6 Int)
(declare-const p17 Int)
(declare-const i7 Int)
(declare-const result3 Int)
(declare-const p21 Int)
(declare-const result4 Int)
(declare-const i8 Int)
(declare-const p22 Int)
(declare-const i9 Int)
(declare-const result5 Int)
(declare-const p23 Int)
(declare-const p24 int__ref)
(declare-const i10 int__ref)
(declare-const p25 Int)
(declare-const i11 Int)
(declare-const p26 int__ref)
(declare-const i12 int__ref)
(declare-const p27 Int)
(declare-const i13 Int)
(declare-const p18 int__ref)
(declare-const p28 int__ref)
(declare-const i14 int__ref)
(declare-const i15 int__ref)
(declare-const p19 Int)
(declare-const p29 Int)
(declare-const i16 Int)
(declare-const i17 Int)
(define-fun i18 () int__ref (mk_int__ref i6))
(define-fun p110 () int__ref (mk_int__ref p16))
(assert (in_range2 n1))
(assert (in_range2 n2))
(assert (=> (<= 0 2147483647) (in_range2 p1)))
(assert (=> (<= 0 2147483647) (in_range2 p2)))
(assert (and (= n1 n2) (<= n1 7)))
(assert (= (mk_int__ref result) (mk_int__ref p1)))
(assert (= p11 1))
(assert (= (mk_int__ref result1) (mk_int__ref i)))
(assert (= i2 2))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= temp___201 i2)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= temp___200 p11)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= p12 (factorial (- i3 1)))))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (and (and (=> (<= 0 2147483647) (in_range2 p12)) (=> (<= 2 n1) (dynamic_property 2 n1 i3))) (and (<= 2 i3) (<= i3 n1)))))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (and (= o (* i3 p12)) (in_range1 (* i3 p12)))))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (and (= o1 o) (in_range2 o))))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= p12 result2)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= p13 o1)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= i3 n1)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= i3 i4)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= p13 p14)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= i5 i3)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= p15 p13)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= i18 (mk_int__ref i4))))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= p110 (mk_int__ref p14))))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= i7 i5)))
(assert (=> (and (<= 2 i2) (<= i2 n1)) (= p17 p15)))
(assert (=> (not (and (<= 2 i2) (<= i2 n1))) (= i2 i6)))
(assert (=> (not (and (<= 2 i2) (<= i2 n1))) (= p11 p16)))
(assert (=> (not (and (<= 2 i2) (<= i2 n1))) (= i7 i2)))
(assert (=> (not (and (<= 2 i2) (<= i2 n1))) (= p17 p11)))
(assert (= (mk_int__ref result3) (mk_int__ref p2)))
(assert (= p21 1))
(assert (= (mk_int__ref result4) (mk_int__ref i1)))
(assert (= i8 2))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= temp___205 p21)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= temp___204 i8)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= p22 (factorial (- i9 1)))))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (and (and (=> (<= 2 n2) (dynamic_property1 2 n2 i9)) (=> (<= 0 2147483647) (in_range2 p22))) (and (<= 2 i9) (<= i9 n2)))))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (and (= o2 (* i9 p22)) (in_range1 (* i9 p22)))))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (and (= o3 o2) (in_range2 o2))))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= p22 result5)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= p23 o3)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= i9 n2)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= i10 (mk_int__ref i9))))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= p24 (mk_int__ref p23))))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= i11 i9)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= p25 p23)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= i12 i10)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= p26 p24)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= i13 i11)))
(assert (=> (and (<= 2 i8) (<= i8 n2)) (= p27 p25)))
(assert (=> (not (and (<= 2 i8) (<= i8 n2))) (= i12 (mk_int__ref i8))))
(assert (=> (not (and (<= 2 i8) (<= i8 n2))) (= p26 (mk_int__ref p21))))
(assert (=> (not (and (<= 2 i8) (<= i8 n2))) (= i13 i8)))
(assert (=> (not (and (<= 2 i8) (<= i8 n2))) (= p27 p21)))
(assert (= i15 i12))
(assert (= i14 i18))
(assert (= p28 p26))
(assert (= p18 p110))
(assert (= i17 i13))
(assert (= i16 i7))
(assert (= p29 p27))
(assert (= p19 p17))
(assert (not (= (int__content p18) (int__content p28))))
(check-sat)
(exit)
