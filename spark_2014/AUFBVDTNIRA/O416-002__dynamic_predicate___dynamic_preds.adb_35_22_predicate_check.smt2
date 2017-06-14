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

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

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
  (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__dynamic_preds__ext_even_pair__a integer)(rec__dynamic_preds__ext_even_pair__b integer)))))
(define-fun us_split_fields_A2__projection ((a us_split_fields)) integer 
  (rec__dynamic_preds__ext_even_pair__a a))

(define-fun us_split_fields_B2__projection ((a us_split_fields)) integer 
  (rec__dynamic_preds__ext_even_pair__b a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__dynamic_preds__ext_even_pair__a
                           (us_split_fields1 a))) (to_rep
                                                  (rec__dynamic_preds__ext_even_pair__a
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__dynamic_preds__ext_even_pair__b
                           (us_split_fields1 a))) (to_rep
                                                  (rec__dynamic_preds__ext_even_pair__b
                                                  (us_split_fields1 b)))))
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

(declare-fun dynamic_preds__ext_even_pair__a__first__bit () Int)

(declare-fun dynamic_preds__ext_even_pair__a__last__bit () Int)

(declare-fun dynamic_preds__ext_even_pair__a__position () Int)

;; dynamic_preds__ext_even_pair__a__first__bit_axiom
  (assert (<= 0 dynamic_preds__ext_even_pair__a__first__bit))

;; dynamic_preds__ext_even_pair__a__last__bit_axiom
  (assert
  (< dynamic_preds__ext_even_pair__a__first__bit dynamic_preds__ext_even_pair__a__last__bit))

;; dynamic_preds__ext_even_pair__a__position_axiom
  (assert (<= 0 dynamic_preds__ext_even_pair__a__position))

(declare-fun dynamic_preds__ext_even_pair__b__first__bit () Int)

(declare-fun dynamic_preds__ext_even_pair__b__last__bit () Int)

(declare-fun dynamic_preds__ext_even_pair__b__position () Int)

;; dynamic_preds__ext_even_pair__b__first__bit_axiom
  (assert (<= 0 dynamic_preds__ext_even_pair__b__first__bit))

;; dynamic_preds__ext_even_pair__b__last__bit_axiom
  (assert
  (< dynamic_preds__ext_even_pair__b__first__bit dynamic_preds__ext_even_pair__b__last__bit))

;; dynamic_preds__ext_even_pair__b__position_axiom
  (assert (<= 0 dynamic_preds__ext_even_pair__b__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((ext_even_pair__ref (mk_ext_even_pair__ref (ext_even_pair__content us_rep)))))
(define-fun ext_even_pair__ref___projection ((a ext_even_pair__ref)) us_rep 
  (ext_even_pair__content a))

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

(declare-sort even 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq2 (even even) Bool)

(declare-fun dummy2 () even)

(declare-datatypes () ((even__ref (mk_even__ref (even__content even)))))
(define-fun even__ref___projection ((a even__ref)) even (even__content a))

(define-fun dynamic_invariant ((temp___expr_154 us_rep)
  (temp___is_init_151 Bool) (temp___skip_constant_152 Bool)
  (temp___do_toplevel_153 Bool)) Bool (=> (= temp___do_toplevel_153 true)
                                      (=> (= temp___is_init_151 true)
                                      (and
                                      (and (in_range1
                                      (to_rep
                                      (rec__dynamic_preds__ext_even_pair__a
                                      (us_split_fields1 temp___expr_154))))
                                      (= (mod2
                                         (to_rep
                                         (rec__dynamic_preds__ext_even_pair__a
                                         (us_split_fields1 temp___expr_154)))
                                         2) 0))
                                      (and (in_range1
                                      (to_rep
                                      (rec__dynamic_preds__ext_even_pair__b
                                      (us_split_fields1 temp___expr_154))))
                                      (= (mod2
                                         (to_rep
                                         (rec__dynamic_preds__ext_even_pair__b
                                         (us_split_fields1 temp___expr_154)))
                                         2) 0))))))

(define-fun dynamic_predicate ((temp___164 us_rep)) Bool (and
                                                         (and (in_range1
                                                         (to_rep
                                                         (rec__dynamic_preds__ext_even_pair__a
                                                         (us_split_fields1
                                                         temp___164))))
                                                         (= (mod2
                                                            (to_rep
                                                            (rec__dynamic_preds__ext_even_pair__a
                                                            (us_split_fields1
                                                            temp___164))) 2) 0))
                                                         (and (in_range1
                                                         (to_rep
                                                         (rec__dynamic_preds__ext_even_pair__b
                                                         (us_split_fields1
                                                         temp___164))))
                                                         (= (mod2
                                                            (to_rep
                                                            (rec__dynamic_preds__ext_even_pair__b
                                                            (us_split_fields1
                                                            temp___164))) 2) 0))))

(declare-fun i9s () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant2 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (and
                                      (=>
                                      (or (= temp___is_init_132 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range1 temp___expr_135))
                                      (=> (= temp___do_toplevel_134 true)
                                      (=> (= temp___is_init_132 true)
                                      (= (mod2 temp___expr_135 2) 0)))))

(define-fun dynamic_predicate1 ((temp___139 Int)) Bool (= (mod2 temp___139 2) 0))

(declare-fun x__split_fields () integer)

(declare-fun x__split_fields1 () integer)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun temp___209 () integer)

(declare-fun temp___2091 () integer)

(declare-fun temp___210 () integer)

(declare-fun temp___2101 () integer)

(declare-fun o3 () integer)

(declare-fun o4 () integer)

(declare-fun o5 () integer)

(declare-fun temp___212 () integer)

(declare-fun temp___2121 () integer)

(declare-fun dynamic_preds__init_even__x () Int)

(declare-fun result () integer)

(declare-fun result1 () integer)

(declare-fun x__split_fields2 () integer)

(declare-fun x__split_fields3 () integer)

(declare-fun dynamic_preds__init_ok_even__x () Int)

(define-fun temp___2092 () us_rep (mk___rep
                                  (mk___split_fields temp___209 temp___2091)))

;; H
  (assert (dynamic_invariant i9s true false true))

;; H
  (assert (dynamic_invariant
  (mk___rep (mk___split_fields x__split_fields x__split_fields1)) true false
  true))

;; H
  (assert (in_range dynamic_preds__init_even__x))

;; H
  (assert (= (to_rep o) dynamic_preds__init_even__x))

;; H
  (assert (= o o1))

;; H
  (assert (= x__split_fields1 o2))

;; H
  (assert (= temp___209 o1))

;; H
  (assert (= temp___2091 o2))

;; H
  (assert (dynamic_predicate temp___2092))

;; H
  (assert
  (= (mk___rep (mk___split_fields temp___210 temp___2101)) temp___2092))

;; H
  (assert (= result x__split_fields))

;; H
  (assert (= result1 x__split_fields1))

;; H
  (assert (= temp___210 x__split_fields2))

;; H
  (assert (= temp___2101 x__split_fields3))

;; H
  (assert
  (and
  (and (in_range1 dynamic_preds__init_ok_even__x)
  (= (mod2 dynamic_preds__init_ok_even__x 2) 0)) (in_range
  dynamic_preds__init_ok_even__x)))

;; H
  (assert (= (to_rep o3) dynamic_preds__init_ok_even__x))

;; H
  (assert (= x__split_fields2 o4))

;; H
  (assert (= o3 o5))

;; H
  (assert (= temp___212 o4))

;; H
  (assert (= temp___2121 o5))

(assert
;; WP_parameter_def
 ;; File "dynamic_preds.adb", line 26, characters 0-0
  (not (dynamic_predicate
  (mk___rep (mk___split_fields temp___212 temp___2121)))))
(check-sat)
