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
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (positive positive) Bool)
(declare-const dummy2 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__frame_condition__cell__value natural) (rec__frame_condition__cell__max_left natural) (rec__frame_condition__cell__max_right natural)))))
(define-fun us_split_fields_Value__projection ((a us_split_fields)) natural (rec__frame_condition__cell__value a))
(define-fun us_split_fields_Max_Left__projection ((a us_split_fields)) natural (rec__frame_condition__cell__max_left a))
(define-fun us_split_fields_Max_Right__projection ((a us_split_fields)) natural (rec__frame_condition__cell__max_right a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (and (= (to_rep (rec__frame_condition__cell__value (us_split_fields1 a))) (to_rep (rec__frame_condition__cell__value (us_split_fields1 b)))) (= (to_rep (rec__frame_condition__cell__max_left (us_split_fields1 a))) (to_rep (rec__frame_condition__cell__max_left (us_split_fields1 b))))) (= (to_rep (rec__frame_condition__cell__max_right (us_split_fields1 a))) (to_rep (rec__frame_condition__cell__max_right (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const frame_condition__cell__value__first__bit Int)
(declare-const frame_condition__cell__value__last__bit Int)
(declare-const frame_condition__cell__value__position Int)
(assert (<= 0 frame_condition__cell__value__first__bit))
(assert (< frame_condition__cell__value__first__bit frame_condition__cell__value__last__bit))
(assert (<= 0 frame_condition__cell__value__position))
(declare-const frame_condition__cell__max_left__first__bit Int)
(declare-const frame_condition__cell__max_left__last__bit Int)
(declare-const frame_condition__cell__max_left__position Int)
(assert (<= 0 frame_condition__cell__max_left__first__bit))
(assert (< frame_condition__cell__max_left__first__bit frame_condition__cell__max_left__last__bit))
(assert (<= 0 frame_condition__cell__max_left__position))
(declare-const frame_condition__cell__max_right__first__bit Int)
(declare-const frame_condition__cell__max_right__last__bit Int)
(declare-const frame_condition__cell__max_right__position Int)
(assert (<= 0 frame_condition__cell__max_right__first__bit))
(assert (< frame_condition__cell__max_right__first__bit frame_condition__cell__max_right__last__bit))
(assert (<= 0 frame_condition__cell__max_right__position))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((cell__ref (mk_cell__ref (cell__content us_rep)))))
(define-fun cell__ref___projection ((a cell__ref)) us_rep (cell__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))
(assert (forall ((a (Array Int us_rep))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int us_rep))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int us_rep)) (a__first Int) (a__last Int) (b (Array Int us_rep)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (bool_eq (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))) true)))) true false))
(assert (forall ((a (Array Int us_rep)) (b (Array Int us_rep))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (bool_eq (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))) true))))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
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
(declare-fun user_eq4 (us_t us_t) Bool)
(declare-const dummy4 us_t)
(declare-datatypes () ((cell_array__ref (mk_cell_array__ref (cell_array__content us_t)))))
(define-fun cell_array__ref___projection ((a cell_array__ref)) us_t (cell_array__content a))
(declare-const a__first integer)
(declare-const a__last integer)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-sort max_kind 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (max_kind max_kind) Bool)
(declare-const dummy5 max_kind)
(declare-datatypes () ((max_kind__ref (mk_max_kind__ref (max_kind__content max_kind)))))
(define-fun max_kind__ref___projection ((a max_kind__ref)) max_kind (max_kind__content a))
(define-fun dynamic_invariant2 ((temp___expr_248 Int) (temp___is_init_244 Bool) (temp___skip_constant_245 Bool) (temp___do_toplevel_246 Bool) (temp___do_typ_inv_247 Bool)) Bool (=> (or (= temp___is_init_244 true) (<= 0 1)) (in_range4 temp___expr_248)))
(declare-const c164b Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const not_kind Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const first2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const last2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const c166b Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const attr__ATTRIBUTE_ADDRESS9 Int)
(declare-const c198b Int)
(declare-const attr__ATTRIBUTE_ADDRESS10 Int)
(declare-const c201b Int)
(declare-const attr__ATTRIBUTE_ADDRESS11 Int)
(declare-const not_kind1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS12 Int)
(declare-const first3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS13 Int)
(declare-const last3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS14 Int)
(declare-const attr__ATTRIBUTE_ADDRESS15 Int)
(declare-const attr__ATTRIBUTE_ADDRESS16 Int)
(declare-const c203b Int)
(declare-const attr__ATTRIBUTE_ADDRESS17 Int)
(declare-const attr__ATTRIBUTE_ADDRESS18 Int)
(declare-const attr__ATTRIBUTE_ADDRESS19 Int)
(declare-const c235b Int)
(declare-const attr__ATTRIBUTE_ADDRESS20 Int)
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant4 ((temp___expr_169 us_t) (temp___is_init_165 Bool) (temp___skip_constant_166 Bool) (temp___do_toplevel_167 Bool) (temp___do_typ_inv_168 Bool)) Bool (=> (not (= temp___skip_constant_166 true)) (dynamic_property 1 2147483647 (first1 temp___expr_169) (last1 temp___expr_169))))
(declare-const o Int)
(declare-const frame_condition__update_max_3__B165b__first__assume Int)
(declare-const result Bool)
(assert (dynamic_property 1 2147483647 (to_rep1 a__first) (to_rep1 a__last)))
(assert (=> (<= (to_rep1 a__first) (to_rep1 a__last)) (= o (+ (- (to_rep1 a__last) (to_rep1 a__first)) 1))))
(assert (=> (not (<= (to_rep1 a__first) (to_rep1 a__last))) (= o 0)))
(assert (= result (ite (= o 0) true false)))
(assert (not (= result true)))
(assert (in_range4 c164b))
(assert (in_range4 not_kind))
(assert (and (= frame_condition__update_max_3__B165b__first__assume (to_rep1 a__first)) (in_range3 (to_rep1 a__first))))
(assert (= frame_condition__update_max_3__B165b__first__assume first2))
(assert (in_range3 first2))
(assert (not (in_range3 (to_rep1 a__last))))
(check-sat)
(exit)
