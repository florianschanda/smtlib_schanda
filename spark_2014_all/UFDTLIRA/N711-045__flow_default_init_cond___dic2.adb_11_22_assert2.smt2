(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTLIRA)
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
(declare-sort t 0)
(declare-fun tqtint (t) Int)
(assert (forall ((i t)) (and (<= (- 2147483648) (tqtint i)) (<= (tqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (t t) Bool)
(declare-const dummy t)
(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))
(declare-fun foo (Int) Bool)
(declare-fun foo__function_guard (Bool Int) Bool)
(define-fun dynamic_invariant ((temp___expr_158 Int) (temp___is_init_154 Bool) (temp___skip_constant_155 Bool) (temp___do_toplevel_156 Bool) (temp___do_typ_inv_157 Bool)) Bool (=> (or (= temp___is_init_154 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_158)))
(define-fun default_initial_assumption ((temp___expr_159 Int) (temp___skip_top_level_160 Bool)) Bool (and (= temp___expr_159 0) (=> (not (= temp___skip_top_level_160 true)) (= (foo temp___expr_159) true))))
(define-fun to_rep ((x t)) Int (tqtint x))
(declare-fun of_rep (Int) t)
(assert (forall ((x t)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x t)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort u 0)
(declare-fun uqtint (u) Int)
(assert (forall ((i u)) (and (<= (- 2147483648) (uqtint i)) (<= (uqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (u u) Bool)
(declare-const dummy1 u)
(declare-datatypes () ((u__ref (mk_u__ref (u__content u)))))
(define-fun u__ref___projection ((a u__ref)) u (u__content a))
(declare-fun bar (Int) Bool)
(declare-fun bar__function_guard (Bool Int) Bool)
(define-fun dynamic_invariant1 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_166)))
(define-fun default_initial_assumption1 ((temp___expr_167 Int) (temp___skip_top_level_168 Bool)) Bool (and (= temp___expr_167 1) (=> (not (= temp___skip_top_level_168 true)) (= (bar temp___expr_167) true))))
(define-fun to_rep1 ((x u)) Int (uqtint x))
(declare-fun of_rep1 (Int) u)
(assert (forall ((x u)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x u)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__dic2__r__x t) (rec__dic2__r__y u)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) t (rec__dic2__r__x a))
(define-fun us_split_fields_Y__projection ((a us_split_fields)) u (rec__dic2__r__y a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__dic2__r__x (us_split_fields1 a))) (to_rep (rec__dic2__r__x (us_split_fields1 b)))) (= (to_rep1 (rec__dic2__r__y (us_split_fields1 a))) (to_rep1 (rec__dic2__r__y (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const dic2__r__x__first__bit Int)
(declare-const dic2__r__x__last__bit Int)
(declare-const dic2__r__x__position Int)
(assert (<= 0 dic2__r__x__first__bit))
(assert (< dic2__r__x__first__bit dic2__r__x__last__bit))
(assert (<= 0 dic2__r__x__position))
(declare-const dic2__r__y__first__bit Int)
(declare-const dic2__r__y__last__bit Int)
(declare-const dic2__r__y__position Int)
(assert (<= 0 dic2__r__y__first__bit))
(assert (< dic2__r__y__first__bit dic2__r__y__last__bit))
(assert (<= 0 dic2__r__y__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((r__ref (mk_r__ref (r__content us_rep)))))
(define-fun r__ref___projection ((a r__ref)) us_rep (r__content a))
(define-fun default_initial_assumption2 ((temp___expr_175 us_rep) (temp___skip_top_level_176 Bool)) Bool (and (let ((temp___177 (rec__dic2__r__x (us_split_fields1 temp___expr_175)))) (and (= (to_rep temp___177) 0) (= (foo (to_rep temp___177)) true))) (let ((temp___179 (rec__dic2__r__y (us_split_fields1 temp___expr_175)))) (and (= (to_rep1 temp___179) 1) (= (bar (to_rep1 temp___179)) true)))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(assert true)
(assert (forall ((par1 Int)) (! (= (= (foo par1) true) (= par1 0)) :pattern ((foo par1)))))
(assert true)
(assert (forall ((par1 Int)) (! (= (= (bar par1) true) (= par1 1)) :pattern ((bar par1)))))
(declare-const t_var Int)
(declare-const u_var Int)
(declare-const r_var__split_fields t)
(declare-const r_var__split_fields1 u)
(assert (default_initial_assumption t_var false))
(assert (=> (<= (- 2147483648) 2147483647) (in_range1 t_var)))
(assert (default_initial_assumption1 u_var false))
(assert (=> (<= (- 2147483648) 2147483647) (in_range2 u_var)))
(assert (default_initial_assumption2 (mk___rep (mk___split_fields r_var__split_fields r_var__split_fields1)) false))
(assert (not (= t_var (to_rep r_var__split_fields))))
(check-sat)
(exit)
