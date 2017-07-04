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
 (rec__untangle_tests__coordinate__x float)(rec__untangle_tests__coordinate__y float)(rec__untangle_tests__coordinate__z float)(rec__untangle_tests__coordinate__w float)))))
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
                        (and
                        (and
                        (= (to_rep
                           (rec__untangle_tests__coordinate__x
                           (us_split_fields1 a))) (to_rep
                                                  (rec__untangle_tests__coordinate__x
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__untangle_tests__coordinate__y
                           (us_split_fields1 a))) (to_rep
                                                  (rec__untangle_tests__coordinate__y
                                                  (us_split_fields1 b)))))
                        (= (to_rep
                           (rec__untangle_tests__coordinate__z
                           (us_split_fields1 a))) (to_rep
                                                  (rec__untangle_tests__coordinate__z
                                                  (us_split_fields1 b)))))
                        (= (to_rep
                           (rec__untangle_tests__coordinate__w
                           (us_split_fields1 a))) (to_rep
                                                  (rec__untangle_tests__coordinate__w
                                                  (us_split_fields1 b)))))
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

(declare-fun untangle_tests__coordinate__x__first__bit () Int)

(declare-fun untangle_tests__coordinate__x__last__bit () Int)

(declare-fun untangle_tests__coordinate__x__position () Int)

;; untangle_tests__coordinate__x__first__bit_axiom
  (assert (<= 0 untangle_tests__coordinate__x__first__bit))

;; untangle_tests__coordinate__x__last__bit_axiom
  (assert
  (< untangle_tests__coordinate__x__first__bit untangle_tests__coordinate__x__last__bit))

;; untangle_tests__coordinate__x__position_axiom
  (assert (<= 0 untangle_tests__coordinate__x__position))

(declare-fun untangle_tests__coordinate__y__first__bit () Int)

(declare-fun untangle_tests__coordinate__y__last__bit () Int)

(declare-fun untangle_tests__coordinate__y__position () Int)

;; untangle_tests__coordinate__y__first__bit_axiom
  (assert (<= 0 untangle_tests__coordinate__y__first__bit))

;; untangle_tests__coordinate__y__last__bit_axiom
  (assert
  (< untangle_tests__coordinate__y__first__bit untangle_tests__coordinate__y__last__bit))

;; untangle_tests__coordinate__y__position_axiom
  (assert (<= 0 untangle_tests__coordinate__y__position))

(declare-fun untangle_tests__coordinate__z__first__bit () Int)

(declare-fun untangle_tests__coordinate__z__last__bit () Int)

(declare-fun untangle_tests__coordinate__z__position () Int)

;; untangle_tests__coordinate__z__first__bit_axiom
  (assert (<= 0 untangle_tests__coordinate__z__first__bit))

;; untangle_tests__coordinate__z__last__bit_axiom
  (assert
  (< untangle_tests__coordinate__z__first__bit untangle_tests__coordinate__z__last__bit))

;; untangle_tests__coordinate__z__position_axiom
  (assert (<= 0 untangle_tests__coordinate__z__position))

(declare-fun untangle_tests__coordinate__w__first__bit () Int)

(declare-fun untangle_tests__coordinate__w__last__bit () Int)

(declare-fun untangle_tests__coordinate__w__position () Int)

;; untangle_tests__coordinate__w__first__bit_axiom
  (assert (<= 0 untangle_tests__coordinate__w__first__bit))

;; untangle_tests__coordinate__w__last__bit_axiom
  (assert
  (< untangle_tests__coordinate__w__first__bit untangle_tests__coordinate__w__last__bit))

;; untangle_tests__coordinate__w__position_axiom
  (assert (<= 0 untangle_tests__coordinate__w__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((coordinate__ref (mk_coordinate__ref (coordinate__content us_rep)))))
(define-fun coordinate__ref___projection ((a coordinate__ref)) us_rep 
  (coordinate__content a))

(declare-sort tcoordinate_listD1 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (tcoordinate_listD1 tcoordinate_listD1) Bool)

(declare-fun dummy2 () tcoordinate_listD1)

(declare-datatypes ()
((tcoordinate_listD1__ref
 (mk_tcoordinate_listD1__ref
 (tcoordinate_listD1__content tcoordinate_listD1)))))
(define-fun tcoordinate_listD1__ref___projection ((a tcoordinate_listD1__ref)) tcoordinate_listD1 
  (tcoordinate_listD1__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int us_rep) Int Int (Array Int us_rep) Int
  Int) (Array Int us_rep))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (us_rep Int) (Array Int us_rep))

;; singleton_def
  (assert
  (forall ((v us_rep))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (bool_eq (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun dummy3 () (Array Int us_rep))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int us_rep)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int us_rep)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int us_rep)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int us_rep))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int us_rep))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int us_rep))) (<= 0 (object__alignment1 a))))

(declare-fun user_eq3 ((Array Int us_rep) (Array Int us_rep)) Bool)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__untangle_tests__triangle__vertices (Array Int us_rep))(rec__untangle_tests__triangle__normal us_rep)))))
(define-fun us_split_fields_Vertices__projection ((a us_split_fields2)) (Array Int us_rep) 
  (rec__untangle_tests__triangle__vertices a))

(define-fun us_split_fields_Normal__projection ((a us_split_fields2)) us_rep 
  (rec__untangle_tests__triangle__normal a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (bool_eq1
                            (rec__untangle_tests__triangle__vertices
                            (us_split_fields3 a)) 1 3
                            (rec__untangle_tests__triangle__vertices
                            (us_split_fields3 b)) 1 3) true)
                         (= (bool_eq
                            (rec__untangle_tests__triangle__normal
                            (us_split_fields3 a))
                            (rec__untangle_tests__triangle__normal
                            (us_split_fields3 b))) true))
                    true false))

(declare-fun user_eq4 (us_rep1 us_rep1) Bool)

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

(declare-fun untangle_tests__triangle__vertices__first__bit () Int)

(declare-fun untangle_tests__triangle__vertices__last__bit () Int)

(declare-fun untangle_tests__triangle__vertices__position () Int)

;; untangle_tests__triangle__vertices__first__bit_axiom
  (assert (<= 0 untangle_tests__triangle__vertices__first__bit))

;; untangle_tests__triangle__vertices__last__bit_axiom
  (assert
  (< untangle_tests__triangle__vertices__first__bit untangle_tests__triangle__vertices__last__bit))

;; untangle_tests__triangle__vertices__position_axiom
  (assert (<= 0 untangle_tests__triangle__vertices__position))

(declare-fun untangle_tests__triangle__normal__first__bit () Int)

(declare-fun untangle_tests__triangle__normal__last__bit () Int)

(declare-fun untangle_tests__triangle__normal__position () Int)

;; untangle_tests__triangle__normal__first__bit_axiom
  (assert (<= 0 untangle_tests__triangle__normal__first__bit))

;; untangle_tests__triangle__normal__last__bit_axiom
  (assert
  (< untangle_tests__triangle__normal__first__bit untangle_tests__triangle__normal__last__bit))

;; untangle_tests__triangle__normal__position_axiom
  (assert (<= 0 untangle_tests__triangle__normal__position))

(declare-fun dummy4 () us_rep1)

(declare-datatypes ()
((triangle__ref (mk_triangle__ref (triangle__content us_rep1)))))
(define-fun triangle__ref___projection ((a triangle__ref)) us_rep1 (triangle__content
                                                                   a))

(declare-sort ttriangle_listD1 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (ttriangle_listD1 ttriangle_listD1) Bool)

(declare-fun dummy5 () ttriangle_listD1)

(declare-datatypes ()
((ttriangle_listD1__ref
 (mk_ttriangle_listD1__ref (ttriangle_listD1__content ttriangle_listD1)))))
(define-fun ttriangle_listD1__ref___projection ((a ttriangle_listD1__ref)) ttriangle_listD1 
  (ttriangle_listD1__content a))

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int us_rep1))))))
(declare-fun slide1 ((Array Int us_rep1) Int Int) (Array Int us_rep1))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep1)))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep1)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int us_rep1) Int Int (Array Int us_rep1) Int
  Int) (Array Int us_rep1))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep1)) (b (Array Int us_rep1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (us_rep1 Int) (Array Int us_rep1))

;; singleton_def
  (assert
  (forall ((v us_rep1))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int us_rep1)) (a__first Int) (a__last Int)
  (b (Array Int us_rep1)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (bool_eq2 (select a temp___idx_133)
                              (select b (+ (- b__first a__first) temp___idx_133))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep1)) (b (Array Int us_rep1)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq2 (select a temp___idx_133)
     (select b (+ (- b__first a__first) temp___idx_133))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun o () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-fun tl () (Array Int us_rep1))

(declare-fun t () Int)

(declare-fun result () int__ref)

(declare-fun t1 () Int)

(declare-fun tl1 () (Array Int us_rep1))

(declare-fun t2 () Int)

(declare-fun v () Int)

(declare-fun result1 () int__ref)

(declare-fun v1 () Int)

(declare-fun tl2 () (Array Int us_rep1))

(declare-fun v2 () Int)

;; H
  (assert (= result (mk_int__ref t)))

;; H
  (assert (= t1 1))

;; H
  (assert (<= 1 t1))

;; H
  (assert (<= t1 100))

;; H
  (assert
  (and
  (forall ((temp___252 Int))
  (=> (and (<= 1 temp___252) (<= temp___252 100))
  (ite (<= t2 temp___252) (= (select tl1 temp___252) (select tl temp___252))
  (and
  (forall ((temp___253 Int))
  (=> (and (<= 1 temp___253) (<= temp___253 3))
  (= (rec__untangle_tests__coordinate__w
     (us_split_fields1
     (select (rec__untangle_tests__triangle__vertices
             (us_split_fields3 (select tl1 temp___252))) temp___253))) 
  (rec__untangle_tests__coordinate__w
  (us_split_fields1
  (select (rec__untangle_tests__triangle__vertices
          (us_split_fields3 (select tl temp___252))) temp___253))))))
  (= (rec__untangle_tests__triangle__normal
     (us_split_fields3 (select tl1 temp___252))) (rec__untangle_tests__triangle__normal
                                                 (us_split_fields3
                                                 (select tl temp___252))))))))
  (and (<= 1 t2) (<= t2 100))))

;; H
  (assert (= result1 (mk_int__ref v)))

;; H
  (assert (= v1 1))

;; H
  (assert (<= 1 v1))

;; H
  (assert (<= v1 3))

;; H
  (assert
  (and
  (forall ((temp___247 Int))
  (=> (and (<= 1 temp___247) (<= temp___247 100))
  (ite (not (= t2 temp___247))
  (= (select tl2 temp___247) (select tl1 temp___247))
  (and
  (forall ((temp___248 Int))
  (=> (and (<= 1 temp___248) (<= temp___248 3))
  (ite (<= v2 temp___248)
  (= (select (rec__untangle_tests__triangle__vertices
             (us_split_fields3 (select tl2 temp___247))) temp___248) (select 
  (rec__untangle_tests__triangle__vertices
  (us_split_fields3 (select tl1 temp___247))) temp___248))
  (= (rec__untangle_tests__coordinate__w
     (us_split_fields1
     (select (rec__untangle_tests__triangle__vertices
             (us_split_fields3 (select tl2 temp___247))) temp___248))) 
  (rec__untangle_tests__coordinate__w
  (us_split_fields1
  (select (rec__untangle_tests__triangle__vertices
          (us_split_fields3 (select tl1 temp___247))) temp___248)))))))
  (= (rec__untangle_tests__triangle__normal
     (us_split_fields3 (select tl2 temp___247))) (rec__untangle_tests__triangle__normal
                                                 (us_split_fields3
                                                 (select tl1 temp___247))))))))
  (and (<= 1 v2) (<= v2 3))))

(assert
;; WP_parameter_def
 ;; File "untangle_tests.adb", line 44, characters 0-0
  (not
  (not (or (fp.isInfinite (fp.add RNE (to_rep
                                      (rec__untangle_tests__coordinate__x
                                      (us_split_fields1
                                      (select (rec__untangle_tests__triangle__vertices
                                              (us_split_fields3
                                              (select tl2 t2))) v2)))) 
  (to_rep (rec__untangle_tests__coordinate__x (us_split_fields1 o))))) (fp.isNaN (fp.add RNE 
  (to_rep
  (rec__untangle_tests__coordinate__x
  (us_split_fields1
  (select (rec__untangle_tests__triangle__vertices
          (us_split_fields3 (select tl2 t2))) v2)))) (to_rep
                                                     (rec__untangle_tests__coordinate__x
                                                     (us_split_fields1 o)))))))))
(check-sat)
