(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFDTNIRA)
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
(declare-fun div1 (Int Int) Int)
(declare-fun mod1 (Int Int) Int)
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))
(assert (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))
(assert (forall ((x Int) (y Int)) (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))
(assert (forall ((x Int)) (= (div1 x 1) x)))
(assert (forall ((x Int)) (= (mod1 x 1) 0)))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))
(assert (forall ((x Int) (y Int) (z Int)) (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z))) (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1 (+ (* x y) z) x)))))
(assert (forall ((x Int) (y Int) (z Int)) (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z))) (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)))))
(define-fun mod2 ((x Int) (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))
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
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__usergroup_examples__rec_t__a integer) (rec__usergroup_examples__rec_t__b integer) (rec__usergroup_examples__rec_t__c integer)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) integer (rec__usergroup_examples__rec_t__a a))
(define-fun us_split_fields_B__projection ((a us_split_fields)) integer (rec__usergroup_examples__rec_t__b a))
(define-fun us_split_fields_C__projection ((a us_split_fields)) integer (rec__usergroup_examples__rec_t__c a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (and (= (to_rep (rec__usergroup_examples__rec_t__a (us_split_fields1 a))) (to_rep (rec__usergroup_examples__rec_t__a (us_split_fields1 b)))) (= (to_rep (rec__usergroup_examples__rec_t__b (us_split_fields1 a))) (to_rep (rec__usergroup_examples__rec_t__b (us_split_fields1 b))))) (= (to_rep (rec__usergroup_examples__rec_t__c (us_split_fields1 a))) (to_rep (rec__usergroup_examples__rec_t__c (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const usergroup_examples__rec_t__a__first__bit Int)
(declare-const usergroup_examples__rec_t__a__last__bit Int)
(declare-const usergroup_examples__rec_t__a__position Int)
(assert (<= 0 usergroup_examples__rec_t__a__first__bit))
(assert (< usergroup_examples__rec_t__a__first__bit usergroup_examples__rec_t__a__last__bit))
(assert (<= 0 usergroup_examples__rec_t__a__position))
(declare-const usergroup_examples__rec_t__b__first__bit Int)
(declare-const usergroup_examples__rec_t__b__last__bit Int)
(declare-const usergroup_examples__rec_t__b__position Int)
(assert (<= 0 usergroup_examples__rec_t__b__first__bit))
(assert (< usergroup_examples__rec_t__b__first__bit usergroup_examples__rec_t__b__last__bit))
(assert (<= 0 usergroup_examples__rec_t__b__position))
(declare-const usergroup_examples__rec_t__c__first__bit Int)
(declare-const usergroup_examples__rec_t__c__last__bit Int)
(declare-const usergroup_examples__rec_t__c__position Int)
(assert (<= 0 usergroup_examples__rec_t__c__first__bit))
(assert (< usergroup_examples__rec_t__c__first__bit usergroup_examples__rec_t__c__last__bit))
(assert (<= 0 usergroup_examples__rec_t__c__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((rec_t__ref (mk_rec_t__ref (rec_t__content us_rep)))))
(define-fun rec_t__ref___projection ((a rec_t__ref)) us_rep (rec_t__content a))
(declare-sort index_t 0)
(declare-fun index_tqtint (index_t) Int)
(assert (forall ((i index_t)) (and (<= 1 (index_tqtint i)) (<= (index_tqtint i) 100))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq2 (index_t index_t) Bool)
(declare-const dummy2 index_t)
(declare-datatypes () ((index_t__ref (mk_index_t__ref (index_t__content index_t)))))
(define-fun index_t__ref___projection ((a index_t__ref)) index_t (index_t__content a))
(define-fun dynamic_invariant ((temp___expr_171 Int) (temp___is_init_167 Bool) (temp___skip_constant_168 Bool) (temp___do_toplevel_169 Bool) (temp___do_typ_inv_170 Bool)) Bool (=> (or (= temp___is_init_167 true) (<= 1 100)) (in_range1 temp___expr_171)))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))
(assert (forall ((a (Array Int us_rep))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int us_rep))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int us_rep)) (a__first Int) (a__last Int) (b (Array Int us_rep)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (bool_eq (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))) true)))) true false))
(assert (forall ((a (Array Int us_rep)) (b (Array Int us_rep))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (bool_eq (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-const rliteral integer)
(assert (= (integerqtint rliteral) 0))
(declare-const ar (Array Int us_rep))
(declare-const current Int)
(declare-const result (Array Int us_rep))
(declare-const ar1 (Array Int us_rep))
(assert (in_range1 current))
(assert (= result ar))
(assert (= ar1 (store ar current (mk___rep (mk___split_fields rliteral (rec__usergroup_examples__rec_t__b (us_split_fields1 (select ar current))) (rec__usergroup_examples__rec_t__c (us_split_fields1 (select ar current))))))))
(assert (not (in_range1 (mod2 (+ current 1) 100))))
(check-sat)
(exit)
