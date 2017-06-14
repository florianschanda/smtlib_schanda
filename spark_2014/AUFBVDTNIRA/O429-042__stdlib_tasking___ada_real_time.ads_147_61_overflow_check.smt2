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

(declare-sort duration 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 9223372036854775808) x)
                                     (<= x 9223372036854775807)))

(declare-fun dummy1 () duration)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun to_fixed (duration) Int)

(declare-fun of_fixed (Int) duration)

(declare-fun user_eq1 (duration duration) Bool)

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

(declare-fun to_int2 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int2 x) 0)
     (ite (< 0 x) (pos_div_relation (to_int2 x) x 1000000000)
     (pos_div_relation (- (to_int2 x)) (- x) 1000000000))) :pattern (
  (to_int2 x)) )))

(declare-fun of_real (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x duration))
  (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)) )))

;; range_axiom
  (assert (forall ((x duration)) (in_range2 (to_fixed x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed
                                                                (of_fixed x))) )))

(declare-datatypes ()
((duration__ref (mk_duration__ref (duration__content duration)))))
(define-fun duration__ref___projection ((a duration__ref)) duration (duration__content
                                                                    a))

(declare-sort tduration_repB 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 9223372036854775808) x)
                                     (<= x 9223372036854775807)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (tduration_repB tduration_repB) Bool)

(declare-fun dummy2 () tduration_repB)

(declare-datatypes ()
((tduration_repB__ref
 (mk_tduration_repB__ref (tduration_repB__content tduration_repB)))))
(define-fun tduration_repB__ref___projection ((a tduration_repB__ref)) tduration_repB 
  (tduration_repB__content a))

(declare-sort duration_rep 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 9223372036854775808) x)
                                     (<= x 9223372036854775807)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (duration_rep duration_rep) Bool)

(declare-fun dummy3 () duration_rep)

(declare-datatypes ()
((duration_rep__ref
 (mk_duration_rep__ref (duration_rep__content duration_rep)))))
(define-fun duration_rep__ref___projection ((a duration_rep__ref)) duration_rep 
  (duration_rep__content a))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq3 (us_rep us_rep) Bool)

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((time_span__ref (mk_time_span__ref (time_span__content us_rep)))))
(define-fun time_span__ref___projection ((a time_span__ref)) us_rep (time_span__content
                                                                    a))

(declare-fun time_span_first () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun time_span_last () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun time_span_zero () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun olt__2 (us_rep us_rep) Bool)

(declare-fun olt__2__function_guard (Bool us_rep us_rep) Bool)

;; olt__2__post_axiom
  (assert true)

(declare-fun to_duration__2 (us_rep) duration)

(declare-fun to_duration__2__function_guard (duration us_rep) Bool)

(declare-fun ogt__2 (us_rep us_rep) Bool)

(declare-fun ogt__2__function_guard (Bool us_rep us_rep) Bool)

;; ogt__2__post_axiom
  (assert true)

(declare-fun osubtract__4 (us_rep) us_rep)

(declare-fun osubtract__4__function_guard (us_rep us_rep) Bool)

(declare-fun left () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun right () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun oge__2 (us_rep us_rep) Bool)

(declare-fun oge__2__function_guard (Bool us_rep us_rep) Bool)

;; oge__2__post_axiom
  (assert true)

(define-fun dynamic_invariant1 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= (- 9223372036854775808) 9223372036854775807))
                                      (in_range4 temp___expr_135)))

(declare-fun o () duration)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun result () Bool)

;; H
  (assert (in_range1 right))

;; H
  (assert (not (< 0 right)))

;; H
  (assert (< right 0))

;; H
  (assert
  (and (= result (ogt__2 left time_span_zero)) (ogt__2__function_guard 
  result left time_span_zero)))

;; H
  (assert (= result true))

;; H
  (assert (not (= right (- 1))))

;; H
  (assert
  (and (= o (to_duration__2 time_span_first)) (to_duration__2__function_guard
  o time_span_first)))

;; H
  (assert (= o1 (to_fixed o)))

;; H
  (assert (= o2 (fxp_div_result_int o1 1)))

(assert
;; WP_parameter_def
 ;; File "ada_real_time.ads", line 210, characters 0-0
  (not (in_range3 o2)))
(check-sat)
