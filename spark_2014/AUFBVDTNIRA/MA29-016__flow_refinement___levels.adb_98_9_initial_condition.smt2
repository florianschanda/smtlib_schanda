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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun read_partial_2 (Int) Int)

(declare-fun read_partial_2__function_guard (Int Int) Bool)

;; read_partial_2__post_axiom
  (assert
  (forall ((levels__nested_1__nested_2__x2 Int))
  (! (=> (dynamic_invariant levels__nested_1__nested_2__x2 true true true)
     (let ((result (read_partial_2 levels__nested_1__nested_2__x2)))
     (=> (read_partial_2__function_guard result
     levels__nested_1__nested_2__x2) (dynamic_invariant result true false
     true)))) :pattern ((read_partial_2 levels__nested_1__nested_2__x2)) )))

(declare-fun x2 () Int)

(declare-fun y2 () Int)

(declare-fun o () Int)

(declare-fun result () Int)

(declare-fun x21 () Int)

(declare-fun result1 () Int)

(declare-fun y21 () Int)

(declare-fun result2 () Bool)

;; H
  (assert (= result x2))

;; H
  (assert (= x21 0))

;; H
  (assert (in_range x21))

;; H
  (assert (= result1 y2))

;; H
  (assert (= y21 0))

;; H
  (assert (in_range y21))

;; H
  (assert
  (and
  (and (= o (read_partial_2 x21)) (read_partial_2__function_guard o x21))
  (in_range o)))

;; H
  (assert (= result2 (ite (= o 0) true false)))

;; H
  (assert (read_partial_2__function_guard (read_partial_2 x21) x21))

(assert
;; WP_parameter_def
 ;; File "levels.adb", line 80, characters 0-0
  (not (= (read_partial_2 x21) 0)))
(check-sat)
