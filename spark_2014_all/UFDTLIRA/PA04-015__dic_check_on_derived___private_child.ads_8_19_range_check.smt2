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
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__private_child__root__c natural)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) natural (rec__private_child__root__c a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__ext__ us_private)))))
(define-fun us_split_fields___projection ((a us_split_fields)) us_private (rec__ext__ a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields) (attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___3__projection ((a us_rep)) Int (attr__tag a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (= (to_rep (rec__private_child__root__c (us_split_discrs1 a))) (to_rep (rec__private_child__root__c (us_split_discrs1 b)))) true false))
(declare-fun us_dispatch_eq (us_rep us_rep) Bool)
(declare-const us_tag Int)
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const private_child__root__c__first__bit Int)
(declare-const private_child__root__c__last__bit Int)
(declare-const private_child__root__c__position Int)
(assert (<= 0 private_child__root__c__first__bit))
(assert (< private_child__root__c__first__bit private_child__root__c__last__bit))
(assert (<= 0 private_child__root__c__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((root__ref (mk_root__ref (root__content us_rep)))))
(define-fun root__ref___projection ((a root__ref)) us_rep (root__content a))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__private_child__p_c__nested__c us_main_type) (rec__ext__1 us_private)))))
(define-fun us_split_fields_C__projection ((a us_split_fields2)) us_main_type (rec__private_child__p_c__nested__c a))
(define-fun us_split_fields___2__projection ((a us_split_fields2)) us_private (rec__ext__1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs2 us_split_discrs) (us_split_fields3 us_split_fields2) (attr__tag1 Int)))))
(define-fun us_rep___4__projection ((a us_rep1)) us_split_discrs (us_split_discrs2 a))
(define-fun us_rep___5__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun us_rep___6__projection ((a us_rep1)) Int (attr__tag1 a))
(declare-fun hide_ext__ (us_main_type us_private) us_private)
(declare-fun extract__c (us_private) us_main_type)
(assert (forall ((c us_main_type)) (forall ((rec__ext__2 us_private)) (= (extract__c (hide_ext__ c rec__ext__2)) c))))
(declare-fun extract__ext__ (us_private) us_private)
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (us_split_discrs2 a) (mk___split_fields (hide_ext__ (rec__private_child__p_c__nested__c (us_split_fields3 a)) (rec__ext__1 (us_split_fields3 a)))) (attr__tag1 a)))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (us_split_discrs1 r) (mk___split_fields1 (extract__c (rec__ext__ (us_split_fields1 r))) (extract__ext__ (rec__ext__ (us_split_fields1 r)))) (attr__tag r)))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (to_rep (rec__private_child__root__c (us_split_discrs2 a))) (to_rep (rec__private_child__root__c (us_split_discrs2 b)))) (= (us_main_eq (rec__private_child__p_c__nested__c (us_split_fields3 a)) (rec__private_child__p_c__nested__c (us_split_fields3 b))) true)) true false))
(declare-const us_tag1 Int)
(define-fun in_range1 ((rec__private_child__root__c1 Int) (a us_rep)) Bool (= rec__private_child__root__c1 (to_rep (rec__private_child__root__c (us_split_discrs1 a)))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const private_child__root__c__first__bit1 Int)
(declare-const private_child__root__c__last__bit1 Int)
(declare-const private_child__root__c__position1 Int)
(assert (<= 0 private_child__root__c__first__bit1))
(assert (< private_child__root__c__first__bit1 private_child__root__c__last__bit1))
(assert (<= 0 private_child__root__c__position1))
(declare-fun user_eq2 (us_rep1 us_rep1) Bool)
(declare-const dummy2 us_rep1)
(declare-datatypes () ((txS__ref (mk_txS__ref (txS__content us_rep1)))))
(define-fun txS__ref___projection ((a txS__ref)) us_rep1 (txS__content a))
(declare-const us_tag2 Int)
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep1) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep1) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))
(declare-const private_child__root__c__first__bit2 Int)
(declare-const private_child__root__c__last__bit2 Int)
(declare-const private_child__root__c__position2 Int)
(assert (<= 0 private_child__root__c__first__bit2))
(assert (< private_child__root__c__first__bit2 private_child__root__c__last__bit2))
(assert (<= 0 private_child__root__c__position2))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-const dummy3 us_rep1)
(declare-datatypes () ((c__ref (mk_c__ref (c__content us_rep1)))))
(define-fun c__ref___projection ((a c__ref)) us_rep1 (c__content a))
(declare-fun is_valid (us_rep1) Bool)
(declare-fun is_valid__function_guard (Bool us_rep1) Bool)
(declare-fun is_valid1 (Int us_rep1) Bool)
(declare-fun is_valid__function_guard1 (Bool Int us_rep1) Bool)
(define-fun dynamic_invariant ((temp___expr_183 us_rep1) (temp___is_init_179 Bool) (temp___skip_constant_180 Bool) (temp___do_toplevel_181 Bool) (temp___do_typ_inv_182 Bool)) Bool (=> (not (= temp___skip_constant_180 true)) (in_range1 10 (to_base temp___expr_183))))
(define-fun default_initial_assumption ((temp___expr_185 us_rep1) (temp___skip_top_level_186 Bool)) Bool (and (and (= (attr__tag1 temp___expr_185) us_tag1) (= (to_rep (rec__private_child__root__c (us_split_discrs2 temp___expr_185))) 10)) (=> (not (= temp___skip_top_level_186 true)) (= (is_valid temp___expr_185) true))))
(declare-const x__split_discrs us_split_discrs)
(declare-const x__attr__tag Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range temp___expr_39)))
(define-fun in_range2 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Bool)
(declare-const us_tag3 Int)
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep1) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep1) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep1)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment3 a))))
(declare-const private_child__root__c__first__bit3 Int)
(declare-const private_child__root__c__last__bit3 Int)
(declare-const private_child__root__c__position3 Int)
(assert (<= 0 private_child__root__c__first__bit3))
(assert (< private_child__root__c__first__bit3 private_child__root__c__last__bit3))
(assert (<= 0 private_child__root__c__position3))
(declare-fun user_eq4 (us_rep1 us_rep1) Bool)
(declare-const dummy4 us_rep1)
(declare-datatypes () ((child__ref (mk_child__ref (child__content us_rep1)))))
(define-fun child__ref___projection ((a child__ref)) us_rep1 (child__content a))
(assert (forall ((x us_rep1)) (! (= (ite (is_valid x) 1 0) (ite (is_valid1 us_tag2 x) 1 0)) :pattern ((is_valid1 us_tag2 x)))))
(assert (forall ((x us_rep1)) (! (= (ite (is_valid x) 1 0) (ite (is_valid1 us_tag3 x) 1 0)) :pattern ((is_valid1 us_tag3 x)))))
(assert (forall ((x us_rep1)) (! (= (ite (is_valid x) 1 0) (ite (is_valid1 us_tag1 x) 1 0)) :pattern ((is_valid1 us_tag1 x)))))
(assert (not (in_range 10)))
(check-sat)
(exit)
