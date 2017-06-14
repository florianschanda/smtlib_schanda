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

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(declare-fun factorial (Int) Int)

(declare-fun factorial__function_guard (Int Int) Bool)

;; factorial__post_axiom
  (assert
  (forall ((n Int))
  (! (=> (and (dynamic_invariant n true true true) (<= n 7))
     (let ((result (factorial n)))
     (=> (factorial__function_guard result n) (dynamic_invariant result true
     false true)))) :pattern ((factorial n)) )))

(declare-fun n1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun n2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content integer)))))
(define-fun t5b__ref___projection ((a t5b__ref)) integer (t5b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun last1 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content integer)))))
(define-fun t6b__ref___projection ((a t6b__ref)) integer (t6b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun p1 () Int)

(declare-fun p2 () Int)

(declare-fun i () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun result () Int)

(declare-fun p11 () Int)

(declare-fun result1 () Int)

(declare-fun i1 () Int)

(declare-fun p12 () Int)

(declare-fun i2 () Int)

(declare-fun result2 () Int)

(declare-fun p13 () Int)

(declare-fun result3 () Int)

(declare-fun i3 () Int)

;; H
  (assert (in_range2 n1))

;; H
  (assert (in_range2 n2))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 p1)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 p2)))

;; H
  (assert (and (= n1 n2) (<= n1 7)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref p1)))

;; H
  (assert (= p11 1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref i)))

;; H
  (assert (= i1 2))

;; H
  (assert (<= 2 i1))

;; H
  (assert (<= i1 n1))

;; H
  (assert (factorial__function_guard (factorial (- i2 1)) (- i2 1)))

;; H
  (assert (= p12 (factorial (- i2 1))))

;; H
  (assert
  (and
  (and (=> (<= 0 2147483647) (in_range2 p12))
  (=> (<= 2 n1) (dynamic_property 2 n1 i2))) (and (<= 2 i2) (<= i2 n1))))

;; H
  (assert (and (= o (* i2 p12)) (in_range1 (* i2 p12))))

;; H
  (assert (and (= o1 o) (in_range2 o)))

;; H
  (assert (= p12 result2))

;; H
  (assert (= p13 o1))

;; H
  (assert (not (= i2 n1)))

;; H
  (assert (= result3 i2))

;; H
  (assert (= i3 (+ i2 1)))

;; H
  (assert (factorial__function_guard (factorial (- i3 1)) (- i3 1)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= p13 (factorial (- i3 1)))))
(check-sat)
