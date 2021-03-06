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
(declare-sort namecountt 0)
(declare-fun namecounttqtint (namecountt) Int)
(assert (forall ((i namecountt)) (and (<= 0 (namecounttqtint i)) (<= (namecounttqtint i) 40))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 40)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (namecountt namecountt) Bool)
(declare-const dummy namecountt)
(declare-datatypes () ((namecountt__ref (mk_namecountt__ref (namecountt__content namecountt)))))
(define-fun namecountt__ref___projection ((a namecountt__ref)) namecountt (namecountt__content a))
(define-fun to_rep ((x namecountt)) Int (namecounttqtint x))
(declare-fun of_rep (Int) namecountt)
(assert (forall ((x namecountt)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x namecountt)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort character 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (character character) Bool)
(declare-const dummy1 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep1 (character) Int)
(declare-fun of_rep1 (Int) character)
(assert (forall ((x character)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x character)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep1 (select a temp___idx_91)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep1 (select a temp___idx_91)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(declare-const dummy2 (Array Int character))
(declare-const value__size Int)
(declare-fun object__size ((Array Int character)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int character)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int character)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment a))))
(declare-fun user_eq2 ((Array Int character) (Array Int character)) Bool)
(declare-sort issueridt 0)
(declare-fun issueridtqtint (issueridt) Int)
(assert (forall ((i issueridt)) (and (<= 0 (issueridtqtint i)) (<= (issueridtqtint i) 4294967295))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 4294967295)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (issueridt issueridt) Bool)
(declare-const dummy3 issueridt)
(declare-datatypes () ((issueridt__ref (mk_issueridt__ref (issueridt__content issueridt)))))
(define-fun issueridt__ref___projection ((a issueridt__ref)) issueridt (issueridt__content a))
(define-fun to_rep2 ((x issueridt)) Int (issueridtqtint x))
(declare-fun of_rep2 (Int) issueridt)
(assert (forall ((x issueridt)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x issueridt)) (! (in_range3 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__cryptotypes__issuert__id issueridt) (rec__cryptotypes__issuert__namelength namecountt) (rec__cryptotypes__issuert__name (Array Int character))))))
(define-fun us_split_fields_ID__projection ((a us_split_fields)) issueridt (rec__cryptotypes__issuert__id a))
(define-fun us_split_fields_NameLength__projection ((a us_split_fields)) namecountt (rec__cryptotypes__issuert__namelength a))
(define-fun us_split_fields_Name__projection ((a us_split_fields)) (Array Int character) (rec__cryptotypes__issuert__name a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___6__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___7__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (and (= (to_rep2 (rec__cryptotypes__issuert__id (us_split_fields1 a))) (to_rep2 (rec__cryptotypes__issuert__id (us_split_fields1 b)))) (= (to_rep (rec__cryptotypes__issuert__namelength (us_split_fields1 a))) (to_rep (rec__cryptotypes__issuert__namelength (us_split_fields1 b))))) (= (bool_eq (rec__cryptotypes__issuert__name (us_split_fields1 a)) 1 40 (rec__cryptotypes__issuert__name (us_split_fields1 b)) 1 40) true)) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const cryptotypes__issuert__id__first__bit Int)
(declare-const cryptotypes__issuert__id__last__bit Int)
(declare-const cryptotypes__issuert__id__position Int)
(assert (<= 0 cryptotypes__issuert__id__first__bit))
(assert (< cryptotypes__issuert__id__first__bit cryptotypes__issuert__id__last__bit))
(assert (<= 0 cryptotypes__issuert__id__position))
(declare-const cryptotypes__issuert__namelength__first__bit Int)
(declare-const cryptotypes__issuert__namelength__last__bit Int)
(declare-const cryptotypes__issuert__namelength__position Int)
(assert (<= 0 cryptotypes__issuert__namelength__first__bit))
(assert (< cryptotypes__issuert__namelength__first__bit cryptotypes__issuert__namelength__last__bit))
(assert (<= 0 cryptotypes__issuert__namelength__position))
(declare-const cryptotypes__issuert__name__first__bit Int)
(declare-const cryptotypes__issuert__name__last__bit Int)
(declare-const cryptotypes__issuert__name__position Int)
(assert (<= 0 cryptotypes__issuert__name__first__bit))
(assert (< cryptotypes__issuert__name__first__bit cryptotypes__issuert__name__last__bit))
(assert (<= 0 cryptotypes__issuert__name__position))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((issuert__ref (mk_issuert__ref (issuert__content us_rep)))))
(define-fun issuert__ref___projection ((a issuert__ref)) us_rep (issuert__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__keystore__optionalprivatekeyt__ispresent Bool) (rec__keystore__optionalprivatekeyt__owner us_rep)))))
(define-fun us_split_fields_IsPresent__projection ((a us_split_fields2)) Bool (rec__keystore__optionalprivatekeyt__ispresent a))
(define-fun us_split_fields_Owner__projection ((a us_split_fields2)) us_rep (rec__keystore__optionalprivatekeyt__owner a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___14__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___15__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq2 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (rec__keystore__optionalprivatekeyt__ispresent (us_split_fields3 a)) (rec__keystore__optionalprivatekeyt__ispresent (us_split_fields3 b))) (= (bool_eq1 (rec__keystore__optionalprivatekeyt__owner (us_split_fields3 a)) (rec__keystore__optionalprivatekeyt__owner (us_split_fields3 b))) true)) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep1) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep1) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))
(declare-const keystore__optionalprivatekeyt__ispresent__first__bit Int)
(declare-const keystore__optionalprivatekeyt__ispresent__last__bit Int)
(declare-const keystore__optionalprivatekeyt__ispresent__position Int)
(assert (<= 0 keystore__optionalprivatekeyt__ispresent__first__bit))
(assert (< keystore__optionalprivatekeyt__ispresent__first__bit keystore__optionalprivatekeyt__ispresent__last__bit))
(assert (<= 0 keystore__optionalprivatekeyt__ispresent__position))
(declare-const keystore__optionalprivatekeyt__owner__first__bit Int)
(declare-const keystore__optionalprivatekeyt__owner__last__bit Int)
(declare-const keystore__optionalprivatekeyt__owner__position Int)
(assert (<= 0 keystore__optionalprivatekeyt__owner__first__bit))
(assert (< keystore__optionalprivatekeyt__owner__first__bit keystore__optionalprivatekeyt__owner__last__bit))
(assert (<= 0 keystore__optionalprivatekeyt__owner__position))
(declare-fun user_eq5 (us_rep1 us_rep1) Bool)
(declare-const dummy5 us_rep1)
(declare-datatypes () ((optionalprivatekeyt__ref (mk_optionalprivatekeyt__ref (optionalprivatekeyt__content us_rep1)))))
(define-fun optionalprivatekeyt__ref___projection ((a optionalprivatekeyt__ref)) us_rep1 (optionalprivatekeyt__content a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun privatekeypresent (us_split_fields2 us_private) Bool)
(declare-fun privatekeypresent__function_guard (Bool us_split_fields2 us_private) Bool)
(assert true)
(assert (forall ((keystore__thistisinfo__fields us_split_fields2)) (forall ((keystore__state us_private)) (! (= (= (privatekeypresent keystore__thistisinfo__fields keystore__state) true) (= (rec__keystore__optionalprivatekeyt__ispresent (us_split_fields3 (mk___rep1 keystore__thistisinfo__fields))) true)) :pattern ((privatekeypresent keystore__thistisinfo__fields keystore__state))))))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-fun statusisenclavequiescent (Int) Bool)
(declare-fun statusisenclavequiescent__function_guard (Bool Int) Bool)
(declare-sort statust 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 8)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq6 (statust statust) Bool)
(declare-const dummy6 statust)
(declare-datatypes () ((statust__ref (mk_statust__ref (statust__content statust)))))
(define-fun statust__ref___2__projection ((a statust__ref)) statust (statust__content a))
(define-fun dynamic_invariant ((temp___expr_2867 Int) (temp___is_init_2863 Bool) (temp___skip_constant_2864 Bool) (temp___do_toplevel_2865 Bool) (temp___do_typ_inv_2866 Bool)) Bool (=> (or (= temp___is_init_2863 true) (<= 0 8)) (in_range4 temp___expr_2867)))
(assert true)
(assert (forall ((enclave__status Int)) (! (= (= (statusisenclavequiescent enclave__status) true) (= enclave__status 3)) :pattern ((statusisenclavequiescent enclave__status)))))
(declare-fun enrolmentisinprogress (Int) Bool)
(declare-fun enrolmentisinprogress__function_guard (Bool Int) Bool)
(declare-sort enrolmentstates 0)
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq7 (enrolmentstates enrolmentstates) Bool)
(declare-const dummy7 enrolmentstates)
(declare-datatypes () ((enrolmentstates__ref (mk_enrolmentstates__ref (enrolmentstates__content enrolmentstates)))))
(define-fun enrolmentstates__ref___projection ((a enrolmentstates__ref)) enrolmentstates (enrolmentstates__content a))
(assert true)
(assert (forall ((enclave__status Int)) (! (= (= (enrolmentisinprogress enclave__status) true) (in_range5 enclave__status)) :pattern ((enrolmentisinprogress enclave__status)))))
(define-fun dynamic_invariant1 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range2 temp___expr_74)))
(define-fun dynamic_invariant2 ((temp___expr_2954 Int) (temp___is_init_2950 Bool) (temp___skip_constant_2951 Bool) (temp___do_toplevel_2952 Bool) (temp___do_typ_inv_2953 Bool)) Bool (=> (or (= temp___is_init_2950 true) (<= 0 2)) (in_range5 temp___expr_2954)))
(define-fun dynamic_invariant3 ((temp___expr_1092 Int) (temp___is_init_1088 Bool) (temp___skip_constant_1089 Bool) (temp___do_toplevel_1090 Bool) (temp___do_typ_inv_1091 Bool)) Bool (=> (or (= temp___is_init_1088 true) (<= 0 40)) (in_range1 temp___expr_1092)))
(define-fun dynamic_invariant4 ((temp___expr_1116 Int) (temp___is_init_1112 Bool) (temp___skip_constant_1113 Bool) (temp___do_toplevel_1114 Bool) (temp___do_typ_inv_1115 Bool)) Bool (=> (or (= temp___is_init_1112 true) (<= 0 4294967295)) (in_range3 temp___expr_1116)))
(declare-const thistisinfo__split_fields Bool)
(declare-const thistisinfo__split_fields1 issueridt)
(declare-const thistisinfo__split_fields2 namecountt)
(declare-const thistisinfo__split_fields3 (Array Int character))
(declare-const status Int)
(declare-const state us_private)
(declare-const result Bool)
(declare-const result1 Int)
(declare-const status1 Int)
(declare-const result2 Int)
(declare-const status2 Int)
(declare-const status3 Int)
(declare-const status4 Int)
(assert (=> (<= 0 8) (in_range4 status)))
(assert (and (= result (privatekeypresent (mk___split_fields1 thistisinfo__split_fields (mk___rep (mk___split_fields thistisinfo__split_fields1 thistisinfo__split_fields2 thistisinfo__split_fields3))) state)) (= (= result true) (= thistisinfo__split_fields true))))
(assert (=> (= result true) (= result1 status)))
(assert (=> (= result true) (= status1 3)))
(assert (=> (not (= result true)) (= result2 status)))
(assert (=> (not (= result true)) (= status2 0)))
(assert (=> (not (= result true)) (= status1 status2)))
(assert (= status1 status3))
(assert (= status4 status1))
(assert (not (= (enrolmentisinprogress status3) true)))
(assert (not (= (privatekeypresent (mk___split_fields1 thistisinfo__split_fields (mk___rep (mk___split_fields thistisinfo__split_fields1 thistisinfo__split_fields2 thistisinfo__split_fields3))) state) true)))
(check-sat)
(exit)
