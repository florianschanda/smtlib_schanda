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

(declare-fun add (Int Int) Int)

(declare-fun add__function_guard (Int Int Int) Bool)

(declare-fun add_annotated (Int Int) Int)

(declare-fun add_annotated__function_guard (Int Int Int) Bool)

(declare-fun add_annotated_local (Int Int) Int)

(declare-fun add_annotated_local__function_guard (Int Int Int) Bool)

(declare-fun c3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun c4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun c5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun c6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun c7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun c8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

;; add_annotated_local__post_axiom
  (assert
  (forall ((x Int) (y Int))
  (! (=>
     (and (dynamic_invariant x true true true) (dynamic_invariant y true true
     true))
     (let ((result (add_annotated_local x y)))
     (=> (add_annotated_local__function_guard result x y) (dynamic_invariant
     result true false true)))) :pattern ((add_annotated_local x y)) )))

;; add_annotated_local__def_axiom
  (assert
  (forall ((x Int) (y Int))
  (! (=>
     (and
     (and (dynamic_invariant x true true true) (dynamic_invariant y true true
     true)) (add_annotated_local__function_guard (add_annotated_local x y) x
     y)) (= (add_annotated_local x y) (+ x y))) :pattern ((add_annotated_local
                                                          x y)) )))

;; c3__def_axiom
  (assert
  (and (add_annotated_local__function_guard (add_annotated_local 42 44) 42
  44) (= c3 (add_annotated_local 42 44))))

;; c4__def_axiom
  (assert
  (and (add_annotated_local__function_guard (add_annotated_local 42 c3) 42
  c3) (= c4 (add_annotated_local 42 c3))))

;; c5__def_axiom
  (assert
  (and (add_annotated__function_guard (add_annotated c3 c4) c3 c4)
  (= c5 (add_annotated c3 c4))))

;; c6__def_axiom
  (assert
  (and (add_annotated__function_guard (add_annotated c3 c5) c3 c5)
  (= c6 (add_annotated c3 c5))))

;; c7__def_axiom
  (assert (and (add__function_guard (add c5 c6) c5 c6) (= c7 (add c5 c6))))

;; c8__def_axiom
  (assert (and (add__function_guard (add c5 c7) c5 c7) (= c8 (add c5 c7))))

;; add__post_axiom
  (assert
  (forall ((x Int) (y Int))
  (! (=>
     (and (dynamic_invariant x true true true) (dynamic_invariant y true true
     true))
     (let ((result (add x y)))
     (=> (add__function_guard result x y) (dynamic_invariant result true
     false true)))) :pattern ((add x y)) )))

;; add__def_axiom
  (assert
  (forall ((x Int) (y Int))
  (! (=>
     (and
     (and (dynamic_invariant x true true true) (dynamic_invariant y true true
     true)) (add__function_guard (add x y) x y)) (= (add x y) (+ x y))) :pattern (
  (add x y)) )))

;; add_annotated__post_axiom
  (assert
  (forall ((x Int) (y Int))
  (! (=>
     (and (dynamic_invariant x true true true) (dynamic_invariant y true true
     true))
     (let ((result (add_annotated x y)))
     (=> (add_annotated__function_guard result x y) (dynamic_invariant result
     true false true)))) :pattern ((add_annotated x y)) )))

;; add_annotated__def_axiom
  (assert
  (forall ((x Int) (y Int))
  (! (=>
     (and
     (and (dynamic_invariant x true true true) (dynamic_invariant y true true
     true)) (add_annotated__function_guard (add_annotated x y) x y))
     (= (add_annotated x y) (+ x y))) :pattern ((add_annotated x y)) )))

;; H
  (assert (in_range1 c3))

;; H
  (assert (= (add_annotated_local 42 44) c3))

;; H
  (assert (in_range1 c4))

;; H
  (assert (= (add_annotated_local 42 c3) c4))

;; H
  (assert (in_range1 c5))

;; H
  (assert (= (add_annotated c3 c4) c5))

;; H
  (assert (in_range1 c6))

;; H
  (assert (= (add_annotated c3 c5) c6))

;; H
  (assert (in_range1 c7))

;; H
  (assert (= (add c5 c6) c7))

;; H
  (assert (in_range1 c8))

;; H
  (assert (= (add c5 c7) c8))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range1 (+ 86 c3))))
(check-sat)
