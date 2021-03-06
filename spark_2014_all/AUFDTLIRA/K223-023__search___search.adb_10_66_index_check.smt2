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
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-fun no_v_in_range ((Array Int integer) Int Int Int) Bool)
(declare-fun no_v_in_range__function_guard (Bool (Array Int integer) Int Int Int) Bool)
(declare-sort position 0)
(declare-fun positionqtint (position) Int)
(assert (forall ((i position)) (and (<= 1 (positionqtint i)) (<= (positionqtint i) 10))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (position position) Bool)
(declare-const dummy1 position)
(declare-datatypes () ((position__ref (mk_position__ref (position__content position)))))
(define-fun position__ref___projection ((a position__ref)) position (position__content a))
(define-fun dynamic_invariant1 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 1 10)) (in_range2 temp___expr_159)))
(assert true)
(assert (forall ((t (Array Int integer))) (forall ((v Int) (low Int) (up Int)) (! (= (= (no_v_in_range t v low up) true) (forall ((pos Int)) (=> (and (<= low pos) (<= pos up)) (not (= (to_rep (select t pos)) v))))) :pattern ((no_v_in_range t v low up))))))
(declare-const t (Array Int integer))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const v Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort t1b 0)
(declare-fun t1bqtint (t1b) Int)
(assert (forall ((i t1b)) (and (<= 1 (t1bqtint i)) (<= (t1bqtint i) 10))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (t1b t1b) Bool)
(declare-const dummy2 t1b)
(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const pos Int)
(declare-const i Int)
(declare-const j Int)
(declare-const o Int)
(declare-const o1 integer)
(declare-const o2 Int)
(declare-const j1 Int)
(declare-const o3 Int)
(declare-const o4 Bool)
(declare-const o5 Bool)
(declare-const o6 Bool)
(declare-const o7 Bool)
(declare-const result Int)
(declare-const pos1 Int)
(declare-const result1 Int)
(declare-const i1 Int)
(declare-const pos2 Int)
(declare-const i2 Int)
(declare-const result2 Bool)
(assert (in_range1 v))
(assert (= (mk_int__ref result) (mk_int__ref pos)))
(assert (= pos1 0))
(assert (in_range1 pos1))
(assert (= (mk_int__ref result1) (mk_int__ref i)))
(assert (= i1 1))
(assert (<= 1 i1))
(assert (<= i1 10))
(assert (or (and (= pos2 0) (forall ((j2 Int)) (=> (and (<= 1 j2) (<= j2 (- i2 1))) (not (= (to_rep (select t j2)) v))))) (and (= (to_rep (select t pos2)) v) (forall ((j2 Int)) (=> (and (<= 1 j2) (<= j2 (- pos2 1))) (not (= (to_rep (select t j2)) v)))))))
(assert (and (and (=> (<= (- 2147483648) 2147483647) (in_range1 pos2)) (=> (<= 1 10) (in_range3 i2))) (and (<= 1 i2) (<= i2 10))))
(assert (and (= o3 (- pos2 1)) (in_range1 (- pos2 1))))
(assert (= o4 (ite (<= j1 o3) true false)))
(assert (= result2 (ite (<= 1 j1) o4 false)))
(assert (= (= o5 true) (forall ((j2 Int)) (=> (and (<= 1 j2) (<= j2 (- pos2 1))) (not (= (to_rep (select t j2)) v))))))
(assert (and (<= 1 pos2) (<= pos2 10)))
(assert (= o pos2))
(assert (= o1 (select t o)))
(assert (= o2 (to_rep o1)))
(assert (= o6 (ite (= o2 v) true false)))
(assert (= o7 (ite (= o6 true) o5 false)))
(assert (<= 1 j))
(assert (<= j (- i2 1)))
(assert (not (<= j 10)))
(check-sat)
(exit)
