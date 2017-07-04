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
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort speed_t 0)

(declare-fun user_eq (speed_t speed_t) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy () speed_t)

(declare-datatypes ()
((speed_t__ref (mk_speed_t__ref (speed_t__content speed_t)))))
(define-fun speed_t__ref___projection ((a speed_t__ref)) speed_t (speed_t__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_148 Float32)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (or (= temp___is_init_145 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_148) (fp.isNaN temp___expr_148)))))

(declare-fun to_rep (speed_t) Float32)

(declare-fun of_rep (Float32) speed_t)

;; inversion_axiom
  (assert
  (forall ((x speed_t)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x speed_t))
  (! (not (or (fp.isInfinite (to_rep x)) (fp.isNaN (to_rep x)))) :pattern (
  (to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (= (to_rep (of_rep x)) x)) :pattern (
  (to_rep (of_rep x))) )))

(declare-sort distance_t 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (distance_t distance_t) Bool)

(declare-fun dummy1 () distance_t)

(declare-datatypes ()
((distance_t__ref (mk_distance_t__ref (distance_t__content distance_t)))))
(define-fun distance_t__ref___projection ((a distance_t__ref)) distance_t 
  (distance_t__content a))

(declare-fun to_rep1 (distance_t) Int)

(declare-fun of_rep1 (Int) distance_t)

;; inversion_axiom
  (assert
  (forall ((x distance_t))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x distance_t)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort speed_km_per_h_t 0)

(declare-fun user_eq2 (speed_km_per_h_t speed_km_per_h_t) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy2 () speed_km_per_h_t)

(declare-datatypes ()
((speed_km_per_h_t__ref
 (mk_speed_km_per_h_t__ref (speed_km_per_h_t__content speed_km_per_h_t)))))
(define-fun speed_km_per_h_t__ref___projection ((a speed_km_per_h_t__ref)) speed_km_per_h_t 
  (speed_km_per_h_t__content a))

(define-fun dynamic_invariant1 ((temp___expr_154 Float32)
  (temp___is_init_151 Bool) (temp___skip_constant_152 Bool)
  (temp___do_toplevel_153 Bool)) Bool (=>
                                      (or (= temp___is_init_151 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_154) (fp.isNaN temp___expr_154)))))

(declare-fun is_valid_speed_km_per_h (Float32) Bool)

(declare-fun is_valid_speed_km_per_h__function_guard (Bool Float32) Bool)

(declare-fun m_per_s_from_km_per_h (Float32) Float32)

(declare-fun m_per_s_from_km_per_h__function_guard (Float32 Float32) Bool)

;; m_per_s_from_km_per_h__post_axiom
  (assert
  (forall ((speed Float32))
  (! (=>
     (and (dynamic_invariant1 speed true true true)
     (= (is_valid_speed_km_per_h speed) true)) (dynamic_invariant
     (m_per_s_from_km_per_h speed) true false true)) :pattern ((m_per_s_from_km_per_h
                                                               speed)) )))

;; m_per_s_from_km_per_h__def_axiom
  (assert
  (forall ((speed Float32))
  (! (=> (dynamic_invariant1 speed true true true)
     (= (m_per_s_from_km_per_h speed) (fp.div RNE (fp.mul RNE speed (fp #b0 #b10001000 #b11110100000000000000000)) (fp #b0 #b10001010 #b11000010000000000000000)))) :pattern (
  (m_per_s_from_km_per_h speed)) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__deceleration_curve__braking_curve_entry__location distance_t)(rec__deceleration_curve__braking_curve_entry__speed speed_t)))))
(define-fun us_split_fields_location__projection ((a us_split_fields)) distance_t 
  (rec__deceleration_curve__braking_curve_entry__location a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep1
                           (rec__deceleration_curve__braking_curve_entry__location
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__deceleration_curve__braking_curve_entry__location
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__deceleration_curve__braking_curve_entry__speed
                           (us_split_fields1 a))) (to_rep
                                                  (rec__deceleration_curve__braking_curve_entry__speed
                                                  (us_split_fields1 b)))))
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

(declare-fun deceleration_curve__braking_curve_entry__location__first__bit () Int)

(declare-fun deceleration_curve__braking_curve_entry__location__last__bit () Int)

(declare-fun deceleration_curve__braking_curve_entry__location__position () Int)

;; deceleration_curve__braking_curve_entry__location__first__bit_axiom
  (assert
  (<= 0 deceleration_curve__braking_curve_entry__location__first__bit))

;; deceleration_curve__braking_curve_entry__location__last__bit_axiom
  (assert
  (< deceleration_curve__braking_curve_entry__location__first__bit deceleration_curve__braking_curve_entry__location__last__bit))

;; deceleration_curve__braking_curve_entry__location__position_axiom
  (assert (<= 0 deceleration_curve__braking_curve_entry__location__position))

(declare-fun deceleration_curve__braking_curve_entry__speed__first__bit () Int)

(declare-fun deceleration_curve__braking_curve_entry__speed__last__bit () Int)

(declare-fun deceleration_curve__braking_curve_entry__speed__position () Int)

;; deceleration_curve__braking_curve_entry__speed__first__bit_axiom
  (assert (<= 0 deceleration_curve__braking_curve_entry__speed__first__bit))

;; deceleration_curve__braking_curve_entry__speed__last__bit_axiom
  (assert
  (< deceleration_curve__braking_curve_entry__speed__first__bit deceleration_curve__braking_curve_entry__speed__last__bit))

;; deceleration_curve__braking_curve_entry__speed__position_axiom
  (assert (<= 0 deceleration_curve__braking_curve_entry__speed__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((braking_curve_entry__ref
 (mk_braking_curve_entry__ref (braking_curve_entry__content us_rep)))))
(define-fun braking_curve_entry__ref___projection ((a braking_curve_entry__ref)) us_rep 
  (braking_curve_entry__content a))

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

(define-fun bool_eq1 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
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
                           (= (bool_eq (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun dummy4 () (Array Int us_rep))

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

(declare-fun user_eq4 ((Array Int us_rep) (Array Int us_rep)) Bool)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__deceleration_curve__braking_curve_t__curve (Array Int us_rep))(rec__deceleration_curve__braking_curve_t__end_point distance_t)))))
(define-fun us_split_fields_curve__projection ((a us_split_fields2)) (Array Int us_rep) 
  (rec__deceleration_curve__braking_curve_t__curve a))

(define-fun us_split_fields_end_point__projection ((a us_split_fields2)) distance_t 
  (rec__deceleration_curve__braking_curve_t__end_point a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (bool_eq1
                            (rec__deceleration_curve__braking_curve_t__curve
                            (us_split_fields3 a)) 0 1000
                            (rec__deceleration_curve__braking_curve_t__curve
                            (us_split_fields3 b)) 0 1000) true)
                         (= (to_rep1
                            (rec__deceleration_curve__braking_curve_t__end_point
                            (us_split_fields3 a))) (to_rep1
                                                   (rec__deceleration_curve__braking_curve_t__end_point
                                                   (us_split_fields3 b)))))
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

(declare-fun deceleration_curve__braking_curve_t__curve__first__bit () Int)

(declare-fun deceleration_curve__braking_curve_t__curve__last__bit () Int)

(declare-fun deceleration_curve__braking_curve_t__curve__position () Int)

;; deceleration_curve__braking_curve_t__curve__first__bit_axiom
  (assert (<= 0 deceleration_curve__braking_curve_t__curve__first__bit))

;; deceleration_curve__braking_curve_t__curve__last__bit_axiom
  (assert
  (< deceleration_curve__braking_curve_t__curve__first__bit deceleration_curve__braking_curve_t__curve__last__bit))

;; deceleration_curve__braking_curve_t__curve__position_axiom
  (assert (<= 0 deceleration_curve__braking_curve_t__curve__position))

(declare-fun deceleration_curve__braking_curve_t__end_point__first__bit () Int)

(declare-fun deceleration_curve__braking_curve_t__end_point__last__bit () Int)

(declare-fun deceleration_curve__braking_curve_t__end_point__position () Int)

;; deceleration_curve__braking_curve_t__end_point__first__bit_axiom
  (assert (<= 0 deceleration_curve__braking_curve_t__end_point__first__bit))

;; deceleration_curve__braking_curve_t__end_point__last__bit_axiom
  (assert
  (< deceleration_curve__braking_curve_t__end_point__first__bit deceleration_curve__braking_curve_t__end_point__last__bit))

;; deceleration_curve__braking_curve_t__end_point__position_axiom
  (assert (<= 0 deceleration_curve__braking_curve_t__end_point__position))

(declare-fun dummy5 () us_rep1)

(declare-datatypes ()
((braking_curve_t__ref
 (mk_braking_curve_t__ref (braking_curve_t__content us_rep1)))))
(define-fun braking_curve_t__ref___projection ((a braking_curve_t__ref)) us_rep1 
  (braking_curve_t__content a))

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2
 (rec__deceleration_curve__target_t__supervise Bool)(rec__deceleration_curve__target_t__location distance_t)(rec__deceleration_curve__target_t__speed speed_t)))))
(define-fun us_split_fields_supervise__projection ((a us_split_fields4)) Bool 
  (rec__deceleration_curve__target_t__supervise a))

(define-fun us_split_fields_location2__projection ((a us_split_fields4)) distance_t 
  (rec__deceleration_curve__target_t__location a))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep_3__projection ((a us_rep2)) us_split_fields4 (us_split_fields5
                                                                a))

(define-fun bool_eq3 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (and
                         (= (rec__deceleration_curve__target_t__supervise
                            (us_split_fields5 a)) (rec__deceleration_curve__target_t__supervise
                                                  (us_split_fields5 b)))
                         (= (to_rep1
                            (rec__deceleration_curve__target_t__location
                            (us_split_fields5 a))) (to_rep1
                                                   (rec__deceleration_curve__target_t__location
                                                   (us_split_fields5 b)))))
                         (= (to_rep
                            (rec__deceleration_curve__target_t__speed
                            (us_split_fields5 a))) (to_rep
                                                   (rec__deceleration_curve__target_t__speed
                                                   (us_split_fields5 b)))))
                    true false))

(declare-fun user_eq6 (us_rep2 us_rep2) Bool)

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

(declare-fun deceleration_curve__target_t__supervise__first__bit () Int)

(declare-fun deceleration_curve__target_t__supervise__last__bit () Int)

(declare-fun deceleration_curve__target_t__supervise__position () Int)

;; deceleration_curve__target_t__supervise__first__bit_axiom
  (assert (<= 0 deceleration_curve__target_t__supervise__first__bit))

;; deceleration_curve__target_t__supervise__last__bit_axiom
  (assert
  (< deceleration_curve__target_t__supervise__first__bit deceleration_curve__target_t__supervise__last__bit))

;; deceleration_curve__target_t__supervise__position_axiom
  (assert (<= 0 deceleration_curve__target_t__supervise__position))

(declare-fun deceleration_curve__target_t__location__first__bit () Int)

(declare-fun deceleration_curve__target_t__location__last__bit () Int)

(declare-fun deceleration_curve__target_t__location__position () Int)

;; deceleration_curve__target_t__location__first__bit_axiom
  (assert (<= 0 deceleration_curve__target_t__location__first__bit))

;; deceleration_curve__target_t__location__last__bit_axiom
  (assert
  (< deceleration_curve__target_t__location__first__bit deceleration_curve__target_t__location__last__bit))

;; deceleration_curve__target_t__location__position_axiom
  (assert (<= 0 deceleration_curve__target_t__location__position))

(declare-fun deceleration_curve__target_t__speed__first__bit () Int)

(declare-fun deceleration_curve__target_t__speed__last__bit () Int)

(declare-fun deceleration_curve__target_t__speed__position () Int)

;; deceleration_curve__target_t__speed__first__bit_axiom
  (assert (<= 0 deceleration_curve__target_t__speed__first__bit))

;; deceleration_curve__target_t__speed__last__bit_axiom
  (assert
  (< deceleration_curve__target_t__speed__first__bit deceleration_curve__target_t__speed__last__bit))

;; deceleration_curve__target_t__speed__position_axiom
  (assert (<= 0 deceleration_curve__target_t__speed__position))

(declare-fun dummy6 () us_rep2)

(declare-datatypes ()
((target_t__ref (mk_target_t__ref (target_t__content us_rep2)))))
(define-fun target_t__ref___projection ((a target_t__ref)) us_rep2 (target_t__content
                                                                   a))

(declare-fun distance_to_speed (Float32 Float32 Float32) Int)

(declare-fun distance_to_speed__function_guard (Int Float32 Float32
  Float32) Bool)

(define-fun dynamic_invariant2 ((temp___expr_172 Int)
  (temp___is_init_169 Bool) (temp___skip_constant_170 Bool)
  (temp___do_toplevel_171 Bool)) Bool (=>
                                      (or (= temp___is_init_169 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_172)))

(declare-fun maximum_valid_speed () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

;; is_valid_speed_km_per_h__post_axiom
  (assert true)

;; is_valid_speed_km_per_h__def_axiom
  (assert
  (forall ((speed Float32))
  (! (= (= (is_valid_speed_km_per_h speed) true)
     (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) speed)
     (fp.leq speed (fp #b0 #b10000111 #b11110100000000000000000)))) :pattern (
  (is_valid_speed_km_per_h speed)) )))

;; maximum_valid_speed__def_axiom
  (assert
  (= maximum_valid_speed (m_per_s_from_km_per_h
                         (fp #b0 #b10000111 #b11110100000000000000000))))

(declare-fun initial_speed () Float32)

(declare-fun target__split_fields () Bool)

(declare-fun target__split_fields1 () distance_t)

(declare-fun target__split_fields2 () speed_t)

(declare-fun o () Float32)

(declare-fun o1 () speed_t)

(declare-fun o2 () distance_t)

(declare-fun o3 () Bool)

(declare-fun o4 () distance_t)

(declare-fun o5 () speed_t)

(declare-fun deceleration_curve_test__target__assume () Bool)

(declare-fun deceleration_curve_test__target__assume1 () distance_t)

(declare-fun deceleration_curve_test__target__assume2 () speed_t)

(declare-fun result () Float32)

(declare-fun initial_speed1 () Float32)

(declare-fun result1 () Bool)

(declare-fun result2 () distance_t)

(declare-fun result3 () speed_t)

(declare-fun target__split_fields3 () Bool)

(declare-fun target__split_fields4 () distance_t)

(declare-fun target__split_fields5 () speed_t)

;; H
  (assert
  (and
  (= o (m_per_s_from_km_per_h (fp #b0 #b10000110 #b01000000000000000000000)))
  (and (not (or (fp.isInfinite o) (fp.isNaN o)))
  (= o (fp.div RNE (fp.mul RNE (fp #b0 #b10000110 #b01000000000000000000000) (fp #b0 #b10001000 #b11110100000000000000000)) (fp #b0 #b10001010 #b11000010000000000000000))))))

;; H
  (assert (= result initial_speed))

;; H
  (assert (= initial_speed1 o))

;; H
  (assert
  (not (or (fp.isInfinite initial_speed1) (fp.isNaN initial_speed1))))

;; H
  (assert (= (to_rep o1) (fp #b0 #b00000000 #b00000000000000000000000)))

;; H
  (assert (= (to_rep1 o2) 2500))

;; H
  (assert (= (of_int1 1) o3))

;; H
  (assert (= o2 o4))

;; H
  (assert (= o1 o5))

;; H
  (assert (= deceleration_curve_test__target__assume o3))

;; H
  (assert (= deceleration_curve_test__target__assume1 o4))

;; H
  (assert (= deceleration_curve_test__target__assume2 o5))

;; H
  (assert (= result1 target__split_fields))

;; H
  (assert (= result2 target__split_fields1))

;; H
  (assert (= result3 target__split_fields2))

;; H
  (assert (= deceleration_curve_test__target__assume target__split_fields3))

;; H
  (assert (= deceleration_curve_test__target__assume1 target__split_fields4))

;; H
  (assert (= deceleration_curve_test__target__assume2 target__split_fields5))

(assert
;; WP_parameter_def
 ;; File "deceleration_curve_test.adb", line 5, characters 0-0
  (not (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) initial_speed1)))
(check-sat)
