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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (integer integer) Bool)
(declare-const dummy2 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__my_ordered_sets__my_rec__f natural) (rec__my_ordered_sets__my_rec__g integer)))))
(define-fun us_split_fields_F__projection ((a us_split_fields)) natural (rec__my_ordered_sets__my_rec__f a))
(define-fun us_split_fields_G__projection ((a us_split_fields)) integer (rec__my_ordered_sets__my_rec__g a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___7__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___10__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__my_ordered_sets__my_rec__f (us_split_fields1 a))) (to_rep (rec__my_ordered_sets__my_rec__f (us_split_fields1 b)))) (= (to_rep1 (rec__my_ordered_sets__my_rec__g (us_split_fields1 a))) (to_rep1 (rec__my_ordered_sets__my_rec__g (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const my_ordered_sets__my_rec__f__first__bit Int)
(declare-const my_ordered_sets__my_rec__f__last__bit Int)
(declare-const my_ordered_sets__my_rec__f__position Int)
(assert (<= 0 my_ordered_sets__my_rec__f__first__bit))
(assert (< my_ordered_sets__my_rec__f__first__bit my_ordered_sets__my_rec__f__last__bit))
(assert (<= 0 my_ordered_sets__my_rec__f__position))
(declare-const my_ordered_sets__my_rec__g__first__bit Int)
(declare-const my_ordered_sets__my_rec__g__last__bit Int)
(declare-const my_ordered_sets__my_rec__g__position Int)
(assert (<= 0 my_ordered_sets__my_rec__g__first__bit))
(assert (< my_ordered_sets__my_rec__g__first__bit my_ordered_sets__my_rec__g__last__bit))
(assert (<= 0 my_ordered_sets__my_rec__g__position))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep (my_rec__content a))
(declare-const x us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_18)))
(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range temp___expr_39)))
(define-fun dynamic_invariant2 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(declare-const my_ordered_sets__get_f__result Int)
(declare-const o Int)
(declare-const result Int)
(declare-const my_ordered_sets__get_f__result1 Int)
(declare-const my_ordered_sets__get_f__result2 Int)
(declare-const my_ordered_sets__get_f__result3 Int)
(declare-const my_ordered_sets__get_f__result4 Int)
(declare-const my_ordered_sets__get_f__result5 Int)
(declare-const result1 Int)
(assert (= my_ordered_sets__get_f__result1 my_ordered_sets__get_f__result2))
(assert (= my_ordered_sets__get_f__result3 my_ordered_sets__get_f__result1))
(assert (and (= o (to_rep (rec__my_ordered_sets__my_rec__f (us_split_fields1 x)))) (in_range1 (to_rep (rec__my_ordered_sets__my_rec__f (us_split_fields1 x))))))
(assert (= result my_ordered_sets__get_f__result))
(assert (= my_ordered_sets__get_f__result1 o))
(assert (= (mk_int__ref my_ordered_sets__get_f__result4) (mk_int__ref my_ordered_sets__get_f__result2)))
(assert (= my_ordered_sets__get_f__result5 my_ordered_sets__get_f__result3))
(assert (= result1 my_ordered_sets__get_f__result4))
(assert (not (= my_ordered_sets__get_f__result4 (to_rep (rec__my_ordered_sets__my_rec__f (us_split_fields1 x))))))
(check-sat)
(exit)
