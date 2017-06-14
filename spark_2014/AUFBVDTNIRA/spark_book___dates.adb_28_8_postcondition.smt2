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

(declare-sort year_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 2000 x) (<= x 2099)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (year_type year_type) Bool)

(declare-fun dummy () year_type)

(declare-datatypes ()
((year_type__ref (mk_year_type__ref (year_type__content year_type)))))
(define-fun year_type__ref___projection ((a year_type__ref)) year_type 
  (year_type__content a))

(define-fun dynamic_invariant ((temp___expr_150 Int)
  (temp___is_init_147 Bool) (temp___skip_constant_148 Bool)
  (temp___do_toplevel_149 Bool)) Bool (=>
                                      (or (= temp___is_init_147 true)
                                      (<= 2000 2099)) (in_range1
                                      temp___expr_150)))

(declare-sort month_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 12)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (month_type month_type) Bool)

(declare-fun dummy1 () month_type)

(declare-datatypes ()
((month_type__ref (mk_month_type__ref (month_type__content month_type)))))
(define-fun month_type__ref___projection ((a month_type__ref)) month_type 
  (month_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_156 Int)
  (temp___is_init_153 Bool) (temp___skip_constant_154 Bool)
  (temp___do_toplevel_155 Bool)) Bool (=>
                                      (or (= temp___is_init_153 true)
                                      (<= 1 12)) (in_range2 temp___expr_156)))

(declare-sort day_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 31)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (day_type day_type) Bool)

(declare-fun dummy2 () day_type)

(declare-datatypes ()
((day_type__ref (mk_day_type__ref (day_type__content day_type)))))
(define-fun day_type__ref___projection ((a day_type__ref)) day_type (day_type__content
                                                                    a))

(define-fun dynamic_invariant2 ((temp___expr_162 Int)
  (temp___is_init_159 Bool) (temp___skip_constant_160 Bool)
  (temp___do_toplevel_161 Bool)) Bool (=>
                                      (or (= temp___is_init_159 true)
                                      (<= 1 31)) (in_range3 temp___expr_162)))

(declare-fun to_rep (day_type) Int)

(declare-fun of_rep (Int) day_type)

;; inversion_axiom
  (assert
  (forall ((x day_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x day_type)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun year () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun month () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int day_type))))))
(declare-fun slide ((Array Int day_type) Int Int) (Array Int day_type))

;; slide_eq
  (assert
  (forall ((a (Array Int day_type)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int day_type)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int day_type) Int Int (Array Int day_type) Int
  Int) (Array Int day_type))

;; concat_def
  (assert
  (forall ((a (Array Int day_type)) (b (Array Int day_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (day_type Int) (Array Int day_type))

;; singleton_def
  (assert
  (forall ((v day_type))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int day_type)) (a__first Int) (a__last Int)
  (b (Array Int day_type)) (b__first Int)
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
  (forall ((a (Array Int day_type)) (b (Array Int day_type)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int day_type) Int Int (Array Int day_type) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int day_type)) (b (Array Int day_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int day_type)) (b (Array Int day_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int day_type)) (b (Array Int day_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort t6b 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 12)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (t6b t6b) Bool)

(declare-fun dummy3 () t6b)

(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content t6b)))))
(define-fun t6b__ref___projection ((a t6b__ref)) t6b (t6b__content a))

(declare-fun month_length () (Array Int day_type))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun dates__get_month_length__month_length__aggregate_def (Int Int
  Int Int Int Int Int Int Int Int Int Int) (Array Int day_type))

;; def_axiom
  (assert
  (forall ((temp___134 Int) (temp___135 Int) (temp___136 Int)
  (temp___137 Int) (temp___138 Int) (temp___139 Int) (temp___140 Int)
  (temp___141 Int) (temp___142 Int) (temp___143 Int) (temp___144 Int)
  (temp___145 Int))
  (let ((temp___133 (dates__get_month_length__month_length__aggregate_def
                    temp___134 temp___135 temp___136 temp___137 temp___138
                    temp___139 temp___140 temp___141 temp___142 temp___143
                    temp___144 temp___145)))
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (and (= (select temp___133 1) (of_rep temp___134))
  (= (select temp___133 2) (of_rep temp___135)))
  (= (select temp___133 3) (of_rep temp___136)))
  (= (select temp___133 4) (of_rep temp___137)))
  (= (select temp___133 5) (of_rep temp___138)))
  (= (select temp___133 6) (of_rep temp___139)))
  (= (select temp___133 7) (of_rep temp___140)))
  (= (select temp___133 8) (of_rep temp___141)))
  (= (select temp___133 9) (of_rep temp___142)))
  (= (select temp___133 10) (of_rep temp___143)))
  (= (select temp___133 11) (of_rep temp___144)))
  (= (select temp___133 12) (of_rep temp___145))))))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun c8b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

;; month_length__def_axiom
  (assert
  (= month_length (dates__get_month_length__month_length__aggregate_def 31 28
                  31 30 31 30 31 31 30 31 30 31)))

(declare-fun length () Int)

(declare-fun c9b () Bool)

(declare-fun result__ () Bool)

(declare-fun dates__get_month_length__result () Int)

(declare-fun dates__get_month_length__month_length__assume () (Array Int day_type))

(declare-fun result () Bool)

(declare-fun result__1 () Bool)

(declare-fun result1 () Bool)

(declare-fun result__2 () Bool)

(declare-fun result2 () Bool)

(declare-fun c9b1 () Bool)

(declare-fun result3 () Int)

(declare-fun length1 () Int)

(declare-fun result4 () Int)

(declare-fun length2 () Int)

(declare-fun result5 () Int)

(declare-fun dates__get_month_length__result1 () Int)

(declare-fun dates__get_month_length__result2 () Int)

(declare-fun dates__get_month_length__result3 () Int)

(declare-fun length3 () Int)

(declare-fun c9b2 () Bool)

(declare-fun result__3 () Bool)

(declare-fun dates__get_month_length__result4 () Int)

(declare-fun length4 () Int)

(declare-fun c9b3 () Bool)

(declare-fun result__4 () Bool)

(declare-fun dates__get_month_length__result5 () Int)

(declare-fun result6 () Int)

;; H
  (assert (in_range1 year))

;; H
  (assert (in_range2 month))

;; H
  (assert
  (= dates__get_month_length__month_length__assume (dates__get_month_length__month_length__aggregate_def
                                                   31 28 31 30 31 30 31 31 30
                                                   31 30 31)))

;; H
  (assert (= dates__get_month_length__month_length__assume month_length))

;; H
  (assert (=> (<= 1 31) (in_range3 length)))

;; H
  (assert (= year c8b))

;; H
  (assert (in_range1 c8b))

;; H
  (assert (= (mk_bool__ref result) (mk_bool__ref result__)))

;; H
  (assert (= result__1 (of_int 0)))

;; H
  (assert (=> (= (mod2 c8b 4) 0) (= result1 result__1)))

;; H
  (assert (=> (= (mod2 c8b 4) 0) (= result__2 (of_int 1))))

;; H
  (assert (=> (not (= (mod2 c8b 4) 0)) (= result__2 result__1)))

;; H
  (assert (= result2 c9b))

;; H
  (assert (= c9b1 result__2))

;; H
  (assert (=> (ite (= c9b1 true) (= month 2) false) (= result3 length)))

;; H
  (assert (=> (ite (= c9b1 true) (= month 2) false) (= length1 29)))

;; H
  (assert
  (=> (not (ite (= c9b1 true) (= month 2) false)) (= result4 length)))

;; H
  (assert
  (=> (not (ite (= c9b1 true) (= month 2) false))
  (= length2 (to_rep (select month_length month)))))

;; H
  (assert
  (=> (not (ite (= c9b1 true) (= month 2) false)) (= length1 length2)))

;; H
  (assert
  (= dates__get_month_length__result1 dates__get_month_length__result2))

;; H
  (assert
  (= dates__get_month_length__result3 dates__get_month_length__result1))

;; H
  (assert (= result5 dates__get_month_length__result))

;; H
  (assert (= dates__get_month_length__result1 length1))

;; H
  (assert
  (= (mk_int__ref dates__get_month_length__result4) (mk_int__ref
                                                    dates__get_month_length__result2)))

;; H
  (assert (= result__3 result__2))

;; H
  (assert (= c9b2 c9b1))

;; H
  (assert (= length3 length1))

;; H
  (assert
  (= dates__get_month_length__result5 dates__get_month_length__result3))

;; H
  (assert (= result__4 result__2))

;; H
  (assert (= c9b3 c9b1))

;; H
  (assert (= length4 length1))

;; H
  (assert (= result6 dates__get_month_length__result4))

;; H
  (assert (= month 1))

(assert
;; WP_parameter_def
 ;; File "dates.ads", line 6, characters 0-0
  (not (= dates__get_month_length__result4 31)))
(check-sat)
