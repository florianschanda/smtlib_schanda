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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range2 temp___expr_46)))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range2 low) (in_range2 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int integer)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))
(define-fun of_array ((a (Array Int integer)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
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
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep (first (rt x))) (to_rep (last (rt x))) (elts y) (to_rep (first (rt y))) (to_rep (last (rt y)))))
(declare-fun user_eq2 (us_t us_t) Bool)
(declare-const dummy2 us_t)
(declare-datatypes () ((array_type__ref (mk_array_type__ref (array_type__content us_t)))))
(define-fun array_type__ref___projection ((a array_type__ref)) us_t (array_type__content a))
(define-fun dynamic_invariant2 ((temp___expr_159 us_t) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (not (= temp___skip_constant_156 true)) (dynamic_property 1 2147483647 (first1 temp___expr_159) (last1 temp___expr_159))))
(declare-const list us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const value Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const found Bool)
(declare-const position Int)
(declare-const o Int)
(declare-const temp___185 Int)
(declare-const o1 Int)
(declare-const o2 integer)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 integer)
(declare-const o7 Int)
(declare-const o8 Int)
(declare-const j Int)
(declare-const o9 Int)
(declare-const o10 integer)
(declare-const o11 Int)
(declare-const result Int)
(declare-const position1 Int)
(declare-const result1 Bool)
(declare-const result2 Int)
(declare-const position2 Int)
(declare-const position3 Int)
(declare-const result3 Bool)
(declare-const position4 Int)
(declare-const position5 Int)
(declare-const position6 Int)
(declare-const position7 Int)
(declare-const position8 Int)
(declare-const position9 Int)
(declare-const result4 Bool)
(declare-const found1 Bool)
(declare-const result5 Int)
(declare-const position10 Int)
(declare-const position11 Int)
(declare-const position12 Int)
(declare-const found2 Bool)
(declare-const position13 Int)
(declare-const found3 Bool)
(declare-const position14 Int)
(declare-const result6 Bool)
(declare-const result7 Bool)
(define-fun position15 () int__ref (mk_int__ref position11))
(define-fun position16 () int__ref (mk_int__ref position8))
(define-fun position17 () int__ref (mk_int__ref position6))
(assert (dynamic_invariant2 list true false true true))
(assert (in_range1 value))
(assert (=> (<= 1 2147483647) (in_range2 position)))
(assert (and (< 0 (length list)) (and (< (to_rep (last (rt list))) 2147483647) (forall ((j1 Int)) (=> (and (<= (to_rep (first (rt list))) j1) (<= j1 (to_rep (last (rt list))))) (forall ((k Int)) (=> (and (<= (to_rep (first (rt list))) k) (<= k (to_rep (last (rt list))))) (=> (= (to_rep (select (elts list) j1)) (to_rep (select (elts list) k))) (= j1 k)))))))))
(assert (and (= o (to_rep (first (rt list)))) (in_range2 (to_rep (first (rt list))))))
(assert (= (mk_int__ref result) (mk_int__ref position)))
(assert (= position1 o))
(assert (= temp___185 position1))
(assert (or (and (and (= position1 position4) (= position5 position1)) (and (ite (< (to_rep (last (rt list))) position1) (= result1 true) (and (and (and (and (and (<= (to_rep (first (rt list))) position1) (<= position1 (to_rep (last (rt list))))) (= o1 position1)) (= o2 (select (elts list) o1))) (= o3 (to_rep o2))) (= result1 (ite (= o3 value) true false)))) (= result1 true))) (and (and (ite (< (to_rep (last (rt list))) position1) (= result1 true) (and (and (and (and (and (<= (to_rep (first (rt list))) position1) (<= position1 (to_rep (last (rt list))))) (= o1 position1)) (= o2 (select (elts list) o1))) (= o3 (to_rep o2))) (= result1 (ite (= o3 value) true false)))) (not (= result1 true))) (and (and (= position3 position4) (= position5 position3)) (and (and (and (= o4 (+ position1 1)) (in_range1 (+ position1 1))) (and (= position1 result2) (= position2 o4))) (and (and (and (<= (to_rep (first (rt list))) position3) (<= position3 (+ (to_rep (last (rt list))) 1))) (forall ((j1 Int)) (=> (and (<= (to_rep (first (rt list))) j1) (<= j1 (- position3 1))) (not (= (to_rep (select (elts list) j1)) value))))) (and (=> (<= 1 2147483647) (in_range2 position3)) (and (ite (< (to_rep (last (rt list))) position3) (= result3 true) (and (and (and (and (and (<= (to_rep (first (rt list))) position3) (<= position3 (to_rep (last (rt list))))) (= o5 position3)) (= o6 (select (elts list) o5))) (= o7 (to_rep o6))) (= result3 (ite (= o7 value) true false)))) (= result3 true)))))))))
(assert (= position17 (mk_int__ref position4)))
(assert (= position7 position5))
(assert (= position16 position17))
(assert (= position9 position7))
(assert (= (mk_bool__ref result4) (mk_bool__ref found)))
(assert (= found1 (ite (<= position8 (to_rep (last (rt list)))) true false)))
(assert (=> (not (= found1 true)) (and (= o8 (to_rep (last (rt list)))) (in_range2 (to_rep (last (rt list)))))))
(assert (=> (not (= found1 true)) (= (mk_int__ref result5) position16)))
(assert (=> (not (= found1 true)) (= position10 o8)))
(assert (=> (not (= found1 true)) (= position10 position11)))
(assert (=> (not (= found1 true)) (= position12 position10)))
(assert (=> (not (not (= found1 true))) (= position15 position16)))
(assert (=> (not (not (= found1 true))) (= position12 position9)))
(assert (= (mk_int__ref position13) position15))
(assert (= found1 found2))
(assert (= position14 position12))
(assert (= found3 found1))
(assert (<= (to_rep (first (rt list))) position13))
(assert (<= position13 (to_rep (last (rt list)))))
(assert (=> (= found2 true) (and (<= (to_rep (first (rt list))) position13) (<= position13 (to_rep (last (rt list)))))))
(assert (=> (= found2 true) (= o9 position13)))
(assert (=> (= found2 true) (= o10 (select (elts list) o9))))
(assert (=> (= found2 true) (= o11 (to_rep o10))))
(assert (=> (= found2 true) (= result6 (ite (= o11 value) true false))))
(assert (=> (not (= found2 true)) (= result6 false)))
(assert (not (= result6 true)))
(assert (=> (not (= found2 true)) (= result7 (ite (= position13 (to_rep (last (rt list)))) true false))))
(assert (=> (not (not (= found2 true))) (= result7 false)))
(assert (= result7 true))
(assert (<= (to_rep (first (rt list))) j))
(assert (<= j (to_rep (last (rt list)))))
(assert (not (<= j (to_rep (last (rt list))))))
(check-sat)
(exit)
