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

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

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
                                     (in_range temp___expr_15)))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
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

(declare-sort index 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483646)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (index index) Bool)

(declare-fun dummy1 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
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
  (y us_t)) Bool (bool_eq1 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes () ((arr__ref (mk_arr__ref (arr__content us_t)))))
(define-fun arr__ref___projection ((a arr__ref)) us_t (arr__content a))

(define-fun dynamic_invariant1 ((temp___expr_142 us_t)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_140 true))
                                      (dynamic_property 0 2147483646
                                      (first1 temp___expr_142)
                                      (last1 temp___expr_142)))
                                      (=> (= temp___do_toplevel_141 true)
                                      (=> (= temp___is_init_139 true)
                                      (= (first1 temp___expr_142) 0)))))

(define-fun dynamic_predicate ((temp___145 us_t)) Bool (= (first1 temp___145) 0))

(declare-fun remove_last (us_t) us_t)

(declare-fun remove_last__function_guard (us_t us_t) Bool)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes () ((t17s__ref (mk_t17s__ref (t17s__content integer)))))
(define-fun t17s__ref___projection ((a t17s__ref)) integer (t17s__content a))

(declare-sort t1 0)

(declare-fun first3 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep (first3 (mk1 f l))) f) (= (to_rep (last3 (mk1 f l))) l)))) :pattern (
  (mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
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
  (y us_t1)) Bool (bool_eq1 (elts1 x) (to_rep (first3 (rt1 x)))
                  (to_rep (last3 (rt1 x))) (elts1 y)
                  (to_rep (first3 (rt1 y))) (to_rep (last3 (rt1 y)))))

(declare-fun user_eq4 (us_t1 us_t1) Bool)

(declare-fun dummy4 () us_t1)

(declare-datatypes () ((t18s__ref (mk_t18s__ref (t18s__content us_t1)))))
(define-fun t18s__ref___projection ((a t18s__ref)) us_t1 (t18s__content a))

;; remove_last__post_axiom
  (assert
  (forall ((a us_t))
  (! (=> (and (dynamic_invariant1 a true true true) (< 0 (length a)))
     (let ((result (remove_last a)))
     (=> (remove_last__function_guard result a) (dynamic_invariant1 result
     true false true)))) :pattern ((remove_last a)) )))

;; remove_last__def_axiom
  (assert
  (forall ((a us_t))
  (! (=>
     (and (dynamic_invariant1 a true true true) (remove_last__function_guard
     (remove_last a) a))
     (= (remove_last a) (let ((temp___164 (let ((temp___163 (- (last1 a) 1)))
                                          (let ((temp___162 (first1 a)))
                                          (of_array1 (to_array a) temp___162
                                          temp___163)))))
                        (of_array (to_array1 temp___164) (first4 temp___164)
                        (last4 temp___164))))) :pattern ((remove_last a)) )))

(declare-fun occ (us_t Int) Int)

(declare-fun occ__function_guard (Int us_t Int) Bool)

(declare-sort nb_occ 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (nb_occ nb_occ) Bool)

(declare-fun dummy5 () nb_occ)

(declare-datatypes ()
((nb_occ__ref (mk_nb_occ__ref (nb_occ__content nb_occ)))))
(define-fun nb_occ__ref___projection ((a nb_occ__ref)) nb_occ (nb_occ__content
                                                              a))

(define-fun dynamic_invariant2 ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_152)))

(declare-fun occ_def (us_t Int) Int)

(declare-fun occ_def__function_guard (Int us_t Int) Bool)

;; occ__post_axiom
  (assert
  (forall ((a us_t))
  (forall ((e Int))
  (! (=>
     (and (dynamic_invariant1 a true true true) (dynamic_invariant e true
     true true))
     (let ((result (occ a e)))
     (=> (occ__function_guard result a e)
     (and (<= result (length a)) (dynamic_invariant2 result true false true))))) :pattern (
  (occ a e)) ))))

;; occ__def_axiom
  (assert
  (forall ((a us_t))
  (forall ((e Int))
  (! (=>
     (and
     (and (dynamic_invariant1 a true true true) (dynamic_invariant e true
     true true)) (occ__function_guard (occ a e) a e))
     (and (occ_def__function_guard (occ_def a e) a e)
     (= (occ a e) (occ_def a e)))) :pattern ((occ a e)) ))))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun e () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

;; occ_def__def_axiom
  (assert
  (forall ((a1 us_t))
  (forall ((e1 Int))
  (! (=>
     (and
     (and (dynamic_invariant1 a1 true true true) (dynamic_invariant e1 true
     true true)) (occ_def__function_guard (occ_def a1 e1) a1 e1))
     (and (remove_last__function_guard (remove_last a1) a1)
     (and (remove_last__function_guard (remove_last a1) a1)
     (and (occ_def__function_guard (occ_def (remove_last a1) e1)
     (remove_last a1) e1)
     (and (remove_last__function_guard (remove_last a1) a1)
     (and (remove_last__function_guard (remove_last a1) a1)
     (and (occ_def__function_guard (occ_def (remove_last a1) e1)
     (remove_last a1) e1)
     (= (occ_def a1 e1) (ite (= (length a1) 0) 0
                        (ite (= (to_rep (select (to_array a1) (last1 a1))) e1)
                        (+ (occ_def (remove_last a1) e1) 1)
                        (occ_def (remove_last a1) e1))))))))))) :pattern (
  (occ_def a1 e1)) ))))

(define-fun dynamic_invariant3 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 0 2147483646)) (in_range1
                                      temp___expr_136)))

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun o2 () Int)

(declare-fun o3 () (Array Int integer))

(declare-fun o4 () t)

(declare-fun result () Bool)

(define-fun o5 () us_t (mk___t o3 o4))

;; H
  (assert (dynamic_invariant1 a true false true))

;; H
  (assert (dynamic_invariant1 b true false true))

;; H
  (assert (in_range e))

;; H
  (assert
  (= (bool_eq1 (elts a) (to_rep (first (rt a))) (to_rep (last (rt a)))
     (elts b) (to_rep (first (rt b))) (to_rep (last (rt b)))) true))

;; H
  (assert (not (= (length a) 0)))

;; H
  (assert
  (and (<= (to_rep (first (rt a))) (to_rep (last (rt a))))
  (<= (to_rep (last (rt a))) (to_rep (last (rt a))))))

;; H
  (assert (= o (to_rep (last (rt a)))))

;; H
  (assert (= o1 (select (elts a) o)))

;; H
  (assert (= o2 (to_rep o1)))

;; H
  (assert (= result (ite (= o2 e) true false)))

;; H
  (assert
  (=> (= result true)
  (= (to_rep (select (elts b) (to_rep (last (rt b))))) e)))

;; H
  (assert
  (=> (not (= result true))
  (not (= (to_rep (select (elts b) (to_rep (last (rt b))))) e))))

;; H
  (assert
  (and (and (= o5 (remove_last b)) (remove_last__function_guard o5 b))
  (and (dynamic_invariant1 o5 true false true)
  (and (= (elts b) o3)
  (= (mk
     (to_rep
     (first3 (mk1 (to_rep (first (rt b))) (- (to_rep (last (rt b))) 1))))
     (to_rep
     (last3 (mk1 (to_rep (first (rt b))) (- (to_rep (last (rt b))) 1))))) 
  o4)))))

(assert
;; WP_parameter_def
 ;; File "perm.ads", line 45, characters 0-0
  (not (< 0 (length a))))
(check-sat)
