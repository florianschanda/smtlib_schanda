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
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (positive positive) Bool)
(declare-const dummy positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(define-fun to_rep ((x positive)) Int (positiveqtint x))
(declare-fun of_rep (Int) positive)
(assert (forall ((x positive)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x positive)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
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
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_173 Int)) (=> (and (<= a__first temp___idx_173) (<= temp___idx_173 a__last)) (= (to_rep1 (select a temp___idx_173)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_173))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_173 Int)) (=> (and (<= a__first temp___idx_173) (<= temp___idx_173 a__last)) (= (to_rep1 (select a temp___idx_173)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_173)))))))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range1 low) (in_range1 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int integer)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))
(define-fun of_array ((a (Array Int integer)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))
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
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y)))))
(declare-fun user_eq2 (us_t us_t) Bool)
(declare-const dummy2 us_t)
(declare-datatypes () ((set__ref (mk_set__ref (set__content us_t)))))
(define-fun set__ref___projection ((a set__ref)) us_t (set__content a))
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int positive))))))
(declare-fun slide1 ((Array Int positive) Int Int) (Array Int positive))
(assert (forall ((a (Array Int positive))) (forall ((first2 Int)) (! (= (slide1 a first2 first2) a) :pattern ((slide1 a first2 first2))))))
(assert (forall ((a (Array Int positive))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int positive)) (a__first Int) (a__last Int) (b (Array Int positive)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_174 Int)) (=> (and (<= a__first temp___idx_174) (<= temp___idx_174 a__last)) (= (to_rep (select a temp___idx_174)) (to_rep (select b (+ (- b__first a__first) temp___idx_174))))))) true false))
(assert (forall ((a (Array Int positive)) (b (Array Int positive))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_174 Int)) (=> (and (<= a__first temp___idx_174) (<= temp___idx_174 a__last)) (= (to_rep (select a temp___idx_174)) (to_rep (select b (+ (- b__first a__first) temp___idx_174)))))))))))
(declare-sort t1 0)
(declare-fun first2 (t1) integer)
(declare-fun last2 (t1) integer)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first2 (mk1 f l))) f) (= (to_rep1 (last2 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range1 low) (in_range1 high))))))
(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int positive)) (rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int positive) (elts1 a))
(define-fun of_array1 ((a (Array Int positive)) (f Int) (l Int)) us_t1 (mk___t1 a (mk1 f l)))
(define-fun first3 ((a us_t1)) Int (to_rep1 (first2 (rt1 a))))
(define-fun last3 ((a us_t1)) Int (to_rep1 (last2 (rt1 a))))
(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last3 a)) (+ (- (last3 a) (first3 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int positive)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int positive)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int positive)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int positive))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int positive))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int positive))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq3 ((x us_t1) (y us_t1)) Bool (bool_eq2 (elts1 x) (to_rep1 (first2 (rt1 x))) (to_rep1 (last2 (rt1 x))) (elts1 y) (to_rep1 (first2 (rt1 y))) (to_rep1 (last2 (rt1 y)))))
(declare-fun user_eq3 (us_t1 us_t1) Bool)
(declare-const dummy3 us_t1)
(declare-datatypes () ((partition__ref (mk_partition__ref (partition__content us_t1)))))
(define-fun partition__ref___projection ((a partition__ref)) us_t1 (partition__content a))
(declare-fun is_partition (us_t us_t1) Bool)
(declare-fun is_partition__function_guard (Bool us_t us_t1) Bool)
(declare-fun ascending (us_t1) Bool)
(declare-fun ascending__function_guard (Bool us_t1) Bool)
(define-fun dynamic_invariant1 ((temp___expr_574 us_t) (temp___is_init_570 Bool) (temp___skip_constant_571 Bool) (temp___do_toplevel_572 Bool) (temp___do_typ_inv_573 Bool)) Bool (=> (not (= temp___skip_constant_571 true)) (dynamic_property 1 2147483647 (first1 temp___expr_574) (last1 temp___expr_574))))
(define-fun dynamic_invariant2 ((temp___expr_594 us_t1) (temp___is_init_590 Bool) (temp___skip_constant_591 Bool) (temp___do_toplevel_592 Bool) (temp___do_typ_inv_593 Bool)) Bool (=> (not (= temp___skip_constant_591 true)) (dynamic_property1 1 2147483647 (first3 temp___expr_594) (last3 temp___expr_594))))
(assert true)
(assert (forall ((s us_t)) (forall ((p us_t1)) (! (= (= (is_partition s p) true) (and (and (< (length1 p) (length s)) (= (ascending p) true)) (forall ((i Int)) (=> (and (<= (first3 p) i) (<= i (last3 p))) (and (<= (first1 s) (to_rep (select (to_array1 p) i))) (<= (to_rep (select (to_array1 p) i)) (last1 s))))))) :pattern ((is_partition s p))))))
(declare-const a us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const p us_t1)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_property2 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (integer integer) Bool)
(declare-const dummy4 integer)
(declare-datatypes () ((t23s__ref (mk_t23s__ref (t23s__content integer)))))
(define-fun t23s__ref___projection ((a1 t23s__ref)) integer (t23s__content a1))
(declare-sort t2 0)
(declare-fun first4 (t2) integer)
(declare-fun last4 (t2) integer)
(declare-fun mk2 (Int Int) t2)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first4 (mk2 f l))) f) (= (to_rep1 (last4 (mk2 f l))) l)))) :pattern ((mk2 f l)))))
(define-fun dynamic_property3 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (dynamic_property2 range_first range_last low) (dynamic_property2 range_first range_last high))))))
(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int integer)) (rt2 t2)))))
(define-fun to_array2 ((a1 us_t2)) (Array Int integer) (elts2 a1))
(define-fun of_array2 ((a1 (Array Int integer)) (f Int) (l Int)) us_t2 (mk___t2 a1 (mk2 f l)))
(define-fun first5 ((a1 us_t2)) Int (to_rep1 (first4 (rt2 a1))))
(define-fun last5 ((a1 us_t2)) Int (to_rep1 (last4 (rt2 a1))))
(define-fun length2 ((a1 us_t2)) Int (ite (<= (first5 a1) (last5 a1)) (+ (- (last5 a1) (first5 a1)) 1) 0))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int integer)) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int integer)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int integer)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a1 (Array Int integer))) (<= 0 (object__size2 a1))))
(assert (<= 0 value__component__size2))
(assert (forall ((a1 (Array Int integer))) (<= 0 (object__component__size2 a1))))
(assert (<= 0 value__alignment2))
(assert (forall ((a1 (Array Int integer))) (<= 0 (object__alignment2 a1))))
(define-fun bool_eq4 ((x us_t2) (y us_t2)) Bool (bool_eq (elts2 x) (to_rep1 (first4 (rt2 x))) (to_rep1 (last4 (rt2 x))) (elts2 y) (to_rep1 (first4 (rt2 y))) (to_rep1 (last4 (rt2 y)))))
(declare-fun user_eq5 (us_t2 us_t2) Bool)
(declare-const dummy5 us_t2)
(declare-datatypes () ((t24s__ref (mk_t24s__ref (t24s__content us_t2)))))
(define-fun t24s__ref___projection ((a1 t24s__ref)) us_t2 (t24s__content a1))
(define-fun dynamic_property4 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq6 (integer integer) Bool)
(declare-const dummy6 integer)
(declare-datatypes () ((t26s__ref (mk_t26s__ref (t26s__content integer)))))
(define-fun t26s__ref___projection ((a1 t26s__ref)) integer (t26s__content a1))
(declare-sort t3 0)
(declare-fun first6 (t3) integer)
(declare-fun last6 (t3) integer)
(declare-fun mk3 (Int Int) t3)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first6 (mk3 f l))) f) (= (to_rep1 (last6 (mk3 f l))) l)))) :pattern ((mk3 f l)))))
(define-fun dynamic_property5 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (dynamic_property4 range_first range_last low) (dynamic_property4 range_first range_last high))))))
(declare-datatypes () ((us_t3 (mk___t3 (elts3 (Array Int integer)) (rt3 t3)))))
(define-fun to_array3 ((a1 us_t3)) (Array Int integer) (elts3 a1))
(define-fun of_array3 ((a1 (Array Int integer)) (f Int) (l Int)) us_t3 (mk___t3 a1 (mk3 f l)))
(define-fun first7 ((a1 us_t3)) Int (to_rep1 (first6 (rt3 a1))))
(define-fun last7 ((a1 us_t3)) Int (to_rep1 (last6 (rt3 a1))))
(define-fun length3 ((a1 us_t3)) Int (ite (<= (first7 a1) (last7 a1)) (+ (- (last7 a1) (first7 a1)) 1) 0))
(declare-const value__size3 Int)
(declare-fun object__size3 ((Array Int integer)) Int)
(declare-const value__component__size3 Int)
(declare-fun object__component__size3 ((Array Int integer)) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 ((Array Int integer)) Int)
(assert (<= 0 value__size3))
(assert (forall ((a1 (Array Int integer))) (<= 0 (object__size3 a1))))
(assert (<= 0 value__component__size3))
(assert (forall ((a1 (Array Int integer))) (<= 0 (object__component__size3 a1))))
(assert (<= 0 value__alignment3))
(assert (forall ((a1 (Array Int integer))) (<= 0 (object__alignment3 a1))))
(define-fun bool_eq5 ((x us_t3) (y us_t3)) Bool (bool_eq (elts3 x) (to_rep1 (first6 (rt3 x))) (to_rep1 (last6 (rt3 x))) (elts3 y) (to_rep1 (first6 (rt3 y))) (to_rep1 (last6 (rt3 y)))))
(declare-fun user_eq7 (us_t3 us_t3) Bool)
(declare-const dummy7 us_t3)
(declare-datatypes () ((t27s__ref (mk_t27s__ref (t27s__content us_t3)))))
(define-fun t27s__ref___projection ((a1 t27s__ref)) us_t3 (t27s__content a1))
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_18)))
(assert true)
(assert (forall ((p1 us_t1)) (! (= (= (ascending p1) true) (or (< (length1 p1) 2) (forall ((i1 Int)) (=> (and (<= (first3 p1) i1) (<= i1 (- (last3 p1) 1))) (< (to_rep (select (to_array1 p1) i1)) (to_rep (select (to_array1 p1) (+ i1 1)))))))) :pattern ((ascending p1)))))
(declare-const o Int)
(declare-const o1 positive)
(declare-const o2 Int)
(declare-const temp___695 Int)
(assert (dynamic_invariant1 a true false true true))
(assert (dynamic_invariant2 p true false true true))
(assert (in_range1 i))
(assert (and (= (is_partition a p) true) (and (<= (to_rep1 (first2 (rt1 p))) i) (<= i (to_rep1 (last2 (rt1 p)))))))
(assert (= i (to_rep1 (first2 (rt1 p)))))
(assert (and (<= (to_rep1 (first2 (rt1 p))) i) (<= i (to_rep1 (last2 (rt1 p))))))
(assert (= o i))
(assert (= o1 (select (elts1 p) o)))
(assert (= o2 (to_rep o1)))
(assert (= temp___695 (- o2 1)))
(assert (<= (to_rep1 (first (rt a))) temp___695))
(assert (not (<= (to_rep1 (first (rt a))) (to_rep1 (first (rt a))))))
(check-sat)
(exit)
