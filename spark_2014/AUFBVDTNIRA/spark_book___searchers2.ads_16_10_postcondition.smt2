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

(declare-sort index_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index_type index_type) Bool)

(declare-fun dummy1 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 1 100)) (in_range2
                                      temp___expr_136)))

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

(define-fun bool_eq2 ((a (Array Int integer)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
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
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun search_item () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun items () (Array Int integer))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun found () Bool)

(declare-fun result__ () Int)

(declare-fun low_index () Int)

(declare-fun mid_index () Int)

(declare-fun high_index () Int)

(declare-fun temp___153 () Bool)

(declare-fun temp___152 () Int)

(declare-fun temp___151 () Int)

(declare-fun temp___150 () Int)

(declare-fun temp___149 () Int)

(declare-fun mid_index1 () Int)

(declare-fun result () Int)

(declare-fun low_index1 () Int)

(declare-fun result1 () Int)

(declare-fun high_index1 () Int)

(declare-fun result2 () Bool)

(declare-fun found1 () Bool)

(declare-fun result3 () Int)

(declare-fun result__1 () Int)

(declare-fun result4 () Int)

(declare-fun mid_index2 () Int)

(declare-fun result5 () Bool)

(declare-fun found2 () Bool)

(declare-fun result6 () Int)

(declare-fun result__2 () Int)

(declare-fun found3 () Bool)

(declare-fun result__3 () Int)

(declare-fun low_index2 () Int)

(declare-fun mid_index3 () Int)

(declare-fun high_index2 () Int)

(declare-fun result7 () Int)

(declare-fun low_index3 () Int)

(declare-fun result8 () Int)

(declare-fun high_index3 () Int)

(declare-fun result9 () Int)

(declare-fun mid_index4 () Int)

(declare-fun result10 () Bool)

(declare-fun found4 () Bool)

(declare-fun result11 () Int)

(declare-fun result__4 () Int)

(declare-fun found5 () Bool)

(declare-fun result__5 () Int)

(declare-fun mid_index5 () Int)

(declare-fun found6 () Bool)

(declare-fun result__6 () Int)

(declare-fun mid_index6 () Int)

(declare-fun found7 () bool__ref)

(declare-fun result__7 () int__ref)

(declare-fun low_index4 () int__ref)

(declare-fun mid_index7 () int__ref)

(declare-fun high_index4 () int__ref)

(declare-fun found8 () Bool)

(declare-fun result__8 () Int)

(declare-fun low_index5 () Int)

(declare-fun mid_index8 () Int)

(declare-fun high_index5 () Int)

(declare-fun found9 () bool__ref)

(declare-fun result__9 () int__ref)

(declare-fun low_index6 () int__ref)

(declare-fun mid_index9 () int__ref)

(declare-fun high_index6 () int__ref)

(declare-fun found10 () Bool)

(declare-fun result__10 () Int)

(declare-fun low_index7 () Int)

(declare-fun mid_index10 () Int)

(declare-fun high_index7 () Int)

(declare-fun found11 () bool__ref)

(declare-fun result__11 () int__ref)

(declare-fun low_index8 () int__ref)

(declare-fun mid_index11 () int__ref)

(declare-fun high_index8 () int__ref)

(declare-fun found12 () Bool)

(declare-fun result__12 () Int)

(declare-fun low_index9 () Int)

(declare-fun mid_index12 () Int)

(declare-fun high_index9 () Int)

(declare-fun found13 () bool__ref)

(declare-fun result__13 () int__ref)

(declare-fun low_index10 () int__ref)

(declare-fun mid_index13 () int__ref)

(declare-fun high_index10 () int__ref)

(declare-fun found14 () Bool)

(declare-fun result__14 () Int)

(declare-fun low_index11 () Int)

(declare-fun mid_index14 () Int)

(declare-fun high_index11 () Int)

(declare-fun found15 () bool__ref)

(declare-fun result__15 () int__ref)

(declare-fun low_index12 () int__ref)

(declare-fun mid_index15 () int__ref)

(declare-fun high_index12 () int__ref)

(declare-fun found16 () Bool)

(declare-fun result__16 () Int)

(declare-fun low_index13 () Int)

(declare-fun mid_index16 () Int)

(declare-fun high_index13 () Int)

(declare-fun found17 () bool__ref)

(declare-fun result__17 () int__ref)

(declare-fun low_index14 () int__ref)

(declare-fun mid_index17 () int__ref)

(declare-fun high_index14 () int__ref)

(declare-fun found18 () Bool)

(declare-fun result__18 () Int)

(declare-fun low_index15 () Int)

(declare-fun mid_index18 () Int)

(declare-fun high_index15 () Int)

(declare-fun found19 () bool__ref)

(declare-fun result__19 () int__ref)

(declare-fun low_index16 () int__ref)

(declare-fun mid_index19 () int__ref)

(declare-fun high_index16 () int__ref)

(declare-fun found20 () Bool)

(declare-fun result__20 () Int)

(declare-fun low_index17 () Int)

(declare-fun mid_index20 () Int)

(declare-fun high_index17 () Int)

(define-fun result12 () int__ref (mk_int__ref result4))

(define-fun mid_index21 () int__ref (mk_int__ref mid_index))

;; H
  (assert (in_range1 search_item))

;; H
  (assert (=> (<= 1 100) (in_range2 result__)))

;; H
  (assert
  (forall ((j Int))
  (=> (and (<= 1 j) (<= j 100))
  (forall ((k Int))
  (=> (and (<= (+ j 1) k) (<= k 100))
  (<= (to_rep (select items j)) (to_rep (select items k))))))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref low_index)))

;; H
  (assert (= low_index1 1))

;; H
  (assert (in_range2 low_index1))

;; H
  (assert (=> (<= 1 100) (in_range2 mid_index)))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref high_index)))

;; H
  (assert (= high_index1 100))

;; H
  (assert (in_range2 high_index1))

;; H
  (assert (= (mk_bool__ref result2) (mk_bool__ref found)))

;; H
  (assert (= found1 (of_int 0)))

;; H
  (assert (= (mk_int__ref result3) (mk_int__ref result__)))

;; H
  (assert (= result__1 1))

;; H
  (assert
  (or
  (and
  (and
  (and (= high_index14 (mk_int__ref high_index1))
  (and (= mid_index17 mid_index21)
  (and (= low_index14 (mk_int__ref low_index1))
  (and (= result__17 (mk_int__ref result__1))
  (= found17 (mk_bool__ref found1))))))
  (and (= high_index15 high_index1)
  (and (= mid_index18 mid_index1)
  (and (= low_index15 low_index1)
  (and (= result__18 result__1) (= found18 found1))))))
  (=> (not (< search_item (to_rep (select items low_index1))))
  (< (to_rep (select items high_index1)) search_item)))
  (and
  (not
  (=> (not (< search_item (to_rep (select items low_index1))))
  (< (to_rep (select items high_index1)) search_item)))
  (and
  (and
  (and (= high_index14 high_index12)
  (and (= mid_index17 mid_index15)
  (and (= low_index14 low_index12)
  (and (= result__17 result__15) (= found17 found15)))))
  (and (= high_index15 high_index13)
  (and (= mid_index18 mid_index16)
  (and (= low_index15 low_index13)
  (and (= result__18 result__16) (= found18 found16))))))
  (or
  (and
  (and
  (and (= high_index12 high_index6)
  (and (= mid_index15 mid_index9)
  (and (= low_index12 low_index6)
  (and (= result__15 result__9) (= found15 found9)))))
  (and (= high_index13 high_index7)
  (and (= mid_index16 mid_index10)
  (and (= low_index13 low_index7)
  (and (= result__16 result__10) (= found16 found10))))))
  (and (= temp___153 found1)
  (and (= temp___152 high_index1)
  (and (= temp___151 mid_index)
  (and (= temp___150 low_index1)
  (and (= temp___149 result__1)
  (and
  (and (= result12 mid_index21)
  (= mid_index2 (div1 (+ low_index1 high_index1) 2)))
  (or
  (and
  (and
  (and (= high_index6 (mk_int__ref high_index1))
  (and (= mid_index9 (mk_int__ref mid_index2))
  (and (= low_index6 (mk_int__ref low_index1))
  (and (= result__9 (mk_int__ref result__2))
  (= found9 (mk_bool__ref found2))))))
  (and (= high_index7 high_index1)
  (and (= mid_index10 mid_index2)
  (and (= low_index7 low_index1)
  (and (= result__10 result__2) (= found10 found2))))))
  (and (= search_item (to_rep (select items mid_index2)))
  (and (and (= result5 found1) (= found2 (of_int 1)))
  (and (= result6 result__1) (= result__2 mid_index2)))))
  (and
  (and (not (= search_item (to_rep (select items mid_index2))))
  (and (= result__2 result__1) (= found2 found1)))
  (and
  (and
  (and (= high_index6 (mk_int__ref high_index3))
  (and (= mid_index9 (mk_int__ref mid_index4))
  (and (= low_index6 (mk_int__ref low_index3))
  (and (= result__9 (mk_int__ref result__4))
  (= found9 (mk_bool__ref found4))))))
  (and (= high_index7 high_index3)
  (and (= mid_index10 mid_index4)
  (and (= low_index7 low_index3)
  (and (= result__10 result__4) (= found10 found4))))))
  (and (not (= low_index1 high_index1))
  (and
  (and (<= (to_rep (select items low_index2)) search_item)
  (<= search_item (to_rep (select items high_index2))))
  (and
  (and
  (and
  (and (=> (<= 1 100) (in_range2 result__3))
  (=> (<= 1 100) (in_range2 low_index2)))
  (=> (<= 1 100) (in_range2 mid_index3)))
  (=> (<= 1 100) (in_range2 high_index2)))
  (and
  (ite (< (to_rep (select items mid_index3)) search_item)
  (and (and (= low_index2 result7) (= low_index3 mid_index3))
  (= high_index3 high_index2))
  (and (and (= high_index2 result8) (= high_index3 mid_index3))
  (= low_index3 low_index2)))
  (and
  (and (= mid_index3 result9)
  (= mid_index4 (div1 (+ low_index3 high_index3) 2)))
  (and (= search_item (to_rep (select items mid_index4)))
  (and (and (= result10 found3) (= found4 (of_int 1)))
  (and (= result11 result__3) (= result__4 mid_index4)))))))))))))))))))
  (and
  (and
  (and
  (and (= temp___153 found1)
  (and (= temp___152 high_index1)
  (and (= temp___151 mid_index)
  (and (= temp___150 low_index1)
  (and (= temp___149 result__1)
  (and
  (and (= result12 mid_index21)
  (= mid_index2 (div1 (+ low_index1 high_index1) 2)))
  (and
  (and (not (= search_item (to_rep (select items mid_index2))))
  (and (= result__2 result__1) (= found2 found1)))
  (or
  (and
  (and
  (and (= high_index4 (mk_int__ref high_index1))
  (and (= mid_index7 (mk_int__ref mid_index2))
  (and (= low_index4 (mk_int__ref low_index1))
  (and (= result__7 (mk_int__ref result__2))
  (= found7 (mk_bool__ref found2))))))
  (and (= high_index5 high_index1)
  (and (= mid_index8 mid_index2)
  (and (= low_index5 low_index1)
  (and (= result__8 result__2) (= found8 found2))))))
  (= low_index1 high_index1))
  (and (not (= low_index1 high_index1))
  (and
  (and
  (and (= high_index4 (mk_int__ref high_index3))
  (and (= mid_index7 (mk_int__ref mid_index5))
  (and (= low_index4 (mk_int__ref low_index3))
  (and (= result__7 (mk_int__ref result__5))
  (= found7 (mk_bool__ref found5))))))
  (and (= high_index5 high_index3)
  (and (= mid_index8 mid_index6)
  (and (= low_index5 low_index3)
  (and (= result__8 result__6) (= found8 found6))))))
  (and
  (and (<= (to_rep (select items low_index2)) search_item)
  (<= search_item (to_rep (select items high_index2))))
  (and
  (and
  (and
  (and (=> (<= 1 100) (in_range2 result__3))
  (=> (<= 1 100) (in_range2 low_index2)))
  (=> (<= 1 100) (in_range2 mid_index3)))
  (=> (<= 1 100) (in_range2 high_index2)))
  (and
  (ite (< (to_rep (select items mid_index3)) search_item)
  (and (and (= low_index2 result7) (= low_index3 mid_index3))
  (= high_index3 high_index2))
  (and (and (= high_index2 result8) (= high_index3 mid_index3))
  (= low_index3 low_index2)))
  (and
  (and
  (and (= mid_index4 mid_index5)
  (and (= result__4 result__5) (= found4 found5)))
  (and (= mid_index6 mid_index4)
  (and (= result__6 result__4) (= found6 found4))))
  (and
  (and (= mid_index3 result9)
  (= mid_index4 (div1 (+ low_index3 high_index3) 2)))
  (and
  (and (not (= search_item (to_rep (select items mid_index4))))
  (and (= result__4 result__3) (= found4 found3)))
  (= low_index3 high_index3)))))))))))))))))
  (and
  (and (= high_index8 high_index4)
  (and (= mid_index11 mid_index7)
  (and (= low_index8 low_index4)
  (and (= result__11 result__7) (= found11 found7)))))
  (and (= high_index9 high_index5)
  (and (= mid_index12 mid_index8)
  (and (= low_index9 low_index5)
  (and (= result__12 result__8) (= found12 found8)))))))
  (and
  (and (= high_index10 high_index8)
  (and (= mid_index13 mid_index11)
  (and (= low_index10 low_index8)
  (and (= result__13 result__11) (= found13 found11)))))
  (and (= high_index11 high_index9)
  (and (= mid_index14 mid_index12)
  (and (= low_index11 low_index9)
  (and (= result__14 result__12) (= found14 found12)))))))
  (and
  (and (= high_index12 high_index10)
  (and (= mid_index15 mid_index13)
  (and (= low_index12 low_index10)
  (and (= result__15 result__13) (= found15 found13)))))
  (and (= high_index13 high_index11)
  (and (= mid_index16 mid_index14)
  (and (= low_index13 low_index11)
  (and (= result__16 result__14) (= found16 found14))))))))))))

;; H
  (assert (= high_index16 high_index14))

;; H
  (assert (= mid_index19 mid_index17))

;; H
  (assert (= low_index16 low_index14))

;; H
  (assert (= result__19 result__17))

;; H
  (assert (= found19 found17))

;; H
  (assert (= high_index17 high_index15))

;; H
  (assert (= mid_index20 mid_index18))

;; H
  (assert (= low_index17 low_index15))

;; H
  (assert (= result__20 result__18))

;; H
  (assert (= found20 found18))

;; H
  (assert (= (bool__content found19) true))

(assert
;; WP_parameter_def
 ;; File "searchers2.ads", line 10, characters 0-0
  (not (= search_item (to_rep (select items (int__content result__19))))))
(check-sat)
