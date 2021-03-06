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
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (positive positive) Bool)
(declare-const dummy positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun to_rep ((x positive)) Int (positiveqtint x))
(declare-fun of_rep (Int) positive)
(assert (forall ((x positive)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x positive)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__foo__dt__found Bool)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) Bool (rec__foo__dt__found a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__foo__dt__index positive)))))
(define-fun us_split_fields_Index__projection ((a us_split_fields)) positive (rec__foo__dt__index a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun foo__dt__index__pred ((a us_rep)) Bool (= (ite (rec__foo__dt__found (us_split_discrs1 a)) 1 0) 1))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (rec__foo__dt__found (us_split_discrs1 a)) (rec__foo__dt__found (us_split_discrs1 b))) (=> (foo__dt__index__pred a) (= (to_rep (rec__foo__dt__index (us_split_fields1 a))) (to_rep (rec__foo__dt__index (us_split_fields1 b)))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const foo__dt__found__first__bit Int)
(declare-const foo__dt__found__last__bit Int)
(declare-const foo__dt__found__position Int)
(assert (<= 0 foo__dt__found__first__bit))
(assert (< foo__dt__found__first__bit foo__dt__found__last__bit))
(assert (<= 0 foo__dt__found__position))
(declare-const foo__dt__index__first__bit Int)
(declare-const foo__dt__index__last__bit Int)
(declare-const foo__dt__index__position Int)
(assert (<= 0 foo__dt__index__first__bit))
(assert (< foo__dt__index__first__bit foo__dt__index__last__bit))
(assert (<= 0 foo__dt__index__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((dt__ref (mk_dt__ref (dt__content us_rep)))))
(define-fun dt__ref___projection ((a dt__ref)) us_rep (dt__content a))
(declare-const a__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const r13b Bool)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun in_range2 ((rec__foo__dt__found1 Bool) (a us_rep)) Bool (= rec__foo__dt__found1 (rec__foo__dt__found (us_split_discrs1 a))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const foo__dt__found__first__bit1 Int)
(declare-const foo__dt__found__last__bit1 Int)
(declare-const foo__dt__found__position1 Int)
(assert (<= 0 foo__dt__found__first__bit1))
(assert (< foo__dt__found__first__bit1 foo__dt__found__last__bit1))
(assert (<= 0 foo__dt__found__position1))
(declare-const foo__dt__index__first__bit1 Int)
(declare-const foo__dt__index__last__bit1 Int)
(declare-const foo__dt__index__position1 Int)
(assert (<= 0 foo__dt__index__first__bit1))
(assert (< foo__dt__index__first__bit1 foo__dt__index__last__bit1))
(assert (<= 0 foo__dt__index__position1))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((t14b__ref (mk_t14b__ref (t14b__content us_rep)))))
(define-fun t14b__ref___projection ((a t14b__ref)) us_rep (t14b__content a))
(declare-const r16b Bool)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun in_range3 ((rec__foo__dt__found1 Bool) (a us_rep)) Bool (= rec__foo__dt__found1 (rec__foo__dt__found (us_split_discrs1 a))))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const foo__dt__found__first__bit2 Int)
(declare-const foo__dt__found__last__bit2 Int)
(declare-const foo__dt__found__position2 Int)
(assert (<= 0 foo__dt__found__first__bit2))
(assert (< foo__dt__found__first__bit2 foo__dt__found__last__bit2))
(assert (<= 0 foo__dt__found__position2))
(declare-const foo__dt__index__first__bit2 Int)
(declare-const foo__dt__index__last__bit2 Int)
(declare-const foo__dt__index__position2 Int)
(assert (<= 0 foo__dt__index__first__bit2))
(assert (< foo__dt__index__first__bit2 foo__dt__index__last__bit2))
(assert (<= 0 foo__dt__index__position2))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((t17b__ref (mk_t17b__ref (t17b__content us_rep)))))
(define-fun t17b__ref___projection ((a t17b__ref)) us_rep (t17b__content a))
(define-fun dynamic_invariant ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(assert (= (ite (rec__foo__dt__found a__split_discrs) 1 0) 1))
(assert (= (rec__foo__dt__found a__split_discrs) r13b))
(assert (not (= (distinct 1 0) (rec__foo__dt__found a__split_discrs))))
(check-sat)
(exit)
