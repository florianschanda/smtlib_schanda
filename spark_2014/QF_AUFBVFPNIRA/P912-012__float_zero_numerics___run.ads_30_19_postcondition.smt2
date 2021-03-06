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

(define-fun in_range ((x Float32)) Bool (and (fp.isFinite32 x)
                                        (and
                                        (fp.leq (fp #b0 #b01111111 #b00000000000000000000000) x)
                                        (fp.leq x (fp #b0 #b10000101 #b10010000000000000000000)))))

(define-fun dynamic_invariant1 ((temp___expr_172 Float32)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)
  (temp___do_typ_inv_171 Bool)) Bool (=>
                                     (or (= temp___is_init_168 true)
                                     (fp.leq (fp #b0 #b01111111 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000)))
                                     (in_range temp___expr_172)))

(declare-const x1 Float32)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const x2 Float32)

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(declare-const y Float32)

(declare-const o Float32)

(declare-const o1 Float32)

(declare-const result Float32)

(declare-const y1 Float32)

(declare-const y2 Float32)

(declare-const y3 Float32)

;; H
  (assert (in_range x1))

;; H
  (assert (in_range x2))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (fp.isFinite32 y)))

;; H
  (assert
  (not (fp.eq (fp.sub RNE x2 x1) (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert
  (and (= o1 (fp.sub RNE x2 x1))
  (and (fp.isFinite32 o1)
  (and (= o1 (fp.sub RNE x2 x1)) (fp.eq o1 (fp.sub RNE x2 x1))))))

;; H
  (assert (= result y))

;; H
  (assert (= y1 o1))

;; H
  (assert (= y1 y2))

;; H
  (assert (= y3 y1))

(assert
;; WP_parameter_def
 ;; File "run.ads", line 25, characters 0-0
  (not (not (fp.eq y2 (fp #b0 #b00000000 #b00000000000000000000000)))))
(check-sat)
(exit)
