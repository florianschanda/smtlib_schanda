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
(declare-const a (Array Int us_rep))
(declare-const k Int)
(declare-const max Int)
(declare-const c167b Int)
(declare-const c168b Int)
(declare-const k1 Int)
(declare-const max1 Int)
(declare-const c204b Int)
(declare-const c205b Int)
(declare-const o Int)
(declare-const frame_condition__update_max_3__B165b__first__assume Int)
(declare-const frame_condition__update_max_3__B165b__last__assume Int)
(declare-const temp___282 (Array Int us_rep))
(declare-const temp___280 (Array Int us_rep))
(declare-const temp___278 Int)
(declare-const temp___277 Int)
(declare-const temp___276 Int)
(declare-const temp___275 Int)
(declare-const o1 Int)
(declare-const o2 natural)
(declare-const o3 natural)
(declare-const o4 natural)
(declare-const o5 natural)
(declare-const o6 natural)
(declare-const o7 natural)
(declare-const o8 natural)
(declare-const o9 Int)
(declare-const o10 Int)
(declare-const o11 natural)
(declare-const o12 natural)
(declare-const o13 natural)
(declare-const o14 natural)
(declare-const o15 natural)
(declare-const o16 natural)
(declare-const o17 natural)
(declare-const o18 Int)
(declare-const o19 natural)
(declare-const o20 natural)
(declare-const o21 natural)
(declare-const o22 natural)
(declare-const o23 natural)
(declare-const o24 natural)
(declare-const o25 natural)
(declare-const o26 Int)
(declare-const o27 (Array Int us_rep))
(declare-const frame_condition__update_max_3__B202b__first__assume Int)
(declare-const frame_condition__update_max_3__B202b__last__assume Int)
(declare-const temp___291 Int)
(declare-const temp___289 (Array Int us_rep))
(declare-const temp___287 Int)
(declare-const temp___286 Int)
(declare-const temp___285 Int)
(declare-const temp___292 (Array Int us_rep))
(declare-const o28 Int)
(declare-const o29 us_rep)
(declare-const o30 us_split_fields)
(declare-const o31 natural)
(declare-const o32 Int)
(declare-const o33 Int)
(declare-const o34 us_rep)
(declare-const o35 us_split_fields)
(declare-const o36 natural)
(declare-const o37 Int)
(declare-const o38 natural)
(declare-const o39 us_split_fields)
(declare-const o40 us_rep)
(declare-const o41 Int)
(declare-const o42 (Array Int us_rep))
(declare-const o43 natural)
(declare-const o44 us_split_fields)
(declare-const o45 us_rep)
(declare-const o46 Int)
(declare-const o47 (Array Int us_rep))
(declare-const a1 (Array Int us_rep))
(declare-const k2 Int)
(declare-const max2 Int)
(declare-const c167b1 Int)
(declare-const c168b1 Int)
(declare-const k3 Int)
(declare-const max3 Int)
(declare-const c204b1 Int)
(declare-const c205b1 Int)
(declare-const result Bool)
(declare-const result1 int__ref)
(declare-const k4 Int)
(declare-const result2 int__ref)
(declare-const max4 Int)
(declare-const result3 Bool)
(declare-const result4 int__ref)
(declare-const max5 Int)
(declare-const result5 int__ref)
(declare-const c167b2 Int)
(declare-const result6 int__ref)
(declare-const c168b2 Int)
(declare-const result7 map__ref)
(declare-const a2 (Array Int us_rep))
(declare-const a3 (Array Int us_rep))
(declare-const k5 Int)
(declare-const max6 Int)
(declare-const c167b3 Int)
(declare-const c168b3 Int)
(declare-const k6 int__ref)
(declare-const k7 Int)
(declare-const a4 map__ref)
(declare-const k8 int__ref)
(declare-const max7 int__ref)
(declare-const c167b4 int__ref)
(declare-const c168b4 int__ref)
(declare-const a5 (Array Int us_rep))
(declare-const k9 Int)
(declare-const max8 Int)
(declare-const c167b5 Int)
(declare-const c168b5 Int)
(declare-const a6 map__ref)
(declare-const k10 int__ref)
(declare-const max9 int__ref)
(declare-const c167b6 int__ref)
(declare-const c168b6 int__ref)
(declare-const a7 (Array Int us_rep))
(declare-const k11 Int)
(declare-const max10 Int)
(declare-const c167b7 Int)
(declare-const c168b7 Int)
(declare-const result8 int__ref)
(declare-const k12 Int)
(declare-const result9 int__ref)
(declare-const max11 Int)
(declare-const result10 Bool)
(declare-const result11 int__ref)
(declare-const max12 Int)
(declare-const max13 int__ref)
(declare-const max14 Int)
(declare-const result12 int__ref)
(declare-const c204b2 Int)
(declare-const result13 int__ref)
(declare-const c205b2 Int)
(declare-const result14 map__ref)
(declare-const a8 (Array Int us_rep))
(declare-const result15 map__ref)
(declare-const a9 (Array Int us_rep))
(declare-const a10 map__ref)
(declare-const a11 (Array Int us_rep))
(declare-const a12 (Array Int us_rep))
(declare-const k13 Int)
(declare-const max15 Int)
(declare-const c204b3 Int)
(declare-const c205b3 Int)
(declare-const k14 int__ref)
(declare-const k15 Int)
(declare-const a13 map__ref)
(declare-const k16 int__ref)
(declare-const max16 int__ref)
(declare-const c204b4 int__ref)
(declare-const c205b4 int__ref)
(declare-const a14 (Array Int us_rep))
(declare-const k17 Int)
(declare-const max17 Int)
(declare-const c204b5 Int)
(declare-const c205b5 Int)
(declare-const a15 map__ref)
(declare-const k18 int__ref)
(declare-const max18 int__ref)
(declare-const c204b6 int__ref)
(declare-const c205b6 int__ref)
(declare-const a16 (Array Int us_rep))
(declare-const k19 Int)
(declare-const max19 Int)
(declare-const c204b7 Int)
(declare-const c205b7 Int)
(declare-const a17 map__ref)
(declare-const k20 int__ref)
(declare-const max20 int__ref)
(declare-const c167b8 int__ref)
(declare-const c168b8 int__ref)
(declare-const k21 int__ref)
(declare-const max21 int__ref)
(declare-const c204b8 int__ref)
(declare-const c205b8 int__ref)
(declare-const a18 (Array Int us_rep))
(declare-const k22 Int)
(declare-const max22 Int)
(declare-const c167b9 Int)
(declare-const c168b9 Int)
(declare-const k23 Int)
(declare-const max23 Int)
(declare-const c204b9 Int)
(declare-const c205b9 Int)
(declare-const a19 map__ref)
(declare-const k24 int__ref)
(declare-const max24 int__ref)
(declare-const c167b10 int__ref)
(declare-const c168b10 int__ref)
(declare-const k25 int__ref)
(declare-const max25 int__ref)
(declare-const c204b10 int__ref)
(declare-const c205b10 int__ref)
(declare-const a20 (Array Int us_rep))
(declare-const k26 Int)
(declare-const max26 Int)
(declare-const c167b11 Int)
(declare-const c168b11 Int)
(declare-const k27 Int)
(declare-const max27 Int)
(declare-const c204b11 Int)
(declare-const c205b11 Int)
(define-fun c205b12 () int__ref (mk_int__ref c205b))
(define-fun c204b12 () int__ref (mk_int__ref c204b))
(define-fun max28 () int__ref (mk_int__ref max1))
(define-fun k28 () int__ref (mk_int__ref k1))
(define-fun c168b12 () int__ref (mk_int__ref c168b))
(define-fun c167b12 () int__ref (mk_int__ref c167b))
(define-fun max29 () int__ref (mk_int__ref max))
(define-fun k29 () int__ref (mk_int__ref k))
(define-fun a21 () map__ref (mk_map__ref a))
(assert (dynamic_property 1 2147483647 (to_rep1 a__first) (to_rep1 a__last)))
(assert (or (and (and (and (= c205b8 c205b12) (and (= c204b8 c204b12) (and (= max21 max28) (and (= k21 k28) (and (= c168b8 c168b12) (and (= c167b8 c167b12) (and (= max20 max29) (and (= k20 k29) (= a17 a21))))))))) (and (= c205b9 c205b1) (and (= c204b9 c204b1) (and (= max23 max3) (and (= k23 k3) (and (= c168b9 c168b1) (and (= c167b9 c167b1) (and (= max22 max2) (and (= k22 k2) (= a18 a1)))))))))) (and (and (ite (<= (to_rep1 a__first) (to_rep1 a__last)) (= o (+ (- (to_rep1 a__last) (to_rep1 a__first)) 1)) (= o 0)) (= result (ite (= o 0) true false))) (= result true))) (and (and (and (ite (<= (to_rep1 a__first) (to_rep1 a__last)) (= o (+ (- (to_rep1 a__last) (to_rep1 a__first)) 1)) (= o 0)) (= result (ite (= o 0) true false))) (not (= result true))) (and (and (and (= c205b8 c205b6) (and (= c204b8 c204b6) (and (= max21 max18) (and (= k21 k18) (and (= c168b8 c168b6) (and (= c167b8 c167b6) (and (= max20 max9) (and (= k20 k10) (= a17 a15))))))))) (and (= c205b9 c205b7) (and (= c204b9 c204b7) (and (= max23 max19) (and (= k23 k19) (and (= c168b9 c168b7) (and (= c167b9 c167b7) (and (= max22 max10) (and (= k22 k11) (= a18 a16)))))))))) (and (in_range4 c164b) (and (and (in_range4 not_kind) (and (and (and (= frame_condition__update_max_3__B165b__first__assume (to_rep1 a__first)) (in_range3 (to_rep1 a__first))) (= frame_condition__update_max_3__B165b__first__assume first2)) (and (in_range3 first2) (and (and (and (= frame_condition__update_max_3__B165b__last__assume (to_rep1 a__last)) (in_range3 (to_rep1 a__last))) (= frame_condition__update_max_3__B165b__last__assume last2)) (and (in_range3 last2) (and (and (= result1 k29) (= k4 first2)) (and (in_range3 k4) (and (and (= result2 max29) (= max4 0)) (and (in_range2 max4) (and (and (and (= temp___282 a) (and (= temp___280 a) (and (= temp___278 max4) (and (= temp___277 k4) (and (= temp___276 c168b) (and (= temp___275 c167b) (and (and (and (and (and (and (and (and (and (<= (to_rep1 a__first) k4) (<= k4 (to_rep1 a__last))) (= o1 k4)) (= (mk___rep (mk___split_fields o2 o3 o4)) (select a o1))) (and (= o2 o5) (and (= o3 o6) (= o4 o7)))) (= o8 o5)) (= o9 (to_rep o8))) (= result3 (ite (< max4 o9) true false))) (ite (= result3 true) (and (and (and (and (and (and (and (<= (to_rep1 a__first) k4) (<= k4 (to_rep1 a__last))) (= o10 k4)) (= (mk___rep (mk___split_fields o11 o12 o13)) (select a o10))) (and (= o11 o14) (and (= o12 o15) (= o13 o16)))) (= o17 o14)) (= o18 (to_rep o17))) (and (= result4 (mk_int__ref max4)) (= max5 o18))) (= max5 max4))) (and (in_range4 c166b) (and (and (and (= result5 c167b12) (= c167b2 k4)) (in_range3 c167b2)) (and (and (and (= result6 c168b12) (= c168b2 max5)) (in_range2 c168b2)) (and (and (and (and (and (= (to_rep o19) c168b2) (and (= (rec__frame_condition__cell__value (us_split_fields1 (select a c167b2))) o20) (and (= o19 o21) (= (rec__frame_condition__cell__max_right (us_split_fields1 (select a c167b2))) o22)))) (and (= o23 o20) (and (= o24 o21) (= o25 o22)))) (and (and (and (<= (to_rep1 a__first) c167b2) (<= c167b2 (to_rep1 a__last))) (= o26 c167b2)) (= o27 (store a o26 (mk___rep (mk___split_fields o23 o24 o25)))))) (and (= result7 a21) (= a2 o27))) (and (and (and (<= (to_rep1 a__first) k5) (<= k5 (to_rep1 a__last))) (and (and (forall ((i Int)) (=> (and (<= first2 i) (<= i k5)) (<= (to_rep (rec__frame_condition__cell__value (us_split_fields1 (select a3 i)))) max6))) (forall ((i Int)) (=> (and (<= k5 i) (<= i first2)) (<= (to_rep (rec__frame_condition__cell__value (us_split_fields1 (select a3 i)))) max6)))) (forall ((i Int)) (=> (and (<= (to_rep1 a__first) i) (<= i k5)) (forall ((j Int)) (=> (and (<= i j) (<= j k5)) (<= (to_rep (rec__frame_condition__cell__value (us_split_fields1 (select a3 i)))) (to_rep (rec__frame_condition__cell__max_left (us_split_fields1 (select a3 j))))))))))) (and (and (and (and (and (=> (<= 1 2147483647) (in_range3 c167b3)) (=> (<= 0 2147483647) (in_range2 c168b3))) (=> (<= 1 2147483647) (in_range3 k5))) (=> (<= 0 2147483647) (in_range2 max6))) (forall ((temp___281 Int)) (=> (and (<= (to_rep1 a__first) temp___281) (<= temp___281 (to_rep1 a__last))) (= (rec__frame_condition__cell__value (us_split_fields1 (select a3 temp___281))) (rec__frame_condition__cell__value (us_split_fields1 (select temp___280 temp___281))))))) (and (and (= k6 (mk_int__ref k5)) (= k7 k5)) (= k5 last2))))))))))))))) (and (and (= c168b4 (mk_int__ref c168b3)) (and (= c167b4 (mk_int__ref c167b3)) (and (= max7 (mk_int__ref max6)) (and (= k8 k6) (= a4 (mk_map__ref a3)))))) (and (= c168b5 c168b3) (and (= c167b5 c167b3) (and (= max8 max6) (and (= k9 k7) (= a5 a3))))))) (and (and (= c168b6 c168b4) (and (= c167b6 c167b4) (and (= max9 max7) (and (= k10 k8) (= a6 a4))))) (and (= c168b7 c168b5) (and (= c167b7 c167b5) (and (= max10 max8) (and (= k11 k9) (= a7 a5)))))))))))))))) (and (in_range4 c201b) (and (in_range4 not_kind1) (and (and (ite (= 1 0) (and (= frame_condition__update_max_3__B202b__first__assume (to_rep1 a__first)) (in_range3 (to_rep1 a__first))) (and (= frame_condition__update_max_3__B202b__first__assume (to_rep1 a__last)) (in_range3 (to_rep1 a__last)))) (= frame_condition__update_max_3__B202b__first__assume first3)) (and (in_range3 first3) (and (and (ite (= 1 0) (and (= frame_condition__update_max_3__B202b__last__assume (to_rep1 a__last)) (in_range3 (to_rep1 a__last))) (and (= frame_condition__update_max_3__B202b__last__assume (to_rep1 a__first)) (in_range3 (to_rep1 a__first)))) (= frame_condition__update_max_3__B202b__last__assume last3)) (and (in_range3 last3) (and (and (= result8 k28) (= k12 first3)) (and (in_range3 k12) (and (and (= result9 max28) (= max11 0)) (and (in_range2 max11) (and (and (and (= temp___291 max11) (and (= temp___289 (map__content a6)) (and (= temp___287 k12) (and (= temp___286 c205b) (and (= temp___285 c204b) (and (= temp___292 (map__content a6)) (and (and (and (and (and (and (and (and (and (<= (to_rep1 a__first) k12) (<= k12 (to_rep1 a__last))) (= o28 k12)) (= o29 (select (map__content a6) o28))) (= o30 (us_split_fields1 o29))) (= o31 (rec__frame_condition__cell__value o30))) (= o32 (to_rep o31))) (= result10 (ite (< max11 o32) true false))) (ite (= result10 true) (and (and (and (and (and (and (and (and (<= (to_rep1 a__first) k12) (<= k12 (to_rep1 a__last))) (= o33 k12)) (= o34 (select (map__content a6) o33))) (= o35 (us_split_fields1 o34))) (= o36 (rec__frame_condition__cell__value o35))) (= o37 (to_rep o36))) (and (= result11 (mk_int__ref max11)) (= max12 o37))) (and (= max13 (mk_int__ref max12)) (= max14 max12))) (and (= max13 (mk_int__ref max11)) (= max14 max11)))) (and (in_range4 c203b) (and (and (and (= result12 c204b12) (= c204b2 k12)) (in_range3 c204b2)) (and (and (and (= result13 c205b12) (= c205b2 (int__content max13))) (in_range2 c205b2)) (and (ite (= 1 0) (and (and (and (and (and (= (to_rep o38) c205b2) (= o39 (mk___split_fields (rec__frame_condition__cell__value (us_split_fields1 (select (map__content a6) c204b2))) o38 (rec__frame_condition__cell__max_right (us_split_fields1 (select (map__content a6) c204b2)))))) (= o40 (mk___rep o39))) (and (and (and (<= (to_rep1 a__first) c204b2) (<= c204b2 (to_rep1 a__last))) (= o41 c204b2)) (= o42 (store (map__content a6) o41 o40)))) (and (= result14 a6) (= a8 o42))) (and (= a10 (mk_map__ref a8)) (= a11 a8))) (and (and (and (and (and (= (to_rep o43) c205b2) (= o44 (mk___split_fields (rec__frame_condition__cell__value (us_split_fields1 (select (map__content a6) c204b2))) (rec__frame_condition__cell__max_left (us_split_fields1 (select (map__content a6) c204b2))) o43))) (= o45 (mk___rep o44))) (and (and (and (<= (to_rep1 a__first) c204b2) (<= c204b2 (to_rep1 a__last))) (= o46 c204b2)) (= o47 (store (map__content a6) o46 o45)))) (and (= result15 a6) (= a9 o47))) (and (= a10 (mk_map__ref a9)) (= a11 a9)))) (and (and (and (<= (to_rep1 a__first) k13) (<= k13 (to_rep1 a__last))) (and (and (forall ((i Int)) (=> (and (<= first3 i) (<= i k13)) (<= (to_rep (rec__frame_condition__cell__value (us_split_fields1 (select a12 i)))) max15))) (forall ((i Int)) (=> (and (<= k13 i) (<= i first3)) (<= (to_rep (rec__frame_condition__cell__value (us_split_fields1 (select a12 i)))) max15)))) (and (forall ((i Int)) (=> (and (<= k13 i) (<= i (to_rep1 a__last))) (forall ((j Int)) (=> (and (<= i j) (<= j (to_rep1 a__last))) (<= (to_rep (rec__frame_condition__cell__value (us_split_fields1 (select a12 j)))) (to_rep (rec__frame_condition__cell__max_right (us_split_fields1 (select a12 i))))))))) (forall ((i Int)) (=> (and (<= (to_rep1 a__first) i) (<= i (to_rep1 a__last))) (= (to_rep (rec__frame_condition__cell__max_left (us_split_fields1 (select a12 i)))) (to_rep (rec__frame_condition__cell__max_left (us_split_fields1 (select temp___292 i)))))))))) (and (and (and (and (and (=> (<= 1 2147483647) (in_range3 c204b3)) (=> (<= 0 2147483647) (in_range2 c205b3))) (=> (<= 1 2147483647) (in_range3 k13))) (forall ((temp___290 Int)) (=> (and (<= (to_rep1 a__first) temp___290) (<= temp___290 (to_rep1 a__last))) (= (rec__frame_condition__cell__value (us_split_fields1 (select a12 temp___290))) (rec__frame_condition__cell__value (us_split_fields1 (select temp___289 temp___290))))))) (=> (<= 0 2147483647) (in_range2 max15))) (and (and (= k14 (mk_int__ref k13)) (= k15 k13)) (= k13 last3))))))))))))))) (and (and (= c205b4 (mk_int__ref c205b3)) (and (= c204b4 (mk_int__ref c204b3)) (and (= max16 (mk_int__ref max15)) (and (= k16 k14) (= a13 (mk_map__ref a12)))))) (and (= c205b5 c205b3) (and (= c204b5 c204b3) (and (= max17 max15) (and (= k17 k15) (= a14 a12))))))) (and (and (= c205b6 c205b4) (and (= c204b6 c204b4) (and (= max18 max16) (and (= k18 k16) (= a15 a13))))) (and (= c205b7 c205b5) (and (= c204b7 c204b5) (and (= max19 max17) (and (= k19 k17) (= a16 a14)))))))))))))))))))))))
(assert (= c205b10 c205b8))
(assert (= c204b10 c204b8))
(assert (= max25 max21))
(assert (= k25 k21))
(assert (= c168b10 c168b8))
(assert (= c167b10 c167b8))
(assert (= max24 max20))
(assert (= k24 k20))
(assert (= a19 a17))
(assert (= c205b11 c205b9))
(assert (= c204b11 c204b9))
(assert (= max27 max23))
(assert (= k27 k23))
(assert (= c168b11 c168b9))
(assert (= c167b11 c167b9))
(assert (= max26 max22))
(assert (= k26 k22))
(assert (= a20 a18))
(declare-const i Int)
(assert (<= (to_rep1 a__first) i))
(assert (<= i (to_rep1 a__last)))
(declare-const j Int)
(assert (<= i j))
(assert (<= j (to_rep1 a__last)))
(assert (not (<= (to_rep (rec__frame_condition__cell__value (us_split_fields1 (select (map__content a19) i)))) (to_rep (rec__frame_condition__cell__max_left (us_split_fields1 (select (map__content a19) j)))))))
(check-sat)
(exit)
