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
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__private_with_attributes__private_unconstrained__c natural)))))
(define-fun us_split_discrs___2__projection ((a us_split_discrs)) natural (rec__private_with_attributes__private_unconstrained__c a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___2__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__private_with_attributes__private_unconstrained us_main_type)))))
(define-fun us_split_fields_Private_Unconstrained__projection ((a us_split_fields)) us_main_type (rec__private_with_attributes__private_unconstrained a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___6__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields) (attr__constrained Bool)))))
(define-fun us_rep___12__projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___13__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___14__projection ((a us_rep)) Bool (attr__constrained a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__private_with_attributes__private_unconstrained__c (us_split_discrs1 a))) (to_rep (rec__private_with_attributes__private_unconstrained__c (us_split_discrs1 b)))) (= (us_main_eq (rec__private_with_attributes__private_unconstrained (us_split_fields1 a)) (rec__private_with_attributes__private_unconstrained (us_split_fields1 b))) true)) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const private_with_attributes__private_unconstrained__c__first__bit Int)
(declare-const private_with_attributes__private_unconstrained__c__last__bit Int)
(declare-const private_with_attributes__private_unconstrained__c__position Int)
(assert (<= 0 private_with_attributes__private_unconstrained__c__first__bit))
(assert (< private_with_attributes__private_unconstrained__c__first__bit private_with_attributes__private_unconstrained__c__last__bit))
(assert (<= 0 private_with_attributes__private_unconstrained__c__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((private_unconstrained__ref (mk_private_unconstrained__ref (private_unconstrained__content us_rep)))))
(define-fun private_unconstrained__ref___projection ((a private_unconstrained__ref)) us_rep (private_unconstrained__content a))
(define-fun default_initial_assumption ((temp___expr_196 us_rep) (temp___skip_top_level_197 Bool)) Bool (and (= (attr__constrained temp___expr_196) false) (= (to_rep (rec__private_with_attributes__private_unconstrained__c (us_split_discrs1 temp___expr_196))) 0)))
(define-fun in_range1 ((rec__private_with_attributes__private_unconstrained__c1 Int) (a us_rep)) Bool (= rec__private_with_attributes__private_unconstrained__c1 (to_rep (rec__private_with_attributes__private_unconstrained__c (us_split_discrs1 a)))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const private_with_attributes__private_unconstrained__c__first__bit1 Int)
(declare-const private_with_attributes__private_unconstrained__c__last__bit1 Int)
(declare-const private_with_attributes__private_unconstrained__c__position1 Int)
(assert (<= 0 private_with_attributes__private_unconstrained__c__first__bit1))
(assert (< private_with_attributes__private_unconstrained__c__first__bit1 private_with_attributes__private_unconstrained__c__last__bit1))
(assert (<= 0 private_with_attributes__private_unconstrained__c__position1))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((private_constrained__ref (mk_private_constrained__ref (private_constrained__content us_rep)))))
(define-fun private_constrained__ref___projection ((a private_constrained__ref)) us_rep (private_constrained__content a))
(define-fun dynamic_invariant1 ((temp___expr_203 us_rep) (temp___is_init_199 Bool) (temp___skip_constant_200 Bool) (temp___do_toplevel_201 Bool) (temp___do_typ_inv_202 Bool)) Bool (and (=> (not (= temp___skip_constant_200 true)) (in_range1 0 temp___expr_203)) (= (attr__constrained temp___expr_203) true)))
(define-fun default_initial_assumption1 ((temp___expr_205 us_rep) (temp___skip_top_level_206 Bool)) Bool (and (= (attr__constrained temp___expr_205) true) (= (to_rep (rec__private_with_attributes__private_unconstrained__c (us_split_discrs1 temp___expr_205))) 0)))
(declare-const u__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const u1__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun in_range2 ((rec__private_with_attributes__private_unconstrained__c1 Int) (a us_rep)) Bool (= rec__private_with_attributes__private_unconstrained__c1 (to_rep (rec__private_with_attributes__private_unconstrained__c (us_split_discrs1 a)))))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const private_with_attributes__private_unconstrained__c__first__bit2 Int)
(declare-const private_with_attributes__private_unconstrained__c__last__bit2 Int)
(declare-const private_with_attributes__private_unconstrained__c__position2 Int)
(assert (<= 0 private_with_attributes__private_unconstrained__c__first__bit2))
(assert (< private_with_attributes__private_unconstrained__c__first__bit2 private_with_attributes__private_unconstrained__c__last__bit2))
(assert (<= 0 private_with_attributes__private_unconstrained__c__position2))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((tu2S__ref (mk_tu2S__ref (tu2S__content us_rep)))))
(define-fun tu2S__ref___projection ((a tu2S__ref)) us_rep (tu2S__content a))
(define-fun dynamic_invariant2 ((temp___expr_249 us_rep) (temp___is_init_245 Bool) (temp___skip_constant_246 Bool) (temp___do_toplevel_247 Bool) (temp___do_typ_inv_248 Bool)) Bool (and (=> (not (= temp___skip_constant_246 true)) (in_range2 0 temp___expr_249)) (= (attr__constrained temp___expr_249) true)))
(define-fun default_initial_assumption2 ((temp___expr_251 us_rep) (temp___skip_top_level_252 Bool)) Bool (and (= (attr__constrained temp___expr_251) true) (= (to_rep (rec__private_with_attributes__private_unconstrained__c (us_split_discrs1 temp___expr_251))) 0)))
(declare-const u2__split_discrs us_split_discrs)
(declare-const u2__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const c__split_discrs us_split_discrs)
(declare-const c__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const r2b Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const u__split_fields us_main_type)
(declare-const u__split_discrs natural)
(declare-const u1__split_fields us_main_type)
(declare-const u1__split_discrs natural)
(declare-const u2__split_fields us_main_type)
(declare-const c__split_fields us_main_type)
(declare-const us Int)
(declare-const usq_ natural)
(declare-const usq_1 us_main_type)
(declare-const usq_2 Bool)
(declare-const temp___270 natural)
(declare-const temp___2701 us_main_type)
(declare-const temp___2702 Bool)
(declare-const result us_main_type)
(declare-const u1__split_fields1 us_main_type)
(declare-const result1 us_split_discrs__ref)
(declare-const u1__split_discrs1 us_split_discrs)
(declare-const result2 us_split_fields__ref)
(declare-const u2__split_fields1 us_split_fields)
(declare-const result3 us_split_fields__ref)
(declare-const c__split_fields1 us_split_fields)
(define-fun u1__split_fields2 () us_split_fields (mk___split_fields u1__split_fields1))
(assert (= u__attr__constrained true))
(assert (and (= u1__attr__constrained false) (= (to_rep u1__split_discrs) 0)))
(assert (and (= us 0) (in_range 0)))
(assert (and (= u2__attr__constrained true) (= (to_rep (rec__private_with_attributes__private_unconstrained__c u2__split_discrs)) 0)))
(assert (and (= 0 (to_rep (rec__private_with_attributes__private_unconstrained__c u2__split_discrs))) (= u2__attr__constrained true)))
(assert (and (= c__attr__constrained true) (= (to_rep (rec__private_with_attributes__private_unconstrained__c c__split_discrs)) 0)))
(assert (and (= 0 (to_rep (rec__private_with_attributes__private_unconstrained__c c__split_discrs))) (= c__attr__constrained true)))
(assert (= u__attr__constrained true))
(assert (not (= u1__attr__constrained true)))
(assert (= u2__attr__constrained true))
(assert (= c__attr__constrained true))
(assert (= (to_rep u__split_discrs) r2b))
(assert (in_range r2b))
(assert (=> (= u1__attr__constrained true) (= u__split_discrs u1__split_discrs)))
(assert (= u__split_discrs usq_))
(assert (= u__split_fields usq_1))
(assert (= u__attr__constrained usq_2))
(assert (= usq_ temp___270))
(assert (= usq_1 temp___2701))
(assert (= u1__attr__constrained temp___2702))
(assert (= result u1__split_fields))
(assert (= temp___2701 u1__split_fields1))
(assert (= result1 (mk___split_discrs__ref (mk___split_discrs u1__split_discrs))))
(assert (= u1__split_discrs1 (mk___split_discrs temp___270)))
(assert (= result2 (mk___split_fields__ref (mk___split_fields u2__split_fields))))
(assert (= u2__split_fields1 u1__split_fields2))
(assert (= u2__split_discrs u1__split_discrs1))
(assert (= result3 (mk___split_fields__ref (mk___split_fields c__split_fields))))
(assert (= c__split_fields1 u1__split_fields2))
(assert (= c__split_discrs u1__split_discrs1))
(assert (not (= u1__attr__constrained true)))
(assert (= u2__attr__constrained true))
(assert (not (= c__attr__constrained true)))
(check-sat)
(exit)
