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

(declare-sort nb_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 100)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (nb_type nb_type) Bool)

(declare-fun dummy1 () nb_type)

(declare-datatypes ()
((nb_type__ref (mk_nb_type__ref (nb_type__content nb_type)))))
(define-fun nb_type__ref___projection ((a nb_type__ref)) nb_type (nb_type__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 100)) (in_range2
                                      temp___expr_135)))

(declare-sort d_time_type 0)

(define-fun in_range3 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10001000 #b11110100000000000000000)))))

(declare-fun user_eq2 (d_time_type d_time_type) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy2 () d_time_type)

(declare-datatypes ()
((d_time_type__ref (mk_d_time_type__ref (d_time_type__content d_time_type)))))
(define-fun d_time_type__ref___projection ((a d_time_type__ref)) d_time_type 
  (d_time_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_141 Float32)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001000 #b11110100000000000000000)))
                                      (in_range3 temp___expr_141)))

(declare-sort delta_time_type 0)

(define-fun in_range4 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))))

(declare-fun user_eq3 (delta_time_type delta_time_type) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Float32)

(declare-fun dummy3 () delta_time_type)

(declare-datatypes ()
((delta_time_type__ref
 (mk_delta_time_type__ref (delta_time_type__content delta_time_type)))))
(define-fun delta_time_type__ref___projection ((a delta_time_type__ref)) delta_time_type 
  (delta_time_type__content a))

(define-fun dynamic_invariant3 ((temp___expr_147 Float32)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000)))
                                      (in_range4 temp___expr_147)))

(declare-fun nb_of_fp () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun nb_of_pp () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun delta_time () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun time () Float32)

(declare-fun d () Float32)

(declare-fun t_fp () Float32)

(declare-fun t_pp () Float32)

(declare-fun result () Float32)

(declare-fun d1 () Float32)

;; H
  (assert (in_range2 nb_of_fp))

;; H
  (assert (in_range2 nb_of_pp))

;; H
  (assert (in_range4 delta_time))

;; H
  (assert (not (or (fp.isInfinite time) (fp.isNaN time))))

;; H
  (assert
  (and
  (and
  (and (< 0 nb_of_pp)
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) delta_time))
  (fp.leq (fp.mul RNE (fp.mul RNE (fp #b0 #b01111110 #b00000000000000000000000) 
  (of_int RNE (+ nb_of_fp nb_of_pp))) delta_time) time))
  (fp.lt time (fp.sub RNE (fp #b0 #b11111110 #b11111111111111111111111) (fp.mul RNE 
  (of_int RNE (+ nb_of_fp nb_of_pp)) delta_time)))))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10001000 #b11110100000000000000000))
  (in_range3 d)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite t_fp) (fp.isNaN t_fp)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite t_pp) (fp.isNaN t_pp)))))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref d)))

;; H
  (assert (= d1 (fp.mul RNE (of_int RNE (+ nb_of_fp nb_of_pp)) delta_time)))

(assert
;; WP_parameter_def
 ;; File "original_sample.ads", line 15, characters 0-0
  (not (not (fp.isZero      (fp #b0 #b10000000 #b00000000000000000000000)))))
(check-sat)
