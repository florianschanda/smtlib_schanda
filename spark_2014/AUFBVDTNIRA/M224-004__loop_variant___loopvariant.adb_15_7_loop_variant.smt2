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

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun i () Int)

(declare-fun j () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () Int)

(declare-fun j1 () Int)

(declare-fun result2 () Int)

(declare-fun j2 () Int)

(declare-fun result3 () Int)

(declare-fun j3 () Int)

(declare-fun result4 () Int)

(declare-fun i2 () Int)

(declare-fun i3 () Int)

(declare-fun j4 () Int)

(declare-fun temp___171 () Int)

(declare-fun temp___170 () Int)

(declare-fun result5 () Int)

(declare-fun temp___1711 () Int)

(declare-fun result6 () Int)

(declare-fun temp___1701 () Int)

(declare-fun result7 () Int)

(declare-fun j5 () Int)

(declare-fun result8 () Int)

(declare-fun j6 () Int)

(declare-fun result9 () Int)

(declare-fun i4 () Int)

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 i)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 j)))

;; H
  (assert (= result i))

;; H
  (assert (= i1 1))

;; H
  (assert (= result1 j))

;; H
  (assert (= j1 3))

;; H
  (assert (< i1 3))

;; H
  (assert (=> (< 0 j1) (and (= o (- j1 1)) (in_range1 (- j1 1)))))

;; H
  (assert (=> (< 0 j1) (= j1 result2)))

;; H
  (assert (=> (< 0 j1) (= j2 o)))

;; H
  (assert (=> (< 0 j1) (= i2 i1)))

;; H
  (assert (=> (not (< 0 j1)) (= j1 result3)))

;; H
  (assert (=> (not (< 0 j1)) (= j3 3)))

;; H
  (assert (=> (not (< 0 j1)) (and (= o1 (+ i1 1)) (in_range1 (+ i1 1)))))

;; H
  (assert (=> (not (< 0 j1)) (= i1 result4)))

;; H
  (assert (=> (not (< 0 j1)) (= i2 o1)))

;; H
  (assert (=> (not (< 0 j1)) (= j2 j3)))

;; H
  (assert
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 i3))
  (=> (<= (- 2147483648) 2147483647) (in_range1 j4))))

;; H
  (assert (= temp___171 result5))

;; H
  (assert (= temp___1711 i3))

;; H
  (assert (= temp___170 result6))

;; H
  (assert (= temp___1701 j4))

;; H
  (assert (< i3 3))

;; H
  (assert (=> (< 0 j4) (and (= o2 (- j4 1)) (in_range1 (- j4 1)))))

;; H
  (assert (=> (< 0 j4) (= result7 j4)))

;; H
  (assert (=> (< 0 j4) (= j5 o2)))

;; H
  (assert (=> (< 0 j4) (= i4 i3)))

;; H
  (assert (=> (not (< 0 j4)) (= j4 result8)))

;; H
  (assert (=> (not (< 0 j4)) (= j6 3)))

;; H
  (assert (=> (not (< 0 j4)) (and (= o3 (+ i3 1)) (in_range1 (+ i3 1)))))

;; H
  (assert (=> (not (< 0 j4)) (= result9 i3)))

;; H
  (assert (=> (not (< 0 j4)) (= i4 o3)))

;; H
  (assert (=> (not (< 0 j4)) (= j5 j6)))

(assert
;; WP_parameter_def
 ;; File "loopvariant.adb", line 3, characters 0-0
  (not (or (< temp___1711 i4) (and (= i4 temp___1711) (< j5 temp___1701)))))
(check-sat)
