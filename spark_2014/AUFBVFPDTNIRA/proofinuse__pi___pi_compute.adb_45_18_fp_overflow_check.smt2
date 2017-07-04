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

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort float 0)

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

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun t1 () Float32)

(declare-fun t2 () Float32)

(declare-fun t3 () Float32)

(declare-fun t4 () Float32)

(declare-fun t5 () Float32)

(declare-fun t6 () Float32)

(declare-fun t7 () Float32)

(declare-fun t8 () Float32)

(declare-fun t9 () Float32)

(declare-fun t10 () Float32)

(declare-fun res () Float32)

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

(declare-fun result () Float32)

(declare-fun t11 () Float32)

(declare-fun result1 () Float32)

(declare-fun t21 () Float32)

(declare-fun result2 () Float32)

(declare-fun t31 () Float32)

(declare-fun result3 () Float32)

(declare-fun t41 () Float32)

(declare-fun result4 () Float32)

(declare-fun t51 () Float32)

(declare-fun result5 () Float32)

(declare-fun t61 () Float32)

(declare-fun result6 () Float32)

(declare-fun t71 () Float32)

(declare-fun result7 () Float32)

(declare-fun t81 () Float32)

(declare-fun result8 () Float32)

(declare-fun t91 () Float32)

(declare-fun result9 () t__ref)

(declare-fun t101 () Float32)

;; H
  (assert (= (mk_t__ref result) (mk_t__ref t1)))

;; H
  (assert (= t11 (fp #b0 #b01111111 #b00000000000000000000000)))

;; H
  (assert (not (or (fp.isInfinite t11) (fp.isNaN t11))))

;; H
  (assert (= (mk_t__ref result1) (mk_t__ref t2)))

;; H
  (assert (= t21 (fp #b0 #b01111101 #b01010101010101010101011)))

;; H
  (assert (not (or (fp.isInfinite t21) (fp.isNaN t21))))

;; H
  (assert (= (mk_t__ref result2) (mk_t__ref t3)))

;; H
  (assert (= t31 (fp #b0 #b01111100 #b10011001100110011001101)))

;; H
  (assert (not (or (fp.isInfinite t31) (fp.isNaN t31))))

;; H
  (assert (= (mk_t__ref result3) (mk_t__ref t4)))

;; H
  (assert (= t41 (fp #b0 #b01111100 #b00100100100100100100101)))

;; H
  (assert (not (or (fp.isInfinite t41) (fp.isNaN t41))))

;; H
  (assert (= (mk_t__ref result4) (mk_t__ref t5)))

;; H
  (assert (= t51 (fp #b0 #b01111011 #b11000111000111000111001)))

;; H
  (assert (not (or (fp.isInfinite t51) (fp.isNaN t51))))

;; H
  (assert (= (mk_t__ref result5) (mk_t__ref t6)))

;; H
  (assert (= t61 (fp #b0 #b01111011 #b01110100010111010001100)))

;; H
  (assert (not (or (fp.isInfinite t61) (fp.isNaN t61))))

;; H
  (assert (= (mk_t__ref result6) (mk_t__ref t7)))

;; H
  (assert (= t71 (fp #b0 #b01111011 #b00111011000100111011001)))

;; H
  (assert (not (or (fp.isInfinite t71) (fp.isNaN t71))))

;; H
  (assert (= (mk_t__ref result7) (mk_t__ref t8)))

;; H
  (assert (= t81 (fp #b0 #b01111011 #b00010001000100010001001)))

;; H
  (assert (not (or (fp.isInfinite t81) (fp.isNaN t81))))

;; H
  (assert (= (mk_t__ref result8) (mk_t__ref t9)))

;; H
  (assert (= t91 (fp #b0 #b01111010 #b11100001111000011110001)))

;; H
  (assert (not (or (fp.isInfinite t91) (fp.isNaN t91))))

;; H
  (assert (= result9 (mk_t__ref t10)))

;; H
  (assert (= t101 (fp #b0 #b01111010 #b10101111001010000110110)))

;; H
  (assert (not (or (fp.isInfinite t101) (fp.isNaN t101))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite res) (fp.isNaN res)))))

;; H
  (assert
  (and (= o (fp.sub RNE t11 t21))
  (not (or (fp.isInfinite (fp.sub RNE t11 t21)) (fp.isNaN (fp.sub RNE 
  t11 t21))))))

;; H
  (assert (= o1 (fp.add RNE o t31)))

;; H
  (assert (and (= o2 o1) (not (or (fp.isInfinite o1) (fp.isNaN o1)))))

;; H
  (assert (= o3 (fp.sub RNE o2 t41)))

;; H
  (assert (and (= o4 o3) (not (or (fp.isInfinite o3) (fp.isNaN o3)))))

;; H
  (assert (= o5 (fp.add RNE o4 t51)))

;; H
  (assert (and (= o6 o5) (not (or (fp.isInfinite o5) (fp.isNaN o5)))))

;; H
  (assert (= o7 (fp.sub RNE o6 t61)))

;; H
  (assert (and (= o8 o7) (not (or (fp.isInfinite o7) (fp.isNaN o7)))))

;; H
  (assert (= o9 (fp.add RNE o8 t71)))

;; H
  (assert (and (= o10 o9) (not (or (fp.isInfinite o9) (fp.isNaN o9)))))

;; H
  (assert (= o11 (fp.sub RNE o10 t81)))

;; H
  (assert (and (= o12 o11) (not (or (fp.isInfinite o11) (fp.isNaN o11)))))

;; H
  (assert (= o13 (fp.add RNE o12 t91)))

;; H
  (assert (and (= o14 o13) (not (or (fp.isInfinite o13) (fp.isNaN o13)))))

;; H
  (assert (= o15 (fp.sub RNE o14 t101)))

;; H
  (assert (and (= o16 o15) (not (or (fp.isInfinite o15) (fp.isNaN o15)))))

;; H
  (assert
  (= o17 (fp.mul RNE (fp #b0 #b10000001 #b00000000000000000000000) o16)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (not (or (fp.isInfinite o17) (fp.isNaN o17)))))
(check-sat)
