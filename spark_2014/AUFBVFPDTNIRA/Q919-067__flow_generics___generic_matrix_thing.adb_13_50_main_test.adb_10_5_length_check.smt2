;; produced by cvc4_16.drv ;;
(set-info :smt-lib-version 2.5)
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
(define-fun fp.isFinite32 ((x Float32)) Bool (not (or (fp.isInfinite x) (fp.isNaN x))))
(define-fun fp.isIntegral32 ((x Float32)) Bool (or (fp.isZero x) (and (fp.isNormal x) (= x (fp.roundToIntegral RNE x)))))
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-const us_null_ext__ us_private)

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

(declare-sort integer 0)

(declare-fun integerqtint (integer) Int)

;; integer'axiom
  (assert
  (forall ((i integer))
  (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-const dummy integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun pow2 (Int) Int)

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                (fp.isPositive x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                 (fp.isNegative x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero x)
                                            (fp.isPositive x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero x)
                                             (fp.isNegative x)))

(declare-const max_int Int)

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isPositive y))
                    (and (fp.isNegative x) (fp.isNegative y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isNegative y))
                    (and (fp.isNegative x) (fp.isPositive y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive z))
                    (=> (diff_sign x y) (fp.isNegative z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt1 (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive x) (< 0.0 r))
                 (and (fp.isNegative x) (< r 0.0))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort float 0)

(declare-fun user_eq1 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-const dummy1 float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun to_rep ((x integer)) Int (integerqtint x))

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-fun to_rep1 (float) Float32)

(declare-fun of_rep1 (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (fp.isFinite32 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (fp.isFinite32 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                                  (of_rep1 x))) )))

(declare-sort map1 0)

(declare-datatypes () ((map__ref (mk_map__ref (map__content map1)))))
(declare-fun get (map1 Int Int) float)

(declare-fun set (map1 Int Int float) map1)

;; Select_eq
  (assert
  (forall ((m map1))
  (forall ((i Int))
  (forall ((j Int))
  (forall ((a float))
  (! (= (get (set m i j a) i j) a) :pattern ((set m i j a)) ))))))

;; Select_neq
  (assert
  (forall ((m map1))
  (forall ((i Int) (i2 Int))
  (forall ((j Int) (j2 Int))
  (forall ((a float))
  (! (=> (not (and (= i i2) (= j j2)))
     (= (get (set m i j a) i2 j2) (get m i2 j2))) :pattern ((get
                                                            (set m i j a) i2
                                                            j2)) :pattern (
  (set m i j a) (get m i2 j2)) ))))))

(declare-fun slide (map1 Int Int Int Int) map1)

;; slide_def
  (assert
  (forall ((a map1))
  (forall ((new_first Int) (old_first Int))
  (forall ((new_first_2 Int) (old_first_2 Int))
  (forall ((i Int))
  (forall ((j Int))
  (! (= (get (slide a old_first new_first old_first_2 new_first_2) i j)
  (get a (- i (- new_first old_first)) (- j (- new_first_2 old_first_2)))) :pattern (
  (get (slide a old_first new_first old_first_2 new_first_2) i j)) )))))))

(define-fun bool_eq ((a map1) (a__first Int) (a__last Int) (a__first_2 Int)
  (a__last_2 Int) (b map1) (b__first Int) (b__last Int) (b__first_2 Int)
  (b__last_2 Int)) Bool (ite (and
                             (and
                             (ite (<= a__first a__last)
                             (and (<= b__first b__last)
                             (= (- a__last a__first) (- b__last b__first)))
                             (< b__last b__first))
                             (ite (<= a__first_2 a__last_2)
                             (and (<= b__first_2 b__last_2)
                             (= (- a__last_2 a__first_2) (- b__last_2 b__first_2)))
                             (< b__last_2 b__first_2)))
                             (forall ((temp___idx_155 Int)
                             (temp___idx_156 Int))
                             (=>
                             (and
                             (and (<= a__first temp___idx_155)
                             (<= temp___idx_155 a__last))
                             (and (<= a__first_2 temp___idx_156)
                             (<= temp___idx_156 a__last_2)))
                             (= (to_rep1
                                (get a temp___idx_155 temp___idx_156))
                             (to_rep1
                             (get b (+ (- b__first a__first) temp___idx_155)
                             (+ (- b__first_2 a__first_2) temp___idx_156)))))))
                        true false))

;; bool_eq_rev
  (assert
  (forall ((a map1) (b map1))
  (forall ((a__first Int) (a__last Int) (a__first_2 Int) (a__last_2 Int)
  (b__first Int) (b__last Int) (b__first_2 Int) (b__last_2 Int))
  (=>
  (= (bool_eq b b__first b__last b__first_2 b__last_2 a a__first a__last
     a__first_2 a__last_2) true)
  (and
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (ite (<= a__first_2 a__last_2)
  (and (<= b__first_2 b__last_2)
  (= (- a__last_2 a__first_2) (- b__last_2 b__first_2)))
  (< b__last_2 b__first_2)))
  (forall ((temp___idx_155 Int) (temp___idx_156 Int))
  (=>
  (and (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last))
  (and (<= a__first_2 temp___idx_156) (<= temp___idx_156 a__last_2)))
  (= (to_rep1 (get a temp___idx_155 temp___idx_156)) (to_rep1
                                                     (get b
                                                     (+ (- b__first a__first) temp___idx_155)
                                                     (+ (- b__first_2 a__first_2) temp___idx_156)))))))))))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high) (and (in_range low) (in_range high))))))

(declare-sort t1 0)

(declare-fun first1 (t1) integer)

(declare-fun last1 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep (first1 (mk1 f l))) f) (= (to_rep (last1 (mk1 f l))) l)))) :pattern (
  (mk1 f l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high) (and (in_range low) (in_range high))))))

(declare-datatypes () ((us_t (mk___t (elts map1)(rt t)(rt_2 t1)))))
(define-fun to_array ((a us_t)) map1 (elts a))

(define-fun of_array ((a map1) (f Int) (l Int) (f2 Int)
  (l2 Int)) us_t (mk___t a (mk f l) (mk1 f2 l2)))

(define-fun first2 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last2 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first2 a) (last2 a))
                                  (+ (- (last2 a) (first2 a)) 1) 0))

(define-fun first_2 ((a us_t)) Int (to_rep (first1 (rt_2 a))))

(define-fun last_2 ((a us_t)) Int (to_rep (last1 (rt_2 a))))

(define-fun length_2 ((a us_t)) Int (ite (<= (first_2 a) (last_2 a))
                                    (+ (- (last_2 a) (first_2 a)) 1) 0))

(define-fun dynamic_property2 ((range_first1 Int) (range_last1 Int) (f1 Int)
  (l1 Int) (range_first2 Int) (range_last2 Int) (f2 Int)
  (l2 Int)) Bool (and (dynamic_property range_first1 range_last1 f1 l1)
                 (dynamic_property1 range_first2 range_last2 f2 l2)))

(declare-const value__size Int)

(declare-fun object__size (map1) Int)

(declare-const value__component__size Int)

(declare-fun object__component__size (map1) Int)

(declare-const value__alignment Int)

(declare-fun object__alignment (map1) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a map1)) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert (forall ((a map1)) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a map1)) (<= 0 (object__alignment a))))

(define-fun bool_eq1 ((x us_t)
  (y us_t)) Bool (bool_eq (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (to_rep (first1 (rt_2 x)))
                 (to_rep (last1 (rt_2 x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y))) (to_rep (first1 (rt_2 y)))
                 (to_rep (last1 (rt_2 y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-const dummy2 us_t)

(declare-datatypes ()
((real_matrix__ref (mk_real_matrix__ref (real_matrix__content us_t)))))
(define-fun real_matrix__ref___2__projection ((a real_matrix__ref)) us_t
  (real_matrix__content a))

(declare-fun transpose1 (us_t) us_t)

(declare-fun transpose__function_guard (us_t us_t) Bool)

(define-fun dynamic_invariant ((temp___expr_527 us_t)
  (temp___is_init_523 Bool) (temp___skip_constant_524 Bool)
  (temp___do_toplevel_525 Bool)
  (temp___do_typ_inv_526 Bool)) Bool (=>
                                     (not (= temp___skip_constant_524 true))
                                     (dynamic_property2 (- 2147483648)
                                     2147483647 (first2 temp___expr_527)
                                     (last2 temp___expr_527) (- 2147483648)
                                     2147483647 (first_2 temp___expr_527)
                                     (last_2 temp___expr_527))))

;; transpose__post_axiom
  (assert
  (forall ((x us_t))
  (! (=> (dynamic_invariant x true true true true) (dynamic_invariant
     (transpose1 x) true false true true)) :pattern ((transpose1 x)) )))

(declare-fun omultiply__4 (us_t us_t) us_t)

(declare-fun omultiply__4__function_guard (us_t us_t us_t) Bool)

;; omultiply__4__post_axiom
  (assert
  (forall ((left us_t) (right us_t))
  (! (=>
     (and (dynamic_invariant left true true true true) (dynamic_invariant
     right true true true true)) (dynamic_invariant (omultiply__4 left right)
     true false true true)) :pattern ((omultiply__4 left right)) )))

(declare-sort taxa_matrixP1 0)

(declare-fun taxa_matrixP1qtint (taxa_matrixP1) Int)

;; taxa_matrixP1'axiom
  (assert
  (forall ((i taxa_matrixP1))
  (and (<= 1 (taxa_matrixP1qtint i)) (<= (taxa_matrixP1qtint i) 3))))

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (taxa_matrixP1 taxa_matrixP1) Bool)

(declare-const dummy3 taxa_matrixP1)

(declare-datatypes ()
((taxa_matrixP1__ref
 (mk_taxa_matrixP1__ref (taxa_matrixP1__content taxa_matrixP1)))))
(define-fun taxa_matrixP1__ref___2__projection ((a taxa_matrixP1__ref)) taxa_matrixP1
  (taxa_matrixP1__content a))

(declare-sort taxa_matrixP2 0)

(declare-fun taxa_matrixP2qtint (taxa_matrixP2) Int)

;; taxa_matrixP2'axiom
  (assert
  (forall ((i taxa_matrixP2))
  (and (<= 1 (taxa_matrixP2qtint i)) (<= (taxa_matrixP2qtint i) 3))))

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (taxa_matrixP2 taxa_matrixP2) Bool)

(declare-const dummy4 taxa_matrixP2)

(declare-datatypes ()
((taxa_matrixP2__ref
 (mk_taxa_matrixP2__ref (taxa_matrixP2__content taxa_matrixP2)))))
(define-fun taxa_matrixP2__ref___2__projection ((a taxa_matrixP2__ref)) taxa_matrixP2
  (taxa_matrixP2__content a))

(declare-sort taxb_matrixP1 0)

(declare-fun taxb_matrixP1qtint (taxb_matrixP1) Int)

;; taxb_matrixP1'axiom
  (assert
  (forall ((i taxb_matrixP1))
  (and (<= 1 (taxb_matrixP1qtint i)) (<= (taxb_matrixP1qtint i) 3))))

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (taxb_matrixP1 taxb_matrixP1) Bool)

(declare-const dummy5 taxb_matrixP1)

(declare-datatypes ()
((taxb_matrixP1__ref
 (mk_taxb_matrixP1__ref (taxb_matrixP1__content taxb_matrixP1)))))
(define-fun taxb_matrixP1__ref___2__projection ((a taxb_matrixP1__ref)) taxb_matrixP1
  (taxb_matrixP1__content a))

(declare-sort taxb_matrixP2 0)

(declare-fun taxb_matrixP2qtint (taxb_matrixP2) Int)

;; taxb_matrixP2'axiom
  (assert
  (forall ((i taxb_matrixP2))
  (and (<= 1 (taxb_matrixP2qtint i)) (<= (taxb_matrixP2qtint i) 2))))

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 2)))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (taxb_matrixP2 taxb_matrixP2) Bool)

(declare-const dummy6 taxb_matrixP2)

(declare-datatypes ()
((taxb_matrixP2__ref
 (mk_taxb_matrixP2__ref (taxb_matrixP2__content taxb_matrixP2)))))
(define-fun taxb_matrixP2__ref___2__projection ((a taxb_matrixP2__ref)) taxb_matrixP2
  (taxb_matrixP2__content a))

(declare-sort tbxb_matrixP1 0)

(declare-fun tbxb_matrixP1qtint (tbxb_matrixP1) Int)

;; tbxb_matrixP1'axiom
  (assert
  (forall ((i tbxb_matrixP1))
  (and (<= 1 (tbxb_matrixP1qtint i)) (<= (tbxb_matrixP1qtint i) 2))))

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 2)))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (tbxb_matrixP1 tbxb_matrixP1) Bool)

(declare-const dummy7 tbxb_matrixP1)

(declare-datatypes ()
((tbxb_matrixP1__ref
 (mk_tbxb_matrixP1__ref (tbxb_matrixP1__content tbxb_matrixP1)))))
(define-fun tbxb_matrixP1__ref___2__projection ((a tbxb_matrixP1__ref)) tbxb_matrixP1
  (tbxb_matrixP1__content a))

(declare-sort tbxb_matrixP2 0)

(declare-fun tbxb_matrixP2qtint (tbxb_matrixP2) Int)

;; tbxb_matrixP2'axiom
  (assert
  (forall ((i tbxb_matrixP2))
  (and (<= 1 (tbxb_matrixP2qtint i)) (<= (tbxb_matrixP2qtint i) 2))))

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 2)))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (tbxb_matrixP2 tbxb_matrixP2) Bool)

(declare-const dummy8 tbxb_matrixP2)

(declare-datatypes ()
((tbxb_matrixP2__ref
 (mk_tbxb_matrixP2__ref (tbxb_matrixP2__content tbxb_matrixP2)))))
(define-fun tbxb_matrixP2__ref___2__projection ((a tbxb_matrixP2__ref)) tbxb_matrixP2
  (tbxb_matrixP2__content a))

(declare-const original map1)

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const map2 map1)

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool)
  (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool)
  (temp___do_typ_inv_17 Bool)) Bool (=>
                                    (or (= temp___is_init_14 true)
                                    (<= (- 2147483648) 2147483647)) (in_range
                                    temp___expr_18)))

(define-fun dynamic_invariant2 ((temp___expr_60 Float32)
  (temp___is_init_56 Bool) (temp___skip_constant_57 Bool)
  (temp___do_toplevel_58 Bool)
  (temp___do_typ_inv_59 Bool)) Bool (=>
                                    (or (= temp___is_init_56 true)
                                    (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                    (fp.isFinite32 temp___expr_60)))

(declare-const o map1)

(declare-const o1 t)

(declare-const o2 t1)

(declare-const o3 map1)

(declare-const o4 t)

(declare-const o5 t1)

(declare-const temp___2159 map1)

(declare-const temp___21591 t)

(declare-const temp___21592 t1)

(define-fun temp___21593 () us_t (mk___t temp___2159 temp___21591
                                 temp___21592))

(define-fun o6 () us_t (mk___t o3 o4 o5))

(define-fun o7 () us_t (mk___t o o1 o2))

;; H
  (assert
  (and (= o7 (transpose1 (mk___t map2 (mk 1 3) (mk1 1 2))))
  (dynamic_invariant o7 true false true true)))

;; H
  (assert
  (and (= o6 (omultiply__4 o7 (mk___t original (mk 1 3) (mk1 1 3))))
  (dynamic_invariant o6 true false true true)))

;; H
  (assert
  (and (= temp___21593 (omultiply__4 o6 (mk___t map2 (mk 1 3) (mk1 1 2))))
  (dynamic_invariant temp___21593 true false true true)))

(assert
;; WP_parameter_def
 ;; File "generic_matrix_thing.ads", line 21, characters 0-0
  (not
  (= (ite (<= (to_rep (first1 temp___21592)) (to_rep (last1 temp___21592)))
     (+ (- (to_rep (last1 temp___21592)) (to_rep (first1 temp___21592))) 1)
     0) (ite (<= 1 2) (+ (- 2 1) 1) 0))))
(check-sat)
(exit)
