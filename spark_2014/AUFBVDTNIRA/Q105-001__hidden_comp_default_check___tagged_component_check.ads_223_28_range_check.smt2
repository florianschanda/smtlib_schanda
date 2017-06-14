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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun hide (Int) Int)

(declare-fun hide__function_guard (Int Int) Bool)

;; hide__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (hide x)))
     (=> (hide__function_guard result x) (dynamic_invariant result true false
     true)))) :pattern ((hide x)) )))

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
((us_split_fields
 (mk___split_fields
 (rec__tagged_component_check__s__p4__root__f natural)(rec__ext__ us_private)))))
(define-fun us_split_fields_F33__projection ((a us_split_fields)) natural 
  (rec__tagged_component_check__s__p4__root__f a))

(define-fun us_split_fields_37__projection ((a us_split_fields)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_37__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)(attr__tag Int)))))
(define-fun us_rep_73__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                               a))

(define-fun us_rep_74__projection ((a us_rep)) Int (attr__tag a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__tagged_component_check__s__p4__root__f
                           (us_split_fields1 a))) (to_rep
                                                  (rec__tagged_component_check__s__p4__root__f
                                                  (us_split_fields1 b))))
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

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

(declare-fun tagged_component_check__s__p4__root__f__first__bit () Int)

(declare-fun tagged_component_check__s__p4__root__f__last__bit () Int)

(declare-fun tagged_component_check__s__p4__root__f__position () Int)

;; tagged_component_check__s__p4__root__f__first__bit_axiom
  (assert (<= 0 tagged_component_check__s__p4__root__f__first__bit))

;; tagged_component_check__s__p4__root__f__last__bit_axiom
  (assert
  (< tagged_component_check__s__p4__root__f__first__bit tagged_component_check__s__p4__root__f__last__bit))

;; tagged_component_check__s__p4__root__f__position_axiom
  (assert (<= 0 tagged_component_check__s__p4__root__f__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((root__ref (mk_root__ref (root__content us_rep)))))
(define-fun root__ref_14__projection ((a root__ref)) us_rep (root__content a))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__tagged_component_check__s__p4__c us_main_type)(rec__tagged_component_check__s__p4__root__f1 natural)(rec__ext__1 us_private)))))
(define-fun us_split_fields_C9__projection ((a us_split_fields2)) us_main_type 
  (rec__tagged_component_check__s__p4__c a))

(define-fun us_split_fields_F34__projection ((a us_split_fields2)) natural 
  (rec__tagged_component_check__s__p4__root__f1 a))

(define-fun us_split_fields_38__projection ((a us_split_fields2)) us_private 
  (rec__ext__1 a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_38__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)(attr__tag1 Int)))))
(define-fun us_rep_75__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                 a))

(define-fun us_rep_76__projection ((a us_rep1)) Int (attr__tag1 a))

(declare-fun hide_ext__ (us_main_type us_private) us_private)

(declare-fun extract__c (us_private) us_main_type)

;; extract__c__conv
  (assert
  (forall ((c us_main_type))
  (forall ((rec__ext__2 us_private))
  (= (extract__c (hide_ext__ c rec__ext__2)) c))))

(declare-fun extract__ext__ (us_private) us_private)

(define-fun to_base ((a us_rep1)) us_rep (mk___rep
                                         (mk___split_fields
                                         (rec__tagged_component_check__s__p4__root__f1
                                         (us_split_fields3 a))
                                         (hide_ext__
                                         (rec__tagged_component_check__s__p4__c
                                         (us_split_fields3 a))
                                         (rec__ext__1 (us_split_fields3 a))))
                                         (attr__tag1 a)))

(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1
                                         (mk___split_fields1
                                         (extract__c
                                         (rec__ext__ (us_split_fields1 r)))
                                         (rec__tagged_component_check__s__p4__root__f
                                         (us_split_fields1 r))
                                         (extract__ext__
                                         (rec__ext__ (us_split_fields1 r))))
                                         (attr__tag r)))

(define-fun bool_eq3 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (us_main_eq
                            (rec__tagged_component_check__s__p4__c
                            (us_split_fields3 a))
                            (rec__tagged_component_check__s__p4__c
                            (us_split_fields3 b))) true)
                         (= (to_rep
                            (rec__tagged_component_check__s__p4__root__f1
                            (us_split_fields3 a))) (to_rep
                                                   (rec__tagged_component_check__s__p4__root__f1
                                                   (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq3 (us_rep1 us_rep1) Bool)

(declare-fun us_tag1 () Int)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep1) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))

(declare-fun tagged_component_check__s__p4__root__f__first__bit1 () Int)

(declare-fun tagged_component_check__s__p4__root__f__last__bit1 () Int)

(declare-fun tagged_component_check__s__p4__root__f__position1 () Int)

;; tagged_component_check__s__p4__root__f__first__bit_axiom
  (assert (<= 0 tagged_component_check__s__p4__root__f__first__bit1))

;; tagged_component_check__s__p4__root__f__last__bit_axiom
  (assert
  (< tagged_component_check__s__p4__root__f__first__bit1 tagged_component_check__s__p4__root__f__last__bit1))

;; tagged_component_check__s__p4__root__f__position_axiom
  (assert (<= 0 tagged_component_check__s__p4__root__f__position1))

(declare-fun dummy3 () us_rep1)

(declare-datatypes () ((c__ref (mk_c__ref (c__content us_rep1)))))
(define-fun c__ref_14__projection ((a c__ref)) us_rep1 (c__content a))

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2
 (rec__tagged_component_check__s__p4__c1 us_main_type)(rec__tagged_component_check__s__d4__h natural)(rec__tagged_component_check__s__p4__root__f2 natural)(rec__ext__2 us_private)))))
(define-fun us_split_fields_C11__projection ((a us_split_fields4)) us_main_type 
  (rec__tagged_component_check__s__p4__c1 a))

(define-fun us_split_fields_H14__projection ((a us_split_fields4)) natural 
  (rec__tagged_component_check__s__d4__h a))

(define-fun us_split_fields_F39__projection ((a us_split_fields4)) natural 
  (rec__tagged_component_check__s__p4__root__f2 a))

(define-fun us_split_fields_44__projection ((a us_split_fields4)) us_private 
  (rec__ext__2 a))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_44__projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)(attr__tag2 Int)))))
(define-fun us_rep_87__projection ((a us_rep2)) us_split_fields4 (us_split_fields5
                                                                 a))

(define-fun us_rep_88__projection ((a us_rep2)) Int (attr__tag2 a))

(declare-fun hide_ext__1 (us_main_type natural us_private) us_private)

;; extract__c__conv
  (assert
  (forall ((c us_main_type))
  (forall ((h natural))
  (forall ((rec__ext__3 us_private))
  (= (extract__c (hide_ext__1 c h rec__ext__3)) c)))))

(declare-fun extract__h (us_private) natural)

;; extract__h__conv
  (assert
  (forall ((c us_main_type))
  (forall ((h natural))
  (forall ((rec__ext__3 us_private))
  (= (extract__h (hide_ext__1 c h rec__ext__3)) h)))))

(declare-fun extract__ext__1 (us_private) us_private)

(define-fun to_base1 ((a us_rep2)) us_rep (mk___rep
                                          (mk___split_fields
                                          (rec__tagged_component_check__s__p4__root__f2
                                          (us_split_fields5 a))
                                          (hide_ext__1
                                          (rec__tagged_component_check__s__p4__c1
                                          (us_split_fields5 a))
                                          (rec__tagged_component_check__s__d4__h
                                          (us_split_fields5 a))
                                          (rec__ext__2 (us_split_fields5 a))))
                                          (attr__tag2 a)))

(define-fun of_base1 ((r us_rep)) us_rep2 (mk___rep2
                                          (mk___split_fields2
                                          (extract__c
                                          (rec__ext__ (us_split_fields1 r)))
                                          (extract__h
                                          (rec__ext__ (us_split_fields1 r)))
                                          (rec__tagged_component_check__s__p4__root__f
                                          (us_split_fields1 r))
                                          (extract__ext__1
                                          (rec__ext__ (us_split_fields1 r))))
                                          (attr__tag r)))

(define-fun bool_eq4 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (and
                         (= (us_main_eq
                            (rec__tagged_component_check__s__p4__c1
                            (us_split_fields5 a))
                            (rec__tagged_component_check__s__p4__c1
                            (us_split_fields5 b))) true)
                         (= (to_rep
                            (rec__tagged_component_check__s__d4__h
                            (us_split_fields5 a))) (to_rep
                                                   (rec__tagged_component_check__s__d4__h
                                                   (us_split_fields5 b)))))
                         (= (to_rep
                            (rec__tagged_component_check__s__p4__root__f2
                            (us_split_fields5 a))) (to_rep
                                                   (rec__tagged_component_check__s__p4__root__f2
                                                   (us_split_fields5 b)))))
                    true false))

(declare-fun user_eq4 (us_rep2 us_rep2) Bool)

(declare-fun us_tag2 () Int)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep2) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))

(declare-fun tagged_component_check__s__d4__h__first__bit () Int)

(declare-fun tagged_component_check__s__d4__h__last__bit () Int)

(declare-fun tagged_component_check__s__d4__h__position () Int)

;; tagged_component_check__s__d4__h__first__bit_axiom
  (assert (<= 0 tagged_component_check__s__d4__h__first__bit))

;; tagged_component_check__s__d4__h__last__bit_axiom
  (assert
  (< tagged_component_check__s__d4__h__first__bit tagged_component_check__s__d4__h__last__bit))

;; tagged_component_check__s__d4__h__position_axiom
  (assert (<= 0 tagged_component_check__s__d4__h__position))

(declare-fun tagged_component_check__s__p4__root__f__first__bit2 () Int)

(declare-fun tagged_component_check__s__p4__root__f__last__bit2 () Int)

(declare-fun tagged_component_check__s__p4__root__f__position2 () Int)

;; tagged_component_check__s__p4__root__f__first__bit_axiom
  (assert (<= 0 tagged_component_check__s__p4__root__f__first__bit2))

;; tagged_component_check__s__p4__root__f__last__bit_axiom
  (assert
  (< tagged_component_check__s__p4__root__f__first__bit2 tagged_component_check__s__p4__root__f__last__bit2))

;; tagged_component_check__s__p4__root__f__position_axiom
  (assert (<= 0 tagged_component_check__s__p4__root__f__position2))

(declare-fun dummy4 () us_rep2)

(declare-datatypes () ((d4__ref (mk_d4__ref (d4__content us_rep2)))))
(define-fun d4__ref_3__projection ((a d4__ref)) us_rep2 (d4__content a))

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range
                                     temp___expr_33)))

;; temp___result_555_def
  (assert (hide__function_guard (hide 36) 36))

(define-fun default_initial_assumption ((temp___expr_553 us_rep)
  (temp___skip_top_level_554 Bool)) Bool (and
                                         (= (attr__tag temp___expr_553) 
                                         us_tag)
                                         (= (to_rep
                                            (rec__tagged_component_check__s__p4__root__f
                                            (us_split_fields1
                                            temp___expr_553))) (hide 36))))

;; temp___result_566_def
  (assert (hide__function_guard (hide 36) 36))

(define-fun default_initial_assumption1 ((temp___expr_564 us_rep1)
  (temp___skip_top_level_565 Bool)) Bool (and
                                         (= (attr__tag1 temp___expr_564) 
                                         us_tag1)
                                         (= (to_rep
                                            (rec__tagged_component_check__s__p4__root__f1
                                            (us_split_fields3
                                            temp___expr_564))) (hide 36))))

;; temp___result_625_def
  (assert (hide__function_guard (hide 43) 43))

;; temp___result_626_def
  (assert (hide__function_guard (hide 36) 36))

(define-fun default_initial_assumption2 ((temp___expr_623 us_rep2)
  (temp___skip_top_level_624 Bool)) Bool (and
                                         (= (attr__tag2 temp___expr_623) 
                                         us_tag2)
                                         (and
                                         (= (to_rep
                                            (rec__tagged_component_check__s__d4__h
                                            (us_split_fields5
                                            temp___expr_623))) (hide 43))
                                         (= (to_rep
                                            (rec__tagged_component_check__s__p4__root__f2
                                            (us_split_fields5
                                            temp___expr_623))) (hide 36)))))

(declare-fun o () Int)

;; H
  (assert
  (and (and (= o (hide 36)) (hide__function_guard o 36)) (in_range1 o)))

(assert
;; WP_parameter_def
 ;; File "tagged_component_check.ads", line 3, characters 0-0
  (not (in_range o)))
(check-sat)
