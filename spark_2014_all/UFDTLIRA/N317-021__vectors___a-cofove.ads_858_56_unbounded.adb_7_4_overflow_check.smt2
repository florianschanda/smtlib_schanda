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
(declare-sort capacity_range 0)
(declare-fun capacity_rangeqtint (capacity_range) Int)
(assert (forall ((i capacity_range)) (and (<= 0 (capacity_rangeqtint i)) (<= (capacity_rangeqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (capacity_range capacity_range) Bool)
(declare-const dummy capacity_range)
(declare-datatypes () ((capacity_range__ref (mk_capacity_range__ref (capacity_range__content capacity_range)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) capacity_range (capacity_range__content a))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__unbounded__vect__vector__capacity capacity_range)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) capacity_range (rec__unbounded__vect__vector__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__unbounded__vect__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type (rec__unbounded__vect__vector a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const unbounded__vect__vector__capacity__first__bit Int)
(declare-const unbounded__vect__vector__capacity__last__bit Int)
(declare-const unbounded__vect__vector__capacity__position Int)
(assert (<= 0 unbounded__vect__vector__capacity__first__bit))
(assert (< unbounded__vect__vector__capacity__first__bit unbounded__vect__vector__capacity__last__bit))
(assert (<= 0 unbounded__vect__vector__capacity__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content a))
(define-fun to_rep ((x capacity_range)) Int (capacity_rangeqtint x))
(declare-fun of_rep (Int) capacity_range)
(assert (forall ((x capacity_range)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x capacity_range)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun capacity ((container us_rep)) Int (ite (= (distinct 0 0) true) (to_rep (rec__unbounded__vect__vector__capacity (us_split_discrs1 container))) 2147483647))
(declare-fun capacity__function_guard (Int us_rep) Bool)
(define-fun dynamic_invariant ((temp___expr_235 Int) (temp___is_init_231 Bool) (temp___skip_constant_232 Bool) (temp___do_toplevel_233 Bool) (temp___do_typ_inv_234 Bool)) Bool (=> (or (= temp___is_init_231 true) (<= 0 2147483647)) (in_range1 temp___expr_235)))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(assert (forall ((container us_rep)) (! (let ((result (length container))) (and (<= result (capacity container)) (dynamic_invariant result true false true true))) :pattern ((length container)))))
(declare-sort tcount_typeB 0)
(declare-fun tcount_typeBqtint (tcount_typeB) Int)
(assert (forall ((i tcount_typeB)) (and (<= (- 2147483648) (tcount_typeBqtint i)) (<= (tcount_typeBqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (tcount_typeB tcount_typeB) Bool)
(declare-const dummy2 tcount_typeB)
(declare-datatypes () ((tcount_typeB__ref (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB (tcount_typeB__content a))
(declare-const target__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const source__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const target__split_fields us_main_type)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(assert (and (= o (length (mk___rep target__split_discrs (mk___split_fields target__split_fields)))) (and (in_range1 o) (<= o (capacity (mk___rep target__split_discrs (mk___split_fields target__split_fields)))))))
(assert (and (= o1 (capacity (mk___rep target__split_discrs (mk___split_fields target__split_fields)))) (and (in_range1 o1) (= o1 (ite (= (distinct 0 0) true) (to_rep (rec__unbounded__vect__vector__capacity target__split_discrs)) 2147483647)))))
(assert (= o2 (- o1 o)))
(assert (not (in_range2 o2)))
(check-sat)
(exit)
