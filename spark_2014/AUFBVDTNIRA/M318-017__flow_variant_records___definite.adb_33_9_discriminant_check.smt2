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

(declare-sort status 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (status status) Bool)

(declare-fun dummy1 () status)

(declare-datatypes ()
((status__ref (mk_status__ref (status__content status)))))
(define-fun status__ref___projection ((a status__ref)) status (status__content
                                                              a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 2)) (in_range1 temp___expr_135)))

(declare-fun to_rep1 (status) Int)

(declare-fun of_rep1 (Int) status)

;; inversion_axiom
  (assert
  (forall ((x status))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x status)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__definite__t__d status)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) status 
  (rec__definite__t__d a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__definite__t__a natural)(rec__definite__t__b natural)(rec__definite__t__x Bool)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) natural 
  (rec__definite__t__a a))

(define-fun us_split_fields_B__projection ((a us_split_fields)) natural 
  (rec__definite__t__b a))

(define-fun us_split_fields_X__projection ((a us_split_fields)) Bool 
  (rec__definite__t__x a))

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

(define-fun definite__t__b__pred ((a us_rep)) Bool (= (to_rep1
                                                      (rec__definite__t__d
                                                      (us_split_discrs1 a))) 0))

(define-fun definite__t__x__pred ((a us_rep)) Bool (= (to_rep1
                                                      (rec__definite__t__d
                                                      (us_split_discrs1 a))) 1))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (= (to_rep1
                           (rec__definite__t__d (us_split_discrs1 a))) 
                        (to_rep1 (rec__definite__t__d (us_split_discrs1 b))))
                        (= (to_rep
                           (rec__definite__t__a (us_split_fields1 a))) 
                        (to_rep (rec__definite__t__a (us_split_fields1 b)))))
                        (=> (definite__t__b__pred a)
                        (= (to_rep
                           (rec__definite__t__b (us_split_fields1 a))) 
                        (to_rep (rec__definite__t__b (us_split_fields1 b))))))
                        (=> (definite__t__x__pred a)
                        (= (rec__definite__t__x (us_split_fields1 a)) 
                        (rec__definite__t__x (us_split_fields1 b)))))
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

(declare-fun definite__t__d__first__bit () Int)

(declare-fun definite__t__d__last__bit () Int)

(declare-fun definite__t__d__position () Int)

;; definite__t__d__first__bit_axiom
  (assert (<= 0 definite__t__d__first__bit))

;; definite__t__d__last__bit_axiom
  (assert (< definite__t__d__first__bit definite__t__d__last__bit))

;; definite__t__d__position_axiom
  (assert (<= 0 definite__t__d__position))

(declare-fun definite__t__a__first__bit () Int)

(declare-fun definite__t__a__last__bit () Int)

(declare-fun definite__t__a__position () Int)

;; definite__t__a__first__bit_axiom
  (assert (<= 0 definite__t__a__first__bit))

;; definite__t__a__last__bit_axiom
  (assert (< definite__t__a__first__bit definite__t__a__last__bit))

;; definite__t__a__position_axiom
  (assert (<= 0 definite__t__a__position))

(declare-fun definite__t__b__first__bit () Int)

(declare-fun definite__t__b__last__bit () Int)

(declare-fun definite__t__b__position () Int)

;; definite__t__b__first__bit_axiom
  (assert (<= 0 definite__t__b__first__bit))

;; definite__t__b__last__bit_axiom
  (assert (< definite__t__b__first__bit definite__t__b__last__bit))

;; definite__t__b__position_axiom
  (assert (<= 0 definite__t__b__position))

(declare-fun definite__t__x__first__bit () Int)

(declare-fun definite__t__x__last__bit () Int)

(declare-fun definite__t__x__position () Int)

;; definite__t__x__first__bit_axiom
  (assert (<= 0 definite__t__x__first__bit))

;; definite__t__x__last__bit_axiom
  (assert (< definite__t__x__first__bit definite__t__x__last__bit))

;; definite__t__x__position_axiom
  (assert (<= 0 definite__t__x__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(define-fun default_initial_assumption ((temp___expr_143 us_rep)
  (temp___skip_top_level_144 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_143) false)
                                         (= (to_rep1
                                            (rec__definite__t__d
                                            (us_split_discrs1
                                            temp___expr_143))) 2)))

(declare-fun g__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun r2b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun in_range2 ((rec__definite__t__d1 Int)
  (a us_rep)) Bool (= rec__definite__t__d1 (to_rep1
                                           (rec__definite__t__d
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

(declare-fun definite__t__d__first__bit1 () Int)

(declare-fun definite__t__d__last__bit1 () Int)

(declare-fun definite__t__d__position1 () Int)

;; definite__t__d__first__bit_axiom
  (assert (<= 0 definite__t__d__first__bit1))

;; definite__t__d__last__bit_axiom
  (assert (< definite__t__d__first__bit1 definite__t__d__last__bit1))

;; definite__t__d__position_axiom
  (assert (<= 0 definite__t__d__position1))

(declare-fun definite__t__b__first__bit1 () Int)

(declare-fun definite__t__b__last__bit1 () Int)

(declare-fun definite__t__b__position1 () Int)

;; definite__t__b__first__bit_axiom
  (assert (<= 0 definite__t__b__first__bit1))

;; definite__t__b__last__bit_axiom
  (assert (< definite__t__b__first__bit1 definite__t__b__last__bit1))

;; definite__t__b__position_axiom
  (assert (<= 0 definite__t__b__position1))

(declare-fun definite__t__x__first__bit1 () Int)

(declare-fun definite__t__x__last__bit1 () Int)

(declare-fun definite__t__x__position1 () Int)

;; definite__t__x__first__bit_axiom
  (assert (<= 0 definite__t__x__first__bit1))

;; definite__t__x__last__bit_axiom
  (assert (< definite__t__x__first__bit1 definite__t__x__last__bit1))

;; definite__t__x__position_axiom
  (assert (<= 0 definite__t__x__position1))

(declare-fun definite__t__a__first__bit1 () Int)

(declare-fun definite__t__a__last__bit1 () Int)

(declare-fun definite__t__a__position1 () Int)

;; definite__t__a__first__bit_axiom
  (assert (<= 0 definite__t__a__first__bit1))

;; definite__t__a__last__bit_axiom
  (assert (< definite__t__a__first__bit1 definite__t__a__last__bit1))

;; definite__t__a__position_axiom
  (assert (<= 0 definite__t__a__position1))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content us_rep)))))
(define-fun t3b__ref___projection ((a t3b__ref)) us_rep (t3b__content a))

(define-fun in_range3 ((rec__definite__t__d1 Int)
  (a us_rep)) Bool (= rec__definite__t__d1 (to_rep1
                                           (rec__definite__t__d
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

(declare-fun definite__t__d__first__bit2 () Int)

(declare-fun definite__t__d__last__bit2 () Int)

(declare-fun definite__t__d__position2 () Int)

;; definite__t__d__first__bit_axiom
  (assert (<= 0 definite__t__d__first__bit2))

;; definite__t__d__last__bit_axiom
  (assert (< definite__t__d__first__bit2 definite__t__d__last__bit2))

;; definite__t__d__position_axiom
  (assert (<= 0 definite__t__d__position2))

(declare-fun definite__t__b__first__bit2 () Int)

(declare-fun definite__t__b__last__bit2 () Int)

(declare-fun definite__t__b__position2 () Int)

;; definite__t__b__first__bit_axiom
  (assert (<= 0 definite__t__b__first__bit2))

;; definite__t__b__last__bit_axiom
  (assert (< definite__t__b__first__bit2 definite__t__b__last__bit2))

;; definite__t__b__position_axiom
  (assert (<= 0 definite__t__b__position2))

(declare-fun definite__t__x__first__bit2 () Int)

(declare-fun definite__t__x__last__bit2 () Int)

(declare-fun definite__t__x__position2 () Int)

;; definite__t__x__first__bit_axiom
  (assert (<= 0 definite__t__x__first__bit2))

;; definite__t__x__last__bit_axiom
  (assert (< definite__t__x__first__bit2 definite__t__x__last__bit2))

;; definite__t__x__position_axiom
  (assert (<= 0 definite__t__x__position2))

(declare-fun definite__t__a__first__bit2 () Int)

(declare-fun definite__t__a__last__bit2 () Int)

(declare-fun definite__t__a__position2 () Int)

;; definite__t__a__first__bit_axiom
  (assert (<= 0 definite__t__a__first__bit2))

;; definite__t__a__last__bit_axiom
  (assert (< definite__t__a__first__bit2 definite__t__a__last__bit2))

;; definite__t__a__position_axiom
  (assert (<= 0 definite__t__a__position2))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content us_rep)))))
(define-fun t4b__ref___projection ((a t4b__ref)) us_rep (t4b__content a))

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range
                                     temp___expr_33)))

(declare-fun x__split_discrs () status)

(declare-fun y () Int)

(declare-fun o () status)

(declare-fun o1 () natural)

(declare-fun o2 () natural)

(declare-fun o3 () natural)

(declare-fun o4 () Bool)

(declare-fun o5 () status)

(declare-fun temp___159 () status)

(declare-fun temp___1591 () natural)

(declare-fun temp___1592 () natural)

(declare-fun temp___1593 () Bool)

(declare-fun temp___1594 () Bool)

(declare-fun result () int__ref)

(declare-fun y1 () Int)

;; H
  (assert (= g__attr__constrained false))

;; H
  (assert (=> (<= 0 2) (in_range1 y)))

;; H
  (assert (= result (mk_int__ref y)))

;; H
  (assert (= y1 (to_rep1 x__split_discrs)))

;; H
  (assert (= (to_rep1 x__split_discrs) r2b))

;; H
  (assert (in_range1 r2b))

;; H
  (assert (= (to_rep o1) 0))

;; H
  (assert (= o1 o2))

;; H
  (assert (= dummy o3))

;; H
  (assert (= true o4))

;; H
  (assert (= (to_rep1 o) 2))

;; H
  (assert (= o o5))

;; H
  (assert (= temp___159 o5))

;; H
  (assert (= temp___1591 o2))

;; H
  (assert (= temp___1592 o3))

;; H
  (assert (= temp___1593 o4))

;; H
  (assert (= true temp___1594))

;; H
  (assert (= x__attr__constrained true))

(assert
;; WP_parameter_def
 ;; File "definite.adb", line 22, characters 0-0
  (not (= temp___159 x__split_discrs)))
(check-sat)
