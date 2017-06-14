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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun is_waiting (Int) Bool)

(declare-fun is_waiting__function_guard (Bool Int) Bool)

(declare-sort internal_state 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (internal_state internal_state) Bool)

(declare-fun dummy () internal_state)

(declare-datatypes ()
((internal_state__ref
 (mk_internal_state__ref (internal_state__content internal_state)))))
(define-fun internal_state__ref___projection ((a internal_state__ref)) internal_state 
  (internal_state__content a))

(define-fun dynamic_invariant ((temp___expr_589 Int)
  (temp___is_init_586 Bool) (temp___skip_constant_587 Bool)
  (temp___do_toplevel_588 Bool)) Bool (=>
                                      (or (= temp___is_init_586 true)
                                      (<= 0 3)) (in_range temp___expr_589)))

;; is_waiting__post_axiom
  (assert true)

;; is_waiting__def_axiom
  (assert
  (forall ((pumpunit__cur_state Int))
  (! (=> (is_waiting__function_guard (is_waiting pumpunit__cur_state)
     pumpunit__cur_state)
     (= (= (is_waiting pumpunit__cur_state) true) (= pumpunit__cur_state 2))) :pattern (
  (is_waiting pumpunit__cur_state)) )))

(declare-fun is_ready (Int) Bool)

(declare-fun is_ready__function_guard (Bool Int) Bool)

;; is_ready__post_axiom
  (assert true)

;; is_ready__def_axiom
  (assert
  (forall ((pumpunit__cur_state Int))
  (! (=> (is_ready__function_guard (is_ready pumpunit__cur_state)
     pumpunit__cur_state)
     (= (= (is_ready pumpunit__cur_state) true) (= pumpunit__cur_state 1))) :pattern (
  (is_ready pumpunit__cur_state)) )))

(declare-fun cur_state () Int)

(declare-fun cur_state1 () Int)

(declare-fun result () Bool)

(declare-fun result1 () Int)

(declare-fun cur_state2 () Int)

(declare-fun cur_state3 () Int)

(declare-fun cur_state4 () Int)

;; H
  (assert (is_ready__function_guard (is_ready cur_state) cur_state))

;; H
  (assert (in_range cur_state))

;; H
  (assert (= (is_ready cur_state) true))

;; H
  (assert
  (and
  (and (= result (is_ready cur_state)) (is_ready__function_guard result
  cur_state)) (= (= result true) (= cur_state 1))))

;; H
  (assert (=> (= result true) (= result1 cur_state)))

;; H
  (assert (=> (= result true) (= cur_state2 2)))

;; H
  (assert (=> (not (= result true)) (= cur_state2 cur_state)))

;; H
  (assert (=> (not (= result true)) (= cur_state2 cur_state1)))

;; H
  (assert (= cur_state2 cur_state3))

;; H
  (assert (= cur_state4 cur_state2))

;; H
  (assert (is_waiting__function_guard (is_waiting cur_state3) cur_state3))

(assert
;; WP_parameter_def
 ;; File "pumpunit.ads", line 40, characters 0-0
  (not (= (is_waiting cur_state3) true)))
(check-sat)
