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

(declare-fun power (Int Int) Int)

;; Power_0
  (assert (forall ((x Int)) (= (power x 0) 1)))

;; Power_s
  (assert
  (forall ((x Int) (n Int))
  (=> (<= 0 n) (= (power x (+ n 1)) (* x (power x n))))))

;; Power_s_alt
  (assert
  (forall ((x Int) (n Int))
  (=> (< 0 n) (= (power x n) (* x (power x (- n 1)))))))

;; Power_1
  (assert (forall ((x Int)) (= (power x 1) x)))

;; Power_sum
  (assert
  (forall ((x Int) (n Int) (m Int))
  (=> (<= 0 n)
  (=> (<= 0 m) (= (power x (+ n m)) (* (power x n) (power x m)))))))

;; Power_mult
  (assert
  (forall ((x Int) (n Int) (m Int))
  (=> (<= 0 n) (=> (<= 0 m) (= (power x (* n m)) (power (power x n) m))))))

;; Power_mult2
  (assert
  (forall ((x Int) (y Int) (n Int))
  (=> (<= 0 n) (= (power (* x y) n) (* (power x n) (power y n))))))

;; Power_non_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (<= 0 y)) (<= 0 (power x y)))))

;; Power_monotonic
  (assert
  (forall ((x Int) (n Int) (m Int))
  (=> (and (< 0 x) (and (<= 0 n) (<= n m))) (<= (power x n) (power x m)))))

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

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(declare-fun a1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun a2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun n1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun n2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun p1 () Int)

(declare-fun p2 () Int)

(declare-fun b1 () Int)

(declare-fun b2 () Int)

(declare-fun k1 () Int)

(declare-fun k2 () Int)

(declare-fun temp___193 () Int)

(declare-fun temp___192 () Int)

(declare-fun temp___191 () Int)

(declare-fun temp___194 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun result () Int)

(declare-fun p11 () Int)

(declare-fun result1 () Int)

(declare-fun b11 () Int)

(declare-fun result2 () Int)

(declare-fun k11 () Int)

(declare-fun p12 () Int)

(declare-fun b12 () Int)

(declare-fun k12 () Int)

(declare-fun temp___1941 () Int)

(declare-fun result3 () Int)

(declare-fun temp___1942 () Int)

(declare-fun result4 () Int)

(declare-fun k13 () Int)

(declare-fun result5 () Int)

(declare-fun b13 () Int)

(declare-fun result6 () Int)

(declare-fun k14 () Int)

(declare-fun result7 () Int)

(declare-fun p13 () Int)

(declare-fun p14 () Int)

(declare-fun b14 () int__ref)

(declare-fun k15 () int__ref)

(declare-fun p15 () Int)

(declare-fun b15 () Int)

(declare-fun k16 () Int)

(declare-fun p16 () int__ref)

(declare-fun b16 () int__ref)

(declare-fun k17 () int__ref)

(declare-fun p17 () Int)

(declare-fun b17 () Int)

(declare-fun k18 () Int)

(declare-fun result8 () int__ref)

(declare-fun p21 () Int)

(declare-fun result9 () int__ref)

(declare-fun b21 () Int)

(declare-fun result10 () int__ref)

(declare-fun k21 () Int)

(declare-fun p22 () Int)

(declare-fun b22 () Int)

(declare-fun k22 () Int)

(declare-fun temp___200 () Int)

(declare-fun result11 () int__ref)

(declare-fun temp___2001 () Int)

;; H
  (assert (in_range1 a1))

;; H
  (assert (in_range1 a2))

;; H
  (assert (in_range2 n1))

;; H
  (assert (in_range2 n2))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 p1)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 p2)))

;; H
  (assert
  (and (= a1 a2)
  (and (= n1 n2)
  (and (or (not (= a1 0)) (not (= n1 0))) (< (power a1 n1) 2147483647)))))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 b1)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 b2)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 k1)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 k2)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref p1)))

;; H
  (assert (= p11 1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref b1)))

;; H
  (assert (= b11 a1))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref k1)))

;; H
  (assert (= k11 n1))

;; H
  (assert (=> (< 0 k11) (= temp___193 p11)))

;; H
  (assert (=> (< 0 k11) (= temp___192 k11)))

;; H
  (assert (=> (< 0 k11) (= temp___191 b11)))

;; H
  (assert (=> (< 0 k11) (= 0 temp___194)))

;; H
  (assert
  (=> (< 0 k11) (and (= (power a1 n1) (* p12 (power b12 k12))) (<= 0 k12))))

;; H
  (assert
  (=> (< 0 k11)
  (and
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 b12))
  (=> (<= 0 2147483647) (in_range2 k12)))
  (=> (<= (- 2147483648) 2147483647) (in_range1 p12))) (< 0 k12))))

;; H
  (assert (=> (< 0 k11) (= temp___1941 result3)))

;; H
  (assert (=> (< 0 k11) (= temp___1942 k12)))

;; H
  (assert
  (=> (< 0 k11)
  (=> (= (mod1 k12 2) 0)
  (= (* p12 (power (* b12 b12) (div1 k12 2))) (power a1 n1)))))

;; H
  (assert (=> (< 0 k11) (=> (= (mod1 k12 2) 0) (= k12 result4))))

;; H
  (assert (=> (< 0 k11) (=> (= (mod1 k12 2) 0) (= k13 (div1 k12 2)))))

;; H
  (assert
  (=> (< 0 k11)
  (=> (= (mod1 k12 2) 0) (and (= o (* b12 b12)) (in_range1 (* b12 b12))))))

;; H
  (assert (=> (< 0 k11) (=> (= (mod1 k12 2) 0) (= b12 result5))))

;; H
  (assert (=> (< 0 k11) (=> (= (mod1 k12 2) 0) (= b13 o))))

;; H
  (assert (=> (< 0 k11) (=> (= (mod1 k12 2) 0) (= p13 p12))))

;; H
  (assert
  (=> (< 0 k11)
  (=> (not (= (mod1 k12 2) 0))
  (= (* (* p12 b12) (power b12 (- k12 1))) (power a1 n1)))))

;; H
  (assert
  (=> (< 0 k11)
  (=> (not (= (mod1 k12 2) 0)) (and (= o1 (- k12 1)) (in_range2 (- k12 1))))))

;; H
  (assert (=> (< 0 k11) (=> (not (= (mod1 k12 2) 0)) (= k12 result6))))

;; H
  (assert (=> (< 0 k11) (=> (not (= (mod1 k12 2) 0)) (= k14 o1))))

;; H
  (assert
  (=> (< 0 k11)
  (=> (not (= (mod1 k12 2) 0))
  (and (= o2 (* b12 p12)) (in_range1 (* b12 p12))))))

;; H
  (assert (=> (< 0 k11) (=> (not (= (mod1 k12 2) 0)) (= p12 result7))))

;; H
  (assert (=> (< 0 k11) (=> (not (= (mod1 k12 2) 0)) (= p13 o2))))

;; H
  (assert (=> (< 0 k11) (=> (not (= (mod1 k12 2) 0)) (= k13 k14))))

;; H
  (assert (=> (< 0 k11) (=> (not (= (mod1 k12 2) 0)) (= b13 b12))))

;; H
  (assert (=> (< 0 k11) (not (< 0 k13))))

;; H
  (assert (=> (< 0 k11) (= k15 (mk_int__ref k13))))

;; H
  (assert (=> (< 0 k11) (= b14 (mk_int__ref b13))))

;; H
  (assert (=> (< 0 k11) (= p13 p14)))

;; H
  (assert (=> (< 0 k11) (= k16 k13)))

;; H
  (assert (=> (< 0 k11) (= b15 b13)))

;; H
  (assert (=> (< 0 k11) (= p15 p13)))

;; H
  (assert (=> (< 0 k11) (= k17 k15)))

;; H
  (assert (=> (< 0 k11) (= b16 b14)))

;; H
  (assert (=> (< 0 k11) (= p16 (mk_int__ref p14))))

;; H
  (assert (=> (< 0 k11) (= k18 k16)))

;; H
  (assert (=> (< 0 k11) (= b17 b15)))

;; H
  (assert (=> (< 0 k11) (= p17 p15)))

;; H
  (assert (=> (not (< 0 k11)) (= k17 (mk_int__ref k11))))

;; H
  (assert (=> (not (< 0 k11)) (= b16 (mk_int__ref b11))))

;; H
  (assert (=> (not (< 0 k11)) (= p16 (mk_int__ref p11))))

;; H
  (assert (=> (not (< 0 k11)) (= k18 k11)))

;; H
  (assert (=> (not (< 0 k11)) (= b17 b11)))

;; H
  (assert (=> (not (< 0 k11)) (= p17 p11)))

;; H
  (assert (= result8 (mk_int__ref p2)))

;; H
  (assert (= p21 1))

;; H
  (assert (= result9 (mk_int__ref b2)))

;; H
  (assert (= b21 a2))

;; H
  (assert (= result10 (mk_int__ref k2)))

;; H
  (assert (= k21 n2))

;; H
  (assert (< 0 k21))

;; H
  (assert
  (and
  (and
  (and (= (power a2 n2) (* p22 (power b22 k22))) (<= 0 (int__content k17)))
  (<= p22 (power a2 n2))) (<= b22 (power a2 n2))))

;; H
  (assert
  (and
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 p22))
  (=> (<= (- 2147483648) 2147483647) (in_range1 b22)))
  (=> (<= 0 2147483647) (in_range2 k22))) (< 0 k22)))

;; H
  (assert (= result11 (mk_int__ref temp___200)))

;; H
  (assert (= temp___2001 k22))

;; H
  (assert (not (= (mod1 k22 2) 0)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= (* (* p22 b22) (power b22 (- k22 1))) (power a2 n2))))
(check-sat)
