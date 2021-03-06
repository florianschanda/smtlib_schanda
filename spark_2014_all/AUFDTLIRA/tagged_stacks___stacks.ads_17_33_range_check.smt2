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
(declare-sort less_than_max 0)
(declare-fun less_than_maxqtint (less_than_max) Int)
(assert (forall ((i less_than_max)) (and (<= 0 (less_than_maxqtint i)) (<= (less_than_maxqtint i) 100))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (less_than_max less_than_max) Bool)
(declare-const dummy1 less_than_max)
(declare-datatypes () ((less_than_max__ref (mk_less_than_max__ref (less_than_max__content less_than_max)))))
(define-fun less_than_max__ref___projection ((a less_than_max__ref)) less_than_max (less_than_max__content a))
(define-fun to_rep ((x less_than_max)) Int (less_than_maxqtint x))
(declare-fun of_rep (Int) less_than_max)
(assert (forall ((x less_than_max)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x less_than_max)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort element 0)
(declare-fun elementqtint (element) Int)
(assert (forall ((i element)) (and (<= 0 (elementqtint i)) (<= (elementqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (element element) Bool)
(declare-const dummy2 element)
(declare-datatypes () ((element__ref (mk_element__ref (element__content element)))))
(define-fun element__ref___projection ((a element__ref)) element (element__content a))
(define-fun to_rep1 ((x element)) Int (elementqtint x))
(declare-fun of_rep1 (Int) element)
(assert (forall ((x element)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x element)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int element))))))
(declare-fun slide ((Array Int element) Int Int) (Array Int element))
(assert (forall ((a (Array Int element))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int element))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int element)) (a__first Int) (a__last Int) (b (Array Int element)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int element)) (b (Array Int element))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const dummy3 (Array Int element))
(declare-const value__size Int)
(declare-fun object__size ((Array Int element)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int element)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int element)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int element))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int element))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int element))) (<= 0 (object__alignment a))))
(declare-fun user_eq3 ((Array Int element) (Array Int element)) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__stacks__stack_root__content (Array Int element)) (rec__stacks__stack_root__length less_than_max) (rec__ext__ us_private)))))
(define-fun us_split_fields_Content__projection ((a us_split_fields)) (Array Int element) (rec__stacks__stack_root__content a))
(define-fun us_split_fields_Length__projection ((a us_split_fields)) less_than_max (rec__stacks__stack_root__length a))
(define-fun us_split_fields___projection ((a us_split_fields)) us_private (rec__ext__ a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields) (attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___2__projection ((a us_rep)) Int (attr__tag a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (= (bool_eq (rec__stacks__stack_root__content (us_split_fields1 a)) 1 100 (rec__stacks__stack_root__content (us_split_fields1 b)) 1 100) true) (= (to_rep (rec__stacks__stack_root__length (us_split_fields1 a))) (to_rep (rec__stacks__stack_root__length (us_split_fields1 b))))) true false))
(declare-fun us_dispatch_eq (us_rep us_rep) Bool)
(declare-const us_tag Int)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const stacks__stack_root__content__first__bit Int)
(declare-const stacks__stack_root__content__last__bit Int)
(declare-const stacks__stack_root__content__position Int)
(assert (<= 0 stacks__stack_root__content__first__bit))
(assert (< stacks__stack_root__content__first__bit stacks__stack_root__content__last__bit))
(assert (<= 0 stacks__stack_root__content__position))
(declare-const stacks__stack_root__length__first__bit Int)
(declare-const stacks__stack_root__length__last__bit Int)
(declare-const stacks__stack_root__length__position Int)
(assert (<= 0 stacks__stack_root__length__first__bit))
(assert (< stacks__stack_root__length__first__bit stacks__stack_root__length__last__bit))
(assert (<= 0 stacks__stack_root__length__position))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((stack_root__ref (mk_stack_root__ref (stack_root__content us_rep)))))
(define-fun stack_root__ref___projection ((a stack_root__ref)) us_rep (stack_root__content a))
(declare-fun size (us_rep) Int)
(declare-fun size__function_guard (Int us_rep) Bool)
(define-fun dynamic_invariant ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 0 100)) (in_range1 temp___expr_159)))
(declare-fun temp_____aggregate_def_187 (Int) (Array Int element))
(define-fun default_initial_assumption ((temp___expr_185 us_rep) (temp___skip_top_level_186 Bool)) Bool (and (and (= (attr__tag temp___expr_185) us_tag) (and (= (rec__stacks__stack_root__content (us_split_fields1 temp___expr_185)) (temp_____aggregate_def_187 0)) (= (to_rep (rec__stacks__stack_root__length (us_split_fields1 temp___expr_185))) 0))) (=> (not (= temp___skip_top_level_186 true)) (= (size temp___expr_185) 0))))
(assert (forall ((s us_rep)) (! (dynamic_invariant (size s) true false true true) :pattern ((size s)))))
(assert (forall ((s us_rep)) (! (= (size s) (to_rep (rec__stacks__stack_root__length (us_split_fields1 s)))) :pattern ((size s)))))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq5 (positive positive) Bool)
(declare-const dummy5 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun to_rep2 ((x integer)) Int (integerqtint x))
(declare-fun of_rep2 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep2 (first (mk f l))) f) (= (to_rep2 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int element)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int element) (elts a))
(define-fun of_array ((a (Array Int element)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep2 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep2 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int element)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int element)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int element)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int element))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int element))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int element))) (<= 0 (object__alignment2 a))))
(define-fun bool_eq2 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep2 (first (rt x))) (to_rep2 (last (rt x))) (elts y) (to_rep2 (first (rt y))) (to_rep2 (last (rt y)))))
(declare-fun user_eq6 (us_t us_t) Bool)
(declare-const dummy6 us_t)
(declare-datatypes () ((model____ref (mk_model____ref (model____content us_t)))))
(define-fun model____ref___projection ((a model____ref)) us_t (model____content a))
(declare-const s us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(define-fun dynamic_invariant2 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(define-fun dynamic_invariant3 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 0 2147483647)) (in_range2 temp___expr_166)))
(define-fun dynamic_invariant4 ((temp___expr_196 us_t) (temp___is_init_192 Bool) (temp___skip_constant_193 Bool) (temp___do_toplevel_194 Bool) (temp___do_typ_inv_195 Bool)) Bool (=> (not (= temp___skip_constant_193 true)) (dynamic_property 1 2147483647 (first1 temp___expr_196) (last1 temp___expr_196))))
(declare-const rliteral element)
(assert (= (elementqtint rliteral) 0))
(assert (forall ((temp___189 Int)) (=> (dynamic_invariant3 temp___189 true true true true) (forall ((temp___190 Int)) (= (select (temp_____aggregate_def_187 temp___189) temp___190) rliteral)))))
(declare-const stacks__get_model__result (Array Int element))
(declare-const stacks__get_model__result1 t)
(declare-const o Int)
(assert (in_range1 (to_rep2 (first stacks__get_model__result1))))
(assert (in_range1 (to_rep2 (last stacks__get_model__result1))))
(assert (and (= o (size s)) (and (in_range1 o) (= o (to_rep (rec__stacks__stack_root__length (us_split_fields1 s)))))))
(assert (not (in_range (length (mk___t stacks__get_model__result stacks__get_model__result1)))))
(check-sat)
(exit)
