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
     (=> (not (fp.eq x (fp #b0 #b00000000 #b00000000000000000000000)))
     (not (fp.eq result (fp #b0 #b00000000 #b00000000000000000000000)))))
     (dynamic_invariant3 result true false true)))) :pattern ((lift_away_from_zero
                                                              x)) )))

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

(declare-fun result () t__ref)

(declare-fun rad_gx1 () Float32)

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

(assert
;; WP_parameter_def
 ;; File "i-cexten.ads", line 59, characters 0-0
  (not (not (fp.isZero      (fp #b0 #b10000110 #b01101000000000000000000)))))
(check-sat)
