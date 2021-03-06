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
(define-fun dynamic_invariant ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(define-fun dynamic_invariant1 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range3 temp___expr_74)))
(declare-fun to_lower (Int) Int)
(declare-fun to_lower__function_guard (Int Int) Bool)
(assert (forall ((item Int)) (! (=> (dynamic_invariant1 item true true true true) (dynamic_invariant1 (to_lower item) true false true true)) :pattern ((to_lower item)))))
(declare-fun to_upper (Int) Int)
(declare-fun to_upper__function_guard (Int Int) Bool)
(assert (forall ((item Int)) (! (=> (dynamic_invariant1 item true true true true) (dynamic_invariant1 (to_upper item) true false true true)) :pattern ((to_upper item)))))
(declare-fun to_caml_char2 (us_t us_t Int) Bool)
(declare-fun to_caml_char2__function_guard (Bool us_t us_t Int) Bool)
(define-fun dynamic_invariant2 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(assert true)
(assert (forall ((str us_t) (res us_t)) (forall ((last2 Int)) (! (= (= (to_caml_char2 str res last2) true) (forall ((j Int)) (=> (and (<= (first1 str) j) (<= j last2)) (ite (= j (first1 str)) (= (to_rep (select (to_array res) j)) (to_upper (to_rep (select (to_array str) j)))) (ite (and (= (not (and (ite (<= 97 (to_rep (select (to_array str) (- j 1)))) true false) (ite (<= (to_rep (select (to_array str) (- j 1))) 122) true false))) true) (= (not (and (ite (<= 65 (to_rep (select (to_array str) (- j 1)))) true false) (ite (<= (to_rep (select (to_array str) (- j 1))) 90) true false))) true)) (= (to_rep (select (to_array res) j)) (to_upper (to_rep (select (to_array str) j)))) (= (to_rep (select (to_array res) j)) (to_lower (to_rep (select (to_array str) j))))))))) :pattern ((to_caml_char2 str res last2))))))
(declare-const str us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (integer integer) Bool)
(declare-const dummy4 integer)
(declare-datatypes () ((tTretSP1__ref (mk_tTretSP1__ref (tTretSP1__content integer)))))
(define-fun tTretSP1__ref___projection ((a tTretSP1__ref)) integer (tTretSP1__content a))
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
(declare-fun user_eq5 (us_t1 us_t1) Bool)
(declare-const dummy5 us_t1)
(declare-datatypes () ((tretS__ref (mk_tretS__ref (tretS__content us_t1)))))
(define-fun tretS__ref___projection ((a tretS__ref)) us_t1 (tretS__content a))
(declare-const ret__first integer)
(declare-const ret__last integer)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_property3 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (integer integer) Bool)
(declare-const dummy6 integer)
(declare-datatypes () ((t9b__ref (mk_t9b__ref (t9b__content integer)))))
(define-fun t9b__ref___projection ((a t9b__ref)) integer (t9b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant3 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range2 temp___expr_46)))
(define-fun dynamic_invariant4 ((temp___expr_629 us_t1) (temp___is_init_625 Bool) (temp___skip_constant_626 Bool) (temp___do_toplevel_627 Bool) (temp___do_typ_inv_628 Bool)) Bool (=> (not (= temp___skip_constant_626 true)) (and (dynamic_property2 (first1 str) (last1 str) (first3 temp___expr_629) (last3 temp___expr_629)) (and (= (first3 temp___expr_629) (first1 str)) (= (last3 temp___expr_629) (last1 str))))))
(declare-const ret (Array Int character))
(declare-const to_up Bool)
(declare-const idx Int)
(declare-const hello__to_camel_case__ret__assume (Array Int character))
(declare-const hello__to_camel_case__ret__assume1 t1)
(declare-const o Int)
(declare-const o1 character)
(declare-const o2 (Array Int character))
(declare-const o3 Int)
(declare-const o4 character)
(declare-const o5 (Array Int character))
(declare-const result (Array Int character))
(declare-const ret1 (Array Int character))
(declare-const result1 Bool)
(declare-const to_up1 Bool)
(declare-const result2 Int)
(declare-const idx1 Int)
(declare-const result3 (Array Int character))
(declare-const ret2 (Array Int character))
(declare-const result4 (Array Int character))
(declare-const ret3 (Array Int character))
(assert (dynamic_invariant str true false true true))
(assert (= (slide (elts str) (to_rep1 (first (rt str))) (to_rep1 (first (rt str)))) hello__to_camel_case__ret__assume))
(assert (= (mk1 (to_rep1 (first (rt str))) (to_rep1 (last (rt str)))) hello__to_camel_case__ret__assume1))
(assert (= (mk_map__ref result) (mk_map__ref ret)))
(assert (= ret1 hello__to_camel_case__ret__assume))
(assert (= (to_rep1 ret__first) (to_rep1 (first2 hello__to_camel_case__ret__assume1))))
(assert (= (to_rep1 ret__last) (to_rep1 (last2 hello__to_camel_case__ret__assume1))))
(assert (and (dynamic_property2 (to_rep1 (first (rt str))) (to_rep1 (last (rt str))) (to_rep1 ret__first) (to_rep1 ret__last)) (and (= (to_rep1 ret__first) (to_rep1 (first (rt str)))) (= (to_rep1 ret__last) (to_rep1 (last (rt str)))))))
(assert (= (mk_bool__ref result1) (mk_bool__ref to_up)))
(assert (= to_up1 (distinct 1 0)))
(assert (= (mk_int__ref result2) (mk_int__ref idx)))
(assert (= idx1 (to_rep1 (first (rt str)))))
(assert (<= (to_rep1 (first (rt str))) idx1))
(assert (<= idx1 (to_rep1 (last (rt str)))))
(assert (=> (= to_up1 true) (and (= o (to_upper (to_rep (select ret1 idx1)))) (in_range3 o))))
(assert (=> (= to_up1 true) (= (to_rep o1) o)))
(assert (=> (= to_up1 true) (= o2 (store ret1 idx1 o1))))
(assert (=> (= to_up1 true) (= ret1 result3)))
(assert (=> (= to_up1 true) (= ret2 o2)))
(assert (=> (not (= to_up1 true)) (and (= o3 (to_lower (to_rep (select ret1 idx1)))) (in_range3 o3))))
(assert (=> (not (= to_up1 true)) (= (to_rep o4) o3)))
(assert (=> (not (= to_up1 true)) (= o5 (store ret1 idx1 o4))))
(assert (=> (not (= to_up1 true)) (= ret1 result4)))
(assert (=> (not (= to_up1 true)) (= ret3 o5)))
(assert (=> (not (= to_up1 true)) (= ret2 ret3)))
(assert (and (<= (to_rep1 (first (rt str))) idx1) (<= idx1 (to_rep1 (last (rt str))))))
(assert (not (<= (to_rep1 ret__first) idx1)))
(check-sat)
(exit)
