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
(declare-sort element_t 0)
(declare-fun element_tqtint (element_t) Int)
(assert (forall ((i element_t)) (and (<= (- 1) (element_tqtint i)) (<= (element_tqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 1) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (element_t element_t) Bool)
(declare-const dummy element_t)
(declare-datatypes () ((element_t__ref (mk_element_t__ref (element_t__content element_t)))))
(define-fun element_t__ref___projection ((a element_t__ref)) element_t (element_t__content a))
(define-fun to_rep ((x element_t)) Int (element_tqtint x))
(declare-fun of_rep (Int) element_t)
(assert (forall ((x element_t)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x element_t)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int element_t))))))
(declare-fun slide ((Array Int element_t) Int Int) (Array Int element_t))
(assert (forall ((a (Array Int element_t))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int element_t))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int element_t)) (a__first Int) (a__last Int) (b (Array Int element_t)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int element_t)) (b (Array Int element_t))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-fun valid ((Array Int element_t) Int) Bool)
(declare-fun valid__function_guard (Bool (Array Int element_t) Int) Bool)
(declare-sort size_t 0)
(declare-fun size_tqtint (size_t) Int)
(assert (forall ((i size_t)) (and (<= 0 (size_tqtint i)) (<= (size_tqtint i) 100))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (size_t size_t) Bool)
(declare-const dummy1 size_t)
(declare-datatypes () ((size_t__ref (mk_size_t__ref (size_t__content size_t)))))
(define-fun size_t__ref___projection ((a size_t__ref)) size_t (size_t__content a))
(define-fun dynamic_invariant ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 0 100)) (in_range2 temp___expr_159)))
(assert true)
(assert (forall ((t (Array Int element_t))) (forall ((s Int)) (! (= (= (valid t s) true) (and (forall ((i Int)) (=> (and (<= 1 i) (<= i s)) (and (<= 0 (to_rep (select t i))) (<= (to_rep (select t i)) 2147483647)))) (forall ((i Int)) (=> (and (<= (+ s 1) i) (<= i 100)) (= (to_rep (select t i)) (- 1)))))) :pattern ((valid t s))))))
(declare-sort index_t 0)
(declare-fun index_tqtint (index_t) Int)
(assert (forall ((i index_t)) (and (<= 1 (index_tqtint i)) (<= (index_tqtint i) 100))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (index_t index_t) Bool)
(declare-const dummy2 index_t)
(declare-datatypes () ((index_t__ref (mk_index_t__ref (index_t__content index_t)))))
(define-fun index_t__ref___projection ((a index_t__ref)) index_t (index_t__content a))
(declare-const t (Array Int element_t))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-sort t1b 0)
(declare-fun t1bqtint (t1b) Int)
(assert (forall ((i t1b)) (and (<= 1 (t1bqtint i)) (<= (t1bqtint i) 100))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (t1b t1b) Bool)
(declare-const dummy3 t1b)
(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= (- 1) 2147483647)) (in_range1 temp___expr_166)))
(define-fun dynamic_invariant2 ((temp___expr_173 Int) (temp___is_init_169 Bool) (temp___skip_constant_170 Bool) (temp___do_toplevel_171 Bool) (temp___do_typ_inv_172 Bool)) Bool (=> (or (= temp___is_init_169 true) (<= 1 100)) (in_range3 temp___expr_173)))
(declare-const index Int)
(declare-const i Int)
(declare-const result Int)
(declare-const index1 Int)
(declare-const index2 Int)
(assert (exists ((s Int)) (and (and (<= 0 s) (<= s 100)) (= (valid t s) true))))
(assert (= (mk_int__ref result) (mk_int__ref index)))
(assert (= index1 1))
(assert (<= 1 index1))
(assert (<= index1 100))
(assert (forall ((i1 Int)) (=> (and (<= 1 i1) (<= i1 (- index2 1))) (not (= (to_rep (select t i1)) (- 1))))))
(assert (and (=> (<= 1 100) (in_range4 index2)) (and (<= 1 index2) (<= index2 100))))
(assert (<= 1 i))
(assert (<= i (- index2 1)))
(assert (not (<= 1 i)))
(check-sat)
(exit)
