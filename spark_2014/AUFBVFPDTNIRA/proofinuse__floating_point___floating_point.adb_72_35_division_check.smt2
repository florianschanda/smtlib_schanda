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
(declare-fun power (Float32 Int) Float32)

;; Power_0
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (fp.eq (power x 0) (of_int RNE 1)))))

;; Power_1
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (fp.eq (power x 1) x))))

;; Power_2
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (fp.eq (power x 2) (fp.mul RNE x x)))))

;; Power_3
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (fp.eq (power x 3) (fp.mul RNE x (fp.mul RNE x x))))))

;; Power_neg1
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (=> (not (fp.isZero      x))
  (fp.eq (power x (- 1)) (fp.div RNE (of_int RNE 1) x))))))

;; Power_neg2
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (=> (not (fp.isZero      x))
  (fp.eq (power x (- 2)) (fp.div RNE (of_int RNE 1) (power x 2)))))))

;; Power_neg3
  (assert
  (forall ((x Float32))
  (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
  (=> (not (fp.isZero      x))
  (fp.eq (power x (- 2)) (fp.div RNE (of_int RNE 1) (power x 3)))))))

(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (positive positive) Bool)

(declare-fun dummy () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(declare-sort tfloat_32B 0)

(declare-fun user_eq1 (tfloat_32B tfloat_32B) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () tfloat_32B)

(declare-datatypes ()
((tfloat_32B__ref (mk_tfloat_32B__ref (tfloat_32B__content tfloat_32B)))))
(define-fun tfloat_32B__ref___projection ((a tfloat_32B__ref)) tfloat_32B 
  (tfloat_32B__content a))

(declare-sort float_32 0)

(declare-fun user_eq2 (float_32 float_32) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy2 () float_32)

(declare-datatypes ()
((float_32__ref (mk_float_32__ref (float_32__content float_32)))))
(define-fun float_32__ref___projection ((a float_32__ref)) float_32 (float_32__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_178 Float32)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (=>
                                      (or (= temp___is_init_175 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_178) (fp.isNaN temp___expr_178)))))

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun y () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun res () Float32)

(declare-fun o () Float32)

(declare-fun result () Float32)

(declare-fun res1 () Float32)

;; H
  (assert (in_range2 n))

;; H
  (assert (not (or (fp.isInfinite x) (fp.isNaN x))))

;; H
  (assert (not (or (fp.isInfinite y) (fp.isNaN y))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite res) (fp.isNaN res)))))

;; H
  (assert (and (<= 2 n) (<= n 46)))

;; H
  (assert
  (fp.lt x (fp.add RNE (fp.div RNE (power
                                   (fp #b0 #b01111111 #b10011110001110111100111)
                                   (- n 2)) (fp #b0 #b10000000 #b00011110001101010100000)) (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert
  (fp.lt y (fp.add RNE (fp.div RNE (power
                                   (fp #b0 #b01111111 #b10011110001110111100111)
                                   (- n 1)) (fp #b0 #b10000000 #b00011110001101010100000)) (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert
  (and (= o (fp.add RNE x y))
  (not (or (fp.isInfinite (fp.add RNE x y)) (fp.isNaN (fp.add RNE x y))))))

;; H
  (assert (= result res))

;; H
  (assert (= res1 o))

;; H
  (assert (< n 0))

(assert
;; WP_parameter_def
 ;; File "floating_point.adb", line 55, characters 0-0
  (not
  (not (fp.eq (fp #b0 #b01111111 #b10011110001110111100111) ((_ to_fp 8 24) #x00000000)))))
(check-sat)
