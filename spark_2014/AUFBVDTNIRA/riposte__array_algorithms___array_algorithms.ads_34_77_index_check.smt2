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

(declare-sort value_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (value_type value_type) Bool)

(declare-fun dummy () value_type)

(declare-datatypes ()
((value_type__ref (mk_value_type__ref (value_type__content value_type)))))
(define-fun value_type__ref___projection ((a value_type__ref)) value_type 
  (value_type__content a))

(declare-fun to_rep (value_type) Int)

(declare-fun of_rep (Int) value_type)

;; inversion_axiom
  (assert
  (forall ((x value_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x value_type)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort tindex_typeB 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (tindex_typeB tindex_typeB) Bool)

(declare-fun dummy1 () tindex_typeB)

(declare-datatypes ()
((tindex_typeB__ref
 (mk_tindex_typeB__ref (tindex_typeB__content tindex_typeB)))))
(define-fun tindex_typeB__ref___projection ((a tindex_typeB__ref)) tindex_typeB 
  (tindex_typeB__content a))

(declare-sort index_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (index_type index_type) Bool)

(declare-fun dummy2 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_142)))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int value_type))))))
(declare-fun slide ((Array Int value_type) Int Int) (Array Int value_type))

;; slide_eq
  (assert
  (forall ((a (Array Int value_type)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int value_type)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int value_type) Int Int (Array Int value_type)
  Int Int) (Array Int value_type))

;; concat_def
  (assert
  (forall ((a (Array Int value_type)) (b (Array Int value_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (value_type Int) (Array Int value_type))

;; singleton_def
  (assert
  (forall ((v value_type))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int value_type)) (a__first Int) (a__last Int)
  (b (Array Int value_type)) (b__first Int)
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
  (forall ((a (Array Int value_type)) (b (Array Int value_type)))
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

(declare-fun compare ((Array Int value_type) Int Int (Array Int value_type)
  Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int value_type)) (b (Array Int value_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int value_type)) (b (Array Int value_type)))
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
  (forall ((a (Array Int value_type)) (b (Array Int value_type)))
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

(declare-fun to_rep1 (tindex_typeB) Int)

(declare-fun of_rep1 (Int) tindex_typeB)

;; inversion_axiom
  (assert
  (forall ((x tindex_typeB))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x tindex_typeB)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) tindex_typeB)

(declare-fun last (t) tindex_typeB)

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

(declare-datatypes () ((us_t (mk___t (elts (Array Int value_type))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int value_type) (elts a))

(define-fun of_array ((a (Array Int value_type)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int value_type)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int value_type)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int value_type)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int value_type))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int value_type))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int value_type))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes ()
((generic_array__ref (mk_generic_array__ref (generic_array__content us_t)))))
(define-fun generic_array__ref___projection ((a generic_array__ref)) us_t 
  (generic_array__content a))

(define-fun dynamic_invariant1 ((temp___expr_148 us_t)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (not (= temp___skip_constant_146 true))
                                      (dynamic_property (- 2147483648)
                                      2147483647 (first1 temp___expr_148)
                                      (last1 temp___expr_148))))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (tindex_typeB tindex_typeB) Bool)

(declare-fun dummy4 () tindex_typeB)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content tindex_typeB)))))
(define-fun t3b__ref___projection ((a1 t3b__ref)) tindex_typeB (t3b__content
                                                               a1))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant2 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range1 temp___expr_136)))

(declare-fun found () Bool)

(declare-fun location () Int)

(declare-fun i () Int)

(declare-fun temp___195 () Int)

(declare-fun temp___194 () Int)

(declare-fun temp___193 () Bool)

(declare-fun o () Int)

(declare-fun o1 () value_type)

(declare-fun o2 () Int)

(declare-fun o3 () Bool)

(declare-fun o4 () Int)

(declare-fun o5 () value_type)

(declare-fun o6 () Int)

(declare-fun o7 () Bool)

(declare-fun i1 () Int)

(declare-fun o8 () Int)

(declare-fun o9 () Bool)

(declare-fun result () Bool)

(declare-fun found1 () Bool)

(declare-fun result1 () Int)

(declare-fun location1 () Int)

(declare-fun result2 () Int)

(declare-fun i2 () Int)

(declare-fun result3 () Bool)

(declare-fun result4 () Bool)

(declare-fun found2 () Bool)

(declare-fun result5 () Int)

(declare-fun location2 () Int)

(declare-fun found3 () Bool)

(declare-fun location3 () Int)

(declare-fun i3 () Int)

(declare-fun result6 () Int)

(declare-fun i4 () Int)

(declare-fun result7 () Bool)

(declare-fun result8 () Bool)

(declare-fun found4 () Bool)

(declare-fun result9 () Int)

(declare-fun location4 () Int)

(declare-fun found5 () Bool)

(declare-fun location5 () Int)

(declare-fun i5 () Int)

(declare-fun found6 () Bool)

(declare-fun location6 () Int)

(declare-fun i6 () Int)

(declare-fun found7 () Bool)

(declare-fun location7 () Int)

(declare-fun i7 () Int)

(declare-fun found8 () Bool)

(declare-fun location8 () Int)

(declare-fun i8 () Int)

(declare-fun found9 () Bool)

(declare-fun location9 () int__ref)

(declare-fun i9 () int__ref)

(declare-fun found10 () Bool)

(declare-fun location10 () Int)

(declare-fun i10 () Int)

(declare-fun found11 () bool__ref)

(declare-fun location11 () int__ref)

(declare-fun i11 () int__ref)

(declare-fun found12 () Bool)

(declare-fun location12 () Int)

(declare-fun i12 () Int)

(declare-fun found13 () bool__ref)

(declare-fun location13 () int__ref)

(declare-fun i13 () int__ref)

(declare-fun found14 () Bool)

(declare-fun location14 () Int)

(declare-fun i14 () Int)

(declare-fun result10 () Bool)

(define-fun found15 () bool__ref (mk_bool__ref found9))

(define-fun i15 () int__ref (mk_int__ref i7))

(define-fun location15 () int__ref (mk_int__ref location7))

(define-fun found16 () bool__ref (mk_bool__ref found7))

;; H
  (assert (dynamic_invariant1 a true false true))

;; H
  (assert (dynamic_invariant1 b true false true))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 location)))

;; H
  (assert
  (and (= (to_rep1 (first (rt a))) (to_rep1 (first (rt b))))
  (= (to_rep1 (last (rt a))) (to_rep1 (last (rt b))))))

;; H
  (assert (= (mk_bool__ref result) (mk_bool__ref found)))

;; H
  (assert (= found1 (of_int 0)))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref location)))

;; H
  (assert (= location1 (to_rep1 (first (rt a)))))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref i)))

;; H
  (assert (= i2 (to_rep1 (first (rt a)))))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= temp___195 i2)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= temp___194 location1)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= temp___193 found1)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (or
  (and
  (and (and (= i2 i7) (and (= location2 location7) (= found2 found7)))
  (and (= i8 i2) (and (= location8 location2) (= found8 found2))))
  (and
  (and
  (and
  (and
  (and
  (and (and (<= (to_rep1 (first (rt b))) i2) (<= i2 (to_rep1 (last (rt b)))))
  (= o i2)) (= o1 (select (elts b) o))) (= o2 (to_rep o1)))
  (= o3 (ite (= (to_rep (select (elts a) i2)) o2) true false)))
  (= result3 (ite (not (= o3 true)) true false)))
  (and (= result3 true)
  (and (and (= found1 result4) (= found2 (of_int 1)))
  (and (= location1 result5) (= location2 i2))))))
  (and
  (and
  (and
  (and
  (and
  (and
  (and (and (<= (to_rep1 (first (rt b))) i2) (<= i2 (to_rep1 (last (rt b)))))
  (= o i2)) (= o1 (select (elts b) o))) (= o2 (to_rep o1)))
  (= o3 (ite (= (to_rep (select (elts a) i2)) o2) true false)))
  (= result3 (ite (not (= o3 true)) true false)))
  (and (not (= result3 true))
  (and (= location2 location1) (= found2 found1))))
  (and
  (and
  (and (= i15 (mk_int__ref i5))
  (and (= location15 (mk_int__ref location5))
  (= found16 (mk_bool__ref found5))))
  (and (= i8 i6) (and (= location8 location6) (= found8 found6))))
  (and
  (and
  (forall ((j Int))
  (=> (and (<= (to_rep1 (first (rt a))) j) (<= j i3))
  (= (to_rep (select (elts a) j)) (to_rep (select (elts b) j)))))
  (not (= found3 true)))
  (and
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range3 location3))
  (=> (<= (to_rep1 (first (rt a))) (to_rep1 (last (rt a))))
  (dynamic_property1 (to_rep1 (first (rt a))) (to_rep1 (last (rt a))) 
  i3)))
  (and (<= (to_rep1 (first (rt a))) i3) (<= i3 (to_rep1 (last (rt a))))))
  (or
  (and
  (and (and (= i3 i5) (and (= location3 location5) (= found3 found5)))
  (and (= i6 i3) (and (= location6 location3) (= found6 found3))))
  (= i3 (to_rep1 (last (rt a)))))
  (and (not (= i3 (to_rep1 (last (rt a)))))
  (and
  (and (and (= i4 i5) (and (= location4 location5) (= found4 found5)))
  (and (= i6 i4) (and (= location6 location4) (= found6 found4))))
  (and (and (= i3 result6) (= i4 (+ i3 1)))
  (and
  (and
  (and
  (and
  (and
  (and (and (<= (to_rep1 (first (rt b))) i4) (<= i4 (to_rep1 (last (rt b)))))
  (= o4 i4)) (= o5 (select (elts b) o4))) (= o6 (to_rep o5)))
  (= o7 (ite (= (to_rep (select (elts a) i4)) o6) true false)))
  (= result7 (ite (not (= o7 true)) true false)))
  (and (= result7 true)
  (and (and (= found3 result8) (= found4 (of_int 1)))
  (and (= location3 result9) (= location4 i4))))))))))))))))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= i9 i15)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= location9 location15)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= found15 found16)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= i10 i8)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= location10 location8)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= found10 found8)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= i11 i9)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= location11 location9)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= found11 found15)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= i12 i10)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= location12 location10)))

;; H
  (assert
  (=> (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a)))))
  (= found12 found10)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a))))))
  (= i11 (mk_int__ref i2))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a))))))
  (= location11 (mk_int__ref location1))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a))))))
  (= found11 (mk_bool__ref found1))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a))))))
  (= i12 i2)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a))))))
  (= location12 location1)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep1 (first (rt a))) i2) (<= i2 (to_rep1 (last (rt a))))))
  (= found12 found1)))

;; H
  (assert (= i13 i11))

;; H
  (assert (= location13 location11))

;; H
  (assert (= found13 found11))

;; H
  (assert (= i14 i12))

;; H
  (assert (= location14 location12))

;; H
  (assert (= found14 found12))

;; H
  (assert (= (bool__content found13) true))

;; H
  (assert
  (and (= o8 (- (int__content location13) 1)) (in_range2
  (- (int__content location13) 1))))

;; H
  (assert (= o9 (ite (<= i1 o8) true false)))

;; H
  (assert (= result10 (ite (<= (to_rep1 (first (rt a))) i1) o9 false)))

;; H
  (assert (= result10 true))

(assert
;; WP_parameter_def
 ;; File "array_algorithms.ads", line 20, characters 0-0
  (not (<= (to_rep1 (first (rt b))) i1)))
(check-sat)
