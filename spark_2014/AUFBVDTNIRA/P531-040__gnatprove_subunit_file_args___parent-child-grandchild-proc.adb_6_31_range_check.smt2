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

(declare-sort idx_t 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (idx_t idx_t) Bool)

(declare-fun dummy () idx_t)

(declare-datatypes () ((idx_t__ref (mk_idx_t__ref (idx_t__content idx_t)))))
(define-fun idx_t__ref___projection ((a idx_t__ref)) idx_t (idx_t__content a))

(define-fun dynamic_invariant ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 1 100)) (in_range1
                                      temp___expr_136)))

(declare-fun to_rep (idx_t) Int)

(declare-fun of_rep (Int) idx_t)

;; inversion_axiom
  (assert
  (forall ((x idx_t)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x idx_t)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-fun to_rep1 (natural) Int)

(declare-fun of_rep1 (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__parent__child__grandchild__point_t__x natural)(rec__parent__child__grandchild__point_t__y natural)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) natural 
  (rec__parent__child__grandchild__point_t__x a))

(define-fun us_split_fields_Y__projection ((a us_split_fields)) natural 
  (rec__parent__child__grandchild__point_t__y a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep1
                           (rec__parent__child__grandchild__point_t__x
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__parent__child__grandchild__point_t__x
                                                  (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__parent__child__grandchild__point_t__y
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__parent__child__grandchild__point_t__y
                                                  (us_split_fields1 b)))))
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

(declare-fun parent__child__grandchild__point_t__x__first__bit () Int)

(declare-fun parent__child__grandchild__point_t__x__last__bit () Int)

(declare-fun parent__child__grandchild__point_t__x__position () Int)

;; parent__child__grandchild__point_t__x__first__bit_axiom
  (assert (<= 0 parent__child__grandchild__point_t__x__first__bit))

;; parent__child__grandchild__point_t__x__last__bit_axiom
  (assert
  (< parent__child__grandchild__point_t__x__first__bit parent__child__grandchild__point_t__x__last__bit))

;; parent__child__grandchild__point_t__x__position_axiom
  (assert (<= 0 parent__child__grandchild__point_t__x__position))

(declare-fun parent__child__grandchild__point_t__y__first__bit () Int)

(declare-fun parent__child__grandchild__point_t__y__last__bit () Int)

(declare-fun parent__child__grandchild__point_t__y__position () Int)

;; parent__child__grandchild__point_t__y__first__bit_axiom
  (assert (<= 0 parent__child__grandchild__point_t__y__first__bit))

;; parent__child__grandchild__point_t__y__last__bit_axiom
  (assert
  (< parent__child__grandchild__point_t__y__first__bit parent__child__grandchild__point_t__y__last__bit))

;; parent__child__grandchild__point_t__y__position_axiom
  (assert (<= 0 parent__child__grandchild__point_t__y__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((point_t__ref (mk_point_t__ref (point_t__content us_rep)))))
(define-fun point_t__ref___projection ((a point_t__ref)) us_rep (point_t__content
                                                                a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int us_rep) Int Int (Array Int us_rep) Int
  Int) (Array Int us_rep))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (us_rep Int) (Array Int us_rep))

;; singleton_def
  (assert
  (forall ((v us_rep))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (bool_eq2 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq2 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun dummy3 () (Array Int us_rep))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int us_rep)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int us_rep)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int us_rep)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int us_rep))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int us_rep))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int us_rep))) (<= 0 (object__alignment1 a))))

(declare-fun user_eq3 ((Array Int us_rep) (Array Int us_rep)) Bool)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__parent__child__grandchild__exp_seq_t__len natural)(rec__parent__child__grandchild__exp_seq_t__points (Array Int us_rep))))))
(define-fun us_split_fields_Len__projection ((a us_split_fields2)) natural 
  (rec__parent__child__grandchild__exp_seq_t__len a))

(define-fun us_split_fields_Points__projection ((a us_split_fields2)) (Array Int us_rep) 
  (rec__parent__child__grandchild__exp_seq_t__points a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq4 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep1
                            (rec__parent__child__grandchild__exp_seq_t__len
                            (us_split_fields3 a))) (to_rep1
                                                   (rec__parent__child__grandchild__exp_seq_t__len
                                                   (us_split_fields3 b))))
                         (= (bool_eq3
                            (rec__parent__child__grandchild__exp_seq_t__points
                            (us_split_fields3 a)) 1 100
                            (rec__parent__child__grandchild__exp_seq_t__points
                            (us_split_fields3 b)) 1 100) true))
                    true false))

(declare-fun user_eq4 (us_rep1 us_rep1) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep1) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))

(declare-fun parent__child__grandchild__exp_seq_t__len__first__bit () Int)

(declare-fun parent__child__grandchild__exp_seq_t__len__last__bit () Int)

(declare-fun parent__child__grandchild__exp_seq_t__len__position () Int)

;; parent__child__grandchild__exp_seq_t__len__first__bit_axiom
  (assert (<= 0 parent__child__grandchild__exp_seq_t__len__first__bit))

;; parent__child__grandchild__exp_seq_t__len__last__bit_axiom
  (assert
  (< parent__child__grandchild__exp_seq_t__len__first__bit parent__child__grandchild__exp_seq_t__len__last__bit))

;; parent__child__grandchild__exp_seq_t__len__position_axiom
  (assert (<= 0 parent__child__grandchild__exp_seq_t__len__position))

(declare-fun parent__child__grandchild__exp_seq_t__points__first__bit () Int)

(declare-fun parent__child__grandchild__exp_seq_t__points__last__bit () Int)

(declare-fun parent__child__grandchild__exp_seq_t__points__position () Int)

;; parent__child__grandchild__exp_seq_t__points__first__bit_axiom
  (assert (<= 0 parent__child__grandchild__exp_seq_t__points__first__bit))

;; parent__child__grandchild__exp_seq_t__points__last__bit_axiom
  (assert
  (< parent__child__grandchild__exp_seq_t__points__first__bit parent__child__grandchild__exp_seq_t__points__last__bit))

;; parent__child__grandchild__exp_seq_t__points__position_axiom
  (assert (<= 0 parent__child__grandchild__exp_seq_t__points__position))

(declare-fun dummy4 () us_rep1)

(declare-datatypes ()
((exp_seq_t__ref (mk_exp_seq_t__ref (exp_seq_t__content us_rep1)))))
(define-fun exp_seq_t__ref___projection ((a exp_seq_t__ref)) us_rep1 
  (exp_seq_t__content a))

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2
 (rec__parent__child__grandchild__opt_p_t__flag Bool)(rec__parent__child__grandchild__opt_p_t__idx idx_t)(rec__parent__child__grandchild__opt_p_t__the_p us_rep)))))
(define-fun us_split_fields_Flag__projection ((a us_split_fields4)) Bool 
  (rec__parent__child__grandchild__opt_p_t__flag a))

(define-fun us_split_fields_Idx__projection ((a us_split_fields4)) idx_t 
  (rec__parent__child__grandchild__opt_p_t__idx a))

(define-fun us_split_fields_The_P__projection ((a us_split_fields4)) us_rep 
  (rec__parent__child__grandchild__opt_p_t__the_p a))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep_3__projection ((a us_rep2)) us_split_fields4 (us_split_fields5
                                                                a))

(define-fun bool_eq5 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (and
                         (= (rec__parent__child__grandchild__opt_p_t__flag
                            (us_split_fields5 a)) (rec__parent__child__grandchild__opt_p_t__flag
                                                  (us_split_fields5 b)))
                         (= (to_rep
                            (rec__parent__child__grandchild__opt_p_t__idx
                            (us_split_fields5 a))) (to_rep
                                                   (rec__parent__child__grandchild__opt_p_t__idx
                                                   (us_split_fields5 b)))))
                         (= (bool_eq2
                            (rec__parent__child__grandchild__opt_p_t__the_p
                            (us_split_fields5 a))
                            (rec__parent__child__grandchild__opt_p_t__the_p
                            (us_split_fields5 b))) true))
                    true false))

(declare-fun user_eq5 (us_rep2 us_rep2) Bool)

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep2) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment3 a))))

(declare-fun parent__child__grandchild__opt_p_t__flag__first__bit () Int)

(declare-fun parent__child__grandchild__opt_p_t__flag__last__bit () Int)

(declare-fun parent__child__grandchild__opt_p_t__flag__position () Int)

;; parent__child__grandchild__opt_p_t__flag__first__bit_axiom
  (assert (<= 0 parent__child__grandchild__opt_p_t__flag__first__bit))

;; parent__child__grandchild__opt_p_t__flag__last__bit_axiom
  (assert
  (< parent__child__grandchild__opt_p_t__flag__first__bit parent__child__grandchild__opt_p_t__flag__last__bit))

;; parent__child__grandchild__opt_p_t__flag__position_axiom
  (assert (<= 0 parent__child__grandchild__opt_p_t__flag__position))

(declare-fun parent__child__grandchild__opt_p_t__idx__first__bit () Int)

(declare-fun parent__child__grandchild__opt_p_t__idx__last__bit () Int)

(declare-fun parent__child__grandchild__opt_p_t__idx__position () Int)

;; parent__child__grandchild__opt_p_t__idx__first__bit_axiom
  (assert (<= 0 parent__child__grandchild__opt_p_t__idx__first__bit))

;; parent__child__grandchild__opt_p_t__idx__last__bit_axiom
  (assert
  (< parent__child__grandchild__opt_p_t__idx__first__bit parent__child__grandchild__opt_p_t__idx__last__bit))

;; parent__child__grandchild__opt_p_t__idx__position_axiom
  (assert (<= 0 parent__child__grandchild__opt_p_t__idx__position))

(declare-fun parent__child__grandchild__opt_p_t__the_p__first__bit () Int)

(declare-fun parent__child__grandchild__opt_p_t__the_p__last__bit () Int)

(declare-fun parent__child__grandchild__opt_p_t__the_p__position () Int)

;; parent__child__grandchild__opt_p_t__the_p__first__bit_axiom
  (assert (<= 0 parent__child__grandchild__opt_p_t__the_p__first__bit))

;; parent__child__grandchild__opt_p_t__the_p__last__bit_axiom
  (assert
  (< parent__child__grandchild__opt_p_t__the_p__first__bit parent__child__grandchild__opt_p_t__the_p__last__bit))

;; parent__child__grandchild__opt_p_t__the_p__position_axiom
  (assert (<= 0 parent__child__grandchild__opt_p_t__the_p__position))

(declare-fun dummy5 () us_rep2)

(declare-datatypes ()
((opt_p_t__ref (mk_opt_p_t__ref (opt_p_t__content us_rep2)))))
(define-fun opt_p_t__ref___projection ((a opt_p_t__ref)) us_rep2 (opt_p_t__content
                                                                 a))

(declare-fun r () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

;; H
  (assert (in_range1 i))

(assert
;; WP_parameter_def
 ;; File "parent-child-grandchild.adb", line 5, characters 0-0
  (not (in_range1 (+ i 1))))
(check-sat)
