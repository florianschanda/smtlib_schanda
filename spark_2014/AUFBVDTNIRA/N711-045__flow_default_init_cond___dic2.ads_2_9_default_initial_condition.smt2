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

(declare-sort t 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (t t) Bool)

(declare-fun dummy () t)

(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))

(declare-fun foo (Int) Bool)

(declare-fun foo__function_guard (Bool Int) Bool)

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range temp___expr_135)))

;; temp___result_139_def
  (assert
  (forall ((temp___138 Int)) (foo__function_guard (foo temp___138)
  temp___138)))

(define-fun default_initial_assumption ((temp___expr_136 Int)
  (temp___skip_top_level_137 Bool)) Bool (and (= temp___expr_136 0)
                                         (=>
                                         (not
                                         (= temp___skip_top_level_137 true))
                                         (= (foo temp___expr_136) true))))

;; foo__post_axiom
  (assert true)

;; foo__def_axiom
  (assert
  (forall ((par1 Int))
  (! (=> (foo__function_guard (foo par1) par1)
     (= (= (foo par1) true) (= par1 0))) :pattern ((foo par1)) )))

(declare-fun us () Int)

(declare-fun temp___160 () Int)

;; H
  (assert (and (= us 0) (in_range 0)))

;; H
  (assert (and (in_range temp___160) (= temp___160 0)))

;; H
  (assert (foo__function_guard (foo temp___160) temp___160))

(assert
;; WP_parameter_def
 ;; File "dic2.ads", line 17, characters 0-0
  (not (= (foo temp___160) true)))
(check-sat)
