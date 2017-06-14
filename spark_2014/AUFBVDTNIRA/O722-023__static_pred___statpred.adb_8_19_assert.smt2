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

(declare-sort t 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (t t) Bool)

(declare-fun dummy () t)

(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))

(declare-fun id (Int) Int)

(declare-fun id__function_guard (Int Int) Bool)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

;; id__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (id x)))
     (=> (id__function_guard result x) (dynamic_invariant result true false
     true)))) :pattern ((id x)) )))

;; id__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true) (id__function_guard (id x) x))
     (= (id x) x)) :pattern ((id x)) )))

(define-fun dynamic_invariant1 ((temp___expr_171 Int)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)) Bool (and
                                      (=>
                                      (or (= temp___is_init_168 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range1 temp___expr_171))
                                      (=> (= temp___do_toplevel_170 true)
                                      (=> (= temp___is_init_168 true)
                                      (or
                                      (and
                                      (<= (- 2147483648) temp___expr_171)
                                      (<= temp___expr_171 (- 2)))
                                      (and (<= 2 temp___expr_171)
                                      (<= temp___expr_171 2147483647)))))))

(define-fun dynamic_predicate ((temp___175 Int)) Bool (or
                                                      (and
                                                      (<= (- 2147483648) temp___175)
                                                      (<= temp___175 (- 2)))
                                                      (and (<= 2 temp___175)
                                                      (<= temp___175 2147483647))))

;; H
  (assert (id__function_guard (id 2) 2))

;; H
  (assert (id__function_guard (id 2) 2))

;; H
  (assert
  (let ((temp___180 (id 2)))
  (and (in_range1 (id 2))
  (or (and (<= (- 2147483648) temp___180) (<= temp___180 (- 2)))
  (and (<= 2 temp___180) (<= temp___180 2147483647))))))

;; H
  (assert (id__function_guard (id (- 2)) (- 2)))

;; H
  (assert (id__function_guard (id (- 2)) (- 2)))

(assert
;; WP_parameter_def
 ;; File "statpred.adb", line 5, characters 0-0
  (not (in_range1 (id (- 2)))))
(check-sat)
