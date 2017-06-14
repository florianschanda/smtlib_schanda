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

(declare-sort small 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (small small) Bool)

(declare-fun dummy () small)

(declare-datatypes () ((small__ref (mk_small__ref (small__content small)))))
(define-fun small__ref___projection ((a small__ref)) small (small__content a))

(define-fun dynamic_invariant ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (and
                                      (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 0 2147483647)) (in_range
                                      temp___expr_136))
                                      (=> (= temp___do_toplevel_135 true)
                                      (=> (= temp___is_init_133 true)
                                      (< (* 2 temp___expr_136) 100000)))))

(define-fun dynamic_predicate ((temp___140 Int)) Bool (< (* 2 temp___140) 100000))

(declare-fun to_rep (small) Int)

(declare-fun of_rep (Int) small)

;; inversion_axiom
  (assert
  (forall ((x small)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x small)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-fun i3s () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort very_small 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (very_small very_small) Bool)

(declare-fun dummy1 () very_small)

(declare-datatypes ()
((very_small__ref (mk_very_small__ref (very_small__content very_small)))))
(define-fun very_small__ref___projection ((a very_small__ref)) very_small 
  (very_small__content a))

(define-fun dynamic_invariant1 ((temp___expr_145 Int)
  (temp___is_init_142 Bool) (temp___skip_constant_143 Bool)
  (temp___do_toplevel_144 Bool)) Bool (and
                                      (=>
                                      (or (= temp___is_init_142 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_145))
                                      (=> (= temp___do_toplevel_144 true)
                                      (=> (= temp___is_init_142 true)
                                      (< (* temp___expr_145 temp___expr_145) 100000)))))

(define-fun dynamic_predicate1 ((temp___149 Int)) Bool (< (* temp___149 temp___149) 100000))

(declare-fun to_rep1 (very_small) Int)

(declare-fun of_rep1 (Int) very_small)

;; inversion_axiom
  (assert
  (forall ((x very_small))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x very_small)) (! (in_range1
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun i5s () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__dynamic_preds_rte__small_pair__a small)(rec__dynamic_preds_rte__small_pair__b very_small)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) small 
  (rec__dynamic_preds_rte__small_pair__a a))

(define-fun us_split_fields_B__projection ((a us_split_fields)) very_small 
  (rec__dynamic_preds_rte__small_pair__b a))

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
                        (= (to_rep
                           (rec__dynamic_preds_rte__small_pair__a
                           (us_split_fields1 a))) (to_rep
                                                  (rec__dynamic_preds_rte__small_pair__a
                                                  (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__dynamic_preds_rte__small_pair__b
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__dynamic_preds_rte__small_pair__b
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

(declare-fun dynamic_preds_rte__small_pair__a__first__bit () Int)

(declare-fun dynamic_preds_rte__small_pair__a__last__bit () Int)

(declare-fun dynamic_preds_rte__small_pair__a__position () Int)

;; dynamic_preds_rte__small_pair__a__first__bit_axiom
  (assert (<= 0 dynamic_preds_rte__small_pair__a__first__bit))

;; dynamic_preds_rte__small_pair__a__last__bit_axiom
  (assert
  (< dynamic_preds_rte__small_pair__a__first__bit dynamic_preds_rte__small_pair__a__last__bit))

;; dynamic_preds_rte__small_pair__a__position_axiom
  (assert (<= 0 dynamic_preds_rte__small_pair__a__position))

(declare-fun dynamic_preds_rte__small_pair__b__first__bit () Int)

(declare-fun dynamic_preds_rte__small_pair__b__last__bit () Int)

(declare-fun dynamic_preds_rte__small_pair__b__position () Int)

;; dynamic_preds_rte__small_pair__b__first__bit_axiom
  (assert (<= 0 dynamic_preds_rte__small_pair__b__first__bit))

;; dynamic_preds_rte__small_pair__b__last__bit_axiom
  (assert
  (< dynamic_preds_rte__small_pair__b__first__bit dynamic_preds_rte__small_pair__b__last__bit))

;; dynamic_preds_rte__small_pair__b__position_axiom
  (assert (<= 0 dynamic_preds_rte__small_pair__b__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((small_pair__ref (mk_small_pair__ref (small_pair__content us_rep)))))
(define-fun small_pair__ref___projection ((a small_pair__ref)) us_rep 
  (small_pair__content a))

(declare-datatypes ()
((ordered_small_pair__ref
 (mk_ordered_small_pair__ref (ordered_small_pair__content us_rep)))))
(define-fun ordered_small_pair__ref___projection ((a ordered_small_pair__ref)) us_rep 
  (ordered_small_pair__content a))

(declare-fun i7s () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant2 ((temp___expr_174 us_rep)
  (temp___is_init_171 Bool) (temp___skip_constant_172 Bool)
  (temp___do_toplevel_173 Bool)) Bool (and
                                      (=> (= temp___do_toplevel_173 true)
                                      (=> (= temp___is_init_171 true)
                                      (= (div1
                                         (to_rep
                                         (rec__dynamic_preds_rte__small_pair__a
                                         (us_split_fields1 temp___expr_174)))
                                         (to_rep1
                                         (rec__dynamic_preds_rte__small_pair__b
                                         (us_split_fields1 temp___expr_174)))) 0)))
                                      (and
                                      (=> (= temp___is_init_171 true)
                                      (< (* 2 (to_rep
                                              (rec__dynamic_preds_rte__small_pair__a
                                              (us_split_fields1
                                              temp___expr_174)))) 100000))
                                      (=> (= temp___is_init_171 true)
                                      (let ((temp___177 (rec__dynamic_preds_rte__small_pair__b
                                                        (us_split_fields1
                                                        temp___expr_174))))
                                      (< (* (to_rep1 temp___177) (to_rep1
                                                                 temp___177)) 100000))))))

(define-fun dynamic_predicate2 ((temp___182 us_rep)) Bool (= (div1
                                                             (to_rep
                                                             (rec__dynamic_preds_rte__small_pair__a
                                                             (us_split_fields1
                                                             temp___182)))
                                                             (to_rep1
                                                             (rec__dynamic_preds_rte__small_pair__b
                                                             (us_split_fields1
                                                             temp___182)))) 0))

;; H
  (assert (dynamic_invariant i3s true false true))

;; H
  (assert (dynamic_invariant1 i5s true false true))

;; H
  (assert (dynamic_invariant2 i7s true false false))

(assert
;; WP_parameter_def
 ;; File "dynamic_preds_rte.ads", line 14, characters 0-0
  (not
  (not
  (= (to_rep1 (rec__dynamic_preds_rte__small_pair__b (us_split_fields1 i7s))) 0))))
(check-sat)
