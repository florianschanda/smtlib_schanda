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

(declare-fun temp___169 () Int)

(declare-fun temp___168 () Int)

(declare-fun temp___171 () Int)

(declare-fun temp___170 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

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

(declare-fun temp___1711 () Int)

(declare-fun temp___1701 () Int)

(declare-fun result5 () Int)

(declare-fun temp___1712 () Int)

(declare-fun result6 () Int)

(declare-fun temp___1702 () Int)

(declare-fun i4 () Int)

(declare-fun j5 () Int)

(declare-fun i5 () Int)

(declare-fun j6 () Int)

(declare-fun i6 () Int)

(declare-fun j7 () int__ref)

(declare-fun i7 () Int)

(declare-fun j8 () Int)

(declare-fun result7 () int__ref)

(declare-fun i8 () Int)

(declare-fun result8 () int__ref)

(declare-fun j9 () Int)

(declare-fun result9 () int__ref)

(declare-fun j10 () Int)

(declare-fun result10 () int__ref)

(declare-fun j11 () Int)

(declare-fun result11 () int__ref)

(declare-fun i9 () Int)

(declare-fun i10 () int__ref)

(declare-fun j12 () int__ref)

(declare-fun i11 () Int)

(declare-fun j13 () Int)

(declare-fun i12 () Int)

(declare-fun j14 () Int)

(declare-fun temp___175 () Int)

(declare-fun temp___174 () Int)

(declare-fun result12 () int__ref)

(declare-fun temp___1751 () Int)

(declare-fun result13 () int__ref)

(declare-fun temp___1741 () Int)

(declare-fun result14 () int__ref)

(declare-fun j15 () Int)

(declare-fun result15 () int__ref)

(declare-fun j16 () Int)

(declare-fun result16 () int__ref)

(declare-fun i13 () Int)

(declare-fun i14 () int__ref)

(declare-fun j17 () int__ref)

(declare-fun i15 () Int)

(declare-fun j18 () Int)

(define-fun i16 () int__ref (mk_int__ref i6))

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
  (assert (=> (< i1 3) (= temp___169 j1)))

;; H
  (assert (=> (< i1 3) (= temp___168 i1)))

;; H
  (assert (=> (< i1 3) (= 0 temp___171)))

;; H
  (assert (=> (< i1 3) (= 0 temp___170)))

;; H
  (assert
  (=> (< i1 3) (=> (< 0 j1) (and (= o (- j1 1)) (in_range1 (- j1 1))))))

;; H
  (assert (=> (< i1 3) (=> (< 0 j1) (= j1 result2))))

;; H
  (assert (=> (< i1 3) (=> (< 0 j1) (= j2 o))))

;; H
  (assert (=> (< i1 3) (=> (< 0 j1) (= i2 i1))))

;; H
  (assert (=> (< i1 3) (=> (not (< 0 j1)) (= j1 result3))))

;; H
  (assert (=> (< i1 3) (=> (not (< 0 j1)) (= j3 3))))

;; H
  (assert
  (=> (< i1 3)
  (=> (not (< 0 j1)) (and (= o1 (+ i1 1)) (in_range1 (+ i1 1))))))

;; H
  (assert (=> (< i1 3) (=> (not (< 0 j1)) (= i1 result4))))

;; H
  (assert (=> (< i1 3) (=> (not (< 0 j1)) (= i2 o1))))

;; H
  (assert (=> (< i1 3) (=> (not (< 0 j1)) (= j2 j3))))

;; H
  (assert
  (=> (< i1 3)
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 i3))
  (=> (<= (- 2147483648) 2147483647) (in_range1 j4)))))

;; H
  (assert (=> (< i1 3) (= temp___1711 result5)))

;; H
  (assert (=> (< i1 3) (= temp___1712 i3)))

;; H
  (assert (=> (< i1 3) (= temp___1701 result6)))

;; H
  (assert (=> (< i1 3) (= temp___1702 j4)))

;; H
  (assert (=> (< i1 3) (not (< i3 3))))

;; H
  (assert (=> (< i1 3) (= j4 j5)))

;; H
  (assert (=> (< i1 3) (= i3 i4)))

;; H
  (assert (=> (< i1 3) (= j6 j4)))

;; H
  (assert (=> (< i1 3) (= i5 i3)))

;; H
  (assert (=> (< i1 3) (= j7 (mk_int__ref j5))))

;; H
  (assert (=> (< i1 3) (= i16 (mk_int__ref i4))))

;; H
  (assert (=> (< i1 3) (= j8 j6)))

;; H
  (assert (=> (< i1 3) (= i7 i5)))

;; H
  (assert (=> (not (< i1 3)) (= j7 (mk_int__ref j1))))

;; H
  (assert (=> (not (< i1 3)) (= i1 i6)))

;; H
  (assert (=> (not (< i1 3)) (= j8 j1)))

;; H
  (assert (=> (not (< i1 3)) (= i7 i1)))

;; H
  (assert (= result7 i16))

;; H
  (assert (= i8 1))

;; H
  (assert (= result8 j7))

;; H
  (assert (= j9 3))

;; H
  (assert (< i8 3))

;; H
  (assert (=> (< 0 j9) (and (= o2 (- j9 1)) (in_range1 (- j9 1)))))

;; H
  (assert (=> (< 0 j9) (= result9 (mk_int__ref j9))))

;; H
  (assert (=> (< 0 j9) (= j10 o2)))

;; H
  (assert (=> (< 0 j9) (= j12 (mk_int__ref j10))))

;; H
  (assert (=> (< 0 j9) (= i10 (mk_int__ref i8))))

;; H
  (assert (=> (< 0 j9) (= j13 j10)))

;; H
  (assert (=> (< 0 j9) (= i11 i8)))

;; H
  (assert (=> (not (< 0 j9)) (= result10 (mk_int__ref j9))))

;; H
  (assert (=> (not (< 0 j9)) (= j11 3)))

;; H
  (assert (=> (not (< 0 j9)) (and (= o3 (- i8 1)) (in_range1 (- i8 1)))))

;; H
  (assert (=> (not (< 0 j9)) (= result11 (mk_int__ref i8))))

;; H
  (assert (=> (not (< 0 j9)) (= i9 o3)))

;; H
  (assert (=> (not (< 0 j9)) (= j12 (mk_int__ref j11))))

;; H
  (assert (=> (not (< 0 j9)) (= i10 (mk_int__ref i9))))

;; H
  (assert (=> (not (< 0 j9)) (= j13 j11)))

;; H
  (assert (=> (not (< 0 j9)) (= i11 i9)))

;; H
  (assert
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 i12))
  (=> (<= (- 2147483648) 2147483647) (in_range1 j14))))

;; H
  (assert (= result12 (mk_int__ref temp___175)))

;; H
  (assert (= temp___1751 i12))

;; H
  (assert (= result13 (mk_int__ref temp___174)))

;; H
  (assert (= temp___1741 j14))

;; H
  (assert (<= 0 i12))

;; H
  (assert (<= i12 3))

;; H
  (assert (< i12 3))

;; H
  (assert (=> (< 0 j14) (and (= o4 (- j14 1)) (in_range1 (- j14 1)))))

;; H
  (assert (=> (< 0 j14) (= result14 (mk_int__ref j14))))

;; H
  (assert (=> (< 0 j14) (= j15 o4)))

;; H
  (assert (=> (< 0 j14) (= j17 (mk_int__ref j15))))

;; H
  (assert (=> (< 0 j14) (= i14 (mk_int__ref i12))))

;; H
  (assert (=> (< 0 j14) (= j18 j15)))

;; H
  (assert (=> (< 0 j14) (= i15 i12)))

;; H
  (assert (=> (not (< 0 j14)) (= result15 (mk_int__ref j14))))

;; H
  (assert (=> (not (< 0 j14)) (= j16 3)))

;; H
  (assert (=> (not (< 0 j14)) (and (= o5 (- i12 1)) (in_range1 (- i12 1)))))

;; H
  (assert (=> (not (< 0 j14)) (= result16 (mk_int__ref i12))))

;; H
  (assert (=> (not (< 0 j14)) (= i13 o5)))

;; H
  (assert (=> (not (< 0 j14)) (= j17 (mk_int__ref j16))))

;; H
  (assert (=> (not (< 0 j14)) (= i14 (mk_int__ref i13))))

;; H
  (assert (=> (not (< 0 j14)) (= j18 j16)))

;; H
  (assert (=> (not (< 0 j14)) (= i15 i13)))

(assert
;; WP_parameter_def
 ;; File "loopvariant.adb", line 3, characters 0-0
  (not
  (or (< temp___1751 (int__content i14))
  (and (= (int__content i14) temp___1751) (< (int__content j17) temp___1741)))))
(check-sat)
