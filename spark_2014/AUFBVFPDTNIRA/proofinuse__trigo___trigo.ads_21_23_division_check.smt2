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

(declare-fun pow21 (Float32) Float32)

(declare-fun pow2__function_guard (Float32 Float32) Bool)

;; pow2__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (pow21 x)
     true false true)) :pattern ((pow21 x)) )))

;; pow2__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (= (pow21 x) (fp.mul RNE x x))) :pattern (
  (pow21 x)) )))

(declare-fun pow4 (Float32) Float32)

(declare-fun pow4__function_guard (Float32 Float32) Bool)

;; pow4__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (pow4 x)
     true false true)) :pattern ((pow4 x)) )))

;; pow4__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (pow4 x) (fp.mul RNE (fp.mul RNE (fp.mul RNE x x) x) x))) :pattern (
  (pow4 x)) )))

(declare-fun pow6 (Float32) Float32)

(declare-fun pow6__function_guard (Float32 Float32) Bool)

;; pow6__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (pow6 x)
     true false true)) :pattern ((pow6 x)) )))

;; pow6__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (pow6 x) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x x) x) x) x) x))) :pattern (
  (pow6 x)) )))

(declare-fun pow8 (Float32) Float32)

(declare-fun pow8__function_guard (Float32 Float32) Bool)

;; pow8__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (pow8 x)
     true false true)) :pattern ((pow8 x)) )))

;; pow8__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (pow8 x) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x x) x) x) x) x) x) x))) :pattern (
  (pow8 x)) )))

(declare-fun x () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun o2 () Float32)

(declare-fun o3 () Float32)

(declare-fun o4 () Float32)

(declare-fun o5 () Float32)

(declare-fun o6 () Float32)

;; H
  (assert (not (or (fp.isInfinite x) (fp.isNaN x))))

;; H
  (assert
  (and (= o5 (pow8 x))
  (and (not (or (fp.isInfinite o5) (fp.isNaN o5)))
  (= o5 (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE 
  x x) x) x) x) x) x) x)))))

;; H
  (assert
  (= o6 (fp.div RNE o5 (fp #b0 #b10001110 #b00111011000000000000000))))

;; H
  (assert
  (and (= o3 (pow6 x))
  (and (not (or (fp.isInfinite o3) (fp.isNaN o3)))
  (= o3 (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x 
  x) x) x) x) x)))))

;; H
  (assert
  (= o4 (fp.div RNE o3 (fp #b0 #b10001000 #b01101000000000000000000))))

;; H
  (assert
  (and (= o1 (pow4 x))
  (and (not (or (fp.isInfinite o1) (fp.isNaN o1)))
  (= o1 (fp.mul RNE (fp.mul RNE (fp.mul RNE x x) x) x)))))

;; H
  (assert
  (= o2 (fp.div RNE o1 (fp #b0 #b10000011 #b10000000000000000000000))))

;; H
  (assert
  (and (= o (pow21 x))
  (and (not (or (fp.isInfinite o) (fp.isNaN o))) (= o (fp.mul RNE x x)))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (not
  (fp.eq (fp #b0 #b10000000 #b00000000000000000000000) ((_ to_fp 8 24) #x00000000)))))
(check-sat)
