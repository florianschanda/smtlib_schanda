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

(declare-fun to_rep (float) Float32)

(declare-fun of_rep (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep x)) (fp.isNaN (to_rep x)))) :pattern (
  (to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (= (to_rep (of_rep x)) x)) :pattern (
  (to_rep (of_rep x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__package_1__record_t__a float)(rec__package_1__record_t__b float)))))
(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__package_1__record_t__a (us_split_fields1 a))) 
                        (to_rep
                        (rec__package_1__record_t__a (us_split_fields1 b))))
                        (= (to_rep
                           (rec__package_1__record_t__b (us_split_fields1 a))) 
                        (to_rep
                        (rec__package_1__record_t__b (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun package_1__record_t__a__first__bit () Int)

(declare-fun package_1__record_t__a__last__bit () Int)

(declare-fun package_1__record_t__a__position () Int)

;; package_1__record_t__a__first__bit_axiom
  (assert (<= 0 package_1__record_t__a__first__bit))

;; package_1__record_t__a__last__bit_axiom
  (assert
  (< package_1__record_t__a__first__bit package_1__record_t__a__last__bit))

;; package_1__record_t__a__position_axiom
  (assert (<= 0 package_1__record_t__a__position))

(declare-fun package_1__record_t__b__first__bit () Int)

(declare-fun package_1__record_t__b__last__bit () Int)

(declare-fun package_1__record_t__b__position () Int)

;; package_1__record_t__b__first__bit_axiom
  (assert (<= 0 package_1__record_t__b__first__bit))

;; package_1__record_t__b__last__bit_axiom
  (assert
  (< package_1__record_t__b__first__bit package_1__record_t__b__last__bit))

;; package_1__record_t__b__position_axiom
  (assert (<= 0 package_1__record_t__b__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((record_t__ref (mk_record_t__ref (record_t__content us_rep)))))
(define-fun record_t__ref___projection ((a record_t__ref)) us_rep (record_t__content
                                                                  a))

(declare-fun record_const () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun temp () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

;; temp__def_axiom
  (assert
  (= temp (to_rep
          (rec__package_1__record_t__a (us_split_fields1 record_const)))))

;; record_const__def_axiom
  (assert
  (= record_const (mk___rep
                  (mk___split_fields
                  (of_rep (fp #b0 #b10000001 #b11000000000000000000000))
                  (of_rep (fp #b0 #b10000010 #b10000000000000000000000))))))

(declare-fun res_1 () Float32)

(declare-fun res_2 () Float32)

(declare-fun res_3 () Float32)

(declare-fun o () float)

(declare-fun o1 () float)

(declare-fun o2 () float)

(declare-fun o3 () float)

(declare-fun temp___140 () float)

(declare-fun temp___1401 () float)

(declare-fun o4 () Float32)

(declare-fun result () Float32)

(declare-fun res_11 () Float32)

(declare-fun result1 () Float32)

(declare-fun res_21 () Float32)

;; H
  (assert (= (to_rep o) (fp #b0 #b10000010 #b10000000000000000000000)))

;; H
  (assert (= (to_rep o1) (fp #b0 #b10000001 #b11000000000000000000000)))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= temp___140 o2))

;; H
  (assert (= temp___1401 o3))

;; H
  (assert
  (= (mk___rep (mk___split_fields temp___140 temp___1401)) record_const))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite res_1) (fp.isNaN res_1)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite res_2) (fp.isNaN res_2)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite res_3) (fp.isNaN res_3)))))

;; H
  (assert
  (= (to_rep (rec__package_1__record_t__a (us_split_fields1 record_const))) 
  temp))

;; H
  (assert (not (or (fp.isInfinite temp) (fp.isNaN temp))))

;; H
  (assert (= result res_1))

;; H
  (assert (= res_11 (fp #b0 #b01111001 #b01000111101011100001010)))

;; H
  (assert
  (and
  (= o4 (fp.add RNE (fp #b0 #b01111000 #b01000111101011100001010) (to_rep
                                                                  (rec__package_1__record_t__a
                                                                  (us_split_fields1
                                                                  record_const)))))
  (not (or (fp.isInfinite (fp.add RNE (fp #b0 #b01111000 #b01000111101011100001010) 
  (to_rep (rec__package_1__record_t__a (us_split_fields1 record_const))))) (fp.isNaN (fp.add RNE (fp #b0 #b01111000 #b01000111101011100001010) 
  (to_rep (rec__package_1__record_t__a (us_split_fields1 record_const)))))))))

;; H
  (assert (= result1 res_2))

;; H
  (assert (= res_21 o4))

(assert
;; WP_parameter_def
 ;; File "package_1.ads", line 11, characters 0-0
  (not
  (not (or (fp.isInfinite (fp.add RNE (fp #b0 #b01111000 #b01000111101011100001010) 
  temp)) (fp.isNaN (fp.add RNE (fp #b0 #b01111000 #b01000111101011100001010) 
  temp))))))
(check-sat)
