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

(declare-sort t 0)

(declare-fun tqtreal (t) Real)

(declare-fun tqtisFinite (t) Bool)

;; t'axiom
  (assert
  (forall ((x t))
  (=> (tqtisFinite x)
  (and (<= (- (* 16777215.0 20282409603651670423947251286016.0)) (tqtreal x))
  (<= (tqtreal x) (* 16777215.0 20282409603651670423947251286016.0))))))

(declare-fun pow2 (Int) Int)

(declare-datatypes () ((mode (RNE2) (RNA2) (RTP2) (RTN2) (RTZ2))))
(define-fun to_nearest ((m mode)) Bool (or (= m RNE2) (= m RNA2)))

(declare-fun zeroF () t)

(declare-fun abs1 (t) t)

(declare-fun neg (t) t)

(declare-fun add (mode t t) t)

(declare-fun sub (mode t t) t)

(declare-fun mul (mode t t) t)

(declare-fun div1 (mode t t) t)

(declare-fun fma (mode t t t) t)

(declare-fun sqrt (mode t) t)

(declare-fun roundToIntegral (mode t) t)

(declare-fun min (t t) t)

(declare-fun max (t t) t)

(declare-fun le (t t) Bool)

(declare-fun lt (t t) Bool)

(declare-fun eq (t t) Bool)

(declare-fun is_normal (t) Bool)

(declare-fun is_subnormal (t) Bool)

(declare-fun is_zero (t) Bool)

(declare-fun is_infinite (t) Bool)

(declare-fun is_nan (t) Bool)

(declare-fun is_positive (t) Bool)

(declare-fun is_negative (t) Bool)

(define-fun is_plus_infinity ((x t)) Bool (and (is_infinite x) (is_positive
                                          x)))

(define-fun is_minus_infinity ((x t)) Bool (and (is_infinite x) (is_negative
                                           x)))

(define-fun is_plus_zero ((x t)) Bool (and (is_zero x) (is_positive x)))

(define-fun is_minus_zero ((x t)) Bool (and (is_zero x) (is_negative x)))

(define-fun is_not_nan ((x t)) Bool (or (tqtisFinite x) (is_infinite x)))

;; is_not_nan
  (assert (forall ((x t)) (= (is_not_nan x) (not (is_nan x)))))

;; is_not_finite
  (assert
  (forall ((x t)) (= (not (tqtisFinite x)) (or (is_infinite x) (is_nan x)))))

;; zeroF_is_positive
  (assert (is_positive zeroF))

;; zeroF_is_zero
  (assert (is_zero zeroF))

;; zero_to_real
  (assert
  (forall ((x t))
  (! (= (is_zero x) (and (tqtisFinite x) (= (tqtreal x) 0.0))) :pattern ((is_zero
  x)) )))

(declare-fun of_int (mode Int) t)

(declare-fun to_int1 (mode t) Int)

;; zero_of_int
  (assert (forall ((m mode)) (= zeroF (of_int m 0))))

(declare-fun round (mode Real) Real)

(declare-fun max_int () Int)

;; max_real_int
  (assert
  (= (* 33554430.0 10141204801825835211973625643008.0) (to_real max_int)))

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

;; is_finite
  (assert (forall ((x t)) (=> (tqtisFinite x) (in_range (tqtreal x)))))

(define-fun no_overflow ((m mode) (x Real)) Bool (in_range (round m x)))

;; Bounded_real_no_overflow
  (assert (forall ((m mode) (x Real)) (=> (in_range x) (no_overflow m x))))

;; Round_monotonic
  (assert
  (forall ((m mode) (x Real) (y Real))
  (=> (<= x y) (<= (round m x) (round m y)))))

;; Round_idempotent
  (assert
  (forall ((m1 mode) (m2 mode) (x Real))
  (= (round m1 (round m2 x)) (round m2 x))))

;; Round_to_real
  (assert
  (forall ((m mode) (x t))
  (=> (tqtisFinite x) (= (round m (tqtreal x)) (tqtreal x)))))

;; Round_down_le
  (assert (forall ((x Real)) (<= (round RTN2 x) x)))

;; Round_up_ge
  (assert (forall ((x Real)) (<= x (round RTP2 x))))

;; Round_down_neg
  (assert (forall ((x Real)) (= (round RTN2 (- x)) (- (round RTP2 x)))))

;; Round_up_neg
  (assert (forall ((x Real)) (= (round RTP2 (- x)) (- (round RTN2 x)))))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

;; Exact_rounding_for_integers
  (assert
  (forall ((m mode) (i Int))
  (=> (in_safe_int_range i) (= (round m (to_real i)) (to_real i)))))

(define-fun same_sign ((x t)
  (y t)) Bool (or (and (is_positive x) (is_positive y))
              (and (is_negative x) (is_negative y))))

(define-fun diff_sign ((x t)
  (y t)) Bool (or (and (is_positive x) (is_negative y))
              (and (is_negative x) (is_positive y))))

;; feq_eq
  (assert
  (forall ((x t) (y t))
  (=> (tqtisFinite x)
  (=> (tqtisFinite y) (=> (not (is_zero x)) (=> (eq x y) (= x y)))))))

;; eq_feq
  (assert
  (forall ((x t) (y t))
  (=> (tqtisFinite x) (=> (tqtisFinite y) (=> (= x y) (eq x y))))))

;; eq_refl
  (assert (forall ((x t)) (=> (tqtisFinite x) (eq x x))))

;; eq_sym
  (assert (forall ((x t) (y t)) (=> (eq x y) (eq y x))))

;; eq_trans
  (assert (forall ((x t) (y t) (z t)) (=> (eq x y) (=> (eq y z) (eq x z)))))

;; eq_zero
  (assert (eq zeroF (neg zeroF)))

;; eq_to_real_finite
  (assert
  (forall ((x t) (y t))
  (=> (and (tqtisFinite x) (tqtisFinite y))
  (= (eq x y) (= (tqtreal x) (tqtreal y))))))

;; lt_finite
  (assert
  (forall ((x t) (y t))
  (! (=> (and (tqtisFinite x) (tqtisFinite y))
     (= (lt x y) (< (tqtreal x) (tqtreal y)))) :pattern ((lt
  x y)) )))

;; le_finite
  (assert
  (forall ((x t) (y t))
  (! (=> (and (tqtisFinite x) (tqtisFinite y))
     (= (le x y) (<= (tqtreal x) (tqtreal y)))) :pattern ((le
  x y)) )))

;; le_lt_trans
  (assert (forall ((x t) (y t) (z t)) (=> (and (le x y) (lt y z)) (lt x z))))

;; lt_le_trans
  (assert (forall ((x t) (y t) (z t)) (=> (and (lt x y) (le y z)) (lt x z))))

;; le_ge_asym
  (assert (forall ((x t) (y t)) (=> (and (le x y) (le y x)) (eq x y))))

;; not_lt_ge
  (assert
  (forall ((x t) (y t))
  (=> (and (not (lt x y)) (and (is_not_nan x) (is_not_nan y))) (le y x))))

;; not_gt_le
  (assert
  (forall ((x t) (y t))
  (=> (and (not (lt y x)) (and (is_not_nan x) (is_not_nan y))) (le x y))))

;; lt_lt_finite
  (assert
  (forall ((x t) (y t) (z t)) (=> (lt x y) (=> (lt y z) (tqtisFinite y)))))

;; positive_to_real
  (assert
  (forall ((x t))
  (! (=> (tqtisFinite x) (=> (is_positive x) (<= 0.0 (tqtreal x)))) :pattern ((is_positive
  x)) :pattern ((<= 0.0 (tqtreal x))) )))

;; to_real_positive
  (assert
  (forall ((x t))
  (! (=> (tqtisFinite x) (=> (< 0.0 (tqtreal x)) (is_positive x))) :pattern ((is_positive
  x)) )))

;; negative_to_real
  (assert
  (forall ((x t))
  (! (=> (tqtisFinite x) (=> (is_negative x) (<= (tqtreal x) 0.0))) :pattern ((is_negative
  x)) :pattern ((<= (tqtreal x) 0.0)) )))

;; to_real_negative
  (assert
  (forall ((x t))
  (! (=> (tqtisFinite x) (=> (< (tqtreal x) 0.0) (is_negative x))) :pattern ((is_negative
  x)) )))

;; negative_xor_positive
  (assert (forall ((x t)) (not (and (is_positive x) (is_negative x)))))

;; negative_or_positive
  (assert
  (forall ((x t)) (=> (is_not_nan x) (or (is_positive x) (is_negative x)))))

;; diff_sign_trans
  (assert
  (forall ((x t) (y t) (z t))
  (=> (and (diff_sign x y) (diff_sign y z)) (same_sign x z))))

;; diff_sign_product
  (assert
  (forall ((x t) (y t))
  (=>
  (and (tqtisFinite x)
  (and (tqtisFinite y) (< (* (tqtreal x) (tqtreal y)) 0.0))) (diff_sign x y))))

;; same_sign_product
  (assert
  (forall ((x t) (y t))
  (=> (and (tqtisFinite x) (and (tqtisFinite y) (same_sign x y)))
  (<= 0.0 (* (tqtreal x) (tqtreal y))))))

(define-fun product_sign ((z t) (x t)
  (y t)) Bool (and (=> (same_sign x y) (is_positive z))
              (=> (diff_sign x y) (is_negative z))))

(define-fun overflow_value ((m mode)
  (x t)) Bool (ite (is-RTN2 m) (ite (is_positive x)
                               (and (tqtisFinite x)
                               (= (tqtreal x) (* 33554430.0 10141204801825835211973625643008.0)))
                               (is_infinite x)) (ite (is-RTP2 m) (ite (is_positive
                                                                 x)
                                                                 (is_infinite
                                                                 x)
                                                                 (and
                                                                 (tqtisFinite
                                                                 x)
                                                                 (= (tqtreal
                                                                    x) (- (* 33554430.0 10141204801825835211973625643008.0))))) 
                                                (ite (is-RTZ2 m) (ite (is_positive
                                                                 x)
                                                                 (and
                                                                 (tqtisFinite
                                                                 x)
                                                                 (= (tqtreal
                                                                    x) (* 33554430.0 10141204801825835211973625643008.0)))
                                                                 (and
                                                                 (tqtisFinite
                                                                 x)
                                                                 (= (tqtreal
                                                                    x) (- (* 33554430.0 10141204801825835211973625643008.0))))) 
                                                (ite (is-RNA2 m) (is_infinite
                                                x) (is_infinite x))))))

(define-fun sign_zero_result ((m mode)
  (x t)) Bool (=> (is_zero x)
              (ite (is-RTN2 m) (is_negative x) (is_positive x))))

;; add_finite
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (tqtisFinite x)
     (=> (tqtisFinite y)
     (=> (no_overflow m (+ (tqtreal x) (tqtreal y)))
     (and (tqtisFinite (add m x y))
     (= (tqtreal (add m x y)) (round m (+ (tqtreal x) (tqtreal y)))))))) :pattern (
  (add m x y)) )))

;; add_finite_rev
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (tqtisFinite (add m x y)) (and (tqtisFinite x) (tqtisFinite y))) :pattern (
  (add m x y)) )))

;; add_finite_rev_n
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (to_nearest m)
     (=> (tqtisFinite (add m x y))
     (and (no_overflow m (+ (tqtreal x) (tqtreal y)))
     (= (tqtreal (add m x y)) (round m (+ (tqtreal x) (tqtreal y))))))) :pattern (
  (add m x y)) )))

;; sub_finite
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (tqtisFinite x)
     (=> (tqtisFinite y)
     (=> (no_overflow m (- (tqtreal x) (tqtreal y)))
     (and (tqtisFinite (sub m x y))
     (= (tqtreal (sub m x y)) (round m (- (tqtreal x) (tqtreal y)))))))) :pattern (
  (sub m x y)) )))

;; sub_finite_rev
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (tqtisFinite (sub m x y)) (and (tqtisFinite x) (tqtisFinite y))) :pattern (
  (sub m x y)) )))

;; sub_finite_rev_n
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (to_nearest m)
     (=> (tqtisFinite (sub m x y))
     (and (no_overflow m (- (tqtreal x) (tqtreal y)))
     (= (tqtreal (sub m x y)) (round m (- (tqtreal x) (tqtreal y))))))) :pattern (
  (sub m x y)) )))

;; mul_finite
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (tqtisFinite x)
     (=> (tqtisFinite y)
     (=> (no_overflow m (* (tqtreal x) (tqtreal y)))
     (and (tqtisFinite (mul m x y))
     (= (tqtreal (mul m x y)) (round m (* (tqtreal x) (tqtreal y)))))))) :pattern (
  (mul m x y)) )))

;; mul_finite_rev
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (tqtisFinite (mul m x y)) (and (tqtisFinite x) (tqtisFinite y))) :pattern (
  (mul m x y)) )))

;; mul_finite_rev_n
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (to_nearest m)
     (=> (tqtisFinite (mul m x y))
     (and (no_overflow m (* (tqtreal x) (tqtreal y)))
     (= (tqtreal (mul m x y)) (round m (* (tqtreal x) (tqtreal y))))))) :pattern (
  (mul m x y)) )))

;; div_finite
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (tqtisFinite x)
     (=> (tqtisFinite y)
     (=> (not (is_zero y))
     (=> (no_overflow m (/ (tqtreal x) (tqtreal y)))
     (and (tqtisFinite (div1 m x y))
     (= (tqtreal (div1 m x y)) (round m (/ (tqtreal x) (tqtreal y))))))))) :pattern (
  (div1 m x y)) )))

;; div_finite_rev
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (tqtisFinite (div1 m x y))
     (or (and (tqtisFinite x) (and (tqtisFinite y) (not (is_zero y))))
     (and (tqtisFinite x)
     (and (is_infinite y) (= (tqtreal (div1 m x y)) 0.0))))) :pattern (
  (div1 m x y)) )))

;; div_finite_rev_n
  (assert
  (forall ((m mode) (x t) (y t))
  (! (=> (to_nearest m)
     (=> (tqtisFinite (div1 m x y))
     (=> (tqtisFinite y)
     (and (no_overflow m (/ (tqtreal x) (tqtreal y)))
     (= (tqtreal (div1 m x y)) (round m (/ (tqtreal x) (tqtreal y)))))))) :pattern (
  (div1 m x y)) )))

;; neg_finite
  (assert
  (forall ((x t))
  (! (=> (tqtisFinite x)
     (and (tqtisFinite (neg x)) (= (tqtreal (neg x)) (- (tqtreal x))))) :pattern (
  (neg x)) )))

;; neg_finite_rev
  (assert
  (forall ((x t))
  (! (=> (tqtisFinite (neg x))
     (and (tqtisFinite x) (= (tqtreal (neg x)) (- (tqtreal x))))) :pattern (
  (neg x)) )))

;; abs_finite
  (assert
  (forall ((x t))
  (! (=> (tqtisFinite x)
     (and (tqtisFinite (abs1 x))
     (and
     (= (tqtreal (abs1 x)) (ite (>= (tqtreal x) 0.0) (tqtreal x) (- (tqtreal
                                                                    x))))
     (is_positive (abs1 x))))) :pattern ((abs1 x)) )))

;; abs_finite_rev
  (assert
  (forall ((x t))
  (! (=> (tqtisFinite (abs1 x))
     (and (tqtisFinite x)
     (= (tqtreal (abs1 x)) (ite (>= (tqtreal x) 0.0) (tqtreal x) (- (tqtreal
                                                                    x)))))) :pattern (
  (abs1 x)) )))

;; abs_universal
  (assert
  (forall ((x t)) (! (not (is_negative (abs1 x))) :pattern ((abs1 x)) )))

;; fma_finite_rev
  (assert
  (forall ((m mode) (x t) (y t) (z t))
  (! (=> (tqtisFinite (fma m x y z))
     (and (tqtisFinite x) (and (tqtisFinite y) (tqtisFinite z)))) :pattern (
  (fma m x y z)) )))

;; fma_finite_rev_n
  (assert
  (forall ((m mode) (x t) (y t) (z t))
  (! (=> (to_nearest m)
     (=> (tqtisFinite (fma m x y z))
     (and (no_overflow m (+ (* (tqtreal x) (tqtreal y)) (tqtreal z)))
     (= (tqtreal (fma m x y z)) (round m
                                (+ (* (tqtreal x) (tqtreal y)) (tqtreal z))))))) :pattern (
  (fma m x y z)) )))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt1 (Real) Real)

;; sqrt_finite_rev
  (assert
  (forall ((m mode) (x t))
  (! (=> (tqtisFinite (sqrt m x))
     (and (tqtisFinite x)
     (and (<= 0.0 (tqtreal x))
     (= (tqtreal (sqrt m x)) (round m (sqrt1 (tqtreal x))))))) :pattern (
  (sqrt m x)) )))

(define-fun same_sign_real ((x t)
  (r Real)) Bool (or (and (is_positive x) (< 0.0 r))
                 (and (is_negative x) (< r 0.0))))

;; of_int_add_exact
  (assert
  (forall ((m mode) (n mode) (i Int) (j Int))
  (=> (in_safe_int_range i)
  (=> (in_safe_int_range j)
  (=> (in_safe_int_range (+ i j)) (eq (of_int m (+ i j))
  (add n (of_int m i) (of_int m j))))))))

;; of_int_sub_exact
  (assert
  (forall ((m mode) (n mode) (i Int) (j Int))
  (=> (in_safe_int_range i)
  (=> (in_safe_int_range j)
  (=> (in_safe_int_range (- i j)) (eq (of_int m (- i j))
  (sub n (of_int m i) (of_int m j))))))))

;; of_int_mul_exact
  (assert
  (forall ((m mode) (n mode) (i Int) (j Int))
  (=> (in_safe_int_range i)
  (=> (in_safe_int_range j)
  (=> (in_safe_int_range (* i j)) (eq (of_int m (* i j))
  (mul n (of_int m i) (of_int m j))))))))

;; Min_r
  (assert (forall ((x t) (y t)) (=> (le y x) (eq (min x y) y))))

;; Min_l
  (assert (forall ((x t) (y t)) (=> (le x y) (eq (min x y) x))))

;; Max_r
  (assert (forall ((x t) (y t)) (=> (le y x) (eq (max x y) x))))

;; Max_l
  (assert (forall ((x t) (y t)) (=> (le x y) (eq (max x y) y))))

(declare-fun is_int1 (t) Bool)

;; zeroF_is_int
  (assert (is_int1 zeroF))

;; of_int_is_int
  (assert
  (forall ((m mode) (x Int)) (=> (in_int_range x) (is_int1 (of_int m x)))))

;; big_float_is_int
  (assert
  (forall ((m mode) (i t))
  (=> (tqtisFinite i)
  (=> (or (le i (neg (of_int m 16777216))) (le (of_int m 16777216) i))
  (is_int1 i)))))

;; roundToIntegral_is_int
  (assert
  (forall ((m mode) (x t))
  (=> (tqtisFinite x) (is_int1 (roundToIntegral m x)))))

;; eq_is_int
  (assert (forall ((x t) (y t)) (=> (eq x y) (=> (is_int1 x) (is_int1 y)))))

;; add_int
  (assert
  (forall ((x t) (y t) (m mode))
  (=> (is_int1 x)
  (=> (is_int1 y) (=> (tqtisFinite (add m x y)) (is_int1 (add m x y)))))))

;; sub_int
  (assert
  (forall ((x t) (y t) (m mode))
  (=> (is_int1 x)
  (=> (is_int1 y) (=> (tqtisFinite (sub m x y)) (is_int1 (sub m x y)))))))

;; mul_int
  (assert
  (forall ((x t) (y t) (m mode))
  (=> (is_int1 x)
  (=> (is_int1 y) (=> (tqtisFinite (mul m x y)) (is_int1 (mul m x y)))))))

;; fma_int
  (assert
  (forall ((x t) (y t) (z t) (m mode))
  (=> (is_int1 x)
  (=> (is_int1 y)
  (=> (is_int1 z) (=> (tqtisFinite (fma m x y z)) (is_int1 (fma m x y z))))))))

;; neg_int
  (assert (forall ((x t)) (=> (is_int1 x) (is_int1 (neg x)))))

;; abs_int
  (assert (forall ((x t)) (=> (is_int1 x) (is_int1 (abs1 x)))))

;; is_int_of_int
  (assert
  (forall ((x t) (m mode) (mqt mode))
  (=> (is_int1 x) (eq x (of_int mqt (to_int1 m x))))))

;; is_int_to_int
  (assert
  (forall ((m mode) (x t)) (=> (is_int1 x) (in_int_range (to_int1 m x)))))

;; is_int_is_finite
  (assert (forall ((x t)) (=> (is_int1 x) (tqtisFinite x))))

;; int_to_real
  (assert
  (forall ((m mode) (x t))
  (=> (is_int1 x) (= (tqtreal x) (to_real (to_int1 m x))))))

;; truncate_int
  (assert
  (forall ((m mode) (i t)) (=> (is_int1 i) (eq (roundToIntegral m i) i))))

;; truncate_neg
  (assert
  (forall ((x t))
  (=> (tqtisFinite x)
  (=> (is_negative x) (= (roundToIntegral RTZ2 x) (roundToIntegral RTP2 x))))))

;; truncate_pos
  (assert
  (forall ((x t))
  (=> (tqtisFinite x)
  (=> (is_positive x) (= (roundToIntegral RTZ2 x) (roundToIntegral RTN2 x))))))

;; ceil_le
  (assert
  (forall ((x t)) (=> (tqtisFinite x) (le x (roundToIntegral RTP2 x)))))

;; ceil_lest
  (assert
  (forall ((x t) (y t))
  (=> (and (le x y) (is_int1 y)) (le (roundToIntegral RTP2 x) y))))

;; ceil_to_real
  (assert
  (forall ((x t))
  (=> (tqtisFinite x)
  (= (tqtreal (roundToIntegral RTP2 x)) (to_real (- 1 (to_int (- 1.0 
  (tqtreal x)))))))))

;; ceil_to_int
  (assert
  (forall ((m mode) (x t))
  (=> (tqtisFinite x)
  (= (to_int1 m (roundToIntegral RTP2 x)) (- 1 (to_int (- 1.0 (tqtreal x))))))))

;; floor_le
  (assert
  (forall ((x t)) (=> (tqtisFinite x) (le (roundToIntegral RTN2 x) x))))

;; floor_lest
  (assert
  (forall ((x t) (y t))
  (=> (and (le y x) (is_int1 y)) (le y (roundToIntegral RTN2 x)))))

;; floor_to_real
  (assert
  (forall ((x t))
  (=> (tqtisFinite x)
  (= (tqtreal (roundToIntegral RTN2 x)) (to_real (to_int (tqtreal x)))))))

;; floor_to_int
  (assert
  (forall ((m mode) (x t))
  (=> (tqtisFinite x)
  (= (to_int1 m (roundToIntegral RTN2 x)) (to_int (tqtreal x))))))

;; RNA_down
  (assert
  (forall ((x t))
  (=> (lt (sub RNE2 x (roundToIntegral RTN2 x))
  (sub RNE2 (roundToIntegral RTP2 x) x))
  (= (roundToIntegral RNA2 x) (roundToIntegral RTN2 x)))))

;; RNA_up
  (assert
  (forall ((x t))
  (=> (lt (sub RNE2 (roundToIntegral RTP2 x) x)
  (sub RNE2 x (roundToIntegral RTN2 x)))
  (= (roundToIntegral RNA2 x) (roundToIntegral RTP2 x)))))

;; RNA_down_tie
  (assert
  (forall ((x t))
  (=> (eq (sub RNE2 x (roundToIntegral RTN2 x))
  (sub RNE2 (roundToIntegral RTP2 x) x))
  (=> (is_negative x) (= (roundToIntegral RNA2 x) (roundToIntegral RTN2 x))))))

;; RNA_up_tie
  (assert
  (forall ((x t))
  (=> (eq (sub RNE2 (roundToIntegral RTP2 x) x)
  (sub RNE2 x (roundToIntegral RTN2 x)))
  (=> (is_positive x) (= (roundToIntegral RNA2 x) (roundToIntegral RTP2 x))))))

;; to_int_roundToIntegral
  (assert
  (forall ((m mode) (x t))
  (= (to_int1 m x) (to_int1 m (roundToIntegral m x)))))

;; to_int_monotonic
  (assert
  (forall ((m mode) (x t) (y t))
  (=> (tqtisFinite x)
  (=> (tqtisFinite y) (=> (le x y) (<= (to_int1 m x) (to_int1 m y)))))))

;; to_int_of_int
  (assert
  (forall ((m mode) (i Int))
  (=> (in_safe_int_range i) (= (to_int1 m (of_int m i)) i))))

;; eq_to_int
  (assert
  (forall ((m mode) (x t) (y t))
  (=> (tqtisFinite x) (=> (eq x y) (= (to_int1 m x) (to_int1 m y))))))

;; neg_to_int
  (assert
  (forall ((m mode) (x t))
  (=> (is_int1 x) (= (to_int1 m (neg x)) (- (to_int1 m x))))))

;; roundToIntegral_is_finite
  (assert
  (forall ((m mode) (x t))
  (=> (tqtisFinite x) (tqtisFinite (roundToIntegral m x)))))

;; round_bound_ne
  (assert
  (forall ((x Real))
  (! (=> (no_overflow RNE2 x)
     (and
     (<= (- (- x (* (/ 1.0 16777216.0) (ite (>= x 0.0) x (- x)))) (/ 1.0 1427247692705959881058285969449495136382746624.0)) 
     (round RNE2 x))
     (<= (round RNE2 x) (+ (+ x (* (/ 1.0 16777216.0) (ite (>= x 0.0) x (- x)))) (/ 1.0 1427247692705959881058285969449495136382746624.0))))) :pattern (
  (round RNE2 x)) )))

(define-fun neq ((x t) (y t)) Bool (not (eq x y)))

(define-fun bool_lt ((x t) (y t)) Bool (ite (lt x y) true false))

(define-fun bool_le ((x t) (y t)) Bool (ite (le x y) true false))

(define-fun bool_gt ((x t) (y t)) Bool (ite (lt y x) true false))

(define-fun bool_ge ((x t) (y t)) Bool (ite (le y x) true false))

(define-fun bool_eq ((x t) (y t)) Bool (ite (eq x y) true false))

(define-fun bool_neq ((x t) (y t)) Bool (ite (not (eq x y)) true false))

(declare-fun rem (t t) t)

(declare-fun fliteral () t)

;; fliteral_axiom
  (assert (and (tqtisFinite fliteral) (= (tqtreal fliteral) 1.0)))

;; one_is_int
  (assert (is_int1 fliteral))

;; one_of_int
  (assert (= fliteral (of_int RNA2 1)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(declare-sort float 0)

(define-fun bool_eq1 ((x t) (y t)) Bool (ite (eq x y) true false))

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE (t) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) t)

(declare-fun dummy () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-fun fliteral1 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral1)
  (= (tqtreal fliteral1) 340282346638528859811704183484516925440.0)))

(define-fun dynamic_invariant ((temp___expr_51 t) (temp___is_init_48 Bool)
  (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true) (le
                                     (neg fliteral1) fliteral1)) (tqtisFinite
                                     temp___expr_51)))

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

(declare-fun fliteral2 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral2)
  (= (tqtreal fliteral2) (/ 3333333432674407958984375.0 10000000000000000000000000.0))))

(declare-fun fliteral3 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral3)
  (= (tqtreal fliteral3) (/ 20000000298023223876953125.0 100000000000000000000000000.0))))

(declare-fun fliteral4 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral4)
  (= (tqtreal fliteral4) (/ 14285714924335479736328125.0 100000000000000000000000000.0))))

(declare-fun fliteral5 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral5)
  (= (tqtreal fliteral5) (/ 111111111938953399658203125.0 1000000000000000000000000000.0))))

(declare-fun fliteral6 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral6)
  (= (tqtreal fliteral6) (/ 90909093618392944335937500.0 1000000000000000000000000000.0))))

(declare-fun fliteral7 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral7)
  (= (tqtreal fliteral7) (/ 76923079788684844970703125.0 1000000000000000000000000000.0))))

(declare-fun fliteral8 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral8)
  (= (tqtreal fliteral8) (/ 66666670143604278564453125.0 1000000000000000000000000000.0))))

(declare-fun fliteral9 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral9)
  (= (tqtreal fliteral9) (/ 588235296308994293212890625.0 10000000000000000000000000000.0))))

(declare-fun fliteral10 () t)

;; fliteral_axiom
  (assert
  (and (tqtisFinite fliteral10)
  (= (tqtreal fliteral10) (/ 526315793395042419433593750.0 10000000000000000000000000000.0))))

(declare-fun fliteral11 () t)

;; fliteral_axiom
  (assert (and (tqtisFinite fliteral11) (= (tqtreal fliteral11) 4.0)))

(declare-fun fliteral12 () t)

;; fliteral_axiom
  (assert (and (tqtisFinite fliteral12) (= (tqtreal fliteral12) 2.0)))

(declare-fun t1 () t)

(declare-fun t2 () t)

(declare-fun t3 () t)

(declare-fun t4 () t)

(declare-fun t5 () t)

(declare-fun t6 () t)

(declare-fun t7 () t)

(declare-fun t8 () t)

(declare-fun t9 () t)

(declare-fun t10 () t)

(declare-fun a1 () t)

(declare-fun a2 () t)

(declare-fun a3 () t)

(declare-fun a4 () t)

(declare-fun a5 () t)

(declare-fun a6 () t)

(declare-fun a7 () t)

(declare-fun a8 () t)

(declare-fun a9 () t)

(declare-fun a10 () t)

(declare-fun num () t)

(declare-fun den () t__ref)

(declare-fun res () t__ref)

(declare-fun o () t)

(declare-fun o1 () t)

(declare-fun o2 () t)

(declare-fun o3 () t)

(declare-fun o4 () t)

(declare-fun o5 () t)

(declare-fun o6 () t)

(declare-fun o7 () t)

(declare-fun o8 () t)

(declare-fun o9 () t)

(declare-fun o10 () t)

(declare-fun o11 () t)

(declare-fun o12 () t)

(declare-fun o13 () t)

(declare-fun o14 () t)

(declare-fun o15 () t)

(declare-fun o16 () t)

(declare-fun o17 () t)

(declare-fun o18 () t)

(declare-fun o19 () t)

(declare-fun result () t__ref)

(declare-fun t11 () t)

(declare-fun result1 () t__ref)

(declare-fun t21 () t)

(declare-fun result2 () t__ref)

(declare-fun t31 () t)

(declare-fun result3 () t__ref)

(declare-fun t41 () t)

(declare-fun result4 () t__ref)

(declare-fun t51 () t)

(declare-fun result5 () t__ref)

(declare-fun t61 () t)

(declare-fun result6 () t__ref)

(declare-fun t71 () t)

(declare-fun result7 () t__ref)

(declare-fun t81 () t)

(declare-fun result8 () t__ref)

(declare-fun t91 () t)

(declare-fun result9 () t__ref)

(declare-fun t101 () t)

(declare-fun result10 () t__ref)

(declare-fun a11 () t)

(declare-fun result11 () t__ref)

(declare-fun a21 () t)

(declare-fun result12 () t__ref)

(declare-fun a31 () t)

(declare-fun result13 () t__ref)

(declare-fun a41 () t)

(declare-fun result14 () t__ref)

(declare-fun a51 () t)

(declare-fun result15 () t__ref)

(declare-fun a61 () t)

(declare-fun result16 () t__ref)

(declare-fun a71 () t)

(declare-fun result17 () t__ref)

(declare-fun a81 () t)

(declare-fun result18 () t__ref)

(declare-fun a91 () t)

(declare-fun result19 () t__ref)

(declare-fun a101 () t)

(declare-fun result20 () t__ref)

(declare-fun num1 () t)

(declare-fun result21 () t__ref)

(declare-fun den1 () t)

;; H
  (assert (= result (mk_t__ref t1)))

;; H
  (assert (= t11 fliteral))

;; H
  (assert (tqtisFinite t11))

;; H
  (assert (= result1 (mk_t__ref t2)))

;; H
  (assert (= t21 fliteral2))

;; H
  (assert (tqtisFinite t21))

;; H
  (assert (= result2 (mk_t__ref t3)))

;; H
  (assert (= t31 fliteral3))

;; H
  (assert (tqtisFinite t31))

;; H
  (assert (= result3 (mk_t__ref t4)))

;; H
  (assert (= t41 fliteral4))

;; H
  (assert (tqtisFinite t41))

;; H
  (assert (= result4 (mk_t__ref t5)))

;; H
  (assert (= t51 fliteral5))

;; H
  (assert (tqtisFinite t51))

;; H
  (assert (= result5 (mk_t__ref t6)))

;; H
  (assert (= t61 fliteral6))

;; H
  (assert (tqtisFinite t61))

;; H
  (assert (= result6 (mk_t__ref t7)))

;; H
  (assert (= t71 fliteral7))

;; H
  (assert (tqtisFinite t71))

;; H
  (assert (= result7 (mk_t__ref t8)))

;; H
  (assert (= t81 fliteral8))

;; H
  (assert (tqtisFinite t81))

;; H
  (assert (= result8 (mk_t__ref t9)))

;; H
  (assert (= t91 fliteral9))

;; H
  (assert (tqtisFinite t91))

;; H
  (assert (= result9 (mk_t__ref t10)))

;; H
  (assert (= t101 fliteral10))

;; H
  (assert (tqtisFinite t101))

;; H
  (assert (= result10 (mk_t__ref a1)))

;; H
  (assert (= a11 t11))

;; H
  (assert (tqtisFinite a11))

;; H
  (assert (and (= o (sub RNE2 a11 t21)) (tqtisFinite (sub RNE2 a11 t21))))

;; H
  (assert (= result11 (mk_t__ref a2)))

;; H
  (assert (= a21 o))

;; H
  (assert (tqtisFinite a21))

;; H
  (assert (and (= o1 (add RNE2 a21 t31)) (tqtisFinite (add RNE2 a21 t31))))

;; H
  (assert (= result12 (mk_t__ref a3)))

;; H
  (assert (= a31 o1))

;; H
  (assert (tqtisFinite a31))

;; H
  (assert (and (= o2 (sub RNE2 a31 t41)) (tqtisFinite (sub RNE2 a31 t41))))

;; H
  (assert (= result13 (mk_t__ref a4)))

;; H
  (assert (= a41 o2))

;; H
  (assert (tqtisFinite a41))

;; H
  (assert (and (= o3 (add RNE2 a41 t51)) (tqtisFinite (add RNE2 a41 t51))))

;; H
  (assert (= result14 (mk_t__ref a5)))

;; H
  (assert (= a51 o3))

;; H
  (assert (tqtisFinite a51))

;; H
  (assert (and (= o4 (sub RNE2 a51 t61)) (tqtisFinite (sub RNE2 a51 t61))))

;; H
  (assert (= result15 (mk_t__ref a6)))

;; H
  (assert (= a61 o4))

;; H
  (assert (tqtisFinite a61))

;; H
  (assert (and (= o5 (add RNE2 a61 t71)) (tqtisFinite (add RNE2 a61 t71))))

;; H
  (assert (= result16 (mk_t__ref a7)))

;; H
  (assert (= a71 o5))

;; H
  (assert (tqtisFinite a71))

;; H
  (assert (and (= o6 (sub RNE2 a71 t81)) (tqtisFinite (sub RNE2 a71 t81))))

;; H
  (assert (= result17 (mk_t__ref a8)))

;; H
  (assert (= a81 o6))

;; H
  (assert (tqtisFinite a81))

;; H
  (assert (and (= o7 (add RNE2 a81 t91)) (tqtisFinite (add RNE2 a81 t91))))

;; H
  (assert (= result18 (mk_t__ref a9)))

;; H
  (assert (= a91 o7))

;; H
  (assert (tqtisFinite a91))

;; H
  (assert (and (= o8 (sub RNE2 a91 t101)) (tqtisFinite (sub RNE2 a91 t101))))

;; H
  (assert (= result19 (mk_t__ref a10)))

;; H
  (assert (= a101 o8))

;; H
  (assert (tqtisFinite a101))

;; H
  (assert (and (= o9 (mul RNE2 a91 a91)) (tqtisFinite (mul RNE2 a91 a91))))

;; H
  (assert
  (and (= o10 (mul RNE2 a101 a81)) (tqtisFinite (mul RNE2 a101 a81))))

;; H
  (assert (= o11 (sub RNE2 o10 o9)))

;; H
  (assert (and (= o12 o11) (tqtisFinite o11)))

;; H
  (assert (= o13 (mul RNE2 fliteral11 o12)))

;; H
  (assert (and (= o14 o13) (tqtisFinite o13)))

;; H
  (assert (= result20 (mk_t__ref num)))

;; H
  (assert (= num1 o14))

;; H
  (assert (tqtisFinite num1))

;; H
  (assert
  (and (= o15 (mul RNE2 fliteral12 a91)) (tqtisFinite
  (mul RNE2 fliteral12 a91))))

;; H
  (assert (= o16 (sub RNE2 a101 o15)))

;; H
  (assert (and (= o17 o16) (tqtisFinite o16)))

;; H
  (assert (= o18 (add RNE2 o17 a81)))

;; H
  (assert (and (= o19 o18) (tqtisFinite o18)))

;; H
  (assert (= result21 den))

;; H
  (assert (= (let ((subject den)) den1) o19))

;; H
  (assert (tqtisFinite (let ((subject den)) den1)))

;; H
  (assert (=> (le (neg fliteral1) fliteral1) (tqtisFinite (t__content res))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (tqtisFinite (div1 RNE2 num1 (let ((subject den)) den1)))))
(check-sat)
