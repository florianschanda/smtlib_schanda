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

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun a () Int)

(declare-fun f () Int)

(declare-fun tmp () Int)

(declare-fun temp___182 () Int)

(declare-fun temp___181 () Int)

(declare-fun temp___180 () Int)

(declare-fun o () Int)

(declare-fun tmp1 () Int)

(declare-fun result () Int)

(declare-fun a1 () Int)

(declare-fun result1 () Int)

(declare-fun f1 () Int)

(declare-fun a2 () Int)

(declare-fun f2 () Int)

(declare-fun tmp2 () Int)

(declare-fun result2 () Int)

(declare-fun tmp3 () Int)

(declare-fun result3 () Int)

(declare-fun f3 () Int)

(declare-fun result4 () Int)

(declare-fun a3 () Int)

(declare-fun a4 () Int)

(declare-fun f4 () Int)

(declare-fun tmp4 () Int)

(declare-fun a5 () Int)

(declare-fun f5 () Int)

(declare-fun tmp5 () Int)

(declare-fun a6 () Int)

(declare-fun f6 () Int)

(declare-fun tmp6 () Int)

(declare-fun a7 () Int)

(declare-fun f7 () Int)

(declare-fun tmp7 () Int)

(define-fun tmp8 () int__ref (mk_int__ref tmp6))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 81, characters 0-0
  (not
  (not
  (and (and (= (mk_int__ref result) (mk_int__ref a)) (= a1 1))
  (and (in_range1 a1)
  (and (and (= (mk_int__ref result1) (mk_int__ref f)) (= f1 1))
  (and (in_range1 f1)
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 tmp))
  (ite (< f1 1000)
  (and
  (and
  (and (= temp___182 tmp)
  (and (= temp___181 f1)
  (and (= temp___180 a1)
  (and
  (and
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 a2))
  (=> (<= (- 2147483648) 2147483647) (in_range1 f2)))
  (=> (<= (- 2147483648) 2147483647) (in_range1 tmp2))) (< f2 1000))
  (and (and (= tmp2 result2) (= tmp3 f2))
  (and
  (and (and (= o (+ a2 f2)) (in_range1 (+ a2 f2)))
  (and (= result3 f2) (= f3 o)))
  (and (and (= result4 a2) (= a3 tmp3)) (not (< f3 1000)))))))))
  (and (and (= tmp3 tmp4) (and (= f3 f4) (= a3 a4)))
  (and (= tmp5 tmp3) (and (= f5 f3) (= a5 a3)))))
  (and
  (and (= tmp8 (mk_int__ref tmp4))
  (and (= (mk_int__ref f6) (mk_int__ref f4))
  (= (mk_int__ref a6) (mk_int__ref a4))))
  (and (= tmp7 tmp5) (and (= f7 f5) (= a7 a5)))))
  (and (and (= tmp8 (mk_int__ref tmp)) (and (= f1 f6) (= a1 a6)))
  (and (= tmp7 tmp1) (and (= f7 f1) (= a7 a1)))))))))))))
(check-sat)
