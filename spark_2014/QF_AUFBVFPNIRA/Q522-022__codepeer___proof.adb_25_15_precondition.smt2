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

(define-fun dynamic_invariant ((temp___expr_158 Float32)
  (temp___is_init_154 Bool) (temp___skip_constant_155 Bool)
  (temp___do_toplevel_156 Bool)
  (temp___do_typ_inv_157 Bool)) Bool (=>
                                     (or (= temp___is_init_154 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (fp.isFinite32 temp___expr_158)))

(define-fun in_range ((x Float32)) Bool (and (fp.isFinite32 x)
                                        (and
                                        (fp.leq (fp.neg (fp #b0 #b01111001 #b00001000010000100000111)) x)
                                        (fp.leq x (fp #b0 #b01111001 #b00001000010000100000111)))))

(define-fun dynamic_invariant1 ((temp___expr_172 Float32)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)
  (temp___do_typ_inv_171 Bool)) Bool (=>
                                     (or (= temp___is_init_168 true)
                                     (fp.leq (fp.neg (fp #b0 #b01111001 #b00001000010000100000111)) (fp #b0 #b01111001 #b00001000010000100000111)))
                                     (in_range temp___expr_172)))

(define-fun in_range1 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000110 #b01101000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000110 #b01101000000000000000000)))))

(define-fun dynamic_invariant2 ((temp___expr_179 Float32)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)
  (temp___do_typ_inv_178 Bool)) Bool (=>
                                     (or (= temp___is_init_175 true)
                                     (fp.leq (fp.neg (fp #b0 #b10000110 #b01101000000000000000000)) (fp #b0 #b10000110 #b01101000000000000000000)))
                                     (in_range1 temp___expr_179)))

(define-fun in_range2 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b01111110 #b00000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b01111110 #b00000000000000000000000)))))

(define-fun dynamic_invariant3 ((temp___expr_186 Float32)
  (temp___is_init_182 Bool) (temp___skip_constant_183 Bool)
  (temp___do_toplevel_184 Bool)
  (temp___do_typ_inv_185 Bool)) Bool (=>
                                     (or (= temp___is_init_182 true)
                                     (fp.leq (fp.neg (fp #b0 #b01111110 #b00000000000000000000000)) (fp #b0 #b01111110 #b00000000000000000000000)))
                                     (in_range2 temp___expr_186)))

(declare-const x Float32)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const y Float32)

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(declare-const attr__ATTRIBUTE_ADDRESS3 Int)

(declare-const z Float32)

(declare-const t Float32)

(declare-const o Bool)

(declare-const o1 Float32)

(declare-const result Bool)

(declare-const result1 Float32)

(declare-const t1 Float32)

;; H
  (assert (in_range x))

;; H
  (assert (in_range1 y))

;; H
  (assert (in_range2 z))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (fp.isFinite32 t)))

(assert
;; WP_parameter_def
 ;; File "proof.adb", line 5, characters 0-0
  (not (fp.leq (fp.neg (fp #b0 #b11111101 #b11111111111111111111111)) x)))
(check-sat)
(exit)
