;; produced by colibri_gnatprove.drv ;;
(set-info :smt-lib-version 2.5)
(set-logic QF_AUFBVFPNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
(define-fun fp.isFinite32 ((x Float32)) Bool (not (or (fp.isInfinite x) (fp.isNaN x))))
(define-fun fp.isIntegral32 ((x Float32)) Bool (or (fp.isZero x) (and (fp.isNormal x) (= x (fp.roundToIntegral RNE x)))))
(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                (fp.isPositive x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                 (fp.isNegative x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero x)
                                            (fp.isPositive x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero x)
                                             (fp.isNegative x)))

(declare-const max_int Int)

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isPositive y))
                    (and (fp.isNegative x) (fp.isNegative y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isNegative y))
                    (and (fp.isNegative x) (fp.isPositive y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive z))
                    (=> (diff_sign x y) (fp.isNegative z))))

(define-fun sqr ((x Real)) Real (* x x))

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive x) (< 0.0 r))
                 (and (fp.isNegative x) (< r 0.0))))

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(declare-const value__size Int)

(declare-const value__alignment Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

(declare-const types__r__i__first__bit Int)

(declare-const types__r__i__last__bit Int)

(declare-const types__r__i__position Int)

;; types__r__i__first__bit_axiom
  (assert (<= 0 types__r__i__first__bit))

;; types__r__i__last__bit_axiom
  (assert (< types__r__i__first__bit types__r__i__last__bit))

;; types__r__i__position_axiom
  (assert (<= 0 types__r__i__position))

(declare-const types__r__x__first__bit Int)

(declare-const types__r__x__last__bit Int)

(declare-const types__r__x__position Int)

;; types__r__x__first__bit_axiom
  (assert (<= 0 types__r__x__first__bit))

;; types__r__x__last__bit_axiom
  (assert (< types__r__x__first__bit types__r__x__last__bit))

;; types__r__x__position_axiom
  (assert (<= 0 types__r__x__position))

(declare-const types__r__y__first__bit Int)

(declare-const types__r__y__last__bit Int)

(declare-const types__r__y__position Int)

;; types__r__y__first__bit_axiom
  (assert (<= 0 types__r__y__first__bit))

;; types__r__y__last__bit_axiom
  (assert (< types__r__y__first__bit types__r__y__last__bit))

;; types__r__y__position_axiom
  (assert (<= 0 types__r__y__position))

(declare-const value__size1 Int)

(declare-const value__alignment1 Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

(declare-const types__r__i__first__bit1 Int)

(declare-const types__r__i__last__bit1 Int)

(declare-const types__r__i__position1 Int)

;; types__r__i__first__bit_axiom
  (assert (<= 0 types__r__i__first__bit1))

;; types__r__i__last__bit_axiom
  (assert (< types__r__i__first__bit1 types__r__i__last__bit1))

;; types__r__i__position_axiom
  (assert (<= 0 types__r__i__position1))

(declare-const types__r__y__first__bit1 Int)

(declare-const types__r__y__last__bit1 Int)

(declare-const types__r__y__position1 Int)

;; types__r__y__first__bit_axiom
  (assert (<= 0 types__r__y__first__bit1))

;; types__r__y__last__bit_axiom
  (assert (< types__r__y__first__bit1 types__r__y__last__bit1))

;; types__r__y__position_axiom
  (assert (<= 0 types__r__y__position1))

(declare-const types__r__x__first__bit1 Int)

(declare-const types__r__x__last__bit1 Int)

(declare-const types__r__x__position1 Int)

;; types__r__x__first__bit_axiom
  (assert (<= 0 types__r__x__first__bit1))

;; types__r__x__last__bit_axiom
  (assert (< types__r__x__first__bit1 types__r__x__last__bit1))

;; types__r__x__position_axiom
  (assert (<= 0 types__r__x__position1))

(declare-const x__attr__constrained Bool)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const value__size2 Int)

(declare-const value__alignment2 Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

(declare-const types__r__i__first__bit2 Int)

(declare-const types__r__i__last__bit2 Int)

(declare-const types__r__i__position2 Int)

;; types__r__i__first__bit_axiom
  (assert (<= 0 types__r__i__first__bit2))

;; types__r__i__last__bit_axiom
  (assert (< types__r__i__first__bit2 types__r__i__last__bit2))

;; types__r__i__position_axiom
  (assert (<= 0 types__r__i__position2))

(declare-const types__r__x__first__bit2 Int)

(declare-const types__r__x__last__bit2 Int)

(declare-const types__r__x__position2 Int)

;; types__r__x__first__bit_axiom
  (assert (<= 0 types__r__x__first__bit2))

;; types__r__x__last__bit_axiom
  (assert (< types__r__x__first__bit2 types__r__x__last__bit2))

;; types__r__x__position_axiom
  (assert (<= 0 types__r__x__position2))

(declare-const types__r__y__first__bit2 Int)

(declare-const types__r__y__last__bit2 Int)

(declare-const types__r__y__position2 Int)

;; types__r__y__first__bit_axiom
  (assert (<= 0 types__r__y__first__bit2))

;; types__r__y__last__bit_axiom
  (assert (< types__r__y__first__bit2 types__r__y__last__bit2))

;; types__r__y__position_axiom
  (assert (<= 0 types__r__y__position2))

(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool)
  (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool)
  (temp___do_typ_inv_17 Bool)) Bool (=>
                                    (or (= temp___is_init_14 true)
                                    (<= (- 2147483648) 2147483647)) (in_range
                                    temp___expr_18)))

(define-fun dynamic_invariant1 ((temp___expr_60 Float32)
  (temp___is_init_56 Bool) (temp___skip_constant_57 Bool)
  (temp___do_toplevel_58 Bool)
  (temp___do_typ_inv_59 Bool)) Bool (=>
                                    (or (= temp___is_init_56 true)
                                    (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                    (fp.isFinite32 temp___expr_60)))

(define-fun dynamic_invariant2 ((temp___expr_158 Int)
  (temp___is_init_154 Bool) (temp___skip_constant_155 Bool)
  (temp___do_toplevel_156 Bool)
  (temp___do_typ_inv_157 Bool)) Bool (=>
                                     (or (= temp___is_init_154 true)
                                     (<= 0 1)) (in_range1 temp___expr_158)))

(declare-const p__good_2__x__assume Bool)

(declare-const temp___175 Bool)

;; H
  (assert (= true p__good_2__x__assume))

;; H
  (assert (= x__attr__constrained false))

;; H
  (assert (= true temp___175))

;; H
  (assert (not (= x__attr__constrained true)))

(assert
;; WP_parameter_def
 ;; File "p.adb", line 5, characters 0-0
  (not true))
(check-sat)
(exit)
