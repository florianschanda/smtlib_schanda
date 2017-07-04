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

(declare-fun sqrt1 (Float32) Float32)

(declare-fun sqrt__function_guard (Float32 Float32) Bool)

;; sqrt__post_axiom
  (assert
  (forall ((x Float32))
  (! (=>
     (and (dynamic_invariant x true true true)
     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x))
     (let ((result (sqrt1 x)))
     (and
     (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) result)
     (and
     (=> (fp.eq x (fp #b0 #b00000000 #b00000000000000000000000))
     (fp.eq result (fp #b0 #b00000000 #b00000000000000000000000)))
     (and
     (=> (fp.eq x (fp #b0 #b01111111 #b00000000000000000000000))
     (fp.eq result (fp #b0 #b01111111 #b00000000000000000000000)))
     (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000001) x)
     (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) result)))))
     (dynamic_invariant result true false true)))) :pattern ((sqrt1 x)) )))

(declare-sort coord 0)

(define-fun in_range2 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10001011 #b00000000000000000000000)))))

(declare-fun user_eq1 (coord coord) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () coord)

(declare-datatypes () ((coord__ref (mk_coord__ref (coord__content coord)))))
(define-fun coord__ref___projection ((a coord__ref)) coord (coord__content a))

(define-fun dynamic_invariant1 ((temp___expr_211 Float32)
  (temp___is_init_208 Bool) (temp___skip_constant_209 Bool)
  (temp___do_toplevel_210 Bool)) Bool (=>
                                      (or (= temp___is_init_208 true)
                                      (fp.leq (fp.neg (fp #b0 #b10001011 #b00000000000000000000000)) (fp #b0 #b10001011 #b00000000000000000000000)))
                                      (in_range2 temp___expr_211)))

(declare-fun a_x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun a_y () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun b_x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun b_y () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun c_x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun c_y () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun vec_ba_x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun vec_ba_y () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun vec_bc_x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun vec_bc_y () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun ba_dot_bc () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun length_ba () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS12 () Int)

(declare-fun length_bc () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS13 () Int)

;; vec_ba_x__def_axiom
  (assert (= vec_ba_x (fp.sub RNE a_x b_x)))

;; vec_ba_y__def_axiom
  (assert (= vec_ba_y (fp.sub RNE a_y b_y)))

;; vec_bc_x__def_axiom
  (assert (= vec_bc_x (fp.sub RNE c_x b_x)))

;; vec_bc_y__def_axiom
  (assert (= vec_bc_y (fp.sub RNE c_y b_y)))

;; ba_dot_bc__def_axiom
  (assert
  (= ba_dot_bc (fp.add RNE (fp.mul RNE vec_ba_x vec_bc_x) (fp.mul RNE 
  vec_ba_y vec_bc_y))))

;; length_ba__def_axiom
  (assert
  (= length_ba (sqrt1
               (fp.add RNE (fp.mul RNE (fp.sub RNE b_x a_x) (fp.sub RNE 
               b_x a_x)) (fp.mul RNE (fp.sub RNE b_y a_y) (fp.sub RNE 
               b_y a_y))))))

;; length_bc__def_axiom
  (assert
  (= length_bc (sqrt1
               (fp.add RNE (fp.mul RNE (fp.sub RNE b_x c_x) (fp.sub RNE 
               b_x c_x)) (fp.mul RNE (fp.sub RNE b_y c_y) (fp.sub RNE 
               b_y c_y))))))

(declare-fun res () Float32)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun o2 () Float32)

(declare-fun floating_point__angle_between__ba_dot_bc__assume () Float32)

(declare-fun o3 () Float32)

(declare-fun o4 () Float32)

(declare-fun o5 () Float32)

(declare-fun o6 () Float32)

(declare-fun floating_point__angle_between__length_ba__assume () Float32)

(declare-fun o7 () Float32)

(declare-fun o8 () Float32)

(declare-fun o9 () Float32)

;; H
  (assert (in_range2 a_x))

;; H
  (assert (in_range2 a_y))

;; H
  (assert (in_range2 b_x))

;; H
  (assert (in_range2 b_y))

;; H
  (assert (in_range2 c_x))

;; H
  (assert (in_range2 c_y))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite res) (fp.isNaN res)))))

;; H
  (assert (= (fp.sub RNE a_x b_x) vec_ba_x))

;; H
  (assert (not (or (fp.isInfinite vec_ba_x) (fp.isNaN vec_ba_x))))

;; H
  (assert (= (fp.sub RNE a_y b_y) vec_ba_y))

;; H
  (assert (not (or (fp.isInfinite vec_ba_y) (fp.isNaN vec_ba_y))))

;; H
  (assert (= (fp.sub RNE c_x b_x) vec_bc_x))

;; H
  (assert (not (or (fp.isInfinite vec_bc_x) (fp.isNaN vec_bc_x))))

;; H
  (assert (= (fp.sub RNE c_y b_y) vec_bc_y))

;; H
  (assert (not (or (fp.isInfinite vec_bc_y) (fp.isNaN vec_bc_y))))

;; H
  (assert
  (and (= o (fp.mul RNE vec_ba_y vec_bc_y))
  (not (or (fp.isInfinite (fp.mul RNE vec_ba_y vec_bc_y)) (fp.isNaN (fp.mul RNE 
  vec_ba_y vec_bc_y))))))

;; H
  (assert
  (and (= o1 (fp.mul RNE vec_ba_x vec_bc_x))
  (not (or (fp.isInfinite (fp.mul RNE vec_ba_x vec_bc_x)) (fp.isNaN (fp.mul RNE 
  vec_ba_x vec_bc_x))))))

;; H
  (assert (= o2 (fp.add RNE o1 o)))

;; H
  (assert
  (and (= floating_point__angle_between__ba_dot_bc__assume o2)
  (not (or (fp.isInfinite o2) (fp.isNaN o2)))))

;; H
  (assert (= floating_point__angle_between__ba_dot_bc__assume ba_dot_bc))

;; H
  (assert (not (or (fp.isInfinite ba_dot_bc) (fp.isNaN ba_dot_bc))))

;; H
  (assert
  (and (= o3 (fp.mul RNE (fp.sub RNE b_y a_y) (fp.sub RNE b_y a_y)))
  (not (or (fp.isInfinite (fp.mul RNE (fp.sub RNE b_y a_y) (fp.sub RNE 
  b_y a_y))) (fp.isNaN (fp.mul RNE (fp.sub RNE b_y a_y) (fp.sub RNE b_y 
  a_y)))))))

;; H
  (assert
  (and (= o4 (fp.mul RNE (fp.sub RNE b_x a_x) (fp.sub RNE b_x a_x)))
  (not (or (fp.isInfinite (fp.mul RNE (fp.sub RNE b_x a_x) (fp.sub RNE 
  b_x a_x))) (fp.isNaN (fp.mul RNE (fp.sub RNE b_x a_x) (fp.sub RNE b_x 
  a_x)))))))

;; H
  (assert (= o5 (fp.add RNE o4 o3)))

;; H
  (assert (and (= o6 o5) (not (or (fp.isInfinite o5) (fp.isNaN o5)))))

;; H
  (assert
  (and (= floating_point__angle_between__length_ba__assume (sqrt1 o6))
  (and
  (not (or (fp.isInfinite floating_point__angle_between__length_ba__assume) (fp.isNaN 
  floating_point__angle_between__length_ba__assume)))
  (and
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) floating_point__angle_between__length_ba__assume)
  (and
  (=> (fp.eq o6 (fp #b0 #b00000000 #b00000000000000000000000))
  (fp.eq floating_point__angle_between__length_ba__assume (fp #b0 #b00000000 #b00000000000000000000000)))
  (and
  (=> (fp.eq o6 (fp #b0 #b01111111 #b00000000000000000000000))
  (fp.eq floating_point__angle_between__length_ba__assume (fp #b0 #b01111111 #b00000000000000000000000)))
  (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000001) o6)
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) floating_point__angle_between__length_ba__assume))))))))

;; H
  (assert (= floating_point__angle_between__length_ba__assume length_ba))

;; H
  (assert (not (or (fp.isInfinite length_ba) (fp.isNaN length_ba))))

;; H
  (assert
  (and (= o7 (fp.mul RNE (fp.sub RNE b_y c_y) (fp.sub RNE b_y c_y)))
  (not (or (fp.isInfinite (fp.mul RNE (fp.sub RNE b_y c_y) (fp.sub RNE 
  b_y c_y))) (fp.isNaN (fp.mul RNE (fp.sub RNE b_y c_y) (fp.sub RNE b_y 
  c_y)))))))

;; H
  (assert
  (and (= o8 (fp.mul RNE (fp.sub RNE b_x c_x) (fp.sub RNE b_x c_x)))
  (not (or (fp.isInfinite (fp.mul RNE (fp.sub RNE b_x c_x) (fp.sub RNE 
  b_x c_x))) (fp.isNaN (fp.mul RNE (fp.sub RNE b_x c_x) (fp.sub RNE b_x 
  c_x)))))))

;; H
  (assert (= o9 (fp.add RNE o8 o7)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (not (or (fp.isInfinite o9) (fp.isNaN o9)))))
(check-sat)
