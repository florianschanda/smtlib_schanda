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
(define-fun dynamic_invariant ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 1 8)) (in_range1 temp___expr_159)))
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
(declare-const b (Array Int index))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const k Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const i Int)
(declare-const j Int)
(declare-const o Int)
(declare-const o1 index)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 index)
(declare-const o5 Int)
(declare-const o6 index)
(declare-const o7 Int)
(declare-const o8 Int)
(declare-const o9 Int)
(declare-const o10 Bool)
(declare-const o11 Int)
(declare-const o12 index)
(declare-const o13 Int)
(declare-const o14 index)
(declare-const o15 Int)
(declare-const o16 Int)
(declare-const o17 Bool)
(declare-const result Bool)
(declare-const result1 Bool)
(assert (in_range1 k))
(assert (<= 1 i))
(assert (<= i k))
(assert (<= 1 j))
(assert (<= j (- i 1)))
(assert (and (<= 1 j) (<= j 8)))
(assert (= o13 j))
(assert (= o14 (select b o13)))
(assert (= o15 (to_rep o14)))
(assert (and (<= 1 i) (<= i 8)))
(assert (= o11 i))
(assert (= o12 (select b o11)))
(assert (= o16 (to_rep o12)))
(assert (= o17 (ite (= o16 o15) true false)))
(assert (= result1 (ite (not (= o17 true)) true false)))
(assert (=> (= result1 true) (and (<= 1 j) (<= j 8))))
(assert (=> (= result1 true) (= o5 j)))
(assert (=> (= result1 true) (= o6 (select b o5))))
(assert (=> (= result1 true) (= o7 (to_rep o6))))
(assert (=> (= result1 true) (and (<= 1 i) (<= i 8))))
(assert (=> (= result1 true) (= o3 i)))
(assert (=> (= result1 true) (= o4 (select b o3))))
(assert (=> (= result1 true) (= o8 (to_rep o4))))
(assert (=> (= result1 true) (= o9 (- o8 o7))))
(assert (=> (= result1 true) (= o10 (ite (= (- i j) o9) true false))))
(assert (=> (= result1 true) (= result (ite (not (= o10 true)) true false))))
(assert (=> (not (= result1 true)) (= result false)))
(assert (= result true))
(assert (and (<= 1 i) (<= i 8)))
(assert (= o i))
(assert (= o1 (select b o)))
(assert (= o2 (to_rep o1)))
(assert (not (<= j 8)))
(check-sat)
(exit)
