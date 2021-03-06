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
(declare-sort it3 0)
(declare-fun it3qtint (it3) Int)
(assert (forall ((i it3)) (and (<= 1 (it3qtint i)) (<= (it3qtint i) 16))))
(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 16)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (it3 it3) Bool)
(declare-const dummy it3)
(declare-datatypes () ((it3__ref (mk_it3__ref (it3__content it3)))))
(define-fun it3__ref___projection ((a it3__ref)) it3 (it3__content a))
(define-fun dynamic_invariant ((temp___expr_190 Int) (temp___is_init_186 Bool) (temp___skip_constant_187 Bool) (temp___do_toplevel_188 Bool) (temp___do_typ_inv_189 Bool)) Bool (=> (or (= temp___is_init_186 true) (<= 1 16)) (in_range temp___expr_190)))
(declare-sort et1 0)
(declare-fun et1qtint (et1) Int)
(assert (forall ((i et1)) (and (<= 0 (et1qtint i)) (<= (et1qtint i) 99))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 99)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (et1 et1) Bool)
(declare-const dummy1 et1)
(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))
(define-fun dynamic_invariant1 ((temp___expr_204 Int) (temp___is_init_200 Bool) (temp___skip_constant_201 Bool) (temp___do_toplevel_202 Bool) (temp___do_typ_inv_203 Bool)) Bool (=> (or (= temp___is_init_200 true) (<= 0 99)) (in_range1 temp___expr_204)))
(define-fun to_rep ((x et1)) Int (et1qtint x))
(declare-fun of_rep (Int) et1)
(assert (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x et1)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort et2 0)
(declare-fun et2qtint (et2) Int)
(assert (forall ((i et2)) (and (<= 1 (et2qtint i)) (<= (et2qtint i) 25))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 25)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (et2 et2) Bool)
(declare-const dummy2 et2)
(declare-datatypes () ((et2__ref (mk_et2__ref (et2__content et2)))))
(define-fun et2__ref___projection ((a et2__ref)) et2 (et2__content a))
(define-fun to_rep1 ((x et2)) Int (et2qtint x))
(declare-fun of_rep1 (Int) et2)
(assert (forall ((x et2)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x et2)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__ar__rec1t__f1 et1) (rec__ar__rec1t__g1 et2)))))
(define-fun us_split_fields_F1__projection ((a us_split_fields)) et1 (rec__ar__rec1t__f1 a))
(define-fun us_split_fields_G1__projection ((a us_split_fields)) et2 (rec__ar__rec1t__g1 a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__ar__rec1t__f1 (us_split_fields1 a))) (to_rep (rec__ar__rec1t__f1 (us_split_fields1 b)))) (= (to_rep1 (rec__ar__rec1t__g1 (us_split_fields1 a))) (to_rep1 (rec__ar__rec1t__g1 (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const ar__rec1t__f1__first__bit Int)
(declare-const ar__rec1t__f1__last__bit Int)
(declare-const ar__rec1t__f1__position Int)
(assert (<= 0 ar__rec1t__f1__first__bit))
(assert (< ar__rec1t__f1__first__bit ar__rec1t__f1__last__bit))
(assert (<= 0 ar__rec1t__f1__position))
(declare-const ar__rec1t__g1__first__bit Int)
(declare-const ar__rec1t__g1__last__bit Int)
(declare-const ar__rec1t__g1__position Int)
(assert (<= 0 ar__rec1t__g1__first__bit))
(assert (< ar__rec1t__g1__first__bit ar__rec1t__g1__last__bit))
(assert (<= 0 ar__rec1t__g1__position))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((rec1t__ref (mk_rec1t__ref (rec1t__content us_rep)))))
(define-fun rec1t__ref___projection ((a rec1t__ref)) us_rep (rec1t__content a))
(declare-sort et3 0)
(declare-fun et3qtint (et3) Int)
(assert (forall ((i et3)) (and (<= 10 (et3qtint i)) (<= (et3qtint i) 90))))
(define-fun in_range3 ((x Int)) Bool (and (<= 10 x) (<= x 90)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (et3 et3) Bool)
(declare-const dummy4 et3)
(declare-datatypes () ((et3__ref (mk_et3__ref (et3__content et3)))))
(define-fun et3__ref___projection ((a et3__ref)) et3 (et3__content a))
(define-fun to_rep2 ((x et3)) Int (et3qtint x))
(declare-fun of_rep2 (Int) et3)
(assert (forall ((x et3)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x et3)) (! (in_range3 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-sort enum1ta 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 4)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (enum1ta enum1ta) Bool)
(declare-const dummy5 enum1ta)
(declare-datatypes () ((enum1ta__ref (mk_enum1ta__ref (enum1ta__content enum1ta)))))
(define-fun enum1ta__ref___projection ((a enum1ta__ref)) enum1ta (enum1ta__content a))
(declare-fun to_rep3 (enum1ta) Int)
(declare-fun of_rep3 (Int) enum1ta)
(assert (forall ((x enum1ta)) (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)))))
(assert (forall ((x enum1ta)) (! (in_range4 (to_rep3 x)) :pattern ((to_rep3 x)))))
(assert (forall ((x Int)) (! (=> (in_range4 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3 (of_rep3 x))))))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__ar__rec2t__f2 et3) (rec__ar__rec2t__g2 us_rep) (rec__ar__rec2t__h2 enum1ta)))))
(define-fun us_split_fields_F2__projection ((a us_split_fields2)) et3 (rec__ar__rec2t__f2 a))
(define-fun us_split_fields_G2__projection ((a us_split_fields2)) us_rep (rec__ar__rec2t__g2 a))
(define-fun us_split_fields_H2__projection ((a us_split_fields2)) enum1ta (rec__ar__rec2t__h2 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (and (and (= (to_rep2 (rec__ar__rec2t__f2 (us_split_fields3 a))) (to_rep2 (rec__ar__rec2t__f2 (us_split_fields3 b)))) (= (bool_eq (rec__ar__rec2t__g2 (us_split_fields3 a)) (rec__ar__rec2t__g2 (us_split_fields3 b))) true)) (= (to_rep3 (rec__ar__rec2t__h2 (us_split_fields3 a))) (to_rep3 (rec__ar__rec2t__h2 (us_split_fields3 b))))) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const ar__rec2t__f2__first__bit Int)
(declare-const ar__rec2t__f2__last__bit Int)
(declare-const ar__rec2t__f2__position Int)
(assert (<= 0 ar__rec2t__f2__first__bit))
(assert (< ar__rec2t__f2__first__bit ar__rec2t__f2__last__bit))
(assert (<= 0 ar__rec2t__f2__position))
(declare-const ar__rec2t__g2__first__bit Int)
(declare-const ar__rec2t__g2__last__bit Int)
(declare-const ar__rec2t__g2__position Int)
(assert (<= 0 ar__rec2t__g2__first__bit))
(assert (< ar__rec2t__g2__first__bit ar__rec2t__g2__last__bit))
(assert (<= 0 ar__rec2t__g2__position))
(declare-const ar__rec2t__h2__first__bit Int)
(declare-const ar__rec2t__h2__last__bit Int)
(declare-const ar__rec2t__h2__position Int)
(assert (<= 0 ar__rec2t__h2__first__bit))
(assert (< ar__rec2t__h2__first__bit ar__rec2t__h2__last__bit))
(assert (<= 0 ar__rec2t__h2__position))
(declare-fun user_eq6 (us_rep1 us_rep1) Bool)
(declare-const dummy6 us_rep1)
(declare-datatypes () ((rec2t__ref (mk_rec2t__ref (rec2t__content us_rep1)))))
(define-fun rec2t__ref___projection ((a rec2t__ref)) us_rep1 (rec2t__content a))
(declare-sort et4 0)
(declare-fun et4qtint (et4) Int)
(assert (forall ((i et4)) (and (<= 50 (et4qtint i)) (<= (et4qtint i) 59))))
(define-fun in_range5 ((x Int)) Bool (and (<= 50 x) (<= x 59)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq7 (et4 et4) Bool)
(declare-const dummy7 et4)
(declare-datatypes () ((et4__ref (mk_et4__ref (et4__content et4)))))
(define-fun et4__ref___projection ((a et4__ref)) et4 (et4__content a))
(define-fun to_rep4 ((x et4)) Int (et4qtint x))
(declare-fun of_rep4 (Int) et4)
(assert (forall ((x et4)) (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)))))
(assert (forall ((x et4)) (! (in_range5 (to_rep4 x)) :pattern ((to_rep4 x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep4 (of_rep4 x)) x)) :pattern ((to_rep4 (of_rep4 x))))))
(declare-datatypes () ((us_split_fields4 (mk___split_fields2 (rec__ar__rec3t__f3 us_rep1) (rec__ar__rec3t__g3 et4)))))
(define-fun us_split_fields_F3__projection ((a us_split_fields4)) us_rep1 (rec__ar__rec3t__f3 a))
(define-fun us_split_fields_G3__projection ((a us_split_fields4)) et4 (rec__ar__rec3t__g3 a))
(declare-datatypes () ((us_split_fields__ref2 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref___3__projection ((a us_split_fields__ref2)) us_split_fields4 (us_split_fields__content2 a))
(declare-datatypes () ((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep___3__projection ((a us_rep2)) us_split_fields4 (us_split_fields5 a))
(define-fun bool_eq2 ((a us_rep2) (b us_rep2)) Bool (ite (and (= (bool_eq1 (rec__ar__rec3t__f3 (us_split_fields5 a)) (rec__ar__rec3t__f3 (us_split_fields5 b))) true) (= (to_rep4 (rec__ar__rec3t__g3 (us_split_fields5 a))) (to_rep4 (rec__ar__rec3t__g3 (us_split_fields5 b))))) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep2) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep2) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))
(declare-const ar__rec3t__f3__first__bit Int)
(declare-const ar__rec3t__f3__last__bit Int)
(declare-const ar__rec3t__f3__position Int)
(assert (<= 0 ar__rec3t__f3__first__bit))
(assert (< ar__rec3t__f3__first__bit ar__rec3t__f3__last__bit))
(assert (<= 0 ar__rec3t__f3__position))
(declare-const ar__rec3t__g3__first__bit Int)
(declare-const ar__rec3t__g3__last__bit Int)
(declare-const ar__rec3t__g3__position Int)
(assert (<= 0 ar__rec3t__g3__first__bit))
(assert (< ar__rec3t__g3__first__bit ar__rec3t__g3__last__bit))
(assert (<= 0 ar__rec3t__g3__position))
(declare-fun user_eq8 (us_rep2 us_rep2) Bool)
(declare-const dummy8 us_rep2)
(declare-datatypes () ((rec3t__ref (mk_rec3t__ref (rec3t__content us_rep2)))))
(define-fun rec3t__ref___projection ((a rec3t__ref)) us_rep2 (rec3t__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int us_rep2))))))
(declare-fun slide ((Array Int us_rep2) Int Int) (Array Int us_rep2))
(assert (forall ((a (Array Int us_rep2))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int us_rep2))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq3 ((a (Array Int us_rep2)) (a__first Int) (a__last Int) (b (Array Int us_rep2)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_160 Int)) (=> (and (<= a__first temp___idx_160) (<= temp___idx_160 a__last)) (= (bool_eq2 (select a temp___idx_160) (select b (+ (- b__first a__first) temp___idx_160))) true)))) true false))
(assert (forall ((a (Array Int us_rep2)) (b (Array Int us_rep2))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq3 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_160 Int)) (=> (and (<= a__first temp___idx_160) (<= temp___idx_160 a__last)) (= (bool_eq2 (select a temp___idx_160) (select b (+ (- b__first a__first) temp___idx_160))) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const f Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-fun temp_____aggregate_def_2993 ((Array Int us_rep2) Int us_rep2) (Array Int us_rep2))
(define-fun dynamic_invariant2 ((temp___expr_211 Int) (temp___is_init_207 Bool) (temp___skip_constant_208 Bool) (temp___do_toplevel_209 Bool) (temp___do_typ_inv_210 Bool)) Bool (=> (or (= temp___is_init_207 true) (<= 1 25)) (in_range2 temp___expr_211)))
(define-fun dynamic_invariant3 ((temp___expr_218 Int) (temp___is_init_214 Bool) (temp___skip_constant_215 Bool) (temp___do_toplevel_216 Bool) (temp___do_typ_inv_217 Bool)) Bool (=> (or (= temp___is_init_214 true) (<= 10 90)) (in_range3 temp___expr_218)))
(define-fun dynamic_invariant4 ((temp___expr_225 Int) (temp___is_init_221 Bool) (temp___skip_constant_222 Bool) (temp___do_toplevel_223 Bool) (temp___do_typ_inv_224 Bool)) Bool (=> (or (= temp___is_init_221 true) (<= 50 59)) (in_range5 temp___expr_225)))
(define-fun dynamic_invariant5 ((temp___expr_246 Int) (temp___is_init_242 Bool) (temp___skip_constant_243 Bool) (temp___do_toplevel_244 Bool) (temp___do_typ_inv_245 Bool)) Bool (=> (or (= temp___is_init_242 true) (<= 1 4)) (in_range4 temp___expr_246)))
(assert (forall ((temp___2995 (Array Int us_rep2))) (forall ((temp___2996 Int)) (forall ((temp___2997 us_rep2)) (let ((temp___2994 (temp_____aggregate_def_2993 temp___2995 temp___2996 temp___2997))) (=> (dynamic_invariant temp___2996 true true true true) (forall ((temp___2998 Int)) (ite (= temp___2998 temp___2996) (= (select temp___2994 temp___2998) temp___2997) (= (select temp___2994 temp___2998) (select temp___2995 temp___2998))))))))))
(declare-const a (Array Int us_rep2))
(declare-const o et1)
(declare-const o1 et1)
(declare-const o2 et2)
(declare-const o3 et1)
(declare-const o4 et2)
(declare-const o5 et3)
(declare-const o6 et1)
(declare-const o7 et2)
(declare-const o8 enum1ta)
(declare-const o9 et3)
(declare-const o10 et1)
(declare-const o11 et2)
(declare-const o12 enum1ta)
(declare-const o13 et3)
(declare-const o14 et1)
(declare-const o15 et2)
(declare-const o16 enum1ta)
(declare-const o17 et4)
(declare-const o18 et3)
(declare-const o19 et1)
(declare-const o20 et2)
(declare-const o21 enum1ta)
(declare-const o22 et4)
(declare-const o23 (Array Int us_rep2))
(declare-const result map__ref)
(declare-const a1 (Array Int us_rep2))
(declare-const a2 map__ref)
(declare-const a3 (Array Int us_rep2))
(assert (in_range i))
(assert (in_range1 f))
(assert (= (to_rep o) f))
(assert (= o o1))
(assert (= (rec__ar__rec1t__g1 (us_split_fields1 (rec__ar__rec2t__g2 (us_split_fields3 (rec__ar__rec3t__f3 (us_split_fields5 (select a i))))))) o2))
(assert (= o3 o1))
(assert (= o4 o2))
(assert (= (rec__ar__rec2t__f2 (us_split_fields3 (rec__ar__rec3t__f3 (us_split_fields5 (select a i))))) o5))
(assert (= o6 o3))
(assert (= o7 o4))
(assert (= (rec__ar__rec2t__h2 (us_split_fields3 (rec__ar__rec3t__f3 (us_split_fields5 (select a i))))) o8))
(assert (= o9 o5))
(assert (= o10 o6))
(assert (= o11 o7))
(assert (= o12 o8))
(assert (= o13 o9))
(assert (= o14 o10))
(assert (= o15 o11))
(assert (= o16 o12))
(assert (= (rec__ar__rec3t__g3 (us_split_fields5 (select a i))) o17))
(assert (= o18 o13))
(assert (= o19 o14))
(assert (= o20 o15))
(assert (= o21 o16))
(assert (= o22 o17))
(assert (= o23 (store a i (mk___rep2 (mk___split_fields2 (mk___rep1 (mk___split_fields1 o18 (mk___rep (mk___split_fields o19 o20)) o21)) o22)))))
(assert (= result (mk_map__ref a)))
(assert (= a1 o23))
(assert (= a2 (mk_map__ref a1)))
(assert (= a3 a1))
(assert (not (= (bool_eq3 (map__content a2) 1 16 (temp_____aggregate_def_2993 a i (mk___rep2 (mk___split_fields2 (mk___rep1 (let ((usq_ (us_split_fields3 (rec__ar__rec3t__f3 (us_split_fields5 (select a i)))))) (mk___split_fields1 (rec__ar__rec2t__f2 usq_) (mk___rep (mk___split_fields (of_rep f) (rec__ar__rec1t__g1 (us_split_fields1 (rec__ar__rec2t__g2 (us_split_fields3 (rec__ar__rec3t__f3 (us_split_fields5 (select a i))))))))) (rec__ar__rec2t__h2 usq_)))) (rec__ar__rec3t__g3 (us_split_fields5 (select a i)))))) 1 16) true)))
(check-sat)
(exit)
