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
(declare-sort t1 0)
(declare-fun t1qtint (t1) Int)
(assert (forall ((i t1)) (and (<= (- 10) (t1qtint i)) (<= (t1qtint i) 10))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 10) x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (t1 t1) Bool)
(declare-const dummy t1)
(declare-datatypes () ((t1__ref (mk_t1__ref (t1__content t1)))))
(define-fun t1__ref___projection ((a t1__ref)) t1 (t1__content a))
(define-fun dynamic_invariant ((temp___expr_200 Int) (temp___is_init_196 Bool) (temp___skip_constant_197 Bool) (temp___do_toplevel_198 Bool) (temp___do_typ_inv_199 Bool)) Bool (=> (or (= temp___is_init_196 true) (<= (- 10) 10)) (in_range1 temp___expr_200)))
(declare-sort t2 0)
(declare-fun t2qtint (t2) Int)
(assert (forall ((i t2)) (and (<= (- 10) (t2qtint i)) (<= (t2qtint i) 10))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 10) x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (t2 t2) Bool)
(declare-const dummy1 t2)
(declare-datatypes () ((t2__ref (mk_t2__ref (t2__content t2)))))
(define-fun t2__ref___projection ((a t2__ref)) t2 (t2__content a))
(declare-const x Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant1 ((temp___expr_207 Int) (temp___is_init_203 Bool) (temp___skip_constant_204 Bool) (temp___do_toplevel_205 Bool) (temp___do_typ_inv_206 Bool)) Bool (and (=> (or (= temp___is_init_203 true) (<= (- 10) 10)) (in_range2 temp___expr_207)) (=> (= temp___do_toplevel_205 true) (=> (= temp___is_init_203 true) (and (<= (- 1) temp___expr_207) (<= temp___expr_207 1))))))
(define-fun dynamic_predicate ((temp___211 Int)) Bool (and (<= (- 1) temp___211) (<= temp___211 1)))
(declare-const temp___215 Int)
(assert (in_range1 x))
(assert (and (in_range2 x) (let ((temp___218 x)) (and (<= (- 1) temp___218) (<= temp___218 1)))))
(assert (and (= temp___215 x) (in_range2 x)))
(assert (not (<= (- 1) temp___215)))
(check-sat)
(exit)
