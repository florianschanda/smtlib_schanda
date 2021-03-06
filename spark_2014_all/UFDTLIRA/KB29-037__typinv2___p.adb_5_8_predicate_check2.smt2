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
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__p__t__access_count natural) (rec__p__t__locked Bool)))))
(define-fun us_split_fields_Access_Count__projection ((a us_split_fields)) natural (rec__p__t__access_count a))
(define-fun us_split_fields_Locked__projection ((a us_split_fields)) Bool (rec__p__t__locked a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__p__t__access_count (us_split_fields1 a))) (to_rep (rec__p__t__access_count (us_split_fields1 b)))) (= (rec__p__t__locked (us_split_fields1 a)) (rec__p__t__locked (us_split_fields1 b)))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const p__t__access_count__first__bit Int)
(declare-const p__t__access_count__last__bit Int)
(declare-const p__t__access_count__position Int)
(assert (<= 0 p__t__access_count__first__bit))
(assert (< p__t__access_count__first__bit p__t__access_count__last__bit))
(assert (<= 0 p__t__access_count__position))
(declare-const p__t__locked__first__bit Int)
(declare-const p__t__locked__last__bit Int)
(declare-const p__t__locked__position Int)
(assert (<= 0 p__t__locked__first__bit))
(assert (< p__t__locked__first__bit p__t__locked__last__bit))
(assert (<= 0 p__t__locked__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))
(define-fun dynamic_invariant ((temp___expr_158 us_rep) (temp___is_init_154 Bool) (temp___skip_constant_155 Bool) (temp___do_toplevel_156 Bool) (temp___do_typ_inv_157 Bool)) Bool (=> (= temp___do_toplevel_156 true) (=> (= temp___is_init_154 true) (= (= (rec__p__t__locked (us_split_fields1 temp___expr_158)) true) (< 3 (to_rep (rec__p__t__access_count (us_split_fields1 temp___expr_158))))))))
(define-fun default_initial_assumption ((temp___expr_160 us_rep) (temp___skip_top_level_161 Bool)) Bool (and (= (to_rep (rec__p__t__access_count (us_split_fields1 temp___expr_160))) 0) (= (rec__p__t__locked (us_split_fields1 temp___expr_160)) (distinct 0 0))))
(define-fun dynamic_predicate ((temp___162 us_rep)) Bool (= (= (rec__p__t__locked (us_split_fields1 temp___162)) true) (< 3 (to_rep (rec__p__t__access_count (us_split_fields1 temp___162))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i1s us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(define-fun dynamic_invariant2 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-const v__split_fields natural)
(declare-const v__split_fields1 Bool)
(declare-const o Int)
(declare-const o1 natural)
(declare-const o2 natural)
(declare-const o3 Bool)
(declare-const temp___167 natural)
(declare-const temp___1671 Bool)
(declare-const temp___168 natural)
(declare-const temp___1681 Bool)
(declare-const result natural)
(declare-const result1 Bool)
(declare-const v__split_fields2 natural)
(declare-const v__split_fields3 Bool)
(assert (let ((temp___159 i1s)) (= (= (rec__p__t__locked (us_split_fields1 temp___159)) true) (< 3 (to_rep (rec__p__t__access_count (us_split_fields1 temp___159)))))))
(assert (= (= v__split_fields1 true) (< 3 (to_rep v__split_fields))))
(assert (and (= o (+ (to_rep v__split_fields) 1)) (in_range1 (+ (to_rep v__split_fields) 1))))
(assert (= (to_rep o1) o))
(assert (= o1 o2))
(assert (= v__split_fields1 o3))
(assert (= temp___167 o2))
(assert (= temp___1671 o3))
(assert (= (= temp___1671 true) (< 3 (to_rep temp___167))))
(assert (= (mk___rep (mk___split_fields temp___168 temp___1681)) (mk___rep (mk___split_fields temp___167 temp___1671))))
(assert (= result v__split_fields))
(assert (= result1 v__split_fields1))
(assert (= temp___168 v__split_fields2))
(assert (= temp___1681 v__split_fields3))
(assert (= (distinct 1 0) true))
(assert (not (< 3 (to_rep v__split_fields2))))
(check-sat)
(exit)
