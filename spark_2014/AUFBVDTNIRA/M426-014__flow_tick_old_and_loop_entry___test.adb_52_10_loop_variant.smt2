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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t10b 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (t10b t10b) Bool)

(declare-fun dummy1 () t10b)

(declare-datatypes () ((t10b__ref (mk_t10b__ref (t10b__content t10b)))))
(define-fun t10b__ref___projection ((a t10b__ref)) t10b (t10b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun x () Int)

(declare-fun i () Int)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () Int)

(declare-fun x1 () Int)

(declare-fun x2 () Int)

(declare-fun i2 () Int)

(declare-fun temp___160 () Int)

(declare-fun result2 () Int)

(declare-fun temp___1601 () Int)

(declare-fun result3 () Int)

(declare-fun i3 () Int)

(declare-fun result4 () Int)

(declare-fun x3 () Int)

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 x)))

;; H
  (assert (= result i))

;; H
  (assert (= i1 1))

;; H
  (assert (<= 1 i1))

;; H
  (assert (<= i1 10))

;; H
  (assert (= result1 x))

;; H
  (assert (= x1 0))

;; H
  (assert
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 x2))
  (=> (<= 1 10) (in_range2 i2))) (and (<= 1 i2) (<= i2 10))))

;; H
  (assert (= result2 temp___160))

;; H
  (assert (= temp___1601 x))

;; H
  (assert (not (= i2 10)))

;; H
  (assert (= result3 i2))

;; H
  (assert (= i3 (+ i2 1)))

;; H
  (assert (= result4 x2))

;; H
  (assert (= x3 0))

(assert
;; WP_parameter_def
 ;; File "test.adb", line 34, characters 0-0
  (not (< temp___1601 x)))
(check-sat)
