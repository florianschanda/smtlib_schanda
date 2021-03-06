(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTLIRA)
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
(declare-sort failure_reason 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (failure_reason failure_reason) Bool)
(declare-const dummy1 failure_reason)
(declare-datatypes () ((failure_reason__ref (mk_failure_reason__ref (failure_reason__content failure_reason)))))
(define-fun failure_reason__ref___projection ((a failure_reason__ref)) failure_reason (failure_reason__content a))
(declare-fun to_rep (failure_reason) Int)
(declare-fun of_rep (Int) failure_reason)
(assert (forall ((x failure_reason)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x failure_reason)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__test__search_result__found Bool)))))
(define-fun us_split_discrs___4__projection ((a us_split_discrs)) Bool (rec__test__search_result__found a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___3__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__test__search_result__index integer) (rec__test__search_result__reason failure_reason)))))
(define-fun us_split_fields_Index__projection ((a us_split_fields)) integer (rec__test__search_result__index a))
(define-fun us_split_fields_Reason__projection ((a us_split_fields)) failure_reason (rec__test__search_result__reason a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___4__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields) (attr__constrained Bool)))))
(define-fun us_rep___7__projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___8__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___9__projection ((a us_rep)) Bool (attr__constrained a))
(define-fun test__search_result__index__pred ((a us_rep)) Bool (= (ite (rec__test__search_result__found (us_split_discrs1 a)) 1 0) 1))
(define-fun test__search_result__reason__pred ((a us_rep)) Bool (= (ite (rec__test__search_result__found (us_split_discrs1 a)) 1 0) 0))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (rec__test__search_result__found (us_split_discrs1 a)) (rec__test__search_result__found (us_split_discrs1 b))) (and (=> (test__search_result__index__pred a) (= (to_rep1 (rec__test__search_result__index (us_split_fields1 a))) (to_rep1 (rec__test__search_result__index (us_split_fields1 b))))) (=> (test__search_result__reason__pred a) (= (to_rep (rec__test__search_result__reason (us_split_fields1 a))) (to_rep (rec__test__search_result__reason (us_split_fields1 b))))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const test__search_result__found__first__bit Int)
(declare-const test__search_result__found__last__bit Int)
(declare-const test__search_result__found__position Int)
(assert (<= 0 test__search_result__found__first__bit))
(assert (< test__search_result__found__first__bit test__search_result__found__last__bit))
(assert (<= 0 test__search_result__found__position))
(declare-const test__search_result__index__first__bit Int)
(declare-const test__search_result__index__last__bit Int)
(declare-const test__search_result__index__position Int)
(assert (<= 0 test__search_result__index__first__bit))
(assert (< test__search_result__index__first__bit test__search_result__index__last__bit))
(assert (<= 0 test__search_result__index__position))
(declare-const test__search_result__reason__first__bit Int)
(declare-const test__search_result__reason__last__bit Int)
(declare-const test__search_result__reason__position Int)
(assert (<= 0 test__search_result__reason__first__bit))
(assert (< test__search_result__reason__first__bit test__search_result__reason__last__bit))
(assert (<= 0 test__search_result__reason__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((search_result__ref (mk_search_result__ref (search_result__content us_rep)))))
(define-fun search_result__ref___projection ((a search_result__ref)) us_rep (search_result__content a))
(define-fun default_initial_assumption ((temp___expr_242 us_rep) (temp___skip_top_level_243 Bool)) Bool (and (= (attr__constrained temp___expr_242) false) (= (rec__test__search_result__found (us_split_discrs1 temp___expr_242)) (distinct 0 0))))
(declare-const x__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const tmp Bool)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun in_range3 ((rec__test__search_result__found1 Bool) (a us_rep)) Bool (= rec__test__search_result__found1 (rec__test__search_result__found (us_split_discrs1 a))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const test__search_result__found__first__bit1 Int)
(declare-const test__search_result__found__last__bit1 Int)
(declare-const test__search_result__found__position1 Int)
(assert (<= 0 test__search_result__found__first__bit1))
(assert (< test__search_result__found__first__bit1 test__search_result__found__last__bit1))
(assert (<= 0 test__search_result__found__position1))
(declare-const test__search_result__index__first__bit1 Int)
(declare-const test__search_result__index__last__bit1 Int)
(declare-const test__search_result__index__position1 Int)
(assert (<= 0 test__search_result__index__first__bit1))
(assert (< test__search_result__index__first__bit1 test__search_result__index__last__bit1))
(assert (<= 0 test__search_result__index__position1))
(declare-const test__search_result__reason__first__bit1 Int)
(declare-const test__search_result__reason__last__bit1 Int)
(declare-const test__search_result__reason__position1 Int)
(assert (<= 0 test__search_result__reason__first__bit1))
(assert (< test__search_result__reason__first__bit1 test__search_result__reason__last__bit1))
(assert (<= 0 test__search_result__reason__position1))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((trS__ref (mk_trS__ref (trS__content us_rep)))))
(define-fun trS__ref___projection ((a trS__ref)) us_rep (trS__content a))
(define-fun dynamic_invariant ((temp___expr_251 us_rep) (temp___is_init_247 Bool) (temp___skip_constant_248 Bool) (temp___do_toplevel_249 Bool) (temp___do_typ_inv_250 Bool)) Bool (and (=> (not (= temp___skip_constant_248 true)) (in_range3 tmp temp___expr_251)) (= (attr__constrained temp___expr_251) true)))
(define-fun default_initial_assumption1 ((temp___expr_253 us_rep) (temp___skip_top_level_254 Bool)) Bool (and (= (attr__constrained temp___expr_253) true) (= (rec__test__search_result__found (us_split_discrs1 temp___expr_253)) tmp)))
(declare-const r__split_discrs us_split_discrs)
(declare-const r__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun in_range4 ((rec__test__search_result__found1 Bool) (a us_rep)) Bool (= rec__test__search_result__found1 (rec__test__search_result__found (us_split_discrs1 a))))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const test__search_result__found__first__bit2 Int)
(declare-const test__search_result__found__last__bit2 Int)
(declare-const test__search_result__found__position2 Int)
(assert (<= 0 test__search_result__found__first__bit2))
(assert (< test__search_result__found__first__bit2 test__search_result__found__last__bit2))
(assert (<= 0 test__search_result__found__position2))
(declare-const test__search_result__index__first__bit2 Int)
(declare-const test__search_result__index__last__bit2 Int)
(declare-const test__search_result__index__position2 Int)
(assert (<= 0 test__search_result__index__first__bit2))
(assert (< test__search_result__index__first__bit2 test__search_result__index__last__bit2))
(assert (<= 0 test__search_result__index__position2))
(declare-const test__search_result__reason__first__bit2 Int)
(declare-const test__search_result__reason__last__bit2 Int)
(declare-const test__search_result__reason__position2 Int)
(assert (<= 0 test__search_result__reason__first__bit2))
(assert (< test__search_result__reason__first__bit2 test__search_result__reason__last__bit2))
(assert (<= 0 test__search_result__reason__position2))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((t38b__ref (mk_t38b__ref (t38b__content us_rep)))))
(define-fun t38b__ref___projection ((a t38b__ref)) us_rep (t38b__content a))
(declare-const r40b Bool)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant2 ((temp___expr_233 Int) (temp___is_init_229 Bool) (temp___skip_constant_230 Bool) (temp___do_toplevel_231 Bool) (temp___do_typ_inv_232 Bool)) Bool (=> (or (= temp___is_init_229 true) (<= 0 2)) (in_range2 temp___expr_233)))
(declare-const x__split_discrs Bool)
(assert (= x__split_discrs tmp))
(assert (not (in_range (ite tmp 1 0))))
(check-sat)
(exit)
