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
(declare-sort po2T 0)
(declare-fun user_eq (po2T po2T) Bool)
(declare-const value__size Int)
(declare-fun object__size (po2T) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (po2T) Int)
(assert (<= 0 value__size))
(assert (forall ((a po2T)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a po2T)) (<= 0 (object__alignment a))))
(declare-datatypes () ((po2T__ref (mk_po2T__ref (po2T__content po2T)))))
(define-fun po2T__ref___projection ((a po2T__ref)) po2T (po2T__content a))
(declare-const self__ po2T)
(declare-const temp___1782 Bool)
(assert (not (= temp___1782 false)))
(check-sat)
(exit)
