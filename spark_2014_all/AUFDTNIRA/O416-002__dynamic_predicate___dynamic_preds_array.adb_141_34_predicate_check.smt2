(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFDTNIRA)
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
(declare-fun div1 (Int Int) Int)
(declare-fun mod1 (Int Int) Int)
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))
(assert (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))
(assert (forall ((x Int) (y Int)) (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))
(assert (forall ((x Int)) (= (div1 x 1) x)))
(assert (forall ((x Int)) (= (mod1 x 1) 0)))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))
(assert (forall ((x Int) (y Int) (z Int)) (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z))) (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1 (+ (* x y) z) x)))))
(assert (forall ((x Int) (y Int) (z Int)) (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z))) (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)))))
(define-fun mod2 ((x Int) (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))
(declare-sort even 0)
(declare-fun evenqtint (even) Int)
(assert (forall ((i even)) (and (<= (- 2147483648) (evenqtint i)) (<= (evenqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (even even) Bool)
(declare-const dummy even)
(declare-datatypes () ((even__ref (mk_even__ref (even__content even)))))
(define-fun even__ref___projection ((a even__ref)) even (even__content a))
(define-fun to_rep ((x even)) Int (evenqtint x))
(declare-fun of_rep (Int) even)
(assert (forall ((x even)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x even)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort teven_pairD1 0)
(declare-fun teven_pairD1qtint (teven_pairD1) Int)
(assert (forall ((i teven_pairD1)) (and (<= 1 (teven_pairD1qtint i)) (<= (teven_pairD1qtint i) 2))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (teven_pairD1 teven_pairD1) Bool)
(declare-const dummy1 teven_pairD1)
(declare-datatypes () ((teven_pairD1__ref (mk_teven_pairD1__ref (teven_pairD1__content teven_pairD1)))))
(define-fun teven_pairD1__ref___projection ((a teven_pairD1__ref)) teven_pairD1 (teven_pairD1__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int even))))))
(declare-fun slide ((Array Int even) Int Int) (Array Int even))
(assert (forall ((a (Array Int even))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int even))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int even)) (a__first Int) (a__last Int) (b (Array Int even)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int even)) (b (Array Int even))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(define-fun dynamic_invariant ((temp___expr_170 (Array Int even)) (temp___is_init_166 Bool) (temp___skip_constant_167 Bool) (temp___do_toplevel_168 Bool) (temp___do_typ_inv_169 Bool)) Bool (forall ((temp___171 Int)) (=> (and (<= 1 temp___171) (<= temp___171 2)) (=> (= temp___is_init_166 true) (= (mod2 (to_rep (select temp___expr_170 temp___171)) 2) 0)))))
(define-fun dynamic_invariant1 ((temp___expr_160 Int) (temp___is_init_156 Bool) (temp___skip_constant_157 Bool) (temp___do_toplevel_158 Bool) (temp___do_typ_inv_159 Bool)) Bool (and (=> (or (= temp___is_init_156 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_160)) (=> (= temp___do_toplevel_158 true) (=> (= temp___is_init_156 true) (= (mod2 temp___expr_160 2) 0)))))
(define-fun dynamic_predicate ((temp___164 Int)) Bool (= (mod2 temp___164 2) 0))
(declare-const i11s Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant2 ((temp___expr_209 (Array Int even)) (temp___is_init_205 Bool) (temp___skip_constant_206 Bool) (temp___do_toplevel_207 Bool) (temp___do_typ_inv_208 Bool)) Bool (and (=> (= temp___do_toplevel_207 true) (=> (= temp___is_init_205 true) (= (to_rep (select temp___expr_209 2)) (+ (to_rep (select temp___expr_209 1)) 2)))) (forall ((temp___211 Int)) (=> (and (<= 1 temp___211) (<= temp___211 2)) (=> (= temp___is_init_205 true) (= (mod2 (to_rep (select temp___expr_209 temp___211)) 2) 0))))))
(define-fun dynamic_predicate1 ((temp___217 (Array Int even))) Bool (= (to_rep (select temp___217 2)) (+ (to_rep (select temp___217 1)) 2)))
(declare-const i15s (Array Int even))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const x (Array Int even))
(declare-const dynamic_preds_array__update_even_pair__x (Array Int even))
(declare-const result (Array Int even))
(declare-const x1 (Array Int even))
(declare-const dynamic_preds_array__update_constant_even_pair__x (Array Int even))
(declare-const result1 (Array Int even))
(declare-const x2 (Array Int even))
(assert (dynamic_invariant1 i11s true false true true))
(assert (dynamic_invariant2 i15s true false true true))
(assert (dynamic_invariant2 x true false true true))
(assert (dynamic_invariant dynamic_preds_array__update_even_pair__x true true true true))
(assert (= (mk_map__ref result) (mk_map__ref x)))
(assert (= x1 dynamic_preds_array__update_even_pair__x))
(assert (dynamic_predicate1 x1))
(assert (and (and (= (to_rep (select dynamic_preds_array__update_constant_even_pair__x 1)) 0) (= (to_rep (select dynamic_preds_array__update_constant_even_pair__x 2)) 2)) (dynamic_invariant dynamic_preds_array__update_constant_even_pair__x true true true true)))
(assert (= result1 x1))
(assert (= x2 dynamic_preds_array__update_constant_even_pair__x))
(assert (not (dynamic_predicate1 x2)))
(check-sat)
(exit)
