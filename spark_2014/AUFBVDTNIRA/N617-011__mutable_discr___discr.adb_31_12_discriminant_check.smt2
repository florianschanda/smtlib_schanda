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

(declare-sort natural 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range
                                     temp___expr_33)))

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__discr__with_default__c natural)))))
(define-fun us_split_discrs_4__projection ((a us_split_discrs)) natural 
  (rec__discr__with_default__c a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref_4__projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_rep
 (mk___rep (us_split_discrs1 us_split_discrs)(attr__constrained Bool)))))
(define-fun us_rep_8__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                              a))

(define-fun us_rep_9__projection ((a us_rep)) Bool (attr__constrained a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__discr__with_default__c (us_split_discrs1 a))) 
                   (to_rep
                   (rec__discr__with_default__c (us_split_discrs1 b)))) true
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

(declare-fun discr__with_default__c__first__bit () Int)

(declare-fun discr__with_default__c__last__bit () Int)

(declare-fun discr__with_default__c__position () Int)

;; discr__with_default__c__first__bit_axiom
  (assert (<= 0 discr__with_default__c__first__bit))

;; discr__with_default__c__last__bit_axiom
  (assert
  (< discr__with_default__c__first__bit discr__with_default__c__last__bit))

;; discr__with_default__c__position_axiom
  (assert (<= 0 discr__with_default__c__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((with_default__ref (mk_with_default__ref (with_default__content us_rep)))))
(define-fun with_default__ref___projection ((a with_default__ref)) us_rep 
  (with_default__content a))

(declare-fun c () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun in_range1 ((rec__discr__with_default__c1 Int)
  (a us_rep)) Bool (= rec__discr__with_default__c1 (to_rep
                                                   (rec__discr__with_default__c
                                                   (us_split_discrs1 a)))))

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

(declare-fun discr__with_default__c__first__bit1 () Int)

(declare-fun discr__with_default__c__last__bit1 () Int)

(declare-fun discr__with_default__c__position1 () Int)

;; discr__with_default__c__first__bit_axiom
  (assert (<= 0 discr__with_default__c__first__bit1))

;; discr__with_default__c__last__bit_axiom
  (assert
  (< discr__with_default__c__first__bit1 discr__with_default__c__last__bit1))

;; discr__with_default__c__position_axiom
  (assert (<= 0 discr__with_default__c__position1))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((tdS__ref (mk_tdS__ref (tdS__content us_rep)))))
(define-fun tdS__ref___projection ((a tdS__ref)) us_rep (tdS__content a))

(define-fun dynamic_invariant1 ((temp___expr_189 us_rep)
  (temp___is_init_186 Bool) (temp___skip_constant_187 Bool)
  (temp___do_toplevel_188 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_187 true))
                                      (in_range1 c temp___expr_189))
                                      (= (attr__constrained temp___expr_189) true)))

(define-fun default_initial_assumption ((temp___expr_191 us_rep)
  (temp___skip_top_level_192 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_191) true)
                                         (= (to_rep
                                            (rec__discr__with_default__c
                                            (us_split_discrs1
                                            temp___expr_191))) c)))

(declare-fun d__split_discrs () us_split_discrs)

(declare-fun d__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun in_range2 ((rec__discr__with_default__c1 Int)
  (a us_rep)) Bool (= rec__discr__with_default__c1 (to_rep
                                                   (rec__discr__with_default__c
                                                   (us_split_discrs1 a)))))

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))

(declare-fun discr__with_default__c__first__bit2 () Int)

(declare-fun discr__with_default__c__last__bit2 () Int)

(declare-fun discr__with_default__c__position2 () Int)

;; discr__with_default__c__first__bit_axiom
  (assert (<= 0 discr__with_default__c__first__bit2))

;; discr__with_default__c__last__bit_axiom
  (assert
  (< discr__with_default__c__first__bit2 discr__with_default__c__last__bit2))

;; discr__with_default__c__position_axiom
  (assert (<= 0 discr__with_default__c__position2))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((t8b__ref (mk_t8b__ref (t8b__content us_rep)))))
(define-fun t8b__ref___projection ((a t8b__ref)) us_rep (t8b__content a))

(define-fun in_range3 ((rec__discr__with_default__c1 Int)
  (a us_rep)) Bool (= rec__discr__with_default__c1 (to_rep
                                                   (rec__discr__with_default__c
                                                   (us_split_discrs1 a)))))

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))

(declare-fun discr__with_default__c__first__bit3 () Int)

(declare-fun discr__with_default__c__last__bit3 () Int)

(declare-fun discr__with_default__c__position3 () Int)

;; discr__with_default__c__first__bit_axiom
  (assert (<= 0 discr__with_default__c__first__bit3))

;; discr__with_default__c__last__bit_axiom
  (assert
  (< discr__with_default__c__first__bit3 discr__with_default__c__last__bit3))

;; discr__with_default__c__position_axiom
  (assert (<= 0 discr__with_default__c__position3))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((t9b__ref (mk_t9b__ref (t9b__content us_rep)))))
(define-fun t9b__ref___projection ((a t9b__ref)) us_rep (t9b__content a))

(define-fun default_initial_assumption1 ((temp___expr_166 us_rep)
  (temp___skip_top_level_167 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_166) false)
                                         (= (to_rep
                                            (rec__discr__with_default__c
                                            (us_split_discrs1
                                            temp___expr_166))) 0)))

(declare-fun us () Int)

(declare-fun o () natural)

(declare-fun o1 () natural)

(declare-fun o2 () natural)

(declare-fun o3 () Bool)

(declare-fun o4 () natural)

(declare-fun o5 () Bool)

(declare-fun o6 () natural)

(declare-fun o7 () Bool)

(declare-fun temp___285 () natural)

(declare-fun temp___2851 () Bool)

(declare-fun o8 () natural)

(declare-fun o9 () natural)

(declare-fun o10 () natural)

(declare-fun o11 () Bool)

(declare-fun o12 () natural)

(declare-fun o13 () Bool)

(define-fun o14 () us_rep (mk___rep (mk___split_discrs o6) o7))

(define-fun o15 () us_rep (mk___rep (mk___split_discrs o4) o5))

;; H
  (assert (in_range c))

;; H
  (assert (and (= us c) (in_range c)))

;; H
  (assert
  (and (= d__attr__constrained true)
  (= (to_rep (rec__discr__with_default__c d__split_discrs)) c)))

;; H
  (assert
  (and (= c (to_rep (rec__discr__with_default__c d__split_discrs)))
  (= d__attr__constrained true)))

;; H
  (assert (= (to_rep o) c))

;; H
  (assert (= o o1))

;; H
  (assert (= o2 o1))

;; H
  (assert (= true o3))

;; H
  (assert (= o15 (mk___rep (mk___split_discrs o2) o3)))

;; H
  (assert (= o14 o15))

;; H
  (assert (= (mk___rep (mk___split_discrs temp___285) temp___2851) o14))

;; H
  (assert (= d__split_discrs (mk___split_discrs temp___285)))

;; H
  (assert (= (to_rep o8) 0))

;; H
  (assert (= o8 o9))

;; H
  (assert (= o10 o9))

;; H
  (assert (= true o11))

;; H
  (assert
  (= (mk___rep (mk___split_discrs o12) o13) (mk___rep (mk___split_discrs o10)
                                            o11)))

(assert
;; WP_parameter_def
 ;; File "discr.adb", line 11, characters 0-0
  (not (= c (to_rep o12))))
(check-sat)
