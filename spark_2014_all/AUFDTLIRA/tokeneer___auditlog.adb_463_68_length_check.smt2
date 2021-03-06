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
(declare-sort character 0)
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (character character) Bool)
(declare-const dummy character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (integer integer) Bool)
(declare-const dummy1 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_18)))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (positive positive) Bool)
(declare-const dummy2 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int character)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))
(define-fun of_array ((a (Array Int character)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int character)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int character)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int character)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y)))))
(declare-fun user_eq3 (us_t us_t) Bool)
(declare-const dummy3 us_t)
(declare-datatypes () ((stringf1l20__ref (mk_stringf1l20__ref (stringf1l20__content us_t)))))
(define-fun stringf1l20__ref___projection ((a stringf1l20__ref)) us_t (stringf1l20__content a))
(declare-sort t1 0)
(declare-fun first2 (t1) integer)
(declare-fun last2 (t1) integer)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first2 (mk1 f l))) f) (= (to_rep1 (last2 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int character)) (rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int character) (elts1 a))
(define-fun of_array1 ((a (Array Int character)) (f Int) (l Int)) us_t1 (mk___t1 a (mk1 f l)))
(define-fun first3 ((a us_t1)) Int (to_rep1 (first2 (rt1 a))))
(define-fun last3 ((a us_t1)) Int (to_rep1 (last2 (rt1 a))))
(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last3 a)) (+ (- (last3 a) (first3 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int character)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int character)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int character)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int character))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq2 ((x us_t1) (y us_t1)) Bool (bool_eq (elts1 x) (to_rep1 (first2 (rt1 x))) (to_rep1 (last2 (rt1 x))) (elts1 y) (to_rep1 (first2 (rt1 y))) (to_rep1 (last2 (rt1 y)))))
(declare-fun user_eq4 (us_t1 us_t1) Bool)
(declare-const dummy4 us_t1)
(declare-fun to_string (us_image) us_t1)
(declare-fun from_string (us_t1) us_image)
(declare-datatypes () ((string__ref (mk_string__ref (string__content us_t1)))))
(define-fun string__ref___projection ((a string__ref)) us_t1 (string__content a))
(declare-fun elementt_image (Int) us_t)
(declare-fun elementt_image__function_guard (us_t Int) Bool)
(declare-sort t2 0)
(declare-fun first4 (t2) integer)
(declare-fun last4 (t2) integer)
(declare-fun mk2 (Int Int) t2)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first4 (mk2 f l))) f) (= (to_rep1 (last4 (mk2 f l))) l)))) :pattern ((mk2 f l)))))
(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int character)) (rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int character) (elts2 a))
(define-fun of_array2 ((a (Array Int character)) (f Int) (l Int)) us_t2 (mk___t2 a (mk2 f l)))
(define-fun first5 ((a us_t2)) Int (to_rep1 (first4 (rt2 a))))
(define-fun last5 ((a us_t2)) Int (to_rep1 (last4 (rt2 a))))
(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last5 a)) (+ (- (last5 a) (first5 a)) 1) 0))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int character)) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int character)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int character)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int character))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size2))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment2 a))))
(define-fun bool_eq3 ((x us_t2) (y us_t2)) Bool (bool_eq (elts2 x) (to_rep1 (first4 (rt2 x))) (to_rep1 (last4 (rt2 x))) (elts2 y) (to_rep1 (first4 (rt2 y))) (to_rep1 (last4 (rt2 y)))))
(declare-fun user_eq5 (us_t2 us_t2) Bool)
(declare-const dummy5 us_t2)
(declare-datatypes () ((stringf1__ref (mk_stringf1__ref (stringf1__content us_t2)))))
(define-fun stringf1__ref___projection ((a stringf1__ref)) us_t2 (stringf1__content a))
(define-fun dynamic_invariant1 ((temp___expr_344 us_t) (temp___is_init_340 Bool) (temp___skip_constant_341 Bool) (temp___do_toplevel_342 Bool) (temp___do_typ_inv_343 Bool)) Bool (and (=> (not (= temp___skip_constant_341 true)) (dynamic_property 1 2147483647 (first1 temp___expr_344) (last1 temp___expr_344))) (=> (= temp___do_toplevel_342 true) (=> (= temp___is_init_340 true) (and (let ((temp___346 (of_array2 (to_array temp___expr_344) (first1 temp___expr_344) (last1 temp___expr_344)))) (and (= (first5 temp___346) 1) (<= 0 (last5 temp___346)))) (<= (last1 temp___expr_344) 20))))))
(define-fun dynamic_predicate ((temp___348 us_t)) Bool (and (let ((temp___350 (of_array2 (to_array temp___348) (first1 temp___348) (last1 temp___348)))) (and (= (first5 temp___350) 1) (<= 0 (last5 temp___350)))) (<= (last1 temp___348) 20)))
(declare-sort elementt 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 43)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq6 (elementt elementt) Bool)
(declare-const dummy6 elementt)
(declare-datatypes () ((elementt__ref (mk_elementt__ref (elementt__content elementt)))))
(define-fun elementt__ref___projection ((a elementt__ref)) elementt (elementt__content a))
(define-fun dynamic_invariant2 ((temp___expr_538 Int) (temp___is_init_534 Bool) (temp___skip_constant_535 Bool) (temp___do_toplevel_536 Bool) (temp___do_typ_inv_537 Bool)) Bool (=> (or (= temp___is_init_534 true) (<= 0 43)) (in_range4 temp___expr_538)))
(assert (forall ((x Int)) (! (=> (dynamic_invariant2 x true true true true) (dynamic_invariant1 (elementt_image x) true false true true)) :pattern ((elementt_image x)))))
(assert (forall ((x Int)) (! (=> (dynamic_invariant2 x true true true true) (= (elementt_image x) (let ((temp___544 (to_string (attr__ATTRIBUTE_IMAGE4 x)))) (of_array (to_array1 temp___544) (first3 temp___544) (last3 temp___544))))) :pattern ((elementt_image x)))))
(declare-sort elementtexti 0)
(declare-fun elementtextiqtint (elementtexti) Int)
(assert (forall ((i elementtexti)) (and (<= 1 (elementtextiqtint i)) (<= (elementtextiqtint i) 20))))
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 20)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq7 (elementtexti elementtexti) Bool)
(declare-const dummy7 elementtexti)
(declare-datatypes () ((elementtexti__ref (mk_elementtexti__ref (elementtexti__content elementtexti)))))
(define-fun elementtexti__ref___projection ((a elementtexti__ref)) elementtexti (elementtexti__content a))
(declare-const noelement (Array Int character))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun auditlog__noelement__aggregate_def (Int) (Array Int character))
(declare-const elementid Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const e Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const r46b Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(define-fun dynamic_property3 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq8 (integer integer) Bool)
(declare-const dummy8 integer)
(declare-datatypes () ((t47b__ref (mk_t47b__ref (t47b__content integer)))))
(define-fun t47b__ref___projection ((a t47b__ref)) integer (t47b__content a))
(declare-sort t3 0)
(declare-fun first6 (t3) integer)
(declare-fun last6 (t3) integer)
(declare-fun mk3 (Int Int) t3)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first6 (mk3 f l))) f) (= (to_rep1 (last6 (mk3 f l))) l)))) :pattern ((mk3 f l)))))
(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (dynamic_property3 range_first range_last low) (dynamic_property3 range_first range_last high))))))
(declare-datatypes () ((us_t3 (mk___t3 (elts3 (Array Int character)) (rt3 t3)))))
(define-fun to_array3 ((a us_t3)) (Array Int character) (elts3 a))
(define-fun of_array3 ((a (Array Int character)) (f Int) (l Int)) us_t3 (mk___t3 a (mk3 f l)))
(define-fun first7 ((a us_t3)) Int (to_rep1 (first6 (rt3 a))))
(define-fun last7 ((a us_t3)) Int (to_rep1 (last6 (rt3 a))))
(define-fun length3 ((a us_t3)) Int (ite (<= (first7 a) (last7 a)) (+ (- (last7 a) (first7 a)) 1) 0))
(declare-const value__size3 Int)
(declare-fun object__size3 ((Array Int character)) Int)
(declare-const value__component__size3 Int)
(declare-fun object__component__size3 ((Array Int character)) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 ((Array Int character)) Int)
(assert (<= 0 value__size3))
(assert (forall ((a (Array Int character))) (<= 0 (object__size3 a))))
(assert (<= 0 value__component__size3))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment3 a))))
(define-fun bool_eq4 ((x us_t3) (y us_t3)) Bool (bool_eq (elts3 x) (to_rep1 (first6 (rt3 x))) (to_rep1 (last6 (rt3 x))) (elts3 y) (to_rep1 (first6 (rt3 y))) (to_rep1 (last6 (rt3 y)))))
(declare-fun user_eq9 (us_t3 us_t3) Bool)
(declare-const dummy9 us_t3)
(declare-datatypes () ((t48b__ref (mk_t48b__ref (t48b__content us_t3)))))
(define-fun t48b__ref___projection ((a t48b__ref)) us_t3 (t48b__content a))
(define-fun dynamic_invariant3 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(define-fun dynamic_invariant4 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range1 temp___expr_74)))
(define-fun dynamic_invariant5 ((temp___expr_96 us_t1) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property1 1 2147483647 (first3 temp___expr_96) (last3 temp___expr_96))))
(define-fun dynamic_invariant6 ((temp___expr_1408 Int) (temp___is_init_1404 Bool) (temp___skip_constant_1405 Bool) (temp___do_toplevel_1406 Bool) (temp___do_typ_inv_1407 Bool)) Bool (=> (or (= temp___is_init_1404 true) (<= 1 20)) (in_range5 temp___expr_1408)))
(assert (= noelement (auditlog__noelement__aggregate_def 32)))
(assert (forall ((temp___184 Int)) (=> (dynamic_invariant4 temp___184 true true true true) (forall ((temp___185 Int)) (= (to_rep (select (auditlog__noelement__aggregate_def temp___184) temp___185)) temp___184)))))
(define-fun dynamic_invariant7 ((temp___expr_333 us_t2) (temp___is_init_329 Bool) (temp___skip_constant_330 Bool) (temp___do_toplevel_331 Bool) (temp___do_typ_inv_332 Bool)) Bool (and (=> (not (= temp___skip_constant_330 true)) (dynamic_property2 1 2147483647 (first5 temp___expr_333) (last5 temp___expr_333))) (=> (= temp___do_toplevel_331 true) (=> (= temp___is_init_329 true) (and (= (first5 temp___expr_333) 1) (<= 0 (last5 temp___expr_333)))))))
(define-fun dynamic_predicate1 ((temp___336 us_t2)) Bool (and (= (first5 temp___336) 1) (<= 0 (last5 temp___336))))
(declare-const elementtext (Array Int character))
(declare-const o (Array Int character))
(declare-const o1 t)
(declare-const auditlog__addelementtofile__nameoftype__R46b__assume Int)
(declare-const temp___1773 (Array Int character))
(declare-const temp___17731 t)
(declare-const temp___1774 (Array Int character))
(declare-const temp___17741 t3)
(declare-const o2 (Array Int character))
(declare-const temp___1776 (Array Int character))
(declare-const temp___17761 t3)
(declare-const result (Array Int character))
(declare-const elementtext1 (Array Int character))
(define-fun temp___17732 () us_t (mk___t temp___1773 temp___17731))
(define-fun o3 () us_t (mk___t o o1))
(assert (= (auditlog__noelement__aggregate_def 32) noelement))
(assert (in_range4 elementid))
(assert (in_range4 e))
(assert (= result elementtext))
(assert (= elementtext1 noelement))
(assert (and (= o3 (elementt_image elementid)) (and (dynamic_invariant1 o3 true false true true) (= o3 (let ((temp___542 (to_string (attr__ATTRIBUTE_IMAGE4 elementid)))) (mk___t (elts1 temp___542) (mk (to_rep1 (first2 (rt1 temp___542))) (to_rep1 (last2 (rt1 temp___542))))))))))
(assert (= auditlog__addelementtofile__nameoftype__R46b__assume (to_rep1 (last o1))))
(assert (= auditlog__addelementtofile__nameoftype__R46b__assume r46b))
(assert (in_range2 r46b))
(assert (and (= temp___17732 (elementt_image elementid)) (and (dynamic_invariant1 temp___17732 true false true true) (= temp___17732 (let ((temp___542 (to_string (attr__ATTRIBUTE_IMAGE4 elementid)))) (mk___t (elts1 temp___542) (mk (to_rep1 (first2 (rt1 temp___542))) (to_rep1 (last2 (rt1 temp___542))))))))))
(assert (= (ite (<= (to_rep1 (first temp___17731)) (to_rep1 (last temp___17731))) (+ (- (to_rep1 (last temp___17731)) (to_rep1 (first temp___17731))) 1) 0) (ite (<= 1 r46b) (+ (- r46b 1) 1) 0)))
(assert (= (slide temp___1773 (to_rep1 (first temp___17731)) 1) temp___1774))
(assert (= (mk3 1 r46b) temp___17741))
(assert (=> (<= 1 r46b) (and (and (<= 1 1) (<= 1 20)) (and (<= 1 r46b) (<= r46b 20)))))
(assert (= o2 elementtext1))
(assert (= o2 temp___1776))
(assert (= (mk3 1 r46b) temp___17761))
(assert (not (= (ite (<= (to_rep1 (first6 temp___17741)) (to_rep1 (last6 temp___17741))) (+ (- (to_rep1 (last6 temp___17741)) (to_rep1 (first6 temp___17741))) 1) 0) (ite (<= (to_rep1 (first6 temp___17761)) (to_rep1 (last6 temp___17761))) (+ (- (to_rep1 (last6 temp___17761)) (to_rep1 (first6 temp___17761))) 1) 0))))
(check-sat)
(exit)
