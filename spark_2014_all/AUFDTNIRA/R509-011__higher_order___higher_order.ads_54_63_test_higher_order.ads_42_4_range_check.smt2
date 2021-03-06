(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFDTNIRA)
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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort small_int 0)
(declare-fun small_intqtint (small_int) Int)
(assert (forall ((i small_int)) (and (<= (- 100) (small_intqtint i)) (<= (small_intqtint i) 100))))
(define-fun in_range3 ((x Int)) Bool (and (<= (- 100) x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (small_int small_int) Bool)
(declare-const dummy2 small_int)
(declare-datatypes () ((small_int__ref (mk_small_int__ref (small_int__content small_int)))))
(define-fun small_int__ref___projection ((a small_int__ref)) small_int (small_int__content a))
(declare-sort small_index 0)
(declare-fun small_indexqtint (small_index) Int)
(assert (forall ((i small_index)) (and (<= 1 (small_indexqtint i)) (<= (small_indexqtint i) 100))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (small_index small_index) Bool)
(declare-const dummy3 small_index)
(declare-datatypes () ((small_index__ref (mk_small_index__ref (small_index__content small_index)))))
(define-fun small_index__ref___projection ((a small_index__ref)) small_index (small_index__content a))
(define-fun to_rep1 ((x small_int)) Int (small_intqtint x))
(declare-fun of_rep1 (Int) small_int)
(assert (forall ((x small_int)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x small_int)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int small_int))))))
(declare-fun slide ((Array Int small_int) Int Int) (Array Int small_int))
(assert (forall ((a (Array Int small_int))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int small_int))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int small_int)) (a__first Int) (a__last Int) (b (Array Int small_int)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep1 (select a temp___idx_155)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_155))))))) true false))
(assert (forall ((a (Array Int small_int)) (b (Array Int small_int))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep1 (select a temp___idx_155)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_155)))))))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range4 low) (in_range4 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int small_int)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int small_int) (elts a))
(define-fun of_array ((a (Array Int small_int)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int small_int)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int small_int)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int small_int)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int small_int))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int small_int))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int small_int))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep (first (rt x))) (to_rep (last (rt x))) (elts y) (to_rep (first (rt y))) (to_rep (last (rt y)))))
(declare-fun user_eq4 (us_t us_t) Bool)
(declare-const dummy4 us_t)
(declare-datatypes () ((small_int_array__ref (mk_small_int_array__ref (small_int_array__content us_t)))))
(define-fun small_int_array__ref___projection ((a small_int_array__ref)) us_t (small_int_array__content a))
(declare-fun in_range5 (us_t Int Int) Bool)
(declare-fun in_range__function_guard (Bool us_t Int Int) Bool)
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(define-fun dynamic_invariant2 ((temp___expr_289 us_t) (temp___is_init_285 Bool) (temp___skip_constant_286 Bool) (temp___do_toplevel_287 Bool) (temp___do_typ_inv_288 Bool)) Bool (=> (not (= temp___skip_constant_286 true)) (dynamic_property 1 100 (first1 temp___expr_289) (last1 temp___expr_289))))
(assert true)
(assert (forall ((a us_t)) (forall ((x Int) (c Int)) (! (= (= (in_range5 a x c) true) (and (<= (+ (- 2147483648) (* 100 (- (length a) c))) x) (<= x (- 2147483647 (* 100 (- (length a) c)))))) :pattern ((in_range5 a x c))))))
(declare-sort index_type 0)
(declare-fun index_typeqtint (index_type) Int)
(assert (forall ((i index_type)) (and (<= 1 (index_typeqtint i)) (<= (index_typeqtint i) 100))))
(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (index_type index_type) Bool)
(declare-const dummy5 index_type)
(declare-datatypes () ((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___3__projection ((a index_type__ref)) index_type (index_type__content a))
(declare-sort element_2 0)
(declare-fun element_2qtint (element_2) Int)
(assert (forall ((i element_2)) (and (<= (- 2147483648) (element_2qtint i)) (<= (element_2qtint i) 2147483647))))
(define-fun in_range7 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq6 (element_2 element_2) Bool)
(declare-const dummy6 element_2)
(declare-datatypes () ((element_2__ref (mk_element_2__ref (element_2__content element_2)))))
(define-fun element_2__ref___2__projection ((a element_2__ref)) element_2 (element_2__content a))
(define-fun to_rep2 ((x element_2)) Int (element_2qtint x))
(declare-fun of_rep2 (Int) element_2)
(assert (forall ((x element_2)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x element_2)) (! (in_range7 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range7 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int element_2))))))
(declare-fun slide1 ((Array Int element_2) Int Int) (Array Int element_2))
(assert (forall ((a (Array Int element_2))) (forall ((first2 Int)) (! (= (slide1 a first2 first2) a) :pattern ((slide1 a first2 first2))))))
(assert (forall ((a (Array Int element_2))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int element_2)) (a__first Int) (a__last Int) (b (Array Int element_2)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_156 Int)) (=> (and (<= a__first temp___idx_156) (<= temp___idx_156 a__last)) (= (to_rep2 (select a temp___idx_156)) (to_rep2 (select b (+ (- b__first a__first) temp___idx_156))))))) true false))
(assert (forall ((a (Array Int element_2)) (b (Array Int element_2))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_156 Int)) (=> (and (<= a__first temp___idx_156) (<= temp___idx_156 a__last)) (= (to_rep2 (select a temp___idx_156)) (to_rep2 (select b (+ (- b__first a__first) temp___idx_156)))))))))))
(declare-sort t1 0)
(declare-fun first2 (t1) integer)
(declare-fun last2 (t1) integer)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first2 (mk1 f l))) f) (= (to_rep (last2 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range6 low) (in_range6 high))))))
(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int element_2)) (rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int element_2) (elts1 a))
(define-fun of_array1 ((a (Array Int element_2)) (f Int) (l Int)) us_t1 (mk___t1 a (mk1 f l)))
(define-fun first3 ((a us_t1)) Int (to_rep (first2 (rt1 a))))
(define-fun last3 ((a us_t1)) Int (to_rep (last2 (rt1 a))))
(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last3 a)) (+ (- (last3 a) (first3 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int element_2)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int element_2)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int element_2)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int element_2))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int element_2))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int element_2))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq3 ((x us_t1) (y us_t1)) Bool (bool_eq2 (elts1 x) (to_rep (first2 (rt1 x))) (to_rep (last2 (rt1 x))) (elts1 y) (to_rep (first2 (rt1 y))) (to_rep (last2 (rt1 y)))))
(declare-fun user_eq7 (us_t1 us_t1) Bool)
(declare-const dummy7 us_t1)
(declare-datatypes () ((acc_array__ref (mk_acc_array__ref (acc_array__content us_t1)))))
(define-fun acc_array__ref___projection ((a acc_array__ref)) us_t1 (acc_array__content a))
(declare-sort t2 0)
(declare-fun first4 (t2) integer)
(declare-fun last4 (t2) integer)
(declare-fun mk2 (Int Int) t2)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first4 (mk2 f l))) f) (= (to_rep (last4 (mk2 f l))) l)))) :pattern ((mk2 f l)))))
(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range4 low) (in_range4 high))))))
(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int small_int)) (rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int small_int) (elts2 a))
(define-fun of_array2 ((a (Array Int small_int)) (f Int) (l Int)) us_t2 (mk___t2 a (mk2 f l)))
(define-fun first5 ((a us_t2)) Int (to_rep (first4 (rt2 a))))
(define-fun last5 ((a us_t2)) Int (to_rep (last4 (rt2 a))))
(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last5 a)) (+ (- (last5 a) (first5 a)) 1) 0))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int small_int)) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int small_int)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int small_int)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int small_int))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size2))
(assert (forall ((a (Array Int small_int))) (<= 0 (object__component__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int small_int))) (<= 0 (object__alignment2 a))))
(define-fun bool_eq4 ((x us_t2) (y us_t2)) Bool (bool_eq (elts2 x) (to_rep (first4 (rt2 x))) (to_rep (last4 (rt2 x))) (elts2 y) (to_rep (first4 (rt2 y))) (to_rep (last4 (rt2 y)))))
(declare-fun user_eq8 (us_t2 us_t2) Bool)
(declare-const dummy8 us_t2)
(declare-datatypes () ((array_type__ref (mk_array_type__ref (array_type__content us_t2)))))
(define-fun array_type__ref___2__projection ((a array_type__ref)) us_t2 (array_type__content a))
(define-fun dynamic_invariant3 ((temp___expr_311 us_t2) (temp___is_init_307 Bool) (temp___skip_constant_308 Bool) (temp___do_toplevel_309 Bool) (temp___do_typ_inv_310 Bool)) Bool (=> (not (= temp___skip_constant_308 true)) (dynamic_property2 1 100 (first5 temp___expr_311) (last5 temp___expr_311))))
(define-fun dynamic_invariant4 ((temp___expr_317 Int) (temp___is_init_313 Bool) (temp___skip_constant_314 Bool) (temp___do_toplevel_315 Bool) (temp___do_typ_inv_316 Bool)) Bool (=> (or (= temp___is_init_313 true) (<= (- 2147483648) 2147483647)) (in_range7 temp___expr_317)))
(declare-const a us_t2)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const init Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_property3 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq9 (integer integer) Bool)
(declare-const dummy9 integer)
(declare-datatypes () ((tTrSP1__ref (mk_tTrSP1__ref (tTrSP1__content integer)))))
(define-fun tTrSP1__ref___2__projection ((a1 tTrSP1__ref)) integer (tTrSP1__content a1))
(declare-sort t3 0)
(declare-fun first6 (t3) integer)
(declare-fun last6 (t3) integer)
(declare-fun mk3 (Int Int) t3)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first6 (mk3 f l))) f) (= (to_rep (last6 (mk3 f l))) l)))) :pattern ((mk3 f l)))))
(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (dynamic_property3 range_first range_last low) (dynamic_property3 range_first range_last high))))))
(declare-datatypes () ((us_t3 (mk___t3 (elts3 (Array Int element_2)) (rt3 t3)))))
(define-fun to_array3 ((a1 us_t3)) (Array Int element_2) (elts3 a1))
(define-fun of_array3 ((a1 (Array Int element_2)) (f Int) (l Int)) us_t3 (mk___t3 a1 (mk3 f l)))
(define-fun first7 ((a1 us_t3)) Int (to_rep (first6 (rt3 a1))))
(define-fun last7 ((a1 us_t3)) Int (to_rep (last6 (rt3 a1))))
(define-fun length3 ((a1 us_t3)) Int (ite (<= (first7 a1) (last7 a1)) (+ (- (last7 a1) (first7 a1)) 1) 0))
(declare-const value__size3 Int)
(declare-fun object__size3 ((Array Int element_2)) Int)
(declare-const value__component__size3 Int)
(declare-fun object__component__size3 ((Array Int element_2)) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 ((Array Int element_2)) Int)
(assert (<= 0 value__size3))
(assert (forall ((a1 (Array Int element_2))) (<= 0 (object__size3 a1))))
(assert (<= 0 value__component__size3))
(assert (forall ((a1 (Array Int element_2))) (<= 0 (object__component__size3 a1))))
(assert (<= 0 value__alignment3))
(assert (forall ((a1 (Array Int element_2))) (<= 0 (object__alignment3 a1))))
(define-fun bool_eq5 ((x us_t3) (y us_t3)) Bool (bool_eq2 (elts3 x) (to_rep (first6 (rt3 x))) (to_rep (last6 (rt3 x))) (elts3 y) (to_rep (first6 (rt3 y))) (to_rep (last6 (rt3 y)))))
(declare-fun user_eq10 (us_t3 us_t3) Bool)
(declare-const dummy10 us_t3)
(declare-datatypes () ((trS__ref (mk_trS__ref (trS__content us_t3)))))
(define-fun trS__ref___2__projection ((a1 trS__ref)) us_t3 (trS__content a1))
(define-fun dynamic_invariant5 ((temp___expr_348 us_t3) (temp___is_init_344 Bool) (temp___skip_constant_345 Bool) (temp___do_toplevel_346 Bool) (temp___do_typ_inv_347 Bool)) Bool (=> (not (= temp___skip_constant_345 true)) (and (dynamic_property4 (first5 a) (last5 a) (first7 temp___expr_348) (last7 temp___expr_348)) (and (= (first7 temp___expr_348) (first5 a)) (= (last7 temp___expr_348) (last5 a))))))
(declare-const r__first integer)
(declare-const r__last integer)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_property5 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)
(declare-fun user_eq11 (integer integer) Bool)
(declare-const dummy11 integer)
(declare-datatypes () ((t60s__ref (mk_t60s__ref (t60s__content integer)))))
(define-fun t60s__ref___projection ((a1 t60s__ref)) integer (t60s__content a1))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(define-fun dynamic_invariant6 ((temp___expr_275 Int) (temp___is_init_271 Bool) (temp___skip_constant_272 Bool) (temp___do_toplevel_273 Bool) (temp___do_typ_inv_274 Bool)) Bool (=> (or (= temp___is_init_271 true) (<= (- 100) 100)) (in_range3 temp___expr_275)))
(define-fun dynamic_invariant7 ((temp___expr_282 Int) (temp___is_init_278 Bool) (temp___skip_constant_279 Bool) (temp___do_toplevel_280 Bool) (temp___do_typ_inv_281 Bool)) Bool (=> (or (= temp___is_init_278 true) (<= 1 100)) (in_range4 temp___expr_282)))
(define-fun dynamic_invariant8 ((temp___expr_324 us_t1) (temp___is_init_320 Bool) (temp___skip_constant_321 Bool) (temp___do_toplevel_322 Bool) (temp___do_typ_inv_323 Bool)) Bool (=> (not (= temp___skip_constant_321 true)) (dynamic_property1 1 100 (first3 temp___expr_324) (last3 temp___expr_324))))
(define-fun dynamic_invariant9 ((temp___expr_297 Int) (temp___is_init_293 Bool) (temp___skip_constant_294 Bool) (temp___do_toplevel_295 Bool) (temp___do_typ_inv_296 Bool)) Bool (=> (or (= temp___is_init_293 true) (<= 1 100)) (in_range6 temp___expr_297)))
(declare-const acc Int)
(declare-const r (Array Int element_2))
(declare-const i Int)
(declare-const test_higher_order__sum__acc_f__result (Array Int element_2))
(declare-const test_higher_order__sum__acc_f__result1 t1)
(declare-const temp___396 Int)
(declare-const temp___395 Int)
(declare-const temp___393 (Array Int element_2))
(declare-const o Int)
(declare-const o1 element_2)
(declare-const o2 (Array Int element_2))
(declare-const i1 Int)
(declare-const o3 Int)
(declare-const r1 (Array Int element_2))
(declare-const result Int)
(declare-const acc1 Int)
(declare-const result1 Int)
(declare-const i2 Int)
(declare-const result2 (Array Int element_2))
(declare-const r2 (Array Int element_2))
(declare-const acc2 Int)
(declare-const r3 (Array Int element_2))
(declare-const i3 Int)
(declare-const result3 Int)
(declare-const acc3 Int)
(declare-const acc4 Int)
(declare-const r4 (Array Int element_2))
(declare-const i4 Int)
(declare-const acc5 Int)
(declare-const r5 (Array Int element_2))
(declare-const i5 Int)
(declare-const acc6 Int)
(declare-const r6 (Array Int element_2))
(declare-const i6 Int)
(declare-const acc7 Int)
(declare-const r7 (Array Int element_2))
(declare-const i7 Int)
(declare-const result4 (Array Int element_2))
(declare-const result5 t1)
(declare-const test_higher_order__sum__acc_f__result2 us_t1)
(declare-const acc8 int__ref)
(declare-const r8 map__ref1)
(declare-const i8 int__ref)
(declare-const test_higher_order__sum__acc_f__result3 acc_array__ref)
(declare-const acc9 Int)
(declare-const r9 (Array Int element_2))
(declare-const i9 Int)
(declare-const test_higher_order__sum__acc_f__result4 us_t1)
(declare-const acc10 int__ref)
(declare-const r10 map__ref1)
(declare-const i10 int__ref)
(declare-const test_higher_order__sum__acc_f__result5 acc_array__ref)
(declare-const acc11 Int)
(declare-const r11 (Array Int element_2))
(declare-const i11 Int)
(declare-const test_higher_order__sum__acc_f__result6 us_t1)
(define-fun i12 () int__ref (mk_int__ref i6))
(define-fun r12 () map__ref1 (mk_map__ref1 r6))
(define-fun acc12 () int__ref (mk_int__ref acc6))
(define-fun r13 () map__ref1 (mk_map__ref1 r))
(assert (dynamic_invariant3 a true false true true))
(assert (in_range7 init))
(assert (= (in_range5 (mk___t (elts2 a) (mk (to_rep (first4 (rt2 a))) (to_rep (last4 (rt2 a))))) init 0) true))
(assert (= (mk_int__ref result) (mk_int__ref acc)))
(assert (= acc1 init))
(assert (in_range7 acc1))
(assert (= test_higher_order__sum__acc_f__result3 (mk_acc_array__ref test_higher_order__sum__acc_f__result2)))
(assert (= i8 i12))
(assert (= r8 r12))
(assert (= acc8 acc12))
(assert (= test_higher_order__sum__acc_f__result4 test_higher_order__sum__acc_f__result2))
(assert (= i9 i7))
(assert (= r9 r7))
(assert (= acc9 acc7))
(assert (and (dynamic_property4 (to_rep (first4 (rt2 a))) (to_rep (last4 (rt2 a))) (to_rep r__first) (to_rep r__last)) (and (= (to_rep r__first) (to_rep (first4 (rt2 a)))) (= (to_rep r__last) (to_rep (last4 (rt2 a)))))))
(assert (= (mk_int__ref result1) (mk_int__ref i)))
(assert (= i2 (to_rep (first4 (rt2 a)))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= temp___396 i2)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= temp___395 acc1)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= temp___393 r)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (and (= o (+ (to_rep1 (select (elts2 a) i2)) acc1)) (in_range1 (+ (to_rep1 (select (elts2 a) i2)) acc1)))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= (to_rep2 o1) o)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= o2 (store r i2 o1))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= (mk_map__ref1 result2) r13)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= r2 o2)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (forall ((k Int)) (=> (and (<= (to_rep (first4 (rt2 a))) k) (<= k i3)) (and (= (in_range5 (mk___t (elts2 a) (mk (to_rep (first4 (rt2 a))) (to_rep (last4 (rt2 a))))) (to_rep2 (select r3 k)) (+ (- k (to_rep (first4 (rt2 a)))) 1)) true) (= (to_rep2 (select r3 k)) (+ (to_rep1 (select (elts2 a) k)) (ite (= k (to_rep (first4 (rt2 a)))) init (to_rep2 (select r3 (- k 1)))))))))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (and (and (and (forall ((temp___394 Int)) (=> (and (<= (to_rep r__first) temp___394) (<= temp___394 (to_rep r__last))) (=> (or (< (to_rep (last4 (rt2 a))) temp___394) (or (< temp___394 (to_rep (first4 (rt2 a)))) (< i3 temp___394))) (= (select r3 temp___394) (select temp___393 temp___394))))) (=> (<= (- 2147483648) 2147483647) (in_range7 acc2))) (=> (<= (to_rep (first4 (rt2 a))) (to_rep (last4 (rt2 a)))) (dynamic_property5 (to_rep (first4 (rt2 a))) (to_rep (last4 (rt2 a))) i3))) (and (<= (to_rep (first4 (rt2 a))) i3) (<= i3 (to_rep (last4 (rt2 a))))))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= acc2 result3)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= acc3 (to_rep2 (select r3 i3)))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= i3 (to_rep (last4 (rt2 a))))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= i3 i4)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= r3 r4)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= acc3 acc4)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= i5 i3)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= r5 r3)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= acc5 acc3)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= i12 (mk_int__ref i4))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= r12 (mk_map__ref1 r4))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= acc12 (mk_int__ref acc4))))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= i7 i5)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= r7 r5)))
(assert (=> (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a))))) (= acc7 acc5)))
(assert (=> (not (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a)))))) (= i2 i6)))
(assert (=> (not (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a)))))) (= r12 r13)))
(assert (=> (not (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a)))))) (= acc1 acc6)))
(assert (=> (not (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a)))))) (= i7 i2)))
(assert (=> (not (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a)))))) (= r7 r1)))
(assert (=> (not (and (<= (to_rep (first4 (rt2 a))) i2) (<= i2 (to_rep (last4 (rt2 a)))))) (= acc7 acc1)))
(assert (= (mk_acc_array__ref (mk___t1 result4 result5)) (mk_acc_array__ref (mk___t1 test_higher_order__sum__acc_f__result test_higher_order__sum__acc_f__result1))))
(assert (= test_higher_order__sum__acc_f__result2 (mk___t1 r6 (mk1 (to_rep r__first) (to_rep r__last)))))
(assert (= test_higher_order__sum__acc_f__result5 test_higher_order__sum__acc_f__result3))
(assert (= i10 i8))
(assert (= r10 r8))
(assert (= acc10 acc8))
(assert (= test_higher_order__sum__acc_f__result6 test_higher_order__sum__acc_f__result4))
(assert (= i11 i9))
(assert (= r11 r9))
(assert (= acc11 acc9))
(assert (= (to_rep (first2 (rt1 (acc_array__content test_higher_order__sum__acc_f__result5)))) (to_rep (first4 (rt2 a)))))
(assert (= (to_rep (last2 (rt1 (acc_array__content test_higher_order__sum__acc_f__result5)))) (to_rep (last4 (rt2 a)))))
(assert (<= (to_rep (first4 (rt2 a))) i1))
(assert (<= i1 (to_rep (last4 (rt2 a)))))
(assert (and (= o3 (- i1 (to_rep (first4 (rt2 a))))) (in_range1 (- i1 (to_rep (first4 (rt2 a)))))))
(assert (not (in_range2 o3)))
(check-sat)
(exit)
