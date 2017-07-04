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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun copy () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun x () Float32)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun o2 () Float32)

(declare-fun x1 () Float32)

(declare-fun result () Float32)

(declare-fun x2 () Float32)

(declare-fun result1 () Float32)

(declare-fun x3 () Float32)

(declare-fun result2 () Float32)

(declare-fun x4 () Float32)

(declare-fun result3 () Bool)

;; H
  (assert (not (or (fp.isInfinite x) (fp.isNaN x))))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x) (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (= o (fp.add RNE x x))
  (not (or (fp.isInfinite (fp.add RNE x x)) (fp.isNaN (fp.add RNE x x)))))))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x) (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))
  (= (mk_t__ref result) (mk_t__ref x))))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x) (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000))) (= x2 
  o)))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x) (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (fp.leq (fp.neg (fp #b0 #b10000000 #b00000000000000000000000)) 
  x2) (fp.leq x2 (fp #b0 #b10000000 #b00000000000000000000000)))))

;; H
  (assert
  (=>
  (not
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x) (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))) (= x2 
  x)))

;; H
  (assert
  (=>
  (not
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x) (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000)))) (= x2 
  x1)))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x2) (fp.leq x2 (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (= o1 (fp.mul RNE x2 (fp #b0 #b10000000 #b00000000000000000000000)))
  (not (or (fp.isInfinite (fp.mul RNE x2 (fp #b0 #b10000000 #b00000000000000000000000))) (fp.isNaN (fp.mul RNE 
  x2 (fp #b0 #b10000000 #b00000000000000000000000))))))))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x2) (fp.leq x2 (fp #b0 #b01111111 #b00000000000000000000000)))
  (= x2 result1)))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x2) (fp.leq x2 (fp #b0 #b01111111 #b00000000000000000000000))) (= x3 
  o1)))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x2) (fp.leq x2 (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (fp.leq (fp.neg (fp #b0 #b10000000 #b00000000000000000000000)) 
  x3) (fp.leq x3 (fp #b0 #b10000000 #b00000000000000000000000)))))

;; H
  (assert
  (=>
  (not
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x2) (fp.leq x2 (fp #b0 #b01111111 #b00000000000000000000000)))) (= 
  x3 x2)))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x3) (fp.leq x3 (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (= o2 (fp.mul RNE x3 x3))
  (not (or (fp.isInfinite (fp.mul RNE x3 x3)) (fp.isNaN (fp.mul RNE x3 
  x3)))))))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x3) (fp.leq x3 (fp #b0 #b01111111 #b00000000000000000000000)))
  (= x3 result2)))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x3) (fp.leq x3 (fp #b0 #b01111111 #b00000000000000000000000))) (= x4 
  o2)))

;; H
  (assert
  (=>
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x3) (fp.leq x3 (fp #b0 #b01111111 #b00000000000000000000000)))
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x4) (fp.leq x4 (fp #b0 #b01111111 #b00000000000000000000000)))))

;; H
  (assert
  (=>
  (not
  (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) 
  x3) (fp.leq x3 (fp #b0 #b01111111 #b00000000000000000000000)))) (= 
  x4 x3)))

;; H
  (assert
  (= (= result3 true)
  (exists ((y Int))
  (and (and (<= 0 y) (<= y 100000))
  (fp.eq x4 (fp.mul RNE (fp.div RNE (of_int RNE y) (fp #b0 #b10001111 #b10000110101000000000000)) (fp.div RNE 
  (of_int RNE y) (fp #b0 #b10001111 #b10000110101000000000000))))))))

;; H
  (assert (= result3 true))

(assert
;; WP_parameter_def
 ;; File "hard_stuff.adb", line 1, characters 0-0
  (not (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x4)))
(check-sat)
