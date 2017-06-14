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

(declare-fun power (Int Int) Int)

;; Power_0
  (assert (forall ((x Int)) (= (power x 0) 1)))

;; Power_s
  (assert
  (forall ((x Int) (n Int))
  (=> (<= 0 n) (= (power x (+ n 1)) (* x (power x n))))))

;; Power_s_alt
  (assert
  (forall ((x Int) (n Int))
  (=> (< 0 n) (= (power x n) (* x (power x (- n 1)))))))

;; Power_1
  (assert (forall ((x Int)) (= (power x 1) x)))

;; Power_sum
  (assert
  (forall ((x Int) (n Int) (m Int))
  (=> (<= 0 n)
  (=> (<= 0 m) (= (power x (+ n m)) (* (power x n) (power x m)))))))

;; Power_mult
  (assert
  (forall ((x Int) (n Int) (m Int))
  (=> (<= 0 n) (=> (<= 0 m) (= (power x (* n m)) (power (power x n) m))))))

;; Power_mult2
  (assert
  (forall ((x Int) (y Int) (n Int))
  (=> (<= 0 n) (= (power (* x y) n) (* (power x n) (power y n))))))

;; Power_non_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (<= 0 y)) (<= 0 (power x y)))))

;; Power_monotonic
  (assert
  (forall ((x Int) (n Int) (m Int))
  (=> (and (< 0 x) (and (<= 0 n) (<= n m))) (<= (power x n) (power x m)))))

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

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant2 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(declare-fun result__ () Int)

(declare-fun i () Int)

(declare-fun temp___512 () Int)

(declare-fun temp___511 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () Int)

(declare-fun result__1 () Int)

(declare-fun result__2 () Int)

(declare-fun i2 () Int)

(declare-fun result2 () Int)

(declare-fun result__3 () Int)

(declare-fun result3 () Int)

(declare-fun i3 () Int)

(declare-fun result__4 () Int)

(declare-fun i4 () Int)

(declare-fun result__5 () Int)

(declare-fun i5 () Int)

(declare-fun result__6 () Int)

(declare-fun i6 () Int)

(declare-fun result__7 () Int)

(declare-fun i7 () Int)

(declare-fun result__8 () Int)

(declare-fun i8 () Int)

(declare-fun result__9 () Int)

(declare-fun i9 () Int)

(define-fun result__10 () int__ref (mk_int__ref result__6))

;; H
  (assert (in_range1 x))

;; H
  (assert (in_range3 n))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 result__)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i)))

;; H
  (assert (= i1 1))

;; H
  (assert (in_range1 i1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref result__)))

;; H
  (assert (= result__1 x))

;; H
  (assert (=> (< i1 n) (= temp___512 result__1)))

;; H
  (assert (=> (< i1 n) (= temp___511 i1)))

;; H
  (assert (=> (< i1 n) (and (= result__2 (power x i2)) (<= 1 i2))))

;; H
  (assert
  (=> (< i1 n)
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 i2))
  (=> (<= (- 2147483648) 2147483647) (in_range1 result__2))) (< i2 n))))

;; H
  (assert
  (=> (< i1 n) (and (= o (* result__2 x)) (in_range1 (* result__2 x)))))

;; H
  (assert (=> (< i1 n) (= result__2 result2)))

;; H
  (assert (=> (< i1 n) (= result__3 o)))

;; H
  (assert (=> (< i1 n) (and (= o1 (+ i2 1)) (in_range1 (+ i2 1)))))

;; H
  (assert (=> (< i1 n) (= i2 result3)))

;; H
  (assert (=> (< i1 n) (= i3 o1)))

;; H
  (assert (=> (< i1 n) (not (< i3 n))))

;; H
  (assert (=> (< i1 n) (= i3 i4)))

;; H
  (assert (=> (< i1 n) (= result__3 result__4)))

;; H
  (assert (=> (< i1 n) (= i5 i3)))

;; H
  (assert (=> (< i1 n) (= result__5 result__3)))

;; H
  (assert (=> (< i1 n) (= (mk_int__ref i6) (mk_int__ref i4))))

;; H
  (assert (=> (< i1 n) (= result__10 (mk_int__ref result__4))))

;; H
  (assert (=> (< i1 n) (= i7 i5)))

;; H
  (assert (=> (< i1 n) (= result__7 result__5)))

;; H
  (assert (=> (not (< i1 n)) (= i1 i6)))

;; H
  (assert (=> (not (< i1 n)) (= result__1 result__6)))

;; H
  (assert (=> (not (< i1 n)) (= i7 i1)))

;; H
  (assert (=> (not (< i1 n)) (= result__7 result__1)))

;; H
  (assert (= i8 i6))

;; H
  (assert (= (mk_int__ref result__8) result__10))

;; H
  (assert (= i9 i7))

;; H
  (assert (= result__9 result__7))

(assert
;; WP_parameter_def
 ;; File "power_and_sum.ads", line 8, characters 0-0
  (not (= (power x n) result__8)))
(check-sat)
