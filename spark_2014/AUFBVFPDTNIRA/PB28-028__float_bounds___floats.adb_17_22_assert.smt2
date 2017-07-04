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

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun is_plus_infinity1 ((x Float64)) Bool (and (fp.isInfinite  x)
                                                 (fp.isPositive  x)))

(define-fun is_minus_infinity1 ((x Float64)) Bool (and (fp.isInfinite  x)
                                                  (fp.isNegative  x)))

(define-fun is_plus_zero1 ((x Float64)) Bool (and (fp.isZero      x)
                                             (fp.isPositive  x)))

(define-fun is_minus_zero1 ((x Float64)) Bool (and (fp.isZero      x)
                                              (fp.isNegative  x)))

(declare-fun of_int1 (RoundingMode Int) Float64)

(declare-fun to_int2 (RoundingMode Float64) Int)

(declare-fun round1 (RoundingMode Real) Real)

(declare-fun max_int1 () Int)

(define-fun in_range1 ((x Real)) Bool (and
                                      (<= (- (* 9007199254740991.0 19958403095347198116563727130368385660674512604354575415025472424372118918689640657849579654926357010893424468441924952439724379883935936607391717982848314203200056729510856765175377214443629871826533567445439239933308104551208703888888552684480441575071209068757560416423584952303440099278848.0)) x)
                                      (<= x (* 9007199254740991.0 19958403095347198116563727130368385660674512604354575415025472424372118918689640657849579654926357010893424468441924952439724379883935936607391717982848314203200056729510856765175377214443629871826533567445439239933308104551208703888888552684480441575071209068757560416423584952303440099278848.0))))

(define-fun in_int_range1 ((i Int)) Bool (and (<= (- max_int1) i)
                                         (<= i max_int1)))

(define-fun no_overflow1 ((m RoundingMode) (x Real)) Bool (in_range1
  (round1 m x)))

(define-fun in_safe_int_range1 ((i Int)) Bool (and
                                              (<= (- 9007199254740992) i)
                                              (<= i 9007199254740992)))

(define-fun same_sign1 ((x Float64)
  (y Float64)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign1 ((x Float64)
  (y Float64)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign1 ((z Float64) (x Float64)
  (y Float64)) Bool (and (=> (same_sign1 x y) (fp.isPositive  z))
                    (=> (diff_sign1 x y) (fp.isNegative  z))))

(define-fun same_sign_real1 ((x Float64)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int2 (Float64) Bool)

(define-fun neq1 ((x Float64) (y Float64)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 Float64)))))
(define-fun to_int3 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int2 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range2 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort float 0)

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-fun to_rep (float) Float32)

(declare-fun of_rep (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep x)) (fp.isNaN (to_rep x)))) :pattern (
  (to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (= (to_rep (of_rep x)) x)) :pattern (
  (to_rep (of_rep x))) )))

(declare-sort long_float 0)

(declare-fun user_eq1 (long_float long_float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float64)

(declare-fun dummy1 () long_float)

(declare-datatypes ()
((long_float__ref (mk_long_float__ref (long_float__content long_float)))))
(define-fun long_float__ref___projection ((a long_float__ref)) long_float 
  (long_float__content a))

(declare-fun to_rep1 (long_float) Float64)

(declare-fun of_rep1 (Float64) long_float)

;; inversion_axiom
  (assert
  (forall ((x long_float))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x long_float))
  (! (not (or (fp.isInfinite (to_rep1 x)) (fp.isNaN (to_rep1 x)))) :pattern (
  (to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float64))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
     (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int float))))))
(declare-fun slide ((Array Int float) Int Int) (Array Int float))

;; slide_eq
  (assert
  (forall ((a (Array Int float)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int float)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int float) Int Int (Array Int float) Int
  Int) (Array Int float))

;; concat_def
  (assert
  (forall ((a (Array Int float)) (b (Array Int float)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (float Int) (Array Int float))

;; singleton_def
  (assert
  (forall ((v float))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq ((a (Array Int float)) (a__first Int) (a__last Int)
  (b (Array Int float)) (b__first Int)
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
  (forall ((a (Array Int float)) (b (Array Int float)))
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

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int long_float))))))
(declare-fun slide1 ((Array Int long_float) Int Int) (Array Int long_float))

;; slide_eq
  (assert
  (forall ((a (Array Int long_float)))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int long_float)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int long_float) Int Int (Array Int long_float)
  Int Int) (Array Int long_float))

;; concat_def
  (assert
  (forall ((a (Array Int long_float)) (b (Array Int long_float)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (long_float Int) (Array Int long_float))

;; singleton_def
  (assert
  (forall ((v long_float))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int long_float)) (a__first Int) (a__last Int)
  (b (Array Int long_float)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (to_rep1 (select a temp___idx_133)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_133)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int long_float)) (b (Array Int long_float)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep1 (select a temp___idx_133)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_133)))))))))))

(declare-fun a () (Array Int float))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(define-fun dynamic_invariant1 ((temp___expr_57 Float64)
  (temp___is_init_54 Bool) (temp___skip_constant_55 Bool)
  (temp___do_toplevel_56 Bool)) Bool (=>
                                     (or (= temp___is_init_54 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_57) (fp.isNaN temp___expr_57)))))

(declare-fun d () (Array Int long_float))

(declare-fun o () long_float)

(declare-fun o1 () (Array Int long_float))

(declare-fun o2 () long_float)

(declare-fun o3 () (Array Int long_float))

(declare-fun o4 () long_float)

(declare-fun o5 () (Array Int long_float))

(declare-fun o6 () long_float)

(declare-fun o7 () (Array Int long_float))

(declare-fun result () (Array Int long_float))

(declare-fun d1 () (Array Int long_float))

(declare-fun result1 () (Array Int long_float))

(declare-fun d2 () (Array Int long_float))

(declare-fun result2 () (Array Int long_float))

(declare-fun d3 () (Array Int long_float))

(declare-fun result3 () (Array Int long_float))

(declare-fun d4 () (Array Int long_float))

;; H
  (assert
  (forall ((i Int))
  (=> (and (<= 1 i) (<= i 3))
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (to_rep
                                                                 (select 
                                                                 a i)))
  (fp.leq (to_rep (select a i)) (fp #b0 #b01111111 #b00000000000000000000000))))))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (to_rep
                                                                 (select 
                                                                 a 1)))
  (fp.leq (to_rep (select a 1)) (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (to_rep
                                                                 (select 
                                                                 a 2)))
  (fp.leq (to_rep (select a 2)) (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (to_rep
                                                                 (select 
                                                                 a 3)))
  (fp.leq (to_rep (select a 3)) (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert
  (= (to_rep1 o) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))

;; H
  (assert (= o1 (store d 1 o)))

;; H
  (assert (= result d))

;; H
  (assert (= d1 o1))

;; H
  (assert
  (= (to_rep1 o2) ((_ to_fp 11 53) RNE (fp.mul RNE (to_rep (select a 1)) (fp #b0 #b01111110 #b00000000000000000000000)))))

;; H
  (assert (= o3 (store d1 2 o2)))

;; H
  (assert (= result1 d1))

;; H
  (assert (= d2 o3))

;; H
  (assert
  (= (to_rep1 o4) ((_ to_fp 11 53) RNE (fp.mul RNE (to_rep (select a 2)) (fp #b0 #b01111110 #b00000000000000000000000)))))

;; H
  (assert (= o5 (store d2 3 o4)))

;; H
  (assert (= result2 d2))

;; H
  (assert (= d3 o5))

;; H
  (assert
  (= (to_rep1 o6) ((_ to_fp 11 53) RNE (fp.mul RNE (to_rep (select a 3)) (fp #b0 #b01111110 #b00000000000000000000000)))))

;; H
  (assert (= o7 (store d3 4 o6)))

;; H
  (assert (= result3 d3))

;; H
  (assert (= d4 o7))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) 
  (to_rep1 (select d4 1)))
  (fp.leq (to_rep1 (select d4 1)) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) 
  (to_rep1 (select d4 2)))
  (fp.leq (to_rep1 (select d4 2)) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) 
  (to_rep1 (select d4 3)))
  (fp.leq (to_rep1 (select d4 3)) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) 
  (to_rep1 (select d4 4)))
  (fp.leq (to_rep1 (select d4 4)) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))

(declare-fun i () Int)

;; H
  (assert (<= 1 i))

;; H
  (assert (<= i 4))

(assert
;; WP_parameter_def
 ;; File "floats.ads", line 5, characters 0-0
  (not
  (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) 
  (to_rep1 (select d4 i)))))
(check-sat)
