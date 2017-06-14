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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

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
 (mk___split_fields
 (rec__flight_manager__engine_values__x_speed integer)(rec__flight_manager__engine_values__y_speed integer)))))
(define-fun us_split_fields_X_Speed__projection ((a us_split_fields)) integer 
  (rec__flight_manager__engine_values__x_speed a))

(define-fun us_split_fields_Y_Speed__projection ((a us_split_fields)) integer 
  (rec__flight_manager__engine_values__y_speed a))

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
                        (= (to_rep
                           (rec__flight_manager__engine_values__x_speed
                           (us_split_fields1 a))) (to_rep
                                                  (rec__flight_manager__engine_values__x_speed
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__flight_manager__engine_values__y_speed
                           (us_split_fields1 a))) (to_rep
                                                  (rec__flight_manager__engine_values__y_speed
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

(declare-fun flight_manager__engine_values__x_speed__first__bit () Int)

(declare-fun flight_manager__engine_values__x_speed__last__bit () Int)

(declare-fun flight_manager__engine_values__x_speed__position () Int)

;; flight_manager__engine_values__x_speed__first__bit_axiom
  (assert (<= 0 flight_manager__engine_values__x_speed__first__bit))

;; flight_manager__engine_values__x_speed__last__bit_axiom
  (assert
  (< flight_manager__engine_values__x_speed__first__bit flight_manager__engine_values__x_speed__last__bit))

;; flight_manager__engine_values__x_speed__position_axiom
  (assert (<= 0 flight_manager__engine_values__x_speed__position))

(declare-fun flight_manager__engine_values__y_speed__first__bit () Int)

(declare-fun flight_manager__engine_values__y_speed__last__bit () Int)

(declare-fun flight_manager__engine_values__y_speed__position () Int)

;; flight_manager__engine_values__y_speed__first__bit_axiom
  (assert (<= 0 flight_manager__engine_values__y_speed__first__bit))

;; flight_manager__engine_values__y_speed__last__bit_axiom
  (assert
  (< flight_manager__engine_values__y_speed__first__bit flight_manager__engine_values__y_speed__last__bit))

;; flight_manager__engine_values__y_speed__position_axiom
  (assert (<= 0 flight_manager__engine_values__y_speed__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((engine_values__ref (mk_engine_values__ref (engine_values__content us_rep)))))
(define-fun engine_values__ref___projection ((a engine_values__ref)) us_rep 
  (engine_values__content a))

(declare-fun position_x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun position_y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun target_x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun target_y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun my_abs (Int) Int)

(declare-fun my_abs__function_guard (Int Int) Bool)

;; my_abs__post_axiom
  (assert
  (forall ((i Int))
  (! (=> (dynamic_invariant i true true true)
     (let ((result (my_abs i)))
     (=> (my_abs__function_guard result i) (dynamic_invariant result true
     false true)))) :pattern ((my_abs i)) )))

(declare-fun c4b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun c7b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun result____split_fields () integer)

(declare-fun result____split_fields1 () integer)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun temp___145 () integer)

(declare-fun temp___1451 () integer)

(declare-fun o3 () integer)

(declare-fun o4 () integer)

(declare-fun o5 () integer)

(declare-fun temp___143 () integer)

(declare-fun temp___1431 () integer)

(declare-fun o6 () integer)

(declare-fun o7 () integer)

(declare-fun o8 () integer)

(declare-fun temp___149 () integer)

(declare-fun temp___1491 () integer)

(declare-fun o9 () integer)

(declare-fun o10 () integer)

(declare-fun o11 () integer)

(declare-fun temp___147 () integer)

(declare-fun temp___1471 () integer)

(declare-fun o12 () Int)

(declare-fun flight_manager__set_engine_speed__C4b__assume () Int)

(declare-fun result____split_fields2 () us_split_fields)

(declare-fun result () us_split_fields__ref)

(declare-fun result____split_fields3 () us_split_fields)

(declare-fun result1 () us_split_fields__ref)

(declare-fun result____split_fields4 () us_split_fields)

(declare-fun result2 () us_split_fields__ref)

(declare-fun result____split_fields5 () us_split_fields)

(declare-fun result3 () us_split_fields__ref)

(declare-fun result____split_fields6 () us_split_fields)

(define-fun result____split_fields7 () us_split_fields__ref (mk___split_fields__ref
                                                            (mk___split_fields
                                                            result____split_fields
                                                            result____split_fields1)))

;; H
  (assert (in_range1 position_x))

;; H
  (assert (in_range1 position_y))

;; H
  (assert (in_range1 target_x))

;; H
  (assert (in_range1 target_y))

;; H
  (assert (=> (< target_x position_x) (= (to_rep o) (- 100))))

;; H
  (assert (=> (< target_x position_x) (= o o1)))

;; H
  (assert (=> (< target_x position_x) (= result____split_fields1 o2)))

;; H
  (assert (=> (< target_x position_x) (= temp___145 o1)))

;; H
  (assert (=> (< target_x position_x) (= temp___1451 o2)))

;; H
  (assert (=> (< target_x position_x) (= result result____split_fields7)))

;; H
  (assert
  (=> (< target_x position_x)
  (= result____split_fields3 (mk___split_fields temp___145 temp___1451))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (=> (< position_x target_x) (= (to_rep o3) 100))))

;; H
  (assert
  (=> (not (< target_x position_x)) (=> (< position_x target_x) (= o3 o4))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (=> (< position_x target_x) (= result____split_fields1 o5))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (=> (< position_x target_x) (= temp___143 o4))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (=> (< position_x target_x) (= temp___1431 o5))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (=> (< position_x target_x) (= result1 result____split_fields7))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (=> (< position_x target_x)
  (= result____split_fields4 (mk___split_fields temp___143 temp___1431)))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (=> (not (< position_x target_x))
  (= result____split_fields4 (mk___split_fields result____split_fields
                             result____split_fields1)))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (=> (not (< position_x target_x))
  (= result____split_fields4 result____split_fields2))))

;; H
  (assert
  (=> (not (< target_x position_x))
  (= result____split_fields3 result____split_fields4)))

;; H
  (assert (=> (< target_y position_y) (= (to_rep o6) (- 100))))

;; H
  (assert
  (=> (< target_y position_y)
  (= (rec__flight_manager__engine_values__x_speed result____split_fields3) 
  o7)))

;; H
  (assert (=> (< target_y position_y) (= o6 o8)))

;; H
  (assert (=> (< target_y position_y) (= temp___149 o7)))

;; H
  (assert (=> (< target_y position_y) (= temp___1491 o8)))

;; H
  (assert
  (=> (< target_y position_y)
  (= result2 (mk___split_fields__ref result____split_fields3))))

;; H
  (assert
  (=> (< target_y position_y)
  (= result____split_fields5 (mk___split_fields temp___149 temp___1491))))

;; H
  (assert
  (=> (not (< target_y position_y))
  (=> (< position_y target_y) (= (to_rep o9) 100))))

;; H
  (assert
  (=> (not (< target_y position_y))
  (=> (< position_y target_y)
  (= (rec__flight_manager__engine_values__x_speed result____split_fields3) 
  o10))))

;; H
  (assert
  (=> (not (< target_y position_y)) (=> (< position_y target_y) (= o9 o11))))

;; H
  (assert
  (=> (not (< target_y position_y))
  (=> (< position_y target_y) (= temp___147 o10))))

;; H
  (assert
  (=> (not (< target_y position_y))
  (=> (< position_y target_y) (= temp___1471 o11))))

;; H
  (assert
  (=> (not (< target_y position_y))
  (=> (< position_y target_y)
  (= result3 (mk___split_fields__ref result____split_fields3)))))

;; H
  (assert
  (=> (not (< target_y position_y))
  (=> (< position_y target_y)
  (= result____split_fields6 (mk___split_fields temp___147 temp___1471)))))

;; H
  (assert
  (=> (not (< target_y position_y))
  (=> (not (< position_y target_y))
  (= result____split_fields6 result____split_fields3))))

;; H
  (assert
  (=> (not (< target_y position_y))
  (= result____split_fields5 result____split_fields6)))

;; H
  (assert
  (and (= o12 (- position_x target_x)) (in_range1 (- position_x target_x))))

;; H
  (assert
  (and
  (and (= flight_manager__set_engine_speed__C4b__assume (my_abs o12))
  (my_abs__function_guard flight_manager__set_engine_speed__C4b__assume 
  o12)) (in_range1 flight_manager__set_engine_speed__C4b__assume)))

;; H
  (assert (= flight_manager__set_engine_speed__C4b__assume c4b))

;; H
  (assert (in_range1 c4b))

;; H
  (assert (< c4b 10))

(assert
;; WP_parameter_def
 ;; File "flight_manager.ads", line 3, characters 0-0
  (not (in_range1
  (* (to_rep
     (rec__flight_manager__engine_values__x_speed result____split_fields5)) 
  c4b))))
(check-sat)
