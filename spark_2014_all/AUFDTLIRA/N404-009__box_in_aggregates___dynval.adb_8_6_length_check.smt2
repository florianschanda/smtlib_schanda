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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-const l Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const u Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const first Int)
(declare-const last Int)
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (integer integer) Bool)
(declare-const dummy1 integer)
(declare-datatypes () ((t__ref (mk_t__ref (t__content integer)))))
(define-fun t__ref___projection ((a t__ref)) integer (t__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first1 Int)) (! (= (slide a first1 first1) a) :pattern ((slide a first1 first1))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-sort t 0)
(declare-fun first1 (t) integer)
(declare-fun last1 (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l1 Int)) (! (=> (in_range f) (=> (in_range l1) (and (= (to_rep (first1 (mk f l1))) f) (= (to_rep (last1 (mk f l1))) l1)))) :pattern ((mk f l1)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (dynamic_property range_first range_last low) (dynamic_property range_first range_last high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int integer)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))
(define-fun of_array ((a (Array Int integer)) (f Int) (l1 Int)) us_t (mk___t a (mk f l1)))
(define-fun first2 ((a us_t)) Int (to_rep (first1 (rt a))))
(define-fun last2 ((a us_t)) Int (to_rep (last1 (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first2 a) (last2 a)) (+ (- (last2 a) (first2 a)) 1) 0))
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
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep (first1 (rt x))) (to_rep (last1 (rt x))) (elts y) (to_rep (first1 (rt y))) (to_rep (last1 (rt y)))))
(declare-fun user_eq2 (us_t us_t) Bool)
(declare-const dummy2 us_t)
(declare-datatypes () ((a__ref (mk_a__ref (a__content us_t)))))
(define-fun a__ref___projection ((a a__ref)) us_t (a__content a))
(define-fun dynamic_invariant1 ((temp___expr_166 us_t) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (and (=> (not (= temp___skip_constant_163 true)) (and (dynamic_property1 first last (first2 temp___expr_166) (last2 temp___expr_166)) (and (= (first2 temp___expr_166) l) (= (last2 temp___expr_166) u)))) (forall ((temp___167 Int)) (=> (and (<= (first2 temp___expr_166) temp___167) (<= temp___167 (last2 temp___expr_166))) (=> (or (= temp___is_init_162 true) (<= first last)) (dynamic_property first last (to_rep (select (to_array temp___expr_166) temp___167))))))))
(define-fun default_initial_assumption ((temp___expr_168 us_t) (temp___skip_top_level_169 Bool)) Bool (forall ((temp___170 Int)) (=> (and (<= (first2 temp___expr_168) temp___170) (<= temp___170 (last2 temp___expr_168))) (= (to_rep (select (to_array temp___expr_168) temp___170)) 5))))
(declare-const x__first integer)
(declare-const x__last integer)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_property2 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq3 (integer integer) Bool)
(declare-const dummy3 integer)
(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content integer)))))
(define-fun t3b__ref___projection ((a t3b__ref)) integer (t3b__content a))
(declare-sort t1 0)
(declare-fun first3 (t1) integer)
(declare-fun last3 (t1) integer)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l1 Int)) (! (=> (in_range f) (=> (in_range l1) (and (= (to_rep (first3 (mk1 f l1))) f) (= (to_rep (last3 (mk1 f l1))) l1)))) :pattern ((mk1 f l1)))))
(define-fun dynamic_property3 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (dynamic_property2 range_first range_last low) (dynamic_property2 range_first range_last high))))))
(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int integer)) (rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int integer) (elts1 a))
(define-fun of_array1 ((a (Array Int integer)) (f Int) (l1 Int)) us_t1 (mk___t1 a (mk1 f l1)))
(define-fun first4 ((a us_t1)) Int (to_rep (first3 (rt1 a))))
(define-fun last4 ((a us_t1)) Int (to_rep (last3 (rt1 a))))
(define-fun length1 ((a us_t1)) Int (ite (<= (first4 a) (last4 a)) (+ (- (last4 a) (first4 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int integer)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int integer)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int integer)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq2 ((x us_t1) (y us_t1)) Bool (bool_eq (elts1 x) (to_rep (first3 (rt1 x))) (to_rep (last3 (rt1 x))) (elts1 y) (to_rep (first3 (rt1 y))) (to_rep (last3 (rt1 y)))))
(declare-fun user_eq4 (us_t1 us_t1) Bool)
(declare-const dummy4 us_t1)
(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content us_t1)))))
(define-fun t4b__ref___projection ((a t4b__ref)) us_t1 (t4b__content a))
(declare-fun temp_____aggregate_def_174 (Int Int) us_t1)
(define-fun dynamic_invariant2 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= first last)) (dynamic_property first last temp___expr_159)))
(assert (= first l))
(assert (= last u))
(declare-sort t2 0)
(declare-fun first5 (t2) integer)
(declare-fun last5 (t2) integer)
(declare-fun mk2 (Int Int) t2)
(assert (forall ((f Int) (l1 Int)) (! (=> (in_range f) (=> (in_range l1) (and (= (to_rep (first5 (mk2 f l1))) f) (= (to_rep (last5 (mk2 f l1))) l1)))) :pattern ((mk2 f l1)))))
(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (dynamic_property range_first range_last low) (dynamic_property range_first range_last high))))))
(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int integer)) (rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int integer) (elts2 a))
(define-fun of_array2 ((a (Array Int integer)) (f Int) (l1 Int)) us_t2 (mk___t2 a (mk2 f l1)))
(define-fun first6 ((a us_t2)) Int (to_rep (first5 (rt2 a))))
(define-fun last6 ((a us_t2)) Int (to_rep (last5 (rt2 a))))
(define-fun length2 ((a us_t2)) Int (ite (<= (first6 a) (last6 a)) (+ (- (last6 a) (first6 a)) 1) 0))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int integer)) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int integer)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int integer)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size2))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment2 a))))
(define-fun bool_eq3 ((x us_t2) (y us_t2)) Bool (bool_eq (elts2 x) (to_rep (first5 (rt2 x))) (to_rep (last5 (rt2 x))) (elts2 y) (to_rep (first5 (rt2 y))) (to_rep (last5 (rt2 y)))))
(declare-fun user_eq5 (us_t2 us_t2) Bool)
(declare-const dummy5 us_t2)
(declare-datatypes () ((taB__ref (mk_taB__ref (taB__content us_t2)))))
(define-fun taB__ref___projection ((a taB__ref)) us_t2 (taB__content a))
(assert true)
(declare-const x (Array Int integer))
(declare-const temp___180 (Array Int integer))
(declare-const temp___1801 t1)
(declare-const temp___181 (Array Int integer))
(declare-const temp___1811 t)
(assert (in_range l))
(assert (in_range u))
(assert (default_initial_assumption (mk___t x (mk (to_rep x__first) (to_rep x__last))) false))
(assert (and (and (dynamic_property1 first last (to_rep x__first) (to_rep x__last)) (and (= (to_rep x__first) l) (= (to_rep x__last) u))) (forall ((temp___173 Int)) (=> (and (<= (to_rep x__first) temp___173) (<= temp___173 (to_rep x__last))) (=> (<= first last) (dynamic_property first last (to_rep (select x temp___173))))))))
(assert (= (to_rep (first3 (rt1 (temp_____aggregate_def_174 l u)))) l))
(assert (= (to_rep (last3 (rt1 (temp_____aggregate_def_174 l u)))) u))
(assert (= (mk___t1 temp___180 temp___1801) (temp_____aggregate_def_174 l u)))
(assert (= (ite (<= (to_rep (first3 temp___1801)) (to_rep (last3 temp___1801))) (+ (- (to_rep (last3 temp___1801)) (to_rep (first3 temp___1801))) 1) 0) (ite (<= first last) (+ (- last first) 1) 0)))
(assert (= (slide temp___180 (to_rep (first3 temp___1801)) first) temp___181))
(assert (= (mk first last) temp___1811))
(assert (not (= (ite (<= (to_rep (first1 temp___1811)) (to_rep (last1 temp___1811))) (+ (- (to_rep (last1 temp___1811)) (to_rep (first1 temp___1811))) 1) 0) (ite (<= (to_rep x__first) (to_rep x__last)) (+ (- (to_rep x__last) (to_rep x__first)) 1) 0))))
(check-sat)
(exit)
