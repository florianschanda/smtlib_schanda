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
(declare-sort discriminant_type 0)
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (discriminant_type discriminant_type) Bool)
(declare-const dummy1 discriminant_type)
(declare-datatypes () ((discriminant_type__ref (mk_discriminant_type__ref (discriminant_type__content discriminant_type)))))
(define-fun discriminant_type__ref___projection ((a discriminant_type__ref)) discriminant_type (discriminant_type__content a))
(declare-fun to_rep (discriminant_type) Int)
(declare-fun of_rep (Int) discriminant_type)
(assert (forall ((x discriminant_type)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x discriminant_type)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__main__variant_type__discr discriminant_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) discriminant_type (rec__main__variant_type__discr a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__main__variant_type__common integer) (rec__main__variant_type__b_only integer)))))
(define-fun us_split_fields_Common__projection ((a us_split_fields)) integer (rec__main__variant_type__common a))
(define-fun us_split_fields_B_Only__projection ((a us_split_fields)) integer (rec__main__variant_type__b_only a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields) (attr__constrained Bool)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___3__projection ((a us_rep)) Bool (attr__constrained a))
(define-fun main__variant_type__b_only__pred ((a us_rep)) Bool (= (to_rep (rec__main__variant_type__discr (us_split_discrs1 a))) 1))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__main__variant_type__discr (us_split_discrs1 a))) (to_rep (rec__main__variant_type__discr (us_split_discrs1 b)))) (and (= (to_rep1 (rec__main__variant_type__common (us_split_fields1 a))) (to_rep1 (rec__main__variant_type__common (us_split_fields1 b)))) (=> (main__variant_type__b_only__pred a) (= (to_rep1 (rec__main__variant_type__b_only (us_split_fields1 a))) (to_rep1 (rec__main__variant_type__b_only (us_split_fields1 b))))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const main__variant_type__discr__first__bit Int)
(declare-const main__variant_type__discr__last__bit Int)
(declare-const main__variant_type__discr__position Int)
(assert (<= 0 main__variant_type__discr__first__bit))
(assert (< main__variant_type__discr__first__bit main__variant_type__discr__last__bit))
(assert (<= 0 main__variant_type__discr__position))
(declare-const main__variant_type__common__first__bit Int)
(declare-const main__variant_type__common__last__bit Int)
(declare-const main__variant_type__common__position Int)
(assert (<= 0 main__variant_type__common__first__bit))
(assert (< main__variant_type__common__first__bit main__variant_type__common__last__bit))
(assert (<= 0 main__variant_type__common__position))
(declare-const main__variant_type__b_only__first__bit Int)
(declare-const main__variant_type__b_only__last__bit Int)
(declare-const main__variant_type__b_only__position Int)
(assert (<= 0 main__variant_type__b_only__first__bit))
(assert (< main__variant_type__b_only__first__bit main__variant_type__b_only__last__bit))
(assert (<= 0 main__variant_type__b_only__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((variant_type__ref (mk_variant_type__ref (variant_type__content us_rep)))))
(define-fun variant_type__ref___projection ((a variant_type__ref)) us_rep (variant_type__content a))
(define-fun default_initial_assumption ((temp___expr_209 us_rep) (temp___skip_top_level_210 Bool)) Bool (and (= (attr__constrained temp___expr_209) false) (= (to_rep (rec__main__variant_type__discr (us_split_discrs1 temp___expr_209))) 0)))
(declare-const u0__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun in_range2 ((rec__main__variant_type__discr1 Int) (a us_rep)) Bool (= rec__main__variant_type__discr1 (to_rep (rec__main__variant_type__discr (us_split_discrs1 a)))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const main__variant_type__discr__first__bit1 Int)
(declare-const main__variant_type__discr__last__bit1 Int)
(declare-const main__variant_type__discr__position1 Int)
(assert (<= 0 main__variant_type__discr__first__bit1))
(assert (< main__variant_type__discr__first__bit1 main__variant_type__discr__last__bit1))
(assert (<= 0 main__variant_type__discr__position1))
(declare-const main__variant_type__b_only__first__bit1 Int)
(declare-const main__variant_type__b_only__last__bit1 Int)
(declare-const main__variant_type__b_only__position1 Int)
(assert (<= 0 main__variant_type__b_only__first__bit1))
(assert (< main__variant_type__b_only__first__bit1 main__variant_type__b_only__last__bit1))
(assert (<= 0 main__variant_type__b_only__position1))
(declare-const main__variant_type__common__first__bit1 Int)
(declare-const main__variant_type__common__last__bit1 Int)
(declare-const main__variant_type__common__position1 Int)
(assert (<= 0 main__variant_type__common__first__bit1))
(assert (< main__variant_type__common__first__bit1 main__variant_type__common__last__bit1))
(assert (<= 0 main__variant_type__common__position1))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((tu1S__ref (mk_tu1S__ref (tu1S__content us_rep)))))
(define-fun tu1S__ref___projection ((a tu1S__ref)) us_rep (tu1S__content a))
(define-fun dynamic_invariant ((temp___expr_218 us_rep) (temp___is_init_214 Bool) (temp___skip_constant_215 Bool) (temp___do_toplevel_216 Bool) (temp___do_typ_inv_217 Bool)) Bool (and (=> (not (= temp___skip_constant_215 true)) (in_range2 0 temp___expr_218)) (= (attr__constrained temp___expr_218) true)))
(define-fun default_initial_assumption1 ((temp___expr_220 us_rep) (temp___skip_top_level_221 Bool)) Bool (and (= (attr__constrained temp___expr_220) true) (= (to_rep (rec__main__variant_type__discr (us_split_discrs1 temp___expr_220))) 0)))
(define-fun in_range3 ((rec__main__variant_type__discr1 Int) (a us_rep)) Bool (= rec__main__variant_type__discr1 (to_rep (rec__main__variant_type__discr (us_split_discrs1 a)))))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const main__variant_type__discr__first__bit2 Int)
(declare-const main__variant_type__discr__last__bit2 Int)
(declare-const main__variant_type__discr__position2 Int)
(assert (<= 0 main__variant_type__discr__first__bit2))
(assert (< main__variant_type__discr__first__bit2 main__variant_type__discr__last__bit2))
(assert (<= 0 main__variant_type__discr__position2))
(declare-const main__variant_type__b_only__first__bit2 Int)
(declare-const main__variant_type__b_only__last__bit2 Int)
(declare-const main__variant_type__b_only__position2 Int)
(assert (<= 0 main__variant_type__b_only__first__bit2))
(assert (< main__variant_type__b_only__first__bit2 main__variant_type__b_only__last__bit2))
(assert (<= 0 main__variant_type__b_only__position2))
(declare-const main__variant_type__common__first__bit2 Int)
(declare-const main__variant_type__common__last__bit2 Int)
(declare-const main__variant_type__common__position2 Int)
(assert (<= 0 main__variant_type__common__first__bit2))
(assert (< main__variant_type__common__first__bit2 main__variant_type__common__last__bit2))
(assert (<= 0 main__variant_type__common__position2))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content us_rep)))))
(define-fun t1b__ref___projection ((a t1b__ref)) us_rep (t1b__content a))
(declare-const u1__split_discrs us_split_discrs)
(declare-const u1__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun in_range4 ((rec__main__variant_type__discr1 Int) (a us_rep)) Bool (= rec__main__variant_type__discr1 (to_rep (rec__main__variant_type__discr (us_split_discrs1 a)))))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))
(declare-const main__variant_type__discr__first__bit3 Int)
(declare-const main__variant_type__discr__last__bit3 Int)
(declare-const main__variant_type__discr__position3 Int)
(assert (<= 0 main__variant_type__discr__first__bit3))
(assert (< main__variant_type__discr__first__bit3 main__variant_type__discr__last__bit3))
(assert (<= 0 main__variant_type__discr__position3))
(declare-const main__variant_type__common__first__bit3 Int)
(declare-const main__variant_type__common__last__bit3 Int)
(declare-const main__variant_type__common__position3 Int)
(assert (<= 0 main__variant_type__common__first__bit3))
(assert (< main__variant_type__common__first__bit3 main__variant_type__common__last__bit3))
(assert (<= 0 main__variant_type__common__position3))
(declare-const main__variant_type__b_only__first__bit3 Int)
(declare-const main__variant_type__b_only__last__bit3 Int)
(declare-const main__variant_type__b_only__position3 Int)
(assert (<= 0 main__variant_type__b_only__first__bit3))
(assert (< main__variant_type__b_only__first__bit3 main__variant_type__b_only__last__bit3))
(assert (<= 0 main__variant_type__b_only__position3))
(declare-fun user_eq5 (us_rep us_rep) Bool)
(declare-const dummy5 us_rep)
(declare-datatypes () ((tu2S__ref (mk_tu2S__ref (tu2S__content us_rep)))))
(define-fun tu2S__ref___projection ((a tu2S__ref)) us_rep (tu2S__content a))
(define-fun dynamic_invariant1 ((temp___expr_229 us_rep) (temp___is_init_225 Bool) (temp___skip_constant_226 Bool) (temp___do_toplevel_227 Bool) (temp___do_typ_inv_228 Bool)) Bool (and (=> (not (= temp___skip_constant_226 true)) (in_range4 1 temp___expr_229)) (= (attr__constrained temp___expr_229) true)))
(define-fun default_initial_assumption2 ((temp___expr_231 us_rep) (temp___skip_top_level_232 Bool)) Bool (and (= (attr__constrained temp___expr_231) true) (= (to_rep (rec__main__variant_type__discr (us_split_discrs1 temp___expr_231))) 1)))
(define-fun in_range5 ((rec__main__variant_type__discr1 Int) (a us_rep)) Bool (= rec__main__variant_type__discr1 (to_rep (rec__main__variant_type__discr (us_split_discrs1 a)))))
(declare-const value__size4 Int)
(declare-fun object__size4 (us_rep) Int)
(declare-const value__alignment4 Int)
(declare-fun object__alignment4 (us_rep) Int)
(assert (<= 0 value__size4))
(assert (forall ((a us_rep)) (<= 0 (object__size4 a))))
(assert (<= 0 value__alignment4))
(assert (forall ((a us_rep)) (<= 0 (object__alignment4 a))))
(declare-const main__variant_type__discr__first__bit4 Int)
(declare-const main__variant_type__discr__last__bit4 Int)
(declare-const main__variant_type__discr__position4 Int)
(assert (<= 0 main__variant_type__discr__first__bit4))
(assert (< main__variant_type__discr__first__bit4 main__variant_type__discr__last__bit4))
(assert (<= 0 main__variant_type__discr__position4))
(declare-const main__variant_type__common__first__bit4 Int)
(declare-const main__variant_type__common__last__bit4 Int)
(declare-const main__variant_type__common__position4 Int)
(assert (<= 0 main__variant_type__common__first__bit4))
(assert (< main__variant_type__common__first__bit4 main__variant_type__common__last__bit4))
(assert (<= 0 main__variant_type__common__position4))
(declare-const main__variant_type__b_only__first__bit4 Int)
(declare-const main__variant_type__b_only__last__bit4 Int)
(declare-const main__variant_type__b_only__position4 Int)
(assert (<= 0 main__variant_type__b_only__first__bit4))
(assert (< main__variant_type__b_only__first__bit4 main__variant_type__b_only__last__bit4))
(assert (<= 0 main__variant_type__b_only__position4))
(declare-fun user_eq6 (us_rep us_rep) Bool)
(declare-const dummy6 us_rep)
(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content us_rep)))))
(define-fun t2b__ref___projection ((a t2b__ref)) us_rep (t2b__content a))
(declare-const u2__split_discrs us_split_discrs)
(declare-const u2__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant2 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(define-fun dynamic_invariant3 ((temp___expr_200 Int) (temp___is_init_196 Bool) (temp___skip_constant_197 Bool) (temp___do_toplevel_198 Bool) (temp___do_typ_inv_199 Bool)) Bool (=> (or (= temp___is_init_196 true) (<= 0 1)) (in_range1 temp___expr_200)))
(declare-const rliteral integer)
(assert (= (integerqtint rliteral) 0))
(declare-const u0__split_discrs discriminant_type)
(declare-const u1__split_fields integer)
(declare-const u1__split_fields1 integer)
(declare-const us Int)
(declare-const o discriminant_type)
(declare-const o1 discriminant_type)
(declare-const o2 discriminant_type)
(declare-const o3 integer)
(declare-const o4 integer)
(declare-const o5 Bool)
(declare-const o6 discriminant_type)
(declare-const o7 integer)
(declare-const o8 integer)
(declare-const o9 Bool)
(declare-const o10 discriminant_type)
(declare-const o11 integer)
(declare-const o12 integer)
(declare-const o13 Bool)
(declare-const main__u1__assume discriminant_type)
(declare-const main__u1__assume1 integer)
(declare-const main__u1__assume2 integer)
(declare-const main__u1__assume3 Bool)
(declare-const us1 Int)
(declare-const o14 discriminant_type)
(declare-const o15 us_split_discrs)
(declare-const o16 us_rep)
(declare-const o17 us_rep)
(declare-const result us_split_fields__ref)
(declare-const u1__split_fields2 us_split_fields)
(define-fun o18 () us_rep (mk___rep (mk___split_discrs o10) (mk___split_fields o11 o12) o13))
(define-fun o19 () us_rep (mk___rep (mk___split_discrs o6) (mk___split_fields o7 o8) o9))
(assert (and (= u0__attr__constrained false) (= (to_rep u0__split_discrs) 0)))
(assert (and (= us 0) (in_range1 0)))
(assert (= (to_rep o) 0))
(assert (= o o1))
(assert (= o2 o1))
(assert (= rliteral o3))
(assert (= dummy o4))
(assert (= true o5))
(assert (= o19 (mk___rep (mk___split_discrs o2) (mk___split_fields o3 o4) o5)))
(assert (= o18 o19))
(assert (= (mk___rep (mk___split_discrs main__u1__assume) (mk___split_fields main__u1__assume1 main__u1__assume2) main__u1__assume3) o18))
(assert (= result (mk___split_fields__ref (mk___split_fields u1__split_fields u1__split_fields1))))
(assert (= u1__split_fields2 (mk___split_fields main__u1__assume1 main__u1__assume2)))
(assert (= u1__split_discrs (mk___split_discrs main__u1__assume)))
(assert (= u1__attr__constrained true))
(assert (and (= 0 (to_rep (rec__main__variant_type__discr u1__split_discrs))) (= u1__attr__constrained true)))
(assert (and (= us1 1) (in_range1 1)))
(assert (= (to_rep o14) 1))
(assert (= o15 (mk___split_discrs o14)))
(assert (= o16 (mk___rep o15 (mk___split_fields rliteral rliteral) true)))
(assert (= o17 o16))
(assert (not (= 1 (to_rep (rec__main__variant_type__discr (us_split_discrs1 o17))))))
(check-sat)
(exit)
