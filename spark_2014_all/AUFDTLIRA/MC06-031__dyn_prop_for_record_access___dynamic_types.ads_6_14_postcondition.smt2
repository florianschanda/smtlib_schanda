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
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-const first Int)
(declare-const last Int)
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (integer integer) Bool)
(declare-const dummy3 integer)
(declare-datatypes () ((a_range__ref (mk_a_range__ref (a_range__content integer)))))
(define-fun a_range__ref___projection ((a a_range__ref)) integer (a_range__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first1 Int)) (! (= (slide a first1 first1) a) :pattern ((slide a first1 first1))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep1 (select a temp___idx_155)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_155))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep1 (select a temp___idx_155)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_155)))))))))))
(declare-const dummy4 (Array Int integer))
(declare-const value__size Int)
(declare-fun object__size ((Array Int integer)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int integer)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int integer)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))
(declare-fun user_eq4 ((Array Int integer) (Array Int integer)) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__dynamic_types__search__result_type__from (Array Int integer)) (rec__dynamic_types__search__result_type__result natural)))))
(define-fun us_split_fields_From__projection ((a us_split_fields)) (Array Int integer) (rec__dynamic_types__search__result_type__from a))
(define-fun us_split_fields_Result__projection ((a us_split_fields)) natural (rec__dynamic_types__search__result_type__result a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (= (bool_eq (rec__dynamic_types__search__result_type__from (us_split_fields1 a)) 1 1 (rec__dynamic_types__search__result_type__from (us_split_fields1 b)) 1 1) true) (= (to_rep (rec__dynamic_types__search__result_type__result (us_split_fields1 a))) (to_rep (rec__dynamic_types__search__result_type__result (us_split_fields1 b))))) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const dynamic_types__search__result_type__from__first__bit Int)
(declare-const dynamic_types__search__result_type__from__last__bit Int)
(declare-const dynamic_types__search__result_type__from__position Int)
(assert (<= 0 dynamic_types__search__result_type__from__first__bit))
(assert (< dynamic_types__search__result_type__from__first__bit dynamic_types__search__result_type__from__last__bit))
(assert (<= 0 dynamic_types__search__result_type__from__position))
(declare-const dynamic_types__search__result_type__result__first__bit Int)
(declare-const dynamic_types__search__result_type__result__last__bit Int)
(declare-const dynamic_types__search__result_type__result__position Int)
(assert (<= 0 dynamic_types__search__result_type__result__first__bit))
(assert (< dynamic_types__search__result_type__result__first__bit dynamic_types__search__result_type__result__last__bit))
(assert (<= 0 dynamic_types__search__result_type__result__position))
(declare-fun user_eq5 (us_rep us_rep) Bool)
(declare-const dummy5 us_rep)
(declare-datatypes () ((result_type__ref (mk_result_type__ref (result_type__content us_rep)))))
(define-fun result_type__ref___projection ((a result_type__ref)) us_rep (result_type__content a))
(declare-fun search_range (Int) us_rep)
(declare-fun search_range__function_guard (us_rep Int) Bool)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int natural))))))
(declare-fun slide1 ((Array Int natural) Int Int) (Array Int natural))
(assert (forall ((a (Array Int natural))) (forall ((first1 Int)) (! (= (slide1 a first1 first1) a) :pattern ((slide1 a first1 first1))))))
(assert (forall ((a (Array Int natural))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int natural)) (a__first Int) (a__last Int) (b (Array Int natural)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int natural)) (b (Array Int natural))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-sort t 0)
(declare-fun first1 (t) integer)
(declare-fun last1 (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep1 (first1 (mk f l))) f) (= (to_rep1 (last1 (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int natural)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int natural) (elts a))
(define-fun of_array ((a (Array Int natural)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first2 ((a us_t)) Int (to_rep1 (first1 (rt a))))
(define-fun last2 ((a us_t)) Int (to_rep1 (last1 (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first2 a) (last2 a)) (+ (- (last2 a) (first2 a)) 1) 0))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int natural)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int natural)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int natural)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int natural))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int natural))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int natural))) (<= 0 (object__alignment2 a))))
(define-fun bool_eq3 ((x us_t) (y us_t)) Bool (bool_eq2 (elts x) (to_rep1 (first1 (rt x))) (to_rep1 (last1 (rt x))) (elts y) (to_rep1 (first1 (rt y))) (to_rep1 (last1 (rt y)))))
(declare-fun user_eq6 (us_t us_t) Bool)
(declare-const dummy6 us_t)
(declare-datatypes () ((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content a))
(declare-const a us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const c Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort twrapperD1 0)
(declare-fun twrapperD1qtint (twrapperD1) Int)
(assert (forall ((i twrapperD1)) (and (<= 1 (twrapperD1qtint i)) (<= (twrapperD1qtint i) 1))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq7 (twrapperD1 twrapperD1) Bool)
(declare-const dummy7 twrapperD1)
(declare-datatypes () ((twrapperD1__ref (mk_twrapperD1__ref (twrapperD1__content twrapperD1)))))
(define-fun twrapperD1__ref___projection ((a1 twrapperD1__ref)) twrapperD1 (twrapperD1__content a1))
(define-fun dynamic_invariant1 ((temp___expr_194 us_rep) (temp___is_init_190 Bool) (temp___skip_constant_191 Bool) (temp___do_toplevel_192 Bool) (temp___do_typ_inv_193 Bool)) Bool (forall ((temp___195 Int)) (=> (and (<= 1 temp___195) (<= temp___195 1)) (=> (or (= temp___is_init_190 true) (<= first last)) (dynamic_property first last (to_rep1 (select (rec__dynamic_types__search__result_type__from (us_split_fields1 temp___expr_194)) temp___195)))))))
(assert (forall ((from Int)) (! (=> (and (dynamic_invariant from true true true true) (and (<= (first2 a) from) (<= from (last2 a)))) (let ((result (search_range from))) (and (or (and (= (to_rep (rec__dynamic_types__search__result_type__result (us_split_fields1 result))) 0) (forall ((i Int)) (=> (and (<= from i) (<= i (to_rep1 (let ((temp___203 (rec__dynamic_types__search__result_type__from (us_split_fields1 result)))) (select temp___203 1))))) (not (= (to_rep (select (to_array a) i)) c))))) (and (and (<= (first2 a) (to_rep (rec__dynamic_types__search__result_type__result (us_split_fields1 result)))) (<= (to_rep (rec__dynamic_types__search__result_type__result (us_split_fields1 result))) (last2 a))) (= (to_rep (select (to_array a) (to_rep (rec__dynamic_types__search__result_type__result (us_split_fields1 result))))) c))) (dynamic_invariant1 result true false true true)))) :pattern ((search_range from)))))
(define-fun dynamic_invariant2 ((temp___expr_160 us_t) (temp___is_init_156 Bool) (temp___skip_constant_157 Bool) (temp___do_toplevel_158 Bool) (temp___do_typ_inv_159 Bool)) Bool (=> (not (= temp___skip_constant_157 true)) (dynamic_property1 1 2147483647 (first2 temp___expr_160) (last2 temp___expr_160))))
(define-fun dynamic_invariant3 ((temp___expr_177 Int) (temp___is_init_173 Bool) (temp___skip_constant_174 Bool) (temp___do_toplevel_175 Bool) (temp___do_typ_inv_176 Bool)) Bool (=> (or (= temp___is_init_173 true) (<= first last)) (dynamic_property first last temp___expr_177)))
(assert (= first (first2 a)))
(assert (= last (last2 a)))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(define-fun dynamic_invariant4 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(define-fun dynamic_invariant5 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant6 ((temp___expr_184 (Array Int integer)) (temp___is_init_180 Bool) (temp___skip_constant_181 Bool) (temp___do_toplevel_182 Bool) (temp___do_typ_inv_183 Bool)) Bool (forall ((temp___185 Int)) (=> (and (<= 1 temp___185) (<= temp___185 1)) (=> (or (= temp___is_init_180 true) (<= first last)) (dynamic_property first last (to_rep1 (select temp___expr_184 temp___185)))))))
(declare-const from Int)
(declare-const result__ Int)
(declare-const tmp__split_fields (Array Int integer))
(declare-const tmp__split_fields1 natural)
(declare-const us Int)
(declare-const o Int)
(declare-const temp___212 (Array Int integer))
(declare-const temp___2121 natural)
(declare-const temp___211 Int)
(declare-const temp___210 Int)
(declare-const o1 Int)
(declare-const temp___207 (Array Int integer))
(declare-const temp___2071 natural)
(declare-const result Int)
(declare-const from1 Int)
(declare-const from2 Int)
(declare-const result__1 Int)
(declare-const tmp__split_fields2 (Array Int integer))
(declare-const tmp__split_fields3 natural)
(declare-const dynamic_types__search__result Int)
(declare-const result1 (Array Int integer))
(declare-const result2 natural)
(declare-const tmp__split_fields4 (Array Int integer))
(declare-const tmp__split_fields5 natural)
(declare-const result3 Int)
(declare-const result__2 Int)
(declare-const result4 Int)
(declare-const from3 Int)
(declare-const result5 Int)
(declare-const dynamic_types__search__result1 Int)
(declare-const result6 Int)
(declare-const dynamic_types__search__result2 Int)
(declare-const dynamic_types__search__result3 Int)
(declare-const dynamic_types__search__result4 Int)
(declare-const from4 int__ref)
(declare-const result__3 int__ref)
(declare-const tmp__split_fields6 us_split_fields__ref)
(declare-const dynamic_types__search__result5 int__ref)
(declare-const from5 Int)
(declare-const result__4 Int)
(declare-const tmp__split_fields7 us_split_fields)
(declare-const dynamic_types__search__result6 Int)
(declare-const from6 int__ref)
(declare-const result__5 int__ref)
(declare-const tmp__split_fields8 us_split_fields__ref)
(declare-const dynamic_types__search__result7 int__ref)
(declare-const from7 Int)
(declare-const result__6 Int)
(declare-const tmp__split_fields9 us_split_fields)
(declare-const dynamic_types__search__result8 Int)
(define-fun tmp__split_fields10 () us_split_fields (mk___split_fields tmp__split_fields4 tmp__split_fields5))
(define-fun temp___2072 () us_rep (mk___rep (mk___split_fields temp___207 temp___2071)))
(declare-const result7 Int)
(assert (dynamic_invariant2 a true false true true))
(assert (in_range2 c))
(assert (<= (to_rep1 (first1 (rt a))) (to_rep1 (last1 (rt a)))))
(assert (and (= us (to_rep1 (first1 (rt a)))) (dynamic_property first last (to_rep1 (first1 (rt a))))))
(assert (= o (to_rep1 (first1 (rt a)))))
(assert (= (mk_int__ref result) (mk_int__ref from)))
(assert (= from1 o))
(assert (dynamic_property first last from1))
(assert (=> (<= 0 2147483647) (in_range2 result__)))
(assert (dynamic_invariant1 (mk___rep (mk___split_fields tmp__split_fields tmp__split_fields1)) false false true true))
(assert (= dynamic_types__search__result5 (mk_int__ref dynamic_types__search__result3)))
(assert (= tmp__split_fields6 (mk___split_fields__ref tmp__split_fields10)))
(assert (= result__3 (mk_int__ref result__2)))
(assert (= from4 (mk_int__ref from3)))
(assert (= dynamic_types__search__result6 dynamic_types__search__result4))
(assert (= tmp__split_fields7 tmp__split_fields10))
(assert (= result__4 result__2))
(assert (= from5 from3))
(assert (and (= tmp__split_fields temp___212) (= tmp__split_fields1 temp___2121)))
(assert (= temp___211 result__))
(assert (= temp___210 from1))
(assert (forall ((i Int)) (=> (and (<= (to_rep1 (first1 (rt a))) i) (<= i (- from2 1))) (not (= (to_rep (select (elts a) i)) c)))))
(assert (and (and (=> (<= first last) (dynamic_property first last from2)) (=> (<= 0 2147483647) (in_range2 result__1))) (dynamic_invariant1 (mk___rep (mk___split_fields tmp__split_fields2 tmp__split_fields3)) false true true true)))
(assert (and (= o1 from2) (in_range2 from2)))
(assert (and (= temp___2072 (search_range o1)) (and (dynamic_invariant1 temp___2072 true false true true) (or (and (= (to_rep temp___2071) 0) (forall ((i Int)) (=> (and (<= o1 i) (<= i (to_rep1 (select temp___207 1)))) (not (= (to_rep (select (elts a) i)) c))))) (and (and (<= (to_rep1 (first1 (rt a))) (to_rep temp___2071)) (<= (to_rep temp___2071) (to_rep1 (last1 (rt a))))) (= (to_rep (select (elts a) (to_rep temp___2071))) c))))))
(assert (= result1 tmp__split_fields2))
(assert (= result2 tmp__split_fields3))
(assert (= temp___207 tmp__split_fields4))
(assert (= temp___2071 tmp__split_fields5))
(assert (= result__1 result3))
(assert (= result__2 (to_rep tmp__split_fields5)))
(assert (= from2 result4))
(assert (= from3 (to_rep1 (select tmp__split_fields4 1))))
(assert (or (and (and (= dynamic_types__search__result1 dynamic_types__search__result3) (= dynamic_types__search__result4 dynamic_types__search__result1)) (and (< 0 result__2) (and (= dynamic_types__search__result result5) (= dynamic_types__search__result1 result__2)))) (and (and (not (< 0 result__2)) (= dynamic_types__search__result1 dynamic_types__search__result)) (and (and (= dynamic_types__search__result2 dynamic_types__search__result3) (= dynamic_types__search__result4 dynamic_types__search__result2)) (and (= from3 (to_rep1 (last1 (rt a)))) (and (= dynamic_types__search__result1 result6) (= dynamic_types__search__result2 0)))))))
(assert (= dynamic_types__search__result7 dynamic_types__search__result5))
(assert (= tmp__split_fields8 tmp__split_fields6))
(assert (= result__5 result__3))
(assert (= from6 from4))
(assert (= dynamic_types__search__result8 dynamic_types__search__result6))
(assert (= tmp__split_fields9 tmp__split_fields7))
(assert (= result__6 result__4))
(assert (= from7 from5))
(assert (= result7 (int__content dynamic_types__search__result7)))
(assert (not (or (= (int__content dynamic_types__search__result7) 0) (and (and (<= (to_rep1 (first1 (rt a))) (int__content dynamic_types__search__result7)) (<= (int__content dynamic_types__search__result7) (to_rep1 (last1 (rt a))))) (= (to_rep (select (elts a) (int__content dynamic_types__search__result7))) c)))))
(check-sat)
(exit)
