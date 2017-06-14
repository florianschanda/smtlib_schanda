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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun incr_pub (Int) Int)

(declare-fun incr_pub__function_guard (Int Int) Bool)

;; incr_pub__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_pub x)))
     (=> (incr_pub__function_guard result x) (dynamic_invariant result true
     false true)))) :pattern ((incr_pub x)) )))

;; incr_pub__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true) (incr_pub__function_guard
     (incr_pub x) x)) (= (incr_pub x) (+ x 1))) :pattern ((incr_pub x)) )))

(declare-fun incr_pub_pub (Int) Int)

(declare-fun incr_pub_pub__function_guard (Int Int) Bool)

;; incr_pub_pub__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_pub_pub x)))
     (=> (incr_pub_pub__function_guard result x) (dynamic_invariant result
     true false true)))) :pattern ((incr_pub_pub x)) )))

;; incr_pub_pub__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true) (incr_pub_pub__function_guard
     (incr_pub_pub x) x)) (= (incr_pub_pub x) (+ x 1))) :pattern ((incr_pub_pub
                                                                  x)) )))

(declare-fun incr_pub_priv (Int) Int)

(declare-fun incr_pub_priv__function_guard (Int Int) Bool)

;; incr_pub_priv__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_pub_priv x)))
     (=> (incr_pub_priv__function_guard result x) (dynamic_invariant result
     true false true)))) :pattern ((incr_pub_priv x)) )))

;; incr_pub_priv__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true) (incr_pub_priv__function_guard
     (incr_pub_priv x) x)) (= (incr_pub_priv x) (+ x 1))) :pattern ((incr_pub_priv
                                                                    x)) )))

(declare-fun incr_pub_body (Int) Int)

(declare-fun incr_pub_body__function_guard (Int Int) Bool)

;; incr_pub_body__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_pub_body x)))
     (=> (incr_pub_body__function_guard result x) (dynamic_invariant result
     true false true)))) :pattern ((incr_pub_body x)) )))

;; incr_pub_body__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true) (incr_pub_body__function_guard
     (incr_pub_body x) x)) (= (incr_pub_body x) (+ x 1))) :pattern ((incr_pub_body
                                                                    x)) )))

(declare-fun incr_priv (Int) Int)

(declare-fun incr_priv__function_guard (Int Int) Bool)

;; incr_priv__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_priv x)))
     (=> (incr_priv__function_guard result x) (dynamic_invariant result true
     false true)))) :pattern ((incr_priv x)) )))

;; incr_priv__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true) (incr_priv__function_guard
     (incr_priv x) x)) (= (incr_priv x) (+ x 1))) :pattern ((incr_priv x)) )))

(declare-fun incr_priv_priv (Int) Int)

(declare-fun incr_priv_priv__function_guard (Int Int) Bool)

;; incr_priv_priv__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_priv_priv x)))
     (=> (incr_priv_priv__function_guard result x) (dynamic_invariant result
     true false true)))) :pattern ((incr_priv_priv x)) )))

;; incr_priv_priv__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true)
     (incr_priv_priv__function_guard (incr_priv_priv x) x))
     (= (incr_priv_priv x) (+ x 1))) :pattern ((incr_priv_priv x)) )))

(declare-fun incr_priv_body (Int) Int)

(declare-fun incr_priv_body__function_guard (Int Int) Bool)

;; incr_priv_body__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_priv_body x)))
     (=> (incr_priv_body__function_guard result x) (dynamic_invariant result
     true false true)))) :pattern ((incr_priv_body x)) )))

;; incr_priv_body__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true)
     (incr_priv_body__function_guard (incr_priv_body x) x))
     (= (incr_priv_body x) (+ x 1))) :pattern ((incr_priv_body x)) )))

(declare-fun incr_body (Int) Int)

(declare-fun incr_body__function_guard (Int Int) Bool)

;; incr_body__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_body x)))
     (=> (incr_body__function_guard result x) (dynamic_invariant result true
     false true)))) :pattern ((incr_body x)) )))

;; incr_body__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true) (incr_body__function_guard
     (incr_body x) x)) (= (incr_body x) (+ x 1))) :pattern ((incr_body x)) )))

(declare-fun incr_body_body (Int) Int)

(declare-fun incr_body_body__function_guard (Int Int) Bool)

;; incr_body_body__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (incr_body_body x)))
     (=> (incr_body_body__function_guard result x) (dynamic_invariant result
     true false true)))) :pattern ((incr_body_body x)) )))

;; incr_body_body__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true)
     (incr_body_body__function_guard (incr_body_body x) x))
     (= (incr_body_body x) (+ x 1))) :pattern ((incr_body_body x)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () Int)

(declare-fun result () Int)

(declare-fun x1 () Int)

;; H
  (assert (= result x))

;; H
  (assert (= x1 10))

;; H
  (assert (in_range x1))

;; H
  (assert (incr_pub__function_guard (incr_pub x1) x1))

;; H
  (assert (= (incr_pub x1) (+ x1 1)))

;; H
  (assert (incr_pub_pub__function_guard (incr_pub_pub x1) x1))

;; H
  (assert (= (incr_pub_pub x1) (+ x1 1)))

;; H
  (assert (incr_pub_priv__function_guard (incr_pub_priv x1) x1))

;; H
  (assert (= (incr_pub_priv x1) (+ x1 1)))

;; H
  (assert (incr_pub_body__function_guard (incr_pub_body x1) x1))

;; H
  (assert (= (incr_pub_body x1) (+ x1 1)))

;; H
  (assert (incr_priv__function_guard (incr_priv x1) x1))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= (incr_priv x1) (+ x1 1))))
(check-sat)
