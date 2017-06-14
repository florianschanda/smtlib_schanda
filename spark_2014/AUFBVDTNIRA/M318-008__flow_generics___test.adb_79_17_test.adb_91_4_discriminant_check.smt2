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

(declare-sort item_t 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 9)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (item_t item_t) Bool)

(declare-fun dummy1 () item_t)

(declare-datatypes ()
((item_t__ref (mk_item_t__ref (item_t__content item_t)))))
(define-fun item_t__ref_4__projection ((a item_t__ref)) item_t (item_t__content
                                                               a))

(declare-fun to_rep1 (item_t) Int)

(declare-fun of_rep1 (Int) item_t)

;; inversion_axiom
  (assert
  (forall ((x item_t))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x item_t)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int item_t))))))
(declare-fun slide ((Array Int item_t) Int Int) (Array Int item_t))

;; slide_eq
  (assert
  (forall ((a (Array Int item_t)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int item_t)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int item_t) Int Int (Array Int item_t) Int
  Int) (Array Int item_t))

;; concat_def
  (assert
  (forall ((a (Array Int item_t)) (b (Array Int item_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (item_t Int) (Array Int item_t))

;; singleton_def
  (assert
  (forall ((v item_t))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int item_t)) (a__first Int) (a__last Int)
  (b (Array Int item_t)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (to_rep1 (select a temp___idx_133)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_133)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int item_t)) (b (Array Int item_t)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep1 (select a temp___idx_133)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_133)))))))))))

(declare-fun compare ((Array Int item_t) Int Int (Array Int item_t) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int item_t)) (b (Array Int item_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int item_t)) (b (Array Int item_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int item_t)) (b (Array Int item_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy2 () (Array Int item_t))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int item_t)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int item_t)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int item_t)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int item_t))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int item_t))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int item_t))) (<= 0 (object__alignment a))))

(declare-fun user_eq2 ((Array Int item_t) (Array Int item_t)) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__test__fruit_rec__record_t__d natural)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) natural 
  (rec__test__fruit_rec__record_t__d a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__test__fruit_rec__record_t__single_item item_t)(rec__test__fruit_rec__record_t__a item_t)(rec__test__fruit_rec__record_t__b item_t)(rec__test__fruit_rec__record_t__arr (Array Int item_t))))))
(define-fun us_split_fields_Single_Item__projection ((a us_split_fields)) item_t 
  (rec__test__fruit_rec__record_t__single_item a))

(define-fun us_split_fields_A__projection ((a us_split_fields)) item_t 
  (rec__test__fruit_rec__record_t__a a))

(define-fun us_split_fields_B__projection ((a us_split_fields)) item_t 
  (rec__test__fruit_rec__record_t__b a))

(define-fun us_split_fields_Arr__projection ((a us_split_fields)) (Array Int item_t) 
  (rec__test__fruit_rec__record_t__arr a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)(attr__constrained Bool)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun us_rep_3__projection ((a us_rep)) Bool (attr__constrained a))

(define-fun test__fruit_rec__record_t__single_item__pred ((a us_rep)) Bool (= 
  (to_rep (rec__test__fruit_rec__record_t__d (us_split_discrs1 a))) 1))

(define-fun test__fruit_rec__record_t__a__pred ((a us_rep)) Bool (= (to_rep
                                                                    (rec__test__fruit_rec__record_t__d
                                                                    (us_split_discrs1
                                                                    a))) 2))

(define-fun test__fruit_rec__record_t__b__pred ((a us_rep)) Bool (= (to_rep
                                                                    (rec__test__fruit_rec__record_t__d
                                                                    (us_split_discrs1
                                                                    a))) 2))

(define-fun test__fruit_rec__record_t__arr__pred ((a us_rep)) Bool (and
                                                                   (not
                                                                   (= 
                                                                   (to_rep
                                                                   (rec__test__fruit_rec__record_t__d
                                                                   (us_split_discrs1
                                                                   a))) 1))
                                                                   (not
                                                                   (= 
                                                                   (to_rep
                                                                   (rec__test__fruit_rec__record_t__d
                                                                   (us_split_discrs1
                                                                   a))) 2))))

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (= (to_rep
                           (rec__test__fruit_rec__record_t__d
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__test__fruit_rec__record_t__d
                                                  (us_split_discrs1 b))))
                        (=> (test__fruit_rec__record_t__single_item__pred a)
                        (= (to_rep1
                           (rec__test__fruit_rec__record_t__single_item
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__test__fruit_rec__record_t__single_item
                                                  (us_split_fields1 b))))))
                        (=> (test__fruit_rec__record_t__a__pred a)
                        (= (to_rep1
                           (rec__test__fruit_rec__record_t__a
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__test__fruit_rec__record_t__a
                                                  (us_split_fields1 b))))))
                        (=> (test__fruit_rec__record_t__b__pred a)
                        (= (to_rep1
                           (rec__test__fruit_rec__record_t__b
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__test__fruit_rec__record_t__b
                                                  (us_split_fields1 b))))))
                        (=> (test__fruit_rec__record_t__arr__pred a)
                        (= (bool_eq2
                           (rec__test__fruit_rec__record_t__arr
                           (us_split_fields1 a)) 1 5
                           (rec__test__fruit_rec__record_t__arr
                           (us_split_fields1 b)) 1 5) true)))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

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

(declare-fun test__fruit_rec__record_t__d__first__bit () Int)

(declare-fun test__fruit_rec__record_t__d__last__bit () Int)

(declare-fun test__fruit_rec__record_t__d__position () Int)

;; test__fruit_rec__record_t__d__first__bit_axiom
  (assert (<= 0 test__fruit_rec__record_t__d__first__bit))

;; test__fruit_rec__record_t__d__last__bit_axiom
  (assert
  (< test__fruit_rec__record_t__d__first__bit test__fruit_rec__record_t__d__last__bit))

;; test__fruit_rec__record_t__d__position_axiom
  (assert (<= 0 test__fruit_rec__record_t__d__position))

(declare-fun test__fruit_rec__record_t__single_item__first__bit () Int)

(declare-fun test__fruit_rec__record_t__single_item__last__bit () Int)

(declare-fun test__fruit_rec__record_t__single_item__position () Int)

;; test__fruit_rec__record_t__single_item__first__bit_axiom
  (assert (<= 0 test__fruit_rec__record_t__single_item__first__bit))

;; test__fruit_rec__record_t__single_item__last__bit_axiom
  (assert
  (< test__fruit_rec__record_t__single_item__first__bit test__fruit_rec__record_t__single_item__last__bit))

;; test__fruit_rec__record_t__single_item__position_axiom
  (assert (<= 0 test__fruit_rec__record_t__single_item__position))

(declare-fun test__fruit_rec__record_t__a__first__bit () Int)

(declare-fun test__fruit_rec__record_t__a__last__bit () Int)

(declare-fun test__fruit_rec__record_t__a__position () Int)

;; test__fruit_rec__record_t__a__first__bit_axiom
  (assert (<= 0 test__fruit_rec__record_t__a__first__bit))

;; test__fruit_rec__record_t__a__last__bit_axiom
  (assert
  (< test__fruit_rec__record_t__a__first__bit test__fruit_rec__record_t__a__last__bit))

;; test__fruit_rec__record_t__a__position_axiom
  (assert (<= 0 test__fruit_rec__record_t__a__position))

(declare-fun test__fruit_rec__record_t__b__first__bit () Int)

(declare-fun test__fruit_rec__record_t__b__last__bit () Int)

(declare-fun test__fruit_rec__record_t__b__position () Int)

;; test__fruit_rec__record_t__b__first__bit_axiom
  (assert (<= 0 test__fruit_rec__record_t__b__first__bit))

;; test__fruit_rec__record_t__b__last__bit_axiom
  (assert
  (< test__fruit_rec__record_t__b__first__bit test__fruit_rec__record_t__b__last__bit))

;; test__fruit_rec__record_t__b__position_axiom
  (assert (<= 0 test__fruit_rec__record_t__b__position))

(declare-fun test__fruit_rec__record_t__arr__first__bit () Int)

(declare-fun test__fruit_rec__record_t__arr__last__bit () Int)

(declare-fun test__fruit_rec__record_t__arr__position () Int)

;; test__fruit_rec__record_t__arr__first__bit_axiom
  (assert (<= 0 test__fruit_rec__record_t__arr__first__bit))

;; test__fruit_rec__record_t__arr__last__bit_axiom
  (assert
  (< test__fruit_rec__record_t__arr__first__bit test__fruit_rec__record_t__arr__last__bit))

;; test__fruit_rec__record_t__arr__position_axiom
  (assert (<= 0 test__fruit_rec__record_t__arr__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((record_t__ref (mk_record_t__ref (record_t__content us_rep)))))
(define-fun record_t__ref___projection ((a record_t__ref)) us_rep (record_t__content
                                                                  a))

(define-fun default_initial_assumption ((temp___expr_253 us_rep)
  (temp___skip_top_level_254 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_253) false)
                                         (= (to_rep
                                            (rec__test__fruit_rec__record_t__d
                                            (us_split_discrs1
                                            temp___expr_253))) 0)))

(declare-fun rec1 () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun rec2__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range
                                     temp___expr_33)))

(define-fun dynamic_invariant1 ((temp___expr_235 Int)
  (temp___is_init_232 Bool) (temp___skip_constant_233 Bool)
  (temp___do_toplevel_234 Bool)) Bool (=>
                                      (or (= temp___is_init_232 true)
                                      (<= 0 9)) (in_range1 temp___expr_235)))

(declare-fun rec2__split_fields () item_t)

(declare-fun rec2__split_fields1 () item_t)

(declare-fun rec2__split_fields2 () item_t)

(declare-fun rec2__split_fields3 () (Array Int item_t))

(declare-fun rec2__split_discrs () natural)

(declare-fun us () Int)

;; H
  (assert
  (= (to_rep (rec__test__fruit_rec__record_t__d (us_split_discrs1 rec1))) 
  (to_rep rec2__split_discrs)))

;; H
  (assert
  (and
  (= us (to_rep (rec__test__fruit_rec__record_t__d (us_split_discrs1 rec1))))
  (in_range
  (to_rep (rec__test__fruit_rec__record_t__d (us_split_discrs1 rec1))))))

;; H
  (assert
  (not
  (= (to_rep (rec__test__fruit_rec__record_t__d (us_split_discrs1 rec1))) 1)))

;; H
  (assert
  (not
  (= (to_rep (rec__test__fruit_rec__record_t__d (us_split_discrs1 rec1))) 2)))

(assert
;; WP_parameter_def
 ;; File "test.adb", line 46, characters 0-0
  (not (test__fruit_rec__record_t__arr__pred
  (mk___rep (mk___split_discrs rec2__split_discrs)
  (mk___split_fields rec2__split_fields rec2__split_fields1
  rec2__split_fields2 rec2__split_fields3) rec2__attr__constrained))))
(check-sat)
