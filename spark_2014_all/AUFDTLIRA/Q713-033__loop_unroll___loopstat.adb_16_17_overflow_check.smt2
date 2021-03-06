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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const k Int)
(declare-const j Int)
(declare-const i Int)
(declare-const j1 Int)
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
(declare-const result Int)
(declare-const k1 Int)
(declare-const result1 Int)
(declare-const j2 Int)
(declare-const result2 Int)
(declare-const k2 Int)
(declare-const result3 Int)
(declare-const j3 Int)
(declare-const result4 Int)
(declare-const k3 Int)
(declare-const result5 Int)
(declare-const j4 Int)
(declare-const result6 Int)
(declare-const k4 Int)
(declare-const result7 Int)
(declare-const j5 Int)
(declare-const result8 Int)
(declare-const k5 Int)
(declare-const result9 Int)
(declare-const j6 Int)
(declare-const result10 Int)
(declare-const k6 Int)
(declare-const result11 Int)
(declare-const j7 Int)
(declare-const result12 Int)
(declare-const k7 Int)
(declare-const result13 Int)
(declare-const j8 Int)
(declare-const result14 Int)
(declare-const k8 Int)
(declare-const result15 int__ref)
(declare-const j9 Int)
(declare-const result16 int__ref)
(declare-const k9 Int)
(declare-const result17 int__ref)
(declare-const j10 Int)
(declare-const result18 int__ref)
(declare-const k10 Int)
(declare-const result19 int__ref)
(declare-const j11 Int)
(declare-const result20 int__ref)
(declare-const k11 Int)
(declare-const result21 int__ref)
(declare-const k12 Int)
(declare-const result22 int__ref)
(declare-const i1 Int)
(declare-const result23 int__ref)
(declare-const j12 Int)
(declare-const result24 int__ref)
(declare-const k13 Int)
(declare-const result25 int__ref)
(declare-const j13 Int)
(assert (=> (<= (- 2147483648) 2147483647) (in_range1 k)))
(assert (= result k))
(assert (= k1 0))
(assert (= (mk_int__ref result1) (mk_int__ref j)))
(assert (= j2 1))
(assert (and (= o (+ k1 1)) (in_range1 (+ k1 1))))
(assert (= k1 result2))
(assert (= k2 o))
(assert (= j2 result3))
(assert (= j3 2))
(assert (and (= o1 (+ k2 1)) (in_range1 (+ k2 1))))
(assert (= k2 result4))
(assert (= k3 o1))
(assert (= j3 result5))
(assert (= j4 3))
(assert (and (= o2 (+ k3 1)) (in_range1 (+ k3 1))))
(assert (= k3 result6))
(assert (= k4 o2))
(assert (= j4 result7))
(assert (= j5 4))
(assert (and (= o3 (+ k4 1)) (in_range1 (+ k4 1))))
(assert (= k4 result8))
(assert (= k5 o3))
(assert (= j5 result9))
(assert (= j6 5))
(assert (and (= o4 (+ k5 1)) (in_range1 (+ k5 1))))
(assert (= k5 result10))
(assert (= k6 o4))
(assert (= j6 result11))
(assert (= j7 6))
(assert (and (= o5 (+ k6 1)) (in_range1 (+ k6 1))))
(assert (= k6 result12))
(assert (= k7 o5))
(assert (= j7 result13))
(assert (= j8 7))
(assert (and (= o6 (+ k7 1)) (in_range1 (+ k7 1))))
(assert (= k7 result14))
(assert (= k8 o6))
(assert (= result15 (mk_int__ref j8)))
(assert (= j9 8))
(assert (and (= o7 (+ k8 1)) (in_range1 (+ k8 1))))
(assert (= result16 (mk_int__ref k8)))
(assert (= k9 o7))
(assert (= result17 (mk_int__ref j9)))
(assert (= j10 9))
(assert (and (= o8 (+ k9 1)) (in_range1 (+ k9 1))))
(assert (= result18 (mk_int__ref k9)))
(assert (= k10 o8))
(assert (= result19 (mk_int__ref j10)))
(assert (= j11 10))
(assert (and (= o9 (+ k10 1)) (in_range1 (+ k10 1))))
(assert (= result20 (mk_int__ref k10)))
(assert (= k11 o9))
(assert (= k11 10))
(assert (= result21 (mk_int__ref k11)))
(assert (= k12 0))
(assert (= result22 (mk_int__ref i)))
(assert (= i1 1))
(assert (= result23 (mk_int__ref j1)))
(assert (= j12 1))
(assert (and (= o10 (+ k12 1)) (in_range1 (+ k12 1))))
(assert (= result24 (mk_int__ref k12)))
(assert (= k13 o10))
(assert (= result25 (mk_int__ref j12)))
(assert (= j13 2))
(assert (not (in_range1 (+ k13 1))))
(check-sat)
(exit)
