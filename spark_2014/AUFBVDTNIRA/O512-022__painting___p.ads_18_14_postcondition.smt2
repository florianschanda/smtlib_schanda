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
((us_split_fields
 (mk___split_fields (rec__p__dot__x integer)(rec__p__dot__y integer)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) integer 
  (rec__p__dot__x a))

(define-fun us_split_fields_Y__projection ((a us_split_fields)) integer 
  (rec__p__dot__y a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep (rec__p__dot__x (us_split_fields1 a))) 
                        (to_rep (rec__p__dot__x (us_split_fields1 b))))
                        (= (to_rep (rec__p__dot__y (us_split_fields1 a))) 
                        (to_rep (rec__p__dot__y (us_split_fields1 b)))))
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

(declare-fun p__dot__x__first__bit () Int)

(declare-fun p__dot__x__last__bit () Int)

(declare-fun p__dot__x__position () Int)

;; p__dot__x__first__bit_axiom
  (assert (<= 0 p__dot__x__first__bit))

;; p__dot__x__last__bit_axiom
  (assert (< p__dot__x__first__bit p__dot__x__last__bit))

;; p__dot__x__position_axiom
  (assert (<= 0 p__dot__x__position))

(declare-fun p__dot__y__first__bit () Int)

(declare-fun p__dot__y__last__bit () Int)

(declare-fun p__dot__y__position () Int)

;; p__dot__y__first__bit_axiom
  (assert (<= 0 p__dot__y__first__bit))

;; p__dot__y__last__bit_axiom
  (assert (< p__dot__y__first__bit p__dot__y__last__bit))

;; p__dot__y__position_axiom
  (assert (<= 0 p__dot__y__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((dot__ref (mk_dot__ref (dot__content us_rep)))))
(define-fun dot__ref___projection ((a dot__ref)) us_rep (dot__content a))

(declare-sort color 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (color color) Bool)

(declare-fun dummy2 () color)

(declare-datatypes () ((color__ref (mk_color__ref (color__content color)))))
(define-fun color__ref___projection ((a color__ref)) color (color__content a))

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
                           (= (bool_eq1 (select a temp___idx_132)
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
  (= (bool_eq1 (select a temp___idx_132)
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
 (rec__p__painting__plain (Array Int us_rep))(rec__p__painting__shadow (Array Int us_rep))))))
(define-fun us_split_fields_Plain__projection ((a us_split_fields2)) (Array Int us_rep) 
  (rec__p__painting__plain a))

(define-fun us_split_fields_Shadow__projection ((a us_split_fields2)) (Array Int us_rep) 
  (rec__p__painting__shadow a))

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
                         (= (bool_eq3
                            (rec__p__painting__plain (us_split_fields3 a)) 0
                            2 (rec__p__painting__plain (us_split_fields3 b))
                            0 2) true)
                         (= (bool_eq3
                            (rec__p__painting__shadow (us_split_fields3 a)) 0
                            2 (rec__p__painting__shadow (us_split_fields3 b))
                            0 2) true))
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

(declare-fun p__painting__plain__first__bit () Int)

(declare-fun p__painting__plain__last__bit () Int)

(declare-fun p__painting__plain__position () Int)

;; p__painting__plain__first__bit_axiom
  (assert (<= 0 p__painting__plain__first__bit))

;; p__painting__plain__last__bit_axiom
  (assert (< p__painting__plain__first__bit p__painting__plain__last__bit))

;; p__painting__plain__position_axiom
  (assert (<= 0 p__painting__plain__position))

(declare-fun p__painting__shadow__first__bit () Int)

(declare-fun p__painting__shadow__last__bit () Int)

(declare-fun p__painting__shadow__position () Int)

;; p__painting__shadow__first__bit_axiom
  (assert (<= 0 p__painting__shadow__first__bit))

;; p__painting__shadow__last__bit_axiom
  (assert (< p__painting__shadow__first__bit p__painting__shadow__last__bit))

;; p__painting__shadow__position_axiom
  (assert (<= 0 p__painting__shadow__position))

(declare-fun dummy4 () us_rep1)

(declare-datatypes ()
((painting__ref (mk_painting__ref (painting__content us_rep1)))))
(define-fun painting__ref___projection ((a painting__ref)) us_rep1 (painting__content
                                                                   a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun d () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_144 Int)
  (temp___is_init_141 Bool) (temp___skip_constant_142 Bool)
  (temp___do_toplevel_143 Bool)) Bool (=>
                                      (or (= temp___is_init_141 true)
                                      (<= 0 2)) (in_range2 temp___expr_144)))

(declare-fun p__split_fields () (Array Int us_rep))

(declare-fun p__split_fields1 () (Array Int us_rep))

(declare-fun c () Int)

(declare-fun temp___216 () (Array Int us_rep))

(declare-fun temp___2161 () (Array Int us_rep))

(declare-fun temp___215 () Int)

(declare-fun temp___213 () (Array Int us_rep))

(declare-fun temp___2131 () (Array Int us_rep))

(declare-fun p__split_fields2 () (Array Int us_rep))

(declare-fun p__split_fields3 () (Array Int us_rep))

(declare-fun result () Int)

(declare-fun c1 () Int)

(declare-fun p__split_fields4 () (Array Int us_rep))

(declare-fun p__split_fields5 () (Array Int us_rep))

(declare-fun c2 () Int)

(declare-fun result1 () (Array Int us_rep))

(declare-fun result2 () (Array Int us_rep))

(declare-fun p__split_fields6 () (Array Int us_rep))

(declare-fun p__split_fields7 () (Array Int us_rep))

(declare-fun p__split_fields8 () (Array Int us_rep))

(declare-fun p__split_fields9 () (Array Int us_rep))

(declare-fun c3 () Int)

(declare-fun p__split_fields10 () us_split_fields2)

(declare-fun c4 () Int)

(declare-fun p__split_fields11 () us_split_fields__ref1)

(declare-fun c5 () int__ref)

(declare-fun p__split_fields12 () us_split_fields2)

(declare-fun c6 () Int)

(declare-fun p__split_fields13 () us_split_fields__ref1)

(declare-fun c7 () int__ref)

(declare-fun p__split_fields14 () us_split_fields2)

(declare-fun c8 () Int)

(define-fun p__split_fields15 () us_split_fields2 (mk___split_fields1
                                                  p__split_fields6
                                                  p__split_fields7))

;; H
  (assert
  (exists ((c9 Int))
  (and (and (<= 0 c9) (<= c9 2))
  (= (bool_eq1 (select p__split_fields c9) d) true))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref c)))

;; H
  (assert (= c1 0))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (and (= p__split_fields temp___216) (= p__split_fields1 temp___2161))))

;; H
  (assert (=> (and (<= 0 c1) (<= c1 2)) (= temp___215 c1)))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (and (= p__split_fields temp___213) (= p__split_fields1 temp___2131))))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (and (= (bool_eq3 p__split_fields4 0 2 temp___216 0 2) true)
  (forall ((j Int))
  (=> (and (<= 0 j) (<= j (- c2 1)))
  (=> (= (bool_eq1 (select p__split_fields4 j) d) true)
  (= (bool_eq1 (select p__split_fields5 j) d) true)))))))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (and
  (and
  (and (= p__split_fields4 temp___213)
  (forall ((temp___214 Int))
  (=> (and (<= 0 temp___214) (<= temp___214 2))
  (=> (<= c2 temp___214)
  (= (select p__split_fields5 temp___214) (select temp___2131 temp___214))))))
  (=> (<= 0 2) (in_range2 c2))) (and (<= 0 c2) (<= c2 2)))))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (=> (= (bool_eq1 (select p__split_fields4 c2) d) true)
  (= result1 p__split_fields4))))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (=> (= (bool_eq1 (select p__split_fields4 c2) d) true)
  (= result2 p__split_fields5))))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (=> (= (bool_eq1 (select p__split_fields4 c2) d) true)
  (= p__split_fields4 p__split_fields6))))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (=> (= (bool_eq1 (select p__split_fields4 c2) d) true)
  (= (store p__split_fields5 c2 d) p__split_fields7))))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (=> (not (= (bool_eq1 (select p__split_fields4 c2) d) true))
  (= p__split_fields15 (mk___split_fields1 p__split_fields4 p__split_fields5)))))

;; H
  (assert (=> (and (<= 0 c1) (<= c1 2)) (= c2 2)))

;; H
  (assert (=> (and (<= 0 c1) (<= c1 2)) (= c2 c3)))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2)) (= p__split_fields8 p__split_fields6)))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2)) (= p__split_fields9 p__split_fields7)))

;; H
  (assert (=> (and (<= 0 c1) (<= c1 2)) (= c4 c2)))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2)) (= p__split_fields10 p__split_fields15)))

;; H
  (assert (=> (and (<= 0 c1) (<= c1 2)) (= c5 (mk_int__ref c3))))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2))
  (= p__split_fields11 (mk___split_fields__ref1
                       (mk___split_fields1 p__split_fields8 p__split_fields9)))))

;; H
  (assert (=> (and (<= 0 c1) (<= c1 2)) (= c6 c4)))

;; H
  (assert
  (=> (and (<= 0 c1) (<= c1 2)) (= p__split_fields12 p__split_fields10)))

;; H
  (assert (=> (not (and (<= 0 c1) (<= c1 2))) (= c5 (mk_int__ref c1))))

;; H
  (assert
  (=> (not (and (<= 0 c1) (<= c1 2)))
  (= p__split_fields11 (mk___split_fields__ref1
                       (mk___split_fields1 p__split_fields p__split_fields1)))))

;; H
  (assert (=> (not (and (<= 0 c1) (<= c1 2))) (= c6 c1)))

;; H
  (assert
  (=> (not (and (<= 0 c1) (<= c1 2)))
  (= p__split_fields12 (mk___split_fields1 p__split_fields2 p__split_fields3))))

;; H
  (assert (= c7 c5))

;; H
  (assert (= p__split_fields13 p__split_fields11))

;; H
  (assert (= c8 c6))

;; H
  (assert (= p__split_fields14 p__split_fields12))

(declare-fun c9 () Int)

;; H
  (assert (<= 0 c9))

;; H
  (assert (<= c9 2))

;; H
  (assert (= (bool_eq1 (select p__split_fields c9) d) true))

(assert
;; WP_parameter_def
 ;; File "p.ads", line 31, characters 0-0
  (not
  (= (bool_eq1
     (select (rec__p__painting__shadow
             (us_split_fields__content1 p__split_fields13)) c9)
     d) true)))
(check-sat)
