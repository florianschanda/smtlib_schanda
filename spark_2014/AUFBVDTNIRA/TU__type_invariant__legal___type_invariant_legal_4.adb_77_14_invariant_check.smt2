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

(define-fun type_invariant ((temp___132 Int)) Bool (not (= temp___132 0)))

(declare-sort t 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (t t) Bool)

(declare-fun dummy1 () t)

(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))

(define-fun dynamic_invariant1 ((temp___expr_137 Int)
  (temp___is_init_134 Bool) (temp___skip_constant_135 Bool)
  (temp___do_toplevel_136 Bool)) Bool (=>
                                      (or (= temp___is_init_134 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_137)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun pub (Int) Int)

(declare-fun pub__function_guard (Int Int) Bool)

;; pub__post_axiom
  (assert
  (forall ((type_invariant_legal_4__x Int))
  (! (=>
     (and (dynamic_invariant1 type_invariant_legal_4__x true true true)
     (type_invariant type_invariant_legal_4__x))
     (let ((result (pub type_invariant_legal_4__x)))
     (=> (pub__function_guard result type_invariant_legal_4__x)
     (dynamic_invariant result true false true)))) :pattern ((pub
                                                             type_invariant_legal_4__x)) )))

(declare-fun e_pub (Int) Int)

(declare-fun e_pub__function_guard (Int Int) Bool)

;; e_pub__post_axiom
  (assert
  (forall ((type_invariant_legal_4__x Int))
  (! (=>
     (and (dynamic_invariant1 type_invariant_legal_4__x true true true)
     (type_invariant type_invariant_legal_4__x))
     (let ((result (e_pub type_invariant_legal_4__x)))
     (=> (e_pub__function_guard result type_invariant_legal_4__x)
     (dynamic_invariant result true false true)))) :pattern ((e_pub
                                                             type_invariant_legal_4__x)) )))

;; e_pub__def_axiom
  (assert
  (forall ((type_invariant_legal_4__x Int))
  (! (=>
     (and (dynamic_invariant1 type_invariant_legal_4__x true true true)
     (e_pub__function_guard (e_pub type_invariant_legal_4__x)
     type_invariant_legal_4__x))
     (= (e_pub type_invariant_legal_4__x) type_invariant_legal_4__x)) :pattern (
  (e_pub type_invariant_legal_4__x)) )))

(declare-fun priv (Int) Int)

(declare-fun priv__function_guard (Int Int) Bool)

;; priv__post_axiom
  (assert
  (forall ((type_invariant_legal_4__x Int))
  (! (=>
     (and (dynamic_invariant1 type_invariant_legal_4__x true true true)
     (type_invariant type_invariant_legal_4__x))
     (let ((result (priv type_invariant_legal_4__x)))
     (=> (priv__function_guard result type_invariant_legal_4__x)
     (dynamic_invariant result true false true)))) :pattern ((priv
                                                             type_invariant_legal_4__x)) )))

(declare-fun e_priv (Int) Int)

(declare-fun e_priv__function_guard (Int Int) Bool)

;; e_priv__post_axiom
  (assert
  (forall ((type_invariant_legal_4__x Int))
  (! (=>
     (and (dynamic_invariant1 type_invariant_legal_4__x true true true)
     (type_invariant type_invariant_legal_4__x))
     (let ((result (e_priv type_invariant_legal_4__x)))
     (=> (e_priv__function_guard result type_invariant_legal_4__x)
     (dynamic_invariant result true false true)))) :pattern ((e_priv
                                                             type_invariant_legal_4__x)) )))

;; e_priv__def_axiom
  (assert
  (forall ((type_invariant_legal_4__x Int))
  (! (=>
     (and (dynamic_invariant1 type_invariant_legal_4__x true true true)
     (e_priv__function_guard (e_priv type_invariant_legal_4__x)
     type_invariant_legal_4__x))
     (= (e_priv type_invariant_legal_4__x) type_invariant_legal_4__x)) :pattern (
  (e_priv type_invariant_legal_4__x)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun x () Int)

(declare-fun tmp () Int)

(declare-fun o () Int)

(declare-fun result () Int)

(declare-fun x1 () Int)

;; H
  (assert (in_range2 x))

;; H
  (assert (type_invariant x))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 tmp)))

;; H
  (assert (and (= o (- x 1)) (in_range2 (- x 1))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref x)))

;; H
  (assert (= x1 o))

(assert
;; WP_parameter_def
 ;; File "type_invariant_legal_4.ads", line 19, characters 0-0
  (not (type_invariant x1)))
(check-sat)
