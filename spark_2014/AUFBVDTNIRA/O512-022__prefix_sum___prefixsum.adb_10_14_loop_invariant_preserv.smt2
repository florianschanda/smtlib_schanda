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

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

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
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (positive positive) Bool)

(declare-fun dummy2 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(declare-sort index 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 7)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (index index) Bool)

(declare-fun dummy3 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq4 ((a (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq4 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq4 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq4 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun all_elements_in ((Array Int integer) Int) Bool)

(declare-fun all_elements_in__function_guard (Bool (Array Int integer)
  Int) Bool)

;; all_elements_in__post_axiom
  (assert true)

;; all_elements_in__def_axiom
  (assert
  (forall ((a (Array Int integer)))
  (forall ((max Int))
  (! (=> (all_elements_in__function_guard (all_elements_in a max) a max)
     (= (= (all_elements_in a max) true)
     (forall ((k Int))
     (=> (and (<= 0 k) (<= k 7))
     (and (<= (- max) (to_rep (select a k))) (<= (to_rep (select a k)) max)))))) :pattern (
  (all_elements_in a max)) ))))

(declare-fun all_left_elements_in ((Array Int integer) Int Int) Bool)

(declare-fun all_left_elements_in__function_guard (Bool (Array Int integer)
  Int Int) Bool)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

;; all_left_elements_in__post_axiom
  (assert true)

;; all_left_elements_in__def_axiom
  (assert
  (forall ((a (Array Int integer)))
  (forall ((right Int) (max Int))
  (! (=> (all_left_elements_in__function_guard
     (all_left_elements_in a right max) a right max)
     (= (= (all_left_elements_in a right max) true)
     (forall ((k Int))
     (=> (and (<= 0 k) (<= k 7))
     (=> (< k right)
     (and (<= (- max) (to_rep (select a k))) (<= (to_rep (select a k)) max))))))) :pattern (
  (all_left_elements_in a right max)) ))))

(declare-fun all_right_elements_in ((Array Int integer) Int Int) Bool)

(declare-fun all_right_elements_in__function_guard (Bool (Array Int integer)
  Int Int) Bool)

;; all_right_elements_in__post_axiom
  (assert true)

;; all_right_elements_in__def_axiom
  (assert
  (forall ((a (Array Int integer)))
  (forall ((left Int) (max Int))
  (! (=> (all_right_elements_in__function_guard
     (all_right_elements_in a left max) a left max)
     (= (= (all_right_elements_in a left max) true)
     (forall ((k Int))
     (=> (and (<= 0 k) (<= k 7))
     (=> (< left k)
     (and (<= (- max) (to_rep (select a k))) (<= (to_rep (select a k)) max))))))) :pattern (
  (all_right_elements_in a left max)) ))))

(declare-fun intermediate_form ((Array Int integer)
  (Array Int integer)) Bool)

(declare-fun intermediate_form__function_guard (Bool (Array Int integer)
  (Array Int integer)) Bool)

;; intermediate_form__post_axiom
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (! (and (all_elements_in__function_guard (all_elements_in a 8000000) a
     8000000) (all_elements_in__function_guard (all_elements_in b 1000000) b
     1000000)) :pattern ((intermediate_form a b)) )))

;; intermediate_form__def_axiom
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (! (=> (intermediate_form__function_guard (intermediate_form a b) a b)
     (= (= (intermediate_form a b) true)
     (forall ((k Int))
     (=> (and (<= 0 k) (<= k 7))
     (ite (= (mod2 (+ k 1) 8) 0)
     (= (to_rep (select a k)) (+ (+ (+ (+ (+ (+ (+ (to_rep (select b 0)) 
     (to_rep (select b 1))) (to_rep (select b 2))) (to_rep (select b 3))) 
     (to_rep (select b 4))) (to_rep (select b 5))) (to_rep (select b 6))) 
     (to_rep (select b 7))))
     (ite (= (mod2 (+ k 1) 4) 0)
     (= (to_rep (select a k)) (+ (+ (+ (to_rep (select b k)) (to_rep
                                                             (select b (- k 1)))) 
     (to_rep (select b (- k 2)))) (to_rep (select b (- k 3)))))
     (ite (= (mod2 (+ k 1) 2) 0)
     (= (to_rep (select a k)) (+ (to_rep (select b k)) (to_rep
                                                       (select b (- k 1)))))
     (= (to_rep (select a k)) (to_rep (select b k)))))))))) :pattern (
  (intermediate_form a b)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant3 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 0 7)) (in_range4 temp___expr_136)))

(declare-fun a () (Array Int integer))

(declare-fun output_space () Int)

(declare-fun space () Int)

(declare-fun left () Int)

(declare-fun right () Int)

(declare-fun temp___191 () (Array Int integer))

(declare-fun temp___187 () Int)

(declare-fun temp___185 () (Array Int integer))

(declare-fun temp___189 () (Array Int integer))

(declare-fun temp___184 () Int)

(declare-fun temp___188 () (Array Int integer))

(declare-fun temp___194 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () integer)

(declare-fun o3 () Int)

(declare-fun o4 () integer)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun o9 () integer)

(declare-fun o10 () Int)

(declare-fun o11 () (Array Int integer))

(declare-fun o12 () Int)

(declare-fun o13 () Int)

(declare-fun o14 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () Int)

(declare-fun o17 () Int)

(declare-fun result () Int)

(declare-fun space1 () Int)

(declare-fun a1 () (Array Int integer))

(declare-fun space2 () Int)

(declare-fun left1 () Int)

(declare-fun right1 () Int)

(declare-fun temp___220 () Int)

(declare-fun rho () Int)

(declare-fun result1 () Int)

(declare-fun temp___2201 () Int)

(declare-fun result2 () Int)

(declare-fun left2 () Int)

(declare-fun a2 () (Array Int integer))

(declare-fun left3 () Int)

(declare-fun right2 () Int)

(declare-fun temp___1941 () Int)

(declare-fun result3 () Int)

(declare-fun temp___1942 () Int)

(declare-fun result4 () Int)

(declare-fun right3 () Int)

(declare-fun result5 () (Array Int integer))

(declare-fun a3 () (Array Int integer))

(declare-fun result6 () Int)

(declare-fun left4 () Int)

(declare-fun a4 () (Array Int integer))

(declare-fun left5 () Int)

(declare-fun right4 () Int)

(declare-fun a5 () (Array Int integer))

(declare-fun left6 () Int)

(declare-fun right5 () Int)

(declare-fun rho1 () Int)

(declare-fun a6 () map__ref)

(declare-fun left7 () int__ref)

(declare-fun right6 () int__ref)

(declare-fun a7 () (Array Int integer))

(declare-fun left8 () Int)

(declare-fun right7 () Int)

(declare-fun rho2 () Int)

(declare-fun result7 () int__ref)

(declare-fun space3 () Int)

(declare-fun a8 () map__ref)

(declare-fun space4 () int__ref)

(declare-fun left9 () int__ref)

(declare-fun right8 () int__ref)

(declare-fun temp___2202 () int__ref)

(declare-fun a9 () (Array Int integer))

(declare-fun space5 () Int)

(declare-fun left10 () Int)

(declare-fun right9 () Int)

(declare-fun temp___2203 () Int)

(declare-fun rho3 () Int)

;; H
  (assert (=> (<= 1 2147483647) (in_range3 output_space)))

;; H
  (assert (all_elements_in__function_guard (all_elements_in a 1000000) 
  a 1000000))

;; H
  (assert (= (all_elements_in a 1000000) true))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref space)))

;; H
  (assert (= space1 1))

;; H
  (assert (in_range3 space1))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 left)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 right)))

;; H
  (assert (< space1 8))

;; H
  (assert (all_elements_in__function_guard
  (all_elements_in a1 (* space2 1000000)) a1 (* space2 1000000)))

;; H
  (assert
  (and
  (and (= (all_elements_in a1 (* space2 1000000)) true)
  (or (or (= space2 1) (= space2 2)) (= space2 4)))
  (forall ((k Int))
  (=> (and (<= 0 k) (<= k 7))
  (ite (and (= (mod2 (+ k 1) 8) 0) (= space2 8))
  (= (to_rep (select a1 k)) (+ (+ (+ (+ (+ (+ (+ (to_rep (select a 0)) 
  (to_rep (select a 1))) (to_rep (select a 2))) (to_rep (select a 3))) 
  (to_rep (select a 4))) (to_rep (select a 5))) (to_rep (select a 6))) 
  (to_rep (select a 7))))
  (ite (and (= (mod2 (+ k 1) 4) 0) (<= 4 space2))
  (= (to_rep (select a1 k)) (+ (+ (+ (to_rep (select a k)) (to_rep
                                                           (select a (- k 1)))) 
  (to_rep (select a (- k 2)))) (to_rep (select a (- k 3)))))
  (ite (and (= (mod2 (+ k 1) 2) 0) (<= 2 space2))
  (= (to_rep (select a1 k)) (+ (to_rep (select a k)) (to_rep
                                                     (select a (- k 1)))))
  (= (to_rep (select a1 k)) (to_rep (select a k))))))))))

;; H
  (assert (all_left_elements_in__function_guard
  (all_left_elements_in a2 left3 (* (* space2 2) 1000000)) a2 left3
  (* (* space2 2) 1000000)))

;; H
  (assert (all_right_elements_in__function_guard
  (all_right_elements_in a2 (- left3 1) (* space2 1000000)) a2 (- left3 1)
  (* space2 1000000)))

;; H
  (assert (all_left_elements_in__function_guard
  (all_left_elements_in a2 left3 (* (* space2 2) 1000000)) a2 left3
  (* (* space2 2) 1000000)))

;; H
  (assert (all_right_elements_in__function_guard
  (all_right_elements_in a2 (- left3 1) (* space2 1000000)) a2 (- left3 1)
  (* space2 1000000)))

;; H
  (assert
  (and
  (and
  (and (=> (<= 1 2147483647) (in_range3 space2))
  (=> (<= 0 2147483647) (in_range2 left1)))
  (=> (<= 0 2147483647) (in_range2 right1))) (< space2 8)))

;; H
  (assert (= temp___220 result1))

;; H
  (assert (= temp___2201 space2))

;; H
  (assert (= left1 result2))

;; H
  (assert (= left2 (- space2 1)))

;; H
  (assert (=> (< left2 8) (= temp___191 a1)))

;; H
  (assert (=> (< left2 8) (= temp___187 right1)))

;; H
  (assert (=> (< left2 8) (= temp___185 a1)))

;; H
  (assert (=> (< left2 8) (= temp___189 a1)))

;; H
  (assert (=> (< left2 8) (= temp___184 left2)))

;; H
  (assert (=> (< left2 8) (= temp___188 a1)))

;; H
  (assert (=> (< left2 8) (= 0 temp___194)))

;; H
  (assert
  (=> (< left2 8)
  (and
  (and
  (and
  (and
  (and (= (mod2 (+ left3 1) space2) 0)
  (= (all_left_elements_in a2 left3 (* (* space2 2) 1000000)) true))
  (= (all_right_elements_in a2 (- left3 1) (* space2 1000000)) true))
  (= (mod2 (+ left3 1) (* space2 2)) space2)) (not (<= 8 left3)))
  (forall ((k Int))
  (=> (and (<= 0 k) (<= k 7))
  (ite (and (and (<= 0 k) (<= k (- left3 space2)))
       (= (mod2 (+ k 1) (* 2 space2)) 0))
  (= (to_rep (select a2 k)) (+ (to_rep (select temp___188 k)) (to_rep
                                                              (select 
                                                              temp___189 (- k 
                                                              space2)))))
  (= (to_rep (select a2 k)) (to_rep (select temp___191 k)))))))))

;; H
  (assert
  (=> (< left2 8)
  (and
  (and (=> (<= 0 2147483647) (in_range2 left3))
  (=> (<= 0 2147483647) (in_range2 right2))) (< left3 8))))

;; H
  (assert (=> (< left2 8) (= temp___1941 result3)))

;; H
  (assert (=> (< left2 8) (= temp___1942 left3)))

;; H
  (assert
  (=> (< left2 8) (and (= o (+ left3 space2)) (in_range1 (+ left3 space2)))))

;; H
  (assert (=> (< left2 8) (= right2 result4)))

;; H
  (assert (=> (< left2 8) (= right3 o)))

;; H
  (assert (=> (< left2 8) (and (<= 0 right3) (<= right3 7))))

;; H
  (assert (=> (< left2 8) (= o3 right3)))

;; H
  (assert (=> (< left2 8) (= o4 (select a2 o3))))

;; H
  (assert (=> (< left2 8) (= o5 (to_rep o4))))

;; H
  (assert (=> (< left2 8) (and (<= 0 left3) (<= left3 7))))

;; H
  (assert (=> (< left2 8) (= o1 left3)))

;; H
  (assert (=> (< left2 8) (= o2 (select a2 o1))))

;; H
  (assert (=> (< left2 8) (= o6 (to_rep o2))))

;; H
  (assert (=> (< left2 8) (= o7 (+ o6 o5))))

;; H
  (assert (=> (< left2 8) (and (= o8 o7) (in_range1 o7))))

;; H
  (assert (=> (< left2 8) (= (to_rep o9) o8)))

;; H
  (assert (=> (< left2 8) (and (<= 0 right3) (<= right3 7))))

;; H
  (assert (=> (< left2 8) (= o10 right3)))

;; H
  (assert (=> (< left2 8) (= o11 (store a2 o10 o9))))

;; H
  (assert (=> (< left2 8) (= a2 result5)))

;; H
  (assert (=> (< left2 8) (= a3 o11)))

;; H
  (assert
  (=> (< left2 8) (and (= o12 (* space2 2)) (in_range1 (* space2 2)))))

;; H
  (assert (=> (< left2 8) (= o13 (+ left3 o12))))

;; H
  (assert (=> (< left2 8) (and (= o14 o13) (in_range1 o13))))

;; H
  (assert (=> (< left2 8) (and (= o15 o14) (in_range2 o14))))

;; H
  (assert (=> (< left2 8) (= left3 result6)))

;; H
  (assert (=> (< left2 8) (= left4 o15)))

;; H
  (assert (=> (< left2 8) (not (< left4 8))))

;; H
  (assert (=> (< left2 8) (= right3 right4)))

;; H
  (assert (=> (< left2 8) (= left4 left5)))

;; H
  (assert (=> (< left2 8) (= a3 a4)))

;; H
  (assert (=> (< left2 8) (= rho1 temp___1942)))

;; H
  (assert (=> (< left2 8) (= right5 right3)))

;; H
  (assert (=> (< left2 8) (= left6 left4)))

;; H
  (assert (=> (< left2 8) (= a5 a3)))

;; H
  (assert (=> (< left2 8) (= right6 (mk_int__ref right4))))

;; H
  (assert (=> (< left2 8) (= left7 (mk_int__ref left5))))

;; H
  (assert (=> (< left2 8) (= a6 (mk_map__ref a4))))

;; H
  (assert (=> (< left2 8) (= rho2 rho1)))

;; H
  (assert (=> (< left2 8) (= right7 right5)))

;; H
  (assert (=> (< left2 8) (= left8 left6)))

;; H
  (assert (=> (< left2 8) (= a7 a5)))

;; H
  (assert (=> (not (< left2 8)) (= right6 (mk_int__ref right1))))

;; H
  (assert (=> (not (< left2 8)) (= left7 (mk_int__ref left2))))

;; H
  (assert (=> (not (< left2 8)) (= a6 (mk_map__ref a1))))

;; H
  (assert (=> (not (< left2 8)) (= rho2 rho)))

;; H
  (assert (=> (not (< left2 8)) (= right7 right1)))

;; H
  (assert (=> (not (< left2 8)) (= left8 left2)))

;; H
  (assert (=> (not (< left2 8)) (= a7 a1)))

;; H
  (assert (and (= o16 (* space2 2)) (in_range1 (* space2 2))))

;; H
  (assert (and (= o17 o16) (in_range3 o16)))

;; H
  (assert (= result7 (mk_int__ref space2)))

;; H
  (assert (= space3 o17))

;; H
  (assert (< space3 8))

;; H
  (assert (= temp___2202 (mk_int__ref temp___2201)))

;; H
  (assert (= right8 right6))

;; H
  (assert (= left9 left7))

;; H
  (assert (= space4 (mk_int__ref space3)))

;; H
  (assert (= a8 a6))

;; H
  (assert (= rho3 rho2))

;; H
  (assert (= temp___2203 temp___2201))

;; H
  (assert (= right9 right7))

;; H
  (assert (= left10 left8))

;; H
  (assert (= space5 space3))

;; H
  (assert (= a9 a7))

;; H
  (assert (all_elements_in__function_guard
  (all_elements_in (map__content a8) (* (int__content space4) 1000000))
  (map__content a8) (* (int__content space4) 1000000)))

(assert
;; WP_parameter_def
 ;; File "prefixsum.ads", line 24, characters 0-0
  (not
  (= (all_elements_in (map__content a8) (* (int__content space4) 1000000)) true)))
(check-sat)
