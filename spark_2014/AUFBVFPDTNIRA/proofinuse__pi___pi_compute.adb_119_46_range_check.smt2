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
(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-sort character 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

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
  (forall ((x character)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
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
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

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

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy4 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-sort fixed 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2146435072)))

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

(declare-fun dummy5 () fixed)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun to_fixed (fixed) Int)

(declare-fun of_fixed (Int) fixed)

(declare-fun user_eq5 (fixed fixed) Bool)

(define-fun pos_div_relation ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (and (<= exact res) (<= res (+ exact 1)))))))

(define-fun pos_div_relation_rna ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (ite (< (- num (* exact den)) (- (* (+ exact 1) den) num))
                  (= res exact) (= res (+ exact 1)))))))

(declare-fun fxp_mult (Int Int) Int)

;; fxp_mult_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (or (= x 0) (= y 0)) (= (fxp_mult x y) 0)
     (ite (or (and (< 0 x) (< 0 y)) (and (< x 0) (< y 0))) (pos_div_relation
     (fxp_mult x y) (* x y) 1048576) (pos_div_relation (- (fxp_mult x y))
     (- (* x y)) 1048576))) :pattern ((fxp_mult x y)) ))))

(declare-fun fxp_div (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div x y) (* x 1048576)
     y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div x y)
     (* (- x) 1048576) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div x y))
     (* (- x) 1048576) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div x y))
     (* x 1048576) (- y))))))) :pattern ((fxp_div x y)) ))))

(declare-fun fxp_div_int (Int Int) Int)

;; fxp_div_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_int x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div_int x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div_int x y) (- x)
     (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div_int x y)) (- x)
     y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div_int x y)) x
     (- y))))))) :pattern ((fxp_div_int x y)) ))))

(declare-fun fxp_div_result_int (Int Int) Int)

;; fxp_div_result_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_result_int x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna
     (fxp_div_result_int x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation_rna
     (fxp_div_result_int x y) (- x) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna
     (- (fxp_div_result_int x y)) (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna
     (- (fxp_div_result_int x y)) x (- y))))))) :pattern ((fxp_div_result_int
                                                          x y)) ))))

(declare-fun to_int2 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int2 x) 0)
     (ite (< 0 x) (pos_div_relation (to_int2 x) x 1048576) (pos_div_relation
     (- (to_int2 x)) (- x) 1048576))) :pattern ((to_int2 x)) )))

(declare-fun of_real (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x fixed))
  (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)) )))

;; range_axiom
  (assert (forall ((x fixed)) (in_range4 (to_fixed x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed
                                                                (of_fixed x))) )))

(declare-datatypes () ((fixed__ref (mk_fixed__ref (fixed__content fixed)))))
(define-fun fixed__ref___projection ((a fixed__ref)) fixed (fixed__content a))

(declare-fun leibniz_fixed (tuple0) fixed)

(declare-fun leibniz_fixed__function_guard (fixed tuple0) Bool)

;; leibniz_fixed__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (= (to_fixed (leibniz_fixed us_void_param)) 3189596) :pattern ((leibniz_fixed
                                                                    us_void_param)) )))

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-fun leibniz_float (tuple0) Float32)

(declare-fun leibniz_float__function_guard (Float32 tuple0) Bool)

;; leibniz_float__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (leibniz_float us_void_param)))
     (and (fp.eq result (fp #b0 #b10000000 #b10000101010110110000000))
     (dynamic_invariant result true false true))) :pattern ((leibniz_float
                                                            us_void_param)) )))

(declare-fun shanks_fixed (tuple0) fixed)

(declare-fun shanks_fixed__function_guard (fixed tuple0) Bool)

;; shanks_fixed__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (= (to_fixed (shanks_fixed us_void_param)) 3293842) :pattern ((shanks_fixed
                                                                   us_void_param)) )))

(declare-fun shanks_float (tuple0) Float32)

(declare-fun shanks_float__function_guard (Float32 tuple0) Bool)

;; shanks_float__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (shanks_float us_void_param)))
     (and (fp.eq result (fp #b0 #b10000000 #b10010010000101001010011))
     (dynamic_invariant result true false true))) :pattern ((shanks_float
                                                            us_void_param)) )))

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
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 1)) 76)
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 3)) 105))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 4)) 98))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 5)) 110))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 6)) 105))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 7)) 122))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 8)) 32))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 9)) 102))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 10)) 105))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 11)) 120))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 12)) 101))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 13)) 100))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 14)) 32))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 15)) 118))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 16)) 97))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 17)) 108))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 18)) 117))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 19)) 101))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 20)) 32))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 21)) 102))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 22)) 111))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 23)) 114))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 24)) 32))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 25)) 80))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 26)) 105))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 27)) 32))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 28)) 105))
     (= (to_rep (select (temp___String_Literal_517 us_void_param) 29)) 115)) :pattern (
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
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 1)) 76)
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 3)) 105))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 4)) 98))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 5)) 110))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 6)) 105))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 7)) 116))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 8)) 122))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 10)) 102))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 11)) 108))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 12)) 111))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 13)) 97))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 14)) 116))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 15)) 32))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 16)) 118))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 17)) 97))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 18)) 108))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 19)) 117))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 20)) 101))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 21)) 32))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 22)) 102))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 23)) 111))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 24)) 114))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 25)) 32))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 26)) 80))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 27)) 105))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 28)) 32))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 29)) 105))
     (= (to_rep (select (temp___String_Literal_520 us_void_param) 30)) 115)) :pattern (
  (temp___String_Literal_520 us_void_param)) )))

(declare-fun temp___String_Literal_523 (tuple0) (Array Int character))

;; temp___String_Literal_523__def_axiom
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
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 1)) 83)
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 2)) 104))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 3)) 97))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 4)) 110))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 5)) 107))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 6)) 115))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 7)) 32))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 8)) 102))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 9)) 105))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 10)) 120))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 11)) 101))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 12)) 100))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 13)) 32))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 14)) 118))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 15)) 97))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 16)) 108))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 17)) 117))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 18)) 101))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 19)) 32))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 20)) 102))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 21)) 111))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 22)) 114))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 23)) 32))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 24)) 80))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 25)) 105))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 26)) 32))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 27)) 105))
     (= (to_rep (select (temp___String_Literal_523 us_void_param) 28)) 115)) :pattern (
  (temp___String_Literal_523 us_void_param)) )))

(declare-fun temp___String_Literal_526 (tuple0) (Array Int character))

;; temp___String_Literal_526__def_axiom
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
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 1)) 83)
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 2)) 104))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 3)) 97))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 4)) 110))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 5)) 107))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 6)) 115))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 7)) 32))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 8)) 102))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 9)) 108))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 10)) 111))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 11)) 97))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 12)) 116))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 13)) 32))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 14)) 118))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 15)) 97))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 16)) 108))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 17)) 117))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 18)) 101))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 19)) 32))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 20)) 102))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 21)) 111))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 22)) 114))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 23)) 32))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 24)) 80))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 25)) 105))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 26)) 32))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 27)) 105))
     (= (to_rep (select (temp___String_Literal_526 us_void_param) 28)) 115)) :pattern (
  (temp___String_Literal_526 us_void_param)) )))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

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
                                     (in_range1 temp___expr_15)))

(declare-fun o () fixed)

(declare-fun o1 () Int)

(declare-fun o2 () us_image)

(declare-fun temp___519 () (Array Int character))

(declare-fun temp___5191 () t)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

;; H
  (assert (and (= o (leibniz_fixed Tuple0)) (= (to_fixed o) 3189596)))

;; H
  (assert (= o1 (to_fixed o)))

;; H
  (assert (= o2 (attr__ATTRIBUTE_IMAGE4 o1)))

;; H
  (assert (= (mk___t temp___519 temp___5191) (to_string o2)))

;; H
  (assert
  (=> (<= (to_rep1 (first temp___5191)) (to_rep1 (last temp___5191)))
  (= o3 (+ (- (to_rep1 (last temp___5191)) (to_rep1 (first temp___5191))) 1))))

;; H
  (assert
  (=> (not (<= (to_rep1 (first temp___5191)) (to_rep1 (last temp___5191))))
  (= o3 0)))

;; H
  (assert (=> (<= 1 29) (= o4 (+ (- 29 1) 1))))

;; H
  (assert (=> (not (<= 1 29)) (= o4 0)))

;; H
  (assert (= o5 (+ o4 o3)))

;; H
  (assert (= o6 (+ 1 o5)))

;; H
  (assert (= o7 (- o6 1)))

(assert
;; WP_parameter_def
 ;; File "pi_compute.adb", line 85, characters 0-0
  (not (in_range2 o7)))
(check-sat)
