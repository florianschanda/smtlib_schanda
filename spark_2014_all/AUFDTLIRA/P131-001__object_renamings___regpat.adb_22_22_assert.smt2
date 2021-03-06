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
(declare-sort character 0)
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (character character) Bool)
(declare-const dummy character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(declare-fun oeq (Int Int) Bool)
(declare-fun oeq__function_guard (Bool Int Int) Bool)
(define-fun dynamic_invariant ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range temp___expr_74)))
(declare-sort opcode 0)
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 0)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (opcode opcode) Bool)
(declare-const dummy1 opcode)
(declare-datatypes () ((opcode__ref (mk_opcode__ref (opcode__content opcode)))))
(define-fun opcode__ref___projection ((a opcode__ref)) opcode (opcode__content a))
(define-fun dynamic_invariant1 ((temp___expr_177 Int) (temp___is_init_173 Bool) (temp___skip_constant_174 Bool) (temp___do_toplevel_175 Bool) (temp___do_typ_inv_176 Bool)) Bool (=> (or (= temp___is_init_173 true) (<= 0 0)) (in_range1 temp___expr_177)))
(assert true)
(declare-const dummy2 (Array Int character))
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
(declare-fun user_eq2 ((Array Int character) (Array Int character)) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__regpat__pattern_matcher__program (Array Int character))))))
(define-fun us_split_fields_Program__projection ((a us_split_fields)) (Array Int character) (rec__regpat__pattern_matcher__program a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (= (bool_eq (rec__regpat__pattern_matcher__program (us_split_fields1 a)) 1 16 (rec__regpat__pattern_matcher__program (us_split_fields1 b)) 1 16) true) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const regpat__pattern_matcher__program__first__bit Int)
(declare-const regpat__pattern_matcher__program__last__bit Int)
(declare-const regpat__pattern_matcher__program__position Int)
(assert (<= 0 regpat__pattern_matcher__program__first__bit))
(assert (< regpat__pattern_matcher__program__first__bit regpat__pattern_matcher__program__last__bit))
(assert (<= 0 regpat__pattern_matcher__program__position))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((pattern_matcher__ref (mk_pattern_matcher__ref (pattern_matcher__content us_rep)))))
(define-fun pattern_matcher__ref___projection ((a pattern_matcher__ref)) us_rep (pattern_matcher__content a))
(declare-fun temp_____aggregate_def_168 (Int) (Array Int character))
(define-fun default_initial_assumption ((temp___expr_166 us_rep) (temp___skip_top_level_167 Bool)) Bool (= (rec__regpat__pattern_matcher__program (us_split_fields1 temp___expr_166)) (temp_____aggregate_def_168 0)))
(declare-const self us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(assert (forall ((temp___170 Int)) (=> (dynamic_invariant temp___170 true true true true) (forall ((temp___171 Int)) (= (to_rep (select (temp_____aggregate_def_168 temp___170) temp___171)) temp___170)))))
(assert (not (not (= (oeq (to_rep (select (rec__regpat__pattern_matcher__program (us_split_fields1 self)) 1)) 0) true))))
(check-sat)
(exit)
