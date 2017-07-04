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

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-fun to_rep1 (positive) Int)

(declare-fun of_rep1 (Int) positive)

;; inversion_axiom
  (assert
  (forall ((x positive))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x positive)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

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

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(declare-fun prop__ (Int) Bool)

(declare-fun prop____function_guard (Bool Int) Bool)

;; prop____post_axiom
  (assert true)

;; prop____def_axiom
  (assert
  (forall ((x Int))
  (! (= (= (prop__ x) true) (not (= (mod2 10 x) 0))) :pattern ((prop__ x)) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__pred__r__d positive)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) positive 
  (rec__pred__r__d a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__pred__r__c1 integer)(rec__pred__r__c2 float)(rec__pred__r__c3 Bool)))))
(define-fun us_split_fields_C1__projection ((a us_split_fields)) integer 
  (rec__pred__r__c1 a))

(define-fun us_split_fields_C3__projection ((a us_split_fields)) Bool 
  (rec__pred__r__c3 a))

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

(define-fun pred__r__c1__pred ((a us_rep)) Bool (= (to_rep1
                                                   (rec__pred__r__d
                                                   (us_split_discrs1 a))) 1))

(define-fun pred__r__c2__pred ((a us_rep)) Bool (= (to_rep1
                                                   (rec__pred__r__d
                                                   (us_split_discrs1 a))) 2))

(define-fun pred__r__c3__pred ((a us_rep)) Bool (and
                                                (not
                                                (= (to_rep1
                                                   (rec__pred__r__d
                                                   (us_split_discrs1 a))) 1))
                                                (not
                                                (= (to_rep1
                                                   (rec__pred__r__d
                                                   (us_split_discrs1 a))) 2))))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (= (to_rep1 (rec__pred__r__d (us_split_discrs1 a))) 
                        (to_rep1 (rec__pred__r__d (us_split_discrs1 b))))
                        (=> (pred__r__c1__pred a)
                        (= (to_rep (rec__pred__r__c1 (us_split_fields1 a))) 
                        (to_rep (rec__pred__r__c1 (us_split_fields1 b))))))
                        (=> (pred__r__c2__pred a)
                        (= (to_rep2 (rec__pred__r__c2 (us_split_fields1 a))) 
                        (to_rep2 (rec__pred__r__c2 (us_split_fields1 b))))))
                        (=> (pred__r__c3__pred a)
                        (= (rec__pred__r__c3 (us_split_fields1 a)) (rec__pred__r__c3
                                                                   (us_split_fields1
                                                                   b)))))
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

(declare-fun pred__r__d__first__bit () Int)

(declare-fun pred__r__d__last__bit () Int)

(declare-fun pred__r__d__position () Int)

;; pred__r__d__first__bit_axiom
  (assert (<= 0 pred__r__d__first__bit))

;; pred__r__d__last__bit_axiom
  (assert (< pred__r__d__first__bit pred__r__d__last__bit))

;; pred__r__d__position_axiom
  (assert (<= 0 pred__r__d__position))

(declare-fun pred__r__c1__first__bit () Int)

(declare-fun pred__r__c1__last__bit () Int)

(declare-fun pred__r__c1__position () Int)

;; pred__r__c1__first__bit_axiom
  (assert (<= 0 pred__r__c1__first__bit))

;; pred__r__c1__last__bit_axiom
  (assert (< pred__r__c1__first__bit pred__r__c1__last__bit))

;; pred__r__c1__position_axiom
  (assert (<= 0 pred__r__c1__position))

(declare-fun pred__r__c2__first__bit () Int)

(declare-fun pred__r__c2__last__bit () Int)

(declare-fun pred__r__c2__position () Int)

;; pred__r__c2__first__bit_axiom
  (assert (<= 0 pred__r__c2__first__bit))

;; pred__r__c2__last__bit_axiom
  (assert (< pred__r__c2__first__bit pred__r__c2__last__bit))

;; pred__r__c2__position_axiom
  (assert (<= 0 pred__r__c2__position))

(declare-fun pred__r__c3__first__bit () Int)

(declare-fun pred__r__c3__last__bit () Int)

(declare-fun pred__r__c3__position () Int)

;; pred__r__c3__first__bit_axiom
  (assert (<= 0 pred__r__c3__first__bit))

;; pred__r__c3__last__bit_axiom
  (assert (< pred__r__c3__first__bit pred__r__c3__last__bit))

;; pred__r__c3__position_axiom
  (assert (<= 0 pred__r__c3__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((r__ref (mk_r__ref (r__content us_rep)))))
(define-fun r__ref___projection ((a r__ref)) us_rep (r__content a))

(define-fun dynamic_invariant1 ((temp___expr_155 us_rep)
  (temp___is_init_152 Bool) (temp___skip_constant_153 Bool)
  (temp___do_toplevel_154 Bool)) Bool (=> (= temp___do_toplevel_154 true)
                                      (=> (= temp___is_init_152 true)
                                      (and
                                      (= (prop__
                                         (to_rep1
                                         (rec__pred__r__d
                                         (us_split_discrs1 temp___expr_155)))) true)
                                      (ite (= (to_rep1
                                              (rec__pred__r__d
                                              (us_split_discrs1
                                              temp___expr_155))) 1)
                                      (not
                                      (= (to_rep
                                         (rec__pred__r__c1
                                         (us_split_fields1 temp___expr_155))) 0))
                                      (ite (= (to_rep1
                                              (rec__pred__r__d
                                              (us_split_discrs1
                                              temp___expr_155))) 2)
                                      (not (fp.eq (to_rep2
                                                  (rec__pred__r__c2
                                                  (us_split_fields1
                                                  temp___expr_155))) (fp #b0 #b00000000 #b00000000000000000000000)))
                                      (not
                                      (= (rec__pred__r__c3
                                         (us_split_fields1 temp___expr_155)) 
                                      (of_int1 0)))))))))

(define-fun dynamic_predicate ((temp___158 us_rep)) Bool (and
                                                         (= (prop__
                                                            (to_rep1
                                                            (rec__pred__r__d
                                                            (us_split_discrs1
                                                            temp___158)))) true)
                                                         (ite (= (to_rep1
                                                                 (rec__pred__r__d
                                                                 (us_split_discrs1
                                                                 temp___158))) 1)
                                                         (not
                                                         (= (to_rep
                                                            (rec__pred__r__c1
                                                            (us_split_fields1
                                                            temp___158))) 0))
                                                         (ite (= (to_rep1
                                                                 (rec__pred__r__d
                                                                 (us_split_discrs1
                                                                 temp___158))) 2)
                                                         (not (fp.eq 
                                                         (to_rep2
                                                         (rec__pred__r__c2
                                                         (us_split_fields1
                                                         temp___158))) (fp #b0 #b00000000 #b00000000000000000000000)))
                                                         (not
                                                         (= (rec__pred__r__c3
                                                            (us_split_fields1
                                                            temp___158)) 
                                                         (of_int1 0)))))))

(declare-fun i13b () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(define-fun dynamic_invariant3 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-fun result () Bool)

;; H
  (assert (dynamic_invariant1 i13b true false false))

;; H
  (assert
  (and
  (= result (prop__ (to_rep1 (rec__pred__r__d (us_split_discrs1 i13b)))))
  (= (= result true)
  (not (= (mod2 10 (to_rep1 (rec__pred__r__d (us_split_discrs1 i13b)))) 0)))))

;; H
  (assert (= result true))

;; H
  (assert (= (to_rep1 (rec__pred__r__d (us_split_discrs1 i13b))) 1))

(assert
;; WP_parameter_def
 ;; File "pred.adb", line 16, characters 0-0
  (not (= (to_rep1 (rec__pred__r__d (us_split_discrs1 i13b))) 1)))
(check-sat)
