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

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int1 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort float 0)

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-sort speed_t 0)

(declare-fun user_eq1 (speed_t speed_t) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () speed_t)

(declare-datatypes ()
((speed_t__ref (mk_speed_t__ref (speed_t__content speed_t)))))
(define-fun speed_t__ref___projection ((a speed_t__ref)) speed_t (speed_t__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_152 Float32)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_152) (fp.isNaN temp___expr_152)))))

(declare-sort acceleration_t 0)

(declare-fun user_eq2 (acceleration_t acceleration_t) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy2 () acceleration_t)

(declare-datatypes ()
((acceleration_t__ref
 (mk_acceleration_t__ref (acceleration_t__content acceleration_t)))))
(define-fun acceleration_t__ref___projection ((a acceleration_t__ref)) acceleration_t 
  (acceleration_t__content a))

(define-fun dynamic_invariant1 ((temp___expr_164 Float32)
  (temp___is_init_161 Bool) (temp___skip_constant_162 Bool)
  (temp___do_toplevel_163 Bool)) Bool (=>
                                      (or (= temp___is_init_161 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_164) (fp.isNaN temp___expr_164)))))

(declare-sort tdistance_tB 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (tdistance_tB tdistance_tB) Bool)

(declare-fun dummy3 () tdistance_tB)

(declare-datatypes ()
((tdistance_tB__ref
 (mk_tdistance_tB__ref (tdistance_tB__content tdistance_tB)))))
(define-fun tdistance_tB__ref___projection ((a tdistance_tB__ref)) tdistance_tB 
  (tdistance_tB__content a))

(declare-sort distance_t 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (distance_t distance_t) Bool)

(declare-fun dummy4 () distance_t)

(declare-datatypes ()
((distance_t__ref (mk_distance_t__ref (distance_t__content distance_t)))))
(define-fun distance_t__ref___projection ((a distance_t__ref)) distance_t 
  (distance_t__content a))

(define-fun dynamic_invariant2 ((temp___expr_176 Int)
  (temp___is_init_173 Bool) (temp___skip_constant_174 Bool)
  (temp___do_toplevel_175 Bool)) Bool (=>
                                      (or (= temp___is_init_173 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_176)))

(declare-fun m_per_s_from_km_per_h (Float32) Float32)

(declare-fun m_per_s_from_km_per_h__function_guard (Float32 Float32) Bool)

(declare-fun maximum_valid_speed () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun initial_speed () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun final_speed () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun acceleration () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(define-fun dynamic_invariant3 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

;; maximum_valid_speed__def_axiom
  (assert
  (= maximum_valid_speed (m_per_s_from_km_per_h
                         (fp #b0 #b10000111 #b11110100000000000000000))))

(declare-sort speed_km_per_h_t 0)

(declare-fun user_eq5 (speed_km_per_h_t speed_km_per_h_t) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE6 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Float32)

(declare-fun dummy5 () speed_km_per_h_t)

(declare-datatypes ()
((speed_km_per_h_t__ref
 (mk_speed_km_per_h_t__ref (speed_km_per_h_t__content speed_km_per_h_t)))))
(define-fun speed_km_per_h_t__ref___projection ((a speed_km_per_h_t__ref)) speed_km_per_h_t 
  (speed_km_per_h_t__content a))

(define-fun dynamic_invariant4 ((temp___expr_158 Float32)
  (temp___is_init_155 Bool) (temp___skip_constant_156 Bool)
  (temp___do_toplevel_157 Bool)) Bool (=>
                                      (or (= temp___is_init_155 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_158) (fp.isNaN temp___expr_158)))))

(declare-fun is_valid_speed_km_per_h (Float32) Bool)

(declare-fun is_valid_speed_km_per_h__function_guard (Bool Float32) Bool)

;; is_valid_speed_km_per_h__post_axiom
  (assert true)

;; is_valid_speed_km_per_h__def_axiom
  (assert
  (forall ((speed Float32))
  (! (= (= (is_valid_speed_km_per_h speed) true)
     (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) speed)
     (fp.leq speed (fp #b0 #b10000111 #b11110100000000000000000)))) :pattern (
  (is_valid_speed_km_per_h speed)) )))

;; m_per_s_from_km_per_h__post_axiom
  (assert
  (forall ((speed Float32))
  (! (=>
     (and (dynamic_invariant4 speed true true true)
     (= (is_valid_speed_km_per_h speed) true)) (dynamic_invariant
     (m_per_s_from_km_per_h speed) true false true)) :pattern ((m_per_s_from_km_per_h
                                                               speed)) )))

;; m_per_s_from_km_per_h__def_axiom
  (assert
  (forall ((speed Float32))
  (! (=> (dynamic_invariant4 speed true true true)
     (= (m_per_s_from_km_per_h speed) (fp.div RNE (fp.mul RNE speed (fp #b0 #b10001000 #b11110100000000000000000)) (fp #b0 #b10001010 #b11000010000000000000000)))) :pattern (
  (m_per_s_from_km_per_h speed)) )))

(declare-fun speed () Float32)

(declare-fun delta_speed () Float32)

(declare-fun distance () Int)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun result () Float32)

(declare-fun speed1 () Float32)

(declare-fun result1 () Int)

(declare-fun distance1 () Int)

(declare-fun speed2 () Float32)

(declare-fun delta_speed1 () Float32)

(declare-fun distance2 () Int)

;; H
  (assert
  (not (or (fp.isInfinite maximum_valid_speed) (fp.isNaN maximum_valid_speed))))

;; H
  (assert
  (= (m_per_s_from_km_per_h (fp #b0 #b10000111 #b11110100000000000000000)) 
  maximum_valid_speed))

;; H
  (assert (not (or (fp.isInfinite initial_speed) (fp.isNaN initial_speed))))

;; H
  (assert (not (or (fp.isInfinite final_speed) (fp.isNaN final_speed))))

;; H
  (assert (not (or (fp.isInfinite acceleration) (fp.isNaN acceleration))))

;; H
  (assert
  (and
  (and
  (and
  (and
  (and (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) initial_speed)
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) final_speed))
  (fp.leq initial_speed maximum_valid_speed))
  (fp.lt final_speed initial_speed))
  (fp.lt acceleration (fp #b0 #b00000000 #b00000000000000000000000)))
  (fp.leq (fp.neg (fp #b0 #b10000010 #b01000000000000000000000)) acceleration)))

;; H
  (assert (= result speed))

;; H
  (assert (= speed1 initial_speed))

;; H
  (assert (not (or (fp.isInfinite speed1) (fp.isNaN speed1))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite delta_speed) (fp.isNaN delta_speed)))))

;; H
  (assert (= result1 distance))

;; H
  (assert (= distance1 0))

;; H
  (assert (in_range3 distance1))

;; H
  (assert (fp.lt final_speed speed1))

;; H
  (assert (fp.lt (fp #b0 #b01111011 #b10011001100110011001101) speed1))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b10000010 #b01000000000000000000000)) acceleration)
  (fp.lt acceleration (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert
  (and (fp.lt (fp #b0 #b01111011 #b10011001100110011001101) speed2)
  (fp.leq speed2 initial_speed)))

;; H
  (assert
  (and
  (and
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite delta_speed1) (fp.isNaN delta_speed1))))
  (=> (<= 0 2147483647) (in_range3 distance2)))
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite speed2) (fp.isNaN speed2))))))

;; H
  (assert
  (and
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) (fp.div RNE (fp #b0 #b01111111 #b00000000000000000000000) 
  speed2))
  (fp.lt (fp.div RNE (fp #b0 #b01111111 #b00000000000000000000000) speed2) (fp #b0 #b10000010 #b01000000000000000000000))))

;; H
  (assert
  (fp.leq (fp.neg (fp #b0 #b10000101 #b10010000000000000000000)) (fp.div RNE 
  acceleration speed2)))

;; H
  (assert
  (and (= o (fp.div RNE acceleration speed2))
  (not (or (fp.isInfinite (fp.div RNE acceleration speed2)) (fp.isNaN (fp.div RNE 
  acceleration speed2))))))

;; H
  (assert
  (= o1 (fp.mul RNE o (fp #b0 #b10000001 #b01000000000000000000000))))

(assert
;; WP_parameter_def
 ;; File "units.ads", line 27, characters 0-0
  (not (not (or (fp.isInfinite o1) (fp.isNaN o1)))))
(check-sat)
