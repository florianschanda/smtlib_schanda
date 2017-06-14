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

(declare-sort my_int 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 10000)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (my_int my_int) Bool)

(declare-fun dummy () my_int)

(declare-datatypes ()
((my_int__ref (mk_my_int__ref (my_int__content my_int)))))
(define-fun my_int__ref___projection ((a my_int__ref)) my_int (my_int__content
                                                              a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 10000)) (in_range
                                      temp___expr_135)))

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun res () Int)

(declare-fun sat__add__result () Int)

(declare-fun o () Int)

(declare-fun result () Int)

(declare-fun res1 () Int)

(declare-fun result1 () Int)

(declare-fun res2 () Int)

(declare-fun result2 () Int)

(declare-fun sat__add__result1 () Int)

(declare-fun sat__add__result2 () Int)

(declare-fun sat__add__result3 () Int)

(declare-fun res3 () Int)

(declare-fun sat__add__result4 () Int)

(declare-fun res4 () Int)

(declare-fun sat__add__result5 () Int)

(declare-fun result3 () Int)

;; H
  (assert (in_range x))

;; H
  (assert (in_range y))

;; H
  (assert (=> (<= 0 10000) (in_range res)))

;; H
  (assert (=> (< (+ x y) 10000) (and (= o (+ x y)) (in_range (+ x y)))))

;; H
  (assert (=> (< (+ x y) 10000) (= result res)))

;; H
  (assert (=> (< (+ x y) 10000) (= res1 o)))

;; H
  (assert (=> (not (< (+ x y) 10000)) (= result1 res)))

;; H
  (assert (=> (not (< (+ x y) 10000)) (= res2 10000)))

;; H
  (assert (=> (not (< (+ x y) 10000)) (= res1 res2)))

;; H
  (assert (= sat__add__result1 sat__add__result2))

;; H
  (assert (= sat__add__result3 sat__add__result1))

;; H
  (assert (= result2 sat__add__result))

;; H
  (assert (= sat__add__result1 res1))

;; H
  (assert
  (= (mk_int__ref sat__add__result4) (mk_int__ref sat__add__result2)))

;; H
  (assert (= res3 res1))

;; H
  (assert (= sat__add__result5 sat__add__result3))

;; H
  (assert (= res4 res1))

;; H
  (assert (= result3 sat__add__result4))

(assert
;; WP_parameter_def
 ;; File "sat.ads", line 3, characters 0-0
  (not
  (or (and (< (+ x y) 10000) (= sat__add__result4 (+ x y)))
  (and (<= 10000 (+ x y)) (= sat__add__result4 10000)))))
(check-sat)
