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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-fun too_big (tuple0) Int)
(declare-fun too_big__function_guard (Int tuple0) Bool)
(assert (forall ((us_void_param tuple0)) (! (dynamic_invariant (too_big us_void_param) true false true true) :pattern ((too_big us_void_param)))))
(assert (forall ((us_void_param tuple0)) (! (= (too_big us_void_param) 99) :pattern ((too_big us_void_param)))))
(declare-sort any_priority 0)
(declare-fun any_priorityqtint (any_priority) Int)
(assert (forall ((i any_priority)) (and (<= 0 (any_priorityqtint i)) (<= (any_priorityqtint i) 98))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 98)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (any_priority any_priority) Bool)
(declare-const dummy1 any_priority)
(declare-datatypes () ((any_priority__ref (mk_any_priority__ref (any_priority__content any_priority)))))
(define-fun any_priority__ref___projection ((a any_priority__ref)) any_priority (any_priority__content a))
(declare-const r1s Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__interrupt_priority__no_interrupt_needed_1__c any_priority)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) any_priority (rec__interrupt_priority__no_interrupt_needed_1__c a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__interrupt_priority__no_interrupt_needed_1__i integer)))))
(define-fun us_split_fields_I__projection ((a us_split_fields)) integer (rec__interrupt_priority__no_interrupt_needed_1__i a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const interrupt_priority__no_interrupt_needed_1__c__first__bit Int)
(declare-const interrupt_priority__no_interrupt_needed_1__c__last__bit Int)
(declare-const interrupt_priority__no_interrupt_needed_1__c__position Int)
(assert (<= 0 interrupt_priority__no_interrupt_needed_1__c__first__bit))
(assert (< interrupt_priority__no_interrupt_needed_1__c__first__bit interrupt_priority__no_interrupt_needed_1__c__last__bit))
(assert (<= 0 interrupt_priority__no_interrupt_needed_1__c__position))
(declare-const interrupt_priority__no_interrupt_needed_1__i__first__bit Int)
(declare-const interrupt_priority__no_interrupt_needed_1__i__last__bit Int)
(declare-const interrupt_priority__no_interrupt_needed_1__i__position Int)
(assert (<= 0 interrupt_priority__no_interrupt_needed_1__i__first__bit))
(assert (< interrupt_priority__no_interrupt_needed_1__i__first__bit interrupt_priority__no_interrupt_needed_1__i__last__bit))
(assert (<= 0 interrupt_priority__no_interrupt_needed_1__i__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-datatypes () ((no_interrupt_needed_1__ref (mk_no_interrupt_needed_1__ref (no_interrupt_needed_1__content us_rep)))))
(define-fun no_interrupt_needed_1__ref___projection ((a no_interrupt_needed_1__ref)) us_rep (no_interrupt_needed_1__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__interrupt_priority__no_interrupt_needed_1__i1 integer)))))
(define-fun us_split_fields_I__2__projection ((a us_split_fields2)) integer (rec__interrupt_priority__no_interrupt_needed_1__i1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs2 us_split_discrs) (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_discrs (us_split_discrs2 a))
(define-fun us_rep___4__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (us_split_discrs2 a) (mk___split_fields (rec__interrupt_priority__no_interrupt_needed_1__i1 (us_split_fields3 a)))))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (us_split_discrs1 r) (mk___split_fields1 (rec__interrupt_priority__no_interrupt_needed_1__i (us_split_fields1 r)))))
(define-fun to_rep ((x any_priority)) Int (any_priorityqtint x))
(declare-fun of_rep (Int) any_priority)
(assert (forall ((x any_priority)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x any_priority)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun in_range2 ((rec__interrupt_priority__no_interrupt_needed_1__c1 Int) (a us_rep)) Bool (= rec__interrupt_priority__no_interrupt_needed_1__c1 (to_rep (rec__interrupt_priority__no_interrupt_needed_1__c (us_split_discrs1 a)))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const interrupt_priority__no_interrupt_needed_1__c__first__bit1 Int)
(declare-const interrupt_priority__no_interrupt_needed_1__c__last__bit1 Int)
(declare-const interrupt_priority__no_interrupt_needed_1__c__position1 Int)
(assert (<= 0 interrupt_priority__no_interrupt_needed_1__c__first__bit1))
(assert (< interrupt_priority__no_interrupt_needed_1__c__first__bit1 interrupt_priority__no_interrupt_needed_1__c__last__bit1))
(assert (<= 0 interrupt_priority__no_interrupt_needed_1__c__position1))
(declare-const interrupt_priority__no_interrupt_needed_1__i__first__bit1 Int)
(declare-const interrupt_priority__no_interrupt_needed_1__i__last__bit1 Int)
(declare-const interrupt_priority__no_interrupt_needed_1__i__position1 Int)
(assert (<= 0 interrupt_priority__no_interrupt_needed_1__i__first__bit1))
(assert (< interrupt_priority__no_interrupt_needed_1__i__first__bit1 interrupt_priority__no_interrupt_needed_1__i__last__bit1))
(assert (<= 0 interrupt_priority__no_interrupt_needed_1__i__position1))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-datatypes () ((tp1S__ref (mk_tp1S__ref (tp1S__content us_rep1)))))
(define-fun tp1S__ref___projection ((a tp1S__ref)) us_rep1 (tp1S__content a))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun dynamic_invariant1 ((temp___expr_206 us_rep1) (temp___is_init_202 Bool) (temp___skip_constant_203 Bool) (temp___do_toplevel_204 Bool) (temp___do_typ_inv_205 Bool)) Bool (=> (not (= temp___skip_constant_203 true)) (in_range2 r1s (to_base temp___expr_206))))
(define-fun default_initial_assumption ((temp___expr_208 us_rep1) (temp___skip_top_level_209 Bool)) Bool (and (= (to_rep (rec__interrupt_priority__no_interrupt_needed_1__c (us_split_discrs2 temp___expr_208))) r1s) (= (to_rep1 (rec__interrupt_priority__no_interrupt_needed_1__i1 (us_split_fields3 temp___expr_208))) 0)))
(declare-const p1__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant2 ((temp___expr_179 Int) (temp___is_init_175 Bool) (temp___skip_constant_176 Bool) (temp___do_toplevel_177 Bool) (temp___do_typ_inv_178 Bool)) Bool (=> (or (= temp___is_init_175 true) (<= 0 98)) (in_range1 temp___expr_179)))
(declare-const bad__R1s__assume Int)
(assert (and (= bad__R1s__assume (too_big Tuple0)) (and (in_range bad__R1s__assume) (= bad__R1s__assume 99))))
(assert (= bad__R1s__assume r1s))
(assert (in_range r1s))
(assert (not (in_range1 r1s)))
(check-sat)
(exit)
