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

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x1 integer))
  (! (= (of_rep (to_rep x1)) x1) :pattern ((to_rep x1)) )))

;; range_axiom
  (assert
  (forall ((x1 integer)) (! (in_range1 (to_rep x1)) :pattern ((to_rep x1)) )))

;; coerce_axiom
  (assert
  (forall ((x1 Int))
  (! (=> (in_range1 x1) (= (to_rep (of_rep x1)) x1)) :pattern ((to_rep
                                                               (of_rep x1))) )))

(declare-fun first () Int)

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq1 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes () ((s__ref (mk_s__ref (s__content integer)))))
(define-fun s__ref___projection ((a s__ref)) integer (s__content a))

(declare-fun x1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun y1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant1 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= first last)) (dynamic_property
                                      first last temp___expr_135)))

;; first__def_axiom
  (assert (= first x))

;; last__def_axiom
  (assert (= last y))

(declare-fun tmp_s () Int)

(declare-fun result () Int)

(declare-fun tmp_s1 () Int)

;; H
  (assert (in_range1 x))

;; H
  (assert (in_range1 y))

;; H
  (assert (in_range1 x1))

;; H
  (assert (in_range1 y1))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 tmp_s)))

;; H
  (assert (= result tmp_s))

;; H
  (assert (= tmp_s1 x1))

;; H
  (assert (<= 1 (- y1 x1)))

(assert
;; WP_parameter_def
 ;; File "p.adb", line 7, characters 0-0
  (not (<= first 1)))
(check-sat)
