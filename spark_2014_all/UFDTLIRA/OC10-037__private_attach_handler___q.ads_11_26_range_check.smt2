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
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__q__pt__x integer) (rec__q__pt__y integer) (rec__q__pt__z integer)))))
(define-fun us_split_discrs___2__projection ((a us_split_discrs)) integer (rec__q__pt__x a))
(define-fun us_split_discrs___3__projection ((a us_split_discrs)) integer (rec__q__pt__y a))
(define-fun us_split_discrs___4__projection ((a us_split_discrs)) integer (rec__q__pt__z a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___2__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__q__pt us_main_type)))))
(define-fun us_split_fields_PT__projection ((a us_split_fields)) us_main_type (rec__q__pt a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___31__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___33__projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___34__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const q__pt__x__first__bit Int)
(declare-const q__pt__x__last__bit Int)
(declare-const q__pt__x__position Int)
(assert (<= 0 q__pt__x__first__bit))
(assert (< q__pt__x__first__bit q__pt__x__last__bit))
(assert (<= 0 q__pt__x__position))
(declare-const q__pt__y__first__bit Int)
(declare-const q__pt__y__last__bit Int)
(declare-const q__pt__y__position Int)
(assert (<= 0 q__pt__y__first__bit))
(assert (< q__pt__y__first__bit q__pt__y__last__bit))
(assert (<= 0 q__pt__y__position))
(declare-const q__pt__z__first__bit Int)
(declare-const q__pt__z__last__bit Int)
(declare-const q__pt__z__position Int)
(assert (<= 0 q__pt__z__first__bit))
(assert (< q__pt__z__first__bit q__pt__z__last__bit))
(assert (<= 0 q__pt__z__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-datatypes () ((pt__ref (mk_pt__ref (pt__content us_rep)))))
(define-fun pt__ref___projection ((a pt__ref)) us_rep (pt__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__q__pt1 us_main_type)))))
(define-fun us_split_fields_PT__2__projection ((a us_split_fields2)) us_main_type (rec__q__pt1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___32__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs2 us_split_discrs) (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___35__projection ((a us_rep1)) us_split_discrs (us_split_discrs2 a))
(define-fun us_rep___36__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (us_split_discrs2 a) (mk___split_fields (rec__q__pt1 (us_split_fields3 a)))))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (us_split_discrs1 r) (mk___split_fields1 (rec__q__pt (us_split_fields1 r)))))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun in_range1 ((rec__q__pt__x1 Int) (rec__q__pt__y1 Int) (rec__q__pt__z1 Int) (a us_rep)) Bool (and (and (= rec__q__pt__x1 (to_rep (rec__q__pt__x (us_split_discrs1 a)))) (= rec__q__pt__y1 (to_rep (rec__q__pt__y (us_split_discrs1 a))))) (= rec__q__pt__z1 (to_rep (rec__q__pt__z (us_split_discrs1 a))))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const q__pt__x__first__bit1 Int)
(declare-const q__pt__x__last__bit1 Int)
(declare-const q__pt__x__position1 Int)
(assert (<= 0 q__pt__x__first__bit1))
(assert (< q__pt__x__first__bit1 q__pt__x__last__bit1))
(assert (<= 0 q__pt__x__position1))
(declare-const q__pt__y__first__bit1 Int)
(declare-const q__pt__y__last__bit1 Int)
(declare-const q__pt__y__position1 Int)
(assert (<= 0 q__pt__y__first__bit1))
(assert (< q__pt__y__first__bit1 q__pt__y__last__bit1))
(assert (<= 0 q__pt__y__position1))
(declare-const q__pt__z__first__bit1 Int)
(declare-const q__pt__z__last__bit1 Int)
(declare-const q__pt__z__position1 Int)
(assert (<= 0 q__pt__z__first__bit1))
(assert (< q__pt__z__first__bit1 q__pt__z__last__bit1))
(assert (<= 0 q__pt__z__position1))
(declare-fun user_eq2 (us_rep1 us_rep1) Bool)
(declare-datatypes () ((tpoS__ref (mk_tpoS__ref (tpoS__content us_rep1)))))
(define-fun tpoS__ref___projection ((a tpoS__ref)) us_rep1 (tpoS__content a))
(define-fun dynamic_invariant ((temp___expr_1777 us_rep1) (temp___is_init_1773 Bool) (temp___skip_constant_1774 Bool) (temp___do_toplevel_1775 Bool) (temp___do_typ_inv_1776 Bool)) Bool (=> (not (= temp___skip_constant_1774 true)) (in_range1 1 2 3 (to_base temp___expr_1777))))
(define-fun default_initial_assumption ((temp___expr_1781 us_rep1) (temp___skip_top_level_1782 Bool)) Bool (and (and (= (to_rep (rec__q__pt__x (us_split_discrs2 temp___expr_1781))) 1) (= (to_rep (rec__q__pt__y (us_split_discrs2 temp___expr_1781))) 2)) (= (to_rep (rec__q__pt__z (us_split_discrs2 temp___expr_1781))) 3)))
(declare-const po__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-const us Int)
(assert (and (= us 3) (in_range 3)))
(assert (not (in_range 2)))
(check-sat)
(exit)
