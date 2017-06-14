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

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

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
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes ()
((intarray__ref (mk_intarray__ref (intarray__content us_t)))))
(define-fun intarray__ref___projection ((a intarray__ref)) us_t (intarray__content
                                                                a))

(define-fun dynamic_invariant2 ((temp___expr_136 us_t)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (not (= temp___skip_constant_134 true))
                                      (dynamic_property (- 2147483648)
                                      2147483647 (first1 temp___expr_136)
                                      (last1 temp___expr_136))))

(declare-fun table () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun value1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun value2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun found1 () Bool)

(declare-fun found2 () Bool)

(declare-fun index1 () Int)

(declare-fun index2 () Int)

(declare-fun found () Int)

(declare-fun i () Int)

(declare-fun temp___163 () Int)

(declare-fun temp___162 () Int)

(declare-fun temp___161 () Bool)

(declare-fun temp___160 () Bool)

(declare-fun temp___159 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun result () Int)

(declare-fun found3 () Int)

(declare-fun result1 () Bool)

(declare-fun found11 () Bool)

(declare-fun result2 () Int)

(declare-fun index11 () Int)

(declare-fun result3 () Bool)

(declare-fun found21 () Bool)

(declare-fun result4 () Int)

(declare-fun index21 () Int)

(declare-fun result5 () Int)

(declare-fun i1 () Int)

(declare-fun found12 () Bool)

(declare-fun found22 () Bool)

(declare-fun index12 () Int)

(declare-fun index22 () Int)

(declare-fun found4 () Int)

(declare-fun i2 () Int)

(declare-fun result6 () Bool)

(declare-fun found13 () Bool)

(declare-fun result7 () Int)

(declare-fun index13 () Int)

(declare-fun result8 () Int)

(declare-fun found5 () Int)

(declare-fun result9 () Bool)

(declare-fun found23 () Bool)

(declare-fun result10 () Int)

(declare-fun index23 () Int)

(declare-fun result11 () Int)

(declare-fun found6 () Int)

(declare-fun found14 () bool__ref)

(declare-fun found24 () bool__ref)

(declare-fun index14 () int__ref)

(declare-fun index24 () int__ref)

(declare-fun found7 () int__ref)

(declare-fun i3 () int__ref)

(declare-fun found15 () Bool)

(declare-fun found25 () Bool)

(declare-fun index15 () Int)

(declare-fun index25 () Int)

(declare-fun found8 () Int)

(declare-fun i4 () Int)

(declare-fun found16 () bool__ref)

(declare-fun found26 () bool__ref)

(declare-fun index16 () int__ref)

(declare-fun index26 () int__ref)

(declare-fun found9 () int__ref)

(declare-fun i5 () int__ref)

(declare-fun found17 () Bool)

(declare-fun found27 () Bool)

(declare-fun index17 () Int)

(declare-fun index27 () Int)

(declare-fun found10 () Int)

(declare-fun i6 () Int)

(declare-fun found18 () bool__ref)

(declare-fun found28 () bool__ref)

(declare-fun index18 () int__ref)

(declare-fun index28 () int__ref)

(declare-fun found19 () int__ref)

(declare-fun i7 () int__ref)

(declare-fun found110 () Bool)

(declare-fun found29 () Bool)

(declare-fun index19 () Int)

(declare-fun index29 () Int)

(declare-fun found20 () Int)

(declare-fun i8 () Int)

;; H
  (assert (dynamic_invariant2 table true false true))

;; H
  (assert (in_range1 value1))

;; H
  (assert (in_range1 value2))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 index1)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 index2)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref found)))

;; H
  (assert (= found3 0))

;; H
  (assert (in_range2 found3))

;; H
  (assert (= (mk_bool__ref result1) (mk_bool__ref found1)))

;; H
  (assert (= found11 (of_int 0)))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref index1)))

;; H
  (assert (= index11 0))

;; H
  (assert (= (mk_bool__ref result3) (mk_bool__ref found2)))

;; H
  (assert (= found21 (of_int 0)))

;; H
  (assert (= (mk_int__ref result4) (mk_int__ref index2)))

;; H
  (assert (= index21 0))

;; H
  (assert (= (mk_int__ref result5) (mk_int__ref i)))

;; H
  (assert (= i1 (to_rep (first (rt table)))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= temp___163 index21)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= temp___162 index11)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= temp___161 found21)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= temp___160 found11)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= temp___159 found3)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (and
  (and
  (and (=> (<= 0 2147483647) (in_range2 found4))
  (=> (<= (- 2147483648) 2147483647) (in_range1 index12)))
  (=> (<= (- 2147483648) 2147483647) (in_range1 index22)))
  (and (<= (to_rep (first (rt table))) i2)
  (<= i2 (to_rep (last (rt table))))))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (or
  (or (and (and (= found4 0) (not (= found12 true))) (not (= found22 true)))
  (and (= found4 1) (or (= found12 true) (= found22 true))))
  (and (and (= found4 2) (= found12 true)) (= found22 true)))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (or (not (= found12 true)) (not (= found22 true)))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (or (not (= found12 true))
  (= (to_rep (select (elts table) index12)) value1))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (or (not (= found22 true))
  (= (to_rep (select (elts table) index22)) value2))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (< found4 2)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (= found12 result6))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (= found13 (of_int 1)))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (= index12 result7))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (= index13 i2))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (and (= o (+ found4 1)) (in_range1 (+ found4 1))))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (= found4 result8))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (= found5 o))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (and (= found13 true) (= index13 i2)))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1))
  (<= found5 2))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (not
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1)))
  (= found5 found4))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (not
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1)))
  (= index13 index12))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (not
  (and (not (= found12 true)) (= (to_rep (select (elts table) i2)) value1)))
  (= found13 found12))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (= found22 result9))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (= found23 (of_int 1)))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (= index22 result10))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (= index23 i2))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (and (= o1 (+ found5 1)) (in_range1 (+ found5 1))))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (= found5 result11))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (= found6 o1))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (and (= found23 true) (= index23 i2)))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2))
  (<= found6 2))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (not
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2)))
  (= found6 found5))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (not
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2)))
  (= index23 index22))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (=>
  (not
  (and (not (= found22 true)) (= (to_rep (select (elts table) i2)) value2)))
  (= found23 found22))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))
  (or (= found6 2)
  (and (not (= found6 2)) (= i2 (to_rep (last (rt table))))))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= i3 (mk_int__ref i2))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found7 (mk_int__ref found6))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= index24 (mk_int__ref index23))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= index14 (mk_int__ref index13))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found24 (mk_bool__ref found23))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found14 (mk_bool__ref found13))))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= i4 i2)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found8 found6)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= index25 index23)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= index15 index13)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found25 found23)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found15 found13)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= i5 i3)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found9 found7)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= index26 index24)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= index16 index14)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found26 found24)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found16 found14)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= i6 i4)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found10 found8)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= index27 index25)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= index17 index15)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found27 found25)))

;; H
  (assert
  (=>
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table))))) (= found17 found15)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= i5 (mk_int__ref i1))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= found9 (mk_int__ref found3))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= index26 (mk_int__ref index21))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= index16 (mk_int__ref index11))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= found26 (mk_bool__ref found21))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= found16 (mk_bool__ref found11))))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= i6 i1)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= found10 found3)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= index27 index21)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= index17 index11)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= found27 found21)))

;; H
  (assert
  (=>
  (not
  (and (<= (to_rep (first (rt table))) i1)
  (<= i1 (to_rep (last (rt table)))))) (= found17 found11)))

;; H
  (assert (= i7 i5))

;; H
  (assert (= found19 found9))

;; H
  (assert (= index28 index26))

;; H
  (assert (= index18 index16))

;; H
  (assert (= found28 found26))

;; H
  (assert (= found18 found16))

;; H
  (assert (= i8 i6))

;; H
  (assert (= found20 found10))

;; H
  (assert (= index29 index27))

;; H
  (assert (= index19 index17))

;; H
  (assert (= found29 found27))

;; H
  (assert (= found110 found17))

(assert
;; WP_parameter_def
 ;; File "search.ads", line 19, characters 0-0
  (not
  (or (not (= (bool__content found18) true))
  (= (to_rep (select (elts table) (int__content index18))) value1))))
(check-sat)
