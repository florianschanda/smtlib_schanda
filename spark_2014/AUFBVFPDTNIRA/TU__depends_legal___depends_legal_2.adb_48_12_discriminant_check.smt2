;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
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

(declare-fun pow2 (Int) Int)

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int1 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

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
  (forall ((x integer)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort float 0)

(declare-fun user_eq1 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-fun to_rep1 (float) Float32)

(declare-fun of_rep1 (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep1 x)) (fp.isNaN (to_rep1 x)))) :pattern (
  (to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
     (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))) )))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__depends_legal_2__dis_rec__d Bool)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) Bool (rec__depends_legal_2__dis_rec__d
                                                                    a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__depends_legal_2__dis_rec__a integer)(rec__depends_legal_2__dis_rec__b integer)(rec__depends_legal_2__dis_rec__x float)(rec__depends_legal_2__dis_rec__y float)(rec__depends_legal_2__dis_rec__z float)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) integer 
  (rec__depends_legal_2__dis_rec__a a))

(define-fun us_split_fields_B__projection ((a us_split_fields)) integer 
  (rec__depends_legal_2__dis_rec__b a))

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

(define-fun depends_legal_2__dis_rec__a__pred ((a us_rep)) Bool (= (to_int2
                                                                   (rec__depends_legal_2__dis_rec__d
                                                                   (us_split_discrs1
                                                                   a))) 1))

(define-fun depends_legal_2__dis_rec__b__pred ((a us_rep)) Bool (= (to_int2
                                                                   (rec__depends_legal_2__dis_rec__d
                                                                   (us_split_discrs1
                                                                   a))) 1))

(define-fun depends_legal_2__dis_rec__x__pred ((a us_rep)) Bool (= (to_int2
                                                                   (rec__depends_legal_2__dis_rec__d
                                                                   (us_split_discrs1
                                                                   a))) 0))

(define-fun depends_legal_2__dis_rec__y__pred ((a us_rep)) Bool (= (to_int2
                                                                   (rec__depends_legal_2__dis_rec__d
                                                                   (us_split_discrs1
                                                                   a))) 0))

(define-fun depends_legal_2__dis_rec__z__pred ((a us_rep)) Bool (= (to_int2
                                                                   (rec__depends_legal_2__dis_rec__d
                                                                   (us_split_discrs1
                                                                   a))) 0))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (and
                        (= (rec__depends_legal_2__dis_rec__d
                           (us_split_discrs1 a)) (rec__depends_legal_2__dis_rec__d
                                                 (us_split_discrs1 b)))
                        (=> (depends_legal_2__dis_rec__a__pred a)
                        (= (to_rep
                           (rec__depends_legal_2__dis_rec__a
                           (us_split_fields1 a))) (to_rep
                                                  (rec__depends_legal_2__dis_rec__a
                                                  (us_split_fields1 b))))))
                        (=> (depends_legal_2__dis_rec__b__pred a)
                        (= (to_rep
                           (rec__depends_legal_2__dis_rec__b
                           (us_split_fields1 a))) (to_rep
                                                  (rec__depends_legal_2__dis_rec__b
                                                  (us_split_fields1 b))))))
                        (=> (depends_legal_2__dis_rec__x__pred a)
                        (= (to_rep1
                           (rec__depends_legal_2__dis_rec__x
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__depends_legal_2__dis_rec__x
                                                  (us_split_fields1 b))))))
                        (=> (depends_legal_2__dis_rec__y__pred a)
                        (= (to_rep1
                           (rec__depends_legal_2__dis_rec__y
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__depends_legal_2__dis_rec__y
                                                  (us_split_fields1 b))))))
                        (=> (depends_legal_2__dis_rec__z__pred a)
                        (= (to_rep1
                           (rec__depends_legal_2__dis_rec__z
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__depends_legal_2__dis_rec__z
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

(declare-fun depends_legal_2__dis_rec__d__first__bit () Int)

(declare-fun depends_legal_2__dis_rec__d__last__bit () Int)

(declare-fun depends_legal_2__dis_rec__d__position () Int)

;; depends_legal_2__dis_rec__d__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__d__first__bit))

;; depends_legal_2__dis_rec__d__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__d__first__bit depends_legal_2__dis_rec__d__last__bit))

;; depends_legal_2__dis_rec__d__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__d__position))

(declare-fun depends_legal_2__dis_rec__a__first__bit () Int)

(declare-fun depends_legal_2__dis_rec__a__last__bit () Int)

(declare-fun depends_legal_2__dis_rec__a__position () Int)

;; depends_legal_2__dis_rec__a__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__a__first__bit))

;; depends_legal_2__dis_rec__a__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__a__first__bit depends_legal_2__dis_rec__a__last__bit))

;; depends_legal_2__dis_rec__a__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__a__position))

(declare-fun depends_legal_2__dis_rec__b__first__bit () Int)

(declare-fun depends_legal_2__dis_rec__b__last__bit () Int)

(declare-fun depends_legal_2__dis_rec__b__position () Int)

;; depends_legal_2__dis_rec__b__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__b__first__bit))

;; depends_legal_2__dis_rec__b__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__b__first__bit depends_legal_2__dis_rec__b__last__bit))

;; depends_legal_2__dis_rec__b__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__b__position))

(declare-fun depends_legal_2__dis_rec__x__first__bit () Int)

(declare-fun depends_legal_2__dis_rec__x__last__bit () Int)

(declare-fun depends_legal_2__dis_rec__x__position () Int)

;; depends_legal_2__dis_rec__x__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__x__first__bit))

;; depends_legal_2__dis_rec__x__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__x__first__bit depends_legal_2__dis_rec__x__last__bit))

;; depends_legal_2__dis_rec__x__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__x__position))

(declare-fun depends_legal_2__dis_rec__y__first__bit () Int)

(declare-fun depends_legal_2__dis_rec__y__last__bit () Int)

(declare-fun depends_legal_2__dis_rec__y__position () Int)

;; depends_legal_2__dis_rec__y__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__y__first__bit))

;; depends_legal_2__dis_rec__y__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__y__first__bit depends_legal_2__dis_rec__y__last__bit))

;; depends_legal_2__dis_rec__y__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__y__position))

(declare-fun depends_legal_2__dis_rec__z__first__bit () Int)

(declare-fun depends_legal_2__dis_rec__z__last__bit () Int)

(declare-fun depends_legal_2__dis_rec__z__position () Int)

;; depends_legal_2__dis_rec__z__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__z__first__bit))

;; depends_legal_2__dis_rec__z__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__z__first__bit depends_legal_2__dis_rec__z__last__bit))

;; depends_legal_2__dis_rec__z__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__z__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((dis_rec__ref (mk_dis_rec__ref (dis_rec__content us_rep)))))
(define-fun dis_rec__ref___projection ((a dis_rec__ref)) us_rep (dis_rec__content
                                                                a))

(define-fun default_initial_assumption ((temp___expr_137 us_rep)
  (temp___skip_top_level_138 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_137) false)
                                         (= (rec__depends_legal_2__dis_rec__d
                                            (us_split_discrs1
                                            temp___expr_137)) (of_int1 1))))

(declare-fun rec1__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun par1__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun par2 () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun r4b () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun in_range3 ((rec__depends_legal_2__dis_rec__d1 Bool)
  (a us_rep)) Bool (= rec__depends_legal_2__dis_rec__d1 (rec__depends_legal_2__dis_rec__d
                                                        (us_split_discrs1 a))))

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

(declare-fun depends_legal_2__dis_rec__d__first__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__d__last__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__d__position1 () Int)

;; depends_legal_2__dis_rec__d__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__d__first__bit1))

;; depends_legal_2__dis_rec__d__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__d__first__bit1 depends_legal_2__dis_rec__d__last__bit1))

;; depends_legal_2__dis_rec__d__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__d__position1))

(declare-fun depends_legal_2__dis_rec__x__first__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__x__last__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__x__position1 () Int)

;; depends_legal_2__dis_rec__x__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__x__first__bit1))

;; depends_legal_2__dis_rec__x__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__x__first__bit1 depends_legal_2__dis_rec__x__last__bit1))

;; depends_legal_2__dis_rec__x__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__x__position1))

(declare-fun depends_legal_2__dis_rec__y__first__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__y__last__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__y__position1 () Int)

;; depends_legal_2__dis_rec__y__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__y__first__bit1))

;; depends_legal_2__dis_rec__y__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__y__first__bit1 depends_legal_2__dis_rec__y__last__bit1))

;; depends_legal_2__dis_rec__y__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__y__position1))

(declare-fun depends_legal_2__dis_rec__z__first__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__z__last__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__z__position1 () Int)

;; depends_legal_2__dis_rec__z__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__z__first__bit1))

;; depends_legal_2__dis_rec__z__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__z__first__bit1 depends_legal_2__dis_rec__z__last__bit1))

;; depends_legal_2__dis_rec__z__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__z__position1))

(declare-fun depends_legal_2__dis_rec__a__first__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__a__last__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__a__position1 () Int)

;; depends_legal_2__dis_rec__a__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__a__first__bit1))

;; depends_legal_2__dis_rec__a__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__a__first__bit1 depends_legal_2__dis_rec__a__last__bit1))

;; depends_legal_2__dis_rec__a__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__a__position1))

(declare-fun depends_legal_2__dis_rec__b__first__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__b__last__bit1 () Int)

(declare-fun depends_legal_2__dis_rec__b__position1 () Int)

;; depends_legal_2__dis_rec__b__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__b__first__bit1))

;; depends_legal_2__dis_rec__b__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__b__first__bit1 depends_legal_2__dis_rec__b__last__bit1))

;; depends_legal_2__dis_rec__b__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__b__position1))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content us_rep)))))
(define-fun t5b__ref___projection ((a t5b__ref)) us_rep (t5b__content a))

(declare-fun r7b () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun in_range4 ((rec__depends_legal_2__dis_rec__d1 Bool)
  (a us_rep)) Bool (= rec__depends_legal_2__dis_rec__d1 (rec__depends_legal_2__dis_rec__d
                                                        (us_split_discrs1 a))))

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

(declare-fun depends_legal_2__dis_rec__d__first__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__d__last__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__d__position2 () Int)

;; depends_legal_2__dis_rec__d__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__d__first__bit2))

;; depends_legal_2__dis_rec__d__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__d__first__bit2 depends_legal_2__dis_rec__d__last__bit2))

;; depends_legal_2__dis_rec__d__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__d__position2))

(declare-fun depends_legal_2__dis_rec__a__first__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__a__last__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__a__position2 () Int)

;; depends_legal_2__dis_rec__a__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__a__first__bit2))

;; depends_legal_2__dis_rec__a__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__a__first__bit2 depends_legal_2__dis_rec__a__last__bit2))

;; depends_legal_2__dis_rec__a__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__a__position2))

(declare-fun depends_legal_2__dis_rec__b__first__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__b__last__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__b__position2 () Int)

;; depends_legal_2__dis_rec__b__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__b__first__bit2))

;; depends_legal_2__dis_rec__b__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__b__first__bit2 depends_legal_2__dis_rec__b__last__bit2))

;; depends_legal_2__dis_rec__b__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__b__position2))

(declare-fun depends_legal_2__dis_rec__x__first__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__x__last__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__x__position2 () Int)

;; depends_legal_2__dis_rec__x__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__x__first__bit2))

;; depends_legal_2__dis_rec__x__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__x__first__bit2 depends_legal_2__dis_rec__x__last__bit2))

;; depends_legal_2__dis_rec__x__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__x__position2))

(declare-fun depends_legal_2__dis_rec__y__first__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__y__last__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__y__position2 () Int)

;; depends_legal_2__dis_rec__y__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__y__first__bit2))

;; depends_legal_2__dis_rec__y__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__y__first__bit2 depends_legal_2__dis_rec__y__last__bit2))

;; depends_legal_2__dis_rec__y__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__y__position2))

(declare-fun depends_legal_2__dis_rec__z__first__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__z__last__bit2 () Int)

(declare-fun depends_legal_2__dis_rec__z__position2 () Int)

;; depends_legal_2__dis_rec__z__first__bit_axiom
  (assert (<= 0 depends_legal_2__dis_rec__z__first__bit2))

;; depends_legal_2__dis_rec__z__last__bit_axiom
  (assert
  (< depends_legal_2__dis_rec__z__first__bit2 depends_legal_2__dis_rec__z__last__bit2))

;; depends_legal_2__dis_rec__z__position_axiom
  (assert (<= 0 depends_legal_2__dis_rec__z__position2))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((t8b__ref (mk_t8b__ref (t8b__content us_rep)))))
(define-fun t8b__ref___projection ((a t8b__ref)) us_rep (t8b__content a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-fun rec1__split_discrs () Bool)

(declare-fun par1__split_fields () integer)

(declare-fun par1__split_fields1 () integer)

(declare-fun par1__split_fields2 () float)

(declare-fun par1__split_fields3 () float)

(declare-fun par1__split_fields4 () float)

(declare-fun par1__split_discrs () Bool)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () integer)

(declare-fun o4 () float)

(declare-fun o5 () float)

(declare-fun o6 () float)

(declare-fun temp___164 () Bool)

(declare-fun temp___1641 () integer)

(declare-fun temp___1642 () integer)

(declare-fun temp___1643 () float)

(declare-fun temp___1644 () float)

(declare-fun temp___1645 () float)

(declare-fun temp___1646 () Bool)

(declare-fun usq_ () Bool)

(declare-fun usq_1 () integer)

(declare-fun usq_2 () integer)

(declare-fun usq_3 () float)

(declare-fun usq_4 () float)

(declare-fun usq_5 () float)

(declare-fun usq_6 () Bool)

(declare-fun temp___166 () Bool)

(declare-fun temp___1661 () integer)

(declare-fun temp___1662 () integer)

(declare-fun temp___1663 () float)

(declare-fun temp___1664 () float)

(declare-fun temp___1665 () float)

(declare-fun temp___1666 () Bool)

(declare-fun o7 () float)

(declare-fun o8 () float)

(declare-fun o9 () float)

(declare-fun o10 () integer)

(declare-fun o11 () integer)

(declare-fun o12 () float)

(declare-fun o13 () float)

(declare-fun o14 () float)

(declare-fun temp___161 () Bool)

(declare-fun temp___1611 () integer)

(declare-fun temp___1612 () integer)

(declare-fun temp___1613 () float)

(declare-fun temp___1614 () float)

(declare-fun temp___1615 () float)

(declare-fun temp___1616 () Bool)

(declare-fun usq_7 () us_rep)

(declare-fun temp___163 () us_rep)

(declare-fun result () us_split_fields__ref)

(declare-fun par1__split_fields5 () us_split_fields)

(declare-fun result1 () us_split_discrs__ref)

(declare-fun par1__split_discrs1 () us_split_discrs)

(declare-fun result2 () us_split_fields__ref)

(declare-fun par1__split_fields6 () us_split_fields)

(declare-fun result3 () us_split_discrs__ref)

(declare-fun par1__split_discrs2 () us_split_discrs)

(define-fun par1__split_discrs3 () us_split_discrs__ref (mk___split_discrs__ref
                                                        (mk___split_discrs
                                                        par1__split_discrs)))

(define-fun par1__split_fields7 () us_split_fields__ref (mk___split_fields__ref
                                                        (mk___split_fields
                                                        par1__split_fields
                                                        par1__split_fields1
                                                        par1__split_fields2
                                                        par1__split_fields3
                                                        par1__split_fields4)))

;; H
  (assert (= rec1__attr__constrained false))

;; H
  (assert (=> (= par1__split_discrs true) (= par1__split_discrs r4b)))

;; H
  (assert (=> (= par1__split_discrs true) (= (to_rep o) 0)))

;; H
  (assert (=> (= par1__split_discrs true) (= (to_rep o1) 0)))

;; H
  (assert (=> (= par1__split_discrs true) (= o1 o2)))

;; H
  (assert (=> (= par1__split_discrs true) (= o o3)))

;; H
  (assert (=> (= par1__split_discrs true) (= dummy1 o4)))

;; H
  (assert (=> (= par1__split_discrs true) (= dummy1 o5)))

;; H
  (assert (=> (= par1__split_discrs true) (= dummy1 o6)))

;; H
  (assert (=> (= par1__split_discrs true) (= (of_int1 1) temp___164)))

;; H
  (assert (=> (= par1__split_discrs true) (= temp___1641 o2)))

;; H
  (assert (=> (= par1__split_discrs true) (= temp___1642 o3)))

;; H
  (assert (=> (= par1__split_discrs true) (= temp___1643 o4)))

;; H
  (assert (=> (= par1__split_discrs true) (= temp___1644 o5)))

;; H
  (assert (=> (= par1__split_discrs true) (= temp___1645 o6)))

;; H
  (assert (=> (= par1__split_discrs true) (= true temp___1646)))

;; H
  (assert
  (=> (= par1__split_discrs true)
  (=> (= par1__attr__constrained true) (= temp___164 par1__split_discrs))))

;; H
  (assert
  (=> (= par1__split_discrs true)
  (= (mk___rep (mk___split_discrs usq_)
     (mk___split_fields usq_1 usq_2 usq_3 usq_4 usq_5) usq_6) (mk___rep
                                                              (mk___split_discrs
                                                              temp___164)
                                                              (mk___split_fields
                                                              temp___1641
                                                              temp___1642
                                                              temp___1643
                                                              temp___1644
                                                              temp___1645)
                                                              temp___1646))))

;; H
  (assert (=> (= par1__split_discrs true) (= usq_ temp___166)))

;; H
  (assert (=> (= par1__split_discrs true) (= usq_1 temp___1661)))

;; H
  (assert (=> (= par1__split_discrs true) (= usq_2 temp___1662)))

;; H
  (assert (=> (= par1__split_discrs true) (= usq_3 temp___1663)))

;; H
  (assert (=> (= par1__split_discrs true) (= usq_4 temp___1664)))

;; H
  (assert (=> (= par1__split_discrs true) (= usq_5 temp___1665)))

;; H
  (assert
  (=> (= par1__split_discrs true) (= par1__attr__constrained temp___1666)))

;; H
  (assert (=> (= par1__split_discrs true) (= result par1__split_fields7)))

;; H
  (assert
  (=> (= par1__split_discrs true)
  (= par1__split_fields5 (mk___split_fields temp___1661 temp___1662
                         temp___1663 temp___1664 temp___1665))))

;; H
  (assert (=> (= par1__split_discrs true) (= result1 par1__split_discrs3)))

;; H
  (assert
  (=> (= par1__split_discrs true)
  (= par1__split_discrs1 (mk___split_discrs temp___166))))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= par1__split_discrs r7b)))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= (to_rep1 o7) (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= (to_rep1 o8) (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= (to_rep1 o9) (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= dummy o10)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= dummy o11)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= o9 o12)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= o8 o13)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= o7 o14)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= (of_int1 0) temp___161)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= temp___1611 o10)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= temp___1612 o11)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= temp___1613 o12)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= temp___1614 o13)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= temp___1615 o14)))

;; H
  (assert (=> (not (= par1__split_discrs true)) (= true temp___1616)))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (=> (= par1__attr__constrained true) (= temp___161 par1__split_discrs))))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= usq_7 (mk___rep (mk___split_discrs temp___161)
           (mk___split_fields temp___1611 temp___1612 temp___1613 temp___1614
           temp___1615) temp___1616))))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= temp___163 (mk___rep (us_split_discrs1 usq_7) (us_split_fields1 usq_7)
                par1__attr__constrained))))

;; H
  (assert
  (=> (not (= par1__split_discrs true)) (= result2 par1__split_fields7)))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= par1__split_fields6 (us_split_fields1 temp___163))))

;; H
  (assert
  (=> (not (= par1__split_discrs true)) (= result3 par1__split_discrs3)))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= par1__split_discrs2 (us_split_discrs1 temp___163))))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= par1__split_discrs1 par1__split_discrs2)))

;; H
  (assert
  (=> (not (= par1__split_discrs true))
  (= par1__split_fields5 par1__split_fields6)))

;; H
  (assert (= rec1__attr__constrained true))

(assert
;; WP_parameter_def
 ;; File "depends_legal_2.adb", line 14, characters 0-0
  (not
  (= (rec__depends_legal_2__dis_rec__d (us_split_discrs1 par2)) rec1__split_discrs)))
(check-sat)
