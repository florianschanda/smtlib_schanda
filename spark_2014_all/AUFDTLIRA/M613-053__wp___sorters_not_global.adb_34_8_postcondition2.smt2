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
(declare-sort index_type 0)
(declare-fun index_typeqtint (index_type) Int)
(assert (forall ((i index_type)) (and (<= 1 (index_typeqtint i)) (<= (index_typeqtint i) 64))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 64)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (index_type index_type) Bool)
(declare-const dummy1 index_type)
(declare-datatypes () ((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type (index_type__content a))
(define-fun dynamic_invariant ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 1 64)) (in_range2 temp___expr_166)))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const starting_at Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const limit Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const values (Array Int integer))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (integer integer) Bool)
(declare-const dummy2 integer)
(declare-datatypes () ((t9b__ref (mk_t9b__ref (t9b__content integer)))))
(define-fun t9b__ref___projection ((a t9b__ref)) integer (t9b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-const min Int)
(declare-const index Int)
(declare-const sorters_not_global__index_of_minimum__result Int)
(declare-const temp___202 Int)
(declare-const temp___201 Int)
(declare-const temp___203 Int)
(declare-const result Int)
(declare-const min1 Int)
(declare-const result1 Int)
(declare-const index1 Int)
(declare-const min2 Int)
(declare-const index2 Int)
(declare-const result2 Int)
(declare-const min3 Int)
(declare-const min4 Int)
(declare-const index3 Int)
(declare-const min5 Int)
(declare-const index4 Int)
(declare-const min6 Int)
(declare-const index5 Int)
(declare-const min7 Int)
(declare-const index6 Int)
(declare-const result3 Int)
(declare-const sorters_not_global__index_of_minimum__result1 Int)
(declare-const sorters_not_global__index_of_minimum__result2 Int)
(declare-const sorters_not_global__index_of_minimum__result3 Int)
(declare-const min8 Int)
(declare-const index7 Int)
(declare-const sorters_not_global__index_of_minimum__result4 Int)
(declare-const min9 Int)
(declare-const index8 Int)
(declare-const sorters_not_global__index_of_minimum__result5 Int)
(define-fun index9 () int__ref (mk_int__ref index5))
(define-fun min10 () int__ref (mk_int__ref min6))
(declare-const result4 Int)
(assert (in_range2 starting_at))
(assert (in_range2 limit))
(assert (<= starting_at limit))
(assert (=> (<= 1 64) (in_range2 min)))
(assert (= (mk_int__ref result) (mk_int__ref min)))
(assert (= min1 starting_at))
(assert (= (mk_int__ref result1) (mk_int__ref index)))
(assert (= index1 (+ starting_at 1)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= temp___202 index1)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= temp___201 min1)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= temp___203 limit)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (and (and (and (= limit temp___203) (<= starting_at min2)) (<= min2 limit)) (forall ((j Int)) (=> (and (<= starting_at j) (<= j (- index2 1))) (<= (to_rep (select values min2)) (to_rep (select values j))))))))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (and (and (=> (<= 1 64) (in_range2 min2)) (=> (<= (+ starting_at 1) limit) (dynamic_property (+ starting_at 1) limit index2))) (and (<= (+ starting_at 1) index2) (<= index2 limit)))))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (=> (< (to_rep (select values index2)) (to_rep (select values min2))) (= min2 result2))))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (=> (< (to_rep (select values index2)) (to_rep (select values min2))) (= min3 index2))))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (=> (not (< (to_rep (select values index2)) (to_rep (select values min2)))) (= min3 min2))))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= index2 limit)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= index2 index3)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= min3 min4)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= index4 index2)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= min5 min3)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= index9 (mk_int__ref index3))))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= min10 (mk_int__ref min4))))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= index6 index4)))
(assert (=> (and (<= (+ starting_at 1) index1) (<= index1 limit)) (= min7 min5)))
(assert (=> (not (and (<= (+ starting_at 1) index1) (<= index1 limit))) (= index1 index5)))
(assert (=> (not (and (<= (+ starting_at 1) index1) (<= index1 limit))) (= min1 min6)))
(assert (=> (not (and (<= (+ starting_at 1) index1) (<= index1 limit))) (= index6 index1)))
(assert (=> (not (and (<= (+ starting_at 1) index1) (<= index1 limit))) (= min7 min1)))
(assert (= sorters_not_global__index_of_minimum__result1 sorters_not_global__index_of_minimum__result2))
(assert (= sorters_not_global__index_of_minimum__result3 sorters_not_global__index_of_minimum__result1))
(assert (= (mk_int__ref result3) (mk_int__ref sorters_not_global__index_of_minimum__result)))
(assert (= sorters_not_global__index_of_minimum__result1 min6))
(assert (= (mk_int__ref sorters_not_global__index_of_minimum__result4) (mk_int__ref sorters_not_global__index_of_minimum__result2)))
(assert (= (mk_int__ref index7) index9))
(assert (= (mk_int__ref min8) min10))
(assert (= sorters_not_global__index_of_minimum__result5 sorters_not_global__index_of_minimum__result3))
(assert (= index8 index6))
(assert (= min9 min7))
(assert (= result4 sorters_not_global__index_of_minimum__result4))
(assert (not (<= starting_at sorters_not_global__index_of_minimum__result4)))
(check-sat)
(exit)
