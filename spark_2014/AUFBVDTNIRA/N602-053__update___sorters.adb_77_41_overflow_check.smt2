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

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

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
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes ()
((array_type__ref (mk_array_type__ref (array_type__content us_t)))))
(define-fun array_type__ref___projection ((a array_type__ref)) us_t (array_type__content
                                                                    a))

(declare-fun values__first () integer)

(declare-fun values__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun temp___141 (us_t Int Int Int Int) us_t)

;; def_axiom
  (assert
  (forall ((temp___143 us_t))
  (forall ((temp___144 Int) (temp___145 Int) (temp___146 Int)
  (temp___147 Int))
  (let ((temp___142 (temp___141 temp___143 temp___144 temp___145 temp___146
                    temp___147)))
  (and
  (and (= (first1 temp___142) (first1 temp___143))
  (= (last1 temp___142) (last1 temp___143)))
  (forall ((temp___148 Int))
  (ite (= temp___148 temp___146)
  (= (select (to_array temp___142) temp___148) (of_rep temp___147))
  (ite (= temp___148 temp___144)
  (= (select (to_array temp___142) temp___148) (of_rep temp___145))
  (= (select (to_array temp___142) temp___148) (select (to_array temp___143) temp___148))))))))))

(define-fun dynamic_invariant1 ((temp___expr_136 us_t)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (not (= temp___skip_constant_134 true))
                                      (dynamic_property 1 2147483647
                                      (first1 temp___expr_136)
                                      (last1 temp___expr_136))))

(declare-fun index_of_minimum (us_t) Int)

(declare-fun index_of_minimum__function_guard (Int us_t) Bool)

;; index_of_minimum__post_axiom
  (assert
  (forall ((unsorted us_t))
  (! (=>
     (and (dynamic_invariant1 unsorted true true true)
     (<= (first1 unsorted) (last1 unsorted)))
     (let ((result (index_of_minimum unsorted)))
     (=> (index_of_minimum__function_guard result unsorted)
     (and
     (and (and (<= (first1 unsorted) result) (<= result (last1 unsorted)))
     (forall ((j Int))
     (=> (and (<= (first1 unsorted) j) (<= j (last1 unsorted)))
     (<= (to_rep (select (to_array unsorted) result)) (to_rep
                                                      (select (to_array
                                                              unsorted) j))))))
     (dynamic_invariant result true false true))))) :pattern ((index_of_minimum
                                                              unsorted)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

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

(declare-datatypes () ((t19b__ref (mk_t19b__ref (t19b__content integer)))))
(define-fun t19b__ref___projection ((a t19b__ref)) integer (t19b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun first3 (Int) Int)

(declare-fun last3 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t20b__ref (mk_t20b__ref (t20b__content integer)))))
(define-fun t20b__ref___projection ((a t20b__ref)) integer (t20b__content a))

(declare-sort t1 0)

(declare-fun first4 (t1) integer)

(declare-fun last4 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first4 (mk1 f l))) f) (= (to_rep (last4 (mk1 f l))) l)))) :pattern (
  (mk1 f l)) )))

(define-fun dynamic_property3 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property2 range_first range_last low)
                   (dynamic_property2 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int integer))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int integer) (elts1 a))

(define-fun of_array1 ((a (Array Int integer)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first5 ((a us_t1)) Int (to_rep (first4 (rt1 a))))

(define-fun last5 ((a us_t1)) Int (to_rep (last4 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first5 a) (last5 a))
                                    (+ (- (last5 a) (first5 a)) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int integer)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int integer)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment1 a))))

(define-fun bool_eq6 ((x us_t1)
  (y us_t1)) Bool (bool_eq2 (elts1 x) (to_rep (first4 (rt1 x)))
                  (to_rep (last4 (rt1 x))) (elts1 y)
                  (to_rep (first4 (rt1 y))) (to_rep (last4 (rt1 y)))))

(declare-fun user_eq5 (us_t1 us_t1) Bool)

(declare-fun dummy5 () us_t1)

(declare-datatypes () ((t21b__ref (mk_t21b__ref (t21b__content us_t1)))))
(define-fun t21b__ref___projection ((a t21b__ref)) us_t1 (t21b__content a))

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun values () (Array Int integer))

(declare-fun smallest () Int)

(declare-fun current () Int)

(declare-fun temp___188 () Int)

(declare-fun o () (Array Int integer))

(declare-fun temp___181 () (Array Int integer))

(declare-fun temp___1811 () t1)

(declare-fun o1 () (Array Int integer))

(declare-fun o2 () t)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun j () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Bool)

(declare-fun values1 () (Array Int integer))

(declare-fun result () Int)

(declare-fun current1 () Int)

(declare-fun result1 () Int)

(declare-fun smallest1 () Int)

(declare-fun values2 () (Array Int integer))

(declare-fun values3 () (Array Int integer))

(declare-fun smallest2 () Int)

(declare-fun current2 () Int)

(declare-fun result2 () Bool)

(define-fun o7 () us_t (mk___t o1 o2))

;; H
  (assert (dynamic_property 1 2147483647 (to_rep values__first)
  (to_rep values__last)))

;; H
  (assert
  (and
  (<= 1 (ite (<= (to_rep values__first) (to_rep values__last))
        (+ (- (to_rep values__last) (to_rep values__first)) 1) 0))
  (<= (to_rep values__last) 2147483647)))

;; H
  (assert (=> (<= 1 2147483647) (in_range2 smallest)))

;; H
  (assert
  (and (= temp___188 (- (to_rep values__last) 1)) (in_range1
  (- (to_rep values__last) 1))))

;; H
  (assert (= result current))

;; H
  (assert (= current1 (to_rep values__first)))

;; H
  (assert (<= (to_rep values__first) current1))

;; H
  (assert (<= current1 temp___188))

;; H
  (assert
  (=> (<= current1 (to_rep values__last))
  (and
  (and (<= (to_rep values__first) current1)
  (<= current1 (to_rep values__last)))
  (and (<= (to_rep values__first) (to_rep values__last))
  (<= (to_rep values__last) (to_rep values__last))))))

;; H
  (assert (= o values))

;; H
  (assert (= o temp___181))

;; H
  (assert (= (mk1 current1 (to_rep values__last)) temp___1811))

;; H
  (assert (= temp___181 o1))

;; H
  (assert
  (= (mk (to_rep (first4 temp___1811)) (to_rep (last4 temp___1811))) 
  o2))

;; H
  (assert
  (and
  (and (= o3 (index_of_minimum o7)) (index_of_minimum__function_guard o3 o7))
  (and (in_range2 o3)
  (and (and (<= (to_rep (first o2)) o3) (<= o3 (to_rep (last o2))))
  (forall ((j1 Int))
  (=> (and (<= (to_rep (first o2)) j1) (<= j1 (to_rep (last o2))))
  (<= (to_rep (select o1 o3)) (to_rep (select o1 j1)))))))))

;; H
  (assert (= result1 smallest))

;; H
  (assert (= smallest1 o3))

;; H
  (assert
  (=> (not (= smallest1 current1))
  (and (= o4 current1) (in_range2 current1))))

;; H
  (assert
  (=> (not (= smallest1 current1))
  (= (let ((temp___151 (temp___141
                       (mk___t values
                       (mk (to_rep values__first) (to_rep values__last))) 
                       o4 (to_rep (select values smallest1)) smallest1
                       (to_rep (select values o4)))))
     (bool_eq2 values2 (to_rep values__first) (to_rep values__last)
     (elts temp___151) (to_rep (first (rt temp___151)))
     (to_rep (last (rt temp___151))))) true)))

;; H
  (assert (=> (not (not (= smallest1 current1))) (= values2 values)))

;; H
  (assert (=> (not (not (= smallest1 current1))) (= values2 values1)))

;; H
  (assert
  (forall ((j1 Int))
  (=> (and (<= current2 j1) (<= j1 (to_rep values__last)))
  (<= (to_rep (select values3 current2)) (to_rep (select values3 j1))))))

;; H
  (assert
  (forall ((j1 Int))
  (=> (and (<= (to_rep values__first) j1) (<= j1 (- current2 1)))
  (<= (to_rep (select values3 j1)) (to_rep (select values3 (+ j1 1)))))))

;; H
  (assert
  (and
  (and
  (=> (<= (to_rep values__first) (- (to_rep values__last) 1))
  (dynamic_property1 (to_rep values__first) (- (to_rep values__last) 1)
  current2)) (=> (<= 1 2147483647) (in_range2 smallest2)))
  (and (<= (to_rep values__first) current2)
  (<= current2 (- (to_rep values__last) 1)))))

;; H
  (assert (and (= o5 (- current2 1)) (in_range1 (- current2 1))))

;; H
  (assert (= o6 (ite (<= j o5) true false)))

;; H
  (assert (= result2 (ite (<= (to_rep values__first) j) o6 false)))

;; H
  (assert (= result2 true))

(assert
;; WP_parameter_def
 ;; File "sorters.adb", line 25, characters 0-0
  (not (in_range1 (+ j 1))))
(check-sat)
