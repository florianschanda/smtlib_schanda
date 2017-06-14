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

(define-fun bool_eq1 ((a (Array Int integer)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq1 a a_first i b b_first j) true)
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
     (and (= (bool_eq1 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

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
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int integer))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))

(define-fun of_array ((a (Array Int integer)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

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

(define-fun bool_eq3 ((x us_t)
  (y us_t)) Bool (bool_eq1 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes ()
((int_array__ref (mk_int_array__ref (int_array__content us_t)))))
(define-fun int_array__ref___projection ((a int_array__ref)) us_t (int_array__content
                                                                  a))

(define-fun dynamic_invariant1 ((temp___expr_138 us_t)
  (temp___is_init_135 Bool) (temp___skip_constant_136 Bool)
  (temp___do_toplevel_137 Bool)) Bool (=>
                                      (not (= temp___skip_constant_136 true))
                                      (dynamic_property 1 2147483647
                                      (first1 temp___expr_138)
                                      (last1 temp___expr_138))))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes () ((dyn2__ref (mk_dyn2__ref (dyn2__content integer)))))
(define-fun dyn2__ref___projection ((a1 dyn2__ref)) integer (dyn2__content
                                                            a1))

(declare-fun last3 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((dyn1__ref (mk_dyn1__ref (dyn1__content integer)))))
(define-fun dyn1__ref___projection ((a1 dyn1__ref)) integer (dyn1__content
                                                            a1))

(define-fun dynamic_invariant2 ((temp___expr_209 Int)
  (temp___is_init_206 Bool) (temp___skip_constant_207 Bool)
  (temp___do_toplevel_208 Bool)) Bool (=>
                                      (or (= temp___is_init_206 true)
                                      (<= 0 last2)) (dynamic_property1 0
                                      last2 temp___expr_209)))

;; last__def_axiom
  (assert (= last2 (- last3 1)))

(declare-fun c () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun last4 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes () ((dyn3__ref (mk_dyn3__ref (dyn3__content integer)))))
(define-fun dyn3__ref___projection ((a1 dyn3__ref)) integer (dyn3__content
                                                            a1))

(declare-fun first2 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property4 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t16b__ref (mk_t16b__ref (t16b__content integer)))))
(define-fun t16b__ref___projection ((a1 t16b__ref)) integer (t16b__content
                                                            a1))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant3 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant4 ((temp___expr_203 Int)
  (temp___is_init_200 Bool) (temp___skip_constant_201 Bool)
  (temp___do_toplevel_202 Bool)) Bool (=>
                                      (or (= temp___is_init_200 true)
                                      (<= 0 last3)) (dynamic_property2 0
                                      last3 temp___expr_203)))

;; last__def_axiom
  (assert (= last3 (last1 a)))

;; c__def_axiom
  (assert (= c (- last2 1)))

(define-fun dynamic_invariant5 ((temp___expr_215 Int)
  (temp___is_init_212 Bool) (temp___skip_constant_213 Bool)
  (temp___do_toplevel_214 Bool)) Bool (=>
                                      (or (= temp___is_init_212 true)
                                      (<= 0 last4)) (dynamic_property3 0
                                      last4 temp___expr_215)))

;; last__def_axiom
  (assert (= last4 c))

(declare-fun i () Int)

(declare-fun e () Int)

(declare-fun dynamic_ranges__search_0__nested__result () Int)

(declare-fun temp___263 () Int)

(declare-fun temp___264 () Int)

(declare-fun temp___262 () Int)

(declare-fun temp___261 () Int)

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun o2 () Int)

(declare-fun us () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () integer)

(declare-fun o6 () Int)

(declare-fun us1 () Int)

(declare-fun o7 () Int)

(declare-fun us2 () Int)

(declare-fun o8 () Int)

(declare-fun e1 () Int)

(declare-fun dynamic_ranges__search_0__nested__result1 () Int)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () Int)

(declare-fun e2 () Int)

(declare-fun result2 () Int)

(declare-fun dynamic_ranges__search_0__nested__result2 () Int)

(declare-fun i2 () Int)

(declare-fun e3 () Int)

(declare-fun dynamic_ranges__search_0__nested__result3 () Int)

(declare-fun result3 () Int)

(declare-fun i3 () Int)

(declare-fun result4 () Int)

(declare-fun e4 () Int)

(declare-fun result5 () Int)

(declare-fun dynamic_ranges__search_0__nested__result4 () Int)

(declare-fun i4 () Int)

(declare-fun e5 () Int)

(declare-fun dynamic_ranges__search_0__nested__result5 () Int)

(declare-fun i5 () Int)

(declare-fun e6 () Int)

(declare-fun dynamic_ranges__search_0__nested__result6 () Int)

(declare-fun i6 () Int)

(declare-fun e7 () Int)

(declare-fun dynamic_ranges__search_0__nested__result7 () Int)

(declare-fun i7 () Int)

(declare-fun e8 () Int)

(declare-fun dynamic_ranges__search_0__nested__result8 () Int)

(declare-fun i8 () Int)

(declare-fun e9 () Int)

(declare-fun dynamic_ranges__search_0__nested__result9 () Int)

(declare-fun i9 () Int)

(declare-fun e10 () Int)

(declare-fun dynamic_ranges__search_0__nested__result10 () Int)

(declare-fun result6 () int__ref)

(declare-fun dynamic_ranges__search_0__nested__result11 () Int)

(declare-fun dynamic_ranges__search_0__nested__result12 () int__ref)

(declare-fun dynamic_ranges__search_0__nested__result13 () Int)

(declare-fun i10 () int__ref)

(declare-fun e11 () int__ref)

(declare-fun dynamic_ranges__search_0__nested__result14 () int__ref)

(declare-fun i11 () Int)

(declare-fun e12 () Int)

(declare-fun dynamic_ranges__search_0__nested__result15 () Int)

(declare-fun i12 () int__ref)

(declare-fun e13 () int__ref)

(declare-fun dynamic_ranges__search_0__nested__result16 () int__ref)

(declare-fun i13 () Int)

(declare-fun e14 () Int)

(declare-fun dynamic_ranges__search_0__nested__result17 () Int)

(define-fun dynamic_ranges__search_0__nested__result18 () int__ref (mk_int__ref
                                                                   dynamic_ranges__search_0__nested__result9))

(define-fun e15 () int__ref (mk_int__ref e9))

(define-fun i14 () int__ref (mk_int__ref i8))

(define-fun result7 () int__ref (mk_int__ref result1))

(define-fun result8 () int__ref (mk_int__ref result))

(define-fun dynamic_ranges__search_0__nested__result19 () int__ref (mk_int__ref
                                                                   dynamic_ranges__search_0__nested__result))

(define-fun e16 () int__ref (mk_int__ref e))

(define-fun i15 () int__ref (mk_int__ref i))

(declare-fun result9 () Int)

;; H
  (assert (dynamic_property1 0 last2 c))

;; H
  (assert (= (- last2 1) c))

;; H
  (assert (dynamic_invariant1 a true false true))

;; H
  (assert
  (and (<= c (to_rep (last (rt a))))
  (and (<= (to_rep (first (rt a))) (to_rep (last (rt a))))
  (<= 2 (- (to_rep (last (rt a))) (to_rep (first (rt a))))))))

;; H
  (assert
  (or
  (and
  (and
  (and
  (= dynamic_ranges__search_0__nested__result14 (mk_int__ref
                                                dynamic_ranges__search_0__nested__result5))
  (and (= e11 (mk_int__ref e5)) (= i10 (mk_int__ref i4))))
  (and
  (= dynamic_ranges__search_0__nested__result15 dynamic_ranges__search_0__nested__result6)
  (and (= e12 e6) (= i11 i5))))
  (and (= temp___263 (to_rep (first (rt a))))
  (and (= temp___264 last4)
  (and (and (= result8 i15) (= i1 temp___263))
  (and (and (<= temp___263 i1) (<= i1 temp___264))
  (and (= temp___262 e)
  (and (= temp___261 i1)
  (and
  (and
  (and
  (and
  (and
  (and (and (<= (to_rep (first (rt a))) i1) (<= i1 (to_rep (last (rt a)))))
  (= o i1)) (= o1 (select (elts a) o))) (= o2 (to_rep o1)))
  (and (= result7 e16) (= e2 o2))) (in_range1 e2))
  (or
  (and
  (and
  (and
  (= dynamic_ranges__search_0__nested__result2 dynamic_ranges__search_0__nested__result5)
  (and (= e2 e5) (= i1 i4)))
  (and
  (= dynamic_ranges__search_0__nested__result6 dynamic_ranges__search_0__nested__result2)
  (and (= e6 e2) (= i5 i1))))
  (and (= e2 0)
  (and (and (and (= us i1) (dynamic_property3 0 last4 i1)) (= o3 i1))
  (and (= (mk_int__ref result2) dynamic_ranges__search_0__nested__result19)
  (= dynamic_ranges__search_0__nested__result2 o3)))))
  (and
  (and (not (= e2 0))
  (and
  (= dynamic_ranges__search_0__nested__result2 dynamic_ranges__search_0__nested__result)
  (= dynamic_ranges__search_0__nested__result2 dynamic_ranges__search_0__nested__result1)))
  (and
  (and
  (and
  (= dynamic_ranges__search_0__nested__result4 dynamic_ranges__search_0__nested__result5)
  (and (= e4 e5) (= i3 i4)))
  (and
  (= dynamic_ranges__search_0__nested__result6 dynamic_ranges__search_0__nested__result4)
  (and (= e6 e4) (= i5 i3))))
  (and
  (forall ((j Int))
  (=> (and (<= (to_rep (first (rt a))) j) (<= j i2))
  (not (= (to_rep (select (elts a) j)) 0))))
  (and
  (and
  (and
  (=> (<= (to_rep (first (rt a))) last4) (dynamic_property4
  (to_rep (first (rt a))) last4 i2))
  (=> (<= (- 2147483648) 2147483647) (in_range1 e3)))
  (and (<= (to_rep (first (rt a))) i2) (<= i2 last4)))
  (and (not (= i2 temp___264))
  (and (and (= i2 result3) (= i3 (+ i2 1)))
  (and
  (and
  (and
  (and
  (and
  (and (and (<= (to_rep (first (rt a))) i3) (<= i3 (to_rep (last (rt a)))))
  (= o4 i3)) (= o5 (select (elts a) o4))) (= o6 (to_rep o5)))
  (and (= e3 result4) (= e4 o6))) (in_range1 e4))
  (and (= e4 0)
  (and (and (and (= us1 i3) (dynamic_property3 0 last4 i3)) (= o7 i3))
  (and (= dynamic_ranges__search_0__nested__result3 result5)
  (= dynamic_ranges__search_0__nested__result4 o7))))))))))))))))))))
  (and
  (and (and (= result8 i15) (= i1 (to_rep (first (rt a)))))
  (ite (and (<= (to_rep (first (rt a))) i1) (<= i1 last4))
  (and
  (and
  (and (= temp___262 e)
  (and (= temp___261 i1)
  (and
  (and
  (and
  (and
  (and
  (and (and (<= (to_rep (first (rt a))) i1) (<= i1 (to_rep (last (rt a)))))
  (= o i1)) (= o1 (select (elts a) o))) (= o2 (to_rep o1)))
  (and (= result7 e16) (= e2 o2))) (in_range1 e2))
  (and
  (and (not (= e2 0))
  (and
  (= dynamic_ranges__search_0__nested__result2 dynamic_ranges__search_0__nested__result)
  (= dynamic_ranges__search_0__nested__result2 dynamic_ranges__search_0__nested__result1)))
  (and
  (forall ((j Int))
  (=> (and (<= (to_rep (first (rt a))) j) (<= j i2))
  (not (= (to_rep (select (elts a) j)) 0))))
  (and
  (and
  (and
  (=> (<= (to_rep (first (rt a))) last4) (dynamic_property4
  (to_rep (first (rt a))) last4 i2))
  (=> (<= (- 2147483648) 2147483647) (in_range1 e3)))
  (and (<= (to_rep (first (rt a))) i2) (<= i2 last4))) (= i2 last4)))))))
  (and
  (and
  (= dynamic_ranges__search_0__nested__result3 dynamic_ranges__search_0__nested__result7)
  (and (= e3 e7) (= i2 i6)))
  (and
  (= dynamic_ranges__search_0__nested__result8 dynamic_ranges__search_0__nested__result3)
  (and (= e8 e3) (= i7 i2)))))
  (and
  (and
  (= dynamic_ranges__search_0__nested__result18 (mk_int__ref
                                                dynamic_ranges__search_0__nested__result7))
  (and (= e15 (mk_int__ref e7)) (= i14 (mk_int__ref i6))))
  (and
  (= dynamic_ranges__search_0__nested__result10 dynamic_ranges__search_0__nested__result8)
  (and (= e10 e8) (= i9 i7)))))
  (and
  (and
  (= dynamic_ranges__search_0__nested__result18 dynamic_ranges__search_0__nested__result19)
  (and (= e15 e16) (= i1 i8)))
  (and
  (= dynamic_ranges__search_0__nested__result10 dynamic_ranges__search_0__nested__result1)
  (and (= e10 e1) (= i9 i1))))))
  (and
  (and
  (and
  (= dynamic_ranges__search_0__nested__result14 dynamic_ranges__search_0__nested__result12)
  (and (= e11 e15) (= i10 i14)))
  (and
  (= dynamic_ranges__search_0__nested__result15 dynamic_ranges__search_0__nested__result13)
  (and (= e12 e10) (= i11 i9))))
  (and
  (and
  (= dynamic_ranges__search_0__nested__result12 (mk_int__ref
                                                dynamic_ranges__search_0__nested__result11))
  (= dynamic_ranges__search_0__nested__result13 dynamic_ranges__search_0__nested__result11))
  (and (and (and (= us2 0) (dynamic_property3 0 last4 0)) (= o8 0))
  (and (= result6 dynamic_ranges__search_0__nested__result18)
  (= dynamic_ranges__search_0__nested__result11 o8))))))))

;; H
  (assert
  (= dynamic_ranges__search_0__nested__result16 dynamic_ranges__search_0__nested__result14))

;; H
  (assert (= e13 e11))

;; H
  (assert (= i12 i10))

;; H
  (assert
  (= dynamic_ranges__search_0__nested__result17 dynamic_ranges__search_0__nested__result15))

;; H
  (assert (= e14 e12))

;; H
  (assert (= i13 i11))

;; H
  (assert
  (= result9 (int__content dynamic_ranges__search_0__nested__result16)))

(assert
;; WP_parameter_def
 ;; File "dynamic_ranges.adb", line 26, characters 0-0
  (not
  (or
  (and (= (int__content dynamic_ranges__search_0__nested__result16) 0)
  (forall ((i16 Int))
  (=> (and (<= (to_rep (first (rt a))) i16) (<= i16 c))
  (not (= (to_rep (select (elts a) i16)) 0)))))
  (and
  (<= (to_rep (first (rt a))) (int__content
                              dynamic_ranges__search_0__nested__result16))
  (= (to_rep
     (select (elts a) (int__content
                      dynamic_ranges__search_0__nested__result16))) 0)))))
(check-sat)
