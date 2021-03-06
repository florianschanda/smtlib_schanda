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
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range temp___expr_39)))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__foo__thing__d natural)))))
(define-fun us_split_discrs___2__projection ((a us_split_discrs)) natural (rec__foo__thing__d a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___2__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__foo__thing__a Bool) (rec__foo__thing__x Bool)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) Bool (rec__foo__thing__a a))
(define-fun us_split_fields_X__projection ((a us_split_fields)) Bool (rec__foo__thing__x a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___30__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___31__projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___32__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const foo__thing__d__first__bit Int)
(declare-const foo__thing__d__last__bit Int)
(declare-const foo__thing__d__position Int)
(assert (<= 0 foo__thing__d__first__bit))
(assert (< foo__thing__d__first__bit foo__thing__d__last__bit))
(assert (<= 0 foo__thing__d__position))
(declare-const foo__thing__a__first__bit Int)
(declare-const foo__thing__a__last__bit Int)
(declare-const foo__thing__a__position Int)
(assert (<= 0 foo__thing__a__first__bit))
(assert (< foo__thing__a__first__bit foo__thing__a__last__bit))
(assert (<= 0 foo__thing__a__position))
(declare-const foo__thing__x__first__bit Int)
(declare-const foo__thing__x__last__bit Int)
(declare-const foo__thing__x__position Int)
(assert (<= 0 foo__thing__x__first__bit))
(assert (< foo__thing__x__first__bit foo__thing__x__last__bit))
(assert (<= 0 foo__thing__x__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-datatypes () ((thing__ref (mk_thing__ref (thing__content us_rep)))))
(define-fun thing__ref___projection ((a thing__ref)) us_rep (thing__content a))
(declare-fun p_func (us_rep) Bool)
(declare-fun p_func__function_guard (Bool us_rep) Bool)
(assert true)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-sort priority 0)
(declare-fun priorityqtint (priority) Int)
(assert (forall ((i priority)) (and (<= 0 (priorityqtint i)) (<= (priorityqtint i) 97))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 97)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq2 (priority priority) Bool)
(declare-const dummy1 priority)
(declare-datatypes () ((priority__ref (mk_priority__ref (priority__content priority)))))
(define-fun priority__ref___projection ((a priority__ref)) priority (priority__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__foo__thing__a1 Bool) (rec__foo__thing__x1 Bool)))))
(define-fun us_split_fields_A__2__projection ((a us_split_fields2)) Bool (rec__foo__thing__a1 a))
(define-fun us_split_fields_X__2__projection ((a us_split_fields2)) Bool (rec__foo__thing__x1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___31__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs2 us_split_discrs) (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___33__projection ((a us_rep1)) us_split_discrs (us_split_discrs2 a))
(define-fun us_rep___34__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (us_split_discrs2 a) (mk___split_fields (rec__foo__thing__a1 (us_split_fields3 a)) (rec__foo__thing__x1 (us_split_fields3 a)))))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (us_split_discrs1 r) (mk___split_fields1 (rec__foo__thing__a (us_split_fields1 r)) (rec__foo__thing__x (us_split_fields1 r)))))
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun in_range2 ((rec__foo__thing__d1 Int) (a us_rep)) Bool (= rec__foo__thing__d1 (to_rep (rec__foo__thing__d (us_split_discrs1 a)))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const foo__thing__d__first__bit1 Int)
(declare-const foo__thing__d__last__bit1 Int)
(declare-const foo__thing__d__position1 Int)
(assert (<= 0 foo__thing__d__first__bit1))
(assert (< foo__thing__d__first__bit1 foo__thing__d__last__bit1))
(assert (<= 0 foo__thing__d__position1))
(declare-const foo__thing__a__first__bit1 Int)
(declare-const foo__thing__a__last__bit1 Int)
(declare-const foo__thing__a__position1 Int)
(assert (<= 0 foo__thing__a__first__bit1))
(assert (< foo__thing__a__first__bit1 foo__thing__a__last__bit1))
(assert (<= 0 foo__thing__a__position1))
(declare-const foo__thing__x__first__bit1 Int)
(declare-const foo__thing__x__last__bit1 Int)
(declare-const foo__thing__x__position1 Int)
(assert (<= 0 foo__thing__x__first__bit1))
(assert (< foo__thing__x__first__bit1 foo__thing__x__last__bit1))
(assert (<= 0 foo__thing__x__position1))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-datatypes () ((tpo_1S__ref (mk_tpo_1S__ref (tpo_1S__content us_rep1)))))
(define-fun tpo_1S__ref___projection ((a tpo_1S__ref)) us_rep1 (tpo_1S__content a))
(define-fun in_range3 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Bool)
(define-fun dynamic_invariant1 ((temp___expr_1715 us_rep1) (temp___is_init_1711 Bool) (temp___skip_constant_1712 Bool) (temp___do_toplevel_1713 Bool) (temp___do_typ_inv_1714 Bool)) Bool (=> (not (= temp___skip_constant_1712 true)) (in_range2 12 (to_base temp___expr_1715))))
(define-fun default_initial_assumption ((temp___expr_1717 us_rep1) (temp___skip_top_level_1718 Bool)) Bool (and (and (= (to_rep (rec__foo__thing__d (us_split_discrs2 temp___expr_1717))) 12) (= (rec__foo__thing__a1 (us_split_fields3 temp___expr_1717)) (distinct 0 0))) (= (rec__foo__thing__x1 (us_split_fields3 temp___expr_1717)) (> (to_rep (rec__foo__thing__d (us_split_discrs2 temp___expr_1717))) 5))))
(declare-const po_1__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const d Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant2 ((temp___expr_235 Int) (temp___is_init_231 Bool) (temp___skip_constant_232 Bool) (temp___do_toplevel_233 Bool) (temp___do_typ_inv_234 Bool)) Bool (=> (or (= temp___is_init_231 true) (<= 0 97)) (in_range1 temp___expr_235)))
(assert (= 12 (to_rep (rec__foo__thing__d po_1__split_discrs))))
(assert (in_range d))
(assert (not (<= 97 97)))
(check-sat)
(exit)
