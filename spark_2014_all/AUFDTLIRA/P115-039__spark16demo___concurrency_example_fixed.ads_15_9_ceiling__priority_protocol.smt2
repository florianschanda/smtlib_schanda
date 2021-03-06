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
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(declare-sort character 0)
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (character character) Bool)
(declare-const dummy2 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range2 low) (in_range2 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int character)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))
(define-fun of_array ((a (Array Int character)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
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
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y)))))
(declare-fun user_eq3 (us_t us_t) Bool)
(declare-const dummy3 us_t)
(declare-fun to_string (us_image) us_t)
(declare-fun from_string (us_t) us_image)
(declare-datatypes () ((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content a))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-sort us_rep 0)
(declare-fun bool_eq2 (us_rep us_rep) Bool)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((time__ref (mk_time__ref (time__content us_rep)))))
(define-fun time__ref___projection ((a time__ref)) us_rep (time__content a))
(declare-sort us_main_type1 0)
(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)
(declare-sort us_rep1 0)
(declare-fun bool_eq3 (us_rep1 us_rep1) Bool)
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep1) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep1) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))
(declare-fun user_eq5 (us_rep1 us_rep1) Bool)
(declare-const dummy5 us_rep1)
(declare-datatypes () ((time_span__ref (mk_time_span__ref (time_span__content us_rep1)))))
(define-fun time_span__ref___projection ((a time_span__ref)) us_rep1 (time_span__content a))
(declare-fun oadd (us_rep us_rep1) us_rep)
(declare-fun oadd__function_guard (us_rep us_rep us_rep1) Bool)
(assert true)
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-fun milliseconds (Int) us_rep1)
(declare-fun milliseconds__function_guard (us_rep1 Int) Bool)
(assert true)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int integer))))))
(declare-fun slide1 ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first2 Int)) (! (= (slide1 a first2 first2) a) :pattern ((slide1 a first2 first2))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq4 ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_220 Int)) (=> (and (<= a__first temp___idx_220) (<= temp___idx_220 a__last)) (= (to_rep1 (select a temp___idx_220)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_220))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq4 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_220 Int)) (=> (and (<= a__first temp___idx_220) (<= temp___idx_220 a__last)) (= (to_rep1 (select a temp___idx_220)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_220)))))))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__concurrency_example_fixed__dataT__value (Array Int integer))))))
(define-fun us_split_fields_Value__2__projection ((a us_split_fields)) (Array Int integer) (rec__concurrency_example_fixed__dataT__value a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___31__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep2 (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___33__projection ((a us_rep2)) us_split_fields (us_split_fields1 a))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep2) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep2) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep2)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment3 a))))
(declare-const concurrency_example_fixed__dataT__value__first__bit Int)
(declare-const concurrency_example_fixed__dataT__value__last__bit Int)
(declare-const concurrency_example_fixed__dataT__value__position Int)
(assert (<= 0 concurrency_example_fixed__dataT__value__first__bit))
(assert (< concurrency_example_fixed__dataT__value__first__bit concurrency_example_fixed__dataT__value__last__bit))
(assert (<= 0 concurrency_example_fixed__dataT__value__position))
(declare-fun user_eq6 (us_rep2 us_rep2) Bool)
(declare-datatypes () ((dataT__ref (mk_dataT__ref (dataT__content us_rep2)))))
(define-fun dataT__ref___projection ((a dataT__ref)) us_rep2 (dataT__content a))
(declare-fun get (us_rep2) (Array Int integer))
(declare-fun get__function_guard ((Array Int integer) us_rep2) Bool)
(declare-const all_zeroes (Array Int integer))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun default_initial_assumption ((temp___expr_2014 us_rep2) (temp___skip_top_level_2015 Bool)) Bool (= (rec__concurrency_example_fixed__dataT__value (us_split_fields1 temp___expr_2014)) all_zeroes))
(assert true)
(assert (forall ((self__ us_rep2)) (! (= (get self__) (rec__concurrency_example_fixed__dataT__value (us_split_fields1 self__))) :pattern ((get self__)))))
(declare-sort priority 0)
(declare-fun priorityqtint (priority) Int)
(assert (forall ((i priority)) (and (<= 0 (priorityqtint i)) (<= (priorityqtint i) 97))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 97)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq7 (priority priority) Bool)
(declare-const dummy6 priority)
(declare-datatypes () ((priority__ref (mk_priority__ref (priority__content priority)))))
(define-fun priority__ref___projection ((a priority__ref)) priority (priority__content a))
(declare-sort tdata_tD1 0)
(declare-fun tdata_tD1qtint (tdata_tD1) Int)
(assert (forall ((i tdata_tD1)) (and (<= 1 (tdata_tD1qtint i)) (<= (tdata_tD1qtint i) 1000))))
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq8 (tdata_tD1 tdata_tD1) Bool)
(declare-const dummy7 tdata_tD1)
(declare-datatypes () ((tdata_tD1__ref (mk_tdata_tD1__ref (tdata_tD1__content tdata_tD1)))))
(define-fun tdata_tD1__ref___projection ((a tdata_tD1__ref)) tdata_tD1 (tdata_tD1__content a))
(declare-fun concurrency_example_fixed__all_zeroes__aggregate_def (Int) (Array Int integer))
(declare-const all_ones (Array Int integer))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-fun concurrency_example_fixed__all_ones__aggregate_def (Int) (Array Int integer))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-fun temp___String_Literal_2046 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_2046 us_void_param) 1)) 97) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 2)) 108)) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 3)) 108)) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 4)) 32)) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 5)) 122)) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 6)) 101)) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 7)) 114)) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 8)) 111)) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 9)) 101)) (= (to_rep (select (temp___String_Literal_2046 us_void_param) 10)) 115)) :pattern ((temp___String_Literal_2046 us_void_param)))))
(declare-fun temp___String_Literal_2047 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_2047 us_void_param) 1)) 97) (= (to_rep (select (temp___String_Literal_2047 us_void_param) 2)) 108)) (= (to_rep (select (temp___String_Literal_2047 us_void_param) 3)) 108)) (= (to_rep (select (temp___String_Literal_2047 us_void_param) 4)) 32)) (= (to_rep (select (temp___String_Literal_2047 us_void_param) 5)) 111)) (= (to_rep (select (temp___String_Literal_2047 us_void_param) 6)) 110)) (= (to_rep (select (temp___String_Literal_2047 us_void_param) 7)) 101)) (= (to_rep (select (temp___String_Literal_2047 us_void_param) 8)) 115)) :pattern ((temp___String_Literal_2047 us_void_param)))))
(declare-fun temp___String_Literal_2048 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_2048 us_void_param) 1)) 100) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 2)) 97)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 3)) 116)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 4)) 97)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 5)) 32)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 6)) 114)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 7)) 97)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 8)) 99)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 9)) 101)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 10)) 32)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 11)) 100)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 12)) 101)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 13)) 116)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 14)) 101)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 15)) 99)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 16)) 116)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 17)) 101)) (= (to_rep (select (temp___String_Literal_2048 us_void_param) 18)) 100)) :pattern ((temp___String_Literal_2048 us_void_param)))))
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range2 temp___expr_46)))
(define-fun dynamic_invariant2 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range3 temp___expr_74)))
(define-fun dynamic_invariant3 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(assert (= all_zeroes (concurrency_example_fixed__all_zeroes__aggregate_def 0)))
(declare-const rliteral integer)
(assert (= (integerqtint rliteral) 0))
(assert (forall ((temp___222 Int)) (=> (dynamic_invariant temp___222 true true true true) (forall ((temp___223 Int)) (= (select (concurrency_example_fixed__all_zeroes__aggregate_def temp___222) temp___223) rliteral)))))
(assert (= all_ones (concurrency_example_fixed__all_ones__aggregate_def (- 2147483648))))
(declare-const rliteral1 integer)
(assert (= (integerqtint rliteral1) (- 2147483648)))
(assert (forall ((temp___225 Int)) (=> (dynamic_invariant temp___225 true true true true) (forall ((temp___226 Int)) (= (select (concurrency_example_fixed__all_ones__aggregate_def temp___225) temp___226) rliteral1)))))
(define-fun dynamic_invariant4 ((temp___expr_259 Int) (temp___is_init_255 Bool) (temp___skip_constant_256 Bool) (temp___do_toplevel_257 Bool) (temp___do_typ_inv_258 Bool)) Bool (=> (or (= temp___is_init_255 true) (<= 0 97)) (in_range4 temp___expr_259)))
(assert (= (concurrency_example_fixed__all_zeroes__aggregate_def 0) all_zeroes))
(assert (= (concurrency_example_fixed__all_ones__aggregate_def (- 2147483648)) all_ones))
(assert (not (<= 97 97)))
(check-sat)
(exit)
