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

(declare-sort natural 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range
                                     temp___expr_33)))

(declare-sort tuint_64B 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 9223372036854775808) x)
                                     (<= x 9223372036854775807)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (tuint_64B tuint_64B) Bool)

(declare-fun dummy1 () tuint_64B)

(declare-datatypes ()
((tuint_64B__ref (mk_tuint_64B__ref (tuint_64B__content tuint_64B)))))
(define-fun tuint_64B__ref___projection ((a tuint_64B__ref)) tuint_64B 
  (tuint_64B__content a))

(declare-sort uint_64 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x)
                                     (<= x 9223372036854775807)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (uint_64 uint_64) Bool)

(declare-fun dummy2 () uint_64)

(declare-datatypes ()
((uint_64__ref (mk_uint_64__ref (uint_64__content uint_64)))))
(define-fun uint_64__ref___projection ((a uint_64__ref)) uint_64 (uint_64__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 9223372036854775807)) (in_range2
                                      temp___expr_135)))

(declare-fun v () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun m () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun d () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun v_hi () Int)

(declare-fun v_lo () Int)

(declare-fun result_hi () Int)

(declare-fun result_lo () Int)

(declare-fun remainder () Int)

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

(declare-fun result () Int)

(declare-fun v_hi1 () Int)

(declare-fun result1 () Int)

(declare-fun v_lo1 () Int)

(declare-fun result2 () Int)

(declare-fun v_hi2 () Int)

(declare-fun result3 () Int)

(declare-fun v_lo2 () Int)

(declare-fun result4 () Int)

(declare-fun v_hi3 () Int)

(declare-fun result5 () Int)

(declare-fun v_lo3 () Int)

(declare-fun result6 () Int)

(declare-fun result_hi1 () Int)

;; H
  (assert (in_range2 v))

;; H
  (assert (in_range m))

;; H
  (assert (in_range d))

;; H
  (assert (not (= d 0)))

;; H
  (assert (and (= o (div1 v 4294967296)) (in_range2 (div1 v 4294967296))))

;; H
  (assert (= result v_hi))

;; H
  (assert (= v_hi1 o))

;; H
  (assert (in_range2 v_hi1))

;; H
  (assert (and (= o1 (mod1 v 4294967296)) (in_range2 (mod1 v 4294967296))))

;; H
  (assert (= result1 v_lo))

;; H
  (assert (= v_lo1 o1))

;; H
  (assert (in_range2 v_lo1))

;; H
  (assert (=> (<= 0 9223372036854775807) (in_range2 result_hi)))

;; H
  (assert (=> (<= 0 9223372036854775807) (in_range2 result_lo)))

;; H
  (assert (=> (<= 0 9223372036854775807) (in_range2 remainder)))

;; H
  (assert (and (= o2 (* v_hi1 m)) (in_range1 (* v_hi1 m))))

;; H
  (assert (and (= o3 o2) (in_range2 o2)))

;; H
  (assert (= result2 v_hi1))

;; H
  (assert (= v_hi2 o3))

;; H
  (assert (and (= o4 (* v_lo1 m)) (in_range1 (* v_lo1 m))))

;; H
  (assert (and (= o5 o4) (in_range2 o4)))

;; H
  (assert (= result3 v_lo1))

;; H
  (assert (= v_lo2 o5))

;; H
  (assert
  (and (= o6 (+ v_hi2 (div1 v_lo2 4294967296))) (in_range1
  (+ v_hi2 (div1 v_lo2 4294967296)))))

;; H
  (assert (= result4 v_hi2))

;; H
  (assert (= v_hi3 o6))

;; H
  (assert (= result5 v_lo2))

;; H
  (assert (= v_lo3 (mod1 v_lo2 4294967296)))

;; H
  (assert (and (= o7 (div1 v_hi3 d)) (in_range2 (div1 v_hi3 d))))

;; H
  (assert (= result6 result_hi))

;; H
  (assert (= result_hi1 o7))

;; H
  (assert (< result_hi1 2147483647))

;; H
  (assert (and (= o8 (* result_hi1 d)) (in_range1 (* result_hi1 d))))

;; H
  (assert (= o9 (- v_hi3 o8)))

(assert
;; WP_parameter_def
 ;; File "pck.ads", line 2, characters 0-0
  (not (in_range1 o9)))
(check-sat)
