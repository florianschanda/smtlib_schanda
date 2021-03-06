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
(declare-sort index 0)
(declare-fun indexqtint (index) Int)
(assert (forall ((i index)) (and (<= 0 (indexqtint i)) (<= (indexqtint i) 1001))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 1001)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (index index) Bool)
(declare-const dummy index)
(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))
(define-fun dynamic_invariant ((temp___expr_167 Int) (temp___is_init_163 Bool) (temp___skip_constant_164 Bool) (temp___do_toplevel_165 Bool) (temp___do_typ_inv_166 Bool)) Bool (=> (or (= temp___is_init_163 true) (<= 0 1001)) (in_range temp___expr_167)))
(declare-sort value 0)
(declare-fun valueqtint (value) Int)
(assert (forall ((i value)) (and (<= (- 23) (valueqtint i)) (<= (valueqtint i) 69))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 23) x) (<= x 69)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (value value) Bool)
(declare-const dummy1 value)
(declare-datatypes () ((value__ref (mk_value__ref (value__content value)))))
(define-fun value__ref___projection ((a value__ref)) value (value__content a))
(define-fun to_rep ((x value)) Int (valueqtint x))
(declare-fun of_rep (Int) value)
(assert (forall ((x value)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x value)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int value))))))
(declare-fun slide ((Array Int value) Int Int) (Array Int value))
(assert (forall ((a (Array Int value))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int value))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int value)) (a__first Int) (a__last Int) (b (Array Int value)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int value)) (b (Array Int value))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const dummy2 (Array Int value))
(declare-const value__size Int)
(declare-fun object__size ((Array Int value)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int value)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int value)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int value))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int value))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int value))) (<= 0 (object__alignment a))))
(declare-fun user_eq2 ((Array Int value) (Array Int value)) Bool)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int value)))))))
(declare-fun slide1 ((Array Int (Array Int value)) Int Int) (Array Int (Array Int value)))
(assert (forall ((a (Array Int (Array Int value)))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int (Array Int value)))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int (Array Int value))) (a__first Int) (a__last Int) (b (Array Int (Array Int value))) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) 0 1001 (select b (+ (- b__first a__first) temp___idx_155)) 0 1001) true)))) true false))
(assert (forall ((a (Array Int (Array Int value))) (b (Array Int (Array Int value)))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) 0 1001 (select b (+ (- b__first a__first) temp___idx_155)) 0 1001) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const j Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const a (Array Int (Array Int value)))
(declare-const result (Array Int (Array Int value)))
(declare-const a1 (Array Int (Array Int value)))
(declare-const result1 (Array Int (Array Int value)))
(declare-const a2 (Array Int (Array Int value)))
(declare-const a3 (Array Int (Array Int value)))
(declare-const a4 (Array Int (Array Int value)))
(assert (in_range i))
(assert (in_range j))
(assert (not (= i j)))
(assert (= result a))
(assert (= a1 (store a i (select a 23))))
(assert (= result1 a1))
(assert (= a2 (store a1 j (select a1 42))))
(assert (= a2 a3))
(assert (= a4 a2))
(assert (not (not (= (bool_eq (select a3 i) 0 1001 (select a3 23) 0 1001) true))))
(check-sat)
(exit)
