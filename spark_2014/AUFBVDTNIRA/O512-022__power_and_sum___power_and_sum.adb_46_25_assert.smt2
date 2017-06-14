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

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (positive positive) Bool)

(declare-fun dummy2 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun result__ () Int)

(declare-fun i () Int)

(declare-fun j () Int)

(declare-fun totalsum () Int)

(declare-fun innersum () Int)

(declare-fun temp___516 () Int)

(declare-fun temp___515 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () Int)

(declare-fun j1 () Int)

(declare-fun result2 () Int)

(declare-fun totalsum1 () Int)

(declare-fun result3 () Int)

(declare-fun innersum1 () Int)

(declare-fun i2 () Int)

(declare-fun j2 () Int)

(declare-fun totalsum2 () Int)

(declare-fun innersum2 () Int)

(declare-fun result4 () Int)

(declare-fun innersum3 () Int)

(declare-fun result5 () Int)

(declare-fun j3 () Int)

(declare-fun j4 () Int)

(declare-fun innersum4 () Int)

(declare-fun result6 () Int)

(declare-fun innersum5 () Int)

(declare-fun result7 () Int)

(declare-fun j5 () Int)

(declare-fun j6 () Int)

(declare-fun innersum6 () Int)

(declare-fun j7 () Int)

(declare-fun innersum7 () Int)

(declare-fun j8 () Int)

(declare-fun innersum8 () Int)

(declare-fun j9 () Int)

(declare-fun innersum9 () Int)

;; H
  (assert (in_range3 n))

;; H
  (assert (=> (<= 1 2147483647) (in_range3 result__)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i)))

;; H
  (assert (= i1 1))

;; H
  (assert (in_range3 i1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref j)))

;; H
  (assert (= j1 1))

;; H
  (assert (in_range3 j1))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref totalsum)))

;; H
  (assert (= totalsum1 0))

;; H
  (assert (in_range2 totalsum1))

;; H
  (assert (= (mk_int__ref result3) (mk_int__ref innersum)))

;; H
  (assert (= innersum1 0))

;; H
  (assert (in_range2 innersum1))

;; H
  (assert (<= i1 n))

;; H
  (assert (= (* 6 totalsum2) (* (* (- i2 1) i2) (+ i2 1))))

;; H
  (assert
  (and
  (and
  (and
  (and (=> (<= 0 2147483647) (in_range2 innersum2))
  (=> (<= 1 2147483647) (in_range3 i2)))
  (=> (<= 1 2147483647) (in_range3 j2)))
  (=> (<= 0 2147483647) (in_range2 totalsum2))) (<= i2 n)))

;; H
  (assert (= innersum2 result4))

;; H
  (assert (= innersum3 0))

;; H
  (assert (= j2 result5))

;; H
  (assert (= j3 1))

;; H
  (assert (=> (<= j3 i2) (= temp___516 j3)))

;; H
  (assert (=> (<= j3 i2) (= temp___515 innersum3)))

;; H
  (assert (=> (<= j3 i2) (= (* 2 innersum4) (* j4 (- j4 1)))))

;; H
  (assert
  (=> (<= j3 i2)
  (and
  (and (=> (<= 0 2147483647) (in_range2 innersum4))
  (=> (<= 1 2147483647) (in_range3 j4))) (<= j4 i2))))

;; H
  (assert
  (=> (<= j3 i2) (and (= o (+ innersum4 j4)) (in_range1 (+ innersum4 j4)))))

;; H
  (assert (=> (<= j3 i2) (= innersum4 result6)))

;; H
  (assert (=> (<= j3 i2) (= innersum5 o)))

;; H
  (assert (=> (<= j3 i2) (and (= o1 (+ j4 1)) (in_range1 (+ j4 1)))))

;; H
  (assert (=> (<= j3 i2) (= j4 result7)))

;; H
  (assert (=> (<= j3 i2) (= j5 o1)))

;; H
  (assert (=> (<= j3 i2) (not (<= j5 i2))))

;; H
  (assert (=> (<= j3 i2) (= innersum5 innersum6)))

;; H
  (assert (=> (<= j3 i2) (= j5 j6)))

;; H
  (assert (=> (<= j3 i2) (= innersum7 innersum5)))

;; H
  (assert (=> (<= j3 i2) (= j7 j5)))

;; H
  (assert
  (=> (<= j3 i2) (= (mk_int__ref innersum8) (mk_int__ref innersum6))))

;; H
  (assert (=> (<= j3 i2) (= (mk_int__ref j8) (mk_int__ref j6))))

;; H
  (assert (=> (<= j3 i2) (= innersum9 innersum7)))

;; H
  (assert (=> (<= j3 i2) (= j9 j7)))

;; H
  (assert (=> (not (<= j3 i2)) (= innersum3 innersum8)))

;; H
  (assert (=> (not (<= j3 i2)) (= j3 j8)))

;; H
  (assert (=> (not (<= j3 i2)) (= innersum9 innersum3)))

;; H
  (assert (=> (not (<= j3 i2)) (= j9 j3)))

(assert
;; WP_parameter_def
 ;; File "power_and_sum.ads", line 5, characters 0-0
  (not (= j8 (+ i2 1))))
(check-sat)
