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
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort t 0)
(declare-fun tqtint (t) Int)
(assert (forall ((i t)) (and (<= (- 2147483648) (tqtint i)) (<= (tqtint i) 2147483647))))
(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (t t) Bool)
(declare-const dummy3 t)
(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))
(define-fun to_rep1 ((x t)) Int (tqtint x))
(declare-fun of_rep1 (Int) t)
(assert (forall ((x t)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x t)) (! (in_range4 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range4 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int t))))))
(declare-fun slide ((Array Int t) Int Int) (Array Int t))
(assert (forall ((a (Array Int t))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int t))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int t)) (a__first Int) (a__last Int) (b (Array Int t)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int t)) (b (Array Int t))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-sort t1 0)
(declare-fun first (t1) integer)
(declare-fun last (t1) integer)
(declare-fun mk (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int t)) (rt t1)))))
(define-fun to_array ((a us_t)) (Array Int t) (elts a))
(define-fun of_array ((a (Array Int t)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int t)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int t)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int t)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int t))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int t))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int t))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep (first (rt x))) (to_rep (last (rt x))) (elts y) (to_rep (first (rt y))) (to_rep (last (rt y)))))
(declare-fun user_eq4 (us_t us_t) Bool)
(declare-const dummy4 us_t)
(declare-datatypes () ((t_arr__ref (mk_t_arr__ref (t_arr__content us_t)))))
(define-fun t_arr__ref___projection ((a t_arr__ref)) us_t (t_arr__content a))
(declare-fun is_equal (us_t us_t Int) Bool)
(declare-fun is_equal__function_guard (Bool us_t us_t Int) Bool)
(define-fun dynamic_invariant1 ((temp___expr_166 us_t) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (not (= temp___skip_constant_163 true)) (dynamic_property 1 2147483647 (first1 temp___expr_166) (last1 temp___expr_166))))
(assert true)
(assert (forall ((a us_t) (b us_t)) (forall ((size Int)) (! (= (= (is_equal a b size) true) (forall ((i Int)) (=> (and (<= 0 i) (<= i (- size 1))) (= (to_rep1 (select (to_array a) (+ (first1 a) i))) (to_rep1 (select (to_array b) (+ (first1 b) i))))))) :pattern ((is_equal a b size))))))
(declare-const a us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const size_a Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const b us_t)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const size_b Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (integer integer) Bool)
(declare-const dummy5 integer)
(declare-datatypes () ((t22s__ref (mk_t22s__ref (t22s__content integer)))))
(define-fun t22s__ref___projection ((a1 t22s__ref)) integer (t22s__content a1))
(declare-sort t2 0)
(declare-fun first2 (t2) integer)
(declare-fun last2 (t2) integer)
(declare-fun mk1 (Int Int) t2)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first2 (mk1 f l))) f) (= (to_rep (last2 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (dynamic_property1 range_first range_last low) (dynamic_property1 range_first range_last high))))))
(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int t)) (rt1 t2)))))
(define-fun to_array1 ((a1 us_t1)) (Array Int t) (elts1 a1))
(define-fun of_array1 ((a1 (Array Int t)) (f Int) (l Int)) us_t1 (mk___t1 a1 (mk1 f l)))
(define-fun first3 ((a1 us_t1)) Int (to_rep (first2 (rt1 a1))))
(define-fun last3 ((a1 us_t1)) Int (to_rep (last2 (rt1 a1))))
(define-fun length1 ((a1 us_t1)) Int (ite (<= (first3 a1) (last3 a1)) (+ (- (last3 a1) (first3 a1)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int t)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int t)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int t)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a1 (Array Int t))) (<= 0 (object__size1 a1))))
(assert (<= 0 value__component__size1))
(assert (forall ((a1 (Array Int t))) (<= 0 (object__component__size1 a1))))
(assert (<= 0 value__alignment1))
(assert (forall ((a1 (Array Int t))) (<= 0 (object__alignment1 a1))))
(define-fun bool_eq2 ((x us_t1) (y us_t1)) Bool (bool_eq (elts1 x) (to_rep (first2 (rt1 x))) (to_rep (last2 (rt1 x))) (elts1 y) (to_rep (first2 (rt1 y))) (to_rep (last2 (rt1 y)))))
(declare-fun user_eq6 (us_t1 us_t1) Bool)
(declare-const dummy6 us_t1)
(declare-datatypes () ((t23s__ref (mk_t23s__ref (t23s__content us_t1)))))
(define-fun t23s__ref___projection ((a1 t23s__ref)) us_t1 (t23s__content a1))
(define-fun dynamic_invariant2 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant4 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= (- 2147483648) 2147483647)) (in_range4 temp___expr_159)))
(assert (not true))
(check-sat)
(exit)
