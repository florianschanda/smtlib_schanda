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

(declare-sort content 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (content content) Bool)

(declare-fun dummy1 () content)

(declare-datatypes ()
((content__ref (mk_content__ref (content__content content)))))
(define-fun content__ref___projection ((a content__ref)) content (content__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_202 Int)
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)) Bool (=>
                                      (or (= temp___is_init_199 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range2 temp___expr_202)))

(declare-fun to_rep1 (content) Int)

(declare-fun of_rep1 (Int) content)

;; inversion_axiom
  (assert
  (forall ((x content))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x content)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int content))))))
(declare-fun slide ((Array Int content) Int Int) (Array Int content))

;; slide_eq
  (assert
  (forall ((a (Array Int content)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int content)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int content) Int Int (Array Int content) Int
  Int) (Array Int content))

;; concat_def
  (assert
  (forall ((a (Array Int content)) (b (Array Int content)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (content Int) (Array Int content))

;; singleton_def
  (assert
  (forall ((v content))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int content)) (a__first Int) (a__last Int)
  (b (Array Int content)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_134 Int))
                           (=>
                           (and (<= a__first temp___idx_134)
                           (<= temp___idx_134 a__last))
                           (= (to_rep1 (select a temp___idx_134)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_134)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int content)) (b (Array Int content)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_134 Int))
  (=> (and (<= a__first temp___idx_134) (<= temp___idx_134 a__last))
  (= (to_rep1 (select a temp___idx_134)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_134)))))))))))

(declare-fun compare ((Array Int content) Int Int (Array Int content) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int content)) (b (Array Int content)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int content)) (b (Array Int content)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int content)) (b (Array Int content)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range1 low) (in_range1 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int content))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int content) (elts a))

(define-fun of_array ((a (Array Int content)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int content)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int content)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int content)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int content))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int content))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int content))) (<= 0 (object__alignment a))))

(define-fun bool_eq3 ((x us_t)
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes ()
((h_type__ref (mk_h_type__ref (h_type__content us_t)))))
(define-fun h_type__ref___projection ((a h_type__ref)) us_t (h_type__content
                                                            a))

(declare-fun h_v1__first () integer)

(declare-fun h_v1__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun h_v2__first () integer)

(declare-fun h_v2__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun r11b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes () ((t12b__ref (mk_t12b__ref (t12b__content integer)))))
(define-fun t12b__ref___projection ((a t12b__ref)) integer (t12b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun r17b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun first3 () Int)

(declare-fun last3 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t18b__ref (mk_t18b__ref (t18b__content integer)))))
(define-fun t18b__ref___projection ((a t18b__ref)) integer (t18b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(define-fun dynamic_invariant2 ((temp___expr_208 us_t)
  (temp___is_init_205 Bool) (temp___skip_constant_206 Bool)
  (temp___do_toplevel_207 Bool)) Bool (=>
                                      (not (= temp___skip_constant_206 true))
                                      (dynamic_property (- 2147483648)
                                      2147483647 (first1 temp___expr_208)
                                      (last1 temp___expr_208))))

(declare-fun h_v1 () (Array Int content))

(declare-fun h_v2 () (Array Int content))

(declare-fun t_v2 () Int)

(declare-fun m_v2 () Int)

(declare-fun q_v2 () Int)

(declare-fun temp___399 () (Array Int content))

(declare-fun temp___398 () Int)

(declare-fun temp___403 () (Array Int content))

(declare-fun temp___396 () (Array Int content))

(declare-fun temp___394 () Int)

(declare-fun temp___401 () (Array Int content))

(declare-fun o () Int)

(declare-fun o1 () content)

(declare-fun o2 () Int)

(declare-fun temp___392 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () content)

(declare-fun o5 () Int)

(declare-fun o6 () content)

(declare-fun o7 () Int)

(declare-fun o8 () (Array Int content))

(declare-fun temp___393 () Int)

(declare-fun o9 () content)

(declare-fun o10 () Int)

(declare-fun o11 () (Array Int content))

(declare-fun h_v21 () (Array Int content))

(declare-fun t_v21 () Int)

(declare-fun m_v1 () Int)

(declare-fun h_v11 () (Array Int content))

(declare-fun t_v1 () Int)

(declare-fun q_v1 () Int)

(declare-fun h_v12 () (Array Int content))

(declare-fun t_v11 () Int)

(declare-fun q_v11 () Int)

(declare-fun result () Int)

(declare-fun m_v21 () Int)

(declare-fun result1 () Int)

(declare-fun q_v21 () Int)

(declare-fun h_v22 () (Array Int content))

(declare-fun t_v22 () Int)

(declare-fun q_v22 () Int)

(declare-fun result2 () Int)

(declare-fun t_v23 () Int)

(declare-fun result3 () (Array Int content))

(declare-fun h_v23 () (Array Int content))

(declare-fun result4 () map__ref)

(declare-fun h_v24 () (Array Int content))

(declare-fun h_v25 () map__ref)

(declare-fun t_v24 () int__ref)

(declare-fun q_v23 () int__ref)

(declare-fun h_v26 () (Array Int content))

(declare-fun t_v25 () Int)

(declare-fun q_v24 () Int)

(declare-fun h_v27 () map__ref)

(declare-fun t_v26 () int__ref)

(declare-fun q_v25 () int__ref)

(declare-fun h_v28 () (Array Int content))

(declare-fun t_v27 () Int)

(declare-fun q_v26 () Int)

(declare-fun h_v13 () map__ref)

(declare-fun h_v29 () map__ref)

(declare-fun t_v12 () int__ref)

(declare-fun m_v11 () int__ref)

(declare-fun q_v12 () int__ref)

(declare-fun t_v28 () int__ref)

(declare-fun m_v22 () int__ref)

(declare-fun q_v27 () int__ref)

(declare-fun h_v14 () (Array Int content))

(declare-fun h_v210 () (Array Int content))

(declare-fun t_v13 () Int)

(declare-fun m_v12 () Int)

(declare-fun q_v13 () Int)

(declare-fun t_v29 () Int)

(declare-fun m_v23 () Int)

(declare-fun q_v28 () Int)

;; H
  (assert (dynamic_property (- 2147483648) 2147483647 (to_rep h_v1__first)
  (to_rep h_v1__last)))

;; H
  (assert (dynamic_property (- 2147483648) 2147483647 (to_rep h_v2__first)
  (to_rep h_v2__last)))

;; H
  (assert (in_range1 i))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 t_v2)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 m_v2)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref m_v2)))

;; H
  (assert (= m_v21 (div1 (to_rep h_v2__last) 2)))

;; H
  (assert (= m_v21 r17b))

;; H
  (assert (in_range1 r17b))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref q_v2)))

;; H
  (assert (= q_v21 (to_rep h_v2__first)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= temp___399 h_v2)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= temp___398 t_v2)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= temp___403 h_v2)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= temp___396 h_v2)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= temp___394 q_v21)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= temp___401 h_v2)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (forall ((k Int))
  (=> (and (<= (to_rep h_v2__first) k) (<= k (to_rep h_v2__last)))
  (ite (< k q_v22)
  (= (to_rep1 (select h_v22 k)) (to_rep1 (select temp___399 (+ k m_v21))))
  (ite (< (+ q_v22 m_v21) k)
  (= (to_rep1 (select h_v22 k)) (to_rep1 (select temp___401 (- k m_v21))))
  (= (to_rep1 (select h_v22 k)) (to_rep1 (select temp___403 k)))))))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (and
  (and
  (=> (<= (to_rep h_v2__first) r17b) (dynamic_property2 (to_rep h_v2__first)
  r17b q_v22)) (=> (<= (- 2147483648) 2147483647) (in_range2 t_v22)))
  (and (<= (to_rep h_v2__first) q_v22) (<= q_v22 r17b)))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (and (<= (to_rep h_v2__first) q_v22) (<= q_v22 (to_rep h_v2__last)))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= o q_v22)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= o1 (select h_v22 o))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= o2 (to_rep1 o1))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= t_v22 result2)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= t_v23 o2)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (and (= temp___392 (+ q_v22 m_v21)) (in_range1 (+ q_v22 m_v21)))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (and (<= (to_rep h_v2__first) temp___392)
  (<= temp___392 (to_rep h_v2__last)))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= o3 temp___392)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= o4 (select h_v22 o3))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= o5 (to_rep1 o4))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= (to_rep1 o6) o5)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (and (<= (to_rep h_v2__first) q_v22) (<= q_v22 (to_rep h_v2__last)))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= o7 q_v22)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= o8 (store h_v22 o7 o6))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= h_v22 result3)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= h_v23 o8)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= (to_rep1 o9) t_v23)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (and (= temp___393 (+ q_v22 m_v21)) (in_range1 (+ q_v22 m_v21)))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (and (<= (to_rep h_v2__first) temp___393)
  (<= temp___393 (to_rep h_v2__last)))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= o10 temp___393)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= o11 (store h_v23 o10 o9))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= result4 (mk_map__ref h_v23))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= h_v24 o11)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= q_v22 r17b)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= q_v23 (mk_int__ref q_v22))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= t_v24 (mk_int__ref t_v23))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b))
  (= h_v25 (mk_map__ref h_v24))))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= q_v24 q_v22)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= t_v25 t_v23)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= h_v26 h_v24)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= q_v25 q_v23)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= t_v26 t_v24)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= h_v27 h_v25)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= q_v26 q_v24)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= t_v27 t_v25)))

;; H
  (assert
  (=> (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)) (= h_v28 h_v26)))

;; H
  (assert
  (=> (not (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)))
  (= q_v25 (mk_int__ref q_v21))))

;; H
  (assert
  (=> (not (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)))
  (= t_v26 (mk_int__ref t_v2))))

;; H
  (assert
  (=> (not (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)))
  (= h_v27 (mk_map__ref h_v2))))

;; H
  (assert
  (=> (not (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)))
  (= q_v26 q_v21)))

;; H
  (assert
  (=> (not (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)))
  (= t_v27 t_v21)))

;; H
  (assert
  (=> (not (and (<= (to_rep h_v2__first) q_v21) (<= q_v21 r17b)))
  (= h_v28 h_v21)))

;; H
  (assert (= q_v27 q_v25))

;; H
  (assert (= m_v22 (mk_int__ref m_v21)))

;; H
  (assert (= t_v28 t_v26))

;; H
  (assert (= q_v12 (mk_int__ref q_v1)))

;; H
  (assert (= m_v11 (mk_int__ref m_v1)))

;; H
  (assert (= t_v12 (mk_int__ref t_v1)))

;; H
  (assert (= h_v29 h_v27))

;; H
  (assert (= h_v13 (mk_map__ref h_v11)))

;; H
  (assert (= q_v28 q_v26))

;; H
  (assert (= m_v23 m_v21))

;; H
  (assert (= t_v29 t_v27))

;; H
  (assert (= q_v13 q_v11))

;; H
  (assert (= m_v12 m_v1))

;; H
  (assert (= t_v13 t_v11))

;; H
  (assert (= h_v210 h_v28))

;; H
  (assert (= h_v14 h_v12))

;; H
  (assert
  (= (ite (= (ite (= (ite (= (ite (= (ite (<= (to_rep h_v1__first) i)
                                     (ite (<= i (to_rep h_v1__last))
                                     (= (to_rep h_v1__first) 1) false) false) true) (= 
                             (to_rep h_v2__first) 1) false) true) (= 
                     (to_rep h_v1__last) (to_rep h_v2__last)) false) true) (<= 
             i (div1 (to_rep h_v1__last) 2)) false) true) (= (to_rep1
                                                             (select 
                                                             h_v1 (+ 
                                                             i (div1
                                                               (to_rep
                                                               h_v1__last) 2)))) 
     (to_rep1 (select h_v2 (+ i (div1 (to_rep h_v2__last) 2))))) false) true))

(assert
;; WP_parameter_def
 ;; File "infoflow.ads", line 61, characters 0-0
  (not
  (= (to_rep1 (select (map__content h_v13) i)) (to_rep1
                                               (select (map__content h_v29) 
                                               i)))))
(check-sat)
