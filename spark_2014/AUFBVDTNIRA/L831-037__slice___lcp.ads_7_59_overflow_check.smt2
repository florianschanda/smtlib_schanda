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

(declare-sort index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 1000000)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (index index) Bool)

(declare-fun dummy2 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

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
                   (=> (<= low high) (and (in_range3 low) (in_range3 high))))))

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

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes () ((text__ref (mk_text__ref (text__content us_t)))))
(define-fun text__ref___projection ((a text__ref)) us_t (text__content a))

(define-fun dynamic_invariant2 ((temp___expr_142 us_t)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (not (= temp___skip_constant_140 true))
                                      (dynamic_property 1 1000000
                                      (first1 temp___expr_142)
                                      (last1 temp___expr_142))))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq5 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t5s__ref (mk_t5s__ref (t5s__content integer)))))
(define-fun t5s__ref___projection ((a1 t5s__ref)) integer (t5s__content a1))

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
(define-fun to_array1 ((a1 us_t1)) (Array Int integer) (elts1 a1))

(define-fun of_array1 ((a1 (Array Int integer)) (f Int)
  (l Int)) us_t1 (mk___t1 a1 (mk1 f l)))

(define-fun first4 ((a1 us_t1)) Int (to_rep (first3 (rt1 a1))))

(define-fun last4 ((a1 us_t1)) Int (to_rep (last3 (rt1 a1))))

(define-fun length1 ((a1 us_t1)) Int (ite (<= (first4 a1) (last4 a1))
                                     (+ (- (last4 a1) (first4 a1)) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int integer)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int integer)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__size1 a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int integer))) (<= 0 (object__component__size1 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__alignment1 a1))))

(define-fun bool_eq6 ((x1 us_t1)
  (y1 us_t1)) Bool (bool_eq2 (elts1 x1) (to_rep (first3 (rt1 x1)))
                   (to_rep (last3 (rt1 x1))) (elts1 y1)
                   (to_rep (first3 (rt1 y1))) (to_rep (last3 (rt1 y1)))))

(declare-fun user_eq5 (us_t1 us_t1) Bool)

(declare-fun dummy5 () us_t1)

(declare-datatypes () ((t6s__ref (mk_t6s__ref (t6s__content us_t1)))))
(define-fun t6s__ref___projection ((a1 t6s__ref)) us_t1 (t6s__content a1))

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq7 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t7s__ref (mk_t7s__ref (t7s__content integer)))))
(define-fun t7s__ref___projection ((a1 t7s__ref)) integer (t7s__content a1))

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
(define-fun to_array2 ((a1 us_t2)) (Array Int integer) (elts2 a1))

(define-fun of_array2 ((a1 (Array Int integer)) (f Int)
  (l Int)) us_t2 (mk___t2 a1 (mk2 f l)))

(define-fun first7 ((a1 us_t2)) Int (to_rep (first6 (rt2 a1))))

(define-fun last7 ((a1 us_t2)) Int (to_rep (last6 (rt2 a1))))

(define-fun length2 ((a1 us_t2)) Int (ite (<= (first7 a1) (last7 a1))
                                     (+ (- (last7 a1) (first7 a1)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int integer)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int integer)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__size2 a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int integer))) (<= 0 (object__component__size2 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__alignment2 a1))))

(define-fun bool_eq8 ((x1 us_t2)
  (y1 us_t2)) Bool (bool_eq2 (elts2 x1) (to_rep (first6 (rt2 x1)))
                   (to_rep (last6 (rt2 x1))) (elts2 y1)
                   (to_rep (first6 (rt2 y1))) (to_rep (last6 (rt2 y1)))))

(declare-fun user_eq7 (us_t2 us_t2) Bool)

(declare-fun dummy7 () us_t2)

(declare-datatypes () ((t8s__ref (mk_t8s__ref (t8s__content us_t2)))))
(define-fun t8s__ref___projection ((a1 t8s__ref)) us_t2 (t8s__content a1))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun first8 () Int)

(declare-fun last8 (Int) Int)

(define-fun dynamic_property5 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq9 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes () ((t7b__ref (mk_t7b__ref (t7b__content integer)))))
(define-fun t7b__ref___projection ((a1 t7b__ref)) integer (t7b__content a1))

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
(define-fun to_array3 ((a1 us_t3)) (Array Int integer) (elts3 a1))

(define-fun of_array3 ((a1 (Array Int integer)) (f Int)
  (l Int)) us_t3 (mk___t3 a1 (mk3 f l)))

(define-fun first10 ((a1 us_t3)) Int (to_rep (first9 (rt3 a1))))

(define-fun last10 ((a1 us_t3)) Int (to_rep (last9 (rt3 a1))))

(define-fun length3 ((a1 us_t3)) Int (ite (<= (first10 a1) (last10 a1))
                                     (+ (- (last10 a1) (first10 a1)) 1) 0))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int integer)) Int)

(declare-fun value__component__size3 () Int)

(declare-fun object__component__size3 ((Array Int integer)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__size3 a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size3))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int integer))) (<= 0 (object__component__size3 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__alignment3 a1))))

(define-fun bool_eq10 ((x1 us_t3)
  (y1 us_t3)) Bool (bool_eq2 (elts3 x1) (to_rep (first9 (rt3 x1)))
                   (to_rep (last9 (rt3 x1))) (elts3 y1)
                   (to_rep (first9 (rt3 y1))) (to_rep (last9 (rt3 y1)))))

(declare-fun user_eq9 (us_t3 us_t3) Bool)

(declare-fun dummy9 () us_t3)

(declare-datatypes () ((t8b__ref (mk_t8b__ref (t8b__content us_t3)))))
(define-fun t8b__ref___projection ((a1 t8b__ref)) us_t3 (t8b__content a1))

(declare-fun first11 () Int)

(declare-fun last11 (Int) Int)

(define-fun dynamic_property7 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq11 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq10 (integer integer) Bool)

(declare-fun dummy10 () integer)

(declare-datatypes () ((t10b__ref (mk_t10b__ref (t10b__content integer)))))
(define-fun t10b__ref___projection ((a1 t10b__ref)) integer (t10b__content
                                                            a1))

(declare-sort t4 0)

(declare-fun first12 (t4) integer)

(declare-fun last12 (t4) integer)

(declare-fun mk4 (Int Int) t4)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first12 (mk4 f l))) f)
     (= (to_rep (last12 (mk4 f l))) l)))) :pattern ((mk4 f l)) )))

(define-fun dynamic_property8 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property7 range_first range_last low)
                   (dynamic_property7 range_first range_last high))))))

(declare-datatypes ()
((us_t4 (mk___t4 (elts4 (Array Int integer))(rt4 t4)))))
(define-fun to_array4 ((a1 us_t4)) (Array Int integer) (elts4 a1))

(define-fun of_array4 ((a1 (Array Int integer)) (f Int)
  (l Int)) us_t4 (mk___t4 a1 (mk4 f l)))

(define-fun first13 ((a1 us_t4)) Int (to_rep (first12 (rt4 a1))))

(define-fun last13 ((a1 us_t4)) Int (to_rep (last12 (rt4 a1))))

(define-fun length4 ((a1 us_t4)) Int (ite (<= (first13 a1) (last13 a1))
                                     (+ (- (last13 a1) (first13 a1)) 1) 0))

(declare-fun value__size4 () Int)

(declare-fun object__size4 ((Array Int integer)) Int)

(declare-fun value__component__size4 () Int)

(declare-fun object__component__size4 ((Array Int integer)) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__size4 a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size4))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int integer))) (<= 0 (object__component__size4 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__alignment4 a1))))

(define-fun bool_eq12 ((x1 us_t4)
  (y1 us_t4)) Bool (bool_eq2 (elts4 x1) (to_rep (first12 (rt4 x1)))
                   (to_rep (last12 (rt4 x1))) (elts4 y1)
                   (to_rep (first12 (rt4 y1))) (to_rep (last12 (rt4 y1)))))

(declare-fun user_eq11 (us_t4 us_t4) Bool)

(declare-fun dummy11 () us_t4)

(declare-datatypes () ((t11b__ref (mk_t11b__ref (t11b__content us_t4)))))
(define-fun t11b__ref___projection ((a1 t11b__ref)) us_t4 (t11b__content a1))

(define-fun dynamic_invariant3 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 1 1000000)) (in_range3
                                      temp___expr_136)))

(declare-fun l () Int)

(declare-fun r6b () Int)

(declare-fun r9b () Int)

(declare-fun lcp__result () Int)

(declare-fun temp___174 () Int)

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun temp___175 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () integer)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun temp___168 () Int)

(declare-fun temp___167 () Int)

(declare-fun temp___166 () Int)

(declare-fun temp___173 () Int)

(declare-fun o8 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () Int)

(declare-fun o12 () Int)

(declare-fun o13 () Int)

(declare-fun o14 () Int)

(declare-fun temp___1741 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () integer)

(declare-fun temp___1751 () Int)

(declare-fun o17 () Int)

(declare-fun o18 () integer)

(declare-fun o19 () Int)

(declare-fun o20 () Int)

(declare-fun o21 () Int)

(declare-fun o22 () Int)

(declare-fun o23 () Bool)

(declare-fun o24 () Int)

(declare-fun o25 () Int)

(declare-fun r6b1 () Int)

(declare-fun r9b1 () Int)

(declare-fun result () Int)

(declare-fun l1 () Int)

(declare-fun result1 () Bool)

(declare-fun result2 () Bool)

(declare-fun result3 () Bool)

(declare-fun result4 () Int)

(declare-fun r6b2 () Int)

(declare-fun result5 () Int)

(declare-fun r9b2 () Int)

(declare-fun l2 () Int)

(declare-fun r6b3 () Int)

(declare-fun r9b3 () Int)

(declare-fun temp___1731 () Int)

(declare-fun result6 () Int)

(declare-fun temp___1732 () Int)

(declare-fun result7 () Int)

(declare-fun l3 () Int)

(declare-fun result8 () Bool)

(declare-fun result9 () Bool)

(declare-fun result10 () Bool)

(declare-fun l4 () Int)

(declare-fun r6b4 () Int)

(declare-fun r9b4 () int__ref)

(declare-fun l5 () Int)

(declare-fun r6b5 () Int)

(declare-fun r9b5 () Int)

(declare-fun l6 () int__ref)

(declare-fun r6b6 () int__ref)

(declare-fun r9b6 () int__ref)

(declare-fun l7 () Int)

(declare-fun r6b7 () Int)

(declare-fun r9b7 () Int)

(declare-fun result11 () int__ref)

(declare-fun lcp__result1 () Int)

(declare-fun lcp__result2 () int__ref)

(declare-fun lcp__result3 () Int)

(declare-fun l8 () int__ref)

(declare-fun r6b8 () int__ref)

(declare-fun r9b8 () int__ref)

(declare-fun lcp__result4 () int__ref)

(declare-fun l9 () Int)

(declare-fun r6b9 () Int)

(declare-fun r9b9 () Int)

(declare-fun lcp__result5 () Int)

(define-fun r9b10 () int__ref (mk_int__ref r9b))

(define-fun r6b10 () int__ref (mk_int__ref r6b))

;; H
  (assert (dynamic_invariant2 a true false true))

;; H
  (assert (in_range1 x))

;; H
  (assert (in_range1 y))

;; H
  (assert
  (and (and (<= (to_rep (first (rt a))) x) (<= x (to_rep (last (rt a)))))
  (and (<= (to_rep (first (rt a))) y) (<= y (to_rep (last (rt a)))))))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 l)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref l)))

;; H
  (assert (= l1 0))

;; H
  (assert (and (= o7 (+ x l1)) (in_range1 (+ x l1))))

;; H
  (assert (= result3 (ite (<= o7 (to_rep (last (rt a)))) true false)))

;; H
  (assert (=> (= result3 true) (and (= o6 (+ y l1)) (in_range1 (+ y l1)))))

;; H
  (assert
  (=> (= result3 true)
  (= result2 (ite (<= o6 (to_rep (last (rt a)))) true false))))

;; H
  (assert (=> (not (= result3 true)) (= result2 false)))

;; H
  (assert
  (=> (= result2 true) (and (= temp___175 (+ y l1)) (in_range1 (+ y l1)))))

;; H
  (assert
  (=> (= result2 true)
  (and (<= (to_rep (first (rt a))) temp___175)
  (<= temp___175 (to_rep (last (rt a)))))))

;; H
  (assert (=> (= result2 true) (= o2 temp___175)))

;; H
  (assert (=> (= result2 true) (= o3 (select (elts a) o2))))

;; H
  (assert (=> (= result2 true) (= o4 (to_rep o3))))

;; H
  (assert
  (=> (= result2 true) (and (= temp___174 (+ x l1)) (in_range1 (+ x l1)))))

;; H
  (assert
  (=> (= result2 true)
  (and (<= (to_rep (first (rt a))) temp___174)
  (<= temp___174 (to_rep (last (rt a)))))))

;; H
  (assert (=> (= result2 true) (= o temp___174)))

;; H
  (assert (=> (= result2 true) (= o1 (select (elts a) o))))

;; H
  (assert (=> (= result2 true) (= o5 (to_rep o1))))

;; H
  (assert (=> (= result2 true) (= result1 (ite (= o5 o4) true false))))

;; H
  (assert (=> (not (= result2 true)) (= result1 false)))

;; H
  (assert (=> (= result1 true) (= temp___168 l1)))

;; H
  (assert (=> (= result1 true) (= temp___167 r9b)))

;; H
  (assert (=> (= result1 true) (= temp___166 r6b)))

;; H
  (assert (=> (= result1 true) (= 0 temp___173)))

;; H
  (assert (=> (= result1 true) (and (= o8 (+ x l1)) (in_range1 (+ x l1)))))

;; H
  (assert (=> (= result1 true) (= o9 (- o8 1))))

;; H
  (assert (=> (= result1 true) (and (= o10 o9) (in_range1 o9))))

;; H
  (assert (=> (= result1 true) (= (mk_int__ref result4) r6b10)))

;; H
  (assert (=> (= result1 true) (= r6b2 o10)))

;; H
  (assert (=> (= result1 true) (in_range1 r6b2)))

;; H
  (assert (=> (= result1 true) (and (= o11 (+ y l1)) (in_range1 (+ y l1)))))

;; H
  (assert (=> (= result1 true) (= o12 (- o11 1))))

;; H
  (assert (=> (= result1 true) (and (= o13 o12) (in_range1 o12))))

;; H
  (assert (=> (= result1 true) (= (mk_int__ref result5) r9b10)))

;; H
  (assert (=> (= result1 true) (= r9b2 o13)))

;; H
  (assert (=> (= result1 true) (in_range1 r9b2)))

;; H
  (assert
  (=> (= result1 true)
  (= (bool_eq2 (elts a) (to_rep (first9 (mk3 x r6b3)))
     (to_rep (last9 (mk3 x r6b3))) (elts a) (to_rep (first12 (mk4 y r9b3)))
     (to_rep (last12 (mk4 y r9b3)))) true)))

;; H
  (assert
  (=> (= result1 true)
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 r6b3))
  (=> (<= (- 2147483648) 2147483647) (in_range1 r9b3)))
  (=> (<= 0 2147483647) (in_range2 l2)))))

;; H
  (assert (=> (= result1 true) (= temp___1731 result6)))

;; H
  (assert (=> (= result1 true) (= temp___1732 l2)))

;; H
  (assert (=> (= result1 true) (and (= o14 (+ l2 1)) (in_range1 (+ l2 1)))))

;; H
  (assert (=> (= result1 true) (= l2 result7)))

;; H
  (assert (=> (= result1 true) (= l3 o14)))

;; H
  (assert (=> (= result1 true) (and (= o22 (+ x l3)) (in_range1 (+ x l3)))))

;; H
  (assert
  (=> (= result1 true)
  (= result10 (ite (<= o22 (to_rep (last (rt a)))) true false))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result10 true) (and (= o21 (+ y l3)) (in_range1 (+ y l3))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result10 true)
  (= result9 (ite (<= o21 (to_rep (last (rt a)))) true false)))))

;; H
  (assert
  (=> (= result1 true) (=> (not (= result10 true)) (= result9 false))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result9 true) (and (= temp___1751 (+ y l3)) (in_range1 (+ y l3))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result9 true)
  (and (<= (to_rep (first (rt a))) temp___1751)
  (<= temp___1751 (to_rep (last (rt a))))))))

;; H
  (assert (=> (= result1 true) (=> (= result9 true) (= o17 temp___1751))))

;; H
  (assert
  (=> (= result1 true) (=> (= result9 true) (= o18 (select (elts a) o17)))))

;; H
  (assert (=> (= result1 true) (=> (= result9 true) (= o19 (to_rep o18)))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result9 true) (and (= temp___1741 (+ x l3)) (in_range1 (+ x l3))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result9 true)
  (and (<= (to_rep (first (rt a))) temp___1741)
  (<= temp___1741 (to_rep (last (rt a))))))))

;; H
  (assert (=> (= result1 true) (=> (= result9 true) (= o15 temp___1741))))

;; H
  (assert
  (=> (= result1 true) (=> (= result9 true) (= o16 (select (elts a) o15)))))

;; H
  (assert (=> (= result1 true) (=> (= result9 true) (= o20 (to_rep o16)))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result9 true) (= o23 (ite (= o20 o19) true false)))))

;; H
  (assert (=> (= result1 true) (=> (not (= result9 true)) (= o23 false))))

;; H
  (assert
  (=> (= result1 true) (= result8 (ite (not (= o23 true)) true false))))

;; H
  (assert (=> (= result1 true) (= result8 true)))

;; H
  (assert (=> (= result1 true) (= r9b4 (mk_int__ref r9b3))))

;; H
  (assert (=> (= result1 true) (= r6b3 r6b4)))

;; H
  (assert (=> (= result1 true) (= l3 l4)))

;; H
  (assert (=> (= result1 true) (= r9b5 r9b3)))

;; H
  (assert (=> (= result1 true) (= r6b5 r6b3)))

;; H
  (assert (=> (= result1 true) (= l5 l3)))

;; H
  (assert (=> (= result1 true) (= r9b6 r9b4)))

;; H
  (assert (=> (= result1 true) (= r6b6 (mk_int__ref r6b4))))

;; H
  (assert (=> (= result1 true) (= l6 (mk_int__ref l4))))

;; H
  (assert (=> (= result1 true) (= r9b7 r9b5)))

;; H
  (assert (=> (= result1 true) (= r6b7 r6b5)))

;; H
  (assert (=> (= result1 true) (= l7 l5)))

;; H
  (assert (=> (not (= result1 true)) (= r9b6 r9b10)))

;; H
  (assert (=> (not (= result1 true)) (= r6b6 r6b10)))

;; H
  (assert (=> (not (= result1 true)) (= l6 (mk_int__ref l1))))

;; H
  (assert (=> (not (= result1 true)) (= r9b7 r9b1)))

;; H
  (assert (=> (not (= result1 true)) (= r6b7 r6b1)))

;; H
  (assert (=> (not (= result1 true)) (= l7 l1)))

;; H
  (assert (= lcp__result2 (mk_int__ref lcp__result1)))

;; H
  (assert (= lcp__result3 lcp__result1))

;; H
  (assert (= result11 (mk_int__ref lcp__result)))

;; H
  (assert (= lcp__result1 (int__content l6)))

;; H
  (assert (= lcp__result4 lcp__result2))

;; H
  (assert (= r9b8 r9b6))

;; H
  (assert (= r6b8 r6b6))

;; H
  (assert (= l8 l6))

;; H
  (assert (= lcp__result5 lcp__result3))

;; H
  (assert (= r9b9 r9b7))

;; H
  (assert (= r6b9 r6b7))

;; H
  (assert (= l9 l7))

;; H
  (assert
  (and (= o24 (+ y (int__content lcp__result4))) (in_range1
  (+ y (int__content lcp__result4)))))

;; H
  (assert (= o25 (- o24 1)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range1 o25)))
(check-sat)
