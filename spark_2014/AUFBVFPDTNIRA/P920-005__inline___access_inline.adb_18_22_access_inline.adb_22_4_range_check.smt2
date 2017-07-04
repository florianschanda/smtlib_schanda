;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
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

(declare-fun pow2 (Int) Int)

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int1 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort tt_float32B 0)

(declare-fun user_eq (tt_float32B tt_float32B) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Float32)

(declare-fun dummy () tt_float32B)

(declare-datatypes ()
((tt_float32B__ref (mk_tt_float32B__ref (tt_float32B__content tt_float32B)))))
(define-fun tt_float32B__ref___projection ((a tt_float32B__ref)) tt_float32B 
  (tt_float32B__content a))

(declare-sort t_float32 0)

(define-fun in_range1 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111101110)) x)
                                         (fp.leq x (fp #b0 #b11111110 #b11111111111111111101110)))))

(declare-fun user_eq1 (t_float32 t_float32) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy1 () t_float32)

(declare-datatypes ()
((t_float32__ref (mk_t_float32__ref (t_float32__content t_float32)))))
(define-fun t_float32__ref___projection ((a t_float32__ref)) t_float32 
  (t_float32__content a))

(define-fun dynamic_invariant ((temp___expr_172 Float32)
  (temp___is_init_169 Bool) (temp___skip_constant_170 Bool)
  (temp___do_toplevel_171 Bool)) Bool (=>
                                      (or (= temp___is_init_169 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111101110)) (fp #b0 #b11111110 #b11111111111111111101110)))
                                      (in_range1 temp___expr_172)))

(declare-fun c_2pi_in_degrees () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t_angle_360 0)

(define-fun in_range2 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000111 #b01101000000000000000000)))))

(declare-fun user_eq2 (t_angle_360 t_angle_360) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy2 () t_angle_360)

(declare-datatypes ()
((t_angle_360__ref (mk_t_angle_360__ref (t_angle_360__content t_angle_360)))))
(define-fun t_angle_360__ref___projection ((a t_angle_360__ref)) t_angle_360 
  (t_angle_360__content a))

(declare-fun to_rep (t_angle_360) Float32)

(declare-fun of_rep (Float32) t_angle_360)

;; inversion_axiom
  (assert
  (forall ((x t_angle_360))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x t_angle_360)) (! (in_range2
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int t_angle_360))))))
(declare-fun slide ((Array Int t_angle_360) Int Int) (Array Int t_angle_360))

;; slide_eq
  (assert
  (forall ((a (Array Int t_angle_360)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int t_angle_360)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int t_angle_360) Int Int (Array Int t_angle_360)
  Int Int) (Array Int t_angle_360))

;; concat_def
  (assert
  (forall ((a (Array Int t_angle_360)) (b (Array Int t_angle_360)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (t_angle_360 Int) (Array Int t_angle_360))

;; singleton_def
  (assert
  (forall ((v t_angle_360))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq ((a (Array Int t_angle_360)) (a__first Int) (a__last Int)
  (b (Array Int t_angle_360)) (b__first Int)
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
  (forall ((a (Array Int t_angle_360)) (b (Array Int t_angle_360)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun c6b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun access_inline__angle__aggregate_def (Float32) (Array Int t_angle_360))

;; def_axiom
  (assert
  (forall ((temp___197 Float32))
  (forall ((temp___198 Int))
  (= (select (access_inline__angle__aggregate_def temp___197) temp___198) 
  (of_rep temp___197)))))

;; c_2pi_in_degrees__def_axiom
  (assert (= c_2pi_in_degrees (fp #b0 #b10000111 #b01101000000000000000000)))

(define-fun dynamic_invariant1 ((temp___expr_178 Float32)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (=>
                                      (or (= temp___is_init_175 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000111 #b01101000000000000000000)))
                                      (in_range2 temp___expr_178)))

(declare-fun angle () (Array Int t_angle_360))

(declare-fun o () Float32)

(declare-fun result () (Array Int t_angle_360))

(declare-fun angle1 () (Array Int t_angle_360))

;; H
  (assert (in_range1 c_2pi_in_degrees))

;; H
  (assert (= result angle))

;; H
  (assert
  (= angle1 (access_inline__angle__aggregate_def
            (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert (= (to_rep (select angle1 3)) c6b))

;; H
  (assert (in_range1 c6b))

;; H
  (assert
  (and
  (= o (fp.sub RNE (to_rep (select angle1 3)) (to_rep (select angle1 3))))
  (not (or (fp.isInfinite (fp.sub RNE (to_rep (select angle1 3)) (to_rep
                                                                 (select 
                                                                 angle1 3)))) (fp.isNaN (fp.sub RNE 
  (to_rep (select angle1 3)) (to_rep (select angle1 3))))))))

(assert
;; WP_parameter_def
 ;; File "access_inline.adb", line 1, characters 0-0
  (not (in_range1 o)))
(check-sat)
