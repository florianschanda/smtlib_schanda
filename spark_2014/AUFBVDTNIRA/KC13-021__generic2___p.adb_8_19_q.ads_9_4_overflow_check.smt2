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

(declare-fun qf1 (Int) Int)

(declare-fun qf1__function_guard (Int Int) Bool)

;; qf1__post_axiom
  (assert
  (forall ((j Int))
  (! (=> (dynamic_invariant j true true true)
     (let ((result (qf1 j)))
     (=> (qf1__function_guard result j) (dynamic_invariant result true false
     true)))) :pattern ((qf1 j)) )))

(declare-sort t1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (t1 t1) Bool)

(declare-fun dummy1 () t1)

(declare-datatypes () ((t1__ref (mk_t1__ref (t1__content t1)))))
(define-fun t1__ref___projection ((a t1__ref)) t1 (t1__content a))

(define-fun dynamic_invariant1 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range1 temp___expr_135)))

(declare-fun to_rep1 (t1) Int)

(declare-fun of_rep1 (Int) t1)

;; inversion_axiom
  (assert
  (forall ((x t1)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x t1)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t3 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (t3 t3) Bool)

(declare-fun dummy2 () t3)

(declare-datatypes () ((t3__ref (mk_t3__ref (t3__content t3)))))
(define-fun t3__ref___projection ((a t3__ref)) t3 (t3__content a))

(define-fun dynamic_invariant2 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_141)))

(declare-fun to_rep2 (t3) Int)

(declare-fun of_rep2 (Int) t3)

;; inversion_axiom
  (assert
  (forall ((x t3)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x t3)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__q__p1__r__a t1)(rec__q__p1__r__b Bool)(rec__q__p1__r__c t3)(rec__q__p1__r__d integer)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) t1 (rec__q__p1__r__a
                                                                   a))

(define-fun us_split_fields_B__projection ((a us_split_fields)) Bool 
  (rec__q__p1__r__b a))

(define-fun us_split_fields_C__projection ((a us_split_fields)) t3 (rec__q__p1__r__c
                                                                   a))

(define-fun us_split_fields_D__projection ((a us_split_fields)) integer 
  (rec__q__p1__r__d a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (= (to_rep1 (rec__q__p1__r__a (us_split_fields1 a))) 
                        (to_rep1 (rec__q__p1__r__a (us_split_fields1 b))))
                        (= (rec__q__p1__r__b (us_split_fields1 a)) (rec__q__p1__r__b
                                                                   (us_split_fields1
                                                                   b))))
                        (= (to_rep2 (rec__q__p1__r__c (us_split_fields1 a))) 
                        (to_rep2 (rec__q__p1__r__c (us_split_fields1 b)))))
                        (= (to_rep (rec__q__p1__r__d (us_split_fields1 a))) 
                        (to_rep (rec__q__p1__r__d (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

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

(declare-fun q__p1__r__a__first__bit () Int)

(declare-fun q__p1__r__a__last__bit () Int)

(declare-fun q__p1__r__a__position () Int)

;; q__p1__r__a__first__bit_axiom
  (assert (<= 0 q__p1__r__a__first__bit))

;; q__p1__r__a__last__bit_axiom
  (assert (< q__p1__r__a__first__bit q__p1__r__a__last__bit))

;; q__p1__r__a__position_axiom
  (assert (<= 0 q__p1__r__a__position))

(declare-fun q__p1__r__b__first__bit () Int)

(declare-fun q__p1__r__b__last__bit () Int)

(declare-fun q__p1__r__b__position () Int)

;; q__p1__r__b__first__bit_axiom
  (assert (<= 0 q__p1__r__b__first__bit))

;; q__p1__r__b__last__bit_axiom
  (assert (< q__p1__r__b__first__bit q__p1__r__b__last__bit))

;; q__p1__r__b__position_axiom
  (assert (<= 0 q__p1__r__b__position))

(declare-fun q__p1__r__c__first__bit () Int)

(declare-fun q__p1__r__c__last__bit () Int)

(declare-fun q__p1__r__c__position () Int)

;; q__p1__r__c__first__bit_axiom
  (assert (<= 0 q__p1__r__c__first__bit))

;; q__p1__r__c__last__bit_axiom
  (assert (< q__p1__r__c__first__bit q__p1__r__c__last__bit))

;; q__p1__r__c__position_axiom
  (assert (<= 0 q__p1__r__c__position))

(declare-fun q__p1__r__d__first__bit () Int)

(declare-fun q__p1__r__d__last__bit () Int)

(declare-fun q__p1__r__d__position () Int)

;; q__p1__r__d__first__bit_axiom
  (assert (<= 0 q__p1__r__d__first__bit))

;; q__p1__r__d__last__bit_axiom
  (assert (< q__p1__r__d__first__bit q__p1__r__d__last__bit))

;; q__p1__r__d__position_axiom
  (assert (<= 0 q__p1__r__d__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((r__ref (mk_r__ref (r__content us_rep)))))
(define-fun r__ref___projection ((a r__ref)) us_rep (r__content a))

(declare-fun a () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun c () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun tmp () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun result () Int)

(declare-fun tmp1 () Int)

;; H
  (assert (in_range1 a))

;; H
  (assert (in_range2 c))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range tmp)))

;; H
  (assert (= result tmp))

;; H
  (assert (= tmp1 1))

;; H
  (assert (and (and (= o (qf1 2)) (qf1__function_guard o 2)) (in_range o)))

;; H
  (assert (= o1 (+ tmp1 o)))

(assert
;; WP_parameter_def
 ;; File "p.ads", line 16, characters 0-0
  (not (in_range o1)))
(check-sat)
