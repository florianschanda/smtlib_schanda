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
(declare-sort ttB 0)
(declare-fun ttBqtint (ttB) Int)
(assert (forall ((i ttB)) (and (<= (- 128) (ttBqtint i)) (<= (ttBqtint i) 127))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 128) x) (<= x 127)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (ttB ttB) Bool)
(declare-const dummy1 ttB)
(declare-datatypes () ((ttB__ref (mk_ttB__ref (ttB__content ttB)))))
(define-fun ttB__ref___projection ((a ttB__ref)) ttB (ttB__content a))
(define-fun to_rep ((x ttB)) Int (ttBqtint x))
(declare-fun of_rep (Int) ttB)
(assert (forall ((x ttB)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x ttB)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort t 0)
(declare-fun tqtint (t) Int)
(assert (forall ((i t)) (and (<= 1 (tqtint i)) (<= (tqtint i) 10))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (t t) Bool)
(declare-const dummy2 t)
(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-sort t1 0)
(declare-fun first (t1) ttB)
(declare-fun last (t1) ttB)
(declare-fun mk (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range2 low) (in_range2 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int integer)) (rt t1)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))
(define-fun of_array ((a (Array Int integer)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int integer)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int integer)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int integer)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep (first (rt x))) (to_rep (last (rt x))) (elts y) (to_rep (first (rt y))) (to_rep (last (rt y)))))
(declare-fun user_eq3 (us_t us_t) Bool)
(declare-const dummy3 us_t)
(declare-datatypes () ((a__ref (mk_a__ref (a__content us_t)))))
(define-fun a__ref___projection ((a a__ref)) us_t (a__content a))
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-fun f (Int) us_t)
(declare-fun f__function_guard (us_t Int) Bool)
(define-fun dynamic_invariant1 ((temp___expr_210 us_t) (temp___is_init_206 Bool) (temp___skip_constant_207 Bool) (temp___do_toplevel_208 Bool) (temp___do_typ_inv_209 Bool)) Bool (=> (not (= temp___skip_constant_207 true)) (dynamic_property 1 10 (first1 temp___expr_210) (last1 temp___expr_210))))
(assert (forall ((x Int)) (! (=> (dynamic_invariant x true true true true) (dynamic_invariant1 (f x) true false true true)) :pattern ((f x)))))
(define-fun to_rep2 ((x t)) Int (tqtint x))
(declare-fun of_rep2 (Int) t)
(assert (forall ((x t)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x t)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (ttB ttB) Bool)
(declare-const dummy4 ttB)
(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content ttB)))))
(define-fun t3b__ref___projection ((a t3b__ref)) ttB (t3b__content a))
(declare-sort t2 0)
(declare-fun first2 (t2) ttB)
(declare-fun last2 (t2) ttB)
(declare-fun mk1 (Int Int) t2)
(assert (forall ((f1 Int) (l Int)) (! (=> (in_range1 f1) (=> (in_range1 l) (and (= (to_rep (first2 (mk1 f1 l))) f1) (= (to_rep (last2 (mk1 f1 l))) l)))) :pattern ((mk1 f1 l)))))
(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (dynamic_property1 range_first range_last low) (dynamic_property1 range_first range_last high))))))
(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int integer)) (rt1 t2)))))
(define-fun to_array1 ((a us_t1)) (Array Int integer) (elts1 a))
(define-fun of_array1 ((a (Array Int integer)) (f1 Int) (l Int)) us_t1 (mk___t1 a (mk1 f1 l)))
(define-fun first3 ((a us_t1)) Int (to_rep (first2 (rt1 a))))
(define-fun last3 ((a us_t1)) Int (to_rep (last2 (rt1 a))))
(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last3 a)) (+ (- (last3 a) (first3 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int integer)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int integer)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int integer)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq2 ((x us_t1) (y us_t1)) Bool (bool_eq (elts1 x) (to_rep (first2 (rt1 x))) (to_rep (last2 (rt1 x))) (elts1 y) (to_rep (first2 (rt1 y))) (to_rep (last2 (rt1 y)))))
(declare-fun user_eq5 (us_t1 us_t1) Bool)
(declare-const dummy5 us_t1)
(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content us_t1)))))
(define-fun t4b__ref___projection ((a t4b__ref)) us_t1 (t4b__content a))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__proc__r__length t)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) t (rec__proc__r__length a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__proc__r__contents us_t1)))))
(define-fun us_split_fields_Contents__projection ((a us_split_fields)) us_t1 (rec__proc__r__contents a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq3 ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep2 (rec__proc__r__length (us_split_discrs1 a))) (to_rep2 (rec__proc__r__length (us_split_discrs1 b)))) (= (bool_eq2 (rec__proc__r__contents (us_split_fields1 a)) (rec__proc__r__contents (us_split_fields1 b))) true)) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const proc__r__length__first__bit Int)
(declare-const proc__r__length__last__bit Int)
(declare-const proc__r__length__position Int)
(assert (<= 0 proc__r__length__first__bit))
(assert (< proc__r__length__first__bit proc__r__length__last__bit))
(assert (<= 0 proc__r__length__position))
(declare-const proc__r__contents__first__bit Int)
(declare-const proc__r__contents__last__bit Int)
(declare-const proc__r__contents__position Int)
(assert (<= 0 proc__r__contents__first__bit))
(assert (< proc__r__contents__first__bit proc__r__contents__last__bit))
(assert (<= 0 proc__r__contents__position))
(declare-fun user_eq6 (us_rep us_rep) Bool)
(declare-const dummy6 us_rep)
(declare-datatypes () ((r__ref (mk_r__ref (r__content us_rep)))))
(define-fun r__ref___projection ((a r__ref)) us_rep (r__content a))
(define-fun dynamic_invariant2 ((temp___expr_216 us_rep) (temp___is_init_212 Bool) (temp___skip_constant_213 Bool) (temp___do_toplevel_214 Bool) (temp___do_typ_inv_215 Bool)) Bool (let ((temp___217 (rec__proc__r__length (us_split_discrs1 temp___expr_216)))) (and (dynamic_property2 1 (to_rep2 temp___217) (first3 (rec__proc__r__contents (us_split_fields1 temp___expr_216))) (last3 (rec__proc__r__contents (us_split_fields1 temp___expr_216)))) (and (= (first3 (rec__proc__r__contents (us_split_fields1 temp___expr_216))) 1) (= (last3 (rec__proc__r__contents (us_split_fields1 temp___expr_216))) (to_rep2 temp___217))))))
(declare-const item__first ttB)
(declare-const item__last ttB)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_property3 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq7 (ttB ttB) Bool)
(declare-const dummy7 ttB)
(declare-datatypes () ((tT14bP1__ref (mk_tT14bP1__ref (tT14bP1__content ttB)))))
(define-fun tT14bP1__ref___projection ((a tT14bP1__ref)) ttB (tT14bP1__content a))
(declare-sort t3 0)
(declare-fun first4 (t3) ttB)
(declare-fun last4 (t3) ttB)
(declare-fun mk2 (Int Int) t3)
(assert (forall ((f1 Int) (l Int)) (! (=> (in_range1 f1) (=> (in_range1 l) (and (= (to_rep (first4 (mk2 f1 l))) f1) (= (to_rep (last4 (mk2 f1 l))) l)))) :pattern ((mk2 f1 l)))))
(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (dynamic_property3 range_first range_last low) (dynamic_property3 range_first range_last high))))))
(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int integer)) (rt2 t3)))))
(define-fun to_array2 ((a us_t2)) (Array Int integer) (elts2 a))
(define-fun of_array2 ((a (Array Int integer)) (f1 Int) (l Int)) us_t2 (mk___t2 a (mk2 f1 l)))
(define-fun first5 ((a us_t2)) Int (to_rep (first4 (rt2 a))))
(define-fun last5 ((a us_t2)) Int (to_rep (last4 (rt2 a))))
(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last5 a)) (+ (- (last5 a) (first5 a)) 1) 0))
(declare-const value__size3 Int)
(declare-fun object__size3 ((Array Int integer)) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int integer)) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 ((Array Int integer)) Int)
(assert (<= 0 value__size3))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size3 a))))
(assert (<= 0 value__component__size2))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size2 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment3 a))))
(define-fun bool_eq4 ((x us_t2) (y us_t2)) Bool (bool_eq (elts2 x) (to_rep (first4 (rt2 x))) (to_rep (last4 (rt2 x))) (elts2 y) (to_rep (first4 (rt2 y))) (to_rep (last4 (rt2 y)))))
(declare-fun user_eq8 (us_t2 us_t2) Bool)
(declare-const dummy8 us_t2)
(declare-datatypes () ((t14b__ref (mk_t14b__ref (t14b__content us_t2)))))
(define-fun t14b__ref___projection ((a t14b__ref)) us_t2 (t14b__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__proc__r__contents1 us_t2)))))
(define-fun us_split_fields_Contents__2__projection ((a us_split_fields2)) us_t2 (rec__proc__r__contents1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs2 us_split_discrs) (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_discrs (us_split_discrs2 a))
(define-fun us_rep___4__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (us_split_discrs2 a) (mk___split_fields (let ((temp___156 (rec__proc__r__contents1 (us_split_fields3 a)))) (of_array1 (to_array2 temp___156) (first5 temp___156) (last5 temp___156))))))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (us_split_discrs1 r) (mk___split_fields1 (let ((temp___155 (rec__proc__r__contents (us_split_fields1 r)))) (of_array2 (to_array1 temp___155) (first3 temp___155) (last3 temp___155))))))
(define-fun bool_eq5 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (to_rep2 (rec__proc__r__length (us_split_discrs2 a))) (to_rep2 (rec__proc__r__length (us_split_discrs2 b)))) (= (bool_eq4 (rec__proc__r__contents1 (us_split_fields3 a)) (rec__proc__r__contents1 (us_split_fields3 b))) true)) true false))
(define-fun in_range3 ((rec__proc__r__length1 Int) (a us_rep)) Bool (= rec__proc__r__length1 (to_rep2 (rec__proc__r__length (us_split_discrs1 a)))))
(declare-const value__size4 Int)
(declare-fun object__size4 (us_rep1) Int)
(declare-const value__alignment4 Int)
(declare-fun object__alignment4 (us_rep1) Int)
(assert (<= 0 value__size4))
(assert (forall ((a us_rep1)) (<= 0 (object__size4 a))))
(assert (<= 0 value__alignment4))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment4 a))))
(declare-const proc__r__length__first__bit1 Int)
(declare-const proc__r__length__last__bit1 Int)
(declare-const proc__r__length__position1 Int)
(assert (<= 0 proc__r__length__first__bit1))
(assert (< proc__r__length__first__bit1 proc__r__length__last__bit1))
(assert (<= 0 proc__r__length__position1))
(declare-const proc__r__contents__first__bit1 Int)
(declare-const proc__r__contents__last__bit1 Int)
(declare-const proc__r__contents__position1 Int)
(assert (<= 0 proc__r__contents__first__bit1))
(assert (< proc__r__contents__first__bit1 proc__r__contents__last__bit1))
(assert (<= 0 proc__r__contents__position1))
(declare-fun user_eq9 (us_rep1 us_rep1) Bool)
(declare-const dummy9 us_rep1)
(declare-datatypes () ((t13b__ref (mk_t13b__ref (t13b__content us_rep1)))))
(define-fun t13b__ref___projection ((a t13b__ref)) us_rep1 (t13b__content a))
(declare-const dr__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant3 ((temp___expr_203 Int) (temp___is_init_199 Bool) (temp___skip_constant_200 Bool) (temp___do_toplevel_201 Bool) (temp___do_typ_inv_202 Bool)) Bool (=> (or (= temp___is_init_199 true) (<= 1 10)) (in_range2 temp___expr_203)))
(declare-const item (Array Int integer))
(declare-const proc__p__item__assume (Array Int integer))
(declare-const proc__p__item__assume1 t1)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 (Array Int integer))
(declare-const o3 t3)
(declare-const o4 (Array Int integer))
(declare-const o5 t3)
(declare-const result (Array Int integer))
(declare-const item1 (Array Int integer))
(define-fun proc__p__item__assume2 () us_t (mk___t proc__p__item__assume proc__p__item__assume1))
(assert (and (= proc__p__item__assume2 (f 3)) (dynamic_invariant1 proc__p__item__assume2 true false true true)))
(assert (= result item))
(assert (= item1 proc__p__item__assume))
(assert (= (to_rep item__first) (to_rep (first proc__p__item__assume1))))
(assert (= (to_rep item__last) (to_rep (last proc__p__item__assume1))))
(assert (dynamic_property 1 10 (to_rep item__first) (to_rep item__last)))
(assert (= (ite (<= (to_rep item__first) (to_rep item__last)) (+ (- (to_rep item__last) (to_rep item__first)) 1) 0) (ite (<= 1 (ite (<= (to_rep item__first) (to_rep item__last)) (+ (- (to_rep item__last) (to_rep item__first)) 1) 0)) (+ (- (ite (<= (to_rep item__first) (to_rep item__last)) (+ (- (to_rep item__last) (to_rep item__first)) 1) 0) 1) 1) 0)))
(assert (=> (<= (to_rep item__first) (to_rep item__last)) (= o1 (+ (- (to_rep item__last) (to_rep item__first)) 1))))
(assert (=> (not (<= (to_rep item__first) (to_rep item__last))) (= o1 0)))
(assert (= (slide item1 (to_rep item__first) 1) o2))
(assert (= (mk2 1 o1) o3))
(assert (= o4 o2))
(assert (= o5 o3))
(assert (=> (<= (to_rep item__first) (to_rep item__last)) (= o (+ (- (to_rep item__last) (to_rep item__first)) 1))))
(assert (=> (not (<= (to_rep item__first) (to_rep item__last))) (= o 0)))
(assert (not (in_range2 o)))
(check-sat)
(exit)
