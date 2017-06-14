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

(declare-fun perm (us_t us_t) Bool)

(declare-fun perm__function_guard (Bool us_t us_t) Bool)

(define-fun dynamic_invariant1 ((temp___expr_136 us_t)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (not (= temp___skip_constant_134 true))
                                      (dynamic_property 1 2147483647
                                      (first1 temp___expr_136)
                                      (last1 temp___expr_136))))

;; perm__post_axiom
  (assert true)

(declare-fun values__first () integer)

(declare-fun values__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun perm_transitive (us_t us_t us_t) Bool)

(declare-fun perm_transitive__function_guard (Bool us_t us_t us_t) Bool)

;; perm_transitive__post_axiom
  (assert
  (forall ((a us_t) (b us_t) (c us_t))
  (! (=>
     (and
     (and (dynamic_invariant1 a true true true) (dynamic_invariant1 b true
     true true)) (dynamic_invariant1 c true true true))
     (let ((result (perm_transitive a b c)))
     (and (perm__function_guard (perm a b) a b)
     (and (perm__function_guard (perm b c) b c)
     (and (perm__function_guard (perm a c) a c)
     (=> (perm_transitive__function_guard result a b c)
     (=> (and (and (= result true) (= (perm a b) true)) (= (perm b c) true))
     (= (perm a c) true)))))))) :pattern ((perm_transitive a b c)) )))

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

(declare-datatypes ()
((tTvalues_lastSP1__ref
 (mk_tTvalues_lastSP1__ref (tTvalues_lastSP1__content integer)))))
(define-fun tTvalues_lastSP1__ref___projection ((a tTvalues_lastSP1__ref)) integer 
  (tTvalues_lastSP1__content a))

(declare-sort t1 0)

(declare-fun first3 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first3 (mk1 f l))) f) (= (to_rep (last3 (mk1 f l))) l)))) :pattern (
  (mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int integer))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int integer) (elts1 a))

(define-fun of_array1 ((a (Array Int integer)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first4 ((a us_t1)) Int (to_rep (first3 (rt1 a))))

(define-fun last4 ((a us_t1)) Int (to_rep (last3 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first4 a) (last4 a))
                                    (+ (- (last4 a) (first4 a)) 1) 0))

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

(define-fun bool_eq5 ((x us_t1)
  (y us_t1)) Bool (bool_eq2 (elts1 x) (to_rep (first3 (rt1 x)))
                  (to_rep (last3 (rt1 x))) (elts1 y)
                  (to_rep (first3 (rt1 y))) (to_rep (last3 (rt1 y)))))

(declare-fun user_eq4 (us_t1 us_t1) Bool)

(declare-fun dummy4 () us_t1)

(declare-datatypes ()
((tvalues_lastS__ref (mk_tvalues_lastS__ref (tvalues_lastS__content us_t1)))))
(define-fun tvalues_lastS__ref___projection ((a tvalues_lastS__ref)) us_t1 
  (tvalues_lastS__content a))

(define-fun dynamic_invariant2 ((temp___expr_187 us_t1)
  (temp___is_init_184 Bool) (temp___skip_constant_185 Bool)
  (temp___do_toplevel_186 Bool)) Bool (=>
                                      (not (= temp___skip_constant_185 true))
                                      (and (dynamic_property2
                                      (to_rep values__first)
                                      (to_rep values__last)
                                      (first4 temp___expr_187)
                                      (last4 temp___expr_187))
                                      (and
                                      (= (first4 temp___expr_187) (to_rep
                                                                  values__first))
                                      (= (last4 temp___expr_187) (to_rep
                                                                 values__last))))))

(declare-fun values_last__first () integer)

(declare-fun values_last__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes () ((t25b__ref (mk_t25b__ref (t25b__content integer)))))
(define-fun t25b__ref___projection ((a t25b__ref)) integer (t25b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun first6 (Int) Int)

(declare-fun last6 () Int)

(define-fun dynamic_property4 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t26b__ref (mk_t26b__ref (t26b__content integer)))))
(define-fun t26b__ref___projection ((a t26b__ref)) integer (t26b__content a))

(declare-sort t2 0)

(declare-fun first7 (t2) integer)

(declare-fun last7 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first7 (mk2 f l))) f) (= (to_rep (last7 (mk2 f l))) l)))) :pattern (
  (mk2 f l)) )))

(define-fun dynamic_property5 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property4 range_first range_last low)
                   (dynamic_property4 range_first range_last high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int integer))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int integer) (elts2 a))

(define-fun of_array2 ((a (Array Int integer)) (f Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f l)))

(define-fun first8 ((a us_t2)) Int (to_rep (first7 (rt2 a))))

(define-fun last8 ((a us_t2)) Int (to_rep (last7 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first8 a) (last8 a))
                                    (+ (- (last8 a) (first8 a)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int integer)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int integer)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment2 a))))

(define-fun bool_eq8 ((x us_t2)
  (y us_t2)) Bool (bool_eq2 (elts2 x) (to_rep (first7 (rt2 x)))
                  (to_rep (last7 (rt2 x))) (elts2 y)
                  (to_rep (first7 (rt2 y))) (to_rep (last7 (rt2 y)))))

(declare-fun user_eq7 (us_t2 us_t2) Bool)

(declare-fun dummy7 () us_t2)

(declare-datatypes () ((t27b__ref (mk_t27b__ref (t27b__content us_t2)))))
(define-fun t27b__ref___projection ((a t27b__ref)) us_t2 (t27b__content a))

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun values () (Array Int integer))

(declare-fun values_last () (Array Int integer))

(declare-fun smallest () Int)

(declare-fun current () Int)

(declare-fun temp___213 () Int)

(declare-fun temp___198 () (Array Int integer))

(declare-fun temp___1981 () t1)

(declare-fun o () (Array Int integer))

(declare-fun o1 () t1)

(declare-fun o2 () (Array Int integer))

(declare-fun o3 () (Array Int integer))

(declare-fun temp___200 () (Array Int integer))

(declare-fun temp___2001 () t2)

(declare-fun o4 () (Array Int integer))

(declare-fun o5 () t)

(declare-fun result () Int)

(declare-fun current1 () Int)

(declare-fun result1 () (Array Int integer))

(declare-fun values_last1 () (Array Int integer))

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
  (assert
  (and (dynamic_property2 (to_rep values__first) (to_rep values__last)
  (to_rep values_last__first) (to_rep values_last__last))
  (and (= (to_rep values_last__first) (to_rep values__first))
  (= (to_rep values_last__last) (to_rep values__last)))))

;; H
  (assert (=> (<= 1 2147483647) (in_range2 smallest)))

;; H
  (assert (perm__function_guard
  (perm (mk___t values (mk (to_rep values__first) (to_rep values__last)))
  (mk___t values (mk (to_rep values__first) (to_rep values__last))))
  (mk___t values (mk (to_rep values__first) (to_rep values__last)))
  (mk___t values (mk (to_rep values__first) (to_rep values__last)))))

;; H
  (assert
  (= (perm (mk___t values (mk (to_rep values__first) (to_rep values__last)))
     (mk___t values (mk (to_rep values__first) (to_rep values__last)))) true))

;; H
  (assert
  (and (= temp___213 (- (to_rep values__last) 1)) (in_range1
  (- (to_rep values__last) 1))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref current)))

;; H
  (assert (= current1 (to_rep values__first)))

;; H
  (assert (<= (to_rep values__first) current1))

;; H
  (assert (<= current1 temp___213))

;; H
  (assert
  (= (slide values (to_rep values__first) (to_rep values__first)) temp___198))

;; H
  (assert (= (mk1 (to_rep values__first) (to_rep values__last)) temp___1981))

;; H
  (assert
  (= (ite (<= (to_rep (first3 temp___1981)) (to_rep (last3 temp___1981)))
     (+ (- (to_rep (last3 temp___1981)) (to_rep (first3 temp___1981))) 1) 0) 
  (ite (<= (to_rep values_last__first) (to_rep values_last__last))
  (+ (- (to_rep values_last__last) (to_rep values_last__first)) 1) 0)))

;; H
  (assert (= (mk___t1 o o1) (mk___t1 temp___198 temp___1981)))

;; H
  (assert (= o2 o))

;; H
  (assert (= (mk_map__ref result1) (mk_map__ref values_last)))

;; H
  (assert (= values_last1 o2))

;; H
  (assert
  (=> (<= current1 (to_rep values__last))
  (and
  (and (<= (to_rep values__first) current1)
  (<= current1 (to_rep values__last)))
  (and (<= (to_rep values__first) (to_rep values__last))
  (<= (to_rep values__last) (to_rep values__last))))))

;; H
  (assert (= o3 values))

;; H
  (assert (= o3 temp___200))

;; H
  (assert (= (mk2 current1 (to_rep values__last)) temp___2001))

;; H
  (assert (= temp___200 o4))

;; H
  (assert
  (= (mk (to_rep (first7 temp___2001)) (to_rep (last7 temp___2001))) 
  o5))

(assert
;; WP_parameter_def
 ;; File "sorters.ads", line 7, characters 0-0
  (not (<= (to_rep (first o5)) (to_rep (last o5)))))
(check-sat)
