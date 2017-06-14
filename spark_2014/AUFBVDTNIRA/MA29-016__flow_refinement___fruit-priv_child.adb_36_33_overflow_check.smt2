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

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun price_of_fruit_salad (Int Int Int Int Int Int Int) Int)

(declare-fun price_of_fruit_salad__function_guard (Int Int Int Int Int Int
  Int Int) Bool)

;; price_of_fruit_salad__post_axiom
  (assert
  (forall ((fruit__apples Int) (fruit__oranges Int)
  (fruit__price_of_apple Int) (fruit__price_of_orange Int)
  (fruit__pub_child__apples_in_fruit_salad Int)
  (fruit__pub_child__oranges_in_fruit_salad Int)
  (fruit__priv_child__extra_cost Int))
  (! (=>
     (and
     (and
     (and
     (and
     (and
     (and (dynamic_invariant fruit__apples true true true) (dynamic_invariant
     fruit__oranges true true true)) (dynamic_invariant fruit__price_of_apple
     true true true)) (dynamic_invariant fruit__price_of_orange true true
     true)) (dynamic_invariant fruit__pub_child__apples_in_fruit_salad true
     true true)) (dynamic_invariant fruit__pub_child__oranges_in_fruit_salad
     true true true)) (dynamic_invariant fruit__priv_child__extra_cost true
     true true))
     (let ((result (price_of_fruit_salad fruit__apples fruit__oranges
                   fruit__price_of_apple fruit__price_of_orange
                   fruit__pub_child__apples_in_fruit_salad
                   fruit__pub_child__oranges_in_fruit_salad
                   fruit__priv_child__extra_cost)))
     (=> (price_of_fruit_salad__function_guard result fruit__apples
     fruit__oranges fruit__price_of_apple fruit__price_of_orange
     fruit__pub_child__apples_in_fruit_salad
     fruit__pub_child__oranges_in_fruit_salad fruit__priv_child__extra_cost)
     (dynamic_invariant result true false true)))) :pattern ((price_of_fruit_salad
                                                             fruit__apples
                                                             fruit__oranges
                                                             fruit__price_of_apple
                                                             fruit__price_of_orange
                                                             fruit__pub_child__apples_in_fruit_salad
                                                             fruit__pub_child__oranges_in_fruit_salad
                                                             fruit__priv_child__extra_cost)) )))

(declare-fun get_price_of_apple (Int) Int)

(declare-fun get_price_of_apple__function_guard (Int Int) Bool)

;; get_price_of_apple__post_axiom
  (assert
  (forall ((fruit__price_of_apple Int))
  (! (=> (dynamic_invariant fruit__price_of_apple true true true)
     (let ((result (get_price_of_apple fruit__price_of_apple)))
     (=> (get_price_of_apple__function_guard result fruit__price_of_apple)
     (dynamic_invariant result true false true)))) :pattern ((get_price_of_apple
                                                             fruit__price_of_apple)) )))

;; get_price_of_apple__def_axiom
  (assert
  (forall ((fruit__price_of_apple Int))
  (! (=>
     (and (dynamic_invariant fruit__price_of_apple true true true)
     (get_price_of_apple__function_guard
     (get_price_of_apple fruit__price_of_apple) fruit__price_of_apple))
     (= (get_price_of_apple fruit__price_of_apple) fruit__price_of_apple)) :pattern (
  (get_price_of_apple fruit__price_of_apple)) )))

(declare-fun get_price_of_orange (Int) Int)

(declare-fun get_price_of_orange__function_guard (Int Int) Bool)

;; get_price_of_orange__post_axiom
  (assert
  (forall ((fruit__price_of_orange Int))
  (! (=> (dynamic_invariant fruit__price_of_orange true true true)
     (let ((result (get_price_of_orange fruit__price_of_orange)))
     (=> (get_price_of_orange__function_guard result fruit__price_of_orange)
     (dynamic_invariant result true false true)))) :pattern ((get_price_of_orange
                                                             fruit__price_of_orange)) )))

;; get_price_of_orange__def_axiom
  (assert
  (forall ((fruit__price_of_orange Int))
  (! (=>
     (and (dynamic_invariant fruit__price_of_orange true true true)
     (get_price_of_orange__function_guard
     (get_price_of_orange fruit__price_of_orange) fruit__price_of_orange))
     (= (get_price_of_orange fruit__price_of_orange) fruit__price_of_orange)) :pattern (
  (get_price_of_orange fruit__price_of_orange)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

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

(declare-fun apples_in_fruit_salad () Int)

(declare-fun oranges_in_fruit_salad () Int)

(declare-fun profit () Int)

(declare-fun extra_cost () Int)

(declare-fun money () Int)

(declare-fun fruit_salads () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun apples1 () Int)

(declare-fun oranges1 () Int)

(declare-fun price_of_apple1 () Int)

(declare-fun price_of_orange1 () Int)

(declare-fun extra_cost1 () Int)

(declare-fun fruit_salads1 () Int)

(declare-fun result () Int)

(declare-fun money1 () Int)

;; H
  (assert (=> (<= 0 2147483647) (in_range1 profit)))

;; H
  (assert (in_range1 extra_cost))

;; H
  (assert (in_range1 apples))

;; H
  (assert (in_range1 oranges))

;; H
  (assert (in_range1 price_of_apple))

;; H
  (assert (in_range1 price_of_orange))

;; H
  (assert (in_range1 apples_in_fruit_salad))

;; H
  (assert (in_range1 oranges_in_fruit_salad))

;; H
  (assert (=> (<= 0 2147483647) (in_range1 money)))

;; H
  (assert (=> (<= 0 2147483647) (in_range1 fruit_salads)))

;; H
  (assert
  (and
  (and
  (and
  (and (and (in_range1 fruit_salads1) (in_range1 apples1)) (in_range1
  oranges1)) (in_range1 price_of_apple1)) (in_range1 price_of_orange1))
  (in_range1 extra_cost1)))

;; H
  (assert
  (and
  (and
  (= o (price_of_fruit_salad apples1 oranges1 price_of_apple1
       price_of_orange1 apples_in_fruit_salad oranges_in_fruit_salad
       extra_cost1))
  (price_of_fruit_salad__function_guard o apples1 oranges1 price_of_apple1
  price_of_orange1 apples_in_fruit_salad oranges_in_fruit_salad extra_cost1))
  (in_range1 o)))

;; H
  (assert (= o1 (* fruit_salads1 o)))

;; H
  (assert (and (= o2 o1) (in_range o1)))

;; H
  (assert (and (= o3 o2) (in_range1 o2)))

;; H
  (assert (= result money))

;; H
  (assert (= money1 o3))

;; H
  (assert
  (and
  (and (= o4 (get_price_of_apple price_of_apple1))
  (get_price_of_apple__function_guard o4 price_of_apple1))
  (and (in_range1 o4) (= o4 price_of_apple1))))

;; H
  (assert (= o5 (* apples1 o4)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range o5)))
(check-sat)
