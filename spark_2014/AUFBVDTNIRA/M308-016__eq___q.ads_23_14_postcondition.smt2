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
((us_split_discrs (mk___split_discrs (rec__q__t__b Bool)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) Bool (rec__q__t__b
                                                                    a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__q__t__a integer)(rec__q__t__c Bool)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) integer 
  (rec__q__t__a a))

(define-fun us_split_fields_C__projection ((a us_split_fields)) Bool 
  (rec__q__t__c a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun q__t__a__pred ((a us_rep)) Bool (= (to_int1
                                               (rec__q__t__b
                                               (us_split_discrs1 a))) 1))

(define-fun q__t__c__pred ((a us_rep)) Bool (= (to_int1
                                               (rec__q__t__b
                                               (us_split_discrs1 a))) 0))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (rec__q__t__b (us_split_discrs1 a)) (rec__q__t__b
                                                               (us_split_discrs1
                                                               b)))
                        (=> (q__t__a__pred a)
                        (= (to_rep (rec__q__t__a (us_split_fields1 a))) 
                        (to_rep (rec__q__t__a (us_split_fields1 b))))))
                        (=> (q__t__c__pred a)
                        (= (rec__q__t__c (us_split_fields1 a)) (rec__q__t__c
                                                               (us_split_fields1
                                                               b)))))
                   true false))

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

(declare-fun q__t__b__first__bit () Int)

(declare-fun q__t__b__last__bit () Int)

(declare-fun q__t__b__position () Int)

;; q__t__b__first__bit_axiom
  (assert (<= 0 q__t__b__first__bit))

;; q__t__b__last__bit_axiom
  (assert (< q__t__b__first__bit q__t__b__last__bit))

;; q__t__b__position_axiom
  (assert (<= 0 q__t__b__position))

(declare-fun q__t__a__first__bit () Int)

(declare-fun q__t__a__last__bit () Int)

(declare-fun q__t__a__position () Int)

;; q__t__a__first__bit_axiom
  (assert (<= 0 q__t__a__first__bit))

;; q__t__a__last__bit_axiom
  (assert (< q__t__a__first__bit q__t__a__last__bit))

;; q__t__a__position_axiom
  (assert (<= 0 q__t__a__position))

(declare-fun q__t__c__first__bit () Int)

(declare-fun q__t__c__last__bit () Int)

(declare-fun q__t__c__position () Int)

;; q__t__c__first__bit_axiom
  (assert (<= 0 q__t__c__first__bit))

;; q__t__c__last__bit_axiom
  (assert (< q__t__c__first__bit q__t__c__last__bit))

;; q__t__c__position_axiom
  (assert (<= 0 q__t__c__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun change (us_rep) us_rep)

(declare-fun change__function_guard (us_rep us_rep) Bool)

;; change__post_axiom
  (assert true)

(declare-fun x__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun r4b () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun r6b () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun x__split_fields () integer)

(declare-fun x__split_fields1 () Bool)

(declare-fun y__split_fields () integer)

(declare-fun y__split_fields1 () Bool)

(declare-fun temp___162 () Bool)

(declare-fun temp___1621 () integer)

(declare-fun temp___1622 () Bool)

(declare-fun temp___164 () Bool)

(declare-fun temp___1641 () integer)

(declare-fun temp___1642 () Bool)

(declare-fun temp___165 () Bool)

(declare-fun temp___1651 () integer)

(declare-fun temp___1652 () Bool)

(declare-fun temp___167 () Bool)

(declare-fun temp___1671 () integer)

(declare-fun temp___1672 () Bool)

(declare-fun result () integer)

(declare-fun result1 () Bool)

(declare-fun x__split_fields2 () integer)

(declare-fun x__split_fields3 () Bool)

(declare-fun result2 () integer)

(declare-fun result3 () Bool)

(declare-fun y__split_fields2 () us_split_fields)

(declare-fun x__split_fields4 () us_split_fields__ref)

(declare-fun y__split_fields3 () us_split_fields__ref)

(declare-fun x__split_fields5 () us_split_fields)

(declare-fun y__split_fields4 () us_split_fields)

(define-fun x__split_fields6 () us_split_fields (mk___split_fields
                                                x__split_fields2
                                                x__split_fields3))

(define-fun temp___1653 () us_rep (mk___rep (mk___split_discrs temp___165)
                                  (mk___split_fields temp___1651 temp___1652)))

(define-fun temp___1623 () us_rep (mk___rep (mk___split_discrs temp___162)
                                  (mk___split_fields temp___1621 temp___1622)))

;; H
  (assert
  (= (bool_eq1
     (mk___rep x__split_discrs
     (mk___split_fields x__split_fields x__split_fields1))
     (mk___rep y__split_discrs
     (mk___split_fields y__split_fields y__split_fields1))) true))

;; H
  (assert (= (rec__q__t__b x__split_discrs) r4b))

;; H
  (assert
  (and
  (= temp___1623 (change
                 (mk___rep x__split_discrs
                 (mk___split_fields x__split_fields x__split_fields1))))
  (change__function_guard temp___1623
  (mk___rep x__split_discrs
  (mk___split_fields x__split_fields x__split_fields1)))))

;; H
  (assert (= temp___162 (rec__q__t__b x__split_discrs)))

;; H
  (assert
  (= (mk___rep (mk___split_discrs temp___164)
     (mk___split_fields temp___1641 temp___1642)) temp___1623))

;; H
  (assert
  (= (mk___split_fields__ref (mk___split_fields result result1)) (mk___split_fields__ref
                                                                 (mk___split_fields
                                                                 x__split_fields
                                                                 x__split_fields1))))

;; H
  (assert (= temp___1641 x__split_fields2))

;; H
  (assert (= temp___1642 x__split_fields3))

;; H
  (assert (= x__split_discrs (mk___split_discrs temp___164)))

;; H
  (assert (= (rec__q__t__b y__split_discrs) r6b))

;; H
  (assert
  (and
  (= temp___1653 (change
                 (mk___rep y__split_discrs
                 (mk___split_fields y__split_fields y__split_fields1))))
  (change__function_guard temp___1653
  (mk___rep y__split_discrs
  (mk___split_fields y__split_fields y__split_fields1)))))

;; H
  (assert (= temp___165 (rec__q__t__b y__split_discrs)))

;; H
  (assert
  (= (mk___rep (mk___split_discrs temp___167)
     (mk___split_fields temp___1671 temp___1672)) temp___1653))

;; H
  (assert (= result2 y__split_fields))

;; H
  (assert (= result3 y__split_fields1))

;; H
  (assert (= y__split_fields2 (mk___split_fields temp___1671 temp___1672)))

;; H
  (assert (= y__split_discrs (mk___split_discrs temp___167)))

;; H
  (assert (= y__split_fields3 (mk___split_fields__ref y__split_fields2)))

;; H
  (assert (= x__split_fields4 (mk___split_fields__ref x__split_fields6)))

;; H
  (assert (= y__split_fields4 y__split_fields2))

;; H
  (assert (= x__split_fields5 x__split_fields6))

(assert
;; WP_parameter_def
 ;; File "q.ads", line 2, characters 0-0
  (not
  (= (bool_eq1
     (mk___rep x__split_discrs (us_split_fields__content x__split_fields4))
     (mk___rep y__split_discrs (us_split_fields__content y__split_fields3))) true)))
(check-sat)
