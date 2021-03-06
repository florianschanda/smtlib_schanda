(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFDTLIRA)
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
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort sensorids 0)
(declare-fun sensoridsqtint (sensorids) Int)
(assert (forall ((i sensorids)) (and (<= 1 (sensoridsqtint i)) (<= (sensoridsqtint i) 10))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (sensorids sensorids) Bool)
(declare-const dummy1 sensorids)
(declare-datatypes () ((sensorids__ref (mk_sensorids__ref (sensorids__content sensorids)))))
(define-fun sensorids__ref___projection ((a sensorids__ref)) sensorids (sensorids__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant1 ((temp___expr_192 Int) (temp___is_init_188 Bool) (temp___skip_constant_189 Bool) (temp___do_toplevel_190 Bool) (temp___do_typ_inv_191 Bool)) Bool (=> (or (= temp___is_init_188 true) (<= 1 10)) (in_range2 temp___expr_192)))
(declare-const rliteral integer)
(assert (= (integerqtint rliteral) 0))
(declare-const cache_v1 (Array Int integer))
(declare-const cache_v2 (Array Int integer))
(declare-const i Int)
(declare-const i1 Int)
(declare-const temp___395 (Array Int integer))
(declare-const temp___394 Int)
(declare-const cache_v11 (Array Int integer))
(declare-const result Int)
(declare-const i2 Int)
(declare-const result1 (Array Int integer))
(declare-const cache_v12 (Array Int integer))
(declare-const cache_v13 (Array Int integer))
(declare-const i3 Int)
(declare-const cache_v14 (Array Int integer))
(declare-const i4 Int)
(declare-const cache_v15 (Array Int integer))
(declare-const i5 Int)
(declare-const cache_v16 (Array Int integer))
(declare-const i6 Int)
(declare-const cache_v17 (Array Int integer))
(declare-const i7 Int)
(declare-const result2 Int)
(declare-const i8 Int)
(declare-const result3 (Array Int integer))
(declare-const cache_v21 (Array Int integer))
(define-fun cache_v18 () map__ref (mk_map__ref cache_v16))
(define-fun cache_v19 () map__ref (mk_map__ref cache_v1))
(assert (= (mk_int__ref result) (mk_int__ref i)))
(assert (= i2 1))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= temp___395 cache_v1)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= temp___394 i2)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= (mk_map__ref result1) cache_v19)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= cache_v12 (store cache_v1 i2 rliteral))))
(assert (=> (and (<= 1 i2) (<= i2 10)) (forall ((k Int)) (=> (and (<= 1 k) (<= k 10)) (=> (<= k i3) (= (to_rep (select cache_v13 k)) 0))))))
(assert (=> (and (<= 1 i2) (<= i2 10)) (and (and (=> (<= 1 10) (in_range2 i3)) (forall ((temp___396 Int)) (=> (and (<= 1 temp___396) (<= temp___396 10)) (=> (or (< 10 temp___396) (or (< temp___396 1) (< i3 temp___396))) (= (select cache_v13 temp___396) (select temp___395 temp___396)))))) (and (<= 1 i3) (<= i3 10)))))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= i3 10)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= i3 i4)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= cache_v13 cache_v14)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= i5 i3)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= cache_v15 cache_v13)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= (mk_int__ref i6) (mk_int__ref i4))))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= cache_v18 (mk_map__ref cache_v14))))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= i7 i5)))
(assert (=> (and (<= 1 i2) (<= i2 10)) (= cache_v17 cache_v15)))
(assert (=> (not (and (<= 1 i2) (<= i2 10))) (= i2 i6)))
(assert (=> (not (and (<= 1 i2) (<= i2 10))) (= cache_v18 cache_v19)))
(assert (=> (not (and (<= 1 i2) (<= i2 10))) (= i7 i2)))
(assert (=> (not (and (<= 1 i2) (<= i2 10))) (= cache_v17 cache_v11)))
(assert (= (mk_int__ref result2) (mk_int__ref i1)))
(assert (= i8 1))
(assert (<= 1 i8))
(assert (<= i8 10))
(assert (= (mk_map__ref result3) (mk_map__ref cache_v2)))
(assert (= cache_v21 (store cache_v2 i8 rliteral)))
(declare-const k Int)
(assert (<= 1 k))
(assert (<= k 10))
(assert (<= k i8))
(assert (not (= (to_rep (select cache_v21 k)) 0)))
(check-sat)
(exit)
