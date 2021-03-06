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
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-sort us_rep 0)
(declare-fun bool_eq (us_rep us_rep) Bool)
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep (sequence__content a))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(declare-sort count_type 0)
(declare-fun count_typeqtint (count_type) Int)
(assert (forall ((i count_type)) (and (<= 0 (count_typeqtint i)) (<= (count_typeqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq2 (count_type count_type) Bool)
(declare-const dummy2 count_type)
(declare-datatypes () ((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type (count_type__content a))
(define-fun dynamic_invariant ((temp___expr_241 Int) (temp___is_init_237 Bool) (temp___skip_constant_238 Bool) (temp___do_toplevel_239 Bool) (temp___do_typ_inv_240 Bool)) Bool (=> (or (= temp___is_init_237 true) (<= 0 2147483647)) (in_range1 temp___expr_241)))
(define-fun in_range2 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Bool)
(define-fun last ((container us_rep)) Int (+ 0 (length container)))
(declare-fun last__function_guard (Int us_rep) Bool)
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__indefinite_bounded_tagged__t__c integer) (rec__ext__ us_private)))))
(define-fun us_split_fields_C__projection ((a us_split_fields)) integer (rec__indefinite_bounded_tagged__t__c a))
(define-fun us_split_fields___projection ((a us_split_fields)) us_private (rec__ext__ a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep1 (mk___rep (us_split_fields1 us_split_fields) (attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep1)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___2__projection ((a us_rep1)) Int (attr__tag a))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (= (to_rep (rec__indefinite_bounded_tagged__t__c (us_split_fields1 a))) (to_rep (rec__indefinite_bounded_tagged__t__c (us_split_fields1 b)))) true false))
(declare-fun us_dispatch_eq (us_rep1 us_rep1) Bool)
(declare-const us_tag Int)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const indefinite_bounded_tagged__t__c__first__bit Int)
(declare-const indefinite_bounded_tagged__t__c__last__bit Int)
(declare-const indefinite_bounded_tagged__t__c__position Int)
(assert (<= 0 indefinite_bounded_tagged__t__c__first__bit))
(assert (< indefinite_bounded_tagged__t__c__first__bit indefinite_bounded_tagged__t__c__last__bit))
(assert (<= 0 indefinite_bounded_tagged__t__c__position))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-const dummy3 us_rep1)
(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep1)))))
(define-fun t__ref___projection ((a t__ref)) us_rep1 (t__content a))
(declare-fun get (us_rep Int) us_rep1)
(declare-fun get__function_guard (us_rep1 us_rep Int) Bool)
(define-fun oeq ((left us_rep) (right us_rep)) Bool (and (= (length left) (length right)) (ite (forall ((n Int)) (=> (and (<= 1 n) (<= n (last left))) (= (let ((temp___155 (get right n))) (let ((temp___154 (get left n))) (and (ite (= (attr__tag temp___154) (attr__tag temp___155)) true false) (us_dispatch_eq temp___154 temp___155)))) true))) true false)))
(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)
(assert (forall ((a us_rep) (b us_rep)) (! (= (user_eq1 a b) (oeq a b)) :pattern ((user_eq1 a b)))))
(define-fun default_initial_assumption ((temp___expr_322 us_rep) (temp___skip_top_level_323 Bool)) Bool (=> (not (= temp___skip_top_level_323 true)) (= (length temp___expr_322) 0)))
(assert (forall ((container us_rep)) (! (let ((result (length container))) (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false true true))) :pattern ((length container)))))
(declare-sort extended_index 0)
(declare-fun extended_indexqtint (extended_index) Int)
(assert (forall ((i extended_index)) (and (<= 0 (extended_indexqtint i)) (<= (extended_indexqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (extended_index extended_index) Bool)
(declare-const dummy4 extended_index)
(declare-datatypes () ((extended_index__ref (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___2__projection ((a extended_index__ref)) extended_index (extended_index__content a))
(define-fun dynamic_invariant1 ((temp___expr_314 Int) (temp___is_init_310 Bool) (temp___skip_constant_311 Bool) (temp___do_toplevel_312 Bool) (temp___do_typ_inv_313 Bool)) Bool (=> (or (= temp___is_init_310 true) (<= 0 2147483647)) (in_range3 temp___expr_314)))
(define-fun default_initial_assumption1 ((temp___expr_249 us_rep1) (temp___skip_top_level_250 Bool)) Bool (= (attr__tag temp___expr_249) us_tag))
(declare-sort index_type 0)
(declare-fun index_typeqtint (index_type) Int)
(assert (forall ((i index_type)) (and (<= 1 (index_typeqtint i)) (<= (index_typeqtint i) 2147483647))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (index_type index_type) Bool)
(declare-const dummy5 index_type)
(declare-datatypes () ((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___2__projection ((a index_type__ref)) index_type (index_type__content a))
(define-fun dynamic_invariant2 ((temp___expr_302 Int) (temp___is_init_298 Bool) (temp___skip_constant_299 Bool) (temp___do_toplevel_300 Bool) (temp___do_typ_inv_301 Bool)) Bool (=> (or (= temp___is_init_298 true) (<= 1 2147483647)) (in_range4 temp___expr_302)))
(declare-const container us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const position Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const new_item us_rep1)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(assert true)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const result Bool)
(declare-const result1 Bool)
(assert (in_range4 position))
(assert (and (= o2 (length container)) (and (in_range1 o2) (<= (+ 0 o2) 2147483647))))
(assert (= result (ite (< o2 2147483647) true false)))
(assert (= result true))
(assert (and (= o1 (last container)) (and (in_range3 o1) (= o1 (+ 0 (length container))))))
(assert (= result1 (ite (< o1 2147483647) true false)))
(assert (= result1 true))
(assert (and (= o (last container)) (and (in_range3 o) (= o (+ 0 (length container))))))
(assert (not (not (= o 2147483647))))
(check-sat)
(exit)
