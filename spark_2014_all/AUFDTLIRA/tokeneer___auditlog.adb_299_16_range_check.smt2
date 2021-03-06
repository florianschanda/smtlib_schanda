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
(define-fun dynamic_invariant ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range2 temp___expr_46)))
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
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant2 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(declare-fun converttoauditdescription (us_t) (Array Int character))
(declare-fun converttoauditdescription__function_guard ((Array Int character) us_t) Bool)
(assert true)
(declare-sort timetexti 0)
(declare-fun timetextiqtint (timetexti) Int)
(assert (forall ((i timetexti)) (and (<= 1 (timetextiqtint i)) (<= (timetextiqtint i) 21))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 21)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (timetexti timetexti) Bool)
(declare-const dummy4 timetexti)
(declare-datatypes () ((timetexti__ref (mk_timetexti__ref (timetexti__content timetexti)))))
(define-fun timetexti__ref___projection ((a timetexti__ref)) timetexti (timetexti__content a))
(declare-sort descriptioni 0)
(declare-fun descriptioniqtint (descriptioni) Int)
(assert (forall ((i descriptioni)) (and (<= 1 (descriptioniqtint i)) (<= (descriptioniqtint i) 150))))
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 150)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (descriptioni descriptioni) Bool)
(declare-const dummy5 descriptioni)
(declare-datatypes () ((descriptioni__ref (mk_descriptioni__ref (descriptioni__content descriptioni)))))
(define-fun descriptioni__ref___projection ((a descriptioni__ref)) descriptioni (descriptioni__content a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const description (Array Int character))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const r34b Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const r35b Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq6 (integer integer) Bool)
(declare-const dummy6 integer)
(declare-datatypes () ((t36b__ref (mk_t36b__ref (t36b__content integer)))))
(define-fun t36b__ref___projection ((a t36b__ref)) integer (t36b__content a))
(declare-sort t1 0)
(declare-fun first2 (t1) integer)
(declare-fun last2 (t1) integer)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep1 (first2 (mk1 f l))) f) (= (to_rep1 (last2 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (dynamic_property1 range_first range_last low) (dynamic_property1 range_first range_last high))))))
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
(declare-fun user_eq7 (us_t1 us_t1) Bool)
(declare-const dummy7 us_t1)
(declare-datatypes () ((t37b__ref (mk_t37b__ref (t37b__content us_t1)))))
(define-fun t37b__ref___projection ((a t37b__ref)) us_t1 (t37b__content a))
(declare-fun temp___String_Literal_1742 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_1742 us_void_param) 1)) 69) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 2)) 114)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 3)) 114)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 4)) 111)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 5)) 114)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 6)) 32)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 7)) 111)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 8)) 98)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 9)) 116)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 10)) 97)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 11)) 105)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 12)) 110)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 13)) 105)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 14)) 110)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 15)) 103)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 16)) 32)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 17)) 116)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 18)) 105)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 19)) 109)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 20)) 101)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 21)) 115)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 22)) 32)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 23)) 102)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 24)) 114)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 25)) 111)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 26)) 109)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 27)) 32)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 28)) 102)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 29)) 105)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 30)) 108)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 31)) 101)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 32)) 46)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 33)) 66)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 34)) 101)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 35)) 115)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 36)) 116)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 37)) 32)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 38)) 101)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 39)) 115)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 40)) 116)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 41)) 105)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 42)) 109)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 43)) 97)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 44)) 116)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 45)) 101)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 46)) 32)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 47)) 105)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 48)) 115)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 49)) 32)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 50)) 102)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 51)) 114)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 52)) 111)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 53)) 109)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 54)) 58)) (= (to_rep (select (temp___String_Literal_1742 us_void_param) 55)) 32)) :pattern ((temp___String_Literal_1742 us_void_param)))))
(declare-fun temp___String_Literal_1744 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (= (to_rep (select (temp___String_Literal_1744 us_void_param) 1)) 32) (= (to_rep (select (temp___String_Literal_1744 us_void_param) 2)) 116)) (= (to_rep (select (temp___String_Literal_1744 us_void_param) 3)) 111)) (= (to_rep (select (temp___String_Literal_1744 us_void_param) 4)) 58)) (= (to_rep (select (temp___String_Literal_1744 us_void_param) 5)) 32)) :pattern ((temp___String_Literal_1744 us_void_param)))))
(declare-fun temp___String_Literal_1748 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (= (to_rep (select (temp___String_Literal_1748 us_void_param) 1)) 70) (= (to_rep (select (temp___String_Literal_1748 us_void_param) 2)) 114)) (= (to_rep (select (temp___String_Literal_1748 us_void_param) 3)) 111)) (= (to_rep (select (temp___String_Literal_1748 us_void_param) 4)) 109)) (= (to_rep (select (temp___String_Literal_1748 us_void_param) 5)) 58)) (= (to_rep (select (temp___String_Literal_1748 us_void_param) 6)) 32)) :pattern ((temp___String_Literal_1748 us_void_param)))))
(declare-fun temp___String_Literal_1750 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (= (to_rep (select (temp___String_Literal_1750 us_void_param) 1)) 32) (= (to_rep (select (temp___String_Literal_1750 us_void_param) 2)) 116)) (= (to_rep (select (temp___String_Literal_1750 us_void_param) 3)) 111)) (= (to_rep (select (temp___String_Literal_1750 us_void_param) 4)) 58)) (= (to_rep (select (temp___String_Literal_1750 us_void_param) 5)) 32)) :pattern ((temp___String_Literal_1750 us_void_param)))))
(define-fun dynamic_invariant3 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range3 temp___expr_74)))
(define-fun dynamic_invariant4 ((temp___expr_556 Int) (temp___is_init_552 Bool) (temp___skip_constant_553 Bool) (temp___do_toplevel_554 Bool) (temp___do_typ_inv_555 Bool)) Bool (=> (or (= temp___is_init_552 true) (<= 1 150)) (in_range5 temp___expr_556)))
(define-fun dynamic_invariant5 ((temp___expr_500 Int) (temp___is_init_496 Bool) (temp___skip_constant_497 Bool) (temp___do_toplevel_498 Bool) (temp___do_typ_inv_499 Bool)) Bool (=> (or (= temp___is_init_496 true) (<= 1 21)) (in_range4 temp___expr_500)))
(declare-const timeok Bool)
(declare-const firsttime (Array Int character))
(declare-const offset Int)
(declare-const bothtimesok Bool)
(declare-const auditlog__updateendtimefromfile__overwritetimeintext__R34b__assume Int)
(declare-const auditlog__updateendtimefromfile__overwritetimeintext__R35b__assume Int)
(declare-const o (Array Int character))
(declare-const temp___1741 (Array Int character))
(declare-const temp___17411 t1)
(declare-const o1 (Array Int character))
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const result Bool)
(declare-const bothtimesok1 Bool)
(declare-const result1 Int)
(declare-const offset1 Int)
(declare-const result2 Int)
(declare-const offset2 Int)
(declare-const result3 Bool)
(declare-const bothtimesok2 Bool)
(declare-const result4 (Array Int character))
(declare-const firsttime1 (Array Int character))
(assert (=> (<= 1 2147483647) (in_range2 offset)))
(assert (= result bothtimesok))
(assert (= bothtimesok1 timeok))
(assert (=> (= (to_rep (select description 1)) 70) (= result1 offset)))
(assert (=> (= (to_rep (select description 1)) 70) (= offset1 6)))
(assert (=> (= (to_rep (select description 1)) 70) (= bothtimesok2 bothtimesok1)))
(assert (=> (not (= (to_rep (select description 1)) 70)) (= result2 offset)))
(assert (=> (not (= (to_rep (select description 1)) 70)) (= offset2 56)))
(assert (=> (not (= (to_rep (select description 1)) 70)) (= result3 bothtimesok1)))
(assert (=> (not (= (to_rep (select description 1)) 70)) (= bothtimesok2 (distinct 0 0))))
(assert (=> (not (= (to_rep (select description 1)) 70)) (= offset1 offset2)))
(assert (and (= auditlog__updateendtimefromfile__overwritetimeintext__R34b__assume (+ offset1 1)) (in_range1 (+ offset1 1))))
(assert (= auditlog__updateendtimefromfile__overwritetimeintext__R34b__assume r34b))
(assert (in_range1 r34b))
(assert (and (= auditlog__updateendtimefromfile__overwritetimeintext__R35b__assume (+ offset1 21)) (in_range1 (+ offset1 21))))
(assert (= auditlog__updateendtimefromfile__overwritetimeintext__R35b__assume r35b))
(assert (in_range1 r35b))
(assert (=> (<= r34b r35b) (and (and (<= 1 r34b) (<= r34b 150)) (and (<= 1 r35b) (<= r35b 150)))))
(assert (= o description))
(assert (= o temp___1741))
(assert (= (mk1 r34b r35b) temp___17411))
(assert (= (ite (<= (to_rep1 (first2 temp___17411)) (to_rep1 (last2 temp___17411))) (+ (- (to_rep1 (last2 temp___17411)) (to_rep1 (first2 temp___17411))) 1) 0) (ite (<= 1 21) (+ (- 21 1) 1) 0)))
(assert (= o1 (slide temp___1741 (to_rep1 (first2 temp___17411)) 1)))
(assert (= result4 firsttime))
(assert (= firsttime1 o1))
(assert (not (= bothtimesok2 true)))
(assert (=> (<= 1 21) (= o2 (+ (- 21 1) 1))))
(assert (=> (not (<= 1 21)) (= o2 0)))
(assert (=> (<= 1 55) (= o3 (+ (- 55 1) 1))))
(assert (=> (not (<= 1 55)) (= o3 0)))
(assert (= o4 (+ o3 o2)))
(assert (= o5 (+ 1 o4)))
(assert (= o6 (- o5 1)))
(assert (not (in_range2 o6)))
(check-sat)
(exit)
