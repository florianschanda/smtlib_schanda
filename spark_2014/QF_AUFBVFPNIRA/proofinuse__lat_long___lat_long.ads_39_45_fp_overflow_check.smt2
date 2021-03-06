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

(define-fun dynamic_invariant ((temp___expr_165 Float32)
  (temp___is_init_161 Bool) (temp___skip_constant_162 Bool)
  (temp___do_toplevel_163 Bool)
  (temp___do_typ_inv_164 Bool)) Bool (=>
                                     (or (= temp___is_init_161 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (fp.isFinite32 temp___expr_165)))

(declare-const r Float32)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(define-fun in_range ((x Float32)) Bool (and (fp.isFinite32 x)
                                        (and
                                        (fp.leq (fp.neg (fp #b0 #b10000101 #b00101100000000000000000)) x)
                                        (fp.leq x (fp #b0 #b10000101 #b00101100000000000000000)))))

(define-fun in_range1 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000110 #b01100111111111111111111)) x)
                                         (fp.leq x (fp #b0 #b10000110 #b01101000000000000000000)))))

(declare-const value__size Int)

(declare-const value__alignment Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

(declare-const lat_long__coordinates__lat__first__bit Int)

(declare-const lat_long__coordinates__lat__last__bit Int)

(declare-const lat_long__coordinates__lat__position Int)

;; lat_long__coordinates__lat__first__bit_axiom
  (assert (<= 0 lat_long__coordinates__lat__first__bit))

;; lat_long__coordinates__lat__last__bit_axiom
  (assert
  (< lat_long__coordinates__lat__first__bit lat_long__coordinates__lat__last__bit))

;; lat_long__coordinates__lat__position_axiom
  (assert (<= 0 lat_long__coordinates__lat__position))

(declare-const lat_long__coordinates__long__first__bit Int)

(declare-const lat_long__coordinates__long__last__bit Int)

(declare-const lat_long__coordinates__long__position Int)

;; lat_long__coordinates__long__first__bit_axiom
  (assert (<= 0 lat_long__coordinates__long__first__bit))

;; lat_long__coordinates__long__last__bit_axiom
  (assert
  (< lat_long__coordinates__long__first__bit lat_long__coordinates__long__last__bit))

;; lat_long__coordinates__long__position_axiom
  (assert (<= 0 lat_long__coordinates__long__position))

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(define-fun dynamic_invariant1 ((temp___expr_60 Float32)
  (temp___is_init_56 Bool) (temp___skip_constant_57 Bool)
  (temp___do_toplevel_58 Bool)
  (temp___do_typ_inv_59 Bool)) Bool (=>
                                    (or (= temp___is_init_56 true)
                                    (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                    (fp.isFinite32 temp___expr_60)))

;; r__def_axiom
  (assert (= r (fp #b0 #b10010101 #b10000100101000110101001)))

(define-fun dynamic_invariant2 ((temp___expr_172 Float32)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)
  (temp___do_typ_inv_171 Bool)) Bool (=>
                                     (or (= temp___is_init_168 true)
                                     (fp.leq (fp.neg (fp #b0 #b10000101 #b00101100000000000000000)) (fp #b0 #b10000101 #b00101100000000000000000)))
                                     (in_range temp___expr_172)))

(define-fun dynamic_invariant3 ((temp___expr_179 Float32)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)
  (temp___do_typ_inv_178 Bool)) Bool (=>
                                     (or (= temp___is_init_175 true)
                                     (fp.leq (fp.neg (fp #b0 #b10000110 #b01100111111111111111111)) (fp #b0 #b10000110 #b01101000000000000000000)))
                                     (in_range1 temp___expr_179)))

(declare-const lat_long__delta_long_in_meters__result Float32)

(declare-const o Float32)

(declare-const o1 Float32)

(declare-const o2 Float32)

(declare-const result Float32)

(declare-const lat_long__delta_long_in_meters__result1 Float32)

(declare-const lat_long__delta_long_in_meters__result2 Float32)

(declare-const lat_long__delta_long_in_meters__result3 Float32)

(declare-const lat_long__delta_long_in_meters__result4 Float32)

(declare-const lat_long__delta_long_in_meters__result5 Float32)

;; H
  (assert (fp.isFinite32 r))

;; H
  (assert (= (fp #b0 #b10010101 #b10000100101000110101001) r))

(assert
;; WP_parameter_def
 ;; File "lat_long.ads", line 6, characters 0-0
  (not (fp.isFinite32 o1)))
(check-sat)
(exit)
