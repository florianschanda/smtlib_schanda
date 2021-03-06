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
(declare-sort one_ten 0)
(declare-fun one_tenqtint (one_ten) Int)
(assert (forall ((i one_ten)) (and (<= 1 (one_tenqtint i)) (<= (one_tenqtint i) 10))))
(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (one_ten one_ten) Bool)
(declare-const dummy one_ten)
(declare-datatypes () ((one_ten__ref (mk_one_ten__ref (one_ten__content one_ten)))))
(define-fun one_ten__ref___projection ((a one_ten__ref)) one_ten (one_ten__content a))
(define-fun to_rep ((x one_ten)) Int (one_tenqtint x))
(declare-fun of_rep (Int) one_ten)
(assert (forall ((x one_ten)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x one_ten)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int one_ten))))))
(declare-fun slide ((Array Int one_ten) Int Int) (Array Int one_ten))
(assert (forall ((a (Array Int one_ten))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int one_ten))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int one_ten)) (a__first Int) (a__last Int) (b (Array Int one_ten)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155))))))) true false))
(assert (forall ((a (Array Int one_ten)) (b (Array Int one_ten))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155)))))))))))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (integer integer) Bool)
(declare-const dummy1 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
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
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range1 low) (in_range1 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int one_ten)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int one_ten) (elts a))
(define-fun of_array ((a (Array Int one_ten)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int one_ten)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int one_ten)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int one_ten)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int one_ten))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int one_ten))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int one_ten))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y)))))
(declare-fun user_eq2 (us_t us_t) Bool)
(declare-const dummy2 us_t)
(declare-datatypes () ((c__ref (mk_c__ref (c__content us_t)))))
(define-fun c__ref___projection ((a c__ref)) us_t (c__content a))
(define-fun dynamic_invariant ((temp___expr_195 us_t) (temp___is_init_191 Bool) (temp___skip_constant_192 Bool) (temp___do_toplevel_193 Bool) (temp___do_typ_inv_194 Bool)) Bool (=> (not (= temp___skip_constant_192 true)) (dynamic_property (- 2147483648) 2147483647 (first1 temp___expr_195) (last1 temp___expr_195))))
(declare-const x us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant2 ((temp___expr_168 Int) (temp___is_init_164 Bool) (temp___skip_constant_165 Bool) (temp___do_toplevel_166 Bool) (temp___do_typ_inv_167 Bool)) Bool (=> (or (= temp___is_init_164 true) (<= 1 10)) (in_range temp___expr_168)))
(assert (dynamic_invariant x true false true true))
(assert (not (<= (to_rep1 (first (rt x))) (to_rep1 (last (rt x))))))
(check-sat)
(exit)
