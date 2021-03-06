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
(declare-sort unsigned_byte 0)
(declare-fun unsigned_byteqtint (unsigned_byte) Int)
(assert (forall ((i unsigned_byte)) (and (<= 0 (unsigned_byteqtint i)) (<= (unsigned_byteqtint i) 255))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (unsigned_byte unsigned_byte) Bool)
(declare-const dummy unsigned_byte)
(declare-datatypes () ((unsigned_byte__ref (mk_unsigned_byte__ref (unsigned_byte__content unsigned_byte)))))
(define-fun unsigned_byte__ref___projection ((a unsigned_byte__ref)) unsigned_byte (unsigned_byte__content a))
(define-fun to_rep ((x unsigned_byte)) Int (unsigned_byteqtint x))
(declare-fun of_rep (Int) unsigned_byte)
(assert (forall ((x unsigned_byte)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x unsigned_byte)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int unsigned_byte))))))
(declare-fun slide ((Array Int unsigned_byte) Int Int) (Array Int unsigned_byte))
(assert (forall ((a (Array Int unsigned_byte))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int unsigned_byte))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int unsigned_byte)) (a__first Int) (a__last Int) (b (Array Int unsigned_byte)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_166 Int)) (=> (and (<= a__first temp___idx_166) (<= temp___idx_166 a__last)) (= (to_rep (select a temp___idx_166)) (to_rep (select b (+ (- b__first a__first) temp___idx_166))))))) true false))
(assert (forall ((a (Array Int unsigned_byte)) (b (Array Int unsigned_byte))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_166 Int)) (=> (and (<= a__first temp___idx_166) (<= temp___idx_166 a__last)) (= (to_rep (select a temp___idx_166)) (to_rep (select b (+ (- b__first a__first) temp___idx_166)))))))))))
(declare-const dummy1 (Array Int unsigned_byte))
(declare-const value__size Int)
(declare-fun object__size ((Array Int unsigned_byte)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int unsigned_byte)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int unsigned_byte)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int unsigned_byte))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int unsigned_byte))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int unsigned_byte))) (<= 0 (object__alignment a))))
(declare-fun user_eq1 ((Array Int unsigned_byte) (Array Int unsigned_byte)) Bool)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int unsigned_byte)))))))
(declare-fun slide1 ((Array Int (Array Int unsigned_byte)) Int Int) (Array Int (Array Int unsigned_byte)))
(assert (forall ((a (Array Int (Array Int unsigned_byte)))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int (Array Int unsigned_byte)))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int (Array Int unsigned_byte))) (a__first Int) (a__last Int) (b (Array Int (Array Int unsigned_byte))) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_167 Int)) (=> (and (<= a__first temp___idx_167) (<= temp___idx_167 a__last)) (= (bool_eq (select a temp___idx_167) 1 1000 (select b (+ (- b__first a__first) temp___idx_167)) 1 1000) true)))) true false))
(assert (forall ((a (Array Int (Array Int unsigned_byte))) (b (Array Int (Array Int unsigned_byte)))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_167 Int)) (=> (and (<= a__first temp___idx_167) (<= temp___idx_167 a__last)) (= (bool_eq (select a temp___idx_167) 1 1000 (select b (+ (- b__first a__first) temp___idx_167)) 1 1000) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun temp_____aggregate_def_590 ((Array Int unsigned_byte)) (Array Int (Array Int unsigned_byte)))
(declare-fun temp_____aggregate_def_594 (Int) (Array Int unsigned_byte))
(define-fun dynamic_invariant ((temp___expr_219 Int) (temp___is_init_215 Bool) (temp___skip_constant_216 Bool) (temp___do_toplevel_217 Bool) (temp___do_typ_inv_218 Bool)) Bool (=> (or (= temp___is_init_215 true) (<= 0 255)) (in_range temp___expr_219)))
(assert (forall ((temp___592 (Array Int unsigned_byte))) (forall ((temp___593 Int)) (= (select (temp_____aggregate_def_590 temp___592) temp___593) temp___592))))
(declare-const rliteral unsigned_byte)
(assert (= (unsigned_byteqtint rliteral) 12))
(assert (forall ((temp___596 Int)) (=> (dynamic_invariant temp___596 true true true true) (forall ((temp___597 Int)) (= (select (temp_____aggregate_def_594 temp___596) temp___597) rliteral)))))
(declare-const x (Array Int (Array Int unsigned_byte)))
(declare-const result (Array Int (Array Int unsigned_byte)))
(declare-const x1 (Array Int (Array Int unsigned_byte)))
(assert (= result x))
(assert (= x1 (temp_____aggregate_def_590 (temp_____aggregate_def_594 12))))
(assert (not (= (to_rep (select (select x1 3) 4)) 12)))
(check-sat)
(exit)
