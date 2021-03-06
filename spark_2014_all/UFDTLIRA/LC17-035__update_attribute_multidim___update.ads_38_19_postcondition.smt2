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
(declare-sort index 0)
(declare-fun indexqtint (index) Int)
(assert (forall ((i index)) (and (<= 1 (indexqtint i)) (<= (indexqtint i) 8))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 8)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (index index) Bool)
(declare-const dummy1 index)
(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))
(define-fun dynamic_invariant1 ((temp___expr_161 Int) (temp___is_init_157 Bool) (temp___skip_constant_158 Bool) (temp___do_toplevel_159 Bool) (temp___do_typ_inv_160 Bool)) Bool (=> (or (= temp___is_init_157 true) (<= 1 8)) (in_range1 temp___expr_161)))
(declare-sort map1 0)
(declare-datatypes () ((map__ref (mk_map__ref (map__content map1)))))
(declare-fun get (map1 Int Int Int) integer)
(declare-fun set (map1 Int Int Int integer) map1)
(assert (forall ((m map1)) (forall ((i Int)) (forall ((j Int)) (forall ((k Int)) (forall ((a integer)) (! (= (get (set m i j k a) i j k) a) :pattern ((set m i j k a)))))))))
(assert (forall ((m map1)) (forall ((i Int) (i2 Int)) (forall ((j Int) (j2 Int)) (forall ((k Int) (k2 Int)) (forall ((a integer)) (! (=> (not (and (= i i2) (and (= j j2) (= k k2)))) (= (get (set m i j k a) i2 j2 k2) (get m i2 j2 k2))) :pattern ((get (set m i j k a) i2 j2 k2)) :pattern ((set m i j k a) (get m i2 j2 k2)))))))))
(declare-fun slide (map1 Int Int Int Int Int Int) map1)
(assert (forall ((a map1)) (forall ((old_first Int) (new_first Int)) (forall ((old_first_2 Int) (new_first_2 Int)) (forall ((old_first_3 Int) (new_first_3 Int)) (forall ((i Int)) (forall ((j Int)) (forall ((k Int)) (! (= (get (slide a old_first new_first old_first_2 new_first_2 old_first_3 new_first_3) i j k) (get a (- i (- new_first old_first)) (- j (- new_first_2 old_first_2)) (- k (- new_first_3 old_first_3)))) :pattern ((get (slide a old_first new_first old_first_2 new_first_2 old_first_3 new_first_3) i j k)))))))))))
(define-fun bool_eq ((a map1) (a__first Int) (a__last Int) (a__first_2 Int) (a__last_2 Int) (a__first_3 Int) (a__last_3 Int) (b map1) (b__first Int) (b__last Int) (b__first_2 Int) (b__last_2 Int) (b__first_3 Int) (b__last_3 Int)) Bool (ite (and (and (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (ite (<= a__first_2 a__last_2) (and (<= b__first_2 b__last_2) (= (- a__last_2 a__first_2) (- b__last_2 b__first_2))) (< b__last_2 b__first_2))) (ite (<= a__first_3 a__last_3) (and (<= b__first_3 b__last_3) (= (- a__last_3 a__first_3) (- b__last_3 b__first_3))) (< b__last_3 b__first_3))) (forall ((temp___idx_154 Int) (temp___idx_155 Int) (temp___idx_156 Int)) (=> (and (and (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (and (<= a__first_2 temp___idx_155) (<= temp___idx_155 a__last_2))) (and (<= a__first_3 temp___idx_156) (<= temp___idx_156 a__last_3))) (= (to_rep (get a temp___idx_154 temp___idx_155 temp___idx_156)) (to_rep (get b (+ (- b__first a__first) temp___idx_154) (+ (- b__first_2 a__first_2) temp___idx_155) (+ (- b__first_3 a__first_3) temp___idx_156))))))) true false))
(assert (forall ((a map1) (b map1)) (forall ((a__first Int) (a__last Int) (a__first_2 Int) (a__last_2 Int) (a__first_3 Int) (a__last_3 Int) (b__first Int) (b__last Int) (b__first_2 Int) (b__last_2 Int) (b__first_3 Int) (b__last_3 Int)) (=> (= (bool_eq b b__first b__last b__first_2 b__last_2 b__first_3 b__last_3 a a__first a__last a__first_2 a__last_2 a__first_3 a__last_3) true) (and (and (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (ite (<= a__first_2 a__last_2) (and (<= b__first_2 b__last_2) (= (- a__last_2 a__first_2) (- b__last_2 b__first_2))) (< b__last_2 b__first_2))) (ite (<= a__first_3 a__last_3) (and (<= b__first_3 b__last_3) (= (- a__last_3 a__first_3) (- b__last_3 b__first_3))) (< b__last_3 b__first_3))) (forall ((temp___idx_154 Int) (temp___idx_155 Int) (temp___idx_156 Int)) (=> (and (and (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (and (<= a__first_2 temp___idx_155) (<= temp___idx_155 a__last_2))) (and (<= a__first_3 temp___idx_156) (<= temp___idx_156 a__last_3))) (= (to_rep (get a temp___idx_154 temp___idx_155 temp___idx_156)) (to_rep (get b (+ (- b__first a__first) temp___idx_154) (+ (- b__first_2 a__first_2) temp___idx_155) (+ (- b__first_3 a__first_3) temp___idx_156)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const new_val Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-fun temp_____aggregate_def_202 (map1 Int Int Int Int) map1)
(assert (forall ((temp___204 map1)) (forall ((temp___205 Int) (temp___206 Int) (temp___207 Int) (temp___208 Int)) (let ((temp___203 (temp_____aggregate_def_202 temp___204 temp___205 temp___206 temp___207 temp___208))) (=> (and (and (and (dynamic_invariant1 temp___205 true true true true) (dynamic_invariant1 temp___206 true true true true)) (dynamic_invariant1 temp___207 true true true true)) (dynamic_invariant temp___208 true true true true)) (forall ((temp___209 Int) (temp___210 Int) (temp___211 Int)) (ite (and (and (= temp___209 temp___205) (= temp___210 temp___206)) (= temp___211 temp___207)) (= (to_rep (get temp___203 temp___209 temp___210 temp___211)) temp___208) (= (get temp___203 temp___209 temp___210 temp___211) (get temp___204 temp___209 temp___210 temp___211)))))))))
(declare-const a map1)
(declare-const o integer)
(declare-const o1 map1)
(declare-const result map1)
(declare-const a1 map1)
(declare-const a2 map1)
(declare-const a3 map1)
(assert (in_range1 i))
(assert (in_range new_val))
(assert (= (to_rep o) new_val))
(assert (= o1 (set a i i i o)))
(assert (= result a))
(assert (= a1 o1))
(assert (= a1 a2))
(assert (= a3 a1))
(assert (not (= (bool_eq a2 1 8 1 8 1 8 (temp_____aggregate_def_202 a i i 5 new_val) 1 8 1 8 1 8) true)))
(check-sat)
(exit)
