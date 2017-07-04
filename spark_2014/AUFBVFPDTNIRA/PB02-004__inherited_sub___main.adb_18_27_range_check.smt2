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

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort enum 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (enum enum) Bool)

(declare-fun dummy () enum)

(declare-datatypes () ((enum__ref (mk_enum__ref (enum__content enum)))))
(define-fun enum__ref___projection ((a enum__ref)) enum (enum__content a))

(define-fun dynamic_invariant ((temp___expr_138 Int)
  (temp___is_init_135 Bool) (temp___skip_constant_136 Bool)
  (temp___do_toplevel_137 Bool)) Bool (=>
                                      (or (= temp___is_init_135 true)
                                      (<= 0 2)) (in_range1 temp___expr_138)))

(declare-fun to_rep (enum) Int)

(declare-fun of_rep (Int) enum)

;; inversion_axiom
  (assert
  (forall ((x enum)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x enum)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

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

(declare-fun of_int1 (RoundingMode Int) Float32)

(declare-fun to_int2 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range2 ((x Real)) Bool (and
                                      (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                      (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range2
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

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort integer 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort float 0)

(declare-fun user_eq2 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy2 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-fun to_rep2 (float) Float32)

(declare-fun of_rep2 (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep2 x)) (fp.isNaN (to_rep2 x)))) :pattern (
  (to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
     (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))) )))

(declare-sort sub_enum 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (sub_enum sub_enum) Bool)

(declare-fun dummy3 () sub_enum)

(declare-datatypes ()
((sub_enum__ref (mk_sub_enum__ref (sub_enum__content sub_enum)))))
(define-fun sub_enum__ref___projection ((a sub_enum__ref)) sub_enum (sub_enum__content
                                                                    a))

(declare-fun to_rep3 (sub_enum) Int)

(declare-fun of_rep3 (Int) sub_enum)

;; inversion_axiom
  (assert
  (forall ((x sub_enum))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x sub_enum)) (! (in_range4 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__rec__my_rec__e sub_enum)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) sub_enum 
  (rec__rec__my_rec__e a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__rec__my_rec__x integer)(rec__rec__my_rec__y float)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) integer 
  (rec__rec__my_rec__x a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun rec__my_rec__x__pred ((a us_rep)) Bool (= (to_rep3
                                                      (rec__rec__my_rec__e
                                                      (us_split_discrs1 a))) 0))

(define-fun rec__my_rec__y__pred ((a us_rep)) Bool (= (to_rep3
                                                      (rec__rec__my_rec__e
                                                      (us_split_discrs1 a))) 1))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep3
                           (rec__rec__my_rec__e (us_split_discrs1 a))) 
                        (to_rep3 (rec__rec__my_rec__e (us_split_discrs1 b))))
                        (=> (rec__my_rec__x__pred a)
                        (= (to_rep1
                           (rec__rec__my_rec__x (us_split_fields1 a))) 
                        (to_rep1 (rec__rec__my_rec__x (us_split_fields1 b))))))
                        (=> (rec__my_rec__y__pred a)
                        (= (to_rep2
                           (rec__rec__my_rec__y (us_split_fields1 a))) 
                        (to_rep2 (rec__rec__my_rec__y (us_split_fields1 b))))))
                   true false))

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun rec__my_rec__e__first__bit () Int)

(declare-fun rec__my_rec__e__last__bit () Int)

(declare-fun rec__my_rec__e__position () Int)

;; rec__my_rec__e__first__bit_axiom
  (assert (<= 0 rec__my_rec__e__first__bit))

;; rec__my_rec__e__last__bit_axiom
  (assert (< rec__my_rec__e__first__bit rec__my_rec__e__last__bit))

;; rec__my_rec__e__position_axiom
  (assert (<= 0 rec__my_rec__e__position))

(declare-fun rec__my_rec__x__first__bit () Int)

(declare-fun rec__my_rec__x__last__bit () Int)

(declare-fun rec__my_rec__x__position () Int)

;; rec__my_rec__x__first__bit_axiom
  (assert (<= 0 rec__my_rec__x__first__bit))

;; rec__my_rec__x__last__bit_axiom
  (assert (< rec__my_rec__x__first__bit rec__my_rec__x__last__bit))

;; rec__my_rec__x__position_axiom
  (assert (<= 0 rec__my_rec__x__position))

(declare-fun rec__my_rec__y__first__bit () Int)

(declare-fun rec__my_rec__y__last__bit () Int)

(declare-fun rec__my_rec__y__position () Int)

;; rec__my_rec__y__first__bit_axiom
  (assert (<= 0 rec__my_rec__y__first__bit))

;; rec__my_rec__y__last__bit_axiom
  (assert (< rec__my_rec__y__first__bit rec__my_rec__y__last__bit))

;; rec__my_rec__y__position_axiom
  (assert (<= 0 rec__my_rec__y__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep (my_rec__content
                                                              a))

(define-fun in_range5 ((rec__rec__my_rec__e1 Int)
  (a us_rep)) Bool (= rec__rec__my_rec__e1 (to_rep3
                                           (rec__rec__my_rec__e
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

(declare-fun rec__my_rec__e__first__bit1 () Int)

(declare-fun rec__my_rec__e__last__bit1 () Int)

(declare-fun rec__my_rec__e__position1 () Int)

;; rec__my_rec__e__first__bit_axiom
  (assert (<= 0 rec__my_rec__e__first__bit1))

;; rec__my_rec__e__last__bit_axiom
  (assert (< rec__my_rec__e__first__bit1 rec__my_rec__e__last__bit1))

;; rec__my_rec__e__position_axiom
  (assert (<= 0 rec__my_rec__e__position1))

(declare-fun rec__my_rec__x__first__bit1 () Int)

(declare-fun rec__my_rec__x__last__bit1 () Int)

(declare-fun rec__my_rec__x__position1 () Int)

;; rec__my_rec__x__first__bit_axiom
  (assert (<= 0 rec__my_rec__x__first__bit1))

;; rec__my_rec__x__last__bit_axiom
  (assert (< rec__my_rec__x__first__bit1 rec__my_rec__x__last__bit1))

;; rec__my_rec__x__position_axiom
  (assert (<= 0 rec__my_rec__x__position1))

(declare-fun rec__my_rec__y__first__bit1 () Int)

(declare-fun rec__my_rec__y__last__bit1 () Int)

(declare-fun rec__my_rec__y__position1 () Int)

;; rec__my_rec__y__first__bit_axiom
  (assert (<= 0 rec__my_rec__y__first__bit1))

;; rec__my_rec__y__last__bit_axiom
  (assert (< rec__my_rec__y__first__bit1 rec__my_rec__y__last__bit1))

;; rec__my_rec__y__position_axiom
  (assert (<= 0 rec__my_rec__y__position1))

(declare-fun dummy5 () us_rep)

(declare-datatypes () ((t2s__ref (mk_t2s__ref (t2s__content us_rep)))))
(define-fun t2s__ref___projection ((a t2s__ref)) us_rep (t2s__content a))

(declare-datatypes ()
((us_split_discrs2 (mk___split_discrs1 (rec__rec__sub_rec_ok__z enum)))))
(define-fun us_split_discrs_3__projection ((a us_split_discrs2)) enum 
  (rec__rec__sub_rec_ok__z a))

(declare-datatypes ()
((us_split_discrs__ref1
 (mk___split_discrs__ref1 (us_split_discrs__content1 us_split_discrs2)))))
(define-fun us_split_discrs__ref_3__projection ((a us_split_discrs__ref1)) us_split_discrs2 
  (us_split_discrs__content1 a))

(declare-datatypes ()
((us_split_fields2 (mk___split_fields1 (rec__rec__sub_rec_ok__plop us_rep)))))
(define-fun us_split_fields_Plop2__projection ((a us_split_fields2)) us_rep 
  (rec__rec__sub_rec_ok__plop a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1
 (mk___rep1
 (us_split_discrs3 us_split_discrs2)(us_split_fields3 us_split_fields2)))))
(define-fun us_rep_5__projection ((a us_rep1)) us_split_discrs2 (us_split_discrs3
                                                                a))

(define-fun us_rep_6__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun rec__sub_rec_ok__plop__pred ((a us_rep1)) Bool (and
                                                           (<= 0 (to_rep
                                                                 (rec__rec__sub_rec_ok__z
                                                                 (us_split_discrs3
                                                                 a))))
                                                           (<= (to_rep
                                                               (rec__rec__sub_rec_ok__z
                                                               (us_split_discrs3
                                                               a))) 1)))

(define-fun bool_eq1 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep
                            (rec__rec__sub_rec_ok__z (us_split_discrs3 a))) 
                         (to_rep
                         (rec__rec__sub_rec_ok__z (us_split_discrs3 b))))
                         (=> (rec__sub_rec_ok__plop__pred a)
                         (= (bool_eq
                            (rec__rec__sub_rec_ok__plop (us_split_fields3 a))
                            (rec__rec__sub_rec_ok__plop (us_split_fields3 b))) true)))
                    true false))

(declare-fun user_eq5 (us_rep1 us_rep1) Bool)

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

(declare-fun rec__sub_rec_ok__z__first__bit () Int)

(declare-fun rec__sub_rec_ok__z__last__bit () Int)

(declare-fun rec__sub_rec_ok__z__position () Int)

;; rec__sub_rec_ok__z__first__bit_axiom
  (assert (<= 0 rec__sub_rec_ok__z__first__bit))

;; rec__sub_rec_ok__z__last__bit_axiom
  (assert (< rec__sub_rec_ok__z__first__bit rec__sub_rec_ok__z__last__bit))

;; rec__sub_rec_ok__z__position_axiom
  (assert (<= 0 rec__sub_rec_ok__z__position))

(declare-fun rec__sub_rec_ok__plop__first__bit () Int)

(declare-fun rec__sub_rec_ok__plop__last__bit () Int)

(declare-fun rec__sub_rec_ok__plop__position () Int)

;; rec__sub_rec_ok__plop__first__bit_axiom
  (assert (<= 0 rec__sub_rec_ok__plop__first__bit))

;; rec__sub_rec_ok__plop__last__bit_axiom
  (assert
  (< rec__sub_rec_ok__plop__first__bit rec__sub_rec_ok__plop__last__bit))

;; rec__sub_rec_ok__plop__position_axiom
  (assert (<= 0 rec__sub_rec_ok__plop__position))

(declare-fun dummy6 () us_rep1)

(declare-datatypes ()
((sub_rec_ok__ref (mk_sub_rec_ok__ref (sub_rec_ok__content us_rep1)))))
(define-fun sub_rec_ok__ref___projection ((a sub_rec_ok__ref)) us_rep1 
  (sub_rec_ok__content a))

(declare-fun a () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun in_range6 ((rec__rec__my_rec__e1 Int)
  (a1 us_rep)) Bool (= rec__rec__my_rec__e1 (to_rep3
                                            (rec__rec__my_rec__e
                                            (us_split_discrs1 a1)))))

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a1 us_rep)) (<= 0 (object__size3 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a1 us_rep)) (<= 0 (object__alignment3 a1))))

(declare-fun rec__my_rec__e__first__bit2 () Int)

(declare-fun rec__my_rec__e__last__bit2 () Int)

(declare-fun rec__my_rec__e__position2 () Int)

;; rec__my_rec__e__first__bit_axiom
  (assert (<= 0 rec__my_rec__e__first__bit2))

;; rec__my_rec__e__last__bit_axiom
  (assert (< rec__my_rec__e__first__bit2 rec__my_rec__e__last__bit2))

;; rec__my_rec__e__position_axiom
  (assert (<= 0 rec__my_rec__e__position2))

(declare-fun rec__my_rec__x__first__bit2 () Int)

(declare-fun rec__my_rec__x__last__bit2 () Int)

(declare-fun rec__my_rec__x__position2 () Int)

;; rec__my_rec__x__first__bit_axiom
  (assert (<= 0 rec__my_rec__x__first__bit2))

;; rec__my_rec__x__last__bit_axiom
  (assert (< rec__my_rec__x__first__bit2 rec__my_rec__x__last__bit2))

;; rec__my_rec__x__position_axiom
  (assert (<= 0 rec__my_rec__x__position2))

(declare-fun rec__my_rec__y__first__bit2 () Int)

(declare-fun rec__my_rec__y__last__bit2 () Int)

(declare-fun rec__my_rec__y__position2 () Int)

;; rec__my_rec__y__first__bit_axiom
  (assert (<= 0 rec__my_rec__y__first__bit2))

;; rec__my_rec__y__last__bit_axiom
  (assert (< rec__my_rec__y__first__bit2 rec__my_rec__y__last__bit2))

;; rec__my_rec__y__position_axiom
  (assert (<= 0 rec__my_rec__y__position2))

(declare-fun dummy7 () us_rep)

(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content us_rep)))))
(define-fun t5b__ref___projection ((a1 t5b__ref)) us_rep (t5b__content a1))

(declare-datatypes ()
((us_split_fields4 (mk___split_fields2 (rec__rec__sub_rec_ok__plop1 us_rep)))))
(define-fun us_split_fields_Plop4__projection ((a1 us_split_fields4)) us_rep 
  (rec__rec__sub_rec_ok__plop1 a1))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_7__projection ((a1 us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a1))

(declare-datatypes ()
((us_rep2
 (mk___rep2
 (us_split_discrs4 us_split_discrs2)(us_split_fields5 us_split_fields4)))))
(define-fun us_rep_13__projection ((a1 us_rep2)) us_split_discrs2 (us_split_discrs4
                                                                  a1))

(define-fun us_rep_14__projection ((a1 us_rep2)) us_split_fields4 (us_split_fields5
                                                                  a1))

(define-fun to_base ((a1 us_rep2)) us_rep1 (mk___rep1 (us_split_discrs4 a1)
                                           (mk___split_fields1
                                           (rec__rec__sub_rec_ok__plop1
                                           (us_split_fields5 a1)))))

(define-fun of_base ((r us_rep1)) us_rep2 (mk___rep2 (us_split_discrs3 r)
                                          (mk___split_fields2
                                          (rec__rec__sub_rec_ok__plop
                                          (us_split_fields3 r)))))

(define-fun rec__sub_rec_ok__plop__pred1 ((a1 us_rep2)) Bool (and
                                                             (<= 0 (to_rep
                                                                   (rec__rec__sub_rec_ok__z
                                                                   (us_split_discrs4
                                                                   a1))))
                                                             (<= (to_rep
                                                                 (rec__rec__sub_rec_ok__z
                                                                 (us_split_discrs4
                                                                 a1))) 1)))

(define-fun bool_eq2 ((a1 us_rep2)
  (b us_rep2)) Bool (ite (and
                         (= (to_rep
                            (rec__rec__sub_rec_ok__z (us_split_discrs4 a1))) 
                         (to_rep
                         (rec__rec__sub_rec_ok__z (us_split_discrs4 b))))
                         (=> (rec__sub_rec_ok__plop__pred1 a1)
                         (= (bool_eq
                            (rec__rec__sub_rec_ok__plop1
                            (us_split_fields5 a1))
                            (rec__rec__sub_rec_ok__plop1
                            (us_split_fields5 b))) true)))
                    true false))

(declare-fun user_eq6 (us_rep2 us_rep2) Bool)

(define-fun in_range7 ((rec__rec__sub_rec_ok__z1 Int)
  (a1 us_rep1)) Bool (= rec__rec__sub_rec_ok__z1 (to_rep
                                                 (rec__rec__sub_rec_ok__z
                                                 (us_split_discrs3 a1)))))

(declare-fun value__size4 () Int)

(declare-fun object__size4 (us_rep2) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a1 us_rep2)) (<= 0 (object__size4 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a1 us_rep2)) (<= 0 (object__alignment4 a1))))

(declare-fun rec__sub_rec_ok__z__first__bit1 () Int)

(declare-fun rec__sub_rec_ok__z__last__bit1 () Int)

(declare-fun rec__sub_rec_ok__z__position1 () Int)

;; rec__sub_rec_ok__z__first__bit_axiom
  (assert (<= 0 rec__sub_rec_ok__z__first__bit1))

;; rec__sub_rec_ok__z__last__bit_axiom
  (assert (< rec__sub_rec_ok__z__first__bit1 rec__sub_rec_ok__z__last__bit1))

;; rec__sub_rec_ok__z__position_axiom
  (assert (<= 0 rec__sub_rec_ok__z__position1))

(declare-fun rec__sub_rec_ok__plop__first__bit1 () Int)

(declare-fun rec__sub_rec_ok__plop__last__bit1 () Int)

(declare-fun rec__sub_rec_ok__plop__position1 () Int)

;; rec__sub_rec_ok__plop__first__bit_axiom
  (assert (<= 0 rec__sub_rec_ok__plop__first__bit1))

;; rec__sub_rec_ok__plop__last__bit_axiom
  (assert
  (< rec__sub_rec_ok__plop__first__bit1 rec__sub_rec_ok__plop__last__bit1))

;; rec__sub_rec_ok__plop__position_axiom
  (assert (<= 0 rec__sub_rec_ok__plop__position1))

(declare-fun dummy8 () us_rep2)

(declare-datatypes () ((tzS__ref (mk_tzS__ref (tzS__content us_rep2)))))
(define-fun tzS__ref_2__projection ((a1 tzS__ref)) us_rep2 (tzS__content a1))

(define-fun dynamic_invariant1 ((temp___expr_243 us_rep2)
  (temp___is_init_240 Bool) (temp___skip_constant_241 Bool)
  (temp___do_toplevel_242 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_241 true))
                                      (in_range7 a
                                      (to_base temp___expr_243)))
                                      (=> (rec__sub_rec_ok__plop__pred1
                                      temp___expr_243) (in_range6 a
                                      (rec__rec__sub_rec_ok__plop1
                                      (us_split_fields5 temp___expr_243))))))

(define-fun default_initial_assumption ((temp___expr_246 us_rep2)
  (temp___skip_top_level_247 Bool)) Bool (and
                                         (= (to_rep
                                            (rec__rec__sub_rec_ok__z
                                            (us_split_discrs4
                                            temp___expr_246))) a)
                                         (=> (rec__sub_rec_ok__plop__pred1
                                         temp___expr_246)
                                         (= (to_rep3
                                            (rec__rec__my_rec__e
                                            (us_split_discrs1
                                            (rec__rec__sub_rec_ok__plop1
                                            (us_split_fields5
                                            temp___expr_246))))) a))))

(declare-fun z__split_discrs () us_split_discrs2)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range3 temp___expr_15)))

(define-fun dynamic_invariant3 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(define-fun dynamic_invariant4 ((temp___expr_144 Int)
  (temp___is_init_141 Bool) (temp___skip_constant_142 Bool)
  (temp___do_toplevel_143 Bool)) Bool (=>
                                      (or (= temp___is_init_141 true)
                                      (<= 0 1)) (in_range4 temp___expr_144)))

(define-fun dynamic_invariant5 ((temp___expr_161 us_rep1)
  (temp___is_init_158 Bool) (temp___skip_constant_159 Bool)
  (temp___do_toplevel_160 Bool)) Bool (=> (rec__sub_rec_ok__plop__pred
                                      temp___expr_161) (in_range5
                                      (to_rep
                                      (rec__rec__sub_rec_ok__z
                                      (us_split_discrs3 temp___expr_161)))
                                      (rec__rec__sub_rec_ok__plop
                                      (us_split_fields3 temp___expr_161)))))

;; H
  (assert (in_range1 a))

(assert
;; WP_parameter_def
 ;; File "rec.ads", line 20, characters 0-0
  (not (in_range1 a)))
(check-sat)
