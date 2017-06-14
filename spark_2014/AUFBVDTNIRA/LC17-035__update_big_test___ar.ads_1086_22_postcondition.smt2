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

(declare-sort enum1t 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 6)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (enum1t enum1t) Bool)

(declare-fun dummy () enum1t)

(declare-datatypes ()
((enum1t__ref (mk_enum1t__ref (enum1t__content enum1t)))))
(define-fun enum1t__ref___projection ((a enum1t__ref)) enum1t (enum1t__content
                                                              a))

(declare-fun to_rep (enum1t) Int)

(declare-fun of_rep (Int) enum1t)

;; inversion_axiom
  (assert
  (forall ((x enum1t)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x enum1t)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort enum1ta 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 4)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (enum1ta enum1ta) Bool)

(declare-fun dummy1 () enum1ta)

(declare-datatypes ()
((enum1ta__ref (mk_enum1ta__ref (enum1ta__content enum1ta)))))
(define-fun enum1ta__ref___projection ((a enum1ta__ref)) enum1ta (enum1ta__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_212 Int)
  (temp___is_init_209 Bool) (temp___skip_constant_210 Bool)
  (temp___do_toplevel_211 Bool)) Bool (=>
                                      (or (= temp___is_init_209 true)
                                      (<= 1 4)) (in_range1 temp___expr_212)))

(declare-fun to_rep1 (enum1ta) Int)

(declare-fun of_rep1 (Int) enum1ta)

;; inversion_axiom
  (assert
  (forall ((x enum1ta))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x enum1ta)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort et3 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 10 x) (<= x 90)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (et3 et3) Bool)

(declare-fun dummy2 () et3)

(declare-datatypes () ((et3__ref (mk_et3__ref (et3__content et3)))))
(define-fun et3__ref___projection ((a et3__ref)) et3 (et3__content a))

(declare-fun to_rep2 (et3) Int)

(declare-fun of_rep2 (Int) et3)

;; inversion_axiom
  (assert
  (forall ((x et3)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x et3)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort et1 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (et1 et1) Bool)

(declare-fun dummy3 () et1)

(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))

(declare-fun to_rep3 (et1) Int)

(declare-fun of_rep3 (Int) et1)

;; inversion_axiom
  (assert
  (forall ((x et1)) (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x et1)) (! (in_range3 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-sort et2 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 25)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (et2 et2) Bool)

(declare-fun dummy4 () et2)

(declare-datatypes () ((et2__ref (mk_et2__ref (et2__content et2)))))
(define-fun et2__ref___projection ((a et2__ref)) et2 (et2__content a))

(declare-fun to_rep4 (et2) Int)

(declare-fun of_rep4 (Int) et2)

;; inversion_axiom
  (assert
  (forall ((x et2)) (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)) )))

;; range_axiom
  (assert
  (forall ((x et2)) (! (in_range4 (to_rep4 x)) :pattern ((to_rep4 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep4 (of_rep4 x)) x)) :pattern ((to_rep4
                                                              (of_rep4 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__ar__rec1t__f1 et1)(rec__ar__rec1t__g1 et2)))))
(define-fun us_split_fields_F1__projection ((a us_split_fields)) et1 
  (rec__ar__rec1t__f1 a))

(define-fun us_split_fields_G1__projection ((a us_split_fields)) et2 
  (rec__ar__rec1t__g1 a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq5 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep3
                           (rec__ar__rec1t__f1 (us_split_fields1 a))) 
                        (to_rep3 (rec__ar__rec1t__f1 (us_split_fields1 b))))
                        (= (to_rep4
                           (rec__ar__rec1t__g1 (us_split_fields1 a))) 
                        (to_rep4 (rec__ar__rec1t__g1 (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq5 (us_rep us_rep) Bool)

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

(declare-fun ar__rec1t__f1__first__bit () Int)

(declare-fun ar__rec1t__f1__last__bit () Int)

(declare-fun ar__rec1t__f1__position () Int)

;; ar__rec1t__f1__first__bit_axiom
  (assert (<= 0 ar__rec1t__f1__first__bit))

;; ar__rec1t__f1__last__bit_axiom
  (assert (< ar__rec1t__f1__first__bit ar__rec1t__f1__last__bit))

;; ar__rec1t__f1__position_axiom
  (assert (<= 0 ar__rec1t__f1__position))

(declare-fun ar__rec1t__g1__first__bit () Int)

(declare-fun ar__rec1t__g1__last__bit () Int)

(declare-fun ar__rec1t__g1__position () Int)

;; ar__rec1t__g1__first__bit_axiom
  (assert (<= 0 ar__rec1t__g1__first__bit))

;; ar__rec1t__g1__last__bit_axiom
  (assert (< ar__rec1t__g1__first__bit ar__rec1t__g1__last__bit))

;; ar__rec1t__g1__position_axiom
  (assert (<= 0 ar__rec1t__g1__position))

(declare-fun dummy5 () us_rep)

(declare-datatypes () ((rec1t__ref (mk_rec1t__ref (rec1t__content us_rep)))))
(define-fun rec1t__ref___projection ((a rec1t__ref)) us_rep (rec1t__content
                                                            a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__ar__rec2t__f2 et3)(rec__ar__rec2t__g2 us_rep)(rec__ar__rec2t__h2 enum1ta)))))
(define-fun us_split_fields_F2__projection ((a us_split_fields2)) et3 
  (rec__ar__rec2t__f2 a))

(define-fun us_split_fields_G2__projection ((a us_split_fields2)) us_rep 
  (rec__ar__rec2t__g2 a))

(define-fun us_split_fields_H2__projection ((a us_split_fields2)) enum1ta 
  (rec__ar__rec2t__h2 a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq6 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (and
                         (= (to_rep2
                            (rec__ar__rec2t__f2 (us_split_fields3 a))) 
                         (to_rep2 (rec__ar__rec2t__f2 (us_split_fields3 b))))
                         (= (bool_eq5
                            (rec__ar__rec2t__g2 (us_split_fields3 a))
                            (rec__ar__rec2t__g2 (us_split_fields3 b))) true))
                         (= (to_rep1
                            (rec__ar__rec2t__h2 (us_split_fields3 a))) 
                         (to_rep1 (rec__ar__rec2t__h2 (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq6 (us_rep1 us_rep1) Bool)

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

(declare-fun ar__rec2t__f2__first__bit () Int)

(declare-fun ar__rec2t__f2__last__bit () Int)

(declare-fun ar__rec2t__f2__position () Int)

;; ar__rec2t__f2__first__bit_axiom
  (assert (<= 0 ar__rec2t__f2__first__bit))

;; ar__rec2t__f2__last__bit_axiom
  (assert (< ar__rec2t__f2__first__bit ar__rec2t__f2__last__bit))

;; ar__rec2t__f2__position_axiom
  (assert (<= 0 ar__rec2t__f2__position))

(declare-fun ar__rec2t__g2__first__bit () Int)

(declare-fun ar__rec2t__g2__last__bit () Int)

(declare-fun ar__rec2t__g2__position () Int)

;; ar__rec2t__g2__first__bit_axiom
  (assert (<= 0 ar__rec2t__g2__first__bit))

;; ar__rec2t__g2__last__bit_axiom
  (assert (< ar__rec2t__g2__first__bit ar__rec2t__g2__last__bit))

;; ar__rec2t__g2__position_axiom
  (assert (<= 0 ar__rec2t__g2__position))

(declare-fun ar__rec2t__h2__first__bit () Int)

(declare-fun ar__rec2t__h2__last__bit () Int)

(declare-fun ar__rec2t__h2__position () Int)

;; ar__rec2t__h2__first__bit_axiom
  (assert (<= 0 ar__rec2t__h2__first__bit))

;; ar__rec2t__h2__last__bit_axiom
  (assert (< ar__rec2t__h2__first__bit ar__rec2t__h2__last__bit))

;; ar__rec2t__h2__position_axiom
  (assert (<= 0 ar__rec2t__h2__position))

(declare-fun dummy6 () us_rep1)

(declare-datatypes ()
((rec2t__ref (mk_rec2t__ref (rec2t__content us_rep1)))))
(define-fun rec2t__ref___projection ((a rec2t__ref)) us_rep1 (rec2t__content
                                                             a))

(declare-sort et4 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 50 x) (<= x 59)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (et4 et4) Bool)

(declare-fun dummy7 () et4)

(declare-datatypes () ((et4__ref (mk_et4__ref (et4__content et4)))))
(define-fun et4__ref___projection ((a et4__ref)) et4 (et4__content a))

(declare-fun to_rep5 (et4) Int)

(declare-fun of_rep5 (Int) et4)

;; inversion_axiom
  (assert
  (forall ((x et4)) (! (= (of_rep5 (to_rep5 x)) x) :pattern ((to_rep5 x)) )))

;; range_axiom
  (assert
  (forall ((x et4)) (! (in_range5 (to_rep5 x)) :pattern ((to_rep5 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep5 (of_rep5 x)) x)) :pattern ((to_rep5
                                                              (of_rep5 x))) )))

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2 (rec__ar__rec3t__f3 us_rep1)(rec__ar__rec3t__g3 et4)))))
(define-fun us_split_fields_F3__projection ((a us_split_fields4)) us_rep1 
  (rec__ar__rec3t__f3 a))

(define-fun us_split_fields_G3__projection ((a us_split_fields4)) et4 
  (rec__ar__rec3t__g3 a))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep_3__projection ((a us_rep2)) us_split_fields4 (us_split_fields5
                                                                a))

(define-fun bool_eq8 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (= (bool_eq6
                            (rec__ar__rec3t__f3 (us_split_fields5 a))
                            (rec__ar__rec3t__f3 (us_split_fields5 b))) true)
                         (= (to_rep5
                            (rec__ar__rec3t__g3 (us_split_fields5 a))) 
                         (to_rep5 (rec__ar__rec3t__g3 (us_split_fields5 b)))))
                    true false))

(declare-fun user_eq8 (us_rep2 us_rep2) Bool)

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

(declare-fun ar__rec3t__f3__first__bit () Int)

(declare-fun ar__rec3t__f3__last__bit () Int)

(declare-fun ar__rec3t__f3__position () Int)

;; ar__rec3t__f3__first__bit_axiom
  (assert (<= 0 ar__rec3t__f3__first__bit))

;; ar__rec3t__f3__last__bit_axiom
  (assert (< ar__rec3t__f3__first__bit ar__rec3t__f3__last__bit))

;; ar__rec3t__f3__position_axiom
  (assert (<= 0 ar__rec3t__f3__position))

(declare-fun ar__rec3t__g3__first__bit () Int)

(declare-fun ar__rec3t__g3__last__bit () Int)

(declare-fun ar__rec3t__g3__position () Int)

;; ar__rec3t__g3__first__bit_axiom
  (assert (<= 0 ar__rec3t__g3__first__bit))

;; ar__rec3t__g3__last__bit_axiom
  (assert (< ar__rec3t__g3__first__bit ar__rec3t__g3__last__bit))

;; ar__rec3t__g3__position_axiom
  (assert (<= 0 ar__rec3t__g3__position))

(declare-fun dummy8 () us_rep2)

(declare-datatypes ()
((rec3t__ref (mk_rec3t__ref (rec3t__content us_rep2)))))
(define-fun rec3t__ref___projection ((a rec3t__ref)) us_rep2 (rec3t__content
                                                             a))

(declare-datatypes ()
((us_split_fields6
 (mk___split_fields3 (rec__ar__rec4t__f4 us_rep2)(rec__ar__rec4t__g4 enum1t)))))
(define-fun us_split_fields_F4__projection ((a us_split_fields6)) us_rep2 
  (rec__ar__rec4t__f4 a))

(define-fun us_split_fields_G4__projection ((a us_split_fields6)) enum1t 
  (rec__ar__rec4t__g4 a))

(declare-datatypes ()
((us_split_fields__ref3
 (mk___split_fields__ref3 (us_split_fields__content3 us_split_fields6)))))
(define-fun us_split_fields__ref_4__projection ((a us_split_fields__ref3)) us_split_fields6 
  (us_split_fields__content3 a))

(declare-datatypes ()
((us_rep3 (mk___rep3 (us_split_fields7 us_split_fields6)))))
(define-fun us_rep_4__projection ((a us_rep3)) us_split_fields6 (us_split_fields7
                                                                a))

(define-fun bool_eq9 ((a us_rep3)
  (b us_rep3)) Bool (ite (and
                         (= (bool_eq8
                            (rec__ar__rec4t__f4 (us_split_fields7 a))
                            (rec__ar__rec4t__f4 (us_split_fields7 b))) true)
                         (= (to_rep
                            (rec__ar__rec4t__g4 (us_split_fields7 a))) 
                         (to_rep (rec__ar__rec4t__g4 (us_split_fields7 b)))))
                    true false))

(declare-fun user_eq9 (us_rep3 us_rep3) Bool)

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep3) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep3) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep3)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep3)) (<= 0 (object__alignment3 a))))

(declare-fun ar__rec4t__f4__first__bit () Int)

(declare-fun ar__rec4t__f4__last__bit () Int)

(declare-fun ar__rec4t__f4__position () Int)

;; ar__rec4t__f4__first__bit_axiom
  (assert (<= 0 ar__rec4t__f4__first__bit))

;; ar__rec4t__f4__last__bit_axiom
  (assert (< ar__rec4t__f4__first__bit ar__rec4t__f4__last__bit))

;; ar__rec4t__f4__position_axiom
  (assert (<= 0 ar__rec4t__f4__position))

(declare-fun ar__rec4t__g4__first__bit () Int)

(declare-fun ar__rec4t__g4__last__bit () Int)

(declare-fun ar__rec4t__g4__position () Int)

;; ar__rec4t__g4__first__bit_axiom
  (assert (<= 0 ar__rec4t__g4__first__bit))

;; ar__rec4t__g4__last__bit_axiom
  (assert (< ar__rec4t__g4__first__bit ar__rec4t__g4__last__bit))

;; ar__rec4t__g4__position_axiom
  (assert (<= 0 ar__rec4t__g4__position))

(declare-fun dummy9 () us_rep3)

(declare-datatypes ()
((rec4t__ref (mk_rec4t__ref (rec4t__content us_rep3)))))
(define-fun rec4t__ref___projection ((a rec4t__ref)) us_rep3 (rec4t__content
                                                             a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_176 Int)
  (temp___is_init_173 Bool) (temp___skip_constant_174 Bool)
  (temp___do_toplevel_175 Bool)) Bool (=>
                                      (or (= temp___is_init_173 true)
                                      (<= 0 99)) (in_range3 temp___expr_176)))

(define-fun dynamic_invariant2 ((temp___expr_182 Int)
  (temp___is_init_179 Bool) (temp___skip_constant_180 Bool)
  (temp___do_toplevel_181 Bool)) Bool (=>
                                      (or (= temp___is_init_179 true)
                                      (<= 1 25)) (in_range4 temp___expr_182)))

(define-fun dynamic_invariant3 ((temp___expr_188 Int)
  (temp___is_init_185 Bool) (temp___skip_constant_186 Bool)
  (temp___do_toplevel_187 Bool)) Bool (=>
                                      (or (= temp___is_init_185 true)
                                      (<= 10 90)) (in_range2
                                      temp___expr_188)))

(define-fun dynamic_invariant4 ((temp___expr_194 Int)
  (temp___is_init_191 Bool) (temp___skip_constant_192 Bool)
  (temp___do_toplevel_193 Bool)) Bool (=>
                                      (or (= temp___is_init_191 true)
                                      (<= 50 59)) (in_range5
                                      temp___expr_194)))

(define-fun dynamic_invariant5 ((temp___expr_200 Int)
  (temp___is_init_197 Bool) (temp___skip_constant_198 Bool)
  (temp___do_toplevel_199 Bool)) Bool (=>
                                      (or (= temp___is_init_197 true)
                                      (<= 0 6)) (in_range temp___expr_200)))

(declare-fun r__split_fields () et3)

(declare-fun r__split_fields1 () et1)

(declare-fun r__split_fields2 () et2)

(declare-fun r__split_fields3 () enum1ta)

(declare-fun r__split_fields4 () et4)

(declare-fun r__split_fields5 () enum1t)

(declare-fun temp () Int)

(declare-fun o () Int)

(declare-fun o1 () enum1ta)

(declare-fun o2 () et3)

(declare-fun o3 () et1)

(declare-fun o4 () et2)

(declare-fun o5 () enum1ta)

(declare-fun o6 () et3)

(declare-fun o7 () et1)

(declare-fun o8 () et2)

(declare-fun o9 () enum1ta)

(declare-fun o10 () et3)

(declare-fun o11 () et1)

(declare-fun o12 () et2)

(declare-fun o13 () enum1ta)

(declare-fun o14 () et4)

(declare-fun o15 () us_rep2)

(declare-fun o16 () us_split_fields6)

(declare-fun temp___7239 () us_rep3)

(declare-fun o17 () enum1t)

(declare-fun o18 () us_split_fields6)

(declare-fun temp___7241 () us_rep3)

(declare-fun result () int__ref)

(declare-fun temp1 () Int)

(declare-fun result1 () us_split_fields__ref3)

(declare-fun r__split_fields6 () us_split_fields6)

(declare-fun result2 () us_split_fields__ref3)

(declare-fun r__split_fields7 () us_split_fields6)

(declare-fun r__split_fields8 () us_split_fields__ref3)

(declare-fun temp2 () int__ref)

(declare-fun r__split_fields9 () us_split_fields6)

(declare-fun temp3 () Int)

;; H
  (assert (in_range1 (to_rep r__split_fields5)))

;; H
  (assert (=> (<= 1 4) (in_range1 temp)))

;; H
  (assert (= result (mk_int__ref temp)))

;; H
  (assert (= temp1 (to_rep1 r__split_fields3)))

;; H
  (assert
  (and (= o (to_rep r__split_fields5)) (in_range1 (to_rep r__split_fields5))))

;; H
  (assert (= (to_rep1 o1) o))

;; H
  (assert (= r__split_fields o2))

;; H
  (assert (= r__split_fields1 o3))

;; H
  (assert (= r__split_fields2 o4))

;; H
  (assert (= o1 o5))

;; H
  (assert (= o6 o2))

;; H
  (assert (= o7 o3))

;; H
  (assert (= o8 o4))

;; H
  (assert (= o9 o5))

;; H
  (assert (= o10 o6))

;; H
  (assert (= o11 o7))

;; H
  (assert (= o12 o8))

;; H
  (assert (= o13 o9))

;; H
  (assert (= r__split_fields4 o14))

;; H
  (assert
  (= o15 (mk___rep2
         (mk___split_fields2
         (mk___rep1
         (mk___split_fields1 o10 (mk___rep (mk___split_fields o11 o12)) o13))
         o14))))

;; H
  (assert (= o16 (mk___split_fields3 o15 r__split_fields5)))

;; H
  (assert (= temp___7239 (mk___rep3 o16)))

;; H
  (assert
  (= result1 (mk___split_fields__ref3
             (mk___split_fields3
             (mk___rep2
             (mk___split_fields2
             (mk___rep1
             (mk___split_fields1 r__split_fields
             (mk___rep (mk___split_fields r__split_fields1 r__split_fields2))
             r__split_fields3)) r__split_fields4)) r__split_fields5))))

;; H
  (assert (= r__split_fields6 (us_split_fields7 temp___7239)))

;; H
  (assert (= (to_rep o17) temp1))

;; H
  (assert
  (= o18 (mk___split_fields3 (rec__ar__rec4t__f4 r__split_fields6) o17)))

;; H
  (assert (= temp___7241 (mk___rep3 o18)))

;; H
  (assert (= result2 (mk___split_fields__ref3 r__split_fields6)))

;; H
  (assert (= r__split_fields7 (us_split_fields7 temp___7241)))

;; H
  (assert (= temp2 (mk_int__ref temp1)))

;; H
  (assert (= r__split_fields8 (mk___split_fields__ref3 r__split_fields7)))

;; H
  (assert (= temp3 temp1))

;; H
  (assert (= r__split_fields9 r__split_fields7))

(assert
;; WP_parameter_def
 ;; File "ar.ads", line 1077, characters 0-0
  (not
  (= (bool_eq9 (mk___rep3 (us_split_fields__content3 r__split_fields8))
     (mk___rep3
     (mk___split_fields3
     (mk___rep2
     (mk___split_fields2
     (mk___rep1
     (mk___split_fields1 r__split_fields
     (mk___rep (mk___split_fields r__split_fields1 r__split_fields2))
     (of_rep1 (to_rep r__split_fields5)))) r__split_fields4))
     (of_rep (to_rep1 r__split_fields3))))) true)))
(check-sat)
