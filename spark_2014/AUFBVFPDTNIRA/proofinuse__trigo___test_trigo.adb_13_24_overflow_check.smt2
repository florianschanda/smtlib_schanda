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
(declare-fun next_representable (Float32) Float32)

(declare-fun prev_representable (Float32) Float32)

(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-sort character 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (character character) Bool)

(declare-fun dummy2 () character)

(declare-datatypes ()
((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character 
  (character__content a))

(declare-fun to_rep (character) Int)

(declare-fun of_rep (Int) character)

;; inversion_axiom
  (assert
  (forall ((x character))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x character)) (! (in_range4 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))

;; slide_eq
  (assert
  (forall ((a (Array Int character)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int character)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int character) Int Int (Array Int character) Int
  Int) (Array Int character))

;; concat_def
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (character Int) (Array Int character))

;; singleton_def
  (assert
  (forall ((v character))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int)
  (b (Array Int character)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_78 Int))
                           (=>
                           (and (<= a__first temp___idx_78)
                           (<= temp___idx_78 a__last))
                           (= (to_rep (select a temp___idx_78)) (to_rep
                                                                (select b (+ (- b__first a__first) temp___idx_78)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_78 Int))
  (=> (and (<= a__first temp___idx_78) (<= temp___idx_78 a__last))
  (= (to_rep (select a temp___idx_78)) (to_rep
                                       (select b (+ (- b__first a__first) temp___idx_78)))))))))))

(declare-fun compare ((Array Int character) Int Int (Array Int character) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range2 f)
     (=> (in_range2 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range2 low)
                   (and (in_range2 high)
                   (=> (<= low high) (and (in_range3 low) (in_range3 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int character))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))

(define-fun of_array ((a (Array Int character)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int character)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int character)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment a))))

(define-fun bool_eq1 ((x us_t)
  (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-fun to_string (us_image) us_t)

(declare-fun from_string (us_t) us_image)

(declare-datatypes ()
((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content
                                                            a))

(declare-sort float 0)

(declare-fun user_eq4 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Float32)

(declare-fun dummy4 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-fun sin1 (Float32) Float32)

(declare-fun sin__function_guard (Float32 Float32) Bool)

(declare-fun approx_sin (Float32) Float32)

(declare-fun approx_sin__function_guard (Float32 Float32) Bool)

;; sin__post_axiom
  (assert
  (forall ((x Float32))
  (! (=>
     (and (dynamic_invariant x true true true)
     (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) x)
     (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000))))
     (let ((result (sin1 x)))
     (and
     (fp.lt (fp.abs (fp.sub RNE result (approx_sin x))) (fp #b0 #b01101100 #b10010010101001110011100))
     (dynamic_invariant result true false true)))) :pattern ((sin1 x)) )))

(declare-fun cos1 (Float32) Float32)

(declare-fun cos__function_guard (Float32 Float32) Bool)

(declare-fun approx_cos (Float32) Float32)

(declare-fun approx_cos__function_guard (Float32 Float32) Bool)

;; cos__post_axiom
  (assert
  (forall ((x Float32))
  (! (=>
     (and (dynamic_invariant x true true true)
     (and (fp.leq (fp.neg (fp #b0 #b01111111 #b00000000000000000000000)) x)
     (fp.leq x (fp #b0 #b01111111 #b00000000000000000000000))))
     (let ((result (cos1 x)))
     (and
     (fp.lt (fp.abs (fp.sub RNE result (approx_cos x))) (fp #b0 #b01101100 #b10010010101001110011100))
     (dynamic_invariant result true false true)))) :pattern ((cos1 x)) )))

(declare-fun tan1 (Float32) Float32)

(declare-fun tan__function_guard (Float32 Float32) Bool)

(declare-fun approx_tan (Float32) Float32)

(declare-fun approx_tan__function_guard (Float32 Float32) Bool)

;; tan__post_axiom
  (assert
  (forall ((x Float32))
  (! (=>
     (and (dynamic_invariant x true true true)
     (and (fp.leq (fp.neg (fp #b0 #b01111110 #b00000000000000000000000)) x)
     (fp.leq x (fp #b0 #b01111110 #b00000000000000000000000))))
     (let ((result (tan1 x)))
     (and
     (fp.lt (fp.abs (fp.sub RNE result (approx_tan x))) (fp #b0 #b01110001 #b10100011011011100010111))
     (dynamic_invariant result true false true)))) :pattern ((tan1 x)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun temp___String_Literal_517 (tuple0) (Array Int character))

;; temp___String_Literal_517__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 1)) 116)
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 3)) 115))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 4)) 116))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 6)) 115))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 7)) 105))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 8)) 110)) :pattern (
  (temp___String_Literal_517 us_void_param)) )))

(declare-fun temp___String_Literal_520 (tuple0) (Array Int character))

;; temp___String_Literal_520__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 1)) 116)
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 3)) 115))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 4)) 116))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 6)) 115))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 7)) 105))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 8)) 110))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 10)) 111))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 11)) 107)) :pattern (
  (temp___String_Literal_520 us_void_param)) )))

(declare-fun temp___String_Literal_521 (tuple0) (Array Int character))

;; temp___String_Literal_521__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_521 us_void_param) 1)) 116)
     (= (to_rep (select (temp___String_Literal_521 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_521 us_void_param) 3)) 115))
     (= (to_rep (select (temp___String_Literal_521 us_void_param) 4)) 116))
     (= (to_rep (select (temp___String_Literal_521 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_521 us_void_param) 6)) 99))
     (= (to_rep (select (temp___String_Literal_521 us_void_param) 7)) 111))
     (= (to_rep (select (temp___String_Literal_521 us_void_param) 8)) 115)) :pattern (
  (temp___String_Literal_521 us_void_param)) )))

(declare-fun temp___String_Literal_524 (tuple0) (Array Int character))

;; temp___String_Literal_524__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 1)) 116)
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 3)) 115))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 4)) 116))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 6)) 99))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 7)) 111))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 8)) 115))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 10)) 111))
     (= (to_rep (select (temp___String_Literal_524 us_void_param) 11)) 107)) :pattern (
  (temp___String_Literal_524 us_void_param)) )))

(declare-fun temp___String_Literal_525 (tuple0) (Array Int character))

;; temp___String_Literal_525__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_525 us_void_param) 1)) 116)
     (= (to_rep (select (temp___String_Literal_525 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_525 us_void_param) 3)) 115))
     (= (to_rep (select (temp___String_Literal_525 us_void_param) 4)) 116))
     (= (to_rep (select (temp___String_Literal_525 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_525 us_void_param) 6)) 116))
     (= (to_rep (select (temp___String_Literal_525 us_void_param) 7)) 97))
     (= (to_rep (select (temp___String_Literal_525 us_void_param) 8)) 110)) :pattern (
  (temp___String_Literal_525 us_void_param)) )))

(declare-fun temp___String_Literal_528 (tuple0) (Array Int character))

;; temp___String_Literal_528__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 1)) 116)
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 3)) 115))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 4)) 116))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 6)) 116))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 7)) 97))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 8)) 110))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 10)) 111))
     (= (to_rep (select (temp___String_Literal_528 us_void_param) 11)) 107)) :pattern (
  (temp___String_Literal_528 us_void_param)) )))

(declare-fun temp___String_Literal_529 (tuple0) (Array Int character))

;; temp___String_Literal_529__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 1)) 116)
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 3)) 115))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 4)) 116))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 6)) 116))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 7)) 97))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 8)) 110))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 10)) 61))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 11)) 32))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 12)) 115))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 13)) 105))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 14)) 110))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 15)) 32))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 16)) 47))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 17)) 32))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 18)) 99))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 19)) 111))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 20)) 115)) :pattern (
  (temp___String_Literal_529 us_void_param)) )))

(declare-fun temp___String_Literal_531 (tuple0) (Array Int character))

;; temp___String_Literal_531__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 1)) 116)
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 3)) 115))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 4)) 116))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 6)) 116))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 7)) 97))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 8)) 110))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 10)) 61))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 11)) 32))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 12)) 115))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 13)) 105))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 14)) 110))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 15)) 32))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 16)) 47))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 17)) 32))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 18)) 99))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 19)) 111))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 20)) 115))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 21)) 32))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 22)) 111))
     (= (to_rep (select (temp___String_Literal_531 us_void_param) 23)) 107)) :pattern (
  (temp___String_Literal_531 us_void_param)) )))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range4 temp___expr_63)))

(define-fun dynamic_invariant3 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

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

(declare-fun pow3 (Float32) Float32)

(declare-fun pow3__function_guard (Float32 Float32) Bool)

;; pow3__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (pow3 x)
     true false true)) :pattern ((pow3 x)) )))

;; pow3__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (pow3 x) (fp.mul RNE (fp.mul RNE x x) x))) :pattern ((pow3 x)) )))

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

(declare-fun pow5 (Float32) Float32)

(declare-fun pow5__function_guard (Float32 Float32) Bool)

;; pow5__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (pow5 x)
     true false true)) :pattern ((pow5 x)) )))

;; pow5__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (pow5 x) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x x) x) x) x))) :pattern (
  (pow5 x)) )))

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

(declare-fun pow7 (Float32) Float32)

(declare-fun pow7__function_guard (Float32 Float32) Bool)

;; pow7__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (pow7 x)
     true false true)) :pattern ((pow7 x)) )))

;; pow7__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (pow7 x) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x x) x) x) x) x) x))) :pattern (
  (pow7 x)) )))

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

(declare-fun pow9 (Float32) Float32)

(declare-fun pow9__function_guard (Float32 Float32) Bool)

;; pow9__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant (pow9 x)
     true false true)) :pattern ((pow9 x)) )))

;; pow9__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (pow9 x) (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE (fp.mul RNE x x) x) x) x) x) x) x) x))) :pattern (
  (pow9 x)) )))

;; approx_sin__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant
     (approx_sin x) true false true)) :pattern ((approx_sin x)) )))

;; approx_sin__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (approx_sin x) (fp.sub RNE (fp.add RNE (fp.sub RNE x (fp.div RNE 
     (pow3 x) (fp #b0 #b10000001 #b10000000000000000000000))) (fp.div RNE 
     (pow5 x) (fp #b0 #b10000101 #b11100000000000000000000))) (fp.div RNE 
     (pow7 x) (fp #b0 #b10001011 #b00111011000000000000000))))) :pattern (
  (approx_sin x)) )))

;; approx_cos__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant
     (approx_cos x) true false true)) :pattern ((approx_cos x)) )))

;; approx_cos__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (approx_cos x) (fp.add RNE (fp.sub RNE (fp.add RNE (fp.sub RNE (fp #b0 #b01111111 #b00000000000000000000000) (fp.div RNE 
     (pow21 x) (fp #b0 #b10000000 #b00000000000000000000000))) (fp.div RNE 
     (pow4 x) (fp #b0 #b10000011 #b10000000000000000000000))) (fp.div RNE 
     (pow6 x) (fp #b0 #b10001000 #b01101000000000000000000))) (fp.div RNE 
     (pow8 x) (fp #b0 #b10001110 #b00111011000000000000000))))) :pattern (
  (approx_cos x)) )))

;; approx_tan__post_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true) (dynamic_invariant
     (approx_tan x) true false true)) :pattern ((approx_tan x)) )))

;; approx_tan__def_axiom
  (assert
  (forall ((x Float32))
  (! (=> (dynamic_invariant x true true true)
     (= (approx_tan x) (fp.add RNE (fp.add RNE (fp.add RNE (fp.add RNE x (fp.div RNE 
     (pow3 x) (fp #b0 #b10000000 #b10000000000000000000000))) (fp.div RNE (fp.mul RNE (fp #b0 #b10000000 #b00000000000000000000000) 
     (pow5 x)) (fp #b0 #b10000010 #b11100000000000000000000))) (fp.div RNE (fp.mul RNE (fp #b0 #b10000011 #b00010000000000000000000) 
     (pow7 x)) (fp #b0 #b10000111 #b00111011000000000000000))) (fp.div RNE (fp.mul RNE (fp #b0 #b10000100 #b11110000000000000000000) 
     (pow9 x)) (fp #b0 #b10001010 #b01100010011000000000000))))) :pattern (
  (approx_tan x)) )))

(declare-fun f () Float32)

(declare-fun dummy5 () Float32)

(declare-fun o () Float32)

(declare-fun result () Float32)

(declare-fun f1 () Float32)

(declare-fun f2 () Float32)

(declare-fun dummy6 () Float32)

(declare-fun result1 () Float32)

(declare-fun dummy7 () Float32)

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite f) (fp.isNaN f)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite dummy5) (fp.isNaN dummy5)))))

;; H
  (assert (= result f))

;; H
  (assert (= f1 (fp.neg (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert (fp.leq f1 (fp #b0 #b01111111 #b00000000000000000000000)))

;; H
  (assert
  (and
  (and
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite f2) (fp.isNaN f2))))
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite dummy6) (fp.isNaN dummy6)))))
  (fp.leq f2 (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert
  (and (= o (sin1 f2))
  (and (not (or (fp.isInfinite o) (fp.isNaN o)))
  (fp.lt (fp.abs (fp.sub RNE o (approx_sin f2))) (fp #b0 #b01101100 #b10010010101001110011100)))))

;; H
  (assert (= dummy6 result1))

;; H
  (assert (= dummy7 o))

(assert
;; WP_parameter_def
 ;; File "test_trigo.adb", line 5, characters 0-0
  (not (not (= f2 (fp #b0 #b11111110 #b11111111111111111111111)))))
(check-sat)
