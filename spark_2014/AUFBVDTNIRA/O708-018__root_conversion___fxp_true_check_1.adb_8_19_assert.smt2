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

(declare-sort duration 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 9223372036854775808) x)
                                    (<= x 9223372036854775807)))

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

(declare-fun dummy () duration)

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun to_fixed (duration) Int)

(declare-fun of_fixed (Int) duration)

(declare-fun user_eq (duration duration) Bool)

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
     (fxp_mult x y) (* x y) 1000000000) (pos_div_relation (- (fxp_mult x y))
     (- (* x y)) 1000000000))) :pattern ((fxp_mult x y)) ))))

(declare-fun fxp_div (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div x y)
     (* x 1000000000) y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div x y)
     (* (- x) 1000000000) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div x y))
     (* (- x) 1000000000) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div x y))
     (* x 1000000000) (- y))))))) :pattern ((fxp_div x y)) ))))

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
     (ite (< 0 x) (pos_div_relation (to_int1 x) x 1000000000)
     (pos_div_relation (- (to_int1 x)) (- x) 1000000000))) :pattern (
  (to_int1 x)) )))

(declare-fun of_real (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x duration))
  (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)) )))

;; range_axiom
  (assert (forall ((x duration)) (in_range (to_fixed x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed
                                                               (of_fixed x))) )))

(declare-datatypes ()
((duration__ref (mk_duration__ref (duration__content duration)))))
(define-fun duration__ref___projection ((a duration__ref)) duration (duration__content
                                                                    a))

(declare-sort my_duration 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 9223372036854775808) x)
                                     (<= x 9223372036854775807)))

(declare-fun dummy1 () my_duration)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun to_fixed1 (my_duration) Int)

(declare-fun of_fixed1 (Int) my_duration)

(declare-fun user_eq1 (my_duration my_duration) Bool)

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
     (fxp_mult1 x y) (* x y) 1000000000) (pos_div_relation1
     (- (fxp_mult1 x y)) (- (* x y)) 1000000000))) :pattern ((fxp_mult1 x y)) ))))

(declare-fun fxp_div1 (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div1 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation1 (fxp_div1 x y)
     (* x 1000000000) y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation1 (fxp_div1 x y)
     (* (- x) 1000000000) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation1 (- (fxp_div1 x y))
     (* (- x) 1000000000) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation1 (- (fxp_div1 x y))
     (* x 1000000000) (- y))))))) :pattern ((fxp_div1 x y)) ))))

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
     (ite (< 0 x) (pos_div_relation1 (to_int2 x) x 1000000000)
     (pos_div_relation1 (- (to_int2 x)) (- x) 1000000000))) :pattern (
  (to_int2 x)) )))

(declare-fun of_real1 (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x my_duration))
  (! (= (of_fixed1 (to_fixed1 x)) x) :pattern ((to_fixed1 x)) )))

;; range_axiom
  (assert (forall ((x my_duration)) (in_range1 (to_fixed1 x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_fixed1 (of_fixed1 x)) x)) :pattern ((to_fixed1
                                                                  (of_fixed1
                                                                  x))) )))

(declare-datatypes ()
((my_duration__ref (mk_my_duration__ref (my_duration__content my_duration)))))
(define-fun my_duration__ref___projection ((a my_duration__ref)) my_duration 
  (my_duration__content a))

(declare-sort my_subduration 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 10000000000) x)
                                     (<= x 10000000000)))

(declare-fun dummy2 () my_subduration)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun to_fixed2 (my_subduration) Int)

(declare-fun of_fixed2 (Int) my_subduration)

(declare-fun user_eq2 (my_subduration my_subduration) Bool)

(define-fun pos_div_relation2 ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (and (<= exact res) (<= res (+ exact 1)))))))

(define-fun pos_div_relation_rna2 ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (ite (< (- num (* exact den)) (- (* (+ exact 1) den) num))
                  (= res exact) (= res (+ exact 1)))))))

(declare-fun fxp_mult2 (Int Int) Int)

;; fxp_mult_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (or (= x 0) (= y 0)) (= (fxp_mult2 x y) 0)
     (ite (or (and (< 0 x) (< 0 y)) (and (< x 0) (< y 0))) (pos_div_relation2
     (fxp_mult2 x y) (* x y) 1000000000) (pos_div_relation2
     (- (fxp_mult2 x y)) (- (* x y)) 1000000000))) :pattern ((fxp_mult2 x y)) ))))

(declare-fun fxp_div2 (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div2 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation2 (fxp_div2 x y)
     (* x 1000000000) y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation2 (fxp_div2 x y)
     (* (- x) 1000000000) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation2 (- (fxp_div2 x y))
     (* (- x) 1000000000) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation2 (- (fxp_div2 x y))
     (* x 1000000000) (- y))))))) :pattern ((fxp_div2 x y)) ))))

(declare-fun fxp_div_int2 (Int Int) Int)

;; fxp_div_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_int2 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation2 (fxp_div_int2 x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation2 (fxp_div_int2 x y) (- x)
     (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation2 (- (fxp_div_int2 x y))
     (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation2 (- (fxp_div_int2 x y)) x
     (- y))))))) :pattern ((fxp_div_int2 x y)) ))))

(declare-fun fxp_div_result_int2 (Int Int) Int)

;; fxp_div_result_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_result_int2 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna2
     (fxp_div_result_int2 x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation_rna2
     (fxp_div_result_int2 x y) (- x) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna2
     (- (fxp_div_result_int2 x y)) (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna2
     (- (fxp_div_result_int2 x y)) x (- y))))))) :pattern ((fxp_div_result_int2
                                                           x y)) ))))

(declare-fun to_int3 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int3 x) 0)
     (ite (< 0 x) (pos_div_relation2 (to_int3 x) x 1000000000)
     (pos_div_relation2 (- (to_int3 x)) (- x) 1000000000))) :pattern (
  (to_int3 x)) )))

(declare-fun of_real2 (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x my_subduration))
  (! (= (of_fixed2 (to_fixed2 x)) x) :pattern ((to_fixed2 x)) )))

;; range_axiom
  (assert (forall ((x my_subduration)) (in_range2 (to_fixed2 x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_fixed2 (of_fixed2 x)) x)) :pattern ((to_fixed2
                                                                  (of_fixed2
                                                                  x))) )))

(declare-datatypes ()
((my_subduration__ref
 (mk_my_subduration__ref (my_subduration__content my_subduration)))))
(define-fun my_subduration__ref___projection ((a my_subduration__ref)) my_subduration 
  (my_subduration__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun md () my_duration)

(declare-fun ms () my_subduration)

(declare-fun o () my_duration)

(declare-fun o1 () my_subduration)

(declare-fun result () my_duration)

(declare-fun md1 () my_duration)

(declare-fun result1 () my_subduration)

(declare-fun ms1 () my_subduration)

;; H
  (assert (= (to_fixed1 o) 0))

;; H
  (assert (= result md))

;; H
  (assert (= md1 o))

;; H
  (assert (= (to_fixed2 o1) 0))

;; H
  (assert (= result1 ms))

;; H
  (assert (= ms1 o1))

;; H
  (assert (<= 0 (to_fixed (of_fixed (to_fixed1 md1)))))

(assert
;; WP_parameter_def
 ;; File "fxp_true_check_1.adb", line 3, characters 0-0
  (not (<= 0 (to_fixed (of_fixed (to_fixed2 ms1))))))
(check-sat)
