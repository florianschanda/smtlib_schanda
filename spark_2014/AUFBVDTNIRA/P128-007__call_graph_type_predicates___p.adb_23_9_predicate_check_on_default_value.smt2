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

(declare-sort poT 0)

(declare-fun user_eq (poT poT) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (poT) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (poT) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a poT)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a poT)) (<= 0 (object__alignment a))))

(declare-datatypes () ((poT__ref (mk_poT__ref (poT__content poT)))))
(define-fun poT__ref___projection ((a poT__ref)) poT (poT__content a))

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__p__t__dummy integer)))))
(define-fun us_split_fields_Dummy__projection ((a us_split_fields)) integer 
  (rec__p__t__dummy a))

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
  (b us_rep)) Bool (ite (= (to_rep (rec__p__t__dummy (us_split_fields1 a))) 
                   (to_rep (rec__p__t__dummy (us_split_fields1 b)))) true
                   false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))

(declare-fun p__t__dummy__first__bit () Int)

(declare-fun p__t__dummy__last__bit () Int)

(declare-fun p__t__dummy__position () Int)

;; p__t__dummy__first__bit_axiom
  (assert (<= 0 p__t__dummy__first__bit))

;; p__t__dummy__last__bit_axiom
  (assert (< p__t__dummy__first__bit p__t__dummy__last__bit))

;; p__t__dummy__position_axiom
  (assert (<= 0 p__t__dummy__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun foo (tuple0) Bool)

(declare-fun foo__function_guard (Bool tuple0) Bool)

;; temp___result_179_def
  (assert (foo__function_guard (foo Tuple0) Tuple0))

(define-fun dynamic_invariant ((temp___expr_177 us_rep)
  (temp___is_init_174 Bool) (temp___skip_constant_175 Bool)
  (temp___do_toplevel_176 Bool)) Bool (=> (= temp___do_toplevel_176 true)
                                      (=> (= temp___is_init_174 true)
                                      (and (= (foo Tuple0) true)
                                      (= (to_rep
                                         (rec__p__t__dummy
                                         (us_split_fields1 temp___expr_177))) 0)))))

(define-fun default_initial_assumption ((temp___expr_180 us_rep)
  (temp___skip_top_level_181 Bool)) Bool (= (to_rep
                                            (rec__p__t__dummy
                                            (us_split_fields1
                                            temp___expr_180))) 0))

;; temp___result_184_def
  (assert (foo__function_guard (foo Tuple0) Tuple0))

(define-fun dynamic_predicate ((temp___182 us_rep)) Bool (and
                                                         (= (foo Tuple0) true)
                                                         (= (to_rep
                                                            (rec__p__t__dummy
                                                            (us_split_fields1
                                                            temp___182))) 0)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

;; foo__post_axiom
  (assert true)

(declare-fun temp___187 () integer)

;; H
  (assert (= (to_rep temp___187) 0))

(assert
;; WP_parameter_def
 ;; File "p.ads", line 5, characters 0-0
  (not (dynamic_predicate (mk___rep (mk___split_fields temp___187)))))
(check-sat)
