;; produced by cvc4_14.drv ;;
(set-logic AUFBVDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.0)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-fun us_null_ext__ () us_private)

(declare-sort us_type_of_heap 0)

(declare-datatypes ()
((us_type_of_heap__ref
 (mk___type_of_heap__ref (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)

(declare-datatypes () ((int__ref (mk_int__ref (int__content Int)))))
(declare-datatypes () ((bool__ref (mk_bool__ref (bool__content Bool)))))
(declare-datatypes () ((real__ref (mk_real__ref (real__content Real)))))
(declare-datatypes ()
((us_private__ref (mk___private__ref (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))

(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))

(define-fun real__ref___projection ((a real__ref)) Real (real__content a))

(define-fun us_private__ref___projection ((a us_private__ref)) us_private 
  (us_private__content a))

(declare-sort positive_with_hole 0)

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (positive_with_hole positive_with_hole) Bool)

(declare-fun dummy () positive_with_hole)

(declare-datatypes ()
((positive_with_hole__ref
 (mk_positive_with_hole__ref
 (positive_with_hole__content positive_with_hole)))))
(define-fun positive_with_hole__ref___projection ((a positive_with_hole__ref)) positive_with_hole 
  (positive_with_hole__content a))

(define-fun dynamic_invariant ((temp___expr_159 Int)
  (temp___is_init_156 Bool) (temp___skip_constant_157 Bool)
  (temp___do_toplevel_158 Bool)) Bool (and
                                      (=>
                                      (or (= temp___is_init_156 true)
                                      (<= 1 2147483647)) (in_range
                                      temp___expr_159))
                                      (=> (= temp___do_toplevel_158 true)
                                      (=> (= temp___is_init_156 true)
                                      (or
                                      (and (<= 1 temp___expr_159)
                                      (<= temp___expr_159 9))
                                      (and (<= 21 temp___expr_159)
                                      (<= temp___expr_159 2147483647)))))))

(define-fun dynamic_predicate ((temp___163 Int)) Bool (or
                                                      (and (<= 1 temp___163)
                                                      (<= temp___163 9))
                                                      (and (<= 21 temp___163)
                                                      (<= temp___163 2147483647))))

(declare-fun i5s () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun v () Int)

;; H
  (assert (dynamic_invariant i5s true false true))

;; H
  (assert (dynamic_invariant v true false true))

;; H
  (assert (not (= v 15)))

(assert
;; WP_parameter_def
 ;; File "tests.adb", line 9, characters 0-0
  (not (or (and (<= 1 10) (<= 10 9)) (and (<= 21 10) (<= 10 2147483647)))))
(check-sat)
