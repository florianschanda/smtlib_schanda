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

(declare-sort index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483646)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index index) Bool)

(declare-fun dummy1 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant1 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 0 2147483646)) (in_range2
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

(declare-datatypes () ((arr__ref (mk_arr__ref (arr__content us_t)))))
(define-fun arr__ref___projection ((a arr__ref)) us_t (arr__content a))

(declare-fun is_set (us_t Int Int us_t) Bool)

(declare-fun is_set__function_guard (Bool us_t Int Int us_t) Bool)

(define-fun dynamic_invariant2 ((temp___expr_142 us_t)
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

;; is_set__post_axiom
  (assert true)

;; is_set__def_axiom
  (assert
  (forall ((a us_t) (r us_t))
  (forall ((i Int) (v Int))
  (! (=> (is_set__function_guard (is_set a i v r) a i v r)
     (= (= (is_set a i v r) true)
     (and
     (and (and (= (first1 r) (first1 a)) (= (last1 r) (last1 a)))
     (= (to_rep (select (to_array r) i)) v))
     (forall ((j Int))
     (=> (and (<= (first1 a) j) (<= j (last1 a)))
     (=> (not (= i j))
     (= (to_rep (select (to_array r) j)) (to_rep (select (to_array a) j))))))))) :pattern (
  (is_set a i v r)) ))))

(declare-fun is_perm (us_t us_t) Bool)

(declare-fun is_perm__function_guard (Bool us_t us_t) Bool)

(declare-fun occ (us_t Int) Int)

(declare-fun occ__function_guard (Int us_t Int) Bool)

;; is_perm__post_axiom
  (assert true)

;; is_perm__def_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (! (=> (is_perm__function_guard (is_perm a b) a b)
     (and (forall ((e Int)) (occ__function_guard (occ a e) a e))
     (and (forall ((e Int)) (occ__function_guard (occ b e) b e))
     (= (= (is_perm a b) true)
     (forall ((e Int))
     (=> (and (<= (- 2147483648) e) (<= e 2147483647))
     (= (occ a e) (occ b e)))))))) :pattern ((is_perm a b)) )))

(declare-fun values__first () integer)

(declare-fun values__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq4 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes ()
((tTinitSP1__ref (mk_tTinitSP1__ref (tTinitSP1__content integer)))))
(define-fun tTinitSP1__ref___projection ((a tTinitSP1__ref)) integer 
  (tTinitSP1__content a))

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

(define-fun bool_eq5 ((x1 us_t1)
  (y1 us_t1)) Bool (bool_eq2 (elts1 x1) (to_rep (first3 (rt1 x1)))
                   (to_rep (last3 (rt1 x1))) (elts1 y1)
                   (to_rep (first3 (rt1 y1))) (to_rep (last3 (rt1 y1)))))

(declare-fun user_eq4 (us_t1 us_t1) Bool)

(declare-fun dummy4 () us_t1)

(declare-datatypes ()
((tinitS__ref (mk_tinitS__ref (tinitS__content us_t1)))))
(define-fun tinitS__ref___projection ((a tinitS__ref)) us_t1 (tinitS__content
                                                             a))

(define-fun dynamic_invariant3 ((temp___expr_230 us_t1)
  (temp___is_init_227 Bool) (temp___skip_constant_228 Bool)
  (temp___do_toplevel_229 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_228 true))
                                      (and (dynamic_property2
                                      (to_rep values__first)
                                      (to_rep values__last)
                                      (first4 temp___expr_230)
                                      (last4 temp___expr_230))
                                      (and
                                      (= (first4 temp___expr_230) (to_rep
                                                                  values__first))
                                      (= (last4 temp___expr_230) (to_rep
                                                                 values__last)))))
                                      (=> (= temp___do_toplevel_229 true)
                                      (=> (= temp___is_init_227 true)
                                      (= (first4 temp___expr_230) 0)))))

(define-fun dynamic_predicate1 ((temp___237 us_t1)) Bool (= (first4
                                                            temp___237) 0))

(declare-fun init () us_t1)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq6 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes ()
((tTintermSP1__ref (mk_tTintermSP1__ref (tTintermSP1__content integer)))))
(define-fun tTintermSP1__ref___projection ((a tTintermSP1__ref)) integer 
  (tTintermSP1__content a))

(declare-sort t2 0)

(declare-fun first6 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first6 (mk2 f l))) f) (= (to_rep (last6 (mk2 f l))) l)))) :pattern (
  (mk2 f l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property3 range_first range_last low)
                   (dynamic_property3 range_first range_last high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int integer))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int integer) (elts2 a))

(define-fun of_array2 ((a (Array Int integer)) (f Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f l)))

(define-fun first7 ((a us_t2)) Int (to_rep (first6 (rt2 a))))

(define-fun last7 ((a us_t2)) Int (to_rep (last6 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first7 a) (last7 a))
                                    (+ (- (last7 a) (first7 a)) 1) 0))

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

(define-fun bool_eq7 ((x1 us_t2)
  (y1 us_t2)) Bool (bool_eq2 (elts2 x1) (to_rep (first6 (rt2 x1)))
                   (to_rep (last6 (rt2 x1))) (elts2 y1)
                   (to_rep (first6 (rt2 y1))) (to_rep (last6 (rt2 y1)))))

(declare-fun user_eq6 (us_t2 us_t2) Bool)

(declare-fun dummy6 () us_t2)

(declare-datatypes ()
((tintermS__ref (mk_tintermS__ref (tintermS__content us_t2)))))
(define-fun tintermS__ref___projection ((a tintermS__ref)) us_t2 (tintermS__content
                                                                 a))

(define-fun dynamic_invariant4 ((temp___expr_242 us_t2)
  (temp___is_init_239 Bool) (temp___skip_constant_240 Bool)
  (temp___do_toplevel_241 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_240 true))
                                      (and (dynamic_property4
                                      (to_rep values__first)
                                      (to_rep values__last)
                                      (first7 temp___expr_242)
                                      (last7 temp___expr_242))
                                      (and
                                      (= (first7 temp___expr_242) (to_rep
                                                                  values__first))
                                      (= (last7 temp___expr_242) (to_rep
                                                                 values__last)))))
                                      (=> (= temp___do_toplevel_241 true)
                                      (=> (= temp___is_init_239 true)
                                      (= (first7 temp___expr_242) 0)))))

(define-fun dynamic_predicate2 ((temp___249 us_t2)) Bool (= (first7
                                                            temp___249) 0))

(declare-fun interm__first () integer)

(declare-fun interm__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-sort nb_occ 0)

(define-fun in_range3 ((x1 Int)) Bool (and (<= 0 x1) (<= x1 2147483647)))

(define-fun bool_eq8 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (nb_occ nb_occ) Bool)

(declare-fun dummy7 () nb_occ)

(declare-datatypes ()
((nb_occ__ref (mk_nb_occ__ref (nb_occ__content nb_occ)))))
(define-fun nb_occ__ref___projection ((a nb_occ__ref)) nb_occ (nb_occ__content
                                                              a))

(define-fun dynamic_invariant5 ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_152)))

(declare-fun remove_last (us_t) us_t)

(declare-fun remove_last__function_guard (us_t us_t) Bool)

(declare-fun first8 () Int)

(declare-fun last8 () Int)

(define-fun dynamic_property5 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq9 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes () ((t17s__ref (mk_t17s__ref (t17s__content integer)))))
(define-fun t17s__ref___projection ((a t17s__ref)) integer (t17s__content a))

(declare-sort t3 0)

(declare-fun first9 (t3) integer)

(declare-fun last9 (t3) integer)

(declare-fun mk3 (Int Int) t3)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first9 (mk3 f l))) f) (= (to_rep (last9 (mk3 f l))) l)))) :pattern (
  (mk3 f l)) )))

(define-fun dynamic_property6 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property5 range_first range_last low)
                   (dynamic_property5 range_first range_last high))))))

(declare-datatypes ()
((us_t3 (mk___t3 (elts3 (Array Int integer))(rt3 t3)))))
(define-fun to_array3 ((a us_t3)) (Array Int integer) (elts3 a))

(define-fun of_array3 ((a (Array Int integer)) (f Int)
  (l Int)) us_t3 (mk___t3 a (mk3 f l)))

(define-fun first10 ((a us_t3)) Int (to_rep (first9 (rt3 a))))

(define-fun last10 ((a us_t3)) Int (to_rep (last9 (rt3 a))))

(define-fun length3 ((a us_t3)) Int (ite (<= (first10 a) (last10 a))
                                    (+ (- (last10 a) (first10 a)) 1) 0))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int integer)) Int)

(declare-fun value__component__size3 () Int)

(declare-fun object__component__size3 ((Array Int integer)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size3 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size3))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment3 a))))

(define-fun bool_eq10 ((x1 us_t3)
  (y1 us_t3)) Bool (bool_eq2 (elts3 x1) (to_rep (first9 (rt3 x1)))
                   (to_rep (last9 (rt3 x1))) (elts3 y1)
                   (to_rep (first9 (rt3 y1))) (to_rep (last9 (rt3 y1)))))

(declare-fun user_eq9 (us_t3 us_t3) Bool)

(declare-fun dummy9 () us_t3)

(declare-datatypes () ((t18s__ref (mk_t18s__ref (t18s__content us_t3)))))
(define-fun t18s__ref___projection ((a t18s__ref)) us_t3 (t18s__content a))

;; remove_last__post_axiom
  (assert
  (forall ((a us_t))
  (! (=> (and (dynamic_invariant2 a true true true) (< 0 (length a)))
     (let ((result (remove_last a)))
     (=> (remove_last__function_guard result a) (dynamic_invariant2 result
     true false true)))) :pattern ((remove_last a)) )))

;; remove_last__def_axiom
  (assert
  (forall ((a us_t))
  (! (=>
     (and (dynamic_invariant2 a true true true) (remove_last__function_guard
     (remove_last a) a))
     (= (remove_last a) (let ((temp___164 (let ((temp___163 (- (last1 a) 1)))
                                          (let ((temp___162 (first1 a)))
                                          (of_array3 (to_array a) temp___162
                                          temp___163)))))
                        (of_array (to_array3 temp___164) (first10 temp___164)
                        (last10 temp___164))))) :pattern ((remove_last a)) )))

(declare-fun occ_def (us_t Int) Int)

(declare-fun occ_def__function_guard (Int us_t Int) Bool)

;; occ_def__def_axiom
  (assert
  (forall ((a us_t))
  (forall ((e Int))
  (! (=>
     (and
     (and (dynamic_invariant2 a true true true) (dynamic_invariant e true
     true true)) (occ_def__function_guard (occ_def a e) a e))
     (and (remove_last__function_guard (remove_last a) a)
     (and (remove_last__function_guard (remove_last a) a)
     (and (occ_def__function_guard (occ_def (remove_last a) e)
     (remove_last a) e)
     (and (remove_last__function_guard (remove_last a) a)
     (and (remove_last__function_guard (remove_last a) a)
     (and (occ_def__function_guard (occ_def (remove_last a) e)
     (remove_last a) e)
     (= (occ_def a e) (ite (= (length a) 0) 0
                      (ite (= (to_rep (select (to_array a) (last1 a))) e)
                      (+ (occ_def (remove_last a) e) 1)
                      (occ_def (remove_last a) e))))))))))) :pattern (
  (occ_def a e)) ))))

;; occ__post_axiom
  (assert
  (forall ((a us_t))
  (forall ((e Int))
  (! (=>
     (and (dynamic_invariant2 a true true true) (dynamic_invariant e true
     true true))
     (let ((result (occ a e)))
     (=> (occ__function_guard result a e)
     (and (<= result (length a)) (dynamic_invariant5 result true false true))))) :pattern (
  (occ a e)) ))))

;; occ__def_axiom
  (assert
  (forall ((a us_t))
  (forall ((e Int))
  (! (=>
     (and
     (and (dynamic_invariant2 a true true true) (dynamic_invariant e true
     true true)) (occ__function_guard (occ a e) a e))
     (and (occ_def__function_guard (occ_def a e) a e)
     (= (occ a e) (occ_def a e)))) :pattern ((occ a e)) ))))

(declare-fun values () (Array Int integer))

(declare-fun temp () Int)

(declare-fun interm () (Array Int integer))

(declare-fun temp___335 () (Array Int integer))

(declare-fun temp___3351 () t1)

(declare-fun pair_insertion_sort__swap__init__assume () (Array Int integer))

(declare-fun pair_insertion_sort__swap__init__assume1 () t1)

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () integer)

(declare-fun o5 () Int)

(declare-fun o6 () integer)

(declare-fun o7 () Int)

(declare-fun temp___339 () (Array Int integer))

(declare-fun o8 () (Array Int integer))

(declare-fun temp___342 () (Array Int integer))

(declare-fun temp___3421 () t2)

(declare-fun temp___343 () (Array Int integer))

(declare-fun temp___3431 () t2)

(declare-fun o9 () (Array Int integer))

(declare-fun o10 () t2)

(declare-fun o11 () (Array Int integer))

(declare-fun o12 () integer)

(declare-fun o13 () Int)

(declare-fun temp___344 () (Array Int integer))

(declare-fun o14 () (Array Int integer))

(declare-fun result () Int)

(declare-fun temp1 () Int)

(declare-fun result1 () (Array Int integer))

(declare-fun values1 () (Array Int integer))

(declare-fun result2 () (Array Int integer))

(declare-fun interm1 () (Array Int integer))

(declare-fun result3 () (Array Int integer))

(declare-fun values2 () (Array Int integer))

(declare-fun values3 () (Array Int integer))

(declare-fun temp2 () Int)

(declare-fun interm2 () (Array Int integer))

(declare-fun values4 () (Array Int integer))

(declare-fun temp3 () Int)

(declare-fun interm3 () (Array Int integer))

(define-fun temp___3432 () us_t2 (mk___t2 temp___343 temp___3431))

(define-fun pair_insertion_sort__swap__init__assume2 () us_t1 (mk___t1
                                                              pair_insertion_sort__swap__init__assume
                                                              pair_insertion_sort__swap__init__assume1))

;; H
  (assert (is_set__function_guard
  (is_set
  (mk___t (elts1 init)
  (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init))))) x
  (to_rep (select (elts1 init) y))
  (mk___t values1 (mk (to_rep values__first) (to_rep values__last))))
  (mk___t (elts1 init)
  (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init))))) x
  (to_rep (select (elts1 init) y))
  (mk___t values1 (mk (to_rep values__first) (to_rep values__last)))))

;; H
  (assert (is_set__function_guard
  (is_set (mk___t interm1 (mk (to_rep interm__first) (to_rep interm__last)))
  y (to_rep (select (elts1 init) x))
  (mk___t values2 (mk (to_rep values__first) (to_rep values__last))))
  (mk___t interm1 (mk (to_rep interm__first) (to_rep interm__last))) 
  y (to_rep (select (elts1 init) x))
  (mk___t values2 (mk (to_rep values__first) (to_rep values__last)))))

;; H
  (assert (is_perm__function_guard
  (is_perm
  (mk___t (elts1 init)
  (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init)))))
  (mk___t values2 (mk (to_rep values__first) (to_rep values__last))))
  (mk___t (elts1 init)
  (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init)))))
  (mk___t values2 (mk (to_rep values__first) (to_rep values__last)))))

;; H
  (assert (is_set__function_guard
  (is_set
  (mk___t (elts1 init)
  (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init))))) x
  (to_rep (select (elts1 init) y))
  (mk___t values1 (mk (to_rep values__first) (to_rep values__last))))
  (mk___t (elts1 init)
  (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init))))) x
  (to_rep (select (elts1 init) y))
  (mk___t values1 (mk (to_rep values__first) (to_rep values__last)))))

;; H
  (assert (is_set__function_guard
  (is_set (mk___t interm1 (mk (to_rep interm__first) (to_rep interm__last)))
  y (to_rep (select (elts1 init) x))
  (mk___t values2 (mk (to_rep values__first) (to_rep values__last))))
  (mk___t interm1 (mk (to_rep interm__first) (to_rep interm__last))) 
  y (to_rep (select (elts1 init) x))
  (mk___t values2 (mk (to_rep values__first) (to_rep values__last)))))

;; H
  (assert (is_perm__function_guard
  (is_perm
  (mk___t (elts1 init)
  (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init)))))
  (mk___t values2 (mk (to_rep values__first) (to_rep values__last))))
  (mk___t (elts1 init)
  (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init)))))
  (mk___t values2 (mk (to_rep values__first) (to_rep values__last)))))

;; H
  (assert
  (and (dynamic_property 0 2147483646 (to_rep values__first)
  (to_rep values__last)) (= (to_rep values__first) 0)))

;; H
  (assert (in_range2 x))

;; H
  (assert (in_range2 y))

;; H
  (assert
  (and (and (<= (to_rep values__first) x) (<= x (to_rep values__last)))
  (and (and (<= (to_rep values__first) y) (<= y (to_rep values__last)))
  (not (= x y)))))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 temp)))

;; H
  (assert
  (= (slide values (to_rep values__first) (to_rep values__first)) temp___335))

;; H
  (assert (= (mk1 (to_rep values__first) (to_rep values__last)) temp___3351))

;; H
  (assert (= (to_rep (first3 temp___3351)) 0))

;; H
  (assert
  (= pair_insertion_sort__swap__init__assume2 (mk___t1 temp___335
                                              temp___3351)))

;; H
  (assert (= pair_insertion_sort__swap__init__assume2 init))

;; H
  (assert (dynamic_invariant3 init true false true))

;; H
  (assert
  (and (dynamic_property4 (to_rep values__first) (to_rep values__last)
  (to_rep interm__first) (to_rep interm__last))
  (and (= (to_rep interm__first) (to_rep values__first))
  (= (to_rep interm__last) (to_rep values__last)))))

;; H
  (assert (and (<= (to_rep values__first) x) (<= x (to_rep values__last))))

;; H
  (assert (= o x))

;; H
  (assert (= o1 (select values o)))

;; H
  (assert (= o2 (to_rep o1)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref temp)))

;; H
  (assert (= temp1 o2))

;; H
  (assert (and (<= (to_rep values__first) y) (<= y (to_rep values__last))))

;; H
  (assert (= o3 y))

;; H
  (assert (= o4 (select values o3)))

;; H
  (assert (= o5 (to_rep o4)))

;; H
  (assert (= (to_rep o6) o5))

;; H
  (assert (and (<= (to_rep values__first) x) (<= x (to_rep values__last))))

;; H
  (assert (= o7 x))

;; H
  (assert (= temp___339 (store values o7 o6)))

;; H
  (assert (= (to_rep values__first) 0))

;; H
  (assert (= o8 temp___339))

;; H
  (assert (= (mk_map__ref result1) (mk_map__ref values)))

;; H
  (assert (= values1 o8))

;; H
  (assert
  (= (is_set
     (mk___t (elts1 init)
     (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init))))) x
     (to_rep (select (elts1 init) y))
     (mk___t values1 (mk (to_rep values__first) (to_rep values__last)))) true))

;; H
  (assert
  (= (slide values1 (to_rep values__first) (to_rep values__first)) temp___342))

;; H
  (assert (= (mk2 (to_rep values__first) (to_rep values__last)) temp___3421))

;; H
  (assert (= (to_rep (first6 temp___3421)) 0))

;; H
  (assert (= temp___3432 (mk___t2 temp___342 temp___3421)))

;; H
  (assert
  (= (ite (<= (to_rep (first6 temp___3431)) (to_rep (last6 temp___3431)))
     (+ (- (to_rep (last6 temp___3431)) (to_rep (first6 temp___3431))) 1) 0) 
  (ite (<= (to_rep interm__first) (to_rep interm__last))
  (+ (- (to_rep interm__last) (to_rep interm__first)) 1) 0)))

;; H
  (assert (= (mk___t2 o9 o10) temp___3432))

;; H
  (assert (= o11 o9))

;; H
  (assert (= (mk_map__ref result2) (mk_map__ref interm)))

;; H
  (assert (= interm1 o11))

;; H
  (assert (= (to_rep o12) temp1))

;; H
  (assert (and (<= (to_rep values__first) y) (<= y (to_rep values__last))))

;; H
  (assert (= o13 y))

;; H
  (assert (= temp___344 (store values1 o13 o12)))

;; H
  (assert (= (to_rep values__first) 0))

;; H
  (assert (= o14 temp___344))

;; H
  (assert (= values1 result3))

;; H
  (assert (= values2 o14))

;; H
  (assert
  (= (is_set
     (mk___t interm1 (mk (to_rep interm__first) (to_rep interm__last))) 
     y (to_rep (select (elts1 init) x))
     (mk___t values2 (mk (to_rep values__first) (to_rep values__last)))) true))

;; H
  (assert
  (= (is_perm
     (mk___t (elts1 init)
     (mk (to_rep (first3 (rt1 init))) (to_rep (last3 (rt1 init)))))
     (mk___t values2 (mk (to_rep values__first) (to_rep values__last)))) true))

;; H
  (assert (= interm1 interm2))

;; H
  (assert (= temp1 temp2))

;; H
  (assert (= values2 values3))

;; H
  (assert (= interm3 interm1))

;; H
  (assert (= temp3 temp1))

;; H
  (assert (= values4 values2))

;; H
  (assert (is_perm__function_guard
  (is_perm (mk___t values (mk (to_rep values__first) (to_rep values__last)))
  (mk___t values3 (mk (to_rep values__first) (to_rep values__last))))
  (mk___t values (mk (to_rep values__first) (to_rep values__last)))
  (mk___t values3 (mk (to_rep values__first) (to_rep values__last)))))

(assert
;; WP_parameter_def
 ;; File "pair_insertion_sort.ads", line 13, characters 0-0
  (not
  (= (is_perm
     (mk___t values (mk (to_rep values__first) (to_rep values__last)))
     (mk___t values3 (mk (to_rep values__first) (to_rep values__last)))) true)))
(check-sat)
