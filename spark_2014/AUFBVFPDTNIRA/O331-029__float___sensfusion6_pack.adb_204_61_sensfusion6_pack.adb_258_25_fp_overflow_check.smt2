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
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort float 0)

(define-fun bool_eq1 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-sort t_rate 0)

(define-fun in_range2 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10001010 #b01110111000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10001010 #b01110111000000000000000)))))

(define-fun bool_eq2 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq1 (t_rate t_rate) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () t_rate)

(declare-datatypes ()
((t_rate__ref (mk_t_rate__ref (t_rate__content t_rate)))))
(define-fun t_rate__ref___projection ((a t_rate__ref)) t_rate (t_rate__content
                                                              a))

(define-fun dynamic_invariant1 ((temp___expr_140 Float32)
  (temp___is_init_137 Bool) (temp___skip_constant_138 Bool)
  (temp___do_toplevel_139 Bool)) Bool (=>
                                      (or (= temp___is_init_137 true)
                                      (fp.leq (fp.neg (fp #b0 #b10001010 #b01110111000000000000000)) (fp #b0 #b10001010 #b01110111000000000000000)))
                                      (in_range2 temp___expr_140)))

(declare-sort t_acc 0)

(define-fun in_range3 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000011 #b00000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000011 #b00000000000000000000000)))))

(define-fun bool_eq3 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq2 (t_acc t_acc) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy2 () t_acc)

(declare-datatypes () ((t_acc__ref (mk_t_acc__ref (t_acc__content t_acc)))))
(define-fun t_acc__ref___projection ((a t_acc__ref)) t_acc (t_acc__content a))

(define-fun dynamic_invariant2 ((temp___expr_146 Float32)
  (temp___is_init_143 Bool) (temp___skip_constant_144 Bool)
  (temp___do_toplevel_145 Bool)) Bool (=>
                                      (or (= temp___is_init_143 true)
                                      (fp.leq (fp.neg (fp #b0 #b10000011 #b00000000000000000000000)) (fp #b0 #b10000011 #b00000000000000000000000)))
                                      (in_range3 temp___expr_146)))

(declare-sort t_acc_lifted 0)

(define-fun in_range4 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000011 #b00000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000011 #b00000000000000000000000)))))

(define-fun bool_eq4 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq3 (t_acc_lifted t_acc_lifted) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Float32)

(declare-fun dummy3 () t_acc_lifted)

(declare-datatypes ()
((t_acc_lifted__ref
 (mk_t_acc_lifted__ref (t_acc_lifted__content t_acc_lifted)))))
(define-fun t_acc_lifted__ref___projection ((a t_acc_lifted__ref)) t_acc_lifted 
  (t_acc_lifted__content a))

(define-fun dynamic_invariant3 ((temp___expr_158 Float32)
  (temp___is_init_155 Bool) (temp___skip_constant_156 Bool)
  (temp___do_toplevel_157 Bool)) Bool (=>
                                      (or (= temp___is_init_155 true)
                                      (fp.leq (fp.neg (fp #b0 #b10000011 #b00000000000000000000000)) (fp #b0 #b10000011 #b00000000000000000000000)))
                                      (in_range4 temp___expr_158)))

(declare-sort positive_float 0)

(define-fun in_range5 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b11111110 #b11111111111111111111111)))))

(define-fun bool_eq5 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq4 (positive_float positive_float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE5 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Float32)

(declare-fun dummy4 () positive_float)

(declare-datatypes ()
((positive_float__ref
 (mk_positive_float__ref (positive_float__content positive_float)))))
(define-fun positive_float__ref___projection ((a positive_float__ref)) positive_float 
  (positive_float__content a))

(define-fun dynamic_invariant4 ((temp___expr_1294 Float32)
  (temp___is_init_1291 Bool) (temp___skip_constant_1292 Bool)
  (temp___do_toplevel_1293 Bool)) Bool (=>
                                       (or (= temp___is_init_1291 true)
                                       (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b11111110 #b11111111111111111111111)))
                                       (in_range5 temp___expr_1294)))

(declare-sort t_delta_time 0)

(define-fun in_range6 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b01110101 #b00000110001001001101111) x)
                                         (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))))

(define-fun bool_eq6 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq5 (t_delta_time t_delta_time) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE6 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Float32)

(declare-fun dummy5 () t_delta_time)

(declare-datatypes ()
((t_delta_time__ref
 (mk_t_delta_time__ref (t_delta_time__content t_delta_time)))))
(define-fun t_delta_time__ref___projection ((a t_delta_time__ref)) t_delta_time 
  (t_delta_time__content a))

(define-fun dynamic_invariant5 ((temp___expr_1300 Float32)
  (temp___is_init_1297 Bool) (temp___skip_constant_1298 Bool)
  (temp___do_toplevel_1299 Bool)) Bool (=>
                                       (or (= temp___is_init_1297 true)
                                       (fp.leq (fp #b0 #b01110101 #b00000110001001001101111) (fp #b0 #b01111111 #b00000000000000000000000)))
                                       (in_range6 temp___expr_1300)))

(declare-sort t_alpha 0)

(define-fun in_range7 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))))

(define-fun bool_eq7 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq6 (t_alpha t_alpha) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE7 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Float32)

(declare-fun dummy6 () t_alpha)

(declare-datatypes ()
((t_alpha__ref (mk_t_alpha__ref (t_alpha__content t_alpha)))))
(define-fun t_alpha__ref___projection ((a t_alpha__ref)) t_alpha (t_alpha__content
                                                                 a))

(define-fun dynamic_invariant6 ((temp___expr_1306 Float32)
  (temp___is_init_1303 Bool) (temp___skip_constant_1304 Bool)
  (temp___do_toplevel_1305 Bool)) Bool (=>
                                       (or (= temp___is_init_1303 true)
                                       (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000)))
                                       (in_range7 temp___expr_1306)))

(declare-sort t_quaternion 0)

(define-fun in_range8 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))))

(define-fun bool_eq8 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq7 (t_quaternion t_quaternion) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE8 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Float32)

(declare-fun dummy7 () t_quaternion)

(declare-datatypes ()
((t_quaternion__ref
 (mk_t_quaternion__ref (t_quaternion__content t_quaternion)))))
(define-fun t_quaternion__ref___projection ((a t_quaternion__ref)) t_quaternion 
  (t_quaternion__content a))

(define-fun dynamic_invariant7 ((temp___expr_1336 Float32)
  (temp___is_init_1333 Bool) (temp___skip_constant_1334 Bool)
  (temp___do_toplevel_1335 Bool)) Bool (=>
                                       (or (= temp___is_init_1333 true)
                                       (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) (fp #b0 #b01111111 #b00000000000000000000000)))
                                       (in_range8 temp___expr_1336)))

(declare-fun inv_sqrt (Float32) Float32)

(declare-fun inv_sqrt__function_guard (Float32 Float32) Bool)

;; inv_sqrt__post_axiom
  (assert
  (forall ((x Float32))
  (! (=>
     (and (dynamic_invariant x true true true)
     (fp.leq (fp #b0 #b00000000 #b00000000000000000000001) x))
     (let ((result (inv_sqrt x)))
     (and
     (and (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) result)
     (fp.lt result (fp #b0 #b11000010 #b01011010111100011101100)))
     (dynamic_invariant result true false true)))) :pattern ((inv_sqrt x)) )))

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

(declare-fun lift_away_from_zero (Float32) Float32)

(declare-fun lift_away_from_zero__function_guard (Float32 Float32) Bool)

;; lift_away_from_zero__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant2 x true true true)
     (let ((result (lift_away_from_zero x)))
     (and
     (ite (fp.eq x (fp #b0 #b00000000 #b00000000000000000000000))
     (fp.eq result (fp #b0 #b00000000 #b00000000000000000000000))
     (=> (neq x (fp #b0 #b00000000 #b00000000000000000000000)) (neq result
     (fp #b0 #b00000000 #b00000000000000000000000)))) (dynamic_invariant3
     result true false true)))) :pattern ((lift_away_from_zero x)) )))

(declare-fun gx () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun gy () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun gz () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun ax () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun ay () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun az () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun dt () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS12 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS13 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS14 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS15 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS16 () Int)

(declare-fun c3b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS17 () Int)

(declare-fun c4b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS18 () Int)

(declare-fun c5b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS19 () Int)

(declare-fun c6b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS20 () Int)

(declare-fun c7b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS21 () Int)

(declare-fun c8b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS22 () Int)

(declare-fun c9b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS23 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS24 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS25 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS26 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS27 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS28 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS29 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS30 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS31 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS32 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS33 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS34 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS35 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS36 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS37 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS38 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS39 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS40 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS41 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS42 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS43 () Int)

(declare-fun c11b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS44 () Int)

(declare-fun c12b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS45 () Int)

(declare-fun c13b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS46 () Int)

(declare-fun c14b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS47 () Int)

(declare-fun c15b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS48 () Int)

(declare-fun c16b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS49 () Int)

(declare-fun c17b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS50 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS51 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS52 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS53 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS54 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS55 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS56 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS57 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS58 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS59 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS60 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS61 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS62 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS63 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS64 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS65 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS66 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS67 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS68 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS69 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS70 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS71 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS72 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS73 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS74 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS75 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS76 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS77 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS78 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS79 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS80 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS81 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS82 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS83 () Int)

(declare-fun q0 () Float32)

(declare-fun q1 () Float32)

(declare-fun q2 () Float32)

(declare-fun q3 () Float32)

(declare-fun two_kp () Float32)

(declare-fun two_ki () Float32)

(declare-fun integral_fbx () Float32)

(declare-fun integral_fby () Float32)

(declare-fun integral_fbz () Float32)

(declare-fun beta () Float32)

(declare-fun recip_norm () Float32)

(declare-fun norm_ax () Float32)

(declare-fun norm_ay () Float32)

(declare-fun norm_az () Float32)

(declare-fun rad_gx () Float32)

(declare-fun rad_gy () Float32)

(declare-fun rad_gz () Float32)

(declare-fun half_vx () Float32)

(declare-fun half_vy () Float32)

(declare-fun half_vz () Float32)

(declare-fun half_ex () Float32)

(declare-fun half_ey () t__ref)

(declare-fun half_ez () t__ref)

(declare-fun q0_tmp () t__ref)

(declare-fun q1_tmp () t__ref)

(declare-fun q2_tmp () t__ref)

(declare-fun q3_tmp () t__ref)

(declare-fun qa () t__ref)

(declare-fun qb () t__ref)

(declare-fun qc () t__ref)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun o2 () Float32)

(declare-fun o3 () Float32)

(declare-fun o4 () Float32)

(declare-fun o5 () Float32)

(declare-fun o6 () Float32)

(declare-fun o7 () Float32)

(declare-fun o8 () Float32)

(declare-fun o9 () Float32)

(declare-fun o10 () Float32)

(declare-fun o11 () Float32)

(declare-fun o12 () Float32)

(declare-fun o13 () Float32)

(declare-fun o14 () Float32)

(declare-fun o15 () Float32)

(declare-fun o16 () Float32)

(declare-fun o17 () Float32)

(declare-fun o18 () Float32)

(declare-fun o19 () Float32)

(declare-fun o20 () Float32)

(declare-fun o21 () Float32)

(declare-fun o22 () Float32)

(declare-fun o23 () Float32)

(declare-fun o24 () Float32)

(declare-fun o25 () Float32)

(declare-fun o26 () Float32)

(declare-fun o27 () Float32)

(declare-fun o28 () Float32)

(declare-fun result () t__ref)

(declare-fun rad_gx1 () Float32)

(declare-fun result1 () t__ref)

(declare-fun rad_gy1 () Float32)

(declare-fun result2 () t__ref)

(declare-fun rad_gz1 () Float32)

(declare-fun result3 () t__ref)

(declare-fun half_vx1 () Float32)

(declare-fun result4 () t__ref)

(declare-fun half_vy1 () Float32)

(declare-fun result5 () t__ref)

(declare-fun half_vz1 () Float32)

(declare-fun result6 () t__ref)

(declare-fun qa1 () Float32)

(declare-fun result7 () t__ref)

(declare-fun qb1 () Float32)

(declare-fun result8 () t__ref)

(declare-fun qc1 () Float32)

(declare-fun result9 () t__ref)

(declare-fun recip_norm1 () Float32)

(declare-fun result10 () t__ref)

(declare-fun norm_ax1 () Float32)

(declare-fun result11 () t__ref)

(declare-fun norm_ay1 () Float32)

(declare-fun result12 () t__ref)

(declare-fun norm_az1 () Float32)

(declare-fun result13 () t__ref)

(declare-fun half_ex1 () Float32)

(declare-fun result14 () t__ref)

(declare-fun half_ey1 () Float32)

(declare-fun result15 () t__ref)

(declare-fun half_ez1 () Float32)

(declare-fun result16 () t__ref)

(declare-fun integral_fbx1 () Float32)

;; H
  (assert (in_range2 gx))

;; H
  (assert (in_range2 gy))

;; H
  (assert (in_range2 gz))

;; H
  (assert (in_range3 ax))

;; H
  (assert (in_range3 ay))

;; H
  (assert (in_range3 az))

;; H
  (assert (in_range6 dt))

;; H
  (assert (in_range8 q0))

;; H
  (assert (in_range8 q1))

;; H
  (assert (in_range8 q2))

;; H
  (assert (in_range8 q3))

;; H
  (assert (not (or (fp.isInfinite two_kp) (fp.isNaN two_kp))))

;; H
  (assert (not (or (fp.isInfinite two_ki) (fp.isNaN two_ki))))

;; H
  (assert (not (or (fp.isInfinite integral_fbx) (fp.isNaN integral_fbx))))

;; H
  (assert (not (or (fp.isInfinite integral_fby) (fp.isNaN integral_fby))))

;; H
  (assert (not (or (fp.isInfinite integral_fbz) (fp.isNaN integral_fbz))))

;; H
  (assert (in_range7 beta))

;; H
  (assert (= gx c3b))

;; H
  (assert (in_range2 c3b))

;; H
  (assert (= gy c4b))

;; H
  (assert (in_range2 c4b))

;; H
  (assert (= gz c5b))

;; H
  (assert (in_range2 c5b))

;; H
  (assert (= ax c6b))

;; H
  (assert (in_range3 c6b))

;; H
  (assert (= ay c7b))

;; H
  (assert (in_range3 c7b))

;; H
  (assert (= az c8b))

;; H
  (assert (in_range3 c8b))

;; H
  (assert (= dt c9b))

;; H
  (assert (in_range6 c9b))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite recip_norm) (fp.isNaN recip_norm)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b10000011 #b00000000000000000000000)) (fp #b0 #b10000011 #b00000000000000000000000))
  (in_range3 norm_ax)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b10000011 #b00000000000000000000000)) (fp #b0 #b10000011 #b00000000000000000000000))
  (in_range3 norm_ay)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b10000011 #b00000000000000000000000)) (fp #b0 #b10000011 #b00000000000000000000000))
  (in_range3 norm_az)))

;; H
  (assert (= result (mk_t__ref rad_gx)))

;; H
  (assert
  (= rad_gx1 (fp.div RNE (fp.mul RNE c3b (fp #b0 #b10000000 #b10010010000111111011011)) (fp #b0 #b10000110 #b01101000000000000000000))))

;; H
  (assert (not (or (fp.isInfinite rad_gx1) (fp.isNaN rad_gx1))))

;; H
  (assert (= result1 (mk_t__ref rad_gy)))

;; H
  (assert
  (= rad_gy1 (fp.div RNE (fp.mul RNE c4b (fp #b0 #b10000000 #b10010010000111111011011)) (fp #b0 #b10000110 #b01101000000000000000000))))

;; H
  (assert (not (or (fp.isInfinite rad_gy1) (fp.isNaN rad_gy1))))

;; H
  (assert (= result2 (mk_t__ref rad_gz)))

;; H
  (assert
  (= rad_gz1 (fp.div RNE (fp.mul RNE c5b (fp #b0 #b10000000 #b10010010000111111011011)) (fp #b0 #b10000110 #b01101000000000000000000))))

;; H
  (assert (not (or (fp.isInfinite rad_gz1) (fp.isNaN rad_gz1))))

;; H
  (assert (= result3 (mk_t__ref half_vx)))

;; H
  (assert (= half_vx1 (fp.sub RNE (fp.mul RNE q1 q3) (fp.mul RNE q0 q2))))

;; H
  (assert (not (or (fp.isInfinite half_vx1) (fp.isNaN half_vx1))))

;; H
  (assert (= result4 (mk_t__ref half_vy)))

;; H
  (assert (= half_vy1 (fp.add RNE (fp.mul RNE q0 q1) (fp.mul RNE q2 q3))))

;; H
  (assert (not (or (fp.isInfinite half_vy1) (fp.isNaN half_vy1))))

;; H
  (assert (= result5 (mk_t__ref half_vz)))

;; H
  (assert
  (= half_vz1 (fp.add RNE (fp.sub RNE (fp.mul RNE q0 q0) (fp #b0 #b01111110 #b00000000000000000000000)) (fp.mul RNE 
  q3 q3))))

;; H
  (assert (not (or (fp.isInfinite half_vz1) (fp.isNaN half_vz1))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite half_ex) (fp.isNaN half_ex)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite (t__content half_ey)) (fp.isNaN (t__content
                                                          half_ey))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite (t__content half_ez)) (fp.isNaN (t__content
                                                          half_ez))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite (t__content q0_tmp)) (fp.isNaN (t__content q0_tmp))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite (t__content q1_tmp)) (fp.isNaN (t__content q1_tmp))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite (t__content q2_tmp)) (fp.isNaN (t__content q2_tmp))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite (t__content q3_tmp)) (fp.isNaN (t__content q3_tmp))))))

;; H
  (assert (= result6 qa))

;; H
  (assert (= (let ((subject qa)) qa1) q0))

;; H
  (assert (in_range8 (let ((subject qa)) qa1)))

;; H
  (assert (= result7 qb))

;; H
  (assert (= (let ((subject qb)) qb1) q1))

;; H
  (assert (in_range8 (let ((subject qb)) qb1)))

;; H
  (assert (= result8 qc))

;; H
  (assert (= (let ((subject qc)) qc1) q2))

;; H
  (assert (in_range8 (let ((subject qc)) qc1)))

;; H
  (assert
  (not
  (and (fp.eq c6b (fp #b0 #b00000000 #b00000000000000000000000))
  (and (fp.eq c7b (fp #b0 #b00000000 #b00000000000000000000000))
  (fp.eq c8b (fp #b0 #b00000000 #b00000000000000000000000))))))

;; H
  (assert
  (and
  (= o (inv_sqrt
       (fp.add RNE (fp.add RNE (fp.mul RNE c6b c6b) (fp.mul RNE c7b c7b)) (fp.mul RNE 
       c8b c8b))))
  (and (not (or (fp.isInfinite o) (fp.isNaN o)))
  (and (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) o)
  (fp.lt o (fp #b0 #b11000010 #b01011010111100011101100))))))

;; H
  (assert (= result9 (mk_t__ref recip_norm)))

;; H
  (assert (= recip_norm1 o))

;; H
  (assert
  (and (= o1 (fp.mul RNE c6b recip_norm1))
  (not (or (fp.isInfinite (fp.mul RNE c6b recip_norm1)) (fp.isNaN (fp.mul RNE 
  c6b recip_norm1))))))

;; H
  (assert
  (and
  (= o2 (saturate o1 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000))
        (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (not (or (fp.isInfinite o2) (fp.isNaN o2)))
  (ite (fp.lt o1 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)))
  (fp.eq o2 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)))
  (ite (fp.lt (fp #b0 #b01111111 #b00000000000000000000000) o1)
  (fp.eq o2 (fp #b0 #b01111111 #b00000000000000000000000)) (fp.eq o2 
  o1))))))

;; H
  (assert (and (= o3 o2) (not (or (fp.isInfinite o2) (fp.isNaN o2)))))

;; H
  (assert (= result10 (mk_t__ref norm_ax)))

;; H
  (assert (= norm_ax1 o3))

;; H
  (assert
  (and (= o4 (fp.mul RNE c7b recip_norm1))
  (not (or (fp.isInfinite (fp.mul RNE c7b recip_norm1)) (fp.isNaN (fp.mul RNE 
  c7b recip_norm1))))))

;; H
  (assert
  (and
  (= o5 (saturate o4 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000))
        (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (not (or (fp.isInfinite o5) (fp.isNaN o5)))
  (ite (fp.lt o4 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)))
  (fp.eq o5 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)))
  (ite (fp.lt (fp #b0 #b01111111 #b00000000000000000000000) o4)
  (fp.eq o5 (fp #b0 #b01111111 #b00000000000000000000000)) (fp.eq o5 
  o4))))))

;; H
  (assert (and (= o6 o5) (not (or (fp.isInfinite o5) (fp.isNaN o5)))))

;; H
  (assert (= result11 (mk_t__ref norm_ay)))

;; H
  (assert (= norm_ay1 o6))

;; H
  (assert
  (and (= o7 (fp.mul RNE c8b recip_norm1))
  (not (or (fp.isInfinite (fp.mul RNE c8b recip_norm1)) (fp.isNaN (fp.mul RNE 
  c8b recip_norm1))))))

;; H
  (assert
  (and
  (= o8 (saturate o7 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000))
        (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (not (or (fp.isInfinite o8) (fp.isNaN o8)))
  (ite (fp.lt o7 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)))
  (fp.eq o8 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)))
  (ite (fp.lt (fp #b0 #b01111111 #b00000000000000000000000) o7)
  (fp.eq o8 (fp #b0 #b01111111 #b00000000000000000000000)) (fp.eq o8 
  o7))))))

;; H
  (assert (and (= o9 o8) (not (or (fp.isInfinite o8) (fp.isNaN o8)))))

;; H
  (assert (= result12 (mk_t__ref norm_az)))

;; H
  (assert (= norm_az1 o9))

;; H
  (assert
  (and (= o10 (fp.mul RNE norm_az1 half_vy1))
  (not (or (fp.isInfinite (fp.mul RNE norm_az1 half_vy1)) (fp.isNaN (fp.mul RNE 
  norm_az1 half_vy1))))))

;; H
  (assert
  (and (= o11 (fp.mul RNE norm_ay1 half_vz1))
  (not (or (fp.isInfinite (fp.mul RNE norm_ay1 half_vz1)) (fp.isNaN (fp.mul RNE 
  norm_ay1 half_vz1))))))

;; H
  (assert (= o12 (fp.sub RNE o11 o10)))

;; H
  (assert (and (= o13 o12) (not (or (fp.isInfinite o12) (fp.isNaN o12)))))

;; H
  (assert (= result13 (mk_t__ref half_ex)))

;; H
  (assert (= half_ex1 o13))

;; H
  (assert
  (and (= o14 (fp.mul RNE norm_ax1 half_vz1))
  (not (or (fp.isInfinite (fp.mul RNE norm_ax1 half_vz1)) (fp.isNaN (fp.mul RNE 
  norm_ax1 half_vz1))))))

;; H
  (assert
  (and (= o15 (fp.mul RNE norm_az1 half_vx1))
  (not (or (fp.isInfinite (fp.mul RNE norm_az1 half_vx1)) (fp.isNaN (fp.mul RNE 
  norm_az1 half_vx1))))))

;; H
  (assert (= o16 (fp.sub RNE o15 o14)))

;; H
  (assert (and (= o17 o16) (not (or (fp.isInfinite o16) (fp.isNaN o16)))))

;; H
  (assert (= result14 half_ey))

;; H
  (assert (= (let ((subject half_ey)) half_ey1) o17))

;; H
  (assert
  (and (= o18 (fp.mul RNE norm_ay1 half_vx1))
  (not (or (fp.isInfinite (fp.mul RNE norm_ay1 half_vx1)) (fp.isNaN (fp.mul RNE 
  norm_ay1 half_vx1))))))

;; H
  (assert
  (and (= o19 (fp.mul RNE norm_ax1 half_vy1))
  (not (or (fp.isInfinite (fp.mul RNE norm_ax1 half_vy1)) (fp.isNaN (fp.mul RNE 
  norm_ax1 half_vy1))))))

;; H
  (assert (= o20 (fp.sub RNE o19 o18)))

;; H
  (assert (and (= o21 o20) (not (or (fp.isInfinite o20) (fp.isNaN o20)))))

;; H
  (assert (= result15 half_ez))

;; H
  (assert (= (let ((subject half_ez)) half_ez1) o21))

;; H
  (assert (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) two_ki))

;; H
  (assert
  (and (= o22 (fp.mul RNE two_ki half_ex1))
  (not (or (fp.isInfinite (fp.mul RNE two_ki half_ex1)) (fp.isNaN (fp.mul RNE 
  two_ki half_ex1))))))

;; H
  (assert (= o23 (fp.mul RNE o22 c9b)))

;; H
  (assert (and (= o24 o23) (not (or (fp.isInfinite o23) (fp.isNaN o23)))))

;; H
  (assert (= o25 (fp.add RNE integral_fbx o24)))

;; H
  (assert (and (= o26 o25) (not (or (fp.isInfinite o25) (fp.isNaN o25)))))

;; H
  (assert (= result16 (mk_t__ref integral_fbx)))

;; H
  (assert (= integral_fbx1 o26))

;; H
  (assert
  (and (= o27 (fp.mul RNE two_ki (let ((subject half_ey)) half_ey1)))
  (not (or (fp.isInfinite (fp.mul RNE two_ki (let ((subject half_ey))
                                             half_ey1))) (fp.isNaN (fp.mul RNE 
  two_ki (let ((subject half_ey)) half_ey1)))))))

;; H
  (assert (= o28 (fp.mul RNE o27 c9b)))

(assert
;; WP_parameter_def
 ;; File "i-cexten.ads", line 59, characters 0-0
  (not (not (or (fp.isInfinite o28) (fp.isNaN o28)))))
(check-sat)
