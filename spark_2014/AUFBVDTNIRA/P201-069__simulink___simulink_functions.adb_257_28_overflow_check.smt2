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

(declare-sort tinteger_16B 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 32768) x) (<= x 32767)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (tinteger_16B tinteger_16B) Bool)

(declare-fun dummy () tinteger_16B)

(declare-datatypes ()
((tinteger_16B__ref
 (mk_tinteger_16B__ref (tinteger_16B__content tinteger_16B)))))
(define-fun tinteger_16B__ref___projection ((a tinteger_16B__ref)) tinteger_16B 
  (tinteger_16B__content a))

(declare-sort integer_16 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 32768) x) (<= x 32767)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer_16 integer_16) Bool)

(declare-fun dummy1 () integer_16)

(declare-datatypes ()
((integer_16__ref (mk_integer_16__ref (integer_16__content integer_16)))))
(define-fun integer_16__ref_2__projection ((a integer_16__ref)) integer_16 
  (integer_16__content a))

(define-fun dynamic_invariant ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= (- 32768) 32767)) (in_range2
                                      temp___expr_153)))

(declare-fun left () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun right () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun quotient () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun result () Int)

(declare-fun quotient1 () Int)

;; H
  (assert (in_range2 left))

;; H
  (assert (in_range2 right))

;; H
  (assert (not (= right 0)))

;; H
  (assert (=> (< left 0) (=> (< left 0) (not (< right 0)))))

;; H
  (assert (=> (not (< left 0)) (< right 0)))

;; H
  (assert (=> (not (< left 0)) (=> (< left 0) (not (< right 0)))))

;; H
  (assert (and (= o1 (abs right)) (in_range1 (abs right))))

;; H
  (assert (and (= o (abs left)) (in_range1 (abs left))))

;; H
  (assert (= o2 (div1 o o1)))

;; H
  (assert (and (= o3 o2) (in_range1 o2)))

;; H
  (assert (and (= o4 o3) (in_range2 o3)))

;; H
  (assert (= result quotient))

;; H
  (assert (= quotient1 o4))

;; H
  (assert (in_range2 quotient1))

;; H
  (assert (and (= o5 (* (- 1) quotient1)) (in_range1 (* (- 1) quotient1))))

;; H
  (assert (= o6 (- o5 1)))

;; H
  (assert (and (= o7 o6) (in_range1 o6)))

;; H
  (assert (= o8 (* o7 right)))

;; H
  (assert (and (= o9 o8) (in_range1 o8)))

;; H
  (assert (= o10 (- left o9)))

(assert
;; WP_parameter_def
 ;; File "interfac.ads", line 49, characters 0-0
  (not (in_range1 o10)))
(check-sat)
