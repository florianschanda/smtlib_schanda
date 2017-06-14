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

(declare-sort state_type 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (state_type state_type) Bool)

(declare-fun dummy () state_type)

(declare-datatypes ()
((state_type__ref (mk_state_type__ref (state_type__content state_type)))))
(define-fun state_type__ref___projection ((a state_type__ref)) state_type 
  (state_type__content a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 2)) (in_range temp___expr_135)))

(declare-sort valid_input 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (valid_input valid_input) Bool)

(declare-fun dummy1 () valid_input)

(declare-datatypes ()
((valid_input__ref (mk_valid_input__ref (valid_input__content valid_input)))))
(define-fun valid_input__ref___projection ((a valid_input__ref)) valid_input 
  (valid_input__content a))

(define-fun dynamic_invariant1 ((temp___expr_147 Int)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (<= 1 3)) (in_range1 temp___expr_147)))

(declare-sort speed_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 100) x) (<= x 100)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (speed_type speed_type) Bool)

(declare-fun dummy2 () speed_type)

(declare-datatypes ()
((speed_type__ref (mk_speed_type__ref (speed_type__content speed_type)))))
(define-fun speed_type__ref___projection ((a speed_type__ref)) speed_type 
  (speed_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= (- 100) 100)) (in_range2
                                      temp___expr_153)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun speed_is_valid (Int Int) Bool)

(declare-fun speed_is_valid__function_guard (Bool Int Int) Bool)

;; speed_is_valid__post_axiom
  (assert true)

;; speed_is_valid__def_axiom
  (assert
  (forall ((segway__speed Int) (segway__state Int))
  (! (=> (speed_is_valid__function_guard
     (speed_is_valid segway__speed segway__state) segway__speed
     segway__state)
     (= (= (speed_is_valid segway__speed segway__state) true)
     (ite (= segway__state 0) (= segway__speed 0)
     (ite (= segway__state 1) (< 0 segway__speed) (< segway__speed 0))))) :pattern (
  (speed_is_valid segway__speed segway__state)) )))

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun speed () Int)

(declare-fun state () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun speed1 () Int)

(declare-fun state1 () Int)

(declare-fun result () Int)

(declare-fun speed2 () Int)

(declare-fun result1 () Int)

(declare-fun speed3 () Int)

(declare-fun result2 () Int)

(declare-fun speed4 () Int)

(declare-fun result3 () Int)

(declare-fun state2 () Int)

(declare-fun result4 () Int)

(declare-fun state3 () Int)

(declare-fun result5 () Int)

(declare-fun state4 () Int)

(declare-fun speed5 () Int)

(declare-fun state5 () Int)

(declare-fun speed6 () Int)

(declare-fun state6 () Int)

;; H
  (assert (speed_is_valid__function_guard (speed_is_valid speed state) 
  speed state))

;; H
  (assert (=> (<= (- 100) 100) (in_range2 speed)))

;; H
  (assert (=> (<= 0 2) (in_range state)))

;; H
  (assert (in_range1 i))

;; H
  (assert (= (speed_is_valid speed state) true))

;; H
  (assert
  (=> (= i 2)
  (=> (< speed 100) (and (= o (+ speed 1)) (in_range2 (+ speed 1))))))

;; H
  (assert (=> (= i 2) (=> (< speed 100) (= result speed))))

;; H
  (assert (=> (= i 2) (=> (< speed 100) (= speed2 o))))

;; H
  (assert (=> (= i 2) (=> (not (< speed 100)) (= speed2 speed))))

;; H
  (assert (=> (= i 2) (=> (not (< speed 100)) (= speed2 speed1))))

;; H
  (assert
  (=> (not (= i 2))
  (=> (= i 3)
  (=> (< (- 100) speed) (and (= o1 (- speed 1)) (in_range2 (- speed 1)))))))

;; H
  (assert
  (=> (not (= i 2)) (=> (= i 3) (=> (< (- 100) speed) (= result1 speed)))))

;; H
  (assert
  (=> (not (= i 2)) (=> (= i 3) (=> (< (- 100) speed) (= speed3 o1)))))

;; H
  (assert
  (=> (not (= i 2))
  (=> (= i 3) (=> (not (< (- 100) speed)) (= speed3 speed)))))

;; H
  (assert
  (=> (not (= i 2))
  (=> (= i 3) (=> (not (< (- 100) speed)) (= speed3 speed1)))))

;; H
  (assert (=> (not (= i 2)) (=> (not (= i 3)) (= result2 speed))))

;; H
  (assert (=> (not (= i 2)) (=> (not (= i 3)) (= speed4 speed))))

;; H
  (assert (=> (not (= i 2)) (=> (not (= i 3)) (= speed3 speed4))))

;; H
  (assert (=> (not (= i 2)) (= speed2 speed3)))

;; H
  (assert (=> (= speed2 0) (= result3 state)))

;; H
  (assert (=> (= speed2 0) (= state2 0)))

;; H
  (assert
  (=> (not (= speed2 0)) (=> (and (= speed2 1) (= i 2)) (= result4 state))))

;; H
  (assert
  (=> (not (= speed2 0)) (=> (and (= speed2 1) (= i 2)) (= state3 1))))

;; H
  (assert
  (=> (not (= speed2 0))
  (=> (not (and (= speed2 1) (= i 2)))
  (=> (and (= speed2 (- 1)) (= i 2)) (= result5 state)))))

;; H
  (assert
  (=> (not (= speed2 0))
  (=> (not (and (= speed2 1) (= i 2)))
  (=> (and (= speed2 (- 1)) (= i 2)) (= state4 2)))))

;; H
  (assert
  (=> (not (= speed2 0))
  (=> (not (and (= speed2 1) (= i 2)))
  (=> (not (and (= speed2 (- 1)) (= i 2))) (= state4 state)))))

;; H
  (assert
  (=> (not (= speed2 0))
  (=> (not (and (= speed2 1) (= i 2)))
  (=> (not (and (= speed2 (- 1)) (= i 2))) (= state4 state1)))))

;; H
  (assert
  (=> (not (= speed2 0))
  (=> (not (and (= speed2 1) (= i 2))) (= state3 state4))))

;; H
  (assert (=> (not (= speed2 0)) (= state2 state3)))

;; H
  (assert (= state2 state5))

;; H
  (assert (= speed2 speed5))

;; H
  (assert (= state6 state2))

;; H
  (assert (= speed6 speed2))

;; H
  (assert (speed_is_valid__function_guard (speed_is_valid speed5 state5)
  speed5 state5))

(assert
;; WP_parameter_def
 ;; File "segway.ads", line 16, characters 0-0
  (not (= (speed_is_valid speed5 state5) true)))
(check-sat)
