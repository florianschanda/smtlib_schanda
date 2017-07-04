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
(declare-sort tfloat_with_approxB 0)

(declare-fun user_eq (tfloat_with_approxB tfloat_with_approxB) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Float32)

(declare-fun dummy () tfloat_with_approxB)

(declare-datatypes ()
((tfloat_with_approxB__ref
 (mk_tfloat_with_approxB__ref
 (tfloat_with_approxB__content tfloat_with_approxB)))))
(define-fun tfloat_with_approxB__ref___projection ((a tfloat_with_approxB__ref)) tfloat_with_approxB 
  (tfloat_with_approxB__content a))

(declare-sort float_with_approx 0)

(declare-fun user_eq1 (float_with_approx float_with_approx) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy1 () float_with_approx)

(declare-datatypes ()
((float_with_approx__ref
 (mk_float_with_approx__ref (float_with_approx__content float_with_approx)))))
(define-fun float_with_approx__ref___projection ((a float_with_approx__ref)) float_with_approx 
  (float_with_approx__content a))

(define-fun dynamic_invariant ((temp___expr_141 Float32)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_141) (fp.isNaN temp___expr_141)))))

(declare-fun sin1 (Float32) Float32)

(declare-fun sin__function_guard (Float32 Float32) Bool)

(declare-fun cos1 (Float32) Float32)

(declare-fun cos__function_guard (Float32 Float32) Bool)

;; cos__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (cos1 x)))
     (and
     (=>
     (and (fp.leq (fp.neg (fp #b0 #b10000101 #b00101100000000000000000)) x)
     (fp.leq x (fp #b0 #b10000101 #b00101100000000000000000)))
     (fp.leq (fp #b0 #b01111011 #b10011001100110011001101) result))
     (dynamic_invariant result true false true)))) :pattern ((cos1 x)) )))

;; cos__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (= (cos1 x) (sin1 x))) :pattern (
  (cos1 x)) )))

(declare-fun sqrt1 (Float32) Float32)

(declare-fun sqrt__function_guard (Float32 Float32) Bool)

(declare-fun sqrt2 (Float32) Float32)

(declare-fun sqrt__function_guard1 (Float32 Float32) Bool)

;; sqrt__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (sqrt1 x)
     true false true)) :pattern ((sqrt1 x)) )))

;; sqrt__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (= (sqrt1 x) (sqrt2 x))) :pattern (
  (sqrt1 x)) )))

(declare-sort latitude 0)

(define-fun in_range1 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000101 #b00101100000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000101 #b00101100000000000000000)))))

(declare-fun user_eq2 (latitude latitude) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy2 () latitude)

(declare-datatypes ()
((latitude__ref (mk_latitude__ref (latitude__content latitude)))))
(define-fun latitude__ref___projection ((a latitude__ref)) latitude (latitude__content
                                                                    a))

(declare-fun to_rep (latitude) Float32)

(declare-fun of_rep (Float32) latitude)

;; inversion_axiom
  (assert
  (forall ((x latitude))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x latitude)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort longitude 0)

(define-fun in_range2 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000110 #b01100111111111111111111)) x)
                                         (fp.leq x (fp #b0 #b10000110 #b01101000000000000000000)))))

(declare-fun user_eq3 (longitude longitude) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy3 () longitude)

(declare-datatypes ()
((longitude__ref (mk_longitude__ref (longitude__content longitude)))))
(define-fun longitude__ref___projection ((a longitude__ref)) longitude 
  (longitude__content a))

(declare-fun to_rep1 (longitude) Float32)

(declare-fun of_rep1 (Float32) longitude)

;; inversion_axiom
  (assert
  (forall ((x longitude))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x longitude)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__lat_long__coordinates__lat latitude)(rec__lat_long__coordinates__long longitude)))))
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
                           (rec__lat_long__coordinates__lat
                           (us_split_fields1 a))) (to_rep
                                                  (rec__lat_long__coordinates__lat
                                                  (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__lat_long__coordinates__long
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__lat_long__coordinates__long
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun lat_long__coordinates__lat__first__bit () Int)

(declare-fun lat_long__coordinates__lat__last__bit () Int)

(declare-fun lat_long__coordinates__lat__position () Int)

;; lat_long__coordinates__lat__first__bit_axiom
  (assert (<= 0 lat_long__coordinates__lat__first__bit))

;; lat_long__coordinates__lat__last__bit_axiom
  (assert
  (< lat_long__coordinates__lat__first__bit lat_long__coordinates__lat__last__bit))

;; lat_long__coordinates__lat__position_axiom
  (assert (<= 0 lat_long__coordinates__lat__position))

(declare-fun lat_long__coordinates__long__first__bit () Int)

(declare-fun lat_long__coordinates__long__last__bit () Int)

(declare-fun lat_long__coordinates__long__position () Int)

;; lat_long__coordinates__long__first__bit_axiom
  (assert (<= 0 lat_long__coordinates__long__first__bit))

;; lat_long__coordinates__long__last__bit_axiom
  (assert
  (< lat_long__coordinates__long__first__bit lat_long__coordinates__long__last__bit))

;; lat_long__coordinates__long__position_axiom
  (assert (<= 0 lat_long__coordinates__long__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((coordinates__ref (mk_coordinates__ref (coordinates__content us_rep)))))
(define-fun coordinates__ref___projection ((a coordinates__ref)) us_rep 
  (coordinates__content a))

(declare-fun source () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun destination () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun delta_lat_in_meters (us_rep us_rep) Float32)

(declare-fun delta_lat_in_meters__function_guard (Float32 us_rep
  us_rep) Bool)

(declare-fun olt (Float32 Float32) Bool)

(declare-fun olt__function_guard (Bool Float32 Float32) Bool)

;; delta_lat_in_meters__post_axiom
  (assert
  (forall ((source1 us_rep) (destination1 us_rep))
  (! (let ((result (delta_lat_in_meters source1 destination1)))
     (and
     (= (olt (fp.abs result) (fp #b0 #b10010111 #b00110001001111000100110)) true)
     (dynamic_invariant result true false true))) :pattern ((delta_lat_in_meters
                                                            source1
                                                            destination1)) )))

;; delta_lat_in_meters__def_axiom
  (assert
  (forall ((source1 us_rep) (destination1 us_rep))
  (! (= (delta_lat_in_meters source1 destination1) (fp.mul RNE (fp.mul RNE (fp.sub RNE 
  (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 destination1))) 
  (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 source1)))) (fp #b0 #b10010101 #b10000100101000110101001)) (fp #b0 #b01111001 #b00011101111101000110101))) :pattern (
  (delta_lat_in_meters source1 destination1)) )))

(declare-fun delta_long_in_meters (us_rep us_rep) Float32)

(declare-fun delta_long_in_meters__function_guard (Float32 us_rep
  us_rep) Bool)

;; delta_long_in_meters__post_axiom
  (assert
  (forall ((source1 us_rep) (destination1 us_rep))
  (! (let ((result (delta_long_in_meters source1 destination1)))
     (and
     (= (olt (fp.abs result) (fp #b0 #b10011000 #b00110001001111000100110)) true)
     (dynamic_invariant result true false true))) :pattern ((delta_long_in_meters
                                                            source1
                                                            destination1)) )))

;; delta_long_in_meters__def_axiom
  (assert
  (forall ((source1 us_rep) (destination1 us_rep))
  (! (= (delta_long_in_meters source1 destination1) (fp.div RNE (fp.mul RNE (fp.sub RNE 
  (to_rep1
  (rec__lat_long__coordinates__long (us_split_fields1 destination1))) 
  (to_rep1 (rec__lat_long__coordinates__long (us_split_fields1 source1)))) (fp #b0 #b10010101 #b10000100101000110101001)) 
  (cos1
  (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 source1)))))) :pattern (
  (delta_long_in_meters source1 destination1)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-sort float 0)

(declare-fun user_eq5 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Float32)

(declare-fun dummy5 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun dynamic_invariant1 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

;; olt__post_axiom
  (assert true)

;; olt__def_axiom
  (assert
  (forall ((left Float32) (right Float32))
  (! (= (= (olt left right) true)
     (fp.lt left (fp.add RNE right (fp #b0 #b01101110 #b01001111100010110101100)))) :pattern (
  (olt left right)) )))

(define-fun dynamic_invariant2 ((temp___expr_147 Float32)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (fp.leq (fp.neg (fp #b0 #b10000101 #b00101100000000000000000)) (fp #b0 #b10000101 #b00101100000000000000000)))
                                      (in_range1 temp___expr_147)))

(define-fun dynamic_invariant3 ((temp___expr_153 Float32)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (fp.leq (fp.neg (fp #b0 #b10000110 #b01100111111111111111111)) (fp #b0 #b10000110 #b01101000000000000000000)))
                                      (in_range2 temp___expr_153)))

;; sqrt__post_axiom
  (assert
  (forall ((x Float32))
  (! (=>
     (and (dynamic_invariant1 x true true true)
     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x))
     (let ((result (sqrt2 x)))
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
     (dynamic_invariant1 result true false true)))) :pattern ((sqrt2 x)) )))

;; sin__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant1 x true true true)
     (let ((result (sin1 x)))
     (and
     (and
     (and
     (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) result)
     (fp.leq result (fp #b0 #b01111111 #b00000000000000000000000)))
     (=> (fp.eq x (fp #b0 #b00000000 #b00000000000000000000000))
     (fp.eq result (fp #b0 #b00000000 #b00000000000000000000000))))
     (dynamic_invariant1 result true false true)))) :pattern ((sin1 x)) )))

(declare-fun delta_lat () Float32)

(declare-fun delta_long () Float32)

(declare-fun lat_long__distance__result () Float32)

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

(declare-fun result () Float32)

(declare-fun delta_lat1 () Float32)

(declare-fun result1 () Float32)

(declare-fun delta_long1 () Float32)

(declare-fun result2 () Float32)

(declare-fun lat_long__distance__result1 () Float32)

(declare-fun lat_long__distance__result2 () Float32)

(declare-fun lat_long__distance__result3 () Float32)

(declare-fun delta_lat2 () Float32)

(declare-fun delta_long2 () Float32)

(declare-fun lat_long__distance__result4 () Float32)

(declare-fun delta_lat3 () Float32)

(declare-fun delta_long3 () Float32)

(declare-fun lat_long__distance__result5 () Float32)

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite delta_lat) (fp.isNaN delta_lat)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite delta_long) (fp.isNaN delta_long)))))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref delta_lat)))

;; H
  (assert
  (= delta_lat1 (fp.mul RNE (fp.mul RNE (fp.sub RNE (to_rep
                                                    (rec__lat_long__coordinates__lat
                                                    (us_split_fields1
                                                    destination))) (to_rep
                                                                   (rec__lat_long__coordinates__lat
                                                                   (us_split_fields1
                                                                   source)))) (fp #b0 #b10010101 #b10000100101000110101001)) (fp #b0 #b01111001 #b00011101111101000110101))))

;; H
  (assert
  (and
  (= o (cos1
       (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 source)))))
  (and (not (or (fp.isInfinite o) (fp.isNaN o)))
  (and
  (= o (sin1
       (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 source)))))
  (=>
  (and
  (fp.leq (fp.neg (fp #b0 #b10000101 #b00101100000000000000000)) (to_rep
                                                                 (rec__lat_long__coordinates__lat
                                                                 (us_split_fields1
                                                                 source))))
  (fp.leq (to_rep
          (rec__lat_long__coordinates__lat (us_split_fields1 source))) (fp #b0 #b10000101 #b00101100000000000000000)))
  (fp.leq (fp #b0 #b01111011 #b10011001100110011001101) o))))))

;; H
  (assert
  (= o1 (fp.div RNE (fp.mul RNE (fp.sub RNE (to_rep1
                                            (rec__lat_long__coordinates__long
                                            (us_split_fields1 destination))) 
  (to_rep1 (rec__lat_long__coordinates__long (us_split_fields1 source)))) (fp #b0 #b10010101 #b10000100101000110101001)) 
  o)))

;; H
  (assert (and (= o2 o1) (not (or (fp.isInfinite o1) (fp.isNaN o1)))))

;; H
  (assert (= (mk_t__ref result1) (mk_t__ref delta_long)))

;; H
  (assert (= delta_long1 o2))

;; H
  (assert (= lat_long__distance__result1 lat_long__distance__result2))

;; H
  (assert (= lat_long__distance__result3 lat_long__distance__result1))

;; H
  (assert
  (and (= o3 (fp.mul RNE delta_long1 delta_long1))
  (not (or (fp.isInfinite (fp.mul RNE delta_long1 delta_long1)) (fp.isNaN (fp.mul RNE 
  delta_long1 delta_long1))))))

;; H
  (assert
  (and (= o4 (fp.mul RNE delta_lat1 delta_lat1))
  (not (or (fp.isInfinite (fp.mul RNE delta_lat1 delta_lat1)) (fp.isNaN (fp.mul RNE 
  delta_lat1 delta_lat1))))))

;; H
  (assert (= o5 (fp.add RNE o4 o3)))

;; H
  (assert (and (= o6 o5) (not (or (fp.isInfinite o5) (fp.isNaN o5)))))

;; H
  (assert
  (and (= o7 (sqrt1 o6))
  (and (not (or (fp.isInfinite o7) (fp.isNaN o7))) (= o7 (sqrt2 o6)))))

;; H
  (assert (= (mk_t__ref result2) (mk_t__ref lat_long__distance__result)))

;; H
  (assert (= lat_long__distance__result1 o7))

;; H
  (assert
  (= (mk_t__ref lat_long__distance__result4) (mk_t__ref
                                             lat_long__distance__result2)))

;; H
  (assert (= delta_long1 delta_long2))

;; H
  (assert (= delta_lat1 delta_lat2))

;; H
  (assert (= lat_long__distance__result5 lat_long__distance__result3))

;; H
  (assert (= delta_long3 delta_long1))

;; H
  (assert (= delta_lat3 delta_lat1))

;; H
  (assert
  (and (= o11 (delta_long_in_meters source destination))
  (and (not (or (fp.isInfinite o11) (fp.isNaN o11)))
  (and
  (= o11 (fp.div RNE (fp.mul RNE (fp.sub RNE (to_rep1
                                             (rec__lat_long__coordinates__long
                                             (us_split_fields1 destination))) 
  (to_rep1 (rec__lat_long__coordinates__long (us_split_fields1 source)))) (fp #b0 #b10010101 #b10000100101000110101001)) 
  (cos1 (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 source))))))
  (= (olt (fp.abs o11) (fp #b0 #b10011000 #b00110001001111000100110)) true)))))

;; H
  (assert
  (and (= o12 (delta_long_in_meters source destination))
  (and (not (or (fp.isInfinite o12) (fp.isNaN o12)))
  (and
  (= o12 (fp.div RNE (fp.mul RNE (fp.sub RNE (to_rep1
                                             (rec__lat_long__coordinates__long
                                             (us_split_fields1 destination))) 
  (to_rep1 (rec__lat_long__coordinates__long (us_split_fields1 source)))) (fp #b0 #b10010101 #b10000100101000110101001)) 
  (cos1 (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 source))))))
  (= (olt (fp.abs o12) (fp #b0 #b10011000 #b00110001001111000100110)) true)))))

;; H
  (assert (= o13 (fp.mul RNE o12 o11)))

;; H
  (assert (and (= o14 o13) (not (or (fp.isInfinite o13) (fp.isNaN o13)))))

;; H
  (assert
  (and (= o8 (delta_lat_in_meters source destination))
  (and (not (or (fp.isInfinite o8) (fp.isNaN o8)))
  (and
  (= o8 (fp.mul RNE (fp.mul RNE (fp.sub RNE (to_rep
                                            (rec__lat_long__coordinates__lat
                                            (us_split_fields1 destination))) 
  (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 source)))) (fp #b0 #b10010101 #b10000100101000110101001)) (fp #b0 #b01111001 #b00011101111101000110101)))
  (= (olt (fp.abs o8) (fp #b0 #b10010111 #b00110001001111000100110)) true)))))

;; H
  (assert
  (and (= o9 (delta_lat_in_meters source destination))
  (and (not (or (fp.isInfinite o9) (fp.isNaN o9)))
  (and
  (= o9 (fp.mul RNE (fp.mul RNE (fp.sub RNE (to_rep
                                            (rec__lat_long__coordinates__lat
                                            (us_split_fields1 destination))) 
  (to_rep (rec__lat_long__coordinates__lat (us_split_fields1 source)))) (fp #b0 #b10010101 #b10000100101000110101001)) (fp #b0 #b01111001 #b00011101111101000110101)))
  (= (olt (fp.abs o9) (fp #b0 #b10010111 #b00110001001111000100110)) true)))))

;; H
  (assert (= o10 (fp.mul RNE o9 o8)))

;; H
  (assert (and (= o15 o10) (not (or (fp.isInfinite o10) (fp.isNaN o10)))))

;; H
  (assert (= o16 (fp.add RNE o15 o14)))

(assert
;; WP_parameter_def
 ;; File "lat_long.ads", line 6, characters 0-0
  (not (not (or (fp.isInfinite o16) (fp.isNaN o16)))))
(check-sat)
