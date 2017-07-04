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

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

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
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort float 0)

(declare-fun user_eq1 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

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

(declare-sort enum 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (enum enum) Bool)

(declare-fun dummy2 () enum)

(declare-datatypes () ((enum__ref (mk_enum__ref (enum__content enum)))))
(define-fun enum__ref___projection ((a enum__ref)) enum (enum__content a))

(declare-fun to_rep2 (enum) Int)

(declare-fun of_rep2 (Int) enum)

;; inversion_axiom
  (assert
  (forall ((x enum)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x enum)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__types__r__i enum)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) enum (rec__types__r__i
                                                                    a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__types__r__x integer)(rec__types__r__y float)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) integer 
  (rec__types__r__x a))

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

(define-fun types__r__x__pred ((a us_rep)) Bool (= (to_rep2
                                                   (rec__types__r__i
                                                   (us_split_discrs1 a))) 0))

(define-fun types__r__y__pred ((a us_rep)) Bool (= (to_rep2
                                                   (rec__types__r__i
                                                   (us_split_discrs1 a))) 1))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep2 (rec__types__r__i (us_split_discrs1 a))) 
                        (to_rep2 (rec__types__r__i (us_split_discrs1 b))))
                        (=> (types__r__x__pred a)
                        (= (to_rep (rec__types__r__x (us_split_fields1 a))) 
                        (to_rep (rec__types__r__x (us_split_fields1 b))))))
                        (=> (types__r__y__pred a)
                        (= (to_rep1 (rec__types__r__y (us_split_fields1 a))) 
                        (to_rep1 (rec__types__r__y (us_split_fields1 b))))))
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

(declare-fun types__r__i__first__bit () Int)

(declare-fun types__r__i__last__bit () Int)

(declare-fun types__r__i__position () Int)

;; types__r__i__first__bit_axiom
  (assert (<= 0 types__r__i__first__bit))

;; types__r__i__last__bit_axiom
  (assert (< types__r__i__first__bit types__r__i__last__bit))

;; types__r__i__position_axiom
  (assert (<= 0 types__r__i__position))

(declare-fun types__r__x__first__bit () Int)

(declare-fun types__r__x__last__bit () Int)

(declare-fun types__r__x__position () Int)

;; types__r__x__first__bit_axiom
  (assert (<= 0 types__r__x__first__bit))

;; types__r__x__last__bit_axiom
  (assert (< types__r__x__first__bit types__r__x__last__bit))

;; types__r__x__position_axiom
  (assert (<= 0 types__r__x__position))

(declare-fun types__r__y__first__bit () Int)

(declare-fun types__r__y__last__bit () Int)

(declare-fun types__r__y__position () Int)

;; types__r__y__first__bit_axiom
  (assert (<= 0 types__r__y__first__bit))

;; types__r__y__last__bit_axiom
  (assert (< types__r__y__first__bit types__r__y__last__bit))

;; types__r__y__position_axiom
  (assert (<= 0 types__r__y__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((r__ref (mk_r__ref (r__content us_rep)))))
(define-fun r__ref___projection ((a r__ref)) us_rep (r__content a))

(define-fun in_range3 ((rec__types__r__i1 Int)
  (a us_rep)) Bool (= rec__types__r__i1 (to_rep2
                                        (rec__types__r__i
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

(declare-fun types__r__i__first__bit1 () Int)

(declare-fun types__r__i__last__bit1 () Int)

(declare-fun types__r__i__position1 () Int)

;; types__r__i__first__bit_axiom
  (assert (<= 0 types__r__i__first__bit1))

;; types__r__i__last__bit_axiom
  (assert (< types__r__i__first__bit1 types__r__i__last__bit1))

;; types__r__i__position_axiom
  (assert (<= 0 types__r__i__position1))

(declare-fun types__r__y__first__bit1 () Int)

(declare-fun types__r__y__last__bit1 () Int)

(declare-fun types__r__y__position1 () Int)

;; types__r__y__first__bit_axiom
  (assert (<= 0 types__r__y__first__bit1))

;; types__r__y__last__bit_axiom
  (assert (< types__r__y__first__bit1 types__r__y__last__bit1))

;; types__r__y__position_axiom
  (assert (<= 0 types__r__y__position1))

(declare-fun types__r__x__first__bit1 () Int)

(declare-fun types__r__x__last__bit1 () Int)

(declare-fun types__r__x__position1 () Int)

;; types__r__x__first__bit_axiom
  (assert (<= 0 types__r__x__first__bit1))

;; types__r__x__last__bit_axiom
  (assert (< types__r__x__first__bit1 types__r__x__last__bit1))

;; types__r__x__position_axiom
  (assert (<= 0 types__r__x__position1))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content us_rep)))))
(define-fun t1b__ref___projection ((a t1b__ref)) us_rep (t1b__content a))

(declare-fun x__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun in_range4 ((rec__types__r__i1 Int)
  (a us_rep)) Bool (= rec__types__r__i1 (to_rep2
                                        (rec__types__r__i
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

(declare-fun types__r__i__first__bit2 () Int)

(declare-fun types__r__i__last__bit2 () Int)

(declare-fun types__r__i__position2 () Int)

;; types__r__i__first__bit_axiom
  (assert (<= 0 types__r__i__first__bit2))

;; types__r__i__last__bit_axiom
  (assert (< types__r__i__first__bit2 types__r__i__last__bit2))

;; types__r__i__position_axiom
  (assert (<= 0 types__r__i__position2))

(declare-fun types__r__x__first__bit2 () Int)

(declare-fun types__r__x__last__bit2 () Int)

(declare-fun types__r__x__position2 () Int)

;; types__r__x__first__bit_axiom
  (assert (<= 0 types__r__x__first__bit2))

;; types__r__x__last__bit_axiom
  (assert (< types__r__x__first__bit2 types__r__x__last__bit2))

;; types__r__x__position_axiom
  (assert (<= 0 types__r__x__position2))

(declare-fun types__r__y__first__bit2 () Int)

(declare-fun types__r__y__last__bit2 () Int)

(declare-fun types__r__y__position2 () Int)

;; types__r__y__first__bit_axiom
  (assert (<= 0 types__r__y__first__bit2))

;; types__r__y__last__bit_axiom
  (assert (< types__r__y__first__bit2 types__r__y__last__bit2))

;; types__r__y__position_axiom
  (assert (<= 0 types__r__y__position2))

(declare-fun dummy5 () us_rep)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content us_rep)))))
(define-fun t2b__ref___projection ((a t2b__ref)) us_rep (t2b__content a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(define-fun dynamic_invariant2 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 1)) (in_range2 temp___expr_135)))

(declare-fun x__split_fields () integer)

(declare-fun x__split_fields1 () float)

(declare-fun o () enum)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () float)

(declare-fun o4 () enum)

(declare-fun p__bad__x__assume () enum)

(declare-fun p__bad__x__assume1 () integer)

(declare-fun p__bad__x__assume2 () float)

(declare-fun o5 () enum)

(declare-fun o6 () float)

(declare-fun o7 () integer)

(declare-fun o8 () float)

(declare-fun o9 () enum)

(declare-fun temp___143 () enum)

(declare-fun temp___1431 () integer)

(declare-fun temp___1432 () float)

(declare-fun result () integer)

(declare-fun result1 () float)

(declare-fun x__split_fields2 () integer)

(declare-fun x__split_fields3 () float)

;; H
  (assert (= (to_rep o1) 1))

;; H
  (assert (= o1 o2))

;; H
  (assert (= dummy1 o3))

;; H
  (assert (= (to_rep2 o) 0))

;; H
  (assert (= o o4))

;; H
  (assert (= p__bad__x__assume o4))

;; H
  (assert (= p__bad__x__assume1 o2))

;; H
  (assert (= p__bad__x__assume2 o3))

;; H
  (assert (= result x__split_fields))

;; H
  (assert (= result1 x__split_fields1))

;; H
  (assert (= p__bad__x__assume1 x__split_fields2))

;; H
  (assert (= p__bad__x__assume2 x__split_fields3))

;; H
  (assert (= x__split_discrs (mk___split_discrs p__bad__x__assume)))

;; H
  (assert (= (to_rep1 o6) (fp #b0 #b10000000 #b00000000000000000000000)))

;; H
  (assert (= dummy o7))

;; H
  (assert (= o6 o8))

;; H
  (assert (= (to_rep2 o5) 1))

;; H
  (assert (= o5 o9))

;; H
  (assert (= temp___143 o9))

;; H
  (assert (= temp___1431 o7))

;; H
  (assert (= temp___1432 o8))

(assert
;; WP_parameter_def
 ;; File "p.ads", line 5, characters 0-0
  (not (= temp___143 (rec__types__r__i x__split_discrs))))
(check-sat)
