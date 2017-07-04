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

(define-fun is_not_nan ((x Float32)) Bool (or
                                          (not (or (fp.isInfinite x) (fp.isNaN x)))
                                          (fp.isInfinite  x)))

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

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(define-fun bool_lt ((x Float32)
  (y Float32)) Bool (ite (fp.lt x y) true false))

(define-fun bool_le ((x Float32)
  (y Float32)) Bool (ite (fp.leq x y) true false))

(define-fun bool_gt ((x Float32)
  (y Float32)) Bool (ite (fp.lt y x) true false))

(define-fun bool_ge ((x Float32)
  (y Float32)) Bool (ite (fp.leq y x) true false))

(define-fun bool_eq ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(define-fun bool_neq ((x Float32)
  (y Float32)) Bool (ite (not (fp.eq x y)) true false))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort float 0)

(define-fun bool_eq1 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Float32)

(declare-fun dummy () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-sort t_degrees 0)

(define-fun in_range1 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000111 #b01101000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000111 #b01101000000000000000000)))))

(define-fun bool_eq2 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq1 (t_degrees t_degrees) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy1 () t_degrees)

(declare-datatypes ()
((t_degrees__ref (mk_t_degrees__ref (t_degrees__content t_degrees)))))
(define-fun t_degrees__ref___projection ((a t_degrees__ref)) t_degrees 
  (t_degrees__content a))

(define-fun dynamic_invariant1 ((temp___expr_1315 Float32)
  (temp___is_init_1312 Bool) (temp___skip_constant_1313 Bool)
  (temp___do_toplevel_1314 Bool)) Bool (=>
                                       (or (= temp___is_init_1312 true)
                                       (fp.leq (fp.neg (fp #b0 #b10000111 #b01101000000000000000000)) (fp #b0 #b10000111 #b01101000000000000000000)))
                                       (in_range1 temp___expr_1315)))

(declare-sort t_quaternion 0)

(define-fun in_range2 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))))

(define-fun bool_eq3 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq2 (t_quaternion t_quaternion) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy2 () t_quaternion)

(declare-datatypes ()
((t_quaternion__ref
 (mk_t_quaternion__ref (t_quaternion__content t_quaternion)))))
(define-fun t_quaternion__ref___projection ((a t_quaternion__ref)) t_quaternion 
  (t_quaternion__content a))

(define-fun dynamic_invariant2 ((temp___expr_1339 Float32)
  (temp___is_init_1336 Bool) (temp___skip_constant_1337 Bool)
  (temp___do_toplevel_1338 Bool)) Bool (=>
                                       (or (= temp___is_init_1336 true)
                                       (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (fp #b0 #b01111111 #b00000000000000000000000)))
                                       (in_range2 temp___expr_1339)))

(declare-sort t_radians 0)

(define-fun in_range3 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000001 #b10010010000111111011011)) x)
                                         (fp.leq x (fp #b0 #b10000001 #b10010010000111111011011)))))

(define-fun bool_eq4 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq3 (t_radians t_radians) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy3 () t_radians)

(declare-datatypes ()
((t_radians__ref (mk_t_radians__ref (t_radians__content t_radians)))))
(define-fun t_radians__ref___projection ((a t_radians__ref)) t_radians 
  (t_radians__content a))

(define-fun dynamic_invariant3 ((temp___expr_1345 Float32)
  (temp___is_init_1342 Bool) (temp___skip_constant_1343 Bool)
  (temp___do_toplevel_1344 Bool)) Bool (=>
                                       (or (= temp___is_init_1342 true)
                                       (fp.leq (fp.neg (fp #b0 #b10000001 #b10010010000111111011011)) (fp #b0 #b10000001 #b10010010000111111011011)))
                                       (in_range3 temp___expr_1345)))

(declare-fun atan_2 (Float32 Float32) Float32)

(declare-fun atan_2__function_guard (Float32 Float32 Float32) Bool)

;; atan_2__post_axiom
  (assert
  (forall ((x Float32) (y Float32))
  (! (=>
     (and (dynamic_invariant x true true true) (dynamic_invariant y true true
     true)) (dynamic_invariant3 (atan_2 x y) true false true)) :pattern (
  (atan_2 x y)) )))

(declare-fun asin (Float32) Float32)

(declare-fun asin__function_guard (Float32 Float32) Bool)

;; asin__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant3 (asin x)
     true false true)) :pattern ((asin x)) )))

(declare-fun saturate (Float32 Float32 Float32) Float32)

(declare-fun saturate__function_guard (Float32 Float32 Float32 Float32) Bool)

;; saturate__post_axiom
  (assert
  (forall ((value Float32) (min_value Float32) (max_value Float32))
  (! (=>
     (and
     (and (dynamic_invariant value true true true) (dynamic_invariant
     min_value true true true)) (dynamic_invariant max_value true true true))
     (let ((result (saturate value min_value max_value)))
     (and
     (ite (fp.lt value min_value) (fp.eq result min_value)
     (ite (fp.lt max_value value) (fp.eq result max_value)
     (fp.eq result value))) (dynamic_invariant result true false true)))) :pattern (
  (saturate value min_value max_value)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun euler_roll_actual () Float32)

(declare-fun euler_pitch_actual () Float32)

(declare-fun euler_yaw_actual () Float32)

(declare-fun q0 () Float32)

(declare-fun q1 () Float32)

(declare-fun q2 () Float32)

(declare-fun q3 () Float32)

(declare-fun grav_x () Float32)

(declare-fun grav_y () Float32)

(declare-fun grav_z () Float32)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun o2 () Float32)

(declare-fun o3 () Float32)

(declare-fun o4 () Float32)

(declare-fun o5 () Float32)

(declare-fun result () Float32)

(declare-fun grav_x1 () Float32)

(declare-fun result1 () Float32)

(declare-fun grav_y1 () Float32)

(declare-fun result2 () Float32)

(declare-fun grav_z1 () Float32)

(declare-fun result3 () Float32)

(declare-fun grav_x2 () Float32)

(declare-fun result4 () Float32)

(declare-fun euler_yaw_actual1 () Float32)

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b10000111 #b01101000000000000000000)) (fp #b0 #b10000111 #b01101000000000000000000))
  (in_range1 euler_roll_actual)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b10000111 #b01101000000000000000000)) (fp #b0 #b10000111 #b01101000000000000000000))
  (in_range1 euler_pitch_actual)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b10000111 #b01101000000000000000000)) (fp #b0 #b10000111 #b01101000000000000000000))
  (in_range1 euler_yaw_actual)))

;; H
  (assert (in_range2 q0))

;; H
  (assert (in_range2 q1))

;; H
  (assert (in_range2 q2))

;; H
  (assert (in_range2 q3))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite grav_x) (fp.isNaN grav_x)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite grav_y) (fp.isNaN grav_y)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite grav_z) (fp.isNaN grav_z)))))

;; H
  (assert (= result grav_x))

;; H
  (assert
  (= grav_x1 (fp.mul RNE (fp #b0 #b10000000 #b00000000000000000000000) (fp.sub RNE (fp.mul RNE 
  q1 q3) (fp.mul RNE q0 q2)))))

;; H
  (assert (= result1 grav_y))

;; H
  (assert
  (= grav_y1 (fp.mul RNE (fp #b0 #b10000000 #b00000000000000000000000) (fp.add RNE (fp.mul RNE 
  q0 q1) (fp.mul RNE q2 q3)))))

;; H
  (assert (= result2 grav_z))

;; H
  (assert
  (= grav_z1 (fp.add RNE (fp.sub RNE (fp.sub RNE (fp.mul RNE q0 q0) (fp.mul RNE 
  q1 q1)) (fp.mul RNE q2 q2)) (fp.mul RNE q3 q3))))

;; H
  (assert
  (and
  (= o (saturate grav_x1
       (fp.neg (fp #b0 #b01111111 #b00000000000000000000000))
       (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (not (or (fp.isInfinite o) (fp.isNaN o)))
  (ite (fp.lt grav_x1 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)))
  (fp.eq o (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)))
  (ite (fp.lt (fp #b0 #b01111111 #b00000000000000000000000) grav_x1)
  (fp.eq o (fp #b0 #b01111111 #b00000000000000000000000)) (fp.eq o grav_x1))))))

;; H
  (assert (= result3 grav_x1))

;; H
  (assert (= grav_x2 o))

;; H
  (assert
  (and
  (= o1 (atan_2
        (fp.mul RNE (fp #b0 #b10000000 #b00000000000000000000000) (fp.add RNE (fp.mul RNE 
        q0 q3) (fp.mul RNE q1 q2)))
        (fp.sub RNE (fp.sub RNE (fp.add RNE (fp.mul RNE q0 q0) (fp.mul RNE 
        q1 q1)) (fp.mul RNE q2 q2)) (fp.mul RNE q3 q3))))
  (in_range3 o1)))

;; H
  (assert
  (= o2 (fp.mul RNE o1 (fp #b0 #b10000110 #b01101000000000000000000))))

;; H
  (assert
  (= o3 (fp.div RNE o2 (fp #b0 #b10000000 #b10010010000111111011011))))

;; H
  (assert (= result4 euler_yaw_actual))

;; H
  (assert (= euler_yaw_actual1 o3))

;; H
  (assert (and (= o4 (asin grav_x2)) (in_range3 o4)))

;; H
  (assert
  (= o5 (fp.mul RNE o4 (fp #b0 #b10000110 #b01101000000000000000000))))

(assert
;; WP_parameter_def
 ;; File "sensfusion6_pack.adb", line 248, characters 0-0
  (not
  (not
  (fp.eq (fp #b0 #b10000000 #b10010010000111111011011) ((_ to_fp 8 24) #x00000000)))))
(check-sat)
