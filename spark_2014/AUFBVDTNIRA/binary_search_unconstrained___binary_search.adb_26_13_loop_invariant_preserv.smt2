;; produced by cvc4_14.drv ;;
(set-logic AUFBVDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.0)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
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

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort topt_indexB 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (topt_indexB topt_indexB) Bool)

(declare-fun dummy1 () topt_indexB)

(declare-datatypes ()
((topt_indexB__ref (mk_topt_indexB__ref (topt_indexB__content topt_indexB)))))
(define-fun topt_indexB__ref___projection ((a topt_indexB__ref)) topt_indexB 
  (topt_indexB__content a))

(declare-sort index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483646)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (index index) Bool)

(declare-fun dummy2 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant1 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 1 2147483646)) (in_range3
                                      temp___expr_142)))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun to_rep1 (topt_indexB) Int)

(declare-fun of_rep1 (Int) topt_indexB)

;; inversion_axiom
  (assert
  (forall ((x topt_indexB))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x topt_indexB)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) topt_indexB)

(declare-fun last (t) topt_indexB)

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

(declare-datatypes () ((us_t (mk___t (elts (Array Int integer))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))

(define-fun of_array ((a (Array Int integer)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int integer)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int integer)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes () ((ar__ref (mk_ar__ref (ar__content us_t)))))
(define-fun ar__ref___projection ((a ar__ref)) us_t (ar__content a))

(define-fun dynamic_invariant2 ((temp___expr_148 us_t)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (not (= temp___skip_constant_146 true))
                                      (dynamic_property 1 2147483646
                                      (first1 temp___expr_148)
                                      (last1 temp___expr_148))))

(declare-fun empty (us_t) Bool)

(declare-fun empty__function_guard (Bool us_t) Bool)

;; empty__post_axiom
  (assert true)

;; empty__def_axiom
  (assert
  (forall ((a us_t))
  (! (=> (empty__function_guard (empty a) a)
     (= (= (empty a) true) (< (last1 a) (first1 a)))) :pattern ((empty a)) )))

(declare-fun sorted (us_t) Bool)

(declare-fun sorted__function_guard (Bool us_t) Bool)

;; sorted__post_axiom
  (assert true)

;; sorted__def_axiom
  (assert
  (forall ((a us_t))
  (! (=> (sorted__function_guard (sorted a) a)
     (= (= (sorted a) true)
     (forall ((i1 Int))
     (=> (and (<= (first1 a) i1) (<= i1 (last1 a)))
     (forall ((i2 Int))
     (=> (and (<= i1 i2) (<= i2 (last1 a)))
     (<= (to_rep (select (to_array a) i1)) (to_rep (select (to_array a) i2))))))))) :pattern (
  (sorted a)) )))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun left () Int)

(declare-fun right () Int)

(declare-fun med () Int)

(declare-fun binary_search__search__result () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () integer)

(declare-fun o4 () Int)

(declare-fun o5 () Bool)

(declare-fun o6 () Int)

(declare-fun o7 () integer)

(declare-fun o8 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () integer)

(declare-fun o11 () Int)

(declare-fun o12 () Bool)

(declare-fun o13 () Bool)

(declare-fun o14 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () Int)

(declare-fun o17 () integer)

(declare-fun o18 () Int)

(declare-fun o19 () Int)

(declare-fun o20 () Int)

(declare-fun o21 () Int)

(declare-fun o22 () integer)

(declare-fun o23 () Int)

(declare-fun o24 () Int)

(declare-fun binary_search__search__result1 () Int)

(declare-fun result () Bool)

(declare-fun binary_search__search__result2 () Int)

(declare-fun result1 () Int)

(declare-fun left1 () Int)

(declare-fun result2 () Int)

(declare-fun right1 () Int)

(declare-fun result3 () Bool)

(declare-fun binary_search__search__result3 () Int)

(declare-fun result4 () Bool)

(declare-fun binary_search__search__result4 () Int)

(declare-fun left2 () Int)

(declare-fun right2 () Int)

(declare-fun med1 () Int)

(declare-fun binary_search__search__result5 () Int)

(declare-fun temp___172 () Int)

(declare-fun result5 () Int)

(declare-fun temp___1721 () Int)

(declare-fun result6 () Int)

(declare-fun med2 () Int)

(declare-fun result7 () Bool)

(declare-fun result8 () Int)

(declare-fun left3 () Int)

(declare-fun result9 () Bool)

(declare-fun result10 () Int)

(declare-fun right3 () Int)

(declare-fun binary_search__search__result6 () Int)

;; H
  (assert (dynamic_invariant2 a true false true))

;; H
  (assert (in_range1 i))

;; H
  (assert (sorted__function_guard (sorted a) a))

;; H
  (assert (= (sorted a) true))

;; H
  (assert (=> (<= 1 2147483646) (in_range3 left)))

;; H
  (assert (=> (<= 1 2147483646) (in_range3 right)))

;; H
  (assert (=> (<= 1 2147483646) (in_range3 med)))

;; H
  (assert
  (and (and (= result (empty a)) (empty__function_guard result a))
  (= (= result true) (< (to_rep1 (last (rt a))) (to_rep1 (first (rt a)))))))

;; H
  (assert (not (= result true)))

;; H
  (assert (= binary_search__search__result2 binary_search__search__result))

;; H
  (assert (= binary_search__search__result2 binary_search__search__result1))

;; H
  (assert
  (and (= o (to_rep1 (first (rt a)))) (in_range3 (to_rep1 (first (rt a))))))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref left)))

;; H
  (assert (= left1 o))

;; H
  (assert
  (and (= o1 (to_rep1 (last (rt a)))) (in_range3 (to_rep1 (last (rt a))))))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref right)))

;; H
  (assert (= right1 o1))

;; H
  (assert
  (and (<= (to_rep1 (first (rt a))) left1)
  (<= left1 (to_rep1 (last (rt a))))))

;; H
  (assert (= o2 left1))

;; H
  (assert (= o3 (select (elts a) o2)))

;; H
  (assert (= o4 (to_rep o3)))

;; H
  (assert (= o5 (ite (= o4 i) true false)))

;; H
  (assert (= result3 (ite (= left1 right1) o5 false)))

;; H
  (assert (not (= result3 true)))

;; H
  (assert
  (and (<= (to_rep1 (first (rt a))) right1)
  (<= right1 (to_rep1 (last (rt a))))))

;; H
  (assert (= o9 right1))

;; H
  (assert (= o10 (select (elts a) o9)))

;; H
  (assert (= o11 (to_rep o10)))

;; H
  (assert (= o12 (ite (< o11 i) true false)))

;; H
  (assert
  (and (<= (to_rep1 (first (rt a))) left1)
  (<= left1 (to_rep1 (last (rt a))))))

;; H
  (assert (= o6 left1))

;; H
  (assert (= o7 (select (elts a) o6)))

;; H
  (assert (= o8 (to_rep o7)))

;; H
  (assert (= o13 (ite (< i o8) true false)))

;; H
  (assert (= result4 (ite (= o13 false) o12 true)))

;; H
  (assert (not (= result4 true)))

;; H
  (assert (= binary_search__search__result4 binary_search__search__result2))

;; H
  (assert (= binary_search__search__result3 binary_search__search__result4))

;; H
  (assert (<= left1 right1))

;; H
  (assert
  (and
  (and (<= (to_rep1 (first (rt a))) left2)
  (<= left2 (to_rep1 (last (rt a)))))
  (and (<= (to_rep1 (first (rt a))) right2)
  (<= right2 (to_rep1 (last (rt a)))))))

;; H
  (assert
  (forall ((index1 Int))
  (=> (and (<= (to_rep1 (first (rt a))) index1) (<= index1 (- left2 1)))
  (< (to_rep (select (elts a) index1)) i))))

;; H
  (assert
  (forall ((index1 Int))
  (=>
  (and (<= (to_rep1 (first (rt a))) index1)
  (<= index1 (to_rep1 (last (rt a)))))
  (=> (< right2 index1) (< i (to_rep (select (elts a) index1)))))))

;; H
  (assert
  (and
  (and
  (and (=> (<= 1 2147483646) (in_range3 left2))
  (=> (<= 1 2147483646) (in_range3 right2)))
  (=> (<= 1 2147483646) (in_range3 med1))) (<= left2 right2)))

;; H
  (assert (= temp___172 result5))

;; H
  (assert (= temp___1721 (- right2 left2)))

;; H
  (assert
  (and (= o14 (+ left2 (div1 (- right2 left2) 2))) (in_range2
  (+ left2 (div1 (- right2 left2) 2)))))

;; H
  (assert (and (= o15 o14) (in_range3 o14)))

;; H
  (assert (= med1 result6))

;; H
  (assert (= med2 o15))

;; H
  (assert
  (forall ((i1 Int))
  (=> (and (<= (to_rep1 (first (rt a))) i1) (<= i1 (to_rep1 (last (rt a)))))
  (forall ((i2 Int))
  (=> (and (<= i1 i2) (<= i2 (to_rep1 (last (rt a)))))
  (<= (to_rep (select (elts a) i1)) (to_rep (select (elts a) i2))))))))

;; H
  (assert
  (and (<= (to_rep1 (first (rt a))) med2) (<= med2 (to_rep1 (last (rt a))))))

;; H
  (assert (= o16 med2))

;; H
  (assert (= o17 (select (elts a) o16)))

;; H
  (assert (= o18 (to_rep o17)))

;; H
  (assert (= result7 (ite (< o18 i) true false)))

;; H
  (assert
  (=> (= result7 true) (and (= o19 (+ med2 1)) (in_range2 (+ med2 1)))))

;; H
  (assert (=> (= result7 true) (and (= o20 o19) (in_range3 o19))))

;; H
  (assert (=> (= result7 true) (= left2 result8)))

;; H
  (assert (=> (= result7 true) (= left3 o20)))

;; H
  (assert
  (=> (= result7 true)
  (forall ((i1 Int))
  (=> (and (<= (to_rep1 (first (rt a))) i1) (<= i1 med2))
  (<= (to_rep (select (elts a) i1)) (to_rep (select (elts a) med2)))))))

;; H
  (assert
  (=> (= result7 true)
  (= binary_search__search__result6 binary_search__search__result5)))

;; H
  (assert (=> (= result7 true) (= right3 right2)))

;; H
  (assert
  (=> (not (= result7 true))
  (and (<= (to_rep1 (first (rt a))) med2) (<= med2 (to_rep1 (last (rt a)))))))

;; H
  (assert (=> (not (= result7 true)) (= o21 med2)))

;; H
  (assert (=> (not (= result7 true)) (= o22 (select (elts a) o21))))

;; H
  (assert (=> (not (= result7 true)) (= o23 (to_rep o22))))

;; H
  (assert (=> (not (= result7 true)) (= result9 (ite (< i o23) true false))))

;; H
  (assert (=> (not (= result7 true)) (= result9 true)))

;; H
  (assert
  (=> (not (= result7 true)) (and (= o24 (- med2 1)) (in_range3 (- med2 1)))))

;; H
  (assert (=> (not (= result7 true)) (= right2 result10)))

;; H
  (assert (=> (not (= result7 true)) (= right3 o24)))

;; H
  (assert
  (=> (not (= result7 true))
  (and (<= (to_rep1 (first (rt a))) med2) (<= med2 (to_rep1 (last (rt a)))))))

;; H
  (assert
  (=> (not (= result7 true))
  (forall ((i2 Int))
  (=> (and (<= med2 i2) (<= i2 (to_rep1 (last (rt a)))))
  (<= (to_rep (select (elts a) med2)) (to_rep (select (elts a) i2)))))))

;; H
  (assert
  (=> (not (= result7 true))
  (= binary_search__search__result6 binary_search__search__result5)))

;; H
  (assert (=> (not (= result7 true)) (= left3 left2)))

;; H
  (assert (<= left3 right3))

(declare-fun index1 () Int)

;; H
  (assert (<= (to_rep1 (first (rt a))) index1))

;; H
  (assert (<= index1 (- left3 1)))

(assert
;; WP_parameter_def
 ;; File "binary_search.ads", line 16, characters 0-0
  (not (< (to_rep (select (elts a) index1)) i)))
(check-sat)
