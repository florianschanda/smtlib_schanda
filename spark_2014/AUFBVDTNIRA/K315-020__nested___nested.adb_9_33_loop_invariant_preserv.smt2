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

(declare-sort t1b 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (t1b t1b) Bool)

(declare-fun dummy1 () t1b)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort t2b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t2b t2b) Bool)

(declare-fun dummy2 () t2b)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content t2b)))))
(define-fun t2b__ref___projection ((a t2b__ref)) t2b (t2b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun x () Int)

(declare-fun i () Int)

(declare-fun temp___133 () Int)

(declare-fun temp___132 () Int)

(declare-fun o () Int)

(declare-fun result () Int)

(declare-fun x1 () Int)

(declare-fun result1 () Int)

(declare-fun i1 () Int)

(declare-fun x2 () Int)

(declare-fun i2 () Int)

(declare-fun j () Int)

(declare-fun result2 () Int)

(declare-fun x3 () Int)

(declare-fun result3 () Int)

(declare-fun j1 () Int)

(declare-fun x4 () Int)

(declare-fun j2 () Int)

(declare-fun result4 () Int)

(declare-fun x5 () Int)

(declare-fun x6 () Int)

(declare-fun j3 () Int)

(declare-fun x7 () Int)

(declare-fun j4 () Int)

(declare-fun x8 () Int)

(declare-fun j5 () Int)

(declare-fun x9 () Int)

(declare-fun j6 () Int)

(declare-fun result5 () Int)

(declare-fun i3 () Int)

(declare-fun x10 () Int)

(declare-fun i4 () Int)

(declare-fun j7 () int__ref)

(declare-fun x11 () Int)

(declare-fun i5 () Int)

(declare-fun j8 () Int)

(define-fun j9 () int__ref (mk_int__ref j5))

(define-fun x12 () int__ref (mk_int__ref x8))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref x)))

;; H
  (assert (= x1 0))

;; H
  (assert (in_range1 x1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref i)))

;; H
  (assert (= i1 1))

;; H
  (assert (<= 1 i1))

;; H
  (assert (<= i1 10))

;; H
  (assert (= x2 (* (- i2 1) 10)))

;; H
  (assert
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 x2))
  (=> (<= 1 10) (in_range2 i2))) (and (<= 1 i2) (<= i2 10))))

;; H
  (assert (= x2 result2))

;; H
  (assert (= x3 0))

;; H
  (assert (= j result3))

;; H
  (assert (= j1 1))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= temp___133 j1)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= temp___132 x3)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= x4 (* i2 (- j2 1)))))

;; H
  (assert
  (=> (and (<= 1 j1) (<= j1 10))
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 x4))
  (=> (<= 1 10) (in_range3 j2))) (and (<= 1 j2) (<= j2 10)))))

;; H
  (assert
  (=> (and (<= 1 j1) (<= j1 10)) (and (= o (* i2 j2)) (in_range1 (* i2 j2)))))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= x4 result4)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= x5 o)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (not (<= 45 x5))))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= j2 10)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= j2 j3)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= x5 x6)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= j4 j2)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= x7 x5)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= j9 (mk_int__ref j3))))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= x12 (mk_int__ref x6))))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= j6 j4)))

;; H
  (assert (=> (and (<= 1 j1) (<= j1 10)) (= x9 x7)))

;; H
  (assert (=> (not (and (<= 1 j1) (<= j1 10))) (= j1 j5)))

;; H
  (assert (=> (not (and (<= 1 j1) (<= j1 10))) (= x3 x8)))

;; H
  (assert (=> (not (and (<= 1 j1) (<= j1 10))) (= j6 j1)))

;; H
  (assert (=> (not (and (<= 1 j1) (<= j1 10))) (= x9 x3)))

;; H
  (assert (not (= i2 10)))

;; H
  (assert (= result5 i2))

;; H
  (assert (= i3 (+ i2 1)))

;; H
  (assert (= j7 j9))

;; H
  (assert (= i3 i4))

;; H
  (assert (= (mk_int__ref x10) x12))

;; H
  (assert (= j8 j6))

;; H
  (assert (= i5 i3))

;; H
  (assert (= x11 x9))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= x10 (* (- i4 1) 10))))
(check-sat)
