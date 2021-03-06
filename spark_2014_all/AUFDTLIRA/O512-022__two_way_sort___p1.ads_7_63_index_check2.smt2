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
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort index 0)
(declare-fun indexqtint (index) Int)
(assert (forall ((i index)) (and (<= 0 (indexqtint i)) (<= (indexqtint i) 1000000))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1000000)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (index index) Bool)
(declare-const dummy1 index)
(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int Bool))))))
(declare-fun slide ((Array Int Bool) Int Int) (Array Int Bool))
(assert (forall ((a (Array Int Bool))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int Bool))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int Bool)) (a__first Int) (a__last Int) (b (Array Int Bool)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154)))))) true false))
(assert (forall ((a (Array Int Bool)) (b (Array Int Bool))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))))))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range2 low) (in_range2 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int Bool)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int Bool) (elts a))
(define-fun of_array ((a (Array Int Bool)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int Bool)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int Bool)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int Bool)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int Bool))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int Bool))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int Bool))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep (first (rt x))) (to_rep (last (rt x))) (elts y) (to_rep (first (rt y))) (to_rep (last (rt y)))))
(declare-fun user_eq2 (us_t us_t) Bool)
(declare-const dummy2 us_t)
(declare-datatypes () ((arr__ref (mk_arr__ref (arr__content us_t)))))
(define-fun arr__ref___projection ((a arr__ref)) us_t (arr__content a))
(define-fun dynamic_invariant ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 0 1000000)) (in_range2 temp___expr_159)))
(declare-const a__first integer)
(declare-const a__last integer)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant2 ((temp___expr_166 us_t) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (not (= temp___skip_constant_163 true)) (dynamic_property 0 1000000 (first1 temp___expr_166) (last1 temp___expr_166))))
(declare-const a (Array Int Bool))
(declare-const i Int)
(declare-const j Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const temp___196 Int)
(declare-const temp___195 Int)
(declare-const temp___194 (Array Int Bool))
(declare-const temp___197 Int)
(declare-const o2 Int)
(declare-const o3 Bool)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const o7 Int)
(declare-const o8 Int)
(declare-const k Int)
(declare-const j1 Int)
(declare-const a1 (Array Int Bool))
(declare-const i1 Int)
(declare-const j2 Int)
(declare-const result Int)
(declare-const i2 Int)
(declare-const result1 Int)
(declare-const j3 Int)
(declare-const a2 (Array Int Bool))
(declare-const i3 Int)
(declare-const j4 Int)
(declare-const temp___1971 Int)
(declare-const result2 Int)
(declare-const temp___1972 Int)
(declare-const result3 Bool)
(declare-const result4 Int)
(declare-const i4 Int)
(declare-const result5 Bool)
(declare-const result6 Int)
(declare-const j5 Int)
(declare-const o9 (Array Int Bool))
(declare-const result7 Int)
(declare-const i5 Int)
(declare-const result8 Int)
(declare-const j6 Int)
(declare-const a3 (Array Int Bool))
(declare-const i6 Int)
(declare-const j7 Int)
(declare-const a4 (Array Int Bool))
(declare-const i7 Int)
(declare-const j8 Int)
(declare-const a5 (Array Int Bool))
(declare-const i8 Int)
(declare-const j9 Int)
(declare-const a6 (Array Int Bool))
(declare-const i9 Int)
(declare-const j10 Int)
(declare-const a7 map__ref)
(declare-const i10 int__ref)
(declare-const j11 int__ref)
(declare-const a8 (Array Int Bool))
(declare-const i11 Int)
(declare-const j12 Int)
(declare-const a9 map__ref)
(declare-const i12 int__ref)
(declare-const j13 int__ref)
(declare-const a10 (Array Int Bool))
(declare-const i13 Int)
(declare-const j14 Int)
(define-fun j15 () int__ref (mk_int__ref j9))
(define-fun i14 () int__ref (mk_int__ref i8))
(define-fun a11 () map__ref (mk_map__ref a5))
(define-fun j16 () int__ref (mk_int__ref j))
(define-fun i15 () int__ref (mk_int__ref i))
(define-fun a12 () map__ref (mk_map__ref a))
(assert (dynamic_property 0 1000000 (to_rep a__first) (to_rep a__last)))
(assert (=> (<= 0 1000000) (in_range2 i)))
(assert (=> (<= 0 1000000) (in_range2 j)))
(assert (or (and (and (and (= j11 j16) (and (= i10 i15) (= a7 a12))) (and (= j12 j2) (and (= i11 i1) (= a8 a1)))) (< (to_rep a__last) (to_rep a__first))) (and (not (< (to_rep a__last) (to_rep a__first))) (and (and (and (= j11 j15) (and (= i10 i14) (= a7 a11))) (and (= j12 j10) (and (= i11 i9) (= a8 a6)))) (and (and (and (= o (to_rep a__first)) (in_range2 (to_rep a__first))) (and (= (mk_int__ref result) i15) (= i2 o))) (and (and (and (= o1 (to_rep a__last)) (in_range2 (to_rep a__last))) (and (= (mk_int__ref result1) j16) (= j3 o1))) (ite (<= i2 j3) (and (and (and (= temp___196 j3) (and (= temp___195 i2) (and (= temp___194 a) (and (= 0 temp___197) (and (and (and (and (and (<= (to_rep a__first) i3) (<= i3 (to_rep a__last))) (and (<= (to_rep a__first) j4) (<= j4 (to_rep a__last)))) (forall ((k1 Int)) (=> (and (<= (to_rep a__first) k1) (<= k1 (- i3 1))) (not (= (select a2 k1) true))))) (forall ((k1 Int)) (=> (and (<= (+ j4 1) k1) (<= k1 (to_rep a__last))) (= (select a2 k1) true)))) (and (and (and (=> (<= 0 1000000) (in_range2 i3)) (=> (<= 0 1000000) (in_range2 j4))) (<= i3 j4)) (and (and (= temp___1971 result2) (= temp___1972 (- j4 i3))) (and (and (and (and (and (and (<= (to_rep a__first) i3) (<= i3 (to_rep a__last))) (= o2 i3)) (= o3 (select a2 o2))) (= result3 (ite (not (= o3 true)) true false))) (ite (= result3 true) (and (and (and (= o4 (+ i3 1)) (in_range2 (+ i3 1))) (and (= i3 result4) (= i4 o4))) (and (= j5 j4) (= o9 a2))) (and (and (and (and (and (<= (to_rep a__first) j4) (<= j4 (to_rep a__last))) (= o5 j4)) (= result5 (select a2 o5))) (ite (= result5 true) (and (and (and (= o6 (- j4 1)) (in_range2 (- j4 1))) (and (= j4 result6) (= j5 o6))) (and (= i5 i3) (= o9 a2))) (and (and (and (and (= (= (select o9 i3) true) (= (select a2 j4) true)) (= (= (select o9 j4) true) (= (select a2 i3) true))) (forall ((k1 Int)) (=> (and (<= (to_rep a__first) k1) (<= k1 (to_rep a__last))) (=> (and (not (= k1 i3)) (not (= k1 j4))) (= (= (select o9 k1) true) (= (select a2 k1) true)))))) (and (and (and (= o7 (+ i3 1)) (in_range2 (+ i3 1))) (and (= i3 result7) (= i5 o7))) (and (and (= o8 (- j4 1)) (in_range2 (- j4 1))) (and (= j4 result8) (= j6 o8))))) (= j5 j6)))) (= i4 i5)))) (not (<= i4 j5)))))))))) (and (and (= j5 j7) (and (= i4 i6) (= o9 a3))) (and (= j8 j5) (and (= i7 i4) (= a4 o9))))) (and (and (= j15 (mk_int__ref j7)) (and (= i14 (mk_int__ref i6)) (= a11 (mk_map__ref a3)))) (and (= j10 j8) (and (= i9 i7) (= a6 a4))))) (and (and (= j3 j9) (and (= i2 i8) (= a11 a12))) (and (= j10 j3) (and (= i9 i2) (= a6 a1)))))))))))
(assert (= j13 j11))
(assert (= i12 i10))
(assert (= a9 a7))
(assert (= j14 j12))
(assert (= i13 i11))
(assert (= a10 a8))
(assert (not (< (to_rep a__last) (to_rep a__first))))
(assert (<= (to_rep a__first) k))
(assert (<= k (to_rep a__last)))
(assert (<= (to_rep a__first) j1))
(assert (<= j1 k))
(assert (not (<= (to_rep a__first) j1)))
(check-sat)
(exit)
