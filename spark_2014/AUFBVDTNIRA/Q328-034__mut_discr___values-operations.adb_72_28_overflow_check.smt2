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

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

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

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__types__value__e integer)))))
(define-fun us_split_fields_E__projection ((a us_split_fields)) integer 
  (rec__types__value__e a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__types__value__e (us_split_fields1 a))) 
                   (to_rep (rec__types__value__e (us_split_fields1 b)))) true
                   false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun types__value__e__first__bit () Int)

(declare-fun types__value__e__last__bit () Int)

(declare-fun types__value__e__position () Int)

;; types__value__e__first__bit_axiom
  (assert (<= 0 types__value__e__first__bit))

;; types__value__e__last__bit_axiom
  (assert (< types__value__e__first__bit types__value__e__last__bit))

;; types__value__e__position_axiom
  (assert (<= 0 types__value__e__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((value__ref (mk_value__ref (value__content us_rep)))))
(define-fun value__ref___projection ((a value__ref)) us_rep (value__content
                                                            a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun size (Int) Int)

(declare-fun size__function_guard (Int Int) Bool)

(declare-sort tlastS 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 200)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (tlastS tlastS) Bool)

(declare-fun dummy2 () tlastS)

(declare-datatypes ()
((tlastS__ref (mk_tlastS__ref (tlastS__content tlastS)))))
(define-fun tlastS__ref___projection ((a tlastS__ref)) tlastS (tlastS__content
                                                              a))

(define-fun dynamic_invariant1 ((temp___expr_157 Int)
  (temp___is_init_154 Bool) (temp___skip_constant_155 Bool)
  (temp___do_toplevel_156 Bool)) Bool (=>
                                      (or (= temp___is_init_154 true)
                                      (<= 0 200)) (in_range2
                                      temp___expr_157)))

;; size__post_axiom
  (assert
  (forall ((stack__last Int))
  (! (=> (dynamic_invariant1 stack__last true true true)
     (let ((result (size stack__last)))
     (=> (size__function_guard result stack__last) (dynamic_invariant result
     true false true)))) :pattern ((size stack__last)) )))

;; size__def_axiom
  (assert
  (forall ((stack__last Int))
  (! (=>
     (and (dynamic_invariant1 stack__last true true true)
     (size__function_guard (size stack__last) stack__last))
     (= (size stack__last) stack__last)) :pattern ((size stack__last)) )))

(declare-fun full (Int) Bool)

(declare-fun full__function_guard (Bool Int) Bool)

(declare-fun empty (Int) Bool)

(declare-fun empty__function_guard (Bool Int) Bool)

(declare-sort operation 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (operation operation) Bool)

(declare-fun dummy3 () operation)

(declare-datatypes ()
((operation__ref (mk_operation__ref (operation__content operation)))))
(define-fun operation__ref___projection ((a operation__ref)) operation 
  (operation__content a))

(define-fun dynamic_invariant2 ((temp___expr_167 Int)
  (temp___is_init_164 Bool) (temp___skip_constant_165 Bool)
  (temp___do_toplevel_166 Bool)) Bool (=>
                                      (or (= temp___is_init_164 true)
                                      (<= 0 3)) (in_range3 temp___expr_167)))

(declare-fun op () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

;; empty__post_axiom
  (assert true)

;; empty__def_axiom
  (assert
  (forall ((stack__last Int))
  (! (=> (empty__function_guard (empty stack__last) stack__last)
     (= (= (empty stack__last) true) (< stack__last 1))) :pattern ((empty
                                                                   stack__last)) )))

;; full__post_axiom
  (assert true)

;; full__def_axiom
  (assert
  (forall ((stack__last Int))
  (! (=> (full__function_guard (full stack__last) stack__last)
     (= (= (full stack__last) true) (<= 200 stack__last))) :pattern (
  (full stack__last)) )))

(declare-fun last () Int)

(declare-fun result__ () Int)

(declare-fun last1 () Int)

(declare-fun v2__split_fields () integer)

(declare-fun last2 () Int)

(declare-fun v1__split_fields () integer)

;; H
  (assert (in_range3 op))

;; H
  (assert (in_range2 last))

;; H
  (assert (size__function_guard (size last) last))

;; H
  (assert (<= 2 (size last)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 result__)))

;; H
  (assert (size__function_guard (size last1) last1))

;; H
  (assert (size__function_guard (size last) last))

;; H
  (assert (and (= (size last1) (- (size last) 1)) (in_range2 last1)))

;; H
  (assert (size__function_guard (size last2) last2))

;; H
  (assert (size__function_guard (size last1) last1))

;; H
  (assert (and (= (size last2) (- (size last1) 1)) (in_range2 last2)))

;; H
  (assert
  (=> (or (= op 0) (= op 3)) (<= (- 1073741823) (to_rep v1__split_fields))))

;; H
  (assert
  (=> (or (= op 0) (= op 3)) (<= (to_rep v1__split_fields) 1073741822)))

;; H
  (assert
  (=> (or (= op 0) (= op 3)) (<= (- 1073741823) (to_rep v2__split_fields))))

;; H
  (assert
  (=> (or (= op 0) (= op 3)) (<= (to_rep v2__split_fields) 1073741822)))

;; H
  (assert
  (=> (not (or (= op 0) (= op 3)))
  (=> (= op 1) (not (= (to_rep v2__split_fields) 0)))))

;; H
  (assert (not (= op 0)))

;; H
  (assert (not (= op 1)))

;; H
  (assert (not (= op 2)))

(assert
;; WP_parameter_def
 ;; File "values-operations.ads", line 22, characters 0-0
  (not (in_range1 (- (to_rep v1__split_fields) (to_rep v2__split_fields)))))
(check-sat)
