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

(declare-sort oper 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 6)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (oper oper) Bool)

(declare-fun dummy1 () oper)

(declare-datatypes () ((oper__ref (mk_oper__ref (oper__content oper)))))
(define-fun oper__ref___projection ((a oper__ref)) oper (oper__content a))

(define-fun dynamic_invariant1 ((temp___expr_171 Int)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)) Bool (=>
                                      (or (= temp___is_init_168 true)
                                      (<= 0 6)) (in_range1 temp___expr_171)))

(declare-sort tfixedB 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 128) x) (<= x 127)))

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

(declare-fun dummy2 () tfixedB)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun to_fixed (tfixedB) Int)

(declare-fun of_fixed (Int) tfixedB)

(declare-fun user_eq2 (tfixedB tfixedB) Bool)

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

(declare-fun to_int1 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int1 x) 0)
     (ite (< 0 x) (pos_div_relation (to_int1 x) x 128) (pos_div_relation
     (- (to_int1 x)) (- x) 128))) :pattern ((to_int1 x)) )))

(declare-fun of_real (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x tfixedB))
  (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)) )))

;; range_axiom
  (assert (forall ((x tfixedB)) (in_range2 (to_fixed x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed
                                                                (of_fixed x))) )))

(declare-datatypes ()
((tfixedB__ref (mk_tfixedB__ref (tfixedB__content tfixedB)))))
(define-fun tfixedB__ref___projection ((a tfixedB__ref)) tfixedB (tfixedB__content
                                                                 a))

(declare-sort fixed 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 128) x) (<= x 127)))

(declare-fun dummy3 () fixed)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun to_fixed1 (fixed) Int)

(declare-fun of_fixed1 (Int) fixed)

(declare-fun user_eq3 (fixed fixed) Bool)

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

(declare-fun to_int2 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int2 x) 0)
     (ite (< 0 x) (pos_div_relation1 (to_int2 x) x 128) (pos_div_relation1
     (- (to_int2 x)) (- x) 128))) :pattern ((to_int2 x)) )))

(declare-fun of_real1 (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x fixed))
  (! (= (of_fixed1 (to_fixed1 x)) x) :pattern ((to_fixed1 x)) )))

;; range_axiom
  (assert (forall ((x fixed)) (in_range3 (to_fixed1 x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_fixed1 (of_fixed1 x)) x)) :pattern ((to_fixed1
                                                                  (of_fixed1
                                                                  x))) )))

(declare-datatypes () ((fixed__ref (mk_fixed__ref (fixed__content fixed)))))
(define-fun fixed__ref___projection ((a fixed__ref)) fixed (fixed__content a))

(declare-fun op () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () fixed)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun y () fixed)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun e () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

;; H
  (assert (in_range1 op))

;; H
  (assert (in_range e))

;; H
  (assert (not (= op 0)))

;; H
  (assert (not (= op 1)))

;; H
  (assert (not (= op 2)))

;; H
  (assert (= op 3))

(assert
;; WP_parameter_def
 ;; File "overflow_check.adb", line 22, characters 0-0
  (not (in_range2 (- (to_fixed1 x) (to_fixed1 y)))))
(check-sat)
