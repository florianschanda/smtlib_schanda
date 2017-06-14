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

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun x () Bool)

(declare-fun y () Bool)

(declare-fun result () Bool)

(declare-fun x1 () Bool)

(declare-fun result1 () Bool)

(declare-fun y1 () Bool)

(declare-fun result2 () Bool)

(declare-fun x2 () Bool)

(declare-fun result3 () Bool)

(declare-fun x3 () Bool)

(declare-fun result4 () Bool)

(declare-fun y2 () Bool)

(declare-fun x4 () Bool)

(declare-fun y3 () Bool)

(declare-fun x5 () Bool)

(declare-fun y4 () Bool)

;; H
  (assert (= result x))

;; H
  (assert
  (= x1 (ite (= (ite (= x false) y true) true) (ite (= (ite (= x true) 
                                                       y false) false) true false) false)))

;; H
  (assert (= result1 y))

;; H
  (assert (= y1 (ite (= (to_int1 x1) (to_int1 y)) true false)))

;; H
  (assert (= result2 x1))

;; H
  (assert
  (= x2 (ite (= (ite (= x1 false) y1 true) true) (ite (= (ite (= x1 true) 
                                                         y1 false) false) true false) false)))

;; H
  (assert (= result3 x2))

;; H
  (assert (= x3 (ite (not (= x2 true)) true false)))

;; H
  (assert (= result4 y1))

;; H
  (assert (= y2 (ite (not (= y1 true)) true false)))

;; H
  (assert (= y2 y3))

;; H
  (assert (= x3 x4))

;; H
  (assert (= y4 y2))

;; H
  (assert (= x5 x3))

;; H
  (assert (= x4 true))

(assert
;; WP_parameter_def
 ;; File "bool.adb", line 1, characters 0-0
  (not (= y true)))
(check-sat)
