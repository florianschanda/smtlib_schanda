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
(declare-sort digit_index_type 0)
(declare-fun digit_index_typeqtint (digit_index_type) Int)
(assert (forall ((i digit_index_type)) (and (<= 1 (digit_index_typeqtint i)) (<= (digit_index_typeqtint i) 65536))))
(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 65536)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (digit_index_type digit_index_type) Bool)
(declare-const dummy digit_index_type)
(declare-datatypes () ((digit_index_type__ref (mk_digit_index_type__ref (digit_index_type__content digit_index_type)))))
(define-fun digit_index_type__ref___projection ((a digit_index_type__ref)) digit_index_type (digit_index_type__content a))
(define-fun dynamic_invariant ((temp___expr_228 Int) (temp___is_init_224 Bool) (temp___skip_constant_225 Bool) (temp___do_toplevel_226 Bool) (temp___do_typ_inv_227 Bool)) Bool (=> (or (= temp___is_init_224 true) (<= 1 65536)) (in_range temp___expr_228)))
(declare-const temp___length_857 Int)
(assert (in_range temp___length_857))
(assert (<= 1 temp___length_857))
(assert (not (<= 1 1)))
(check-sat)
(exit)
