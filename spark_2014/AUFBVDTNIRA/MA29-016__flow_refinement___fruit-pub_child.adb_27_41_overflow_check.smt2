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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun number_of_apples (Int Int Int Int Int) Int)

(declare-fun number_of_apples__function_guard (Int Int Int Int Int Int) Bool)

;; number_of_apples__post_axiom
  (assert
  (forall ((fruit__apples Int) (fruit__oranges Int)
  (fruit__price_of_apple Int) (fruit__price_of_orange Int)
  (fruit__priv_child__extra_cost Int))
  (! (=>
     (and
     (and
     (and
     (and (dynamic_invariant fruit__apples true true true) (dynamic_invariant
     fruit__oranges true true true)) (dynamic_invariant fruit__price_of_apple
     true true true)) (dynamic_invariant fruit__price_of_orange true true
     true)) (dynamic_invariant fruit__priv_child__extra_cost true true true))
     (let ((result (number_of_apples fruit__apples fruit__oranges
                   fruit__price_of_apple fruit__price_of_orange
                   fruit__priv_child__extra_cost)))
     (=> (number_of_apples__function_guard result fruit__apples
     fruit__oranges fruit__price_of_apple fruit__price_of_orange
     fruit__priv_child__extra_cost) (dynamic_invariant result true false
     true)))) :pattern ((number_of_apples fruit__apples fruit__oranges
                        fruit__price_of_apple fruit__price_of_orange
                        fruit__priv_child__extra_cost)) )))

(declare-fun number_of_oranges (Int Int Int Int Int) Int)

(declare-fun number_of_oranges__function_guard (Int Int Int Int Int
  Int) Bool)

;; number_of_oranges__post_axiom
  (assert
  (forall ((fruit__apples Int) (fruit__oranges Int)
  (fruit__price_of_apple Int) (fruit__price_of_orange Int)
  (fruit__priv_child__extra_cost Int))
  (! (=>
     (and
     (and
     (and
     (and (dynamic_invariant fruit__apples true true true) (dynamic_invariant
     fruit__oranges true true true)) (dynamic_invariant fruit__price_of_apple
     true true true)) (dynamic_invariant fruit__price_of_orange true true
     true)) (dynamic_invariant fruit__priv_child__extra_cost true true true))
     (let ((result (number_of_oranges fruit__apples fruit__oranges
                   fruit__price_of_apple fruit__price_of_orange
                   fruit__priv_child__extra_cost)))
     (=> (number_of_oranges__function_guard result fruit__apples
     fruit__oranges fruit__price_of_apple fruit__price_of_orange
     fruit__priv_child__extra_cost) (dynamic_invariant result true false
     true)))) :pattern ((number_of_oranges fruit__apples fruit__oranges
                        fruit__price_of_apple fruit__price_of_orange
                        fruit__priv_child__extra_cost)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun apples () Int)

(declare-fun oranges () Int)

(declare-fun price_of_apple () Int)

(declare-fun price_of_orange () Int)

(declare-fun fruit_salads_made () Int)

(declare-fun apples_in_fruit_salad () Int)

(declare-fun oranges_in_fruit_salad () Int)

(declare-fun extra_cost () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun result () Bool)

(declare-fun result1 () Int)

(declare-fun fruit_salads_made1 () Int)

;; H
  (assert (=> (<= 0 2147483647) (in_range1 fruit_salads_made)))

;; H
  (assert (in_range1 apples_in_fruit_salad))

;; H
  (assert (in_range1 oranges_in_fruit_salad))

;; H
  (assert (in_range1 apples))

;; H
  (assert (in_range1 oranges))

;; H
  (assert (in_range1 price_of_apple))

;; H
  (assert (in_range1 price_of_orange))

;; H
  (assert (in_range1 extra_cost))

;; H
  (assert
  (and
  (and
  (= o1 (number_of_oranges apples oranges price_of_apple price_of_orange
        extra_cost))
  (number_of_oranges__function_guard o1 apples oranges price_of_apple
  price_of_orange extra_cost)) (in_range1 o1)))

;; H
  (assert (= o2 (div1 o1 oranges_in_fruit_salad)))

;; H
  (assert
  (and
  (and
  (= o (number_of_apples apples oranges price_of_apple price_of_orange
       extra_cost))
  (number_of_apples__function_guard o apples oranges price_of_apple
  price_of_orange extra_cost)) (in_range1 o)))

;; H
  (assert (= o3 (div1 o apples_in_fruit_salad)))

;; H
  (assert (= result (ite (<= o3 o2) true false)))

;; H
  (assert
  (=> (= result true)
  (and
  (and
  (= o4 (number_of_apples apples oranges price_of_apple price_of_orange
        extra_cost))
  (number_of_apples__function_guard o4 apples oranges price_of_apple
  price_of_orange extra_cost)) (in_range1 o4))))

;; H
  (assert (=> (= result true) (= o5 (div1 o4 apples_in_fruit_salad))))

;; H
  (assert (=> (= result true) (and (= o8 o5) (in_range1 o5))))

;; H
  (assert
  (=> (not (= result true))
  (and
  (and
  (= o6 (number_of_oranges apples oranges price_of_apple price_of_orange
        extra_cost))
  (number_of_oranges__function_guard o6 apples oranges price_of_apple
  price_of_orange extra_cost)) (in_range1 o6))))

;; H
  (assert (=> (not (= result true)) (= o7 (div1 o6 oranges_in_fruit_salad))))

;; H
  (assert (=> (not (= result true)) (and (= o8 o7) (in_range1 o7))))

;; H
  (assert (= result1 fruit_salads_made))

;; H
  (assert (= fruit_salads_made1 o8))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range (* fruit_salads_made1 apples_in_fruit_salad))))
(check-sat)
