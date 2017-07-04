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

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort float 0)

(declare-fun user_eq1 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-fun to_rep1 (float) Float32)

(declare-fun of_rep1 (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep1 x)) (fp.isNaN (to_rep1 x)))) :pattern (
  (to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
     (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__classwide__t__z Bool)(rec__classwide__t__x integer)(rec__classwide__t__y float)(rec__ext__ us_private)))))
(define-fun us_split_fields_Z__projection ((a us_split_fields)) Bool 
  (rec__classwide__t__z a))

(define-fun us_split_fields_X__projection ((a us_split_fields)) integer 
  (rec__classwide__t__x a))

(define-fun us_split_fields___projection ((a us_split_fields)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)(attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) Int (attr__tag a))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (rec__classwide__t__z (us_split_fields1 a)) 
                        (rec__classwide__t__z (us_split_fields1 b)))
                        (= (to_rep
                           (rec__classwide__t__x (us_split_fields1 a))) 
                        (to_rep (rec__classwide__t__x (us_split_fields1 b)))))
                        (= (to_rep1
                           (rec__classwide__t__y (us_split_fields1 a))) 
                        (to_rep1 (rec__classwide__t__y (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

(declare-fun us_dispatch_eq (us_rep us_rep) Bool)

(declare-fun us_tag () Int)

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

(declare-fun classwide__t__z__first__bit () Int)

(declare-fun classwide__t__z__last__bit () Int)

(declare-fun classwide__t__z__position () Int)

;; classwide__t__z__first__bit_axiom
  (assert (<= 0 classwide__t__z__first__bit))

;; classwide__t__z__last__bit_axiom
  (assert (< classwide__t__z__first__bit classwide__t__z__last__bit))

;; classwide__t__z__position_axiom
  (assert (<= 0 classwide__t__z__position))

(declare-fun classwide__t__x__first__bit () Int)

(declare-fun classwide__t__x__last__bit () Int)

(declare-fun classwide__t__x__position () Int)

;; classwide__t__x__first__bit_axiom
  (assert (<= 0 classwide__t__x__first__bit))

;; classwide__t__x__last__bit_axiom
  (assert (< classwide__t__x__first__bit classwide__t__x__last__bit))

;; classwide__t__x__position_axiom
  (assert (<= 0 classwide__t__x__position))

(declare-fun classwide__t__y__first__bit () Int)

(declare-fun classwide__t__y__last__bit () Int)

(declare-fun classwide__t__y__position () Int)

;; classwide__t__y__first__bit_axiom
  (assert (<= 0 classwide__t__y__first__bit))

;; classwide__t__y__last__bit_axiom
  (assert (< classwide__t__y__first__bit classwide__t__y__last__bit))

;; classwide__t__y__position_axiom
  (assert (<= 0 classwide__t__y__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 us_rep)))))
(define-fun t__ref___projection ((a t__ref1)) us_rep (t__content1 a))

(define-fun default_initial_assumption ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (= (attr__tag temp___expr_136) 
  us_tag))

(declare-fun is_zero (us_rep) Bool)

(declare-fun is_zero__function_guard (Bool us_rep) Bool)

(declare-fun is_zero1 (Int us_rep) Bool)

(declare-fun is_zero__function_guard1 (Bool Int us_rep) Bool)

(declare-fun us_tag1 () Int)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))

(declare-fun classwide__t__z__first__bit1 () Int)

(declare-fun classwide__t__z__last__bit1 () Int)

(declare-fun classwide__t__z__position1 () Int)

;; classwide__t__z__first__bit_axiom
  (assert (<= 0 classwide__t__z__first__bit1))

;; classwide__t__z__last__bit_axiom
  (assert (< classwide__t__z__first__bit1 classwide__t__z__last__bit1))

;; classwide__t__z__position_axiom
  (assert (<= 0 classwide__t__z__position1))

(declare-fun classwide__t__x__first__bit1 () Int)

(declare-fun classwide__t__x__last__bit1 () Int)

(declare-fun classwide__t__x__position1 () Int)

;; classwide__t__x__first__bit_axiom
  (assert (<= 0 classwide__t__x__first__bit1))

;; classwide__t__x__last__bit_axiom
  (assert (< classwide__t__x__first__bit1 classwide__t__x__last__bit1))

;; classwide__t__x__position_axiom
  (assert (<= 0 classwide__t__x__position1))

(declare-fun classwide__t__y__first__bit1 () Int)

(declare-fun classwide__t__y__last__bit1 () Int)

(declare-fun classwide__t__y__position1 () Int)

;; classwide__t__y__first__bit_axiom
  (assert (<= 0 classwide__t__y__first__bit1))

;; classwide__t__y__last__bit_axiom
  (assert (< classwide__t__y__first__bit1 classwide__t__y__last__bit1))

;; classwide__t__y__position_axiom
  (assert (<= 0 classwide__t__y__position1))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((u1__ref (mk_u1__ref (u1__content us_rep)))))
(define-fun u1__ref___projection ((a u1__ref)) us_rep (u1__content a))

(declare-fun is_zero__2 (us_rep) Bool)

(declare-fun is_zero__2__function_guard (Bool us_rep) Bool)

(declare-fun is_zero__21 (Int us_rep) Bool)

(declare-fun is_zero__2__function_guard1 (Bool Int us_rep) Bool)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__classwide__u2__w integer)(rec__classwide__u2__xx integer)(rec__classwide__u2__yy float)(rec__classwide__t__z1 Bool)(rec__classwide__t__x1 integer)(rec__classwide__t__y1 float)(rec__ext__1 us_private)))))
(define-fun us_split_fields_W__projection ((a us_split_fields2)) integer 
  (rec__classwide__u2__w a))

(define-fun us_split_fields_XX__projection ((a us_split_fields2)) integer 
  (rec__classwide__u2__xx a))

(define-fun us_split_fields_Z2__projection ((a us_split_fields2)) Bool 
  (rec__classwide__t__z1 a))

(define-fun us_split_fields_X2__projection ((a us_split_fields2)) integer 
  (rec__classwide__t__x1 a))

(define-fun us_split_fields_2__projection ((a us_split_fields2)) us_private 
  (rec__ext__1 a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)(attr__tag1 Int)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun us_rep_4__projection ((a us_rep1)) Int (attr__tag1 a))

(declare-fun hide_ext__ (integer integer float us_private) us_private)

(declare-fun extract__w (us_private) integer)

;; extract__w__conv
  (assert
  (forall ((w integer) (xx integer))
  (forall ((yy float))
  (forall ((rec__ext__2 us_private))
  (= (extract__w (hide_ext__ w xx yy rec__ext__2)) w)))))

(declare-fun extract__xx (us_private) integer)

;; extract__xx__conv
  (assert
  (forall ((w integer) (xx integer))
  (forall ((yy float))
  (forall ((rec__ext__2 us_private))
  (= (extract__xx (hide_ext__ w xx yy rec__ext__2)) xx)))))

(declare-fun extract__yy (us_private) float)

;; extract__yy__conv
  (assert
  (forall ((w integer) (xx integer))
  (forall ((yy float))
  (forall ((rec__ext__2 us_private))
  (= (extract__yy (hide_ext__ w xx yy rec__ext__2)) yy)))))

(declare-fun extract__ext__ (us_private) us_private)

(define-fun to_base ((a us_rep1)) us_rep (mk___rep
                                         (mk___split_fields
                                         (rec__classwide__t__z1
                                         (us_split_fields3 a))
                                         (rec__classwide__t__x1
                                         (us_split_fields3 a))
                                         (rec__classwide__t__y1
                                         (us_split_fields3 a))
                                         (hide_ext__
                                         (rec__classwide__u2__w
                                         (us_split_fields3 a))
                                         (rec__classwide__u2__xx
                                         (us_split_fields3 a))
                                         (rec__classwide__u2__yy
                                         (us_split_fields3 a))
                                         (rec__ext__1 (us_split_fields3 a))))
                                         (attr__tag1 a)))

(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1
                                         (mk___split_fields1
                                         (extract__w
                                         (rec__ext__ (us_split_fields1 r)))
                                         (extract__xx
                                         (rec__ext__ (us_split_fields1 r)))
                                         (extract__yy
                                         (rec__ext__ (us_split_fields1 r)))
                                         (rec__classwide__t__z
                                         (us_split_fields1 r))
                                         (rec__classwide__t__x
                                         (us_split_fields1 r))
                                         (rec__classwide__t__y
                                         (us_split_fields1 r))
                                         (extract__ext__
                                         (rec__ext__ (us_split_fields1 r))))
                                         (attr__tag r)))

(define-fun bool_eq1 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (and
                         (and
                         (and
                         (and
                         (= (to_rep
                            (rec__classwide__u2__w (us_split_fields3 a))) 
                         (to_rep
                         (rec__classwide__u2__w (us_split_fields3 b))))
                         (= (to_rep
                            (rec__classwide__u2__xx (us_split_fields3 a))) 
                         (to_rep
                         (rec__classwide__u2__xx (us_split_fields3 b)))))
                         (= (to_rep1
                            (rec__classwide__u2__yy (us_split_fields3 a))) 
                         (to_rep1
                         (rec__classwide__u2__yy (us_split_fields3 b)))))
                         (= (rec__classwide__t__z1 (us_split_fields3 a)) 
                         (rec__classwide__t__z1 (us_split_fields3 b))))
                         (= (to_rep
                            (rec__classwide__t__x1 (us_split_fields3 a))) 
                         (to_rep
                         (rec__classwide__t__x1 (us_split_fields3 b)))))
                         (= (to_rep1
                            (rec__classwide__t__y1 (us_split_fields3 a))) 
                         (to_rep1
                         (rec__classwide__t__y1 (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq3 (us_rep1 us_rep1) Bool)

(declare-fun us_tag2 () Int)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep1) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))

(declare-fun classwide__u2__w__first__bit () Int)

(declare-fun classwide__u2__w__last__bit () Int)

(declare-fun classwide__u2__w__position () Int)

;; classwide__u2__w__first__bit_axiom
  (assert (<= 0 classwide__u2__w__first__bit))

;; classwide__u2__w__last__bit_axiom
  (assert (< classwide__u2__w__first__bit classwide__u2__w__last__bit))

;; classwide__u2__w__position_axiom
  (assert (<= 0 classwide__u2__w__position))

(declare-fun classwide__u2__xx__first__bit () Int)

(declare-fun classwide__u2__xx__last__bit () Int)

(declare-fun classwide__u2__xx__position () Int)

;; classwide__u2__xx__first__bit_axiom
  (assert (<= 0 classwide__u2__xx__first__bit))

;; classwide__u2__xx__last__bit_axiom
  (assert (< classwide__u2__xx__first__bit classwide__u2__xx__last__bit))

;; classwide__u2__xx__position_axiom
  (assert (<= 0 classwide__u2__xx__position))

(declare-fun classwide__u2__yy__first__bit () Int)

(declare-fun classwide__u2__yy__last__bit () Int)

(declare-fun classwide__u2__yy__position () Int)

;; classwide__u2__yy__first__bit_axiom
  (assert (<= 0 classwide__u2__yy__first__bit))

;; classwide__u2__yy__last__bit_axiom
  (assert (< classwide__u2__yy__first__bit classwide__u2__yy__last__bit))

;; classwide__u2__yy__position_axiom
  (assert (<= 0 classwide__u2__yy__position))

(declare-fun classwide__t__z__first__bit2 () Int)

(declare-fun classwide__t__z__last__bit2 () Int)

(declare-fun classwide__t__z__position2 () Int)

;; classwide__t__z__first__bit_axiom
  (assert (<= 0 classwide__t__z__first__bit2))

;; classwide__t__z__last__bit_axiom
  (assert (< classwide__t__z__first__bit2 classwide__t__z__last__bit2))

;; classwide__t__z__position_axiom
  (assert (<= 0 classwide__t__z__position2))

(declare-fun classwide__t__x__first__bit2 () Int)

(declare-fun classwide__t__x__last__bit2 () Int)

(declare-fun classwide__t__x__position2 () Int)

;; classwide__t__x__first__bit_axiom
  (assert (<= 0 classwide__t__x__first__bit2))

;; classwide__t__x__last__bit_axiom
  (assert (< classwide__t__x__first__bit2 classwide__t__x__last__bit2))

;; classwide__t__x__position_axiom
  (assert (<= 0 classwide__t__x__position2))

(declare-fun classwide__t__y__first__bit2 () Int)

(declare-fun classwide__t__y__last__bit2 () Int)

(declare-fun classwide__t__y__position2 () Int)

;; classwide__t__y__first__bit_axiom
  (assert (<= 0 classwide__t__y__first__bit2))

;; classwide__t__y__last__bit_axiom
  (assert (< classwide__t__y__first__bit2 classwide__t__y__last__bit2))

;; classwide__t__y__position_axiom
  (assert (<= 0 classwide__t__y__position2))

(declare-fun dummy4 () us_rep1)

(declare-datatypes () ((u2__ref (mk_u2__ref (u2__content us_rep1)))))
(define-fun u2__ref___projection ((a u2__ref)) us_rep1 (u2__content a))

(declare-fun is_zero__3 (us_rep1) Bool)

(declare-fun is_zero__3__function_guard (Bool us_rep1) Bool)

(declare-fun is_zero__31 (Int us_rep1) Bool)

(declare-fun is_zero__3__function_guard1 (Bool Int us_rep1) Bool)

;; is_zero__post_axiom
  (assert true)

;; is_zero__post__dispatch_axiom
  (assert true)

;; classwide__t__compat_axiom
  (assert
  (forall ((v us_rep))
  (! (= (to_int2 (is_zero v)) (to_int2 (is_zero1 us_tag v))) :pattern (
  (is_zero1 us_tag v)) )))

;; classwide__u1__compat_axiom
  (assert
  (forall ((v us_rep))
  (! (= (to_int2 (is_zero__2 v)) (to_int2 (is_zero1 us_tag1 v))) :pattern (
  (is_zero1 us_tag1 v)) )))

;; classwide__u2__compat_axiom
  (assert
  (forall ((v us_rep))
  (! (= (to_int2 (is_zero__3 (of_base v))) (to_int2 (is_zero1 us_tag2 v))) :pattern (
  (is_zero1 us_tag2 v)) )))

;; is_zero__def_axiom
  (assert
  (forall ((v us_rep))
  (! (= (= (is_zero v) true)
     (and
     (and (not (= (rec__classwide__t__z (us_split_fields1 v)) true))
     (= (to_rep (rec__classwide__t__x (us_split_fields1 v))) 0))
     (fp.eq (to_rep1 (rec__classwide__t__y (us_split_fields1 v))) (fp #b0 #b00000000 #b00000000000000000000000)))) :pattern (
  (is_zero v)) )))

(declare-fun v__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(define-fun default_initial_assumption1 ((temp___expr_165 us_rep)
  (temp___skip_top_level_166 Bool)) Bool (= (attr__tag temp___expr_165) 
  us_tag1))

;; is_zero__2__post_axiom
  (assert true)

;; is_zero__2__post__dispatch_axiom
  (assert true)

;; classwide__u1__compat_axiom
  (assert
  (forall ((v us_rep))
  (! (= (to_int2 (is_zero__2 v)) (to_int2 (is_zero__21 us_tag1 v))) :pattern (
  (is_zero__21 us_tag1 v)) )))

;; is_zero__2__def_axiom
  (assert
  (forall ((v us_rep))
  (! (= (= (is_zero__2 v) true)
     (and
     (and (not (= (rec__classwide__t__z (us_split_fields1 v)) true))
     (= (to_rep (rec__classwide__t__x (us_split_fields1 v))) 0))
     (fp.eq (to_rep1 (rec__classwide__t__y (us_split_fields1 v))) (fp #b0 #b00000000 #b00000000000000000000000)))) :pattern (
  (is_zero__2 v)) )))

(define-fun default_initial_assumption2 ((temp___expr_184 us_rep1)
  (temp___skip_top_level_185 Bool)) Bool (= (attr__tag1 temp___expr_184) 
  us_tag2))

;; is_zero__3__post_axiom
  (assert true)

;; is_zero__3__post__dispatch_axiom
  (assert true)

;; classwide__u2__compat_axiom
  (assert
  (forall ((v us_rep1))
  (! (= (to_int2 (is_zero__3 v)) (to_int2 (is_zero__31 us_tag2 v))) :pattern (
  (is_zero__31 us_tag2 v)) )))

;; is_zero__3__def_axiom
  (assert
  (forall ((v us_rep1))
  (! (= (= (is_zero__3 v) true)
     (and
     (and
     (and (= (is_zero (to_base v)) true)
     (= (to_rep (rec__classwide__u2__w (us_split_fields3 v))) 0))
     (= (to_rep (rec__classwide__u2__xx (us_split_fields3 v))) 0))
     (fp.eq (to_rep1 (rec__classwide__u2__yy (us_split_fields3 v))) (fp #b0 #b00000000 #b00000000000000000000000)))) :pattern (
  (is_zero__3 v)) )))

(declare-fun v__split_fields () Bool)

(declare-fun v__split_fields1 () integer)

(declare-fun v__split_fields2 () float)

(declare-fun v__split_fields3 () us_private)

(declare-fun o () integer)

(declare-fun o1 () Bool)

(declare-fun o2 () integer)

(declare-fun o3 () float)

(declare-fun o4 () us_private)

(declare-fun temp___202 () Bool)

(declare-fun temp___2021 () integer)

(declare-fun temp___2022 () float)

(declare-fun temp___2023 () us_private)

(declare-fun temp___2024 () Int)

(declare-fun o5 () float)

(declare-fun o6 () Bool)

(declare-fun o7 () integer)

(declare-fun o8 () float)

(declare-fun o9 () us_private)

(declare-fun temp___204 () Bool)

(declare-fun temp___2041 () integer)

(declare-fun temp___2042 () float)

(declare-fun temp___2043 () us_private)

(declare-fun temp___2044 () Int)

(declare-fun result () Bool)

(declare-fun result1 () integer)

(declare-fun result2 () float)

(declare-fun result3 () us_private)

(declare-fun v__split_fields4 () Bool)

(declare-fun v__split_fields5 () integer)

(declare-fun v__split_fields6 () float)

(declare-fun v__split_fields7 () us_private)

(declare-fun result4 () Bool)

(declare-fun result5 () integer)

(declare-fun result6 () float)

(declare-fun result7 () us_private)

(declare-fun v__split_fields8 () Bool)

(declare-fun v__split_fields9 () integer)

(declare-fun v__split_fields10 () float)

(declare-fun v__split_fields11 () us_private)

(declare-fun result8 () Bool)

(declare-fun result9 () integer)

(declare-fun result10 () float)

(declare-fun result11 () us_private)

(declare-fun v__split_fields12 () Bool)

(declare-fun v__split_fields13 () integer)

(declare-fun v__split_fields14 () float)

(declare-fun v__split_fields15 () us_private)

(declare-fun v__split_fields16 () Bool)

(declare-fun v__split_fields17 () integer)

(declare-fun v__split_fields18 () float)

(declare-fun v__split_fields19 () us_private)

(declare-fun v__split_fields20 () Bool)

(declare-fun v__split_fields21 () integer)

(declare-fun v__split_fields22 () float)

(declare-fun v__split_fields23 () us_private)

;; H
  (assert (= result v__split_fields))

;; H
  (assert (= result1 v__split_fields1))

;; H
  (assert (= result2 v__split_fields2))

;; H
  (assert (= result3 v__split_fields3))

;; H
  (assert (= (of_int1 0) v__split_fields4))

;; H
  (assert (= v__split_fields1 v__split_fields5))

;; H
  (assert (= v__split_fields2 v__split_fields6))

;; H
  (assert (= v__split_fields3 v__split_fields7))

;; H
  (assert (= (to_rep o) 0))

;; H
  (assert (= v__split_fields4 o1))

;; H
  (assert (= o o2))

;; H
  (assert (= v__split_fields6 o3))

;; H
  (assert (= v__split_fields7 o4))

;; H
  (assert (= temp___202 o1))

;; H
  (assert (= temp___2021 o2))

;; H
  (assert (= temp___2022 o3))

;; H
  (assert (= temp___2023 o4))

;; H
  (assert (= v__attr__tag temp___2024))

;; H
  (assert (= result4 v__split_fields4))

;; H
  (assert (= result5 v__split_fields5))

;; H
  (assert (= result6 v__split_fields6))

;; H
  (assert (= result7 v__split_fields7))

;; H
  (assert (= temp___202 v__split_fields8))

;; H
  (assert (= temp___2021 v__split_fields9))

;; H
  (assert (= temp___2022 v__split_fields10))

;; H
  (assert (= temp___2023 v__split_fields11))

;; H
  (assert (= (to_rep1 o5) (fp #b0 #b00000000 #b00000000000000000000000)))

;; H
  (assert (= v__split_fields8 o6))

;; H
  (assert (= v__split_fields9 o7))

;; H
  (assert (= o5 o8))

;; H
  (assert (= v__split_fields11 o9))

;; H
  (assert (= temp___204 o6))

;; H
  (assert (= temp___2041 o7))

;; H
  (assert (= temp___2042 o8))

;; H
  (assert (= temp___2043 o9))

;; H
  (assert (= v__attr__tag temp___2044))

;; H
  (assert (= result8 v__split_fields8))

;; H
  (assert (= result9 v__split_fields9))

;; H
  (assert (= result10 v__split_fields10))

;; H
  (assert (= result11 v__split_fields11))

;; H
  (assert (= temp___204 v__split_fields12))

;; H
  (assert (= temp___2041 v__split_fields13))

;; H
  (assert (= temp___2042 v__split_fields14))

;; H
  (assert (= temp___2043 v__split_fields15))

;; H
  (assert (= v__split_fields16 v__split_fields12))

;; H
  (assert (= v__split_fields17 v__split_fields13))

;; H
  (assert (= v__split_fields18 v__split_fields14))

;; H
  (assert (= v__split_fields19 v__split_fields15))

;; H
  (assert (= v__split_fields20 v__split_fields12))

;; H
  (assert (= v__split_fields21 v__split_fields13))

;; H
  (assert (= v__split_fields22 v__split_fields14))

;; H
  (assert (= v__split_fields23 v__split_fields15))

(assert
;; WP_parameter_def
 ;; File "classwide.ads", line 39, characters 0-0
  (not
  (= (is_zero
     (mk___rep
     (mk___split_fields v__split_fields16 v__split_fields17 v__split_fields18
     v__split_fields19) v__attr__tag)) true)))
(check-sat)
