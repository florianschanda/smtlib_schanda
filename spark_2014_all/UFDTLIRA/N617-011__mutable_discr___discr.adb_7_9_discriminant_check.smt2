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
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__discr__no_default__c natural)))))
(define-fun us_split_discrs___3__projection ((a us_split_discrs)) natural (rec__discr__no_default__c a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___3__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs)))))
(define-fun us_rep___7__projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (= (to_rep (rec__discr__no_default__c (us_split_discrs1 a))) (to_rep (rec__discr__no_default__c (us_split_discrs1 b)))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const discr__no_default__c__first__bit Int)
(declare-const discr__no_default__c__last__bit Int)
(declare-const discr__no_default__c__position Int)
(assert (<= 0 discr__no_default__c__first__bit))
(assert (< discr__no_default__c__first__bit discr__no_default__c__last__bit))
(assert (<= 0 discr__no_default__c__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((no_default__ref (mk_no_default__ref (no_default__content us_rep)))))
(define-fun no_default__ref___projection ((a no_default__ref)) us_rep (no_default__content a))
(declare-const c Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun in_range1 ((rec__discr__no_default__c1 Int) (a us_rep)) Bool (= rec__discr__no_default__c1 (to_rep (rec__discr__no_default__c (us_split_discrs1 a)))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const discr__no_default__c__first__bit1 Int)
(declare-const discr__no_default__c__last__bit1 Int)
(declare-const discr__no_default__c__position1 Int)
(assert (<= 0 discr__no_default__c__first__bit1))
(assert (< discr__no_default__c__first__bit1 discr__no_default__c__last__bit1))
(assert (<= 0 discr__no_default__c__position1))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content us_rep)))))
(define-fun t1b__ref___projection ((a t1b__ref)) us_rep (t1b__content a))
(declare-const d__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun in_range2 ((rec__discr__no_default__c1 Int) (a us_rep)) Bool (= rec__discr__no_default__c1 (to_rep (rec__discr__no_default__c (us_split_discrs1 a)))))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const discr__no_default__c__first__bit2 Int)
(declare-const discr__no_default__c__last__bit2 Int)
(declare-const discr__no_default__c__position2 Int)
(assert (<= 0 discr__no_default__c__first__bit2))
(assert (< discr__no_default__c__first__bit2 discr__no_default__c__last__bit2))
(assert (<= 0 discr__no_default__c__position2))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content us_rep)))))
(define-fun t2b__ref___projection ((a t2b__ref)) us_rep (t2b__content a))
(define-fun in_range3 ((rec__discr__no_default__c1 Int) (a us_rep)) Bool (= rec__discr__no_default__c1 (to_rep (rec__discr__no_default__c (us_split_discrs1 a)))))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))
(declare-const discr__no_default__c__first__bit3 Int)
(declare-const discr__no_default__c__last__bit3 Int)
(declare-const discr__no_default__c__position3 Int)
(assert (<= 0 discr__no_default__c__first__bit3))
(assert (< discr__no_default__c__first__bit3 discr__no_default__c__last__bit3))
(assert (<= 0 discr__no_default__c__position3))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content us_rep)))))
(define-fun t3b__ref___projection ((a t3b__ref)) us_rep (t3b__content a))
(declare-const o natural)
(declare-const o1 natural)
(declare-const discr__r1__d__assume natural)
(declare-const o2 natural)
(declare-const o3 natural)
(declare-const temp___298 natural)
(assert (in_range c))
(assert (= (to_rep o) c))
(assert (= o o1))
(assert (= discr__r1__d__assume o1))
(assert (= d__split_discrs (mk___split_discrs discr__r1__d__assume)))
(assert (= (to_rep o2) c))
(assert (= o2 o3))
(assert (= temp___298 o3))
(assert (not (= temp___298 (rec__discr__no_default__c d__split_discrs))))
(check-sat)
(exit)
