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
(declare-sort unsigned_byte 0)
(declare-fun unsigned_byteqtint (unsigned_byte) Int)
(assert (forall ((i unsigned_byte)) (and (<= 0 (unsigned_byteqtint i)) (<= (unsigned_byteqtint i) 255))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (unsigned_byte unsigned_byte) Bool)
(declare-const dummy unsigned_byte)
(declare-datatypes () ((unsigned_byte__ref (mk_unsigned_byte__ref (unsigned_byte__content unsigned_byte)))))
(define-fun unsigned_byte__ref___projection ((a unsigned_byte__ref)) unsigned_byte (unsigned_byte__content a))
(define-fun to_rep ((x unsigned_byte)) Int (unsigned_byteqtint x))
(declare-fun of_rep (Int) unsigned_byte)
(assert (forall ((x unsigned_byte)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x unsigned_byte)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__records_prooffuncs__pair__a unsigned_byte) (rec__records_prooffuncs__pair__b unsigned_byte)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) unsigned_byte (rec__records_prooffuncs__pair__a a))
(define-fun us_split_fields_B__projection ((a us_split_fields)) unsigned_byte (rec__records_prooffuncs__pair__b a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b)))) (= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const records_prooffuncs__pair__a__first__bit Int)
(declare-const records_prooffuncs__pair__a__last__bit Int)
(declare-const records_prooffuncs__pair__a__position Int)
(assert (<= 0 records_prooffuncs__pair__a__first__bit))
(assert (< records_prooffuncs__pair__a__first__bit records_prooffuncs__pair__a__last__bit))
(assert (<= 0 records_prooffuncs__pair__a__position))
(declare-const records_prooffuncs__pair__b__first__bit Int)
(declare-const records_prooffuncs__pair__b__last__bit Int)
(declare-const records_prooffuncs__pair__b__position Int)
(assert (<= 0 records_prooffuncs__pair__b__first__bit))
(assert (< records_prooffuncs__pair__b__first__bit records_prooffuncs__pair__b__last__bit))
(assert (<= 0 records_prooffuncs__pair__b__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((pair__ref (mk_pair__ref (pair__content us_rep)))))
(define-fun pair__ref___projection ((a pair__ref)) us_rep (pair__content a))
(declare-fun add_pair_a (us_rep us_rep) us_rep)
(declare-fun add_pair_a__function_guard (us_rep us_rep us_rep) Bool)
(assert (forall ((a us_rep) (b us_rep)) (! (=> (and (in_range1 (+ (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (in_range1 (+ (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))) (= (bool_eq (add_pair_a a b) (mk___rep (mk___split_fields (of_rep (+ (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (of_rep (+ (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))))) true)) :pattern ((add_pair_a a b)))))
(declare-const a us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const b us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant ((temp___expr_207 Int) (temp___is_init_203 Bool) (temp___skip_constant_204 Bool) (temp___do_toplevel_205 Bool) (temp___do_typ_inv_206 Bool)) Bool (=> (or (= temp___is_init_203 true) (<= 0 255)) (in_range1 temp___expr_207)))
(declare-const rliteral unsigned_byte)
(assert (= (unsigned_byteqtint rliteral) 0))
(declare-const r__split_fields unsigned_byte)
(declare-const r__split_fields1 unsigned_byte)
(declare-const records__safe_add_pair_a__result unsigned_byte)
(declare-const records__safe_add_pair_a__result1 unsigned_byte)
(declare-const temp___305 unsigned_byte)
(declare-const temp___3051 unsigned_byte)
(declare-const result unsigned_byte)
(declare-const result1 unsigned_byte)
(declare-const r__split_fields2 unsigned_byte)
(declare-const r__split_fields3 unsigned_byte)
(declare-const result2 unsigned_byte)
(declare-const result3 unsigned_byte)
(declare-const r__split_fields4 unsigned_byte)
(declare-const r__split_fields5 unsigned_byte)
(declare-const result4 unsigned_byte)
(declare-const result5 unsigned_byte)
(declare-const records__safe_add_pair_a__result2 unsigned_byte)
(declare-const records__safe_add_pair_a__result3 unsigned_byte)
(declare-const records__safe_add_pair_a__result4 unsigned_byte)
(declare-const records__safe_add_pair_a__result5 unsigned_byte)
(declare-const records__safe_add_pair_a__result6 us_rep)
(declare-const r__split_fields6 us_split_fields__ref)
(declare-const records__safe_add_pair_a__result7 pair__ref)
(declare-const r__split_fields7 us_split_fields)
(declare-const records__safe_add_pair_a__result8 us_rep)
(define-fun r__split_fields8 () us_split_fields (mk___split_fields r__split_fields2 r__split_fields3))
(define-fun temp___3052 () us_rep (mk___rep (mk___split_fields temp___305 temp___3051)))
(declare-const result6 unsigned_byte)
(declare-const result7 unsigned_byte)
(assert (=> (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))) (and (= temp___3052 (add_pair_a a b)) (= (bool_eq temp___3052 (mk___rep (mk___split_fields (of_rep (+ (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (of_rep (+ (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))))) true))))
(assert (=> (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))) (= result r__split_fields)))
(assert (=> (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))) (= result1 r__split_fields1)))
(assert (=> (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))) (= temp___305 r__split_fields2)))
(assert (=> (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))) (= temp___3051 r__split_fields3)))
(assert (=> (not (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b))))))) (= result2 r__split_fields)))
(assert (=> (not (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b))))))) (= result3 r__split_fields1)))
(assert (=> (not (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b))))))) (= rliteral r__split_fields4)))
(assert (=> (not (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b))))))) (= rliteral r__split_fields5)))
(assert (=> (not (and (<= (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (<= (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (- 255 (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b))))))) (= r__split_fields8 (mk___split_fields r__split_fields4 r__split_fields5))))
(assert (= records__safe_add_pair_a__result4 records__safe_add_pair_a__result2))
(assert (= records__safe_add_pair_a__result5 records__safe_add_pair_a__result3))
(assert (= records__safe_add_pair_a__result6 (mk___rep (mk___split_fields records__safe_add_pair_a__result2 records__safe_add_pair_a__result3))))
(assert (= result4 records__safe_add_pair_a__result))
(assert (= result5 records__safe_add_pair_a__result1))
(assert (= records__safe_add_pair_a__result2 r__split_fields2))
(assert (= records__safe_add_pair_a__result3 r__split_fields3))
(assert (= records__safe_add_pair_a__result7 (mk_pair__ref (mk___rep (mk___split_fields records__safe_add_pair_a__result4 records__safe_add_pair_a__result5)))))
(assert (= r__split_fields6 (mk___split_fields__ref r__split_fields8)))
(assert (= records__safe_add_pair_a__result8 records__safe_add_pair_a__result6))
(assert (= r__split_fields7 r__split_fields8))
(assert (= (mk___rep (mk___split_fields result6 result7)) (pair__content records__safe_add_pair_a__result7)))
(assert (in_range1 (+ (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))))
(assert (in_range1 (+ (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b))))))
(assert (not (= (bool_eq (pair__content records__safe_add_pair_a__result7) (mk___rep (mk___split_fields (of_rep (+ (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__a (us_split_fields1 b))))) (of_rep (+ (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 a))) (to_rep (rec__records_prooffuncs__pair__b (us_split_fields1 b)))))))) true)))
(check-sat)
(exit)
