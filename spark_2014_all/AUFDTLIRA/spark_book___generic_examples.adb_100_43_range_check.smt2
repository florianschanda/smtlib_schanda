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
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(declare-sort character 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (character character) Bool)
(declare-const dummy2 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (in_range1 low) (in_range1 high))))))
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
(declare-fun to_string (us_image) us_t)
(declare-fun from_string (us_t) us_image)
(declare-datatypes () ((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content a))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (natural natural) Bool)
(declare-const dummy4 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range3 temp___expr_39)))
(define-fun dynamic_invariant1 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range2 temp___expr_74)))
(define-fun dynamic_invariant2 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(declare-fun count (us_t Int) Int)
(declare-fun count__function_guard (Int us_t Int) Bool)
(assert (forall ((source us_t)) (forall ((pattern Int)) (! (=> (and (dynamic_invariant2 source true true true true) (dynamic_invariant1 pattern true true true true)) (dynamic_invariant (count source pattern) true false true true)) :pattern ((count source pattern))))))
(declare-sort t1 0)
(declare-fun first2 (t1) integer)
(declare-fun last2 (t1) integer)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep1 (first2 (mk1 f l))) f) (= (to_rep1 (last2 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (in_range1 low) (in_range1 high))))))
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
(declare-fun user_eq5 (us_t1 us_t1) Bool)
(declare-const dummy5 us_t1)
(declare-datatypes () ((array_type__ref (mk_array_type__ref (array_type__content us_t1)))))
(define-fun array_type__ref___projection ((a array_type__ref)) us_t1 (array_type__content a))
(declare-fun char_count (us_t1 Int) Int)
(declare-fun char_count__function_guard (Int us_t1 Int) Bool)
(declare-sort component_type 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq6 (component_type component_type) Bool)
(declare-const dummy6 component_type)
(declare-datatypes () ((component_type__ref (mk_component_type__ref (component_type__content component_type)))))
(define-fun component_type__ref___projection ((a component_type__ref)) component_type (component_type__content a))
(define-fun dynamic_invariant3 ((temp___expr_593 Int) (temp___is_init_589 Bool) (temp___skip_constant_590 Bool) (temp___do_toplevel_591 Bool) (temp___do_typ_inv_592 Bool)) Bool (=> (or (= temp___is_init_589 true) (<= 0 255)) (in_range4 temp___expr_593)))
(define-fun dynamic_invariant4 ((temp___expr_607 us_t1) (temp___is_init_603 Bool) (temp___skip_constant_604 Bool) (temp___do_toplevel_605 Bool) (temp___do_typ_inv_606 Bool)) Bool (=> (not (= temp___skip_constant_604 true)) (dynamic_property1 1 2147483647 (first3 temp___expr_607) (last3 temp___expr_607))))
(assert (forall ((source us_t1)) (forall ((pattern Int)) (! (=> (and (dynamic_invariant4 source true true true true) (dynamic_invariant3 pattern true true true true)) (dynamic_invariant (char_count source pattern) true false true true)) :pattern ((char_count source pattern))))))
(declare-sort percent 0)
(declare-fun percentqtint (percent) Int)
(assert (forall ((i percent)) (and (<= 0 (percentqtint i)) (<= (percentqtint i) 100))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq7 (percent percent) Bool)
(declare-const dummy7 percent)
(declare-datatypes () ((percent__ref (mk_percent__ref (percent__content percent)))))
(define-fun percent__ref___projection ((a percent__ref)) percent (percent__content a))
(define-fun to_rep2 ((x percent)) Int (percentqtint x))
(declare-fun of_rep2 (Int) percent)
(assert (forall ((x percent)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x percent)) (! (in_range5 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int percent))))))
(declare-fun slide1 ((Array Int percent) Int Int) (Array Int percent))
(assert (forall ((a (Array Int percent))) (forall ((first4 Int)) (! (= (slide1 a first4 first4) a) :pattern ((slide1 a first4 first4))))))
(assert (forall ((a (Array Int percent))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq3 ((a (Array Int percent)) (a__first Int) (a__last Int) (b (Array Int percent)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_173 Int)) (=> (and (<= a__first temp___idx_173) (<= temp___idx_173 a__last)) (= (to_rep2 (select a temp___idx_173)) (to_rep2 (select b (+ (- b__first a__first) temp___idx_173))))))) true false))
(assert (forall ((a (Array Int percent)) (b (Array Int percent))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq3 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_173 Int)) (=> (and (<= a__first temp___idx_173) (<= temp___idx_173 a__last)) (= (to_rep2 (select a temp___idx_173)) (to_rep2 (select b (+ (- b__first a__first) temp___idx_173)))))))))))
(declare-sort t2 0)
(declare-fun first4 (t2) character)
(declare-fun last4 (t2) character)
(declare-fun mk2 (Int Int) t2)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep (first4 (mk2 f l))) f) (= (to_rep (last4 (mk2 f l))) l)))) :pattern ((mk2 f l)))))
(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range2 low) (in_range2 high))))))
(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int percent)) (rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int percent) (elts2 a))
(define-fun of_array2 ((a (Array Int percent)) (f Int) (l Int)) us_t2 (mk___t2 a (mk2 f l)))
(define-fun first5 ((a us_t2)) Int (to_rep (first4 (rt2 a))))
(define-fun last5 ((a us_t2)) Int (to_rep (last4 (rt2 a))))
(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last5 a)) (+ (- (last5 a) (first5 a)) 1) 0))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int percent)) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int percent)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int percent)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int percent))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size2))
(assert (forall ((a (Array Int percent))) (<= 0 (object__component__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int percent))) (<= 0 (object__alignment2 a))))
(define-fun bool_eq4 ((x us_t2) (y us_t2)) Bool (bool_eq3 (elts2 x) (to_rep (first4 (rt2 x))) (to_rep (last4 (rt2 x))) (elts2 y) (to_rep (first4 (rt2 y))) (to_rep (last4 (rt2 y)))))
(declare-fun user_eq8 (us_t2 us_t2) Bool)
(declare-const dummy8 us_t2)
(declare-datatypes () ((array_type__ref1 (mk_array_type__ref1 (array_type__content1 us_t2)))))
(define-fun array_type__ref___2__projection ((a array_type__ref1)) us_t2 (array_type__content1 a))
(declare-fun percent_count (us_t2 Int) Int)
(declare-fun percent_count__function_guard (Int us_t2 Int) Bool)
(declare-sort component_type1 0)
(declare-fun component_typeqtint (component_type1) Int)
(assert (forall ((i component_type1)) (and (<= 0 (component_typeqtint i)) (<= (component_typeqtint i) 100))))
(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq9 (component_type1 component_type1) Bool)
(declare-const dummy9 component_type1)
(declare-datatypes () ((component_type__ref1 (mk_component_type__ref1 (component_type__content1 component_type1)))))
(define-fun component_type__ref___2__projection ((a component_type__ref1)) component_type1 (component_type__content1 a))
(define-fun dynamic_invariant5 ((temp___expr_638 Int) (temp___is_init_634 Bool) (temp___skip_constant_635 Bool) (temp___do_toplevel_636 Bool) (temp___do_typ_inv_637 Bool)) Bool (=> (or (= temp___is_init_634 true) (<= 0 100)) (in_range6 temp___expr_638)))
(define-fun dynamic_invariant6 ((temp___expr_652 us_t2) (temp___is_init_648 Bool) (temp___skip_constant_649 Bool) (temp___do_toplevel_650 Bool) (temp___do_typ_inv_651 Bool)) Bool (=> (not (= temp___skip_constant_649 true)) (dynamic_property2 0 255 (first5 temp___expr_652) (last5 temp___expr_652))))
(assert (forall ((source us_t2)) (forall ((pattern Int)) (! (=> (and (dynamic_invariant6 source true true true true) (dynamic_invariant5 pattern true true true true)) (dynamic_invariant (percent_count source pattern) true false true true)) :pattern ((percent_count source pattern))))))
(declare-sort t3 0)
(declare-fun first6 (t3) character)
(declare-fun last6 (t3) character)
(declare-fun mk3 (Int Int) t3)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep (first6 (mk3 f l))) f) (= (to_rep (last6 (mk3 f l))) l)))) :pattern ((mk3 f l)))))
(define-fun dynamic_property3 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range2 low) (in_range2 high))))))
(declare-datatypes () ((us_t3 (mk___t3 (elts3 (Array Int percent)) (rt3 t3)))))
(define-fun to_array3 ((a us_t3)) (Array Int percent) (elts3 a))
(define-fun of_array3 ((a (Array Int percent)) (f Int) (l Int)) us_t3 (mk___t3 a (mk3 f l)))
(define-fun first7 ((a us_t3)) Int (to_rep (first6 (rt3 a))))
(define-fun last7 ((a us_t3)) Int (to_rep (last6 (rt3 a))))
(define-fun length3 ((a us_t3)) Int (ite (<= (first7 a) (last7 a)) (+ (- (last7 a) (first7 a)) 1) 0))
(declare-const value__size3 Int)
(declare-fun object__size3 ((Array Int percent)) Int)
(declare-const value__component__size3 Int)
(declare-fun object__component__size3 ((Array Int percent)) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 ((Array Int percent)) Int)
(assert (<= 0 value__size3))
(assert (forall ((a (Array Int percent))) (<= 0 (object__size3 a))))
(assert (<= 0 value__component__size3))
(assert (forall ((a (Array Int percent))) (<= 0 (object__component__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a (Array Int percent))) (<= 0 (object__alignment3 a))))
(define-fun bool_eq5 ((x us_t3) (y us_t3)) Bool (bool_eq3 (elts3 x) (to_rep (first6 (rt3 x))) (to_rep (last6 (rt3 x))) (elts3 y) (to_rep (first6 (rt3 y))) (to_rep (last6 (rt3 y)))))
(declare-fun user_eq10 (us_t3 us_t3) Bool)
(declare-const dummy10 us_t3)
(declare-datatypes () ((array_type__ref2 (mk_array_type__ref2 (array_type__content2 us_t3)))))
(define-fun array_type__ref___3__projection ((a array_type__ref2)) us_t3 (array_type__content2 a))
(declare-sort field 0)
(declare-fun fieldqtint (field) Int)
(assert (forall ((i field)) (and (<= 0 (fieldqtint i)) (<= (fieldqtint i) 255))))
(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq11 (field field) Bool)
(declare-const dummy11 field)
(declare-datatypes () ((field__ref (mk_field__ref (field__content field)))))
(define-fun field__ref___projection ((a field__ref)) field (field__content a))
(define-fun dynamic_invariant7 ((temp___expr_528 Int) (temp___is_init_524 Bool) (temp___skip_constant_525 Bool) (temp___do_toplevel_526 Bool) (temp___do_typ_inv_527 Bool)) Bool (=> (or (= temp___is_init_524 true) (<= 0 255)) (in_range7 temp___expr_528)))
(declare-sort number_base 0)
(declare-fun number_baseqtint (number_base) Int)
(assert (forall ((i number_base)) (and (<= 2 (number_baseqtint i)) (<= (number_baseqtint i) 16))))
(define-fun in_range8 ((x Int)) Bool (and (<= 2 x) (<= x 16)))
(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)
(declare-fun user_eq12 (number_base number_base) Bool)
(declare-const dummy12 number_base)
(declare-datatypes () ((number_base__ref (mk_number_base__ref (number_base__content number_base)))))
(define-fun number_base__ref___projection ((a number_base__ref)) number_base (number_base__content a))
(define-fun dynamic_invariant8 ((temp___expr_535 Int) (temp___is_init_531 Bool) (temp___skip_constant_532 Bool) (temp___do_toplevel_533 Bool) (temp___do_typ_inv_534 Bool)) Bool (=> (or (= temp___is_init_531 true) (<= 2 16)) (in_range8 temp___expr_535)))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort t4 0)
(declare-fun first8 (t4) character)
(declare-fun last8 (t4) character)
(declare-fun mk4 (Int Int) t4)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep (first8 (mk4 f l))) f) (= (to_rep (last8 (mk4 f l))) l)))) :pattern ((mk4 f l)))))
(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range2 low) (in_range2 high))))))
(declare-datatypes () ((us_t4 (mk___t4 (elts4 (Array Int percent)) (rt4 t4)))))
(define-fun to_array4 ((a us_t4)) (Array Int percent) (elts4 a))
(define-fun of_array4 ((a (Array Int percent)) (f Int) (l Int)) us_t4 (mk___t4 a (mk4 f l)))
(define-fun first9 ((a us_t4)) Int (to_rep (first8 (rt4 a))))
(define-fun last9 ((a us_t4)) Int (to_rep (last8 (rt4 a))))
(define-fun length4 ((a us_t4)) Int (ite (<= (first9 a) (last9 a)) (+ (- (last9 a) (first9 a)) 1) 0))
(declare-const value__size4 Int)
(declare-fun object__size4 ((Array Int percent)) Int)
(declare-const value__component__size4 Int)
(declare-fun object__component__size4 ((Array Int percent)) Int)
(declare-const value__alignment4 Int)
(declare-fun object__alignment4 ((Array Int percent)) Int)
(assert (<= 0 value__size4))
(assert (forall ((a (Array Int percent))) (<= 0 (object__size4 a))))
(assert (<= 0 value__component__size4))
(assert (forall ((a (Array Int percent))) (<= 0 (object__component__size4 a))))
(assert (<= 0 value__alignment4))
(assert (forall ((a (Array Int percent))) (<= 0 (object__alignment4 a))))
(define-fun bool_eq6 ((x us_t4) (y us_t4)) Bool (bool_eq3 (elts4 x) (to_rep (first8 (rt4 x))) (to_rep (last8 (rt4 x))) (elts4 y) (to_rep (first8 (rt4 y))) (to_rep (last8 (rt4 y)))))
(declare-fun user_eq13 (us_t4 us_t4) Bool)
(declare-const dummy13 us_t4)
(declare-datatypes () ((percent_array__ref (mk_percent_array__ref (percent_array__content us_t4)))))
(define-fun percent_array__ref___projection ((a percent_array__ref)) us_t4 (percent_array__content a))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort t17b 0)
(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 12)))
(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)
(declare-fun user_eq14 (t17b t17b) Bool)
(declare-const dummy14 t17b)
(declare-datatypes () ((t17b__ref (mk_t17b__ref (t17b__content t17b)))))
(define-fun t17b__ref___projection ((a t17b__ref)) t17b (t17b__content a))
(declare-const my_percents__first character)
(declare-const my_percents__last character)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-fun generic_examples__my_percents__aggregate_def (Int Int Int Int Int Int Int Int Int Int Int Int Int) (Array Int percent))
(declare-fun temp___String_Literal_713 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_713 us_void_param) 1)) 72) (= (to_rep (select (temp___String_Literal_713 us_void_param) 2)) 111)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 3)) 119)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 4)) 32)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 5)) 110)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 6)) 111)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 7)) 119)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 8)) 32)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 9)) 98)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 10)) 114)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 11)) 111)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 12)) 119)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 13)) 110)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 15)) 99)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 16)) 111)) (= (to_rep (select (temp___String_Literal_713 us_void_param) 17)) 119)) :pattern ((temp___String_Literal_713 us_void_param)))))
(declare-fun temp___String_Literal_714 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_714 us_void_param) 1)) 72) (= (to_rep (select (temp___String_Literal_714 us_void_param) 2)) 111)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 3)) 119)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 4)) 32)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 5)) 110)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 6)) 111)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 7)) 119)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 8)) 32)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 9)) 98)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 10)) 114)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 11)) 111)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 12)) 119)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 13)) 110)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 15)) 99)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 16)) 111)) (= (to_rep (select (temp___String_Literal_714 us_void_param) 17)) 119)) :pattern ((temp___String_Literal_714 us_void_param)))))
(define-fun dynamic_invariant9 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(define-fun dynamic_invariant10 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(define-fun dynamic_invariant11 ((temp___expr_625 Int) (temp___is_init_621 Bool) (temp___skip_constant_622 Bool) (temp___do_toplevel_623 Bool) (temp___do_typ_inv_624 Bool)) Bool (=> (or (= temp___is_init_621 true) (<= 0 100)) (in_range5 temp___expr_625)))
(define-fun dynamic_invariant12 ((temp___expr_632 us_t4) (temp___is_init_628 Bool) (temp___skip_constant_629 Bool) (temp___do_toplevel_630 Bool) (temp___do_typ_inv_631 Bool)) Bool (=> (not (= temp___skip_constant_629 true)) (dynamic_property4 0 255 (first9 temp___expr_632) (last9 temp___expr_632))))
(declare-const rliteral percent)
(assert (= (percentqtint rliteral) 5))
(declare-const rliteral1 percent)
(assert (= (percentqtint rliteral1) 6))
(declare-const rliteral2 percent)
(assert (= (percentqtint rliteral2) 7))
(declare-const rliteral3 percent)
(assert (= (percentqtint rliteral3) 3))
(declare-const rliteral4 percent)
(assert (= (percentqtint rliteral4) 4))
(declare-const rliteral5 percent)
(assert (= (percentqtint rliteral5) 19))
(declare-const rliteral6 percent)
(assert (= (percentqtint rliteral6) 16))
(declare-const rliteral7 percent)
(assert (= (percentqtint rliteral7) 23))
(declare-const rliteral8 percent)
(assert (= (percentqtint rliteral8) 45))
(assert (forall ((temp___698 Int) (temp___699 Int) (temp___700 Int) (temp___701 Int) (temp___702 Int) (temp___703 Int) (temp___704 Int) (temp___705 Int) (temp___706 Int) (temp___707 Int) (temp___708 Int) (temp___709 Int) (temp___710 Int)) (let ((temp___697 (generic_examples__my_percents__aggregate_def temp___698 temp___699 temp___700 temp___701 temp___702 temp___703 temp___704 temp___705 temp___706 temp___707 temp___708 temp___709 temp___710))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (dynamic_invariant11 temp___698 true true true true) (dynamic_invariant11 temp___699 true true true true)) (dynamic_invariant11 temp___700 true true true true)) (dynamic_invariant11 temp___701 true true true true)) (dynamic_invariant11 temp___702 true true true true)) (dynamic_invariant11 temp___703 true true true true)) (dynamic_invariant11 temp___704 true true true true)) (dynamic_invariant11 temp___705 true true true true)) (dynamic_invariant11 temp___706 true true true true)) (dynamic_invariant11 temp___707 true true true true)) (dynamic_invariant11 temp___708 true true true true)) (dynamic_invariant11 temp___709 true true true true)) (dynamic_invariant11 temp___710 true true true true)) (and (and (and (and (and (and (and (and (and (and (and (and (= (select temp___697 0) rliteral) (= (select temp___697 1) rliteral1)) (= (select temp___697 2) rliteral2)) (= (select temp___697 3) rliteral)) (= (select temp___697 4) rliteral3)) (= (select temp___697 5) rliteral4)) (= (select temp___697 6) rliteral5)) (= (select temp___697 7) rliteral6)) (= (select temp___697 8) rliteral)) (= (select temp___697 9) rliteral7)) (= (select temp___697 10) rliteral8)) (= (select temp___697 11) rliteral4)) (= (select temp___697 12) rliteral3))))))
(define-fun dynamic_invariant13 ((temp___expr_684 us_t3) (temp___is_init_680 Bool) (temp___skip_constant_681 Bool) (temp___do_toplevel_682 Bool) (temp___do_typ_inv_683 Bool)) Bool (=> (not (= temp___skip_constant_681 true)) (dynamic_property3 0 255 (first7 temp___expr_684) (last7 temp___expr_684))))
(declare-const default_width Int)
(declare-const default_base Int)
(declare-const the_count Int)
(declare-const my_percents (Array Int percent))
(declare-const o Int)
(declare-const o1 (Array Int character))
(declare-const o2 t1)
(declare-const o3 Int)
(declare-const result (Array Int percent))
(declare-const my_percents1 (Array Int percent))
(declare-const result1 Int)
(declare-const the_count1 Int)
(declare-const result2 Int)
(declare-const the_count2 Int)
(assert (in_range7 default_width))
(assert (in_range8 default_base))
(assert (=> (<= 0 2147483647) (in_range3 the_count)))
(assert (= result my_percents))
(assert (= my_percents1 (generic_examples__my_percents__aggregate_def 5 6 7 5 3 4 19 16 5 23 45 4 3)))
(assert (= (to_rep my_percents__first) (to_rep (first8 (mk4 0 12)))))
(assert (= (to_rep my_percents__last) (to_rep (last8 (mk4 0 12)))))
(assert (dynamic_property4 0 255 (to_rep my_percents__first) (to_rep my_percents__last)))
(assert (and (= o (count (mk___t (temp___String_Literal_713 Tuple0) (mk 1 17)) 119)) (in_range3 o)))
(assert (= result1 the_count))
(assert (= the_count1 o))
(assert (dynamic_property1 1 2147483647 1 17))
(assert (= (temp___String_Literal_714 Tuple0) o1))
(assert (= (mk1 1 17) o2))
(assert (and (= o3 (char_count (mk___t1 o1 o2) 119)) (in_range3 o3)))
(assert (= result2 the_count1))
(assert (= the_count2 o3))
(assert (not (dynamic_property2 0 255 (to_rep my_percents__first) (to_rep my_percents__last))))
(check-sat)
(exit)
