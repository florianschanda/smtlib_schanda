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

(declare-sort integer_16 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 32768) x) (<= x 32767)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (integer_16 integer_16) Bool)

(declare-fun dummy1 () integer_16)

(declare-datatypes ()
((integer_16__ref (mk_integer_16__ref (integer_16__content integer_16)))))
(define-fun integer_16__ref_2__projection ((a integer_16__ref)) integer_16 
  (integer_16__content a))

(define-fun dynamic_invariant1 ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= (- 32768) 32767)) (in_range1
                                      temp___expr_153)))

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun o () Float32)

(declare-fun o1 () Int)

;; H
  (assert (in_range1 i))

;; H
  (assert
  (and (= o (sqrt1 (of_int RNE i)))
  (and (not (or (fp.isInfinite o) (fp.isNaN o)))
  (and (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) o)
  (and
  (=> (fp.eq (of_int RNE i) (fp #b0 #b00000000 #b00000000000000000000000))
  (fp.eq o (fp #b0 #b00000000 #b00000000000000000000000)))
  (and
  (=> (fp.eq (of_int RNE i) (fp #b0 #b01111111 #b00000000000000000000000))
  (fp.eq o (fp #b0 #b01111111 #b00000000000000000000000)))
  (=> (fp.leq (fp #b0 #b00000000 #b00000000000000000000001) (of_int RNE i))
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) o))))))))

;; H
  (assert (= o1 (to_int1 RNA o)))

(assert
;; WP_parameter_def
 ;; File "interfac.ads", line 49, characters 0-0
  (not (in_range1 o1)))
(check-sat)
