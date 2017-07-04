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

(define-fun is_plus_infinity ((x Float64)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float64)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float64)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float64)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float64)

(declare-fun to_int1 (RoundingMode Float64) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 9007199254740991.0 19958403095347198116563727130368385660674512604354575415025472424372118918689640657849579654926357010893424468441924952439724379883935936607391717982848314203200056729510856765175377214443629871826533567445439239933308104551208703888888552684480441575071209068757560416423584952303440099278848.0)) x)
                                     (<= x (* 9007199254740991.0 19958403095347198116563727130368385660674512604354575415025472424372118918689640657849579654926357010893424468441924952439724379883935936607391717982848314203200056729510856765175377214443629871826533567445439239933308104551208703888888552684480441575071209068757560416423584952303440099278848.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 9007199254740992) i)
                                             (<= i 9007199254740992)))

(define-fun same_sign ((x Float64)
  (y Float64)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float64)
  (y Float64)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float64) (x Float64)
  (y Float64)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float64)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float64) Bool)

(define-fun neq ((x Float64) (y Float64)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float64)))))
(declare-sort long_float 0)

(declare-fun user_eq (long_float long_float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Float64)

(declare-fun dummy () long_float)

(declare-datatypes ()
((long_float__ref (mk_long_float__ref (long_float__content long_float)))))
(define-fun long_float__ref___projection ((a long_float__ref)) long_float 
  (long_float__content a))

(define-fun dynamic_invariant ((temp___expr_57 Float64)
  (temp___is_init_54 Bool) (temp___skip_constant_55 Bool)
  (temp___do_toplevel_56 Bool)) Bool (=>
                                     (or (= temp___is_init_54 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_57) (fp.isNaN temp___expr_57)))))

(declare-sort long_float_m1_0_m100_0 0)

(define-fun in_range1 ((x Float64)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000000101 #b1001000000000000000000000000000000000000000000000000)))))

(declare-fun user_eq1 (long_float_m1_0_m100_0 long_float_m1_0_m100_0) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float64)

(declare-fun dummy1 () long_float_m1_0_m100_0)

(declare-datatypes ()
((long_float_m1_0_m100_0__ref
 (mk_long_float_m1_0_m100_0__ref
 (long_float_m1_0_m100_0__content long_float_m1_0_m100_0)))))
(define-fun long_float_m1_0_m100_0__ref___projection ((a long_float_m1_0_m100_0__ref)) long_float_m1_0_m100_0 
  (long_float_m1_0_m100_0__content a))

(define-fun dynamic_invariant1 ((temp___expr_135 Float64)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) (fp #b0 #b10000000101 #b1001000000000000000000000000000000000000000000000000)))
                                      (in_range1 temp___expr_135)))

(declare-sort long_float_m2_220446049250313e_16_minf 0)

(define-fun in_range2 ((x Float64)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b01111001011 #b0000000000000000000000000000000000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))))

(declare-fun user_eq2 (long_float_m2_220446049250313e_16_minf
  long_float_m2_220446049250313e_16_minf) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float64)

(declare-fun dummy2 () long_float_m2_220446049250313e_16_minf)

(declare-datatypes ()
((long_float_m2_220446049250313e_16_minf__ref
 (mk_long_float_m2_220446049250313e_16_minf__ref
 (long_float_m2_220446049250313e_16_minf__content long_float_m2_220446049250313e_16_minf)))))
(define-fun long_float_m2_220446049250313e_16_minf__ref___projection ((a long_float_m2_220446049250313e_16_minf__ref)) long_float_m2_220446049250313e_16_minf 
  (long_float_m2_220446049250313e_16_minf__content a))

(define-fun dynamic_invariant2 ((temp___expr_141 Float64)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (fp.leq (fp #b0 #b01111001011 #b0000000000000000000000000000000000000000000000000000) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
                                      (in_range2 temp___expr_141)))

(declare-fun requested_force () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun calculated_force () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun relative_error () Float64)

(declare-fun abs_out1 () Float64)

;; H
  (assert (in_range2 requested_force))

;; H
  (assert (in_range1 calculated_force))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite relative_error) (fp.isNaN relative_error)))))

;; H
  (assert (neq requested_force
  (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite abs_out1) (fp.isNaN abs_out1)))))

;; H
  (assert (neq requested_force
  (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))

(assert
;; WP_parameter_def
 ;; File "errorexamplefloat.ads", line 21, characters 0-0
  (not
  (not (or (fp.isInfinite (fp.sub RNE requested_force calculated_force)) (fp.isNaN (fp.sub RNE 
  requested_force calculated_force))))))
(check-sat)
