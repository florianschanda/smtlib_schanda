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

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Bool)

(declare-sort failure_reason 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (failure_reason failure_reason) Bool)

(declare-fun dummy1 () failure_reason)

(declare-datatypes ()
((failure_reason__ref
 (mk_failure_reason__ref (failure_reason__content failure_reason)))))
(define-fun failure_reason__ref___projection ((a failure_reason__ref)) failure_reason 
  (failure_reason__content a))

(declare-fun to_rep1 (failure_reason) Int)

(declare-fun of_rep1 (Int) failure_reason)

;; inversion_axiom
  (assert
  (forall ((x failure_reason))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x failure_reason)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__test__search_result__found Bool)))))
(define-fun us_split_discrs_4__projection ((a us_split_discrs)) Bool 
  (rec__test__search_result__found a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref_3__projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__test__search_result__index integer)(rec__test__search_result__reason failure_reason)))))
(define-fun us_split_fields_Index__projection ((a us_split_fields)) integer 
  (rec__test__search_result__index a))

(define-fun us_split_fields_Reason__projection ((a us_split_fields)) failure_reason 
  (rec__test__search_result__reason a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_4__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)(attr__constrained Bool)))))
(define-fun us_rep_7__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                              a))

(define-fun us_rep_8__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun us_rep_9__projection ((a us_rep)) Bool (attr__constrained a))

(define-fun test__search_result__index__pred ((a us_rep)) Bool (= (to_int1
                                                                  (rec__test__search_result__found
                                                                  (us_split_discrs1
                                                                  a))) 1))

(define-fun test__search_result__reason__pred ((a us_rep)) Bool (= (to_int1
                                                                   (rec__test__search_result__found
                                                                   (us_split_discrs1
                                                                   a))) 0))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (rec__test__search_result__found
                           (us_split_discrs1 a)) (rec__test__search_result__found
                                                 (us_split_discrs1 b)))
                        (=> (test__search_result__index__pred a)
                        (= (to_rep
                           (rec__test__search_result__index
                           (us_split_fields1 a))) (to_rep
                                                  (rec__test__search_result__index
                                                  (us_split_fields1 b))))))
                        (=> (test__search_result__reason__pred a)
                        (= (to_rep1
                           (rec__test__search_result__reason
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__test__search_result__reason
                                                  (us_split_fields1 b))))))
                   true false))

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

(declare-fun test__search_result__found__first__bit () Int)

(declare-fun test__search_result__found__last__bit () Int)

(declare-fun test__search_result__found__position () Int)

;; test__search_result__found__first__bit_axiom
  (assert (<= 0 test__search_result__found__first__bit))

;; test__search_result__found__last__bit_axiom
  (assert
  (< test__search_result__found__first__bit test__search_result__found__last__bit))

;; test__search_result__found__position_axiom
  (assert (<= 0 test__search_result__found__position))

(declare-fun test__search_result__index__first__bit () Int)

(declare-fun test__search_result__index__last__bit () Int)

(declare-fun test__search_result__index__position () Int)

;; test__search_result__index__first__bit_axiom
  (assert (<= 0 test__search_result__index__first__bit))

;; test__search_result__index__last__bit_axiom
  (assert
  (< test__search_result__index__first__bit test__search_result__index__last__bit))

;; test__search_result__index__position_axiom
  (assert (<= 0 test__search_result__index__position))

(declare-fun test__search_result__reason__first__bit () Int)

(declare-fun test__search_result__reason__last__bit () Int)

(declare-fun test__search_result__reason__position () Int)

;; test__search_result__reason__first__bit_axiom
  (assert (<= 0 test__search_result__reason__first__bit))

;; test__search_result__reason__last__bit_axiom
  (assert
  (< test__search_result__reason__first__bit test__search_result__reason__last__bit))

;; test__search_result__reason__position_axiom
  (assert (<= 0 test__search_result__reason__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((search_result__ref (mk_search_result__ref (search_result__content us_rep)))))
(define-fun search_result__ref___projection ((a search_result__ref)) us_rep 
  (search_result__content a))

(define-fun default_initial_assumption ((temp___expr_211 us_rep)
  (temp___skip_top_level_212 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_211) false)
                                         (= (rec__test__search_result__found
                                            (us_split_discrs1
                                            temp___expr_211)) (of_int 0))))

(declare-fun x__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_203 Int)
  (temp___is_init_200 Bool) (temp___skip_constant_201 Bool)
  (temp___do_toplevel_202 Bool)) Bool (=>
                                      (or (= temp___is_init_200 true)
                                      (<= 0 2)) (in_range2 temp___expr_203)))

(declare-fun x__split_discrs () Bool)

(assert
;; WP_parameter_def
 ;; File "test.adb", line 80, characters 0-0
  (not (= (to_int1 x__split_discrs) 1)))
(check-sat)
