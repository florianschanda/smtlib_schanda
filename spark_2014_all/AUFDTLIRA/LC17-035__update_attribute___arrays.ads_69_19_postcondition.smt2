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
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort index 0)
(declare-fun indexqtint (index) Int)
(assert (forall ((i index)) (and (<= 1 (indexqtint i)) (<= (indexqtint i) 8))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 8)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (index index) Bool)
(declare-const dummy1 index)
(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))
(define-fun dynamic_invariant ((temp___expr_164 Int) (temp___is_init_160 Bool) (temp___skip_constant_161 Bool) (temp___do_toplevel_162 Bool) (temp___do_typ_inv_163 Bool)) Bool (=> (or (= temp___is_init_160 true) (<= 1 8)) (in_range1 temp___expr_164)))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const arr_in (Array Int integer))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const j Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-fun temp_____aggregate_def_368 ((Array Int integer) Int Int Int Int) (Array Int integer))
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(assert (forall ((temp___370 (Array Int integer))) (forall ((temp___371 Int) (temp___372 Int) (temp___373 Int) (temp___374 Int)) (let ((temp___369 (temp_____aggregate_def_368 temp___370 temp___371 temp___372 temp___373 temp___374))) (=> (and (and (and (dynamic_invariant temp___371 true true true true) (dynamic_invariant1 temp___372 true true true true)) (dynamic_invariant temp___373 true true true true)) (dynamic_invariant1 temp___374 true true true true)) (forall ((temp___375 Int)) (ite (= temp___375 temp___373) (= (to_rep (select temp___369 temp___375)) temp___374) (ite (= temp___375 temp___371) (= (to_rep (select temp___369 temp___375)) temp___372) (= (select temp___369 temp___375) (select temp___370 temp___375))))))))))
(declare-const arr (Array Int integer))
(declare-const arrays__swap_fun__result (Array Int integer))
(declare-const o integer)
(declare-const o1 (Array Int integer))
(declare-const o2 integer)
(declare-const o3 (Array Int integer))
(declare-const result (Array Int integer))
(declare-const arr1 (Array Int integer))
(declare-const result1 (Array Int integer))
(declare-const arr2 (Array Int integer))
(declare-const result2 (Array Int integer))
(declare-const arr3 (Array Int integer))
(declare-const result3 (Array Int integer))
(declare-const arrays__swap_fun__result1 (Array Int integer))
(declare-const arrays__swap_fun__result2 (Array Int integer))
(declare-const arrays__swap_fun__result3 (Array Int integer))
(declare-const arr4 (Array Int integer))
(declare-const arrays__swap_fun__result4 (Array Int integer))
(declare-const arr5 (Array Int integer))
(declare-const arrays__swap_fun__result5 (Array Int integer))
(declare-const result4 (Array Int integer))
(assert (in_range1 i))
(assert (in_range1 j))
(assert (= result arr))
(assert (= arr1 arr_in))
(assert (= (to_rep o) (to_rep (select arr_in j))))
(assert (= o1 (store arr1 i o)))
(assert (= result1 arr1))
(assert (= arr2 o1))
(assert (= (to_rep o2) (to_rep (select arr_in i))))
(assert (= o3 (store arr2 j o2)))
(assert (= result2 arr2))
(assert (= arr3 o3))
(assert (= arrays__swap_fun__result1 arrays__swap_fun__result2))
(assert (= arrays__swap_fun__result3 arrays__swap_fun__result1))
(assert (= result3 arrays__swap_fun__result))
(assert (= arrays__swap_fun__result1 arr3))
(assert (= (mk_map__ref arrays__swap_fun__result4) (mk_map__ref arrays__swap_fun__result2)))
(assert (= arr4 arr3))
(assert (= arrays__swap_fun__result5 arrays__swap_fun__result3))
(assert (= arr5 arr3))
(assert (= result4 arrays__swap_fun__result4))
(assert (not (= (bool_eq (temp_____aggregate_def_368 arrays__swap_fun__result4 i (to_rep (select arrays__swap_fun__result4 j)) j (to_rep (select arrays__swap_fun__result4 i))) 1 8 arr_in 1 8) true)))
(check-sat)
(exit)
