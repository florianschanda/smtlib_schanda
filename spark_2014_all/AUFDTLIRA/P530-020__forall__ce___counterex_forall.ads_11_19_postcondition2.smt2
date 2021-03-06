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
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int Bool))))))
(declare-fun slide ((Array Int Bool) Int Int) (Array Int Bool))
(assert (forall ((a (Array Int Bool))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int Bool))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int Bool)) (a__first Int) (a__last Int) (b (Array Int Bool)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154)))))) true false))
(assert (forall ((a (Array Int Bool)) (b (Array Int Bool))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))))))))))
(declare-const c Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort t1b 0)
(declare-fun t1bqtint (t1b) Int)
(assert (forall ((i t1b)) (and (<= 1 (t1bqtint i)) (<= (t1bqtint i) 100))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (t1b t1b) Bool)
(declare-const dummy1 t1b)
(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const r (Array Int Bool))
(declare-const x Int)
(declare-const counterex_forall__single_char_set_broken__result (Array Int Bool))
(declare-const temp___183 Int)
(declare-const temp___181 (Array Int Bool))
(declare-const r1 (Array Int Bool))
(declare-const result Int)
(declare-const x1 Int)
(declare-const result1 (Array Int Bool))
(declare-const r2 (Array Int Bool))
(declare-const r3 (Array Int Bool))
(declare-const x2 Int)
(declare-const r4 (Array Int Bool))
(declare-const x3 Int)
(declare-const r5 (Array Int Bool))
(declare-const x4 Int)
(declare-const r6 (Array Int Bool))
(declare-const x5 Int)
(declare-const r7 (Array Int Bool))
(declare-const x6 Int)
(declare-const result2 (Array Int Bool))
(declare-const counterex_forall__single_char_set_broken__result1 (Array Int Bool))
(declare-const counterex_forall__single_char_set_broken__result2 (Array Int Bool))
(declare-const counterex_forall__single_char_set_broken__result3 (Array Int Bool))
(declare-const r8 (Array Int Bool))
(declare-const x7 Int)
(declare-const counterex_forall__single_char_set_broken__result4 (Array Int Bool))
(declare-const r9 (Array Int Bool))
(declare-const x8 Int)
(declare-const counterex_forall__single_char_set_broken__result5 (Array Int Bool))
(define-fun r10 () map__ref (mk_map__ref r6))
(define-fun r11 () map__ref (mk_map__ref r))
(declare-const result3 (Array Int Bool))
(assert (in_range1 c))
(assert (= (mk_int__ref result) (mk_int__ref x)))
(assert (= x1 1))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= temp___183 x1)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= temp___181 r)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= (mk_map__ref result1) r11)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= r2 (store r x1 (ite (= x1 c) true false)))))
(assert (=> (and (<= 1 x1) (<= x1 100)) (forall ((i Int)) (=> (and (<= 1 i) (<= i x2)) (= (= (select r3 i) true) (= i (+ c 1)))))))
(assert (=> (and (<= 1 x1) (<= x1 100)) (and (and (forall ((temp___182 Int)) (=> (and (<= (- 2147483648) temp___182) (<= temp___182 2147483647)) (=> (or (< 100 temp___182) (or (< temp___182 1) (< x2 temp___182))) (= (select r3 temp___182) (select temp___181 temp___182))))) (=> (<= 1 100) (in_range2 x2))) (and (<= 1 x2) (<= x2 100)))))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= x2 100)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= x2 x3)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= r3 r4)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= x4 x2)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= r5 r3)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= (mk_int__ref x5) (mk_int__ref x3))))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= r10 (mk_map__ref r4))))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= x6 x4)))
(assert (=> (and (<= 1 x1) (<= x1 100)) (= r7 r5)))
(assert (=> (not (and (<= 1 x1) (<= x1 100))) (= x1 x5)))
(assert (=> (not (and (<= 1 x1) (<= x1 100))) (= r10 r11)))
(assert (=> (not (and (<= 1 x1) (<= x1 100))) (= x6 x1)))
(assert (=> (not (and (<= 1 x1) (<= x1 100))) (= r7 r1)))
(assert (= counterex_forall__single_char_set_broken__result1 counterex_forall__single_char_set_broken__result2))
(assert (= counterex_forall__single_char_set_broken__result3 counterex_forall__single_char_set_broken__result1))
(assert (= result2 counterex_forall__single_char_set_broken__result))
(assert (= counterex_forall__single_char_set_broken__result1 r6))
(assert (= (mk_map__ref counterex_forall__single_char_set_broken__result4) (mk_map__ref counterex_forall__single_char_set_broken__result2)))
(assert (= x7 x5))
(assert (= r8 r6))
(assert (= counterex_forall__single_char_set_broken__result5 counterex_forall__single_char_set_broken__result3))
(assert (= x8 x6))
(assert (= r9 r7))
(assert (= result3 counterex_forall__single_char_set_broken__result4))
(declare-const i Int)
(assert (<= (- 2147483648) i))
(assert (<= i 2147483647))
(assert (= (select counterex_forall__single_char_set_broken__result4 i) true))
(assert (not (< c i)))
(check-sat)
(exit)
