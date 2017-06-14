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

(declare-fun state_a (Bool Int) Bool)

(declare-fun state_a__function_guard (Bool Bool Int) Bool)

;; state_a__post_axiom
  (assert true)

;; state_a__def_axiom
  (assert
  (forall ((state_machine__flag Bool))
  (forall ((state_machine__num Int))
  (! (=> (state_a__function_guard
     (state_a state_machine__flag state_machine__num) state_machine__flag
     state_machine__num)
     (= (= (state_a state_machine__flag state_machine__num) true)
     (and (= state_machine__flag true) (< 0 state_machine__num)))) :pattern (
  (state_a state_machine__flag state_machine__num)) ))))

(declare-fun state_b (Bool Int) Bool)

(declare-fun state_b__function_guard (Bool Bool Int) Bool)

;; state_b__post_axiom
  (assert true)

;; state_b__def_axiom
  (assert
  (forall ((state_machine__flag Bool))
  (forall ((state_machine__num Int))
  (! (=> (state_b__function_guard
     (state_b state_machine__flag state_machine__num) state_machine__flag
     state_machine__num)
     (= (= (state_b state_machine__flag state_machine__num) true)
     (and (= state_machine__flag true) (<= state_machine__num 0)))) :pattern (
  (state_b state_machine__flag state_machine__num)) ))))

(declare-fun state_c (Bool Int) Bool)

(declare-fun state_c__function_guard (Bool Bool Int) Bool)

;; state_c__post_axiom
  (assert true)

;; state_c__def_axiom
  (assert
  (forall ((state_machine__flag Bool))
  (forall ((state_machine__num Int))
  (! (=> (state_c__function_guard
     (state_c state_machine__flag state_machine__num) state_machine__flag
     state_machine__num)
     (= (= (state_c state_machine__flag state_machine__num) true)
     (and (not (= state_machine__flag true)) (< 0 state_machine__num)))) :pattern (
  (state_c state_machine__flag state_machine__num)) ))))

(declare-fun state_d (Bool Int) Bool)

(declare-fun state_d__function_guard (Bool Bool Int) Bool)

;; state_d__post_axiom
  (assert true)

;; state_d__def_axiom
  (assert
  (forall ((state_machine__flag Bool))
  (forall ((state_machine__num Int))
  (! (=> (state_d__function_guard
     (state_d state_machine__flag state_machine__num) state_machine__flag
     state_machine__num)
     (= (= (state_d state_machine__flag state_machine__num) true)
     (and (not (= state_machine__flag true)) (< state_machine__num 0)))) :pattern (
  (state_d state_machine__flag state_machine__num)) ))))

(declare-fun flag () Bool)

(declare-fun num () Int)

;; H
  (assert (in_range1 num))

;; H
  (assert (state_a__function_guard (state_a flag num) flag num))

;; H
  (assert (state_b__function_guard (state_b flag num) flag num))

;; H
  (assert (state_c__function_guard (state_c flag num) flag num))

;; H
  (assert (state_d__function_guard (state_d flag num) flag num))

(assert
;; WP_parameter_def
 ;; File "state_machine.adb", line 22, characters 0-0
  (not
  (<= (+ (+ (+ (+ 0 (ite (= (state_a flag num) true) 1 0)) (ite (= (state_b
                                                                   flag 
                                                                   num) true)
                                                           1 0)) (ite (= 
                                                                 (state_c
                                                                 flag 
                                                                 num) true) 1
                                                                 0)) 
  (ite (= (state_d flag num) true) 1 0)) 1)))
(check-sat)
