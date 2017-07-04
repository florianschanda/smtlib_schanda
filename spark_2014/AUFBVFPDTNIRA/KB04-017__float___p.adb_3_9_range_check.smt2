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

(declare-fun id (Float32) Float32)

(declare-fun id__function_guard (Float32 Float32) Bool)

;; id__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (id x) true
     false true)) :pattern ((id x)) )))

;; id__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (= (id x) x)) :pattern (
  (id x)) )))

(declare-fun t_FIRST () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun t_LAST () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort ttB 0)

(define-fun bool_eq2 ((x Float32)
  (y Float32)) Bool (ite (fp.eq x y) true false))

(declare-fun user_eq1 (ttB ttB) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy1 () ttB)

(declare-datatypes () ((ttB__ref (mk_ttB__ref (ttB__content ttB)))))
(define-fun ttB__ref___projection ((a ttB__ref)) ttB (ttB__content a))

(declare-fun to_rep (ttB) Float32)

(declare-fun of_rep (Float32) ttB)

;; inversion_axiom
  (assert
  (forall ((x ttB)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x ttB))
  (! (not (or (fp.isInfinite (to_rep x)) (fp.isNaN (to_rep x)))) :pattern (
  (to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (= (to_rep (of_rep x)) x)) :pattern (
  (to_rep (of_rep x))) )))

(declare-fun first () Float32)

(declare-fun last () Float32)

(define-fun dynamic_property ((first_int Float32) (last_int Float32)
  (x Float32)) Bool (and (not (or (fp.isInfinite x) (fp.isNaN x)))
                    (and (fp.leq first_int x) (fp.leq x last_int))))

(declare-fun eq (Float32 Float32) Bool)

(declare-fun is_finite (Float32) Bool)

(define-fun bool_eq3 ((x Float32)
  (y Float32)) Bool (ite (eq x y) true false))

(declare-fun user_eq2 (ttB ttB) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy2 () ttB)

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 ttB)))))
(define-fun t__ref___projection ((a t__ref1)) ttB (t__content1 a))

(define-fun dynamic_invariant1 ((temp___expr_171 Float32)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)) Bool (=>
                                      (or (= temp___is_init_168 true)
                                      (fp.leq first last)) (dynamic_property
                                      first last temp___expr_171)))

;; first__def_axiom
  (assert (= first t_FIRST))

;; last__def_axiom
  (assert (= last t_LAST))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun p__t_FIRST__assume () Float32)

(declare-fun p__t_LAST__assume () Float32)

;; H
  (assert
  (and
  (= p__t_FIRST__assume (id (fp #b0 #b00000000 #b00000000000000000000000)))
  (and
  (not (or (fp.isInfinite p__t_FIRST__assume) (fp.isNaN p__t_FIRST__assume)))
  (= p__t_FIRST__assume (fp #b0 #b00000000 #b00000000000000000000000)))))

;; H
  (assert (= p__t_FIRST__assume t_FIRST))

;; H
  (assert (not (or (fp.isInfinite t_FIRST) (fp.isNaN t_FIRST))))

;; H
  (assert
  (and
  (= p__t_LAST__assume (id (fp #b0 #b01111111 #b00000000000000000000000)))
  (and
  (not (or (fp.isInfinite p__t_LAST__assume) (fp.isNaN p__t_LAST__assume)))
  (= p__t_LAST__assume (fp #b0 #b01111111 #b00000000000000000000000)))))

;; H
  (assert (= p__t_LAST__assume t_LAST))

;; H
  (assert (not (or (fp.isInfinite t_LAST) (fp.isNaN t_LAST))))

;; H
  (assert (fp.leq t_FIRST t_LAST))

(assert
;; WP_parameter_def
 ;; File "p.adb", line 2, characters 0-0
  (not
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) t_FIRST)))
(check-sat)
