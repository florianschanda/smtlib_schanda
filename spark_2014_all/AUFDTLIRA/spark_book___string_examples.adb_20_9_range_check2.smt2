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
(declare-sort character 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (character character) Bool)
(declare-const dummy2 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (in_range1 low) (in_range1 high))))))
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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-fun concat1 ((Array Int character) Int Int (Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int)) (forall ((i Int)) (! (and (=> (and (<= a_first i) (<= i a_last)) (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i))) (=> (< a_last i) (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select (concat1 a a_first a_last b b_first b_last) i)))))))
(declare-fun concat_singleton_left (character Int (Array Int character) Int Int) (Array Int character))
(assert (forall ((a character)) (forall ((b (Array Int character))) (forall ((a_first Int) (b_first Int) (b_last Int)) (! (and (= (select (concat_singleton_left a a_first b b_first b_last) a_first) a) (forall ((i Int)) (! (=> (< a_first i) (= (select (concat_singleton_left a a_first b b_first b_last) i) (select b (+ (- i a_first) (- b_first 1))))) :pattern ((select (concat_singleton_left a a_first b b_first b_last) i))))) :pattern ((concat_singleton_left a a_first b b_first b_last)))))))
(declare-fun concat_singleton_right ((Array Int character) Int Int character) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((b character)) (forall ((a_first Int) (a_last Int)) (! (and (= (select (concat_singleton_right a a_first a_last b) (+ a_last 1)) b) (forall ((i Int)) (! (=> (and (<= a_first i) (<= i a_last)) (= (select (concat_singleton_right a a_first a_last b) i) (select a i))) :pattern ((select (concat_singleton_right a a_first a_last b) i)) :pattern ((select a i))))) :pattern ((concat_singleton_right a a_first a_last b)))))))
(declare-fun concat_singletons (character Int character) (Array Int character))
(assert (forall ((a character) (b character)) (forall ((a_first Int)) (! (and (= (select (concat_singletons a a_first b) a_first) a) (= (select (concat_singletons a a_first b) (+ a_first 1)) b)) :pattern ((concat_singletons a a_first b))))))
(declare-fun singleton1 (character Int) (Array Int character))
(assert (forall ((v character)) (forall ((i Int)) (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i))))))
(define-fun dynamic_invariant1 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-sort tname_stringP1 0)
(declare-fun tname_stringP1qtint (tname_stringP1) Int)
(assert (forall ((i tname_stringP1)) (and (<= 1 (tname_stringP1qtint i)) (<= (tname_stringP1qtint i) 20))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 20)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (tname_stringP1 tname_stringP1) Bool)
(declare-const dummy4 tname_stringP1)
(declare-datatypes () ((tname_stringP1__ref (mk_tname_stringP1__ref (tname_stringP1__content tname_stringP1)))))
(define-fun tname_stringP1__ref___projection ((a tname_stringP1__ref)) tname_stringP1 (tname_stringP1__content a))
(declare-const currency us_t)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-fun temp___String_Literal_173 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_173 us_void_param) 1)) 68) (= (to_rep (select (temp___String_Literal_173 us_void_param) 2)) 111)) (= (to_rep (select (temp___String_Literal_173 us_void_param) 3)) 108)) (= (to_rep (select (temp___String_Literal_173 us_void_param) 4)) 108)) (= (to_rep (select (temp___String_Literal_173 us_void_param) 5)) 97)) (= (to_rep (select (temp___String_Literal_173 us_void_param) 6)) 114)) (= (to_rep (select (temp___String_Literal_173 us_void_param) 7)) 115)) :pattern ((temp___String_Literal_173 us_void_param)))))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort tTaddressSP1 0)
(declare-fun tTaddressSP1qtint (tTaddressSP1) Int)
(assert (forall ((i tTaddressSP1)) (and (<= 1 (tTaddressSP1qtint i)) (<= (tTaddressSP1qtint i) 40))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 40)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (tTaddressSP1 tTaddressSP1) Bool)
(declare-const dummy5 tTaddressSP1)
(declare-datatypes () ((tTaddressSP1__ref (mk_tTaddressSP1__ref (tTaddressSP1__content tTaddressSP1)))))
(define-fun tTaddressSP1__ref___projection ((a tTaddressSP1__ref)) tTaddressSP1 (tTaddressSP1__content a))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-sort tTcitySP1 0)
(declare-fun tTcitySP1qtint (tTcitySP1) Int)
(assert (forall ((i tTcitySP1)) (and (<= 3 (tTcitySP1qtint i)) (<= (tTcitySP1qtint i) 22))))
(define-fun in_range5 ((x Int)) Bool (and (<= 3 x) (<= x 22)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (tTcitySP1 tTcitySP1) Bool)
(declare-const dummy6 tTcitySP1)
(declare-datatypes () ((tTcitySP1__ref (mk_tTcitySP1__ref (tTcitySP1__content tTcitySP1)))))
(define-fun tTcitySP1__ref___projection ((a tTcitySP1__ref)) tTcitySP1 (tTcitySP1__content a))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-sort t7b 0)
(declare-fun t7bqtint (t7b) Int)
(assert (forall ((i t7b)) (and (<= 9 (t7bqtint i)) (<= (t7bqtint i) 28))))
(define-fun in_range6 ((x Int)) Bool (and (<= 9 x) (<= x 28)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq7 (t7b t7b) Bool)
(declare-const dummy7 t7b)
(declare-datatypes () ((t7b__ref (mk_t7b__ref (t7b__content t7b)))))
(define-fun t7b__ref___projection ((a t7b__ref)) t7b (t7b__content a))
(declare-const r9b Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq8 (integer integer) Bool)
(declare-const dummy8 integer)
(declare-datatypes () ((t10b__ref (mk_t10b__ref (t10b__content integer)))))
(define-fun t10b__ref___projection ((a t10b__ref)) integer (t10b__content a))
(declare-sort t1 0)
(declare-fun first2 (t1) integer)
(declare-fun last2 (t1) integer)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep1 (first2 (mk1 f l))) f) (= (to_rep1 (last2 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (dynamic_property1 range_first range_last low) (dynamic_property1 range_first range_last high))))))
(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int character)) (rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int character) (elts1 a))
(define-fun of_array1 ((a (Array Int character)) (f Int) (l Int)) us_t1 (mk___t1 a (mk1 f l)))
(define-fun first3 ((a us_t1)) Int (to_rep1 (first2 (rt1 a))))
(define-fun last3 ((a us_t1)) Int (to_rep1 (last2 (rt1 a))))
(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last3 a)) (+ (- (last3 a) (first3 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int character)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int character)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int character)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int character))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq2 ((x us_t1) (y us_t1)) Bool (bool_eq (elts1 x) (to_rep1 (first2 (rt1 x))) (to_rep1 (last2 (rt1 x))) (elts1 y) (to_rep1 (first2 (rt1 y))) (to_rep1 (last2 (rt1 y)))))
(declare-fun user_eq9 (us_t1 us_t1) Bool)
(declare-const dummy9 us_t1)
(declare-datatypes () ((t11b__ref (mk_t11b__ref (t11b__content us_t1)))))
(define-fun t11b__ref___projection ((a t11b__ref)) us_t1 (t11b__content a))
(declare-const r13b Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(define-fun dynamic_property3 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)
(declare-fun user_eq10 (integer integer) Bool)
(declare-const dummy10 integer)
(declare-datatypes () ((t14b__ref (mk_t14b__ref (t14b__content integer)))))
(define-fun t14b__ref___projection ((a t14b__ref)) integer (t14b__content a))
(declare-sort t2 0)
(declare-fun first4 (t2) integer)
(declare-fun last4 (t2) integer)
(declare-fun mk2 (Int Int) t2)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep1 (first4 (mk2 f l))) f) (= (to_rep1 (last4 (mk2 f l))) l)))) :pattern ((mk2 f l)))))
(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (dynamic_property3 range_first range_last low) (dynamic_property3 range_first range_last high))))))
(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int character)) (rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int character) (elts2 a))
(define-fun of_array2 ((a (Array Int character)) (f Int) (l Int)) us_t2 (mk___t2 a (mk2 f l)))
(define-fun first5 ((a us_t2)) Int (to_rep1 (first4 (rt2 a))))
(define-fun last5 ((a us_t2)) Int (to_rep1 (last4 (rt2 a))))
(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last5 a)) (+ (- (last5 a) (first5 a)) 1) 0))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int character)) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int character)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int character)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int character))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size2))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment2 a))))
(define-fun bool_eq3 ((x us_t2) (y us_t2)) Bool (bool_eq (elts2 x) (to_rep1 (first4 (rt2 x))) (to_rep1 (last4 (rt2 x))) (elts2 y) (to_rep1 (first4 (rt2 y))) (to_rep1 (last4 (rt2 y)))))
(declare-fun user_eq11 (us_t2 us_t2) Bool)
(declare-const dummy11 us_t2)
(declare-datatypes () ((t15b__ref (mk_t15b__ref (t15b__content us_t2)))))
(define-fun t15b__ref___projection ((a t15b__ref)) us_t2 (t15b__content a))
(declare-fun temp_____aggregate_def_599 (Int) (Array Int character))
(declare-fun temp___String_Literal_603 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (= (to_rep (select (temp___String_Literal_603 us_void_param) 1)) 80) (= (to_rep (select (temp___String_Literal_603 us_void_param) 2)) 101)) (= (to_rep (select (temp___String_Literal_603 us_void_param) 3)) 116)) (= (to_rep (select (temp___String_Literal_603 us_void_param) 4)) 101)) (= (to_rep (select (temp___String_Literal_603 us_void_param) 5)) 114)) :pattern ((temp___String_Literal_603 us_void_param)))))
(declare-fun temp___String_Literal_609 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (= (to_rep (select (temp___String_Literal_609 us_void_param) 1)) 80) (= (to_rep (select (temp___String_Literal_609 us_void_param) 2)) 101)) (= (to_rep (select (temp___String_Literal_609 us_void_param) 3)) 116)) (= (to_rep (select (temp___String_Literal_609 us_void_param) 4)) 101)) (= (to_rep (select (temp___String_Literal_609 us_void_param) 5)) 114)) :pattern ((temp___String_Literal_609 us_void_param)))))
(define-fun dynamic_invariant2 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(define-fun dynamic_invariant3 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range2 temp___expr_74)))
(assert (= currency (of_array (temp___String_Literal_173 Tuple0) 1 7)))
(assert (forall ((temp___601 Int)) (=> (dynamic_invariant3 temp___601 true true true true) (forall ((temp___602 Int)) (= (to_rep (select (temp_____aggregate_def_599 temp___601) temp___602)) temp___601)))))
(declare-const count Int)
(declare-const name (Array Int character))
(declare-const address (Array Int character))
(declare-const city (Array Int character))
(declare-const o (Array Int character))
(declare-const o1 (Array Int character))
(declare-const o2 (Array Int character))
(declare-const result (Array Int character))
(declare-const address1 (Array Int character))
(declare-const result1 (Array Int character))
(declare-const name1 (Array Int character))
(declare-const result2 (Array Int character))
(declare-const name2 (Array Int character))
(declare-const result3 (Array Int character))
(declare-const address2 (Array Int character))
(declare-const result4 (Array Int character))
(declare-const city1 (Array Int character))
(assert (=> (<= (- 2147483648) 2147483647) (in_range count)))
(assert (dynamic_invariant1 currency true false true true))
(assert (= result address))
(assert (= address1 (temp_____aggregate_def_599 32)))
(assert (= (ite (<= 1 40) (+ (- 40 1) 1) 0) (ite (<= 1 20) (+ (- 20 1) 1) 0)))
(assert (= o address1))
(assert (= result1 name))
(assert (= name1 o))
(assert (= (ite (<= 1 5) (+ (- 5 1) 1) 0) (ite (<= 1 20) (+ (- 20 1) 1) 0)))
(assert (= o1 (temp___String_Literal_603 Tuple0)))
(assert (= result2 name1))
(assert (= name2 o1))
(assert (= (ite (<= 1 20) (+ (- 20 1) 1) 0) (ite (<= 1 40) (+ (- 40 1) 1) 0)))
(assert (= o2 name2))
(assert (= result3 address1))
(assert (= address2 o2))
(assert (= result4 city))
(assert (= city1 (slide name2 1 3)))
(assert (<= 1 20))
(assert (not (<= 1 1)))
(check-sat)
(exit)
