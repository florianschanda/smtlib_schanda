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
(define-fun dynamic_invariant ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__types_with_invariants__my_integer__sign Bool) (rec__types_with_invariants__my_integer__val natural)))))
(define-fun us_split_fields_Sign__projection ((a us_split_fields)) Bool (rec__types_with_invariants__my_integer__sign a))
(define-fun us_split_fields_Val__projection ((a us_split_fields)) natural (rec__types_with_invariants__my_integer__val a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (rec__types_with_invariants__my_integer__sign (us_split_fields1 a)) (rec__types_with_invariants__my_integer__sign (us_split_fields1 b))) (= (to_rep (rec__types_with_invariants__my_integer__val (us_split_fields1 a))) (to_rep (rec__types_with_invariants__my_integer__val (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const types_with_invariants__my_integer__sign__first__bit Int)
(declare-const types_with_invariants__my_integer__sign__last__bit Int)
(declare-const types_with_invariants__my_integer__sign__position Int)
(assert (<= 0 types_with_invariants__my_integer__sign__first__bit))
(assert (< types_with_invariants__my_integer__sign__first__bit types_with_invariants__my_integer__sign__last__bit))
(assert (<= 0 types_with_invariants__my_integer__sign__position))
(declare-const types_with_invariants__my_integer__val__first__bit Int)
(declare-const types_with_invariants__my_integer__val__last__bit Int)
(declare-const types_with_invariants__my_integer__val__position Int)
(assert (<= 0 types_with_invariants__my_integer__val__first__bit))
(assert (< types_with_invariants__my_integer__val__first__bit types_with_invariants__my_integer__val__last__bit))
(assert (<= 0 types_with_invariants__my_integer__val__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((my_integer__ref (mk_my_integer__ref (my_integer__content us_rep)))))
(define-fun my_integer__ref___projection ((a my_integer__ref)) us_rep (my_integer__content a))
(define-fun in_range2 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Bool)
(define-fun default_initial_assumption ((temp___expr_161 us_rep) (temp___skip_top_level_162 Bool)) Bool (and (= (rec__types_with_invariants__my_integer__sign (us_split_fields1 temp___expr_161)) (distinct 1 0)) (= (to_rep (rec__types_with_invariants__my_integer__val (us_split_fields1 temp___expr_161))) 0)))
(define-fun type_invariant ((temp___163 us_rep)) Bool (=> (= (to_rep (rec__types_with_invariants__my_integer__val (us_split_fields1 temp___163))) 0) (= (rec__types_with_invariants__my_integer__sign (us_split_fields1 temp___163)) true)))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))
(assert (forall ((a (Array Int us_rep))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int us_rep))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int us_rep)) (a__first Int) (a__last Int) (b (Array Int us_rep)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (bool_eq (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))) true)))) true false))
(assert (forall ((a (Array Int us_rep)) (b (Array Int us_rep))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (bool_eq (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))) true))))))))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (integer integer) Bool)
(declare-const dummy3 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (integer integer) Bool)
(declare-const dummy4 integer)
(declare-datatypes () ((t7s__ref (mk_t7s__ref (t7s__content integer)))))
(define-fun t7s__ref___projection ((a t7s__ref)) integer (t7s__content a))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range3 f) (=> (in_range3 l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range3 low) (and (in_range3 high) (=> (<= low high) (and (dynamic_property range_first range_last low) (dynamic_property range_first range_last high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int us_rep)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int us_rep) (elts a))
(define-fun of_array ((a (Array Int us_rep)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int us_rep)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int us_rep)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int us_rep)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int us_rep))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int us_rep))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int us_rep))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq2 ((x us_t) (y us_t)) Bool (bool_eq1 (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y)))))
(declare-fun user_eq5 (us_t us_t) Bool)
(declare-const dummy5 us_t)
(declare-datatypes () ((t8s__ref (mk_t8s__ref (t8s__content us_t)))))
(define-fun t8s__ref___projection ((a t8s__ref)) us_t (t8s__content a))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__types_with_invariants__container__c natural)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) natural (rec__types_with_invariants__container__c a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__types_with_invariants__container__content us_t)))))
(define-fun us_split_fields_Content__projection ((a us_split_fields2)) us_t (rec__types_with_invariants__container__content a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs1 us_split_discrs) (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___2__projection ((a us_rep1)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq3 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (to_rep (rec__types_with_invariants__container__c (us_split_discrs1 a))) (to_rep (rec__types_with_invariants__container__c (us_split_discrs1 b)))) (= (bool_eq2 (rec__types_with_invariants__container__content (us_split_fields3 a)) (rec__types_with_invariants__container__content (us_split_fields3 b))) true)) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep1) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep1) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))
(declare-const types_with_invariants__container__c__first__bit Int)
(declare-const types_with_invariants__container__c__last__bit Int)
(declare-const types_with_invariants__container__c__position Int)
(assert (<= 0 types_with_invariants__container__c__first__bit))
(assert (< types_with_invariants__container__c__first__bit types_with_invariants__container__c__last__bit))
(assert (<= 0 types_with_invariants__container__c__position))
(declare-const types_with_invariants__container__content__first__bit Int)
(declare-const types_with_invariants__container__content__last__bit Int)
(declare-const types_with_invariants__container__content__position Int)
(assert (<= 0 types_with_invariants__container__content__first__bit))
(assert (< types_with_invariants__container__content__first__bit types_with_invariants__container__content__last__bit))
(assert (<= 0 types_with_invariants__container__content__position))
(declare-fun user_eq6 (us_rep1 us_rep1) Bool)
(declare-const dummy6 us_rep1)
(declare-datatypes () ((container__ref (mk_container__ref (container__content us_rep1)))))
(define-fun container__ref___projection ((a container__ref)) us_rep1 (container__content a))
(define-fun dynamic_invariant1 ((temp___expr_175 us_rep1) (temp___is_init_171 Bool) (temp___skip_constant_172 Bool) (temp___do_toplevel_173 Bool) (temp___do_typ_inv_174 Bool)) Bool (let ((temp___176 (rec__types_with_invariants__container__c (us_split_discrs1 temp___expr_175)))) (and (dynamic_property1 1 (to_rep temp___176) (first1 (rec__types_with_invariants__container__content (us_split_fields3 temp___expr_175))) (last1 (rec__types_with_invariants__container__content (us_split_fields3 temp___expr_175)))) (and (= (first1 (rec__types_with_invariants__container__content (us_split_fields3 temp___expr_175))) 1) (= (last1 (rec__types_with_invariants__container__content (us_split_fields3 temp___expr_175))) (to_rep temp___176))))))
(declare-const c__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const e us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range temp___expr_39)))
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range3 temp___expr_18)))
(declare-const c__split_fields (Array Int us_rep))
(declare-const c__split_fields1 t)
(assert (dynamic_invariant1 (mk___rep1 c__split_discrs (mk___split_fields1 (mk___t c__split_fields c__split_fields1))) true false true true))
(assert (in_range1 i))
(assert (and (forall ((temp___297 Int)) (=> (and (<= (to_rep1 (first c__split_fields1)) temp___297) (<= temp___297 (to_rep1 (last c__split_fields1)))) (let ((temp___164 (select c__split_fields temp___297))) (=> (= (to_rep (rec__types_with_invariants__my_integer__val (us_split_fields1 temp___164))) 0) (= (rec__types_with_invariants__my_integer__sign (us_split_fields1 temp___164)) true))))) (let ((temp___164 e)) (=> (= (to_rep (rec__types_with_invariants__my_integer__val (us_split_fields1 temp___164))) 0) (= (rec__types_with_invariants__my_integer__sign (us_split_fields1 temp___164)) true)))))
(assert (<= i (to_rep (rec__types_with_invariants__container__c c__split_discrs))))
(assert (not (<= (to_rep1 (first c__split_fields1)) i)))
(check-sat)
(exit)
