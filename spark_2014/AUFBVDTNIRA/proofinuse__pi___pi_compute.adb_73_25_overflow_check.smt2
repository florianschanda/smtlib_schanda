;; produced by cvc4_14.drv ;;
(set-logic AUFBVDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.0)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
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

(declare-sort tfixedB 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

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

(declare-fun dummy () tfixedB)

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun to_fixed (tfixedB) Int)

(declare-fun of_fixed (Int) tfixedB)

(declare-fun user_eq (tfixedB tfixedB) Bool)

(define-fun pos_div_relation ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (and (<= exact res) (<= res (+ exact 1)))))))

(define-fun pos_div_relation_rna ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (ite (< (- num (* exact den)) (- (* (+ exact 1) den) num))
                  (= res exact) (= res (+ exact 1)))))))

(declare-fun fxp_mult (Int Int) Int)

;; fxp_mult_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (or (= x 0) (= y 0)) (= (fxp_mult x y) 0)
     (ite (or (and (< 0 x) (< 0 y)) (and (< x 0) (< y 0))) (pos_div_relation
     (fxp_mult x y) (* x y) 1048576) (pos_div_relation (- (fxp_mult x y))
     (- (* x y)) 1048576))) :pattern ((fxp_mult x y)) ))))

(declare-fun fxp_div (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div x y) (* x 1048576)
     y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div x y)
     (* (- x) 1048576) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div x y))
     (* (- x) 1048576) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div x y))
     (* x 1048576) (- y))))))) :pattern ((fxp_div x y)) ))))

(declare-fun fxp_div_int (Int Int) Int)

;; fxp_div_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_int x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div_int x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div_int x y) (- x)
     (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div_int x y)) (- x)
     y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div_int x y)) x
     (- y))))))) :pattern ((fxp_div_int x y)) ))))

(declare-fun fxp_div_result_int (Int Int) Int)

;; fxp_div_result_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_result_int x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna
     (fxp_div_result_int x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation_rna
     (fxp_div_result_int x y) (- x) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna
     (- (fxp_div_result_int x y)) (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna
     (- (fxp_div_result_int x y)) x (- y))))))) :pattern ((fxp_div_result_int
                                                          x y)) ))))

(declare-fun to_int1 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int1 x) 0)
     (ite (< 0 x) (pos_div_relation (to_int1 x) x 1048576) (pos_div_relation
     (- (to_int1 x)) (- x) 1048576))) :pattern ((to_int1 x)) )))

(declare-fun of_real (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x tfixedB))
  (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)) )))

;; range_axiom
  (assert (forall ((x tfixedB)) (in_range (to_fixed x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed
                                                               (of_fixed x))) )))

(declare-datatypes ()
((tfixedB__ref (mk_tfixedB__ref (tfixedB__content tfixedB)))))
(define-fun tfixedB__ref___projection ((a tfixedB__ref)) tfixedB (tfixedB__content
                                                                 a))

(declare-sort fixed 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2146435072)))

(declare-fun dummy1 () fixed)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun to_fixed1 (fixed) Int)

(declare-fun of_fixed1 (Int) fixed)

(declare-fun user_eq1 (fixed fixed) Bool)

(define-fun pos_div_relation1 ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (and (<= exact res) (<= res (+ exact 1)))))))

(define-fun pos_div_relation_rna1 ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (ite (< (- num (* exact den)) (- (* (+ exact 1) den) num))
                  (= res exact) (= res (+ exact 1)))))))

(declare-fun fxp_mult1 (Int Int) Int)

;; fxp_mult_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (or (= x 0) (= y 0)) (= (fxp_mult1 x y) 0)
     (ite (or (and (< 0 x) (< 0 y)) (and (< x 0) (< y 0))) (pos_div_relation1
     (fxp_mult1 x y) (* x y) 1048576) (pos_div_relation1 (- (fxp_mult1 x y))
     (- (* x y)) 1048576))) :pattern ((fxp_mult1 x y)) ))))

(declare-fun fxp_div1 (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div1 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation1 (fxp_div1 x y)
     (* x 1048576) y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation1 (fxp_div1 x y)
     (* (- x) 1048576) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation1 (- (fxp_div1 x y))
     (* (- x) 1048576) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation1 (- (fxp_div1 x y))
     (* x 1048576) (- y))))))) :pattern ((fxp_div1 x y)) ))))

(declare-fun fxp_div_int1 (Int Int) Int)

;; fxp_div_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_int1 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation1 (fxp_div_int1 x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation1 (fxp_div_int1 x y) (- x)
     (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation1 (- (fxp_div_int1 x y))
     (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation1 (- (fxp_div_int1 x y)) x
     (- y))))))) :pattern ((fxp_div_int1 x y)) ))))

(declare-fun fxp_div_result_int1 (Int Int) Int)

;; fxp_div_result_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_result_int1 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna1
     (fxp_div_result_int1 x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation_rna1
     (fxp_div_result_int1 x y) (- x) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna1
     (- (fxp_div_result_int1 x y)) (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna1
     (- (fxp_div_result_int1 x y)) x (- y))))))) :pattern ((fxp_div_result_int1
                                                           x y)) ))))

(declare-fun to_int2 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int2 x) 0)
     (ite (< 0 x) (pos_div_relation1 (to_int2 x) x 1048576)
     (pos_div_relation1 (- (to_int2 x)) (- x) 1048576))) :pattern ((to_int2
                                                                   x)) )))

(declare-fun of_real1 (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x fixed))
  (! (= (of_fixed1 (to_fixed1 x)) x) :pattern ((to_fixed1 x)) )))

;; range_axiom
  (assert (forall ((x fixed)) (in_range1 (to_fixed1 x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_fixed1 (of_fixed1 x)) x)) :pattern ((to_fixed1
                                                                  (of_fixed1
                                                                  x))) )))

(declare-datatypes () ((fixed__ref (mk_fixed__ref (fixed__content fixed)))))
(define-fun fixed__ref___projection ((a fixed__ref)) fixed (fixed__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS12 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS13 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS14 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS15 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS16 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS17 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS18 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS19 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS20 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS21 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS22 () Int)

(declare-fun t1 () fixed)

(declare-fun t2 () fixed)

(declare-fun t3 () fixed)

(declare-fun t4 () fixed)

(declare-fun t5 () fixed)

(declare-fun t6 () fixed)

(declare-fun t7 () fixed)

(declare-fun t8 () fixed)

(declare-fun t9 () fixed)

(declare-fun t10 () fixed)

(declare-fun a1 () fixed)

(declare-fun a2 () fixed)

(declare-fun a3 () fixed)

(declare-fun a4 () fixed)

(declare-fun a5 () fixed)

(declare-fun a6 () fixed)

(declare-fun a7 () fixed)

(declare-fun a8 () fixed)

(declare-fun a9 () fixed)

(declare-fun o () fixed)

(declare-fun o1 () fixed)

(declare-fun o2 () fixed)

(declare-fun o3 () fixed)

(declare-fun o4 () fixed)

(declare-fun o5 () fixed)

(declare-fun o6 () fixed)

(declare-fun o7 () fixed)

(declare-fun o8 () fixed)

(declare-fun o9 () fixed)

(declare-fun o10 () fixed)

(declare-fun o11 () fixed)

(declare-fun o12 () fixed)

(declare-fun o13 () fixed)

(declare-fun o14 () fixed)

(declare-fun o15 () fixed)

(declare-fun o16 () fixed)

(declare-fun o17 () fixed)

(declare-fun result () fixed__ref)

(declare-fun t11 () fixed)

(declare-fun result1 () fixed__ref)

(declare-fun t21 () fixed)

(declare-fun result2 () fixed__ref)

(declare-fun t31 () fixed)

(declare-fun result3 () fixed__ref)

(declare-fun t41 () fixed)

(declare-fun result4 () fixed__ref)

(declare-fun t51 () fixed)

(declare-fun result5 () fixed__ref)

(declare-fun t61 () fixed)

(declare-fun result6 () fixed__ref)

(declare-fun t71 () fixed)

(declare-fun result7 () fixed__ref)

(declare-fun t81 () fixed)

(declare-fun result8 () fixed__ref)

(declare-fun t91 () fixed)

(declare-fun result9 () fixed__ref)

(declare-fun t101 () fixed)

(declare-fun result10 () fixed__ref)

(declare-fun a11 () fixed)

(declare-fun result11 () fixed__ref)

(declare-fun a21 () fixed)

(declare-fun result12 () fixed__ref)

(declare-fun a31 () fixed)

(declare-fun result13 () fixed__ref)

(declare-fun a41 () fixed)

(declare-fun result14 () fixed__ref)

(declare-fun a51 () fixed)

(declare-fun result15 () fixed__ref)

(declare-fun a61 () fixed)

(declare-fun result16 () fixed__ref)

(declare-fun a71 () fixed)

(declare-fun result17 () fixed__ref)

(declare-fun a81 () fixed)

(declare-fun result18 () fixed__ref)

(declare-fun a91 () fixed)

;; H
  (assert (= (to_fixed1 o) 1048576))

;; H
  (assert (= result (mk_fixed__ref t1)))

;; H
  (assert (= t11 o))

;; H
  (assert (= (to_fixed1 o1) 349525))

;; H
  (assert (= result1 (mk_fixed__ref t2)))

;; H
  (assert (= t21 o1))

;; H
  (assert (= (to_fixed1 o2) 209715))

;; H
  (assert (= result2 (mk_fixed__ref t3)))

;; H
  (assert (= t31 o2))

;; H
  (assert (= (to_fixed1 o3) 149796))

;; H
  (assert (= result3 (mk_fixed__ref t4)))

;; H
  (assert (= t41 o3))

;; H
  (assert (= (to_fixed1 o4) 116508))

;; H
  (assert (= result4 (mk_fixed__ref t5)))

;; H
  (assert (= t51 o4))

;; H
  (assert (= (to_fixed1 o5) 95325))

;; H
  (assert (= result5 (mk_fixed__ref t6)))

;; H
  (assert (= t61 o5))

;; H
  (assert (= (to_fixed1 o6) 80659))

;; H
  (assert (= result6 (mk_fixed__ref t7)))

;; H
  (assert (= t71 o6))

;; H
  (assert (= (to_fixed1 o7) 69905))

;; H
  (assert (= result7 (mk_fixed__ref t8)))

;; H
  (assert (= t81 o7))

;; H
  (assert (= (to_fixed1 o8) 61680))

;; H
  (assert (= result8 (mk_fixed__ref t9)))

;; H
  (assert (= t91 o8))

;; H
  (assert (= (to_fixed1 o9) 55188))

;; H
  (assert (= result9 (mk_fixed__ref t10)))

;; H
  (assert (= t101 o9))

;; H
  (assert (= result10 (mk_fixed__ref a1)))

;; H
  (assert (= a11 t11))

;; H
  (assert (= (to_fixed1 o10) (- (to_fixed1 a11) (to_fixed1 t21))))

;; H
  (assert (= result11 (mk_fixed__ref a2)))

;; H
  (assert (= a21 o10))

;; H
  (assert (= (to_fixed1 o11) (+ (to_fixed1 a21) (to_fixed1 t31))))

;; H
  (assert (= result12 (mk_fixed__ref a3)))

;; H
  (assert (= a31 o11))

;; H
  (assert (= (to_fixed1 o12) (- (to_fixed1 a31) (to_fixed1 t41))))

;; H
  (assert (= result13 (mk_fixed__ref a4)))

;; H
  (assert (= a41 o12))

;; H
  (assert (= (to_fixed1 o13) (+ (to_fixed1 a41) (to_fixed1 t51))))

;; H
  (assert (= result14 (mk_fixed__ref a5)))

;; H
  (assert (= a51 o13))

;; H
  (assert (= (to_fixed1 o14) (- (to_fixed1 a51) (to_fixed1 t61))))

;; H
  (assert (= result15 (mk_fixed__ref a6)))

;; H
  (assert (= a61 o14))

;; H
  (assert (= (to_fixed1 o15) (+ (to_fixed1 a61) (to_fixed1 t71))))

;; H
  (assert (= result16 (mk_fixed__ref a7)))

;; H
  (assert (= a71 o15))

;; H
  (assert (= (to_fixed1 o16) (- (to_fixed1 a71) (to_fixed1 t81))))

;; H
  (assert (= result17 (mk_fixed__ref a8)))

;; H
  (assert (= a81 o16))

;; H
  (assert (= (to_fixed1 o17) (+ (to_fixed1 a81) (to_fixed1 t91))))

;; H
  (assert (= result18 (mk_fixed__ref a9)))

;; H
  (assert (= a91 o17))

(assert
;; WP_parameter_def
 ;; File "pi_compute.adb", line 7, characters 0-0
  (not (in_range (- (to_fixed1 a91) (to_fixed1 t101)))))
(check-sat)
