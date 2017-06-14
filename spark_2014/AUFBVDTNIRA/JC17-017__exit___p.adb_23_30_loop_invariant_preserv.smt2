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

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun z () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort t3b 0)

(define-fun in_range2 ((x1 Int)) Bool (and (<= 1 x1) (<= x1 10)))

(define-fun bool_eq1 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (t3b t3b) Bool)

(declare-fun dummy1 () t3b)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content t3b)))))
(define-fun t3b__ref___projection ((a t3b__ref)) t3b (t3b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-sort t4b 0)

(define-fun in_range3 ((x1 Int)) Bool (and (<= 1 x1) (<= x1 10)))

(define-fun bool_eq2 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t4b t4b) Bool)

(declare-fun dummy2 () t4b)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content t4b)))))
(define-fun t4b__ref___projection ((a t4b__ref)) t4b (t4b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-sort t6b 0)

(define-fun in_range4 ((x1 Int)) Bool (and (<= 1 x1) (<= x1 10)))

(define-fun bool_eq3 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (t6b t6b) Bool)

(declare-fun dummy3 () t6b)

(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content t6b)))))
(define-fun t6b__ref___projection ((a t6b__ref)) t6b (t6b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun k () Int)

(declare-fun result () Int)

(declare-fun k1 () Int)

(declare-fun k2 () Int)

(declare-fun result1 () Int)

(declare-fun k3 () Int)

;; H
  (assert (in_range1 x))

;; H
  (assert (in_range1 y))

;; H
  (assert (in_range1 z))

;; H
  (assert
  (and (and (and (and (<= 10 x) (<= x 1000)) (< 0 y)) (< z 0))
  (<= (+ y z) 1000)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref k)))

;; H
  (assert (= k1 1))

;; H
  (assert (<= 1 k1))

;; H
  (assert (<= k1 10))

;; H
  (assert (<= k2 x))

;; H
  (assert (and (=> (<= 1 10) (in_range2 k2)) (and (<= 1 k2) (<= k2 10))))

;; H
  (assert (not (< k2 y)))

;; H
  (assert (not (< k2 z)))

;; H
  (assert (not (= k2 10)))

;; H
  (assert (= result1 k2))

;; H
  (assert (= k3 (+ k2 1)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (<= k3 x)))
(check-sat)
