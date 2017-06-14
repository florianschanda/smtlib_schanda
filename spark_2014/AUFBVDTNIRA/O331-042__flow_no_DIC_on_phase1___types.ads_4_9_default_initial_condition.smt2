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
((us_split_discrs (mk___split_discrs (rec__types__t__d integer)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) integer 
  (rec__types__t__d a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__types__t__c integer)(rec__ext__ us_private)))))
(define-fun us_split_fields_C__projection ((a us_split_fields)) integer 
  (rec__types__t__c a))

(define-fun us_split_fields___projection ((a us_split_fields)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)(attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun us_rep_3__projection ((a us_rep)) Int (attr__tag a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep (rec__types__t__d (us_split_discrs1 a))) 
                        (to_rep (rec__types__t__d (us_split_discrs1 b))))
                        (= (to_rep (rec__types__t__c (us_split_fields1 a))) 
                        (to_rep (rec__types__t__c (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

(declare-fun us_dispatch_eq (us_rep us_rep) Bool)

(declare-fun us_tag () Int)

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

(declare-fun types__t__d__first__bit () Int)

(declare-fun types__t__d__last__bit () Int)

(declare-fun types__t__d__position () Int)

;; types__t__d__first__bit_axiom
  (assert (<= 0 types__t__d__first__bit))

;; types__t__d__last__bit_axiom
  (assert (< types__t__d__first__bit types__t__d__last__bit))

;; types__t__d__position_axiom
  (assert (<= 0 types__t__d__position))

(declare-fun types__t__c__first__bit () Int)

(declare-fun types__t__c__last__bit () Int)

(declare-fun types__t__c__position () Int)

;; types__t__c__first__bit_axiom
  (assert (<= 0 types__t__c__first__bit))

;; types__t__c__last__bit_axiom
  (assert (< types__t__c__first__bit types__t__c__last__bit))

;; types__t__c__position_axiom
  (assert (<= 0 types__t__c__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun valid (us_rep) Bool)

(declare-fun valid__function_guard (Bool us_rep) Bool)

(declare-fun valid1 (Int us_rep) Bool)

(declare-fun valid__function_guard1 (Bool Int us_rep) Bool)

;; valid__post_axiom
  (assert true)

;; valid__post__dispatch_axiom
  (assert true)

;; valid__def_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (valid__function_guard (valid x) x) (= (valid x) true)) :pattern (
  (valid x)) )))

(declare-fun temp___146 () Int)

(declare-fun temp___147 () integer)

(declare-fun temp___1471 () integer)

(declare-fun temp___1472 () us_private)

(declare-fun temp___1473 () Int)

(define-fun temp___1474 () us_rep (mk___rep (mk___split_discrs temp___147)
                                  (mk___split_fields temp___1471 temp___1472)
                                  temp___1473))

;; H
  (assert (in_range temp___146))

;; H
  (assert (= temp___1473 us_tag))

;; H
  (assert (valid__function_guard (valid temp___1474) temp___1474))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= (valid temp___1474) true)))
(check-sat)
