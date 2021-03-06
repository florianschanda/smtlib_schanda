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
(declare-sort index 0)
(declare-fun indexqtint (index) Int)
(assert (forall ((i index)) (and (<= 1 (indexqtint i)) (<= (indexqtint i) 8))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 8)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (index index) Bool)
(declare-const dummy index)
(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))
(define-fun to_rep ((x index)) Int (indexqtint x))
(declare-fun of_rep (Int) index)
(assert (forall ((x index)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x index)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int index))))))
(declare-fun slide ((Array Int index) Int Int) (Array Int index))
(assert (forall ((a (Array Int index))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int index))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int index)) (a__first Int) (a__last Int) (b (Array Int index)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int index)) (b (Array Int index))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-fun consistent ((Array Int index) Int) Bool)
(declare-fun consistent__function_guard (Bool (Array Int index) Int) Bool)
(define-fun dynamic_invariant ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 1 8)) (in_range1 temp___expr_159)))
(assert true)
(assert (forall ((b (Array Int index))) (forall ((k Int)) (! (= (= (consistent b k) true) (forall ((i Int)) (=> (and (<= 1 i) (<= i k)) (forall ((j Int)) (=> (and (<= 1 j) (<= j (- i 1))) (and (and (not (= (to_rep (select b i)) (to_rep (select b j)))) (not (= (- i j) (- (to_rep (select b i)) (to_rep (select b j)))))) (not (= (- i j) (- (to_rep (select b j)) (to_rep (select b i))))))))))) :pattern ((consistent b k))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const c (Array Int index))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const b (Array Int index))
(declare-const done__ Bool)
(declare-const o Int)
(declare-const j Int)
(declare-const b1 (Array Int index))
(declare-const done__1 Bool)
(declare-const result Bool)
(declare-const result1 Bool)
(declare-const done__2 Bool)
(declare-const b2 (Array Int index))
(declare-const done__3 Bool)
(declare-const b3 (Array Int index))
(declare-const done__4 Bool)
(declare-const b4 (Array Int index))
(declare-const done__5 Bool)
(declare-const b5 (Array Int index))
(declare-const done__6 Bool)
(declare-const b6 (Array Int index))
(declare-const done__7 Bool)
(assert (in_range1 i))
(assert (and (and (not (= done__ true)) (forall ((j1 Int)) (=> (and (<= 1 j1) (<= j1 i)) (= (to_rep (select c j1)) (to_rep (select b j1)))))) (=> (< 1 i) (= (consistent b (- i 1)) true))))
(assert (or (and (and (and (= done__2 done__4) (= b2 b3)) (and (= done__5 done__2) (= b4 b2))) (and (and (= result (consistent b i)) (= (= result true) (forall ((i1 Int)) (=> (and (<= 1 i1) (<= i1 i)) (forall ((j1 Int)) (=> (and (<= 1 j1) (<= j1 (- i1 1))) (and (and (not (= (to_rep (select b i1)) (to_rep (select b j1)))) (not (= (- i1 j1) (- (to_rep (select b i1)) (to_rep (select b j1)))))) (not (= (- i1 j1) (- (to_rep (select b j1)) (to_rep (select b i1)))))))))))) (and (= result true) (ite (= 8 i) (and (and (= (mk_bool__ref result1) (mk_bool__ref done__)) (= done__2 (distinct 1 0))) (and (= b2 b) (= b2 b1))) (and (and (and (= o (+ i 1)) (in_range1 (+ i 1))) (and (ite (= done__3 true) (= (consistent b2 8) true) (not (= (consistent c 8) true))) (forall ((j1 Int)) (=> (and (<= 1 j1) (<= j1 (- o 1))) (= (to_rep (select b2 j1)) (to_rep (select b j1))))))) (= done__2 done__3)))))) (and (and (and (= result (consistent b i)) (= (= result true) (forall ((i1 Int)) (=> (and (<= 1 i1) (<= i1 i)) (forall ((j1 Int)) (=> (and (<= 1 j1) (<= j1 (- i1 1))) (and (and (not (= (to_rep (select b i1)) (to_rep (select b j1)))) (not (= (- i1 j1) (- (to_rep (select b i1)) (to_rep (select b j1)))))) (not (= (- i1 j1) (- (to_rep (select b j1)) (to_rep (select b i1)))))))))))) (and (not (= result true)) (and (and (not (= (consistent c i) true)) (not (forall ((j1 Int)) (=> (and (<= i j1) (<= j1 8)) (= (consistent c j1) true))))) (and (and (= done__2 done__) (= b2 b)) (and (= done__2 done__1) (= b2 b1)))))) (and (and (= done__2 done__4) (= b2 b3)) (and (= done__5 done__2) (= b4 b2))))))
(assert (= (mk_bool__ref done__6) (mk_bool__ref done__4)))
(assert (= (mk_map__ref b5) (mk_map__ref b3)))
(assert (= done__7 done__5))
(assert (= b6 b4))
(assert (<= 1 j))
(assert (<= j i))
(assert (not (<= j 8)))
(check-sat)
(exit)
