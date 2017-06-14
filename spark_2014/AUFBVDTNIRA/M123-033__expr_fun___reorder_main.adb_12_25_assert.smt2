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

(declare-fun g1 (tuple0) Int)

(declare-fun g1__function_guard (Int tuple0) Bool)

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

;; g1__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (g1 us_void_param)))
     (=> (g1__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((g1 us_void_param)) )))

;; g1__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (g1__function_guard (g1 us_void_param) us_void_param)
     (= (g1 us_void_param) 1)) :pattern ((g1 us_void_param)) )))

(declare-fun g2 (tuple0) Int)

(declare-fun g2__function_guard (Int tuple0) Bool)

;; g2__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (g2 us_void_param)))
     (=> (g2__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((g2 us_void_param)) )))

(declare-fun g3 (tuple0) Int)

(declare-fun g3__function_guard (Int tuple0) Bool)

;; g3__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (g3 us_void_param)))
     (=> (g3__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((g3 us_void_param)) )))

(declare-fun g4 (tuple0) Int)

(declare-fun g4__function_guard (Int tuple0) Bool)

;; g4__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (g4 us_void_param)))
     (=> (g4__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((g4 us_void_param)) )))

;; g4__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (g4__function_guard (g4 us_void_param) us_void_param)
     (and (g1__function_guard (g1 Tuple0) Tuple0)
     (and (g3__function_guard (g3 Tuple0) Tuple0)
     (= (g4 us_void_param) (- (+ (g1 Tuple0) (g3 Tuple0)) 1))))) :pattern (
  (g4 us_void_param)) )))

(declare-fun f1 (tuple0) Int)

(declare-fun f1__function_guard (Int tuple0) Bool)

;; f1__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (f1 us_void_param)))
     (=> (f1__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((f1 us_void_param)) )))

;; f1__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (f1__function_guard (f1 us_void_param) us_void_param)
     (= (f1 us_void_param) 1)) :pattern ((f1 us_void_param)) )))

(declare-fun f2 (tuple0) Int)

(declare-fun f2__function_guard (Int tuple0) Bool)

;; f2__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (f2 us_void_param)))
     (=> (f2__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((f2 us_void_param)) )))

;; f2__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (f2__function_guard (f2 us_void_param) us_void_param)
     (and (f1__function_guard (f1 Tuple0) Tuple0)
     (and (g1__function_guard (g1 Tuple0) Tuple0)
     (= (f2 us_void_param) (- (+ (f1 Tuple0) (g1 Tuple0)) 1))))) :pattern (
  (f2 us_void_param)) )))

(declare-fun f3 (tuple0) Int)

(declare-fun f3__function_guard (Int tuple0) Bool)

;; f3__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (f3 us_void_param)))
     (=> (f3__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((f3 us_void_param)) )))

(declare-fun f4 (tuple0) Int)

(declare-fun f4__function_guard (Int tuple0) Bool)

;; f4__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (f4 us_void_param)))
     (=> (f4__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((f4 us_void_param)) )))

;; f4__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (f4__function_guard (f4 us_void_param) us_void_param)
     (and (f3__function_guard (f3 Tuple0) Tuple0)
     (and (g3__function_guard (g3 Tuple0) Tuple0)
     (= (f4 us_void_param) (- (+ (f3 Tuple0) (g3 Tuple0)) 1))))) :pattern (
  (f4 us_void_param)) )))

(declare-fun value (tuple0) Int)

(declare-fun value__function_guard (Int tuple0) Bool)

;; value__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (value us_void_param)))
     (=> (value__function_guard result us_void_param) (dynamic_invariant
     result true false true))) :pattern ((value us_void_param)) )))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun result () Bool)

(declare-fun result1 () Bool)

(declare-fun result2 () Bool)

;; H
  (assert
  (and (and (= o (value Tuple0)) (value__function_guard o Tuple0)) (in_range
  o)))

;; H
  (assert (= result (ite (= o 0) true false)))

;; H
  (assert (not (= result true)))

;; H
  (assert
  (and (and (= o1 (value Tuple0)) (value__function_guard o1 Tuple0))
  (in_range o1)))

;; H
  (assert (= result1 (ite (= o1 1) true false)))

;; H
  (assert (not (= result1 true)))

;; H
  (assert
  (and (and (= o2 (value Tuple0)) (value__function_guard o2 Tuple0))
  (in_range o2)))

;; H
  (assert (= result2 (ite (= o2 2) true false)))

;; H
  (assert (= result2 true))

;; H
  (assert (f3__function_guard (f3 Tuple0) Tuple0))

(assert
;; WP_parameter_def
 ;; File "reorder_main.adb", line 4, characters 0-0
  (not (= (f3 Tuple0) 1)))
(check-sat)
