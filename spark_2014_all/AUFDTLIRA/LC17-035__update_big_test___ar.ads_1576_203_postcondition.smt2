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
(declare-sort it1 0)
(declare-fun it1qtint (it1) Int)
(assert (forall ((i it1)) (and (<= 1 (it1qtint i)) (<= (it1qtint i) 10))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (it1 it1) Bool)
(declare-const dummy it1)
(declare-datatypes () ((it1__ref (mk_it1__ref (it1__content it1)))))
(define-fun it1__ref___projection ((a it1__ref)) it1 (it1__content a))
(define-fun dynamic_invariant ((temp___expr_176 Int) (temp___is_init_172 Bool) (temp___skip_constant_173 Bool) (temp___do_toplevel_174 Bool) (temp___do_typ_inv_175 Bool)) Bool (=> (or (= temp___is_init_172 true) (<= 1 10)) (in_range1 temp___expr_176)))
(declare-sort it2 0)
(declare-fun it2qtint (it2) Int)
(assert (forall ((i it2)) (and (<= 5 (it2qtint i)) (<= (it2qtint i) 50))))
(define-fun in_range2 ((x Int)) Bool (and (<= 5 x) (<= x 50)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (it2 it2) Bool)
(declare-const dummy1 it2)
(declare-datatypes () ((it2__ref (mk_it2__ref (it2__content it2)))))
(define-fun it2__ref___projection ((a it2__ref)) it2 (it2__content a))
(define-fun dynamic_invariant1 ((temp___expr_183 Int) (temp___is_init_179 Bool) (temp___skip_constant_180 Bool) (temp___do_toplevel_181 Bool) (temp___do_typ_inv_182 Bool)) Bool (=> (or (= temp___is_init_179 true) (<= 5 50)) (in_range2 temp___expr_183)))
(declare-sort it3 0)
(declare-fun it3qtint (it3) Int)
(assert (forall ((i it3)) (and (<= 1 (it3qtint i)) (<= (it3qtint i) 16))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 16)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (it3 it3) Bool)
(declare-const dummy2 it3)
(declare-datatypes () ((it3__ref (mk_it3__ref (it3__content it3)))))
(define-fun it3__ref___projection ((a it3__ref)) it3 (it3__content a))
(define-fun dynamic_invariant2 ((temp___expr_190 Int) (temp___is_init_186 Bool) (temp___skip_constant_187 Bool) (temp___do_toplevel_188 Bool) (temp___do_typ_inv_189 Bool)) Bool (=> (or (= temp___is_init_186 true) (<= 1 16)) (in_range3 temp___expr_190)))
(declare-sort et1 0)
(declare-fun et1qtint (et1) Int)
(assert (forall ((i et1)) (and (<= 0 (et1qtint i)) (<= (et1qtint i) 99))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 99)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (et1 et1) Bool)
(declare-const dummy3 et1)
(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))
(define-fun dynamic_invariant3 ((temp___expr_204 Int) (temp___is_init_200 Bool) (temp___skip_constant_201 Bool) (temp___do_toplevel_202 Bool) (temp___do_typ_inv_203 Bool)) Bool (=> (or (= temp___is_init_200 true) (<= 0 99)) (in_range4 temp___expr_204)))
(define-fun to_rep ((x et1)) Int (et1qtint x))
(declare-fun of_rep (Int) et1)
(assert (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x et1)) (! (in_range4 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range4 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort enum1tb 0)
(define-fun in_range5 ((x Int)) Bool (and (<= 2 x) (<= x 6)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq4 (enum1tb enum1tb) Bool)
(declare-const dummy4 enum1tb)
(declare-datatypes () ((enum1tb__ref (mk_enum1tb__ref (enum1tb__content enum1tb)))))
(define-fun enum1tb__ref___projection ((a enum1tb__ref)) enum1tb (enum1tb__content a))
(declare-fun to_rep1 (enum1tb) Int)
(declare-fun of_rep1 (Int) enum1tb)
(assert (forall ((x enum1tb)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x enum1tb)) (! (in_range5 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int et1))))))
(declare-fun slide ((Array Int et1) Int Int) (Array Int et1))
(assert (forall ((a (Array Int et1))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int et1))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int et1)) (a__first Int) (a__last Int) (b (Array Int et1)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int et1)) (b (Array Int et1))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const dummy5 (Array Int et1))
(declare-const value__size Int)
(declare-fun object__size ((Array Int et1)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int et1)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int et1)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int et1))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int et1))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int et1))) (<= 0 (object__alignment a))))
(declare-fun user_eq5 ((Array Int et1) (Array Int et1)) Bool)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int et1)))))))
(declare-fun slide1 ((Array Int (Array Int et1)) Int Int) (Array Int (Array Int et1)))
(assert (forall ((a (Array Int (Array Int et1)))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int (Array Int et1)))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int (Array Int et1))) (a__first Int) (a__last Int) (b (Array Int (Array Int et1))) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) 1 10 (select b (+ (- b__first a__first) temp___idx_155)) 1 10) true)))) true false))
(assert (forall ((a (Array Int (Array Int et1))) (b (Array Int (Array Int et1)))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) 1 10 (select b (+ (- b__first a__first) temp___idx_155)) 1 10) true))))))))
(declare-const dummy6 (Array Int (Array Int et1)))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int (Array Int et1))) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int (Array Int et1))) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int (Array Int et1))) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int (Array Int et1)))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int (Array Int et1)))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int (Array Int et1)))) (<= 0 (object__alignment1 a))))
(declare-fun user_eq6 ((Array Int (Array Int et1)) (Array Int (Array Int et1))) Bool)
(declare-datatypes () ((map__ref2 (mk_map__ref2 (map__content2 (Array Int (Array Int (Array Int et1))))))))
(declare-fun slide2 ((Array Int (Array Int (Array Int et1))) Int Int) (Array Int (Array Int (Array Int et1))))
(assert (forall ((a (Array Int (Array Int (Array Int et1))))) (forall ((first Int)) (! (= (slide2 a first first) a) :pattern ((slide2 a first first))))))
(assert (forall ((a (Array Int (Array Int (Array Int et1))))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide2 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide2 a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int (Array Int (Array Int et1)))) (a__first Int) (a__last Int) (b (Array Int (Array Int (Array Int et1)))) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_156 Int)) (=> (and (<= a__first temp___idx_156) (<= temp___idx_156 a__last)) (= (bool_eq1 (select a temp___idx_156) 5 50 (select b (+ (- b__first a__first) temp___idx_156)) 5 50) true)))) true false))
(assert (forall ((a (Array Int (Array Int (Array Int et1)))) (b (Array Int (Array Int (Array Int et1))))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_156 Int)) (=> (and (<= a__first temp___idx_156) (<= temp___idx_156 a__last)) (= (bool_eq1 (select a temp___idx_156) 5 50 (select b (+ (- b__first a__first) temp___idx_156)) 5 50) true))))))))
(declare-const dummy7 (Array Int (Array Int (Array Int et1))))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int (Array Int (Array Int et1)))) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int (Array Int (Array Int et1)))) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int (Array Int (Array Int et1)))) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int (Array Int (Array Int et1))))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size2))
(assert (forall ((a (Array Int (Array Int (Array Int et1))))) (<= 0 (object__component__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int (Array Int (Array Int et1))))) (<= 0 (object__alignment2 a))))
(declare-fun user_eq7 ((Array Int (Array Int (Array Int et1))) (Array Int (Array Int (Array Int et1)))) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__ar__rofa3__s3 enum1tb) (rec__ar__rofa3__t3 (Array Int (Array Int (Array Int et1)))) (rec__ar__rofa3__u3 Bool)))))
(define-fun us_split_fields_S3__projection ((a us_split_fields)) enum1tb (rec__ar__rofa3__s3 a))
(define-fun us_split_fields_T3__projection ((a us_split_fields)) (Array Int (Array Int (Array Int et1))) (rec__ar__rofa3__t3 a))
(define-fun us_split_fields_U3__projection ((a us_split_fields)) Bool (rec__ar__rofa3__u3 a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___8__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___8__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq3 ((a us_rep) (b us_rep)) Bool (ite (and (and (= (to_rep1 (rec__ar__rofa3__s3 (us_split_fields1 a))) (to_rep1 (rec__ar__rofa3__s3 (us_split_fields1 b)))) (= (bool_eq2 (rec__ar__rofa3__t3 (us_split_fields1 a)) 1 16 (rec__ar__rofa3__t3 (us_split_fields1 b)) 1 16) true)) (= (rec__ar__rofa3__u3 (us_split_fields1 a)) (rec__ar__rofa3__u3 (us_split_fields1 b)))) true false))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))
(declare-const ar__rofa3__s3__first__bit Int)
(declare-const ar__rofa3__s3__last__bit Int)
(declare-const ar__rofa3__s3__position Int)
(assert (<= 0 ar__rofa3__s3__first__bit))
(assert (< ar__rofa3__s3__first__bit ar__rofa3__s3__last__bit))
(assert (<= 0 ar__rofa3__s3__position))
(declare-const ar__rofa3__t3__first__bit Int)
(declare-const ar__rofa3__t3__last__bit Int)
(declare-const ar__rofa3__t3__position Int)
(assert (<= 0 ar__rofa3__t3__first__bit))
(assert (< ar__rofa3__t3__first__bit ar__rofa3__t3__last__bit))
(assert (<= 0 ar__rofa3__t3__position))
(declare-const ar__rofa3__u3__first__bit Int)
(declare-const ar__rofa3__u3__last__bit Int)
(declare-const ar__rofa3__u3__position Int)
(assert (<= 0 ar__rofa3__u3__first__bit))
(assert (< ar__rofa3__u3__first__bit ar__rofa3__u3__last__bit))
(assert (<= 0 ar__rofa3__u3__position))
(declare-fun user_eq8 (us_rep us_rep) Bool)
(declare-const dummy8 us_rep)
(declare-datatypes () ((rofa3__ref (mk_rofa3__ref (rofa3__content us_rep)))))
(define-fun rofa3__ref___projection ((a rofa3__ref)) us_rep (rofa3__content a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const j Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const k Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const e Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(define-fun dynamic_invariant4 ((temp___expr_253 Int) (temp___is_init_249 Bool) (temp___skip_constant_250 Bool) (temp___do_toplevel_251 Bool) (temp___do_typ_inv_252 Bool)) Bool (=> (or (= temp___is_init_249 true) (<= 2 6)) (in_range5 temp___expr_253)))
(declare-const r__split_fields enum1tb)
(declare-const r__split_fields1 (Array Int (Array Int (Array Int et1))))
(declare-const r__split_fields2 Bool)
(declare-const o et1)
(declare-const o1 (Array Int et1))
(declare-const o2 (Array Int (Array Int et1)))
(declare-const o3 (Array Int (Array Int (Array Int et1))))
(declare-const o4 enum1tb)
(declare-const o5 (Array Int (Array Int (Array Int et1))))
(declare-const o6 Bool)
(declare-const temp___8445 enum1tb)
(declare-const temp___84451 (Array Int (Array Int (Array Int et1))))
(declare-const temp___84452 Bool)
(declare-const result enum1tb)
(declare-const result1 (Array Int (Array Int (Array Int et1))))
(declare-const result2 Bool)
(declare-const r__split_fields3 enum1tb)
(declare-const r__split_fields4 (Array Int (Array Int (Array Int et1))))
(declare-const r__split_fields5 Bool)
(declare-const r__split_fields6 enum1tb)
(declare-const r__split_fields7 (Array Int (Array Int (Array Int et1))))
(declare-const r__split_fields8 Bool)
(declare-const r__split_fields9 enum1tb)
(declare-const r__split_fields10 (Array Int (Array Int (Array Int et1))))
(declare-const r__split_fields11 Bool)
(assert (in_range3 i))
(assert (in_range2 j))
(assert (in_range1 k))
(assert (in_range4 e))
(assert (= (to_rep o) e))
(assert (= o1 (store (select (select r__split_fields1 i) j) k o)))
(assert (= o2 (store (select r__split_fields1 i) j o1)))
(assert (= o3 (store r__split_fields1 i o2)))
(assert (= r__split_fields o4))
(assert (= o3 o5))
(assert (= r__split_fields2 o6))
(assert (= temp___8445 o4))
(assert (= temp___84451 o5))
(assert (= temp___84452 o6))
(assert (= result r__split_fields))
(assert (= result1 r__split_fields1))
(assert (= result2 r__split_fields2))
(assert (= temp___8445 r__split_fields3))
(assert (= temp___84451 r__split_fields4))
(assert (= temp___84452 r__split_fields5))
(assert (= r__split_fields6 r__split_fields3))
(assert (= r__split_fields7 r__split_fields4))
(assert (= r__split_fields8 r__split_fields5))
(assert (= r__split_fields9 r__split_fields3))
(assert (= r__split_fields10 r__split_fields4))
(assert (= r__split_fields11 r__split_fields5))
(assert (not (= (to_rep (select (select (select r__split_fields7 i) j) k)) e)))
(check-sat)
(exit)
