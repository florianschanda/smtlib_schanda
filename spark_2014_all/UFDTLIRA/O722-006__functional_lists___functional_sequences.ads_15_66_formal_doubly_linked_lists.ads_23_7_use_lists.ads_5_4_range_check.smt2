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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-sort us_rep 0)
(declare-fun bool_eq (us_rep us_rep) Bool)
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((cursor__ref (mk_cursor__ref (cursor__content us_rep)))))
(define-fun cursor__ref___2__projection ((a cursor__ref)) us_rep (cursor__content a))
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content us_rep)))))
(define-fun element_type__ref___13__projection ((a element_type__ref)) us_rep (element_type__content a))
(declare-sort us_main_type1 0)
(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)
(declare-sort us_rep1 0)
(declare-fun bool_eq1 (us_rep1 us_rep1) Bool)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-fun user_eq2 (us_rep1 us_rep1) Bool)
(declare-const dummy2 us_rep1)
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content a))
(declare-fun get (us_rep1 Int us_type_of_heap) us_rep)
(declare-fun get__function_guard (us_rep us_rep1 Int us_type_of_heap) Bool)
(declare-fun length (us_rep1) Int)
(declare-fun length__function_guard (Int us_rep1) Bool)
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range1 temp___expr_39)))
(declare-const s1 us_rep1)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const s2 us_rep1)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const result Bool)
(assert (and (= o2 (length s2)) (in_range1 o2)))
(assert (and (= o3 (length s1)) (in_range1 o3)))
(assert (= result (ite (= o3 o2) true false)))
(assert (= result true))
(assert (and (= o (length s1)) (in_range1 o)))
(assert (= o1 (- o 1)))
(assert (not (in_range1 o1)))
(check-sat)
(exit)
