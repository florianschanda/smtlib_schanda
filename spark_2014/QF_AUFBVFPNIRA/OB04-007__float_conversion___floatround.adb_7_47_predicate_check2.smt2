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

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(define-fun in_range1 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000010 #b01000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000010 #b01000000000000000000000)))))

(define-fun dynamic_invariant ((temp___expr_200 Float32)
  (temp___is_init_196 Bool) (temp___skip_constant_197 Bool)
  (temp___do_toplevel_198 Bool)
  (temp___do_typ_inv_199 Bool)) Bool (=>
                                     (or (= temp___is_init_196 true)
                                     (fp.leq (fp.neg (fp #b0 #b10000010 #b01000000000000000000000)) (fp #b0 #b10000010 #b01000000000000000000000)))
                                     (in_range1 temp___expr_200)))

(define-fun in_range2 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000010 #b01000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000010 #b01000000000000000000000)))))

(declare-const x Float32)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(define-fun dynamic_invariant1 ((temp___expr_207 Float32)
  (temp___is_init_203 Bool) (temp___skip_constant_204 Bool)
  (temp___do_toplevel_205 Bool)
  (temp___do_typ_inv_206 Bool)) Bool (and
                                     (=>
                                     (or (= temp___is_init_203 true)
                                     (fp.leq (fp.neg (fp #b0 #b10000010 #b01000000000000000000000)) (fp #b0 #b10000010 #b01000000000000000000000)))
                                     (in_range2 temp___expr_207))
                                     (=> (= temp___do_toplevel_205 true)
                                     (=> (= temp___is_init_203 true)
                                     (and
                                     (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) temp___expr_207)
                                     (fp.leq temp___expr_207 (fp #b0 #b01111111 #b00000000000000000000000)))))))

(define-fun dynamic_predicate ((temp___211 Float32)) Bool (and
                                                          (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) temp___211)
                                                          (fp.leq temp___211 (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert (in_range1 x))

;; H
  (assert
  (and (in_range2 x)
  (let ((temp___218 x))
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) temp___218)
  (fp.leq temp___218 (fp #b0 #b01111111 #b00000000000000000000000))))))

(define-fun temp___216 () Float32 x)

(assert
;; WP_parameter_def
 ;; File "floatround.adb", line 5, characters 0-0
  (not
  (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) temp___216)))
(check-sat)
(exit)
