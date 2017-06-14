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

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort gender_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (gender_type gender_type) Bool)

(declare-fun dummy () gender_type)

(declare-datatypes ()
((gender_type__ref (mk_gender_type__ref (gender_type__content gender_type)))))
(define-fun gender_type__ref___projection ((a gender_type__ref)) gender_type 
  (gender_type__content a))

(declare-fun to_rep (gender_type) Int)

(declare-fun of_rep (Int) gender_type)

;; inversion_axiom
  (assert
  (forall ((x gender_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x gender_type)) (! (in_range1
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort meal_plan_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (meal_plan_type meal_plan_type) Bool)

(declare-fun dummy1 () meal_plan_type)

(declare-datatypes ()
((meal_plan_type__ref
 (mk_meal_plan_type__ref (meal_plan_type__content meal_plan_type)))))
(define-fun meal_plan_type__ref___projection ((a meal_plan_type__ref)) meal_plan_type 
  (meal_plan_type__content a))

(declare-fun to_rep1 (meal_plan_type) Int)

(declare-fun of_rep1 (Int) meal_plan_type)

;; inversion_axiom
  (assert
  (forall ((x meal_plan_type))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x meal_plan_type)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort gpa_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 512)))

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

(declare-fun dummy2 () gpa_type)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun to_fixed (gpa_type) Int)

(declare-fun of_fixed (Int) gpa_type)

(declare-fun user_eq2 (gpa_type gpa_type) Bool)

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
     (fxp_mult x y) (* x y) 128) (pos_div_relation (- (fxp_mult x y))
     (- (* x y)) 128))) :pattern ((fxp_mult x y)) ))))

(declare-fun fxp_div (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div x y) (* x 128) y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div x y) (* (- x) 128)
     (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div x y))
     (* (- x) 128) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div x y)) (* x 128)
     (- y))))))) :pattern ((fxp_div x y)) ))))

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

(declare-fun to_int2 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int2 x) 0)
     (ite (< 0 x) (pos_div_relation (to_int2 x) x 128) (pos_div_relation
     (- (to_int2 x)) (- x) 128))) :pattern ((to_int2 x)) )))

(declare-fun of_real (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x gpa_type))
  (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)) )))

;; range_axiom
  (assert (forall ((x gpa_type)) (in_range3 (to_fixed x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed
                                                                (of_fixed x))) )))

(declare-datatypes ()
((gpa_type__ref (mk_gpa_type__ref (gpa_type__content gpa_type)))))
(define-fun gpa_type__ref___projection ((a gpa_type__ref)) gpa_type (gpa_type__content
                                                                    a))

(declare-sort tmoney_typeB 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun dummy3 () tmoney_typeB)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun to_fixed1 (tmoney_typeB) Int)

(declare-fun of_fixed1 (Int) tmoney_typeB)

(declare-fun user_eq3 (tmoney_typeB tmoney_typeB) Bool)

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
     (fxp_mult1 x y) (* x y) 128) (pos_div_relation1 (- (fxp_mult1 x y))
     (- (* x y)) 128))) :pattern ((fxp_mult1 x y)) ))))

(declare-fun fxp_div1 (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div1 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation1 (fxp_div1 x y) (* x 128)
     y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation1 (fxp_div1 x y)
     (* (- x) 128) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation1 (- (fxp_div1 x y))
     (* (- x) 128) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation1 (- (fxp_div1 x y))
     (* x 128) (- y))))))) :pattern ((fxp_div1 x y)) ))))

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

(declare-fun to_int3 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int3 x) 0)
     (ite (< 0 x) (pos_div_relation1 (to_int3 x) x 128) (pos_div_relation1
     (- (to_int3 x)) (- x) 128))) :pattern ((to_int3 x)) )))

(declare-fun of_real1 (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x tmoney_typeB))
  (! (= (of_fixed1 (to_fixed1 x)) x) :pattern ((to_fixed1 x)) )))

;; range_axiom
  (assert (forall ((x tmoney_typeB)) (in_range4 (to_fixed1 x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_fixed1 (of_fixed1 x)) x)) :pattern ((to_fixed1
                                                                  (of_fixed1
                                                                  x))) )))

(declare-datatypes ()
((tmoney_typeB__ref
 (mk_tmoney_typeB__ref (tmoney_typeB__content tmoney_typeB)))))
(define-fun tmoney_typeB__ref___projection ((a tmoney_typeB__ref)) tmoney_typeB 
  (tmoney_typeB__content a))

(declare-sort money_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= (- 12799999) x)
                                     (<= x 12799999)))

(declare-fun dummy4 () money_type)

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun to_fixed2 (money_type) Int)

(declare-fun of_fixed2 (Int) money_type)

(declare-fun user_eq4 (money_type money_type) Bool)

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
     (fxp_mult2 x y) (* x y) 128) (pos_div_relation2 (- (fxp_mult2 x y))
     (- (* x y)) 128))) :pattern ((fxp_mult2 x y)) ))))

(declare-fun fxp_div2 (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div2 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation2 (fxp_div2 x y) (* x 128)
     y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation2 (fxp_div2 x y)
     (* (- x) 128) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation2 (- (fxp_div2 x y))
     (* (- x) 128) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation2 (- (fxp_div2 x y))
     (* x 128) (- y))))))) :pattern ((fxp_div2 x y)) ))))

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

(declare-fun to_int4 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int4 x) 0)
     (ite (< 0 x) (pos_div_relation2 (to_int4 x) x 128) (pos_div_relation2
     (- (to_int4 x)) (- x) 128))) :pattern ((to_int4 x)) )))

(declare-fun of_real2 (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x money_type))
  (! (= (of_fixed2 (to_fixed2 x)) x) :pattern ((to_fixed2 x)) )))

;; range_axiom
  (assert (forall ((x money_type)) (in_range5 (to_fixed2 x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_fixed2 (of_fixed2 x)) x)) :pattern ((to_fixed2
                                                                  (of_fixed2
                                                                  x))) )))

(declare-datatypes ()
((money_type__ref (mk_money_type__ref (money_type__content money_type)))))
(define-fun money_type__ref___projection ((a money_type__ref)) money_type 
  (money_type__content a))

(declare-sort date 0)

(define-fun in_range6 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq5 (date date) Bool)

(declare-fun dummy5 () date)

(declare-datatypes () ((date__ref (mk_date__ref (date__content date)))))
(define-fun date__ref___projection ((a date__ref)) date (date__content a))

(declare-fun to_rep2 (date) Int)

(declare-fun of_rep2 (Int) date)

;; inversion_axiom
  (assert
  (forall ((x date)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x date)) (! (in_range6 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range6 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort student_id 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 999999)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq6 (student_id student_id) Bool)

(declare-fun dummy6 () student_id)

(declare-datatypes ()
((student_id__ref (mk_student_id__ref (student_id__content student_id)))))
(define-fun student_id__ref___projection ((a student_id__ref)) student_id 
  (student_id__content a))

(declare-fun to_rep3 (student_id) Int)

(declare-fun of_rep3 (Int) student_id)

;; inversion_axiom
  (assert
  (forall ((x student_id))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x student_id)) (! (in_range7
  (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range7 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__students__student_record__birth_date date)(rec__students__student_record__id student_id)(rec__students__student_record__gender gender_type)(rec__students__student_record__gpa gpa_type)(rec__students__student_record__part_time Bool)(rec__students__student_record__in_state Bool)(rec__students__student_record__resident Bool)(rec__students__student_record__meal_plan meal_plan_type)(rec__students__student_record__self_insured Bool)))))
(define-fun us_split_fields_Birth_Date__projection ((a us_split_fields)) date 
  (rec__students__student_record__birth_date a))

(define-fun us_split_fields_ID__projection ((a us_split_fields)) student_id 
  (rec__students__student_record__id a))

(define-fun us_split_fields_Gender__projection ((a us_split_fields)) gender_type 
  (rec__students__student_record__gender a))

(define-fun us_split_fields_GPA__projection ((a us_split_fields)) gpa_type 
  (rec__students__student_record__gpa a))

(define-fun us_split_fields_Part_Time__projection ((a us_split_fields)) Bool 
  (rec__students__student_record__part_time a))

(define-fun us_split_fields_In_State__projection ((a us_split_fields)) Bool 
  (rec__students__student_record__in_state a))

(define-fun us_split_fields_Resident__projection ((a us_split_fields)) Bool 
  (rec__students__student_record__resident a))

(define-fun us_split_fields_Meal_Plan__projection ((a us_split_fields)) meal_plan_type 
  (rec__students__student_record__meal_plan a))

(define-fun us_split_fields_Self_Insured__projection ((a us_split_fields)) Bool 
  (rec__students__student_record__self_insured a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq4 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (= (to_rep2
                           (rec__students__student_record__birth_date
                           (us_split_fields1 a))) (to_rep2
                                                  (rec__students__student_record__birth_date
                                                  (us_split_fields1 b))))
                        (= (to_rep3
                           (rec__students__student_record__id
                           (us_split_fields1 a))) (to_rep3
                                                  (rec__students__student_record__id
                                                  (us_split_fields1 b)))))
                        (= (to_rep
                           (rec__students__student_record__gender
                           (us_split_fields1 a))) (to_rep
                                                  (rec__students__student_record__gender
                                                  (us_split_fields1 b)))))
                        (= (to_fixed
                           (rec__students__student_record__gpa
                           (us_split_fields1 a))) (to_fixed
                                                  (rec__students__student_record__gpa
                                                  (us_split_fields1 b)))))
                        (= (rec__students__student_record__part_time
                           (us_split_fields1 a)) (rec__students__student_record__part_time
                                                 (us_split_fields1 b))))
                        (= (rec__students__student_record__in_state
                           (us_split_fields1 a)) (rec__students__student_record__in_state
                                                 (us_split_fields1 b))))
                        (= (rec__students__student_record__resident
                           (us_split_fields1 a)) (rec__students__student_record__resident
                                                 (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__students__student_record__meal_plan
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__students__student_record__meal_plan
                                                  (us_split_fields1 b)))))
                        (= (rec__students__student_record__self_insured
                           (us_split_fields1 a)) (rec__students__student_record__self_insured
                                                 (us_split_fields1 b))))
                   true false))

(declare-fun user_eq7 (us_rep us_rep) Bool)

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

(declare-fun students__student_record__birth_date__first__bit () Int)

(declare-fun students__student_record__birth_date__last__bit () Int)

(declare-fun students__student_record__birth_date__position () Int)

;; students__student_record__birth_date__first__bit_axiom
  (assert (<= 0 students__student_record__birth_date__first__bit))

;; students__student_record__birth_date__last__bit_axiom
  (assert
  (< students__student_record__birth_date__first__bit students__student_record__birth_date__last__bit))

;; students__student_record__birth_date__position_axiom
  (assert (<= 0 students__student_record__birth_date__position))

(declare-fun students__student_record__id__first__bit () Int)

(declare-fun students__student_record__id__last__bit () Int)

(declare-fun students__student_record__id__position () Int)

;; students__student_record__id__first__bit_axiom
  (assert (<= 0 students__student_record__id__first__bit))

;; students__student_record__id__last__bit_axiom
  (assert
  (< students__student_record__id__first__bit students__student_record__id__last__bit))

;; students__student_record__id__position_axiom
  (assert (<= 0 students__student_record__id__position))

(declare-fun students__student_record__gender__first__bit () Int)

(declare-fun students__student_record__gender__last__bit () Int)

(declare-fun students__student_record__gender__position () Int)

;; students__student_record__gender__first__bit_axiom
  (assert (<= 0 students__student_record__gender__first__bit))

;; students__student_record__gender__last__bit_axiom
  (assert
  (< students__student_record__gender__first__bit students__student_record__gender__last__bit))

;; students__student_record__gender__position_axiom
  (assert (<= 0 students__student_record__gender__position))

(declare-fun students__student_record__gpa__first__bit () Int)

(declare-fun students__student_record__gpa__last__bit () Int)

(declare-fun students__student_record__gpa__position () Int)

;; students__student_record__gpa__first__bit_axiom
  (assert (<= 0 students__student_record__gpa__first__bit))

;; students__student_record__gpa__last__bit_axiom
  (assert
  (< students__student_record__gpa__first__bit students__student_record__gpa__last__bit))

;; students__student_record__gpa__position_axiom
  (assert (<= 0 students__student_record__gpa__position))

(declare-fun students__student_record__part_time__first__bit () Int)

(declare-fun students__student_record__part_time__last__bit () Int)

(declare-fun students__student_record__part_time__position () Int)

;; students__student_record__part_time__first__bit_axiom
  (assert (<= 0 students__student_record__part_time__first__bit))

;; students__student_record__part_time__last__bit_axiom
  (assert
  (< students__student_record__part_time__first__bit students__student_record__part_time__last__bit))

;; students__student_record__part_time__position_axiom
  (assert (<= 0 students__student_record__part_time__position))

(declare-fun students__student_record__in_state__first__bit () Int)

(declare-fun students__student_record__in_state__last__bit () Int)

(declare-fun students__student_record__in_state__position () Int)

;; students__student_record__in_state__first__bit_axiom
  (assert (<= 0 students__student_record__in_state__first__bit))

;; students__student_record__in_state__last__bit_axiom
  (assert
  (< students__student_record__in_state__first__bit students__student_record__in_state__last__bit))

;; students__student_record__in_state__position_axiom
  (assert (<= 0 students__student_record__in_state__position))

(declare-fun students__student_record__resident__first__bit () Int)

(declare-fun students__student_record__resident__last__bit () Int)

(declare-fun students__student_record__resident__position () Int)

;; students__student_record__resident__first__bit_axiom
  (assert (<= 0 students__student_record__resident__first__bit))

;; students__student_record__resident__last__bit_axiom
  (assert
  (< students__student_record__resident__first__bit students__student_record__resident__last__bit))

;; students__student_record__resident__position_axiom
  (assert (<= 0 students__student_record__resident__position))

(declare-fun students__student_record__meal_plan__first__bit () Int)

(declare-fun students__student_record__meal_plan__last__bit () Int)

(declare-fun students__student_record__meal_plan__position () Int)

;; students__student_record__meal_plan__first__bit_axiom
  (assert (<= 0 students__student_record__meal_plan__first__bit))

;; students__student_record__meal_plan__last__bit_axiom
  (assert
  (< students__student_record__meal_plan__first__bit students__student_record__meal_plan__last__bit))

;; students__student_record__meal_plan__position_axiom
  (assert (<= 0 students__student_record__meal_plan__position))

(declare-fun students__student_record__self_insured__first__bit () Int)

(declare-fun students__student_record__self_insured__last__bit () Int)

(declare-fun students__student_record__self_insured__position () Int)

;; students__student_record__self_insured__first__bit_axiom
  (assert (<= 0 students__student_record__self_insured__first__bit))

;; students__student_record__self_insured__last__bit_axiom
  (assert
  (< students__student_record__self_insured__first__bit students__student_record__self_insured__last__bit))

;; students__student_record__self_insured__position_axiom
  (assert (<= 0 students__student_record__self_insured__position))

(declare-fun dummy7 () us_rep)

(declare-datatypes ()
((student_record__ref
 (mk_student_record__ref (student_record__content us_rep)))))
(define-fun student_record__ref___projection ((a student_record__ref)) us_rep 
  (student_record__content a))

(declare-fun student () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun base_tuition () money_type)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 2)) (in_range1 temp___expr_141)))

(define-fun dynamic_invariant1 ((temp___expr_147 Int)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (<= 0 3)) (in_range2 temp___expr_147)))

(define-fun dynamic_invariant2 ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= 0 999999)) (in_range7
                                      temp___expr_153)))

(define-fun dynamic_invariant3 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range6 temp___expr_135)))

(declare-fun tuition () money_type)

(declare-fun grants () money_type)

(declare-fun insurance () money_type)

(declare-fun o () money_type)

(declare-fun o1 () money_type)

(declare-fun result () money_type)

(declare-fun grants1 () money_type)

(declare-fun result1 () money_type)

(declare-fun insurance1 () money_type)

(declare-fun result2 () money_type)

(declare-fun tuition1 () money_type)

;; H
  (assert
  (and (<= 0 (to_fixed2 base_tuition)) (< (to_fixed2 base_tuition) 2560000)))

;; H
  (assert (= (to_fixed2 o) 0))

;; H
  (assert (= result grants))

;; H
  (assert (= grants1 o))

;; H
  (assert (= (to_fixed2 o1) 0))

;; H
  (assert (= result1 insurance))

;; H
  (assert (= insurance1 o1))

;; H
  (assert (= result2 tuition))

;; H
  (assert (= tuition1 base_tuition))

;; H
  (assert
  (not
  (= (rec__students__student_record__in_state (us_split_fields1 student)) true)))

(assert
;; WP_parameter_def
 ;; File "students.ads", line 12, characters 0-0
  (not (in_range4
  (+ (to_fixed2 tuition1) (fxp_div_int1 (to_fixed2 tuition1) 2)))))
(check-sat)
