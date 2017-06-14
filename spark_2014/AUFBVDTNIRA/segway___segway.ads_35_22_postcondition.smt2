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

(declare-sort status_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (status_type status_type) Bool)

(declare-fun dummy () status_type)

(declare-datatypes ()
((status_type__ref (mk_status_type__ref (status_type__content status_type)))))
(define-fun status_type__ref___projection ((a status_type__ref)) status_type 
  (status_type__content a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 2)) (in_range1 temp___expr_135)))

(declare-sort speed_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 100) x) (<= x 100)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (speed_type speed_type) Bool)

(declare-fun dummy1 () speed_type)

(declare-datatypes ()
((speed_type__ref (mk_speed_type__ref (speed_type__content speed_type)))))
(define-fun speed_type__ref___projection ((a speed_type__ref)) speed_type 
  (speed_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= (- 100) 100)) (in_range2
                                      temp___expr_153)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun current_status (Int) Int)

(declare-fun current_status__function_guard (Int Int) Bool)

;; current_status__post_axiom
  (assert
  (forall ((segway__status Int))
  (! (=> (dynamic_invariant segway__status true true true)
     (let ((result (current_status segway__status)))
     (=> (current_status__function_guard result segway__status)
     (dynamic_invariant result true false true)))) :pattern ((current_status
                                                             segway__status)) )))

;; current_status__def_axiom
  (assert
  (forall ((segway__status Int))
  (! (=>
     (and (dynamic_invariant segway__status true true true)
     (current_status__function_guard (current_status segway__status)
     segway__status)) (= (current_status segway__status) segway__status)) :pattern (
  (current_status segway__status)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun speed_is_valid (Int Int) Bool)

(declare-fun speed_is_valid__function_guard (Bool Int Int) Bool)

(declare-fun current_speed (Int) Int)

(declare-fun current_speed__function_guard (Int Int) Bool)

;; speed_is_valid__post_axiom
  (assert true)

;; speed_is_valid__def_axiom
  (assert
  (forall ((segway__speed Int) (segway__status Int))
  (! (=> (speed_is_valid__function_guard
     (speed_is_valid segway__speed segway__status) segway__speed
     segway__status)
     (and (current_status__function_guard (current_status segway__status)
     segway__status)
     (and (current_speed__function_guard (current_speed segway__speed)
     segway__speed)
     (and (current_status__function_guard (current_status segway__status)
     segway__status)
     (and (current_speed__function_guard (current_speed segway__speed)
     segway__speed)
     (and (current_speed__function_guard (current_speed segway__speed)
     segway__speed)
     (= (= (speed_is_valid segway__speed segway__status) true)
     (ite (= (current_status segway__status) 0)
     (= (current_speed segway__speed) 0)
     (ite (= (current_status segway__status) 1)
     (< 0 (current_speed segway__speed)) (< (current_speed segway__speed) 0)))))))))) :pattern (
  (speed_is_valid segway__speed segway__status)) )))

;; current_speed__post_axiom
  (assert
  (forall ((segway__speed Int))
  (! (=> (dynamic_invariant1 segway__speed true true true)
     (let ((result (current_speed segway__speed)))
     (=> (current_speed__function_guard result segway__speed)
     (dynamic_invariant1 result true false true)))) :pattern ((current_speed
                                                              segway__speed)) )))

;; current_speed__def_axiom
  (assert
  (forall ((segway__speed Int))
  (! (=>
     (and (dynamic_invariant1 segway__speed true true true)
     (current_speed__function_guard (current_speed segway__speed)
     segway__speed)) (= (current_speed segway__speed) segway__speed)) :pattern (
  (current_speed segway__speed)) )))

(declare-fun speed () Int)

(declare-fun status () Int)

(declare-fun speed1 () Int)

(declare-fun status1 () Int)

;; H
  (assert (=> (<= (- 100) 100) (in_range2 speed)))

;; H
  (assert (=> (<= 0 2) (in_range1 status)))

;; H
  (assert (and (= status1 0) (= speed1 0)))

;; H
  (assert (and (in_range2 speed1) (in_range1 status1)))

;; H
  (assert (speed_is_valid__function_guard (speed_is_valid speed1 status1)
  speed1 status1))

(assert
;; WP_parameter_def
 ;; File "segway.ads", line 22, characters 0-0
  (not (= (speed_is_valid speed1 status1) true)))
(check-sat)
