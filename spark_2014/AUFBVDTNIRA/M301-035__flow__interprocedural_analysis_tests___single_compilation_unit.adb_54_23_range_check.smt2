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

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

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
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(declare-fun var () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun fact () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun fact1 () Int)

;; H
  (assert (in_range1 var))

;; H
  (assert (=> (<= 0 2147483647) (in_range1 fact)))

;; H
  (assert (< 1 var))

;; H
  (assert (and (= o (- var 1)) (in_range1 (- var 1))))

;; H
  (assert (in_range1 fact1))

;; H
  (assert (and (= o1 (* fact1 var)) (in_range (* fact1 var))))

(assert
;; WP_parameter_def
 ;; File "single_compilation_unit.adb", line 104, characters 0-0
  (not (in_range1 o1)))
(check-sat)
