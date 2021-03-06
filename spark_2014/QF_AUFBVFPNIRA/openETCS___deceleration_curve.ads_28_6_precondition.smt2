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

(define-fun dynamic_invariant ((temp___expr_175 Float32)
  (temp___is_init_171 Bool) (temp___skip_constant_172 Bool)
  (temp___do_toplevel_173 Bool)
  (temp___do_typ_inv_174 Bool)) Bool (=>
                                     (or (= temp___is_init_171 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (fp.isFinite32 temp___expr_175)))

(define-fun dynamic_invariant1 ((temp___expr_182 Float32)
  (temp___is_init_178 Bool) (temp___skip_constant_179 Bool)
  (temp___do_toplevel_180 Bool)
  (temp___do_typ_inv_181 Bool)) Bool (=>
                                     (or (= temp___is_init_178 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (fp.isFinite32 temp___expr_182)))

(define-fun dynamic_invariant2 ((temp___expr_189 Float32)
  (temp___is_init_185 Bool) (temp___skip_constant_186 Bool)
  (temp___do_toplevel_187 Bool)
  (temp___do_typ_inv_188 Bool)) Bool (=>
                                     (or (= temp___is_init_185 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (fp.isFinite32 temp___expr_189)))

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun dynamic_invariant3 ((temp___expr_203 Int)
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)
  (temp___do_typ_inv_202 Bool)) Bool (=>
                                     (or (= temp___is_init_199 true)
                                     (<= 0 2147483647)) (in_range
                                     temp___expr_203)))

(declare-const maximum_valid_speed_km_per_h Float32)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const distance_resolution Int)

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const maximum_valid_speed Float32)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(declare-const minimum_valid_acceleration Float32)

(declare-const attr__ATTRIBUTE_ADDRESS3 Int)

(declare-const braking_curve_maximum_end_point Int)

(declare-const attr__ATTRIBUTE_ADDRESS4 Int)

(declare-const minimum_valid_speed Float32)

(declare-const attr__ATTRIBUTE_ADDRESS5 Int)

;; minimum_valid_speed__def_axiom
  (assert
  (= minimum_valid_speed (fp #b0 #b01111011 #b10011001100110011001101)))

;; distance_resolution__def_axiom
  (assert (= distance_resolution 5))

(declare-const abstr Float32)

;; maximum_valid_speed__def_axiom
  (assert (= maximum_valid_speed abstr))

;; minimum_valid_acceleration__def_axiom
  (assert
  (= minimum_valid_acceleration (fp.neg (fp #b0 #b10000010 #b01000000000000000000000))))

;; braking_curve_maximum_end_point__def_axiom
  (assert (= braking_curve_maximum_end_point 5000))

;; maximum_valid_speed_km_per_h__def_axiom
  (assert
  (= maximum_valid_speed_km_per_h (fp #b0 #b10000111 #b11110100000000000000000)))

(declare-const deceleration_curve__maximum_valid_speed__assume Float32)

;; H
  (assert (fp.isFinite32 maximum_valid_speed_km_per_h))

;; H
  (assert
  (= (fp #b0 #b10000111 #b11110100000000000000000) maximum_valid_speed_km_per_h))

;; H
  (assert (in_range distance_resolution))

(declare-const abstr1 Bool)

(assert
;; WP_parameter_def
 ;; File "deceleration_curve.ads", line 47, characters 0-0
  (not (= abstr1 true)))
(check-sat)
(exit)
