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
(declare-sort it1 0)
(declare-fun it1qtint (it1) Int)
(assert (forall ((i it1)) (and (<= 1 (it1qtint i)) (<= (it1qtint i) 10))))
(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (it1 it1) Bool)
(declare-const dummy it1)
(declare-datatypes () ((it1__ref (mk_it1__ref (it1__content it1)))))
(define-fun it1__ref___projection ((a it1__ref)) it1 (it1__content a))
(define-fun dynamic_invariant ((temp___expr_176 Int) (temp___is_init_172 Bool) (temp___skip_constant_173 Bool) (temp___do_toplevel_174 Bool) (temp___do_typ_inv_175 Bool)) Bool (=> (or (= temp___is_init_172 true) (<= 1 10)) (in_range temp___expr_176)))
(declare-sort it2 0)
(declare-fun it2qtint (it2) Int)
(assert (forall ((i it2)) (and (<= 5 (it2qtint i)) (<= (it2qtint i) 50))))
(define-fun in_range1 ((x Int)) Bool (and (<= 5 x) (<= x 50)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (it2 it2) Bool)
(declare-const dummy1 it2)
(declare-datatypes () ((it2__ref (mk_it2__ref (it2__content it2)))))
(define-fun it2__ref___projection ((a it2__ref)) it2 (it2__content a))
(define-fun dynamic_invariant1 ((temp___expr_183 Int) (temp___is_init_179 Bool) (temp___skip_constant_180 Bool) (temp___do_toplevel_181 Bool) (temp___do_typ_inv_182 Bool)) Bool (=> (or (= temp___is_init_179 true) (<= 5 50)) (in_range1 temp___expr_183)))
(declare-sort et1 0)
(declare-fun et1qtint (et1) Int)
(assert (forall ((i et1)) (and (<= 0 (et1qtint i)) (<= (et1qtint i) 99))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 99)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (et1 et1) Bool)
(declare-const dummy2 et1)
(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))
(define-fun dynamic_invariant2 ((temp___expr_204 Int) (temp___is_init_200 Bool) (temp___skip_constant_201 Bool) (temp___do_toplevel_202 Bool) (temp___do_typ_inv_203 Bool)) Bool (=> (or (= temp___is_init_200 true) (<= 0 99)) (in_range2 temp___expr_204)))
(define-fun to_rep ((x et1)) Int (et1qtint x))
(declare-fun of_rep (Int) et1)
(assert (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x et1)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int et1))))))
(declare-fun slide ((Array Int et1) Int Int) (Array Int et1))
(assert (forall ((a (Array Int et1))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int et1))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int et1)) (a__first Int) (a__last Int) (b (Array Int et1)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int et1)) (b (Array Int et1))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const dummy3 (Array Int et1))
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
(declare-fun user_eq3 ((Array Int et1) (Array Int et1)) Bool)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int et1)))))))
(declare-fun slide1 ((Array Int (Array Int et1)) Int Int) (Array Int (Array Int et1)))
(assert (forall ((a (Array Int (Array Int et1)))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int (Array Int et1)))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int (Array Int et1))) (a__first Int) (a__last Int) (b (Array Int (Array Int et1))) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) 1 10 (select b (+ (- b__first a__first) temp___idx_155)) 1 10) true)))) true false))
(assert (forall ((a (Array Int (Array Int et1))) (b (Array Int (Array Int et1)))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) 1 10 (select b (+ (- b__first a__first) temp___idx_155)) 1 10) true))))))))
(declare-const dummy4 (Array Int (Array Int et1)))
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
(declare-fun user_eq4 ((Array Int (Array Int et1)) (Array Int (Array Int et1))) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__ar__rofa4__s4 (Array Int et1)) (rec__ar__rofa4__t4 (Array Int (Array Int et1)))))))
(define-fun us_split_fields_S4__projection ((a us_split_fields)) (Array Int et1) (rec__ar__rofa4__s4 a))
(define-fun us_split_fields_T4__projection ((a us_split_fields)) (Array Int (Array Int et1)) (rec__ar__rofa4__t4 a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___9__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___9__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq2 ((a us_rep) (b us_rep)) Bool (ite (and (= (bool_eq (rec__ar__rofa4__s4 (us_split_fields1 a)) 1 10 (rec__ar__rofa4__s4 (us_split_fields1 b)) 1 10) true) (= (bool_eq1 (rec__ar__rofa4__t4 (us_split_fields1 a)) 5 50 (rec__ar__rofa4__t4 (us_split_fields1 b)) 5 50) true)) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const ar__rofa4__s4__first__bit Int)
(declare-const ar__rofa4__s4__last__bit Int)
(declare-const ar__rofa4__s4__position Int)
(assert (<= 0 ar__rofa4__s4__first__bit))
(assert (< ar__rofa4__s4__first__bit ar__rofa4__s4__last__bit))
(assert (<= 0 ar__rofa4__s4__position))
(declare-const ar__rofa4__t4__first__bit Int)
(declare-const ar__rofa4__t4__last__bit Int)
(declare-const ar__rofa4__t4__position Int)
(assert (<= 0 ar__rofa4__t4__first__bit))
(assert (< ar__rofa4__t4__first__bit ar__rofa4__t4__last__bit))
(assert (<= 0 ar__rofa4__t4__position))
(declare-fun user_eq5 (us_rep us_rep) Bool)
(declare-const dummy5 us_rep)
(declare-datatypes () ((rofa4__ref (mk_rofa4__ref (rofa4__content us_rep)))))
(define-fun rofa4__ref___projection ((a rofa4__ref)) us_rep (rofa4__content a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const j Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const e Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const f Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-fun temp_____aggregate_def_3576 ((Array Int (Array Int et1)) Int (Array Int et1)) (Array Int (Array Int et1)))
(declare-fun temp_____aggregate_def_3582 ((Array Int et1) Int Int) (Array Int et1))
(declare-fun temp_____aggregate_def_3591 ((Array Int et1) Int Int) (Array Int et1))
(assert (forall ((temp___3593 (Array Int et1))) (forall ((temp___3594 Int) (temp___3595 Int)) (let ((temp___3592 (temp_____aggregate_def_3591 temp___3593 temp___3594 temp___3595))) (=> (and (dynamic_invariant temp___3594 true true true true) (dynamic_invariant2 temp___3595 true true true true)) (forall ((temp___3596 Int)) (ite (= temp___3596 temp___3594) (= (to_rep (select temp___3592 temp___3596)) temp___3595) (= (select temp___3592 temp___3596) (select temp___3593 temp___3596)))))))))
(assert (forall ((temp___3578 (Array Int (Array Int et1)))) (forall ((temp___3579 Int)) (forall ((temp___3580 (Array Int et1))) (let ((temp___3577 (temp_____aggregate_def_3576 temp___3578 temp___3579 temp___3580))) (=> (dynamic_invariant1 temp___3579 true true true true) (forall ((temp___3581 Int)) (ite (= temp___3581 temp___3579) (= (select temp___3577 temp___3581) temp___3580) (= (select temp___3577 temp___3581) (select temp___3578 temp___3581))))))))))
(assert (forall ((temp___3584 (Array Int et1))) (forall ((temp___3585 Int) (temp___3586 Int)) (let ((temp___3583 (temp_____aggregate_def_3582 temp___3584 temp___3585 temp___3586))) (=> (and (dynamic_invariant temp___3585 true true true true) (dynamic_invariant2 temp___3586 true true true true)) (forall ((temp___3587 Int)) (ite (= temp___3587 temp___3585) (= (to_rep (select temp___3583 temp___3587)) temp___3586) (= (select temp___3583 temp___3587) (select temp___3584 temp___3587)))))))))
(declare-const r__split_fields (Array Int et1))
(declare-const r__split_fields1 (Array Int (Array Int et1)))
(declare-const o et1)
(declare-const o1 (Array Int et1))
(declare-const o2 (Array Int et1))
(declare-const o3 (Array Int (Array Int et1)))
(declare-const temp___8833 (Array Int et1))
(declare-const temp___88331 (Array Int (Array Int et1)))
(declare-const o4 et1)
(declare-const o5 (Array Int et1))
(declare-const o6 (Array Int (Array Int et1)))
(declare-const o7 (Array Int et1))
(declare-const o8 (Array Int (Array Int et1)))
(declare-const temp___8838 (Array Int et1))
(declare-const temp___88381 (Array Int (Array Int et1)))
(declare-const result (Array Int et1))
(declare-const result1 (Array Int (Array Int et1)))
(declare-const r__split_fields2 (Array Int et1))
(declare-const r__split_fields3 (Array Int (Array Int et1)))
(declare-const result2 (Array Int et1))
(declare-const result3 (Array Int (Array Int et1)))
(declare-const r__split_fields4 (Array Int et1))
(declare-const r__split_fields5 (Array Int (Array Int et1)))
(declare-const r__split_fields6 (Array Int et1))
(declare-const r__split_fields7 (Array Int (Array Int et1)))
(declare-const r__split_fields8 (Array Int et1))
(declare-const r__split_fields9 (Array Int (Array Int et1)))
(assert (in_range1 i))
(assert (in_range j))
(assert (in_range2 e))
(assert (in_range2 f))
(assert (= (to_rep o) e))
(assert (= o1 (store r__split_fields j o)))
(assert (= o1 o2))
(assert (= r__split_fields1 o3))
(assert (= temp___8833 o2))
(assert (= temp___88331 o3))
(assert (= result r__split_fields))
(assert (= result1 r__split_fields1))
(assert (= temp___8833 r__split_fields2))
(assert (= temp___88331 r__split_fields3))
(assert (= (to_rep o4) f))
(assert (= o5 (store (select r__split_fields3 i) j o4)))
(assert (= o6 (store r__split_fields3 i o5)))
(assert (= r__split_fields2 o7))
(assert (= o6 o8))
(assert (= temp___8838 o7))
(assert (= temp___88381 o8))
(assert (= result2 r__split_fields2))
(assert (= result3 r__split_fields3))
(assert (= temp___8838 r__split_fields4))
(assert (= temp___88381 r__split_fields5))
(assert (= r__split_fields6 r__split_fields4))
(assert (= r__split_fields7 r__split_fields5))
(assert (= r__split_fields8 r__split_fields4))
(assert (= r__split_fields9 r__split_fields5))
(assert (not (= (bool_eq1 r__split_fields7 5 50 (temp_____aggregate_def_3576 r__split_fields1 i (temp_____aggregate_def_3582 (select r__split_fields1 i) j f)) 5 50) true)))
(check-sat)
(exit)
