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

(declare-fun a () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a1 (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a1 first first) a1) :pattern ((slide a1 first first)) ))))

;; slide_def
  (assert
  (forall ((a1 (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a1 old_first new_first) i) (select a1 (- i (- new_first old_first)))) :pattern ((select 
  (slide a1 old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a1 (Array Int integer)) (b1 (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a1 a_first a_last b1 b_first b_last) i) (select a1 i)))
     (=> (< a_last i)
     (= (select (concat1 a1 a_first a_last b1 b_first b_last) i) (select b1 (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a1 a_first a_last b1 b_first b_last) i)) )))))

(declare-fun singleton1 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a1 (Array Int integer)) (a__first Int) (a__last Int)
  (b1 (Array Int integer)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a1 temp___idx_132)) (to_rep
                                                                  (select b1 (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a1 (Array Int integer)) (b1 (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq1 b1 b__first b__last a1 a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a1 temp___idx_132)) (to_rep
                                         (select b1 (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a1 (Array Int integer)) (b1 (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a1 a_first a_last b1 b_first b_last) 0)
     (= (bool_eq1 a1 a_first a_last b1 b_first b_last) true)) :pattern (
  (compare a1 a_first a_last b1 b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a1 (Array Int integer)) (b1 (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a1 a_first a_last b1 b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq1 a1 a_first i b1 b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a1 (+ i 1))) (to_rep (select b1 (+ j 1))))))))))) :pattern (
  (compare a1 a_first a_last b1 b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a1 (Array Int integer)) (b1 (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a1 a_first a_last b1 b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq1 a1 a_first j b1 b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b1 (+ i 1))) (to_rep (select a1 (+ j 1))))))))))) :pattern (
  (compare a1 a_first a_last b1 b_first b_last)) ))))

(declare-fun first () Int)

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes () ((ttD1__ref (mk_ttD1__ref (ttD1__content integer)))))
(define-fun ttD1__ref___projection ((a1 ttD1__ref)) integer (ttD1__content
                                                            a1))

(declare-sort t 0)

(declare-fun first1 (t) integer)

(declare-fun last1 (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first1 (mk f l))) f) (= (to_rep (last1 (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property range_first range_last low)
                   (dynamic_property range_first range_last high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int integer))(rt t)))))
(define-fun to_array ((a1 us_t)) (Array Int integer) (elts a1))

(define-fun of_array ((a1 (Array Int integer)) (f Int)
  (l Int)) us_t (mk___t a1 (mk f l)))

(define-fun first2 ((a1 us_t)) Int (to_rep (first1 (rt a1))))

(define-fun last2 ((a1 us_t)) Int (to_rep (last1 (rt a1))))

(define-fun length ((a1 us_t)) Int (ite (<= (first2 a1) (last2 a1))
                                   (+ (- (last2 a1) (first2 a1)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int integer)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int integer)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__size a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int integer))) (<= 0 (object__component__size a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__alignment a1))))

(define-fun bool_eq3 ((x us_t)
  (y us_t)) Bool (bool_eq1 (elts x) (to_rep (first1 (rt x)))
                 (to_rep (last1 (rt x))) (elts y) (to_rep (first1 (rt y)))
                 (to_rep (last1 (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_t)))))
(define-fun t__ref___projection ((a1 t__ref)) us_t (t__content a1))

(define-fun dynamic_invariant1 ((temp___expr_136 us_t)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (not (= temp___skip_constant_134 true))
                                      (and (dynamic_property1 a b
                                      (first2 temp___expr_136)
                                      (last2 temp___expr_136))
                                      (and (= (first2 temp___expr_136) 
                                      a) (= (last2 temp___expr_136) b)))))

(declare-fun tab__first () integer)

(declare-fun tab__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun tab () (Array Int integer))

(declare-fun j () Int)

(declare-fun k () Int)

(declare-fun temp___147 () Int)

(declare-fun temp___145 () (Array Int integer))

(declare-fun temp___148 () Int)

(declare-fun o () integer)

(declare-fun o1 () Int)

(declare-fun o2 () (Array Int integer))

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun temp___154 () Int)

(declare-fun temp___153 () Int)

(declare-fun temp___151 () (Array Int integer))

(declare-fun temp___156 () Int)

(declare-fun temp___155 () Int)

(declare-fun temp___149 () Int)

(declare-fun o5 () integer)

(declare-fun o6 () Int)

(declare-fun o7 () (Array Int integer))

(declare-fun o8 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () Bool)

(declare-fun temp___161 () Int)

(declare-fun temp___160 () Int)

(declare-fun temp___158 () (Array Int integer))

(declare-fun temp___163 () Int)

(declare-fun temp___162 () Int)

(declare-fun o12 () integer)

(declare-fun o13 () Int)

(declare-fun o14 () (Array Int integer))

(declare-fun o15 () Int)

(declare-fun o16 () Int)

(declare-fun temp___167 () Int)

(declare-fun temp___165 () (Array Int integer))

(declare-fun temp___168 () Int)

(declare-fun o17 () integer)

(declare-fun o18 () Int)

(declare-fun o19 () (Array Int integer))

(declare-fun o20 () Int)

(declare-fun temp___172 () Int)

(declare-fun temp___170 () (Array Int integer))

(declare-fun temp___173 () Int)

(declare-fun o21 () integer)

(declare-fun o22 () Int)

(declare-fun o23 () (Array Int integer))

(declare-fun o24 () Int)

(declare-fun temp___178 () Int)

(declare-fun temp___177 () Int)

(declare-fun temp___175 () (Array Int integer))

(declare-fun temp___180 () Int)

(declare-fun temp___179 () Int)

(declare-fun o25 () integer)

(declare-fun o26 () Int)

(declare-fun o27 () (Array Int integer))

(declare-fun o28 () Int)

(declare-fun o29 () Int)

(declare-fun o30 () integer)

(declare-fun o31 () Int)

(declare-fun o32 () (Array Int integer))

(declare-fun o33 () Int)

(declare-fun o34 () Int)

(declare-fun tab1 () (Array Int integer))

(declare-fun result () Int)

(declare-fun j1 () Int)

(declare-fun result1 () (Array Int integer))

(declare-fun tab2 () (Array Int integer))

(declare-fun result2 () Int)

(declare-fun j2 () Int)

(declare-fun tab3 () (Array Int integer))

(declare-fun j3 () Int)

(declare-fun temp___1481 () Int)

(declare-fun result3 () Int)

(declare-fun temp___1482 () Int)

(declare-fun tab4 () map__ref)

(declare-fun j4 () int__ref)

(declare-fun tab5 () (Array Int integer))

(declare-fun j5 () Int)

(declare-fun tab6 () map__ref)

(declare-fun j6 () int__ref)

(declare-fun tab7 () (Array Int integer))

(declare-fun j7 () Int)

(declare-fun result4 () int__ref)

(declare-fun j8 () Int)

(declare-fun result5 () int__ref)

(declare-fun k1 () Int)

(declare-fun result6 () Bool)

(declare-fun result7 () map__ref)

(declare-fun tab8 () (Array Int integer))

(declare-fun result8 () int__ref)

(declare-fun j9 () Int)

(declare-fun result9 () int__ref)

(declare-fun k2 () Int)

(declare-fun j10 () int__ref)

(declare-fun k3 () int__ref)

(declare-fun j11 () Int)

(declare-fun k4 () Int)

(declare-fun tab9 () (Array Int integer))

(declare-fun j12 () Int)

(declare-fun k5 () Int)

(declare-fun temp___1561 () Int)

(declare-fun temp___1551 () Int)

(declare-fun result10 () int__ref)

(declare-fun temp___1562 () Int)

(declare-fun result11 () int__ref)

(declare-fun temp___1552 () Int)

(declare-fun result12 () Bool)

(declare-fun tab10 () map__ref)

(declare-fun j13 () int__ref)

(declare-fun k6 () int__ref)

(declare-fun tab11 () (Array Int integer))

(declare-fun j14 () Int)

(declare-fun k7 () Int)

(declare-fun tab12 () map__ref)

(declare-fun j15 () int__ref)

(declare-fun k8 () int__ref)

(declare-fun tab13 () (Array Int integer))

(declare-fun j16 () Int)

(declare-fun k9 () Int)

(declare-fun result13 () int__ref)

(declare-fun j17 () Int)

(declare-fun result14 () int__ref)

(declare-fun k10 () Int)

(declare-fun result15 () map__ref)

(declare-fun tab14 () (Array Int integer))

(declare-fun result16 () int__ref)

(declare-fun j18 () Int)

(declare-fun result17 () int__ref)

(declare-fun k11 () Int)

(declare-fun tab15 () (Array Int integer))

(declare-fun j19 () Int)

(declare-fun k12 () Int)

(declare-fun temp___1631 () Int)

(declare-fun temp___1621 () Int)

(declare-fun result18 () int__ref)

(declare-fun temp___1622 () Int)

(declare-fun result19 () int__ref)

(declare-fun temp___1632 () Int)

(declare-fun tab16 () map__ref)

(declare-fun j20 () int__ref)

(declare-fun k13 () int__ref)

(declare-fun tab17 () (Array Int integer))

(declare-fun j21 () Int)

(declare-fun k14 () Int)

(declare-fun tab18 () map__ref)

(declare-fun j22 () int__ref)

(declare-fun k15 () int__ref)

(declare-fun tab19 () (Array Int integer))

(declare-fun j23 () Int)

(declare-fun k16 () Int)

(declare-fun result20 () int__ref)

(declare-fun j24 () Int)

(declare-fun result21 () map__ref)

(declare-fun tab20 () (Array Int integer))

(declare-fun result22 () int__ref)

(declare-fun j25 () Int)

(declare-fun tab21 () (Array Int integer))

(declare-fun j26 () Int)

(declare-fun temp___1681 () Int)

(declare-fun result23 () int__ref)

(declare-fun temp___1682 () Int)

(declare-fun tab22 () map__ref)

(declare-fun j27 () int__ref)

(declare-fun tab23 () (Array Int integer))

(declare-fun j28 () Int)

(declare-fun tab24 () map__ref)

(declare-fun j29 () int__ref)

(declare-fun tab25 () (Array Int integer))

(declare-fun j30 () Int)

(declare-fun result24 () int__ref)

(declare-fun j31 () Int)

(declare-fun result25 () map__ref)

(declare-fun tab26 () (Array Int integer))

(declare-fun result26 () int__ref)

(declare-fun j32 () Int)

(declare-fun tab27 () (Array Int integer))

(declare-fun j33 () Int)

(declare-fun temp___1731 () Int)

(declare-fun result27 () int__ref)

(declare-fun temp___1732 () Int)

(declare-fun tab28 () map__ref)

(declare-fun j34 () int__ref)

(declare-fun tab29 () (Array Int integer))

(declare-fun j35 () Int)

(declare-fun tab30 () map__ref)

(declare-fun j36 () int__ref)

(declare-fun tab31 () (Array Int integer))

(declare-fun j37 () Int)

(declare-fun result28 () int__ref)

(declare-fun j38 () Int)

(declare-fun result29 () int__ref)

(declare-fun k17 () Int)

(declare-fun result30 () map__ref)

(declare-fun tab32 () (Array Int integer))

(declare-fun result31 () int__ref)

(declare-fun j39 () Int)

(declare-fun result32 () int__ref)

(declare-fun k18 () Int)

(declare-fun tab33 () (Array Int integer))

(declare-fun j40 () Int)

(declare-fun k19 () Int)

(declare-fun temp___1801 () Int)

(declare-fun temp___1791 () Int)

(declare-fun result33 () int__ref)

(declare-fun temp___1792 () Int)

(declare-fun result34 () int__ref)

(declare-fun temp___1802 () Int)

(declare-fun tab34 () map__ref)

(declare-fun j41 () int__ref)

(declare-fun k20 () int__ref)

(declare-fun tab35 () (Array Int integer))

(declare-fun j42 () Int)

(declare-fun k21 () Int)

(declare-fun tab36 () map__ref)

(declare-fun j43 () int__ref)

(declare-fun k22 () int__ref)

(declare-fun tab37 () (Array Int integer))

(declare-fun j44 () Int)

(declare-fun k23 () Int)

(declare-fun result35 () int__ref)

(declare-fun j45 () Int)

(declare-fun result36 () int__ref)

(declare-fun k24 () Int)

(declare-fun result37 () map__ref)

(declare-fun tab38 () (Array Int integer))

(declare-fun result38 () int__ref)

(declare-fun j46 () Int)

(declare-fun result39 () int__ref)

(declare-fun k25 () Int)

(declare-fun tab39 () (Array Int integer))

(declare-fun j47 () Int)

(declare-fun k26 () Int)

(define-fun tab40 () map__ref (mk_map__ref tab))

;; H
  (assert (in_range1 a))

;; H
  (assert (in_range1 b))

;; H
  (assert
  (and (dynamic_property1 a b (to_rep tab__first) (to_rep tab__last))
  (and (= (to_rep tab__first) a) (= (to_rep tab__last) b))))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 j)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 k)))

;; H
  (assert (= result j))

;; H
  (assert (= j1 a))

;; H
  (assert (=> (<= j1 b) (= temp___147 j1)))

;; H
  (assert (=> (<= j1 b) (= temp___145 tab)))

;; H
  (assert (=> (<= j1 b) (= 0 temp___148)))

;; H
  (assert (=> (<= j1 b) (= (to_rep o) j1)))

;; H
  (assert
  (=> (<= j1 b) (and (<= (to_rep tab__first) j1) (<= j1 (to_rep tab__last)))))

;; H
  (assert (=> (<= j1 b) (= o1 j1)))

;; H
  (assert (=> (<= j1 b) (= o2 (store tab o1 o))))

;; H
  (assert (=> (<= j1 b) (= (mk_map__ref result1) tab40)))

;; H
  (assert (=> (<= j1 b) (= tab2 o2)))

;; H
  (assert (=> (<= j1 b) (and (= o3 (+ j1 1)) (in_range1 (+ j1 1)))))

;; H
  (assert (=> (<= j1 b) (= j1 result2)))

;; H
  (assert (=> (<= j1 b) (= j2 o3)))

;; H
  (assert (=> (<= j1 b) (=> (<= (- 2147483648) 2147483647) (in_range1 j3))))

;; H
  (assert (=> (<= j1 b) (= temp___1481 result3)))

;; H
  (assert (=> (<= j1 b) (= temp___1482 j3)))

;; H
  (assert (=> (<= j1 b) (not (<= j3 b))))

;; H
  (assert (=> (<= j1 b) (= j4 (mk_int__ref j3))))

;; H
  (assert (=> (<= j1 b) (= tab4 (mk_map__ref tab3))))

;; H
  (assert (=> (<= j1 b) (= j5 j3)))

;; H
  (assert (=> (<= j1 b) (= tab5 tab3)))

;; H
  (assert (=> (<= j1 b) (= j6 j4)))

;; H
  (assert (=> (<= j1 b) (= tab6 tab4)))

;; H
  (assert (=> (<= j1 b) (= j7 j5)))

;; H
  (assert (=> (<= j1 b) (= tab7 tab5)))

;; H
  (assert (=> (not (<= j1 b)) (= j6 (mk_int__ref j1))))

;; H
  (assert (=> (not (<= j1 b)) (= tab6 tab40)))

;; H
  (assert (=> (not (<= j1 b)) (= j7 j1)))

;; H
  (assert (=> (not (<= j1 b)) (= tab7 tab1)))

;; H
  (assert (= result4 j6))

;; H
  (assert (= j8 a))

;; H
  (assert (= result5 (mk_int__ref k)))

;; H
  (assert (= k1 0))

;; H
  (assert (and (= o4 (+ j8 k1)) (in_range1 (+ j8 k1))))

;; H
  (assert (= result6 (ite (<= o4 b) true false)))

;; H
  (assert (=> (= result6 true) (= temp___154 k1)))

;; H
  (assert (=> (= result6 true) (= temp___153 j8)))

;; H
  (assert (=> (= result6 true) (= temp___151 (map__content tab6))))

;; H
  (assert (=> (= result6 true) (= 0 temp___156)))

;; H
  (assert (=> (= result6 true) (= 0 temp___155)))

;; H
  (assert (=> (= result6 true) (= (to_rep o5) 0)))

;; H
  (assert
  (=> (= result6 true) (and (= temp___149 (+ j8 k1)) (in_range1 (+ j8 k1)))))

;; H
  (assert
  (=> (= result6 true)
  (and (<= (to_rep tab__first) temp___149)
  (<= temp___149 (to_rep tab__last)))))

;; H
  (assert (=> (= result6 true) (= o6 temp___149)))

;; H
  (assert (=> (= result6 true) (= o7 (store (map__content tab6) o6 o5))))

;; H
  (assert (=> (= result6 true) (= result7 tab6)))

;; H
  (assert (=> (= result6 true) (= tab8 o7)))

;; H
  (assert
  (=> (= result6 true)
  (=> (< j8 100) (and (= o8 (+ j8 1)) (in_range1 (+ j8 1))))))

;; H
  (assert (=> (= result6 true) (=> (< j8 100) (= result8 (mk_int__ref j8)))))

;; H
  (assert (=> (= result6 true) (=> (< j8 100) (= j9 o8))))

;; H
  (assert (=> (= result6 true) (=> (< j8 100) (= k3 (mk_int__ref k1)))))

;; H
  (assert (=> (= result6 true) (=> (< j8 100) (= j10 (mk_int__ref j9)))))

;; H
  (assert (=> (= result6 true) (=> (< j8 100) (= k4 k1))))

;; H
  (assert (=> (= result6 true) (=> (< j8 100) (= j11 j9))))

;; H
  (assert
  (=> (= result6 true)
  (=> (not (< j8 100)) (and (= o9 (+ k1 1)) (in_range1 (+ k1 1))))))

;; H
  (assert
  (=> (= result6 true) (=> (not (< j8 100)) (= result9 (mk_int__ref k1)))))

;; H
  (assert (=> (= result6 true) (=> (not (< j8 100)) (= k2 o9))))

;; H
  (assert
  (=> (= result6 true) (=> (not (< j8 100)) (= k3 (mk_int__ref k2)))))

;; H
  (assert
  (=> (= result6 true) (=> (not (< j8 100)) (= j10 (mk_int__ref j8)))))

;; H
  (assert (=> (= result6 true) (=> (not (< j8 100)) (= k4 k2))))

;; H
  (assert (=> (= result6 true) (=> (not (< j8 100)) (= j11 j8))))

;; H
  (assert
  (=> (= result6 true)
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 j12))
  (=> (<= (- 2147483648) 2147483647) (in_range1 k5)))))

;; H
  (assert (=> (= result6 true) (= result10 (mk_int__ref temp___1561))))

;; H
  (assert (=> (= result6 true) (= temp___1562 j12)))

;; H
  (assert (=> (= result6 true) (= result11 (mk_int__ref temp___1551))))

;; H
  (assert (=> (= result6 true) (= temp___1552 k5)))

;; H
  (assert
  (=> (= result6 true) (and (= o10 (+ j12 k5)) (in_range1 (+ j12 k5)))))

;; H
  (assert (=> (= result6 true) (= o11 (ite (<= o10 b) true false))))

;; H
  (assert
  (=> (= result6 true) (= result12 (ite (not (= o11 true)) true false))))

;; H
  (assert (=> (= result6 true) (= result12 true)))

;; H
  (assert (=> (= result6 true) (= k6 (mk_int__ref k5))))

;; H
  (assert (=> (= result6 true) (= j13 (mk_int__ref j12))))

;; H
  (assert (=> (= result6 true) (= tab10 (mk_map__ref tab9))))

;; H
  (assert (=> (= result6 true) (= k7 k5)))

;; H
  (assert (=> (= result6 true) (= j14 j12)))

;; H
  (assert (=> (= result6 true) (= tab11 tab9)))

;; H
  (assert (=> (= result6 true) (= k8 k6)))

;; H
  (assert (=> (= result6 true) (= j15 j13)))

;; H
  (assert (=> (= result6 true) (= tab12 tab10)))

;; H
  (assert (=> (= result6 true) (= k9 k7)))

;; H
  (assert (=> (= result6 true) (= j16 j14)))

;; H
  (assert (=> (= result6 true) (= tab13 tab11)))

;; H
  (assert (=> (not (= result6 true)) (= k8 (mk_int__ref k1))))

;; H
  (assert (=> (not (= result6 true)) (= j15 (mk_int__ref j8))))

;; H
  (assert (=> (not (= result6 true)) (= tab12 tab6)))

;; H
  (assert (=> (not (= result6 true)) (= k9 k1)))

;; H
  (assert (=> (not (= result6 true)) (= j16 j8)))

;; H
  (assert (=> (not (= result6 true)) (= tab13 tab7)))

;; H
  (assert (= result13 j15))

;; H
  (assert (= j17 a))

;; H
  (assert (= result14 k8))

;; H
  (assert (= k10 0))

;; H
  (assert (=> (<= j17 b) (= temp___161 k10)))

;; H
  (assert (=> (<= j17 b) (= temp___160 j17)))

;; H
  (assert (=> (<= j17 b) (= temp___158 (map__content tab12))))

;; H
  (assert (=> (<= j17 b) (= 0 temp___163)))

;; H
  (assert (=> (<= j17 b) (= 0 temp___162)))

;; H
  (assert (=> (<= j17 b) (= (to_rep o12) j17)))

;; H
  (assert
  (=> (<= j17 b)
  (and (<= (to_rep tab__first) j17) (<= j17 (to_rep tab__last)))))

;; H
  (assert (=> (<= j17 b) (= o13 j17)))

;; H
  (assert (=> (<= j17 b) (= o14 (store (map__content tab12) o13 o12))))

;; H
  (assert (=> (<= j17 b) (= result15 tab12)))

;; H
  (assert (=> (<= j17 b) (= tab14 o14)))

;; H
  (assert (=> (<= j17 b) (and (= o15 (+ j17 1)) (in_range1 (+ j17 1)))))

;; H
  (assert (=> (<= j17 b) (= result16 (mk_int__ref j17))))

;; H
  (assert (=> (<= j17 b) (= j18 o15)))

;; H
  (assert (=> (<= j17 b) (and (= o16 (+ k10 1)) (in_range1 (+ k10 1)))))

;; H
  (assert (=> (<= j17 b) (= result17 (mk_int__ref k10))))

;; H
  (assert (=> (<= j17 b) (= k11 o16)))

;; H
  (assert
  (=> (<= j17 b)
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 j19))
  (=> (<= (- 2147483648) 2147483647) (in_range1 k12)))))

;; H
  (assert (=> (<= j17 b) (= result18 (mk_int__ref temp___1621))))

;; H
  (assert (=> (<= j17 b) (= temp___1622 j19)))

;; H
  (assert (=> (<= j17 b) (= result19 (mk_int__ref temp___1631))))

;; H
  (assert (=> (<= j17 b) (= temp___1632 k12)))

;; H
  (assert (=> (<= j17 b) (not (<= j19 b))))

;; H
  (assert (=> (<= j17 b) (= k13 (mk_int__ref k12))))

;; H
  (assert (=> (<= j17 b) (= j20 (mk_int__ref j19))))

;; H
  (assert (=> (<= j17 b) (= tab16 (mk_map__ref tab15))))

;; H
  (assert (=> (<= j17 b) (= k14 k12)))

;; H
  (assert (=> (<= j17 b) (= j21 j19)))

;; H
  (assert (=> (<= j17 b) (= tab17 tab15)))

;; H
  (assert (=> (<= j17 b) (= k15 k13)))

;; H
  (assert (=> (<= j17 b) (= j22 j20)))

;; H
  (assert (=> (<= j17 b) (= tab18 tab16)))

;; H
  (assert (=> (<= j17 b) (= k16 k14)))

;; H
  (assert (=> (<= j17 b) (= j23 j21)))

;; H
  (assert (=> (<= j17 b) (= tab19 tab17)))

;; H
  (assert (=> (not (<= j17 b)) (= k15 (mk_int__ref k10))))

;; H
  (assert (=> (not (<= j17 b)) (= j22 (mk_int__ref j17))))

;; H
  (assert (=> (not (<= j17 b)) (= tab18 tab12)))

;; H
  (assert (=> (not (<= j17 b)) (= k16 k10)))

;; H
  (assert (=> (not (<= j17 b)) (= j23 j17)))

;; H
  (assert (=> (not (<= j17 b)) (= tab19 tab13)))

;; H
  (assert (= result20 j22))

;; H
  (assert (= j24 a))

;; H
  (assert (=> (<= j24 b) (= temp___167 j24)))

;; H
  (assert (=> (<= j24 b) (= temp___165 (map__content tab18))))

;; H
  (assert (=> (<= j24 b) (= 0 temp___168)))

;; H
  (assert (=> (<= j24 b) (= (to_rep o17) j24)))

;; H
  (assert
  (=> (<= j24 b)
  (and (<= (to_rep tab__first) j24) (<= j24 (to_rep tab__last)))))

;; H
  (assert (=> (<= j24 b) (= o18 j24)))

;; H
  (assert (=> (<= j24 b) (= o19 (store (map__content tab18) o18 o17))))

;; H
  (assert (=> (<= j24 b) (= result21 tab18)))

;; H
  (assert (=> (<= j24 b) (= tab20 o19)))

;; H
  (assert (=> (<= j24 b) (and (= o20 (+ j24 1)) (in_range1 (+ j24 1)))))

;; H
  (assert (=> (<= j24 b) (= result22 (mk_int__ref j24))))

;; H
  (assert (=> (<= j24 b) (= j25 o20)))

;; H
  (assert
  (=> (<= j24 b)
  (forall ((l Int))
  (=> (and (<= a l) (<= l (- j26 1))) (= (to_rep (select tab21 l)) l)))))

;; H
  (assert
  (=> (<= j24 b) (=> (<= (- 2147483648) 2147483647) (in_range1 j26))))

;; H
  (assert (=> (<= j24 b) (= result23 (mk_int__ref temp___1681))))

;; H
  (assert (=> (<= j24 b) (= temp___1682 j26)))

;; H
  (assert (=> (<= j24 b) (not (<= j26 b))))

;; H
  (assert (=> (<= j24 b) (= j27 (mk_int__ref j26))))

;; H
  (assert (=> (<= j24 b) (= tab22 (mk_map__ref tab21))))

;; H
  (assert (=> (<= j24 b) (= j28 j26)))

;; H
  (assert (=> (<= j24 b) (= tab23 tab21)))

;; H
  (assert (=> (<= j24 b) (= j29 j27)))

;; H
  (assert (=> (<= j24 b) (= tab24 tab22)))

;; H
  (assert (=> (<= j24 b) (= j30 j28)))

;; H
  (assert (=> (<= j24 b) (= tab25 tab23)))

;; H
  (assert (=> (not (<= j24 b)) (= j29 (mk_int__ref j24))))

;; H
  (assert (=> (not (<= j24 b)) (= tab24 tab18)))

;; H
  (assert (=> (not (<= j24 b)) (= j30 j24)))

;; H
  (assert (=> (not (<= j24 b)) (= tab25 tab19)))

;; H
  (assert (= result24 j29))

;; H
  (assert (= j31 a))

;; H
  (assert (=> (<= j31 b) (= temp___172 j31)))

;; H
  (assert (=> (<= j31 b) (= temp___170 (map__content tab24))))

;; H
  (assert (=> (<= j31 b) (= 0 temp___173)))

;; H
  (assert (=> (<= j31 b) (= (to_rep o21) j31)))

;; H
  (assert
  (=> (<= j31 b)
  (and (<= (to_rep tab__first) j31) (<= j31 (to_rep tab__last)))))

;; H
  (assert (=> (<= j31 b) (= o22 j31)))

;; H
  (assert (=> (<= j31 b) (= o23 (store (map__content tab24) o22 o21))))

;; H
  (assert (=> (<= j31 b) (= result25 tab24)))

;; H
  (assert (=> (<= j31 b) (= tab26 o23)))

;; H
  (assert (=> (<= j31 b) (and (= o24 (+ j31 1)) (in_range1 (+ j31 1)))))

;; H
  (assert (=> (<= j31 b) (= result26 (mk_int__ref j31))))

;; H
  (assert (=> (<= j31 b) (= j32 o24)))

;; H
  (assert
  (=> (<= j31 b)
  (forall ((l Int))
  (=> (and (<= a l) (<= l (- j33 1))) (= (to_rep (select tab27 l)) l)))))

;; H
  (assert
  (=> (<= j31 b) (=> (<= (- 2147483648) 2147483647) (in_range1 j33))))

;; H
  (assert (=> (<= j31 b) (= result27 (mk_int__ref temp___1731))))

;; H
  (assert (=> (<= j31 b) (= temp___1732 j33)))

;; H
  (assert (=> (<= j31 b) (not (<= j33 b))))

;; H
  (assert (=> (<= j31 b) (= j34 (mk_int__ref j33))))

;; H
  (assert (=> (<= j31 b) (= tab28 (mk_map__ref tab27))))

;; H
  (assert (=> (<= j31 b) (= j35 j33)))

;; H
  (assert (=> (<= j31 b) (= tab29 tab27)))

;; H
  (assert (=> (<= j31 b) (= j36 j34)))

;; H
  (assert (=> (<= j31 b) (= tab30 tab28)))

;; H
  (assert (=> (<= j31 b) (= j37 j35)))

;; H
  (assert (=> (<= j31 b) (= tab31 tab29)))

;; H
  (assert (=> (not (<= j31 b)) (= j36 (mk_int__ref j31))))

;; H
  (assert (=> (not (<= j31 b)) (= tab30 tab24)))

;; H
  (assert (=> (not (<= j31 b)) (= j37 j31)))

;; H
  (assert (=> (not (<= j31 b)) (= tab31 tab25)))

;; H
  (assert (= result28 j36))

;; H
  (assert (= j38 a))

;; H
  (assert (= result29 k15))

;; H
  (assert (= k17 0))

;; H
  (assert (=> (<= j38 b) (= temp___178 k17)))

;; H
  (assert (=> (<= j38 b) (= temp___177 j38)))

;; H
  (assert (=> (<= j38 b) (= temp___175 (map__content tab30))))

;; H
  (assert (=> (<= j38 b) (= 0 temp___180)))

;; H
  (assert (=> (<= j38 b) (= 0 temp___179)))

;; H
  (assert (=> (<= j38 b) (= (to_rep o25) j38)))

;; H
  (assert
  (=> (<= j38 b)
  (and (<= (to_rep tab__first) j38) (<= j38 (to_rep tab__last)))))

;; H
  (assert (=> (<= j38 b) (= o26 j38)))

;; H
  (assert (=> (<= j38 b) (= o27 (store (map__content tab30) o26 o25))))

;; H
  (assert (=> (<= j38 b) (= result30 tab30)))

;; H
  (assert (=> (<= j38 b) (= tab32 o27)))

;; H
  (assert (=> (<= j38 b) (and (= o28 (+ j38 1)) (in_range1 (+ j38 1)))))

;; H
  (assert (=> (<= j38 b) (= result31 (mk_int__ref j38))))

;; H
  (assert (=> (<= j38 b) (= j39 o28)))

;; H
  (assert (=> (<= j38 b) (and (= o29 (+ k17 1)) (in_range1 (+ k17 1)))))

;; H
  (assert (=> (<= j38 b) (= result32 (mk_int__ref k17))))

;; H
  (assert (=> (<= j38 b) (= k18 o29)))

;; H
  (assert (=> (<= j38 b) (= j40 (+ a k19))))

;; H
  (assert
  (=> (<= j38 b)
  (forall ((l Int))
  (=> (and (<= a l) (<= l (- j40 1))) (= (to_rep (select tab33 l)) l)))))

;; H
  (assert
  (=> (<= j38 b)
  (forall ((l Int))
  (=> (and (<= a l) (<= l (- (+ a k19) 1))) (= (to_rep (select tab33 l)) l)))))

;; H
  (assert
  (=> (<= j38 b)
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 j40))
  (=> (<= (- 2147483648) 2147483647) (in_range1 k19)))))

;; H
  (assert (=> (<= j38 b) (= result33 (mk_int__ref temp___1791))))

;; H
  (assert (=> (<= j38 b) (= temp___1792 j40)))

;; H
  (assert (=> (<= j38 b) (= result34 (mk_int__ref temp___1801))))

;; H
  (assert (=> (<= j38 b) (= temp___1802 k19)))

;; H
  (assert (=> (<= j38 b) (not (<= j40 b))))

;; H
  (assert (=> (<= j38 b) (= k20 (mk_int__ref k19))))

;; H
  (assert (=> (<= j38 b) (= j41 (mk_int__ref j40))))

;; H
  (assert (=> (<= j38 b) (= tab34 (mk_map__ref tab33))))

;; H
  (assert (=> (<= j38 b) (= k21 k19)))

;; H
  (assert (=> (<= j38 b) (= j42 j40)))

;; H
  (assert (=> (<= j38 b) (= tab35 tab33)))

;; H
  (assert (=> (<= j38 b) (= k22 k20)))

;; H
  (assert (=> (<= j38 b) (= j43 j41)))

;; H
  (assert (=> (<= j38 b) (= tab36 tab34)))

;; H
  (assert (=> (<= j38 b) (= k23 k21)))

;; H
  (assert (=> (<= j38 b) (= j44 j42)))

;; H
  (assert (=> (<= j38 b) (= tab37 tab35)))

;; H
  (assert (=> (not (<= j38 b)) (= k22 (mk_int__ref k17))))

;; H
  (assert (=> (not (<= j38 b)) (= j43 (mk_int__ref j38))))

;; H
  (assert (=> (not (<= j38 b)) (= tab36 tab30)))

;; H
  (assert (=> (not (<= j38 b)) (= k23 k17)))

;; H
  (assert (=> (not (<= j38 b)) (= j44 j38)))

;; H
  (assert (=> (not (<= j38 b)) (= tab37 tab31)))

;; H
  (assert (= result35 j43))

;; H
  (assert (= j45 a))

;; H
  (assert (= result36 k22))

;; H
  (assert (= k24 0))

;; H
  (assert (<= j45 b))

;; H
  (assert (= (to_rep o30) j45))

;; H
  (assert (and (<= (to_rep tab__first) j45) (<= j45 (to_rep tab__last))))

;; H
  (assert (= o31 j45))

;; H
  (assert (= o32 (store (map__content tab36) o31 o30)))

;; H
  (assert (= result37 tab36))

;; H
  (assert (= tab38 o32))

;; H
  (assert (and (= o33 (+ j45 1)) (in_range1 (+ j45 1))))

;; H
  (assert (= result38 (mk_int__ref j45)))

;; H
  (assert (= j46 o33))

;; H
  (assert (and (= o34 (+ k24 1)) (in_range1 (+ k24 1))))

;; H
  (assert (= result39 (mk_int__ref k24)))

;; H
  (assert (= k25 o34))

;; H
  (assert (= j47 (+ a k26)))

;; H
  (assert
  (forall ((l Int))
  (=> (and (<= a l) (<= l (- j47 1))) (= (to_rep (select tab39 l)) l))))

;; H
  (assert
  (forall ((l Int))
  (=> (and (<= a l) (<= l (- (+ a k26) 1))) (= (to_rep (select tab39 l)) l))))

;; H
  (assert
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 j47))
  (=> (<= (- 2147483648) 2147483647) (in_range1 k26))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range1 (- j47 1))))
(check-sat)
