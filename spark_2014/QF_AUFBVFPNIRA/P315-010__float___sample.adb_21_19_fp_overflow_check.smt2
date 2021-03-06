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

(define-fun dynamic_invariant ((temp___expr_60 Float32)
  (temp___is_init_56 Bool) (temp___skip_constant_57 Bool)
  (temp___do_toplevel_58 Bool)
  (temp___do_typ_inv_59 Bool)) Bool (=>
                                    (or (= temp___is_init_56 true)
                                    (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                    (fp.isFinite32 temp___expr_60)))

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 100)))

(define-fun dynamic_invariant1 ((temp___expr_158 Int)
  (temp___is_init_154 Bool) (temp___skip_constant_155 Bool)
  (temp___do_toplevel_156 Bool)
  (temp___do_typ_inv_157 Bool)) Bool (=>
                                     (or (= temp___is_init_154 true)
                                     (<= 0 100)) (in_range1 temp___expr_158)))

(define-fun in_range2 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10001000 #b11110100000000000000000)))))

(define-fun dynamic_invariant2 ((temp___expr_165 Float32)
  (temp___is_init_161 Bool) (temp___skip_constant_162 Bool)
  (temp___do_toplevel_163 Bool)
  (temp___do_typ_inv_164 Bool)) Bool (=>
                                     (or (= temp___is_init_161 true)
                                     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001000 #b11110100000000000000000)))
                                     (in_range2 temp___expr_165)))

(define-fun in_range3 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))))

(define-fun dynamic_invariant3 ((temp___expr_172 Float32)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)
  (temp___do_typ_inv_171 Bool)) Bool (=>
                                     (or (= temp___is_init_168 true)
                                     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000)))
                                     (in_range3 temp___expr_172)))

(declare-const nb_of_fp Int)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const nb_of_pp Int)

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const delta_time Float32)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(declare-const attr__ATTRIBUTE_ADDRESS3 Int)

(declare-const attr__ATTRIBUTE_ADDRESS4 Int)

(define-fun in_range4 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) x)
                                         (fp.leq x (fp #b0 #b11111110 #b11111111111111111111110)))))

(define-fun dynamic_invariant4 ((temp___expr_186 Float32)
  (temp___is_init_182 Bool) (temp___skip_constant_183 Bool)
  (temp___do_toplevel_184 Bool)
  (temp___do_typ_inv_185 Bool)) Bool (=>
                                     (or (= temp___is_init_182 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111110)))
                                     (in_range4 temp___expr_186)))

(declare-const attr__ATTRIBUTE_ADDRESS5 Int)

(declare-const attr__ATTRIBUTE_ADDRESS6 Int)

(define-fun in_range5 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000110 #b10010000000000000000000)))))

(define-fun dynamic_invariant5 ((temp___expr_193 Float32)
  (temp___is_init_189 Bool) (temp___skip_constant_190 Bool)
  (temp___do_toplevel_191 Bool)
  (temp___do_typ_inv_192 Bool)) Bool (=>
                                     (or (= temp___is_init_189 true)
                                     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000110 #b10010000000000000000000)))
                                     (in_range5 temp___expr_193)))

(declare-const attr__ATTRIBUTE_ADDRESS7 Int)

(define-fun in_range6 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000100 #b10010000000000000000000)))))

(define-fun dynamic_invariant6 ((temp___expr_200 Float32)
  (temp___is_init_196 Bool) (temp___skip_constant_197 Bool)
  (temp___do_toplevel_198 Bool)
  (temp___do_typ_inv_199 Bool)) Bool (=>
                                     (or (= temp___is_init_196 true)
                                     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000100 #b10010000000000000000000)))
                                     (in_range6 temp___expr_200)))

(declare-const attr__ATTRIBUTE_ADDRESS8 Int)

(declare-const time Float32)

(declare-const d Float32)

(declare-const t_fp Float32)

(declare-const t_pp Float32)

(declare-const tmp1 Float32)

(declare-const tmp2 Float32)

(declare-const o Float32)

(declare-const o1 Float32)

(declare-const o2 Float32)

(declare-const o3 Float32)

(declare-const result Float32)

(declare-const d1 Float32)

(declare-const result1 Float32)

(declare-const t_fp1 Float32)

(declare-const result2 Float32)

(declare-const tmp11 Float32)

(declare-const result3 Float32)

(declare-const t_pp1 Float32)

(declare-const result4 Float32)

(declare-const tmp21 Float32)

(declare-const result5 Float32)

(declare-const time1 Float32)

(declare-const time2 Float32)

(declare-const d2 Float32)

(declare-const t_fp2 Float32)

(declare-const t_pp2 Float32)

(declare-const tmp12 Float32)

(declare-const tmp22 Float32)

(declare-const time3 Float32)

(declare-const d3 Float32)

(declare-const t_fp3 Float32)

(declare-const t_pp3 Float32)

(declare-const tmp13 Float32)

(declare-const tmp23 Float32)

;; H
  (assert (in_range1 nb_of_fp))

;; H
  (assert (in_range1 nb_of_pp))

;; H
  (assert (in_range3 delta_time))

;; H
  (assert (fp.isFinite32 time))

;; H
  (assert
  (and
  (and
  (and (< 0 nb_of_pp)
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) delta_time))
  (fp.leq (fp.mul RNE (fp.mul RNE (fp #b0 #b01111110 #b00000000000000000000000) ((_ to_fp 8 24) RNE (to_real (+
  nb_of_fp nb_of_pp)))) delta_time) time))
  (fp.leq time (fp #b0 #b11111110 #b11111111111111111111110))))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001000 #b11110100000000000000000))
  (in_range2 d)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111110))
  (in_range4 t_fp)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (fp.isFinite32 t_pp)))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000110 #b10010000000000000000000))
  (in_range5 tmp1)))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000100 #b10010000000000000000000))
  (in_range6 tmp2)))

;; H
  (assert
  (= d1 (fp.mul RNE ((_ to_fp 8 24) RNE (to_real (+ nb_of_fp nb_of_pp)))
  delta_time)))

;; H
  (assert
  (and
  (= o (fp.sub RNE time (fp.div RNE d1 (fp #b0 #b10000000 #b00000000000000000000000))))
  (fp.isFinite32 (fp.sub RNE time (fp.div RNE d1 (fp #b0 #b10000000 #b00000000000000000000000))))))

;; H
  (assert (and (= o1 o) (fp.isFinite32 o)))

;; H
  (assert (= t_fp1 o1))

;; H
  (assert
  (= tmp11 (fp.mul RNE ((_ to_fp 8 24) RNE (to_real nb_of_fp)) delta_time)))

;; H
  (assert
  (and (= o2 (fp.add RNE t_fp1 tmp11))
  (fp.isFinite32 (fp.add RNE t_fp1 tmp11))))

;; H
  (assert (= t_pp1 o2))

;; H
  (assert
  (= tmp21 (fp.mul RNE (fp.mul RNE (fp #b0 #b01111110 #b00000000000000000000000) ((_ to_fp 8 24) RNE (to_real
  nb_of_fp))) delta_time)))

(assert
;; WP_parameter_def
 ;; File "sample.ads", line 13, characters 0-0
  (not (fp.isFinite32 (fp.add RNE t_pp1 tmp21))))
(check-sat)
(exit)
