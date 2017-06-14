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

(declare-sort int20 0)

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 20)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (int20 int20) Bool)

(declare-fun dummy () int20)

(declare-datatypes () ((int20__ref (mk_int20__ref (int20__content int20)))))
(define-fun int20__ref___projection ((a int20__ref)) int20 (int20__content a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 1 20)) (in_range temp___expr_135)))

(declare-sort int10 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (int10 int10) Bool)

(declare-fun dummy1 () int10)

(declare-datatypes () ((int10__ref (mk_int10__ref (int10__content int10)))))
(define-fun int10__ref___projection ((a int10__ref)) int10 (int10__content a))

(define-fun dynamic_invariant1 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 1 10)) (in_range1 temp___expr_141)))

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun j () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun inrange__add1__result () Int)

(declare-fun result () Int)

(declare-fun inrange__add1__result1 () Int)

(declare-fun inrange__add1__result2 () Int)

(declare-fun inrange__add1__result3 () Int)

(declare-fun inrange__add1__result4 () Int)

(declare-fun inrange__add1__result5 () Int)

(declare-fun result1 () Int)

;; H
  (assert (in_range i))

;; H
  (assert (in_range1 j))

;; H
  (assert (<= i 10))

;; H
  (assert (= inrange__add1__result1 inrange__add1__result2))

;; H
  (assert (= inrange__add1__result3 inrange__add1__result1))

;; H
  (assert (= result inrange__add1__result))

;; H
  (assert (= inrange__add1__result1 (+ i j)))

;; H
  (assert
  (= (mk_int__ref inrange__add1__result4) (mk_int__ref
                                          inrange__add1__result2)))

;; H
  (assert (= inrange__add1__result5 inrange__add1__result3))

;; H
  (assert (= result1 inrange__add1__result4))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (<= inrange__add1__result4 20)))
(check-sat)
