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

(declare-fun boolean_to_long_float (Bool) Float64)

(declare-fun boolean_to_long_float__function_guard (Float64 Bool) Bool)

;; boolean_to_long_float__post_axiom
  (assert
  (forall ((b Bool)) (! (dynamic_invariant (boolean_to_long_float b) true
  false true) :pattern ((boolean_to_long_float b)) )))

(declare-fun wheel_speed () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun vehicle_speed () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun apply_brakes () Float64)

(declare-fun epsifzero_out1 () Float64)

(declare-fun diff_out1 () Float64)

(declare-fun difference_out1 () Float64)

(declare-fun sum_out1 () Float64)

(declare-fun o () Float64)

(declare-fun o1 () Float64)

(declare-fun o2 () Float64)

(declare-fun o3 () Float64)

(declare-fun o4 () Float64)

(declare-fun o5 () Float64)

(declare-fun o6 () Float64)

(declare-fun result () Float64)

(declare-fun epsifzero_out11 () Float64)

(declare-fun result1 () Float64)

(declare-fun epsifzero_out12 () Float64)

(declare-fun result2 () Float64)

(declare-fun diff_out11 () Float64)

(declare-fun result3 () Float64)

(declare-fun difference_out11 () Float64)

;; H
  (assert (not (or (fp.isInfinite wheel_speed) (fp.isNaN wheel_speed))))

;; H
  (assert (not (or (fp.isInfinite vehicle_speed) (fp.isNaN vehicle_speed))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite apply_brakes) (fp.isNaN apply_brakes)))))

;; H
  (assert
  (fp.leq (fp #b0 #b01111001010 #b1111111111111101010010000001111110010111011010000010) 
  wheel_speed))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite epsifzero_out1) (fp.isNaN epsifzero_out1)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite diff_out1) (fp.isNaN diff_out1)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite difference_out1) (fp.isNaN difference_out1)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite sum_out1) (fp.isNaN sum_out1)))))

;; H
  (assert
  (fp.leq (fp #b0 #b01111001010 #b1111111111111101010010000001111110010111011010000010) 
  wheel_speed))

;; H
  (assert
  (=> (neq vehicle_speed
  (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
  (= result epsifzero_out1)))

;; H
  (assert
  (=> (neq vehicle_speed
  (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
  (= epsifzero_out11 vehicle_speed)))

;; H
  (assert
  (=>
  (not (neq vehicle_speed
  (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
  (= result1 epsifzero_out1)))

;; H
  (assert
  (=>
  (not (neq vehicle_speed
  (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
  (= epsifzero_out12 (fp #b0 #b01111001010 #b1111111111111101010010000001111110010111011010000010))))

;; H
  (assert
  (=>
  (not (neq vehicle_speed
  (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
  (= epsifzero_out11 epsifzero_out12)))

;; H
  (assert
  (and (= o (fp.div RNE wheel_speed epsifzero_out11))
  (not (or (fp.isInfinite (fp.div RNE wheel_speed epsifzero_out11)) (fp.isNaN (fp.div RNE 
  wheel_speed epsifzero_out11))))))

;; H
  (assert
  (= o1 (fp.sub RNE (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) 
  o)))

;; H
  (assert (and (= o2 o1) (not (or (fp.isInfinite o1) (fp.isNaN o1)))))

;; H
  (assert (= result2 diff_out1))

;; H
  (assert (= diff_out11 o2))

;; H
  (assert
  (and
  (= o3 (fp.sub RNE (fp #b0 #b01111111100 #b1001100110011001100110011001100110011001100110011010) 
  diff_out11))
  (not (or (fp.isInfinite (fp.sub RNE (fp #b0 #b01111111100 #b1001100110011001100110011001100110011001100110011010) 
  diff_out11)) (fp.isNaN (fp.sub RNE (fp #b0 #b01111111100 #b1001100110011001100110011001100110011001100110011010) 
  diff_out11))))))

;; H
  (assert (= result3 difference_out1))

;; H
  (assert (= difference_out11 o3))

;; H
  (assert
  (and
  (= o4 (boolean_to_long_float
        (ite (fp.lt difference_out11 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))
        true false)))
  (not (or (fp.isInfinite o4) (fp.isNaN o4)))))

;; H
  (assert
  (and
  (= o5 (boolean_to_long_float
        (ite (fp.lt (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) 
        difference_out11) true false)))
  (not (or (fp.isInfinite o5) (fp.isNaN o5)))))

;; H
  (assert (= o6 (fp.sub RNE o5 o4)))

(assert
;; WP_parameter_def
 ;; File "abs_controller_oem_with_property.ads", line 20, characters 0-0
  (not (not (or (fp.isInfinite o6) (fp.isNaN o6)))))
(check-sat)
