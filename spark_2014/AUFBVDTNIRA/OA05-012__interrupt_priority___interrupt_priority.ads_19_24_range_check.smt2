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

(declare-sort any_priority 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 98)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (any_priority any_priority) Bool)

(declare-fun dummy () any_priority)

(declare-datatypes ()
((any_priority__ref
 (mk_any_priority__ref (any_priority__content any_priority)))))
(define-fun any_priority__ref___projection ((a any_priority__ref)) any_priority 
  (any_priority__content a))

(declare-fun to_rep (any_priority) Int)

(declare-fun of_rep (Int) any_priority)

;; inversion_axiom
  (assert
  (forall ((x any_priority))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x any_priority)) (! (in_range
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__interrupt_priority__no_interrupt_needed_2__c any_priority)))))
(define-fun us_split_discrs_3__projection ((a us_split_discrs)) any_priority 
  (rec__interrupt_priority__no_interrupt_needed_2__c a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref_3__projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__interrupt_priority__no_interrupt_needed_2__i integer)))))
(define-fun us_split_fields_I3__projection ((a us_split_fields)) integer 
  (rec__interrupt_priority__no_interrupt_needed_2__i a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_30__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep_33__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                               a))

(define-fun us_rep_34__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                               a))

(declare-fun user_eq2 (us_rep us_rep) Bool)

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

(declare-fun interrupt_priority__no_interrupt_needed_2__c__first__bit () Int)

(declare-fun interrupt_priority__no_interrupt_needed_2__c__last__bit () Int)

(declare-fun interrupt_priority__no_interrupt_needed_2__c__position () Int)

;; interrupt_priority__no_interrupt_needed_2__c__first__bit_axiom
  (assert (<= 0 interrupt_priority__no_interrupt_needed_2__c__first__bit))

;; interrupt_priority__no_interrupt_needed_2__c__last__bit_axiom
  (assert
  (< interrupt_priority__no_interrupt_needed_2__c__first__bit interrupt_priority__no_interrupt_needed_2__c__last__bit))

;; interrupt_priority__no_interrupt_needed_2__c__position_axiom
  (assert (<= 0 interrupt_priority__no_interrupt_needed_2__c__position))

(declare-fun interrupt_priority__no_interrupt_needed_2__i__first__bit () Int)

(declare-fun interrupt_priority__no_interrupt_needed_2__i__last__bit () Int)

(declare-fun interrupt_priority__no_interrupt_needed_2__i__position () Int)

;; interrupt_priority__no_interrupt_needed_2__i__first__bit_axiom
  (assert (<= 0 interrupt_priority__no_interrupt_needed_2__i__first__bit))

;; interrupt_priority__no_interrupt_needed_2__i__last__bit_axiom
  (assert
  (< interrupt_priority__no_interrupt_needed_2__i__first__bit interrupt_priority__no_interrupt_needed_2__i__last__bit))

;; interrupt_priority__no_interrupt_needed_2__i__position_axiom
  (assert (<= 0 interrupt_priority__no_interrupt_needed_2__i__position))

(declare-datatypes ()
((no_interrupt_needed_2__ref
 (mk_no_interrupt_needed_2__ref (no_interrupt_needed_2__content us_rep)))))
(define-fun no_interrupt_needed_2__ref___projection ((a no_interrupt_needed_2__ref)) us_rep 
  (no_interrupt_needed_2__content a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_202 Int)
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)) Bool (=>
                                      (or (= temp___is_init_199 true)
                                      (<= 0 98)) (in_range temp___expr_202)))

(declare-fun self__ () us_rep)

(assert
;; WP_parameter_def
 ;; File "interrupt_priority.ads", line 18, characters 0-0
  (not
  (<= 0 (to_rep
        (rec__interrupt_priority__no_interrupt_needed_2__c
        (us_split_discrs1 self__))))))
(check-sat)
