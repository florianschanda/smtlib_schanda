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
((us_split_fields
 (mk___split_fields (rec__base__t__c integer)(rec__ext__ us_private)))))
(define-fun us_split_fields_C__projection ((a us_split_fields)) integer 
  (rec__base__t__c a))

(define-fun us_split_fields___projection ((a us_split_fields)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)(attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) Int (attr__tag a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (= (to_rep (rec__base__t__c (us_split_fields1 a))) 
                   (to_rep (rec__base__t__c (us_split_fields1 b)))) true
                   false))

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

(declare-fun base__t__c__first__bit () Int)

(declare-fun base__t__c__last__bit () Int)

(declare-fun base__t__c__position () Int)

;; base__t__c__first__bit_axiom
  (assert (<= 0 base__t__c__first__bit))

;; base__t__c__last__bit_axiom
  (assert (< base__t__c__first__bit base__t__c__last__bit))

;; base__t__c__position_axiom
  (assert (<= 0 base__t__c__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun sum (us_rep) Int)

(declare-fun sum__function_guard (Int us_rep) Bool)

(declare-fun sum1 (Int us_rep) Int)

(declare-fun sum__function_guard1 (Int Int us_rep) Bool)

(define-fun default_initial_assumption ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (= (attr__tag temp___expr_136) 
  us_tag))

;; sum__post_axiom
  (assert
  (forall ((x us_rep))
  (! (let ((result (sum x)))
     (=> (sum__function_guard result x) (dynamic_invariant result true false
     true))) :pattern ((sum x)) )))

;; sum__post__dispatch_axiom
  (assert
  (forall ((attr__tag1 Int))
  (forall ((x us_rep))
  (! (let ((result (sum1 attr__tag1 x)))
     (=> (sum__function_guard1 result attr__tag1 x) (dynamic_invariant result
     true false true))) :pattern ((sum1 attr__tag1 x)) ))))

;; base__t__compat_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (sum__function_guard1 (sum1 us_tag x) us_tag x)
     (and (sum__function_guard (sum x) x) (= (sum x) (sum1 us_tag x)))) :pattern (
  (sum1 us_tag x)) )))

;; sum__def_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (sum__function_guard (sum x) x)
     (= (sum x) (to_rep (rec__base__t__c (us_split_fields1 x))))) :pattern (
  (sum x)) )))

(declare-fun c () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun base__create__result () integer)

(declare-fun base__create__result1 () us_private)

(declare-fun base__create__result2 () Int)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () us_private)

(declare-fun o3 () integer)

(declare-fun o4 () us_private)

(declare-fun o5 () Int)

(declare-fun result () integer)

(declare-fun result1 () us_private)

(declare-fun result2 () Int)

(declare-fun base__create__result3 () integer)

(declare-fun base__create__result4 () us_private)

(declare-fun base__create__result5 () Int)

(declare-fun base__create__result6 () integer)

(declare-fun base__create__result7 () us_private)

(declare-fun base__create__result8 () Int)

(declare-fun base__create__result9 () integer)

(declare-fun base__create__result10 () us_private)

(declare-fun base__create__result11 () Int)

(declare-fun base__create__result12 () integer)

(declare-fun base__create__result13 () us_private)

(declare-fun base__create__result14 () Int)

(declare-fun base__create__result15 () integer)

(declare-fun base__create__result16 () us_private)

(declare-fun base__create__result17 () Int)

(define-fun base__create__result18 () us_rep (mk___rep
                                             (mk___split_fields
                                             base__create__result3
                                             base__create__result4)
                                             base__create__result5))

(declare-fun result3 () integer)

(declare-fun result4 () us_private)

(declare-fun result5 () Int)

;; H
  (assert (in_range c))

;; H
  (assert (= base__create__result6 base__create__result3))

;; H
  (assert (= base__create__result7 base__create__result4))

;; H
  (assert (= base__create__result8 base__create__result5))

;; H
  (assert
  (= (mk___rep
     (mk___split_fields base__create__result9 base__create__result10)
     base__create__result11) base__create__result18))

;; H
  (assert (= (to_rep o) c))

;; H
  (assert (= o o1))

;; H
  (assert (= us_null_ext__ o2))

;; H
  (assert (= o3 o1))

;; H
  (assert (= o4 o2))

;; H
  (assert (= us_tag o5))

;; H
  (assert (= result base__create__result))

;; H
  (assert (= result1 base__create__result1))

;; H
  (assert (= result2 base__create__result2))

;; H
  (assert (= base__create__result18 (mk___rep (mk___split_fields o3 o4) o5)))

;; H
  (assert
  (= (mk_t__ref
     (mk___rep
     (mk___split_fields base__create__result12 base__create__result13)
     base__create__result14)) (mk_t__ref
                              (mk___rep
                              (mk___split_fields base__create__result6
                              base__create__result7) base__create__result8))))

;; H
  (assert (= base__create__result15 base__create__result9))

;; H
  (assert (= base__create__result16 base__create__result10))

;; H
  (assert (= base__create__result17 base__create__result11))

;; H
  (assert (= result3 base__create__result12))

;; H
  (assert (= result4 base__create__result13))

;; H
  (assert (= result5 base__create__result14))

;; H
  (assert (sum__function_guard
  (sum
  (mk___rep (mk___split_fields base__create__result12 base__create__result13)
  base__create__result14))
  (mk___rep (mk___split_fields base__create__result12 base__create__result13)
  base__create__result14)))

(assert
;; WP_parameter_def
 ;; File "base.ads", line 12, characters 0-0
  (not
  (= (sum
     (mk___rep
     (mk___split_fields base__create__result12 base__create__result13)
     base__create__result14)) c)))
(check-sat)
