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

(declare-fun a () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun ao () Int)

(declare-fun an () Int)

(declare-fun bn () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun result () Int)

(declare-fun an1 () Int)

(declare-fun result1 () Int)

(declare-fun bn1 () Int)

(declare-fun ao1 () Int)

(declare-fun an2 () Int)

(declare-fun bn2 () Int)

(declare-fun result2 () Bool)

(declare-fun result3 () Bool)

;; H
  (assert (in_range1 a))

;; H
  (assert (in_range1 b))

;; H
  (assert (and (not (= a (- 2147483648))) (not (= b (- 2147483648)))))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 ao)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref an)))

;; H
  (assert (= an1 a))

;; H
  (assert (in_range1 an1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref bn)))

;; H
  (assert (= bn1 b))

;; H
  (assert (in_range1 bn1))

;; H
  (assert (not (= bn1 0)))

;; H
  (assert
  (and
  (and (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648))))
  (or (<= (abs an2) (abs a)) (<= (abs an2) (abs b))))
  (or (<= (abs bn2) (abs a)) (<= (abs bn2) (abs b)))))

;; H
  (assert
  (and
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 ao1))
  (=> (<= (- 2147483648) 2147483647) (in_range1 an2)))
  (=> (<= (- 2147483648) 2147483647) (in_range1 bn2))) (not (= bn2 0))))

;; H
  (assert
  (=> (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648))))
  (and (= o3 (abs a)) (in_range1 (abs a)))))

;; H
  (assert
  (=> (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648))))
  (and (= o4 (abs an2)) (in_range1 (abs an2)))))

;; H
  (assert
  (=> (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648))))
  (= result3 (ite (<= o4 o3) true false))))

;; H
  (assert
  (=> (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648))))
  (=> (= result3 true) (= result2 true))))

;; H
  (assert
  (=> (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648))))
  (=> (not (= result3 true)) (and (= o1 (abs b)) (in_range1 (abs b))))))

;; H
  (assert
  (=> (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648))))
  (=> (not (= result3 true)) (and (= o2 (abs an2)) (in_range1 (abs an2))))))

;; H
  (assert
  (=> (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648))))
  (=> (not (= result3 true)) (= result2 (ite (<= o2 o1) true false)))))

;; H
  (assert
  (=> (not (and (not (= an2 (- 2147483648))) (not (= bn2 (- 2147483648)))))
  (= result2 false)))

;; H
  (assert (= result2 true))

;; H
  (assert (and (= o (abs a)) (in_range1 (abs a))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range1 (abs bn2))))
(check-sat)
