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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (natural natural) Bool)
(declare-const dummy4 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range4 temp___expr_39)))
(declare-fun sum_of (Int) Int)
(declare-fun sum_of__function_guard (Int Int) Bool)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun temp___String_Literal_570 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_570 us_void_param) 1)) 87) (= (to_rep (select (temp___String_Literal_570 us_void_param) 2)) 104)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 3)) 105)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 4)) 108)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 5)) 101)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 6)) 32)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 7)) 108)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 8)) 111)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 9)) 111)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 10)) 112)) (= (to_rep (select (temp___String_Literal_570 us_void_param) 11)) 115)) :pattern ((temp___String_Literal_570 us_void_param)))))
(declare-fun temp___String_Literal_571 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_571 us_void_param) 1)) 69) (= (to_rep (select (temp___String_Literal_571 us_void_param) 2)) 82)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 3)) 82)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 4)) 79)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 5)) 82)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 6)) 32)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 7)) 49)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 8)) 58)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 9)) 32)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 10)) 108)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 11)) 111)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 12)) 111)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 13)) 112)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 15)) 115)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 16)) 104)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 17)) 111)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 18)) 117)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 19)) 108)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 20)) 100)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 21)) 32)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 22)) 110)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 23)) 111)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 24)) 116)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 25)) 32)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 26)) 101)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 27)) 120)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 28)) 101)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 29)) 99)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 30)) 117)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 31)) 116)) (= (to_rep (select (temp___String_Literal_571 us_void_param) 32)) 101)) :pattern ((temp___String_Literal_571 us_void_param)))))
(declare-fun temp___String_Literal_574 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_574 us_void_param) 1)) 69) (= (to_rep (select (temp___String_Literal_574 us_void_param) 2)) 82)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 3)) 82)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 4)) 79)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 5)) 82)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 6)) 32)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 7)) 50)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 8)) 58)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 9)) 32)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 10)) 105)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 11)) 110)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 12)) 118)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 13)) 97)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 14)) 114)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 15)) 105)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 16)) 97)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 17)) 110)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 18)) 116)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 19)) 32)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 20)) 100)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 21)) 105)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 22)) 100)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 23)) 32)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 24)) 110)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 25)) 111)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 26)) 116)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 27)) 32)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 28)) 102)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 29)) 97)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 30)) 105)) (= (to_rep (select (temp___String_Literal_574 us_void_param) 31)) 108)) :pattern ((temp___String_Literal_574 us_void_param)))))
(declare-fun temp___String_Literal_577 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_577 us_void_param) 1)) 69) (= (to_rep (select (temp___String_Literal_577 us_void_param) 2)) 82)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 3)) 82)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 4)) 79)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 5)) 82)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 6)) 32)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 7)) 51)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 8)) 58)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 9)) 32)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 10)) 108)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 11)) 111)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 12)) 111)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 13)) 112)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 15)) 115)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 16)) 104)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 17)) 111)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 18)) 117)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 19)) 108)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 20)) 100)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 21)) 32)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 22)) 110)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 23)) 111)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 24)) 116)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 25)) 32)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 26)) 101)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 27)) 120)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 28)) 101)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 29)) 99)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 30)) 117)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 31)) 116)) (= (to_rep (select (temp___String_Literal_577 us_void_param) 32)) 101)) :pattern ((temp___String_Literal_577 us_void_param)))))
(declare-fun temp___String_Literal_580 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_580 us_void_param) 1)) 69) (= (to_rep (select (temp___String_Literal_580 us_void_param) 2)) 82)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 3)) 82)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 4)) 79)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 5)) 82)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 6)) 32)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 7)) 52)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 8)) 58)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 9)) 32)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 10)) 108)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 11)) 111)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 12)) 111)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 13)) 112)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 15)) 115)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 16)) 104)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 17)) 111)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 18)) 117)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 19)) 108)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 20)) 100)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 21)) 32)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 22)) 110)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 23)) 111)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 24)) 116)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 25)) 32)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 26)) 101)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 27)) 120)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 28)) 101)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 29)) 99)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 30)) 117)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 31)) 116)) (= (to_rep (select (temp___String_Literal_580 us_void_param) 32)) 101)) :pattern ((temp___String_Literal_580 us_void_param)))))
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range2 temp___expr_46)))
(define-fun dynamic_invariant2 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range3 temp___expr_74)))
(define-fun dynamic_invariant3 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(define-fun dynamic_invariant4 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-const counter Int)
(declare-const o Int)
(declare-const temp___572 Int)
(declare-const temp___573 Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Bool)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const o7 Bool)
(declare-const result Int)
(declare-const counter1 Int)
(declare-const result1 Bool)
(declare-const counter2 Int)
(declare-const result2 Int)
(declare-const counter3 Int)
(declare-const result3 Bool)
(declare-const counter4 Int)
(declare-const counter5 Int)
(declare-const counter6 Int)
(declare-const counter7 Int)
(declare-const result4 Bool)
(declare-const counter8 Int)
(declare-const result5 Int)
(declare-const counter9 Int)
(declare-const result6 Bool)
(declare-const counter10 Int)
(declare-const counter11 Int)
(assert (= result counter))
(assert (= counter1 1))
(assert (in_range4 counter1))
(assert (and (= o (sum_of counter1)) (in_range4 o)))
(assert (= result1 (ite (< 5 o) true false)))
(assert (=> (= result1 true) (= temp___572 counter1)))
(assert (=> (= result1 true) (= temp___573 (sum_of counter1))))
(assert (=> (= result1 true) (< 0 temp___573)))
(assert (=> (= result1 true) (=> (<= 0 2147483647) (in_range4 counter2))))
(assert (=> (= result1 true) (and (= o1 (+ counter2 1)) (in_range1 (+ counter2 1)))))
(assert (=> (= result1 true) (= counter2 result2)))
(assert (=> (= result1 true) (= counter3 o1)))
(assert (=> (= result1 true) (and (= o2 (sum_of counter3)) (in_range4 o2))))
(assert (=> (= result1 true) (= o3 (ite (< 5 o2) true false))))
(assert (=> (= result1 true) (= result3 (ite (not (= o3 true)) true false))))
(assert (=> (= result1 true) (= result3 true)))
(assert (=> (= result1 true) (= counter3 counter4)))
(assert (=> (= result1 true) (= counter5 counter3)))
(assert (=> (= result1 true) (= (mk_int__ref counter6) (mk_int__ref counter4))))
(assert (=> (= result1 true) (= counter7 counter5)))
(assert (=> (not (= result1 true)) (= counter1 counter6)))
(assert (=> (not (= result1 true)) (= counter7 counter1)))
(assert (and (= o4 (sum_of counter6)) (in_range4 o4)))
(assert (= result4 (ite (< o4 2) true false)))
(assert (= result4 true))
(assert (< (sum_of counter6) 0))
(assert (and (=> (<= 0 2147483647) (in_range4 counter8)) (< (sum_of counter8) 2)))
(assert (and (= o5 (+ counter8 1)) (in_range1 (+ counter8 1))))
(assert (= counter8 result5))
(assert (= counter9 o5))
(assert (and (= o6 (sum_of counter9)) (in_range4 o6)))
(assert (= o7 (ite (< o6 2) true false)))
(assert (= result6 (ite (not (= o7 true)) true false)))
(assert (not (= result6 true)))
(assert (= counter10 counter9))
(assert (= counter11 counter9))
(assert (not (< (sum_of counter6) 0)))
(check-sat)
(exit)
