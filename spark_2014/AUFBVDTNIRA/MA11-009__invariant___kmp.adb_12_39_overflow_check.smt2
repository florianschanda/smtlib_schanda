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

(define-fun bool_eq2 ((x us_t)
  (y us_t)) Bool (bool_eq1 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq1 (us_t us_t) Bool)

(declare-fun dummy1 () us_t)

(declare-datatypes () ((a__ref (mk_a__ref (a__content us_t)))))
(define-fun a__ref___projection ((a a__ref)) us_t (a__content a))

(define-fun dynamic_invariant1 ((temp___expr_136 us_t)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (not (= temp___skip_constant_134 true))
                                      (dynamic_property (- 2147483648)
                                      2147483647 (first1 temp___expr_136)
                                      (last1 temp___expr_136))))

(declare-fun p () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((tTnextSP1__ref (mk_tTnextSP1__ref (tTnextSP1__content integer)))))
(define-fun tTnextSP1__ref___projection ((a tTnextSP1__ref)) integer 
  (tTnextSP1__content a))

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

(define-fun bool_eq4 ((x us_t1)
  (y us_t1)) Bool (bool_eq1 (elts1 x) (to_rep (first3 (rt1 x)))
                  (to_rep (last3 (rt1 x))) (elts1 y)
                  (to_rep (first3 (rt1 y))) (to_rep (last3 (rt1 y)))))

(declare-fun user_eq3 (us_t1 us_t1) Bool)

(declare-fun dummy3 () us_t1)

(declare-datatypes ()
((tnextS__ref (mk_tnextS__ref (tnextS__content us_t1)))))
(define-fun tnextS__ref___projection ((a tnextS__ref)) us_t1 (tnextS__content
                                                             a))

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content integer)))))
(define-fun t2b__ref___projection ((a t2b__ref)) integer (t2b__content a))

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

(define-fun bool_eq6 ((x us_t2)
  (y us_t2)) Bool (bool_eq1 (elts2 x) (to_rep (first6 (rt2 x)))
                  (to_rep (last6 (rt2 x))) (elts2 y)
                  (to_rep (first6 (rt2 y))) (to_rep (last6 (rt2 y)))))

(declare-fun user_eq5 (us_t2 us_t2) Bool)

(declare-fun dummy5 () us_t2)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content us_t2)))))
(define-fun t3b__ref___projection ((a t3b__ref)) us_t2 (t3b__content a))

(declare-fun next__first () integer)

(declare-fun next__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun first8 (Int) Int)

(declare-fun last8 (Int) Int)

(define-fun dynamic_property5 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t10b__ref (mk_t10b__ref (t10b__content integer)))))
(define-fun t10b__ref___projection ((a t10b__ref)) integer (t10b__content a))

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

(define-fun bool_eq8 ((x us_t3)
  (y us_t3)) Bool (bool_eq1 (elts3 x) (to_rep (first9 (rt3 x)))
                  (to_rep (last9 (rt3 x))) (elts3 y)
                  (to_rep (first9 (rt3 y))) (to_rep (last9 (rt3 y)))))

(declare-fun user_eq7 (us_t3 us_t3) Bool)

(declare-fun dummy7 () us_t3)

(declare-datatypes () ((t11b__ref (mk_t11b__ref (t11b__content us_t3)))))
(define-fun t11b__ref___projection ((a t11b__ref)) us_t3 (t11b__content a))

(declare-fun last11 (Int) Int)

(define-fun dynamic_property7 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq8 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes () ((t13b__ref (mk_t13b__ref (t13b__content integer)))))
(define-fun t13b__ref___projection ((a t13b__ref)) integer (t13b__content a))

(declare-sort t4 0)

(declare-fun first11 (t4) integer)

(declare-fun last12 (t4) integer)

(declare-fun mk4 (Int Int) t4)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first11 (mk4 f l))) f)
     (= (to_rep (last12 (mk4 f l))) l)))) :pattern ((mk4 f l)) )))

(define-fun dynamic_property8 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property7 range_first range_last low)
                   (dynamic_property7 range_first range_last high))))))

(declare-datatypes ()
((us_t4 (mk___t4 (elts4 (Array Int integer))(rt4 t4)))))
(define-fun to_array4 ((a us_t4)) (Array Int integer) (elts4 a))

(define-fun of_array4 ((a (Array Int integer)) (f Int)
  (l Int)) us_t4 (mk___t4 a (mk4 f l)))

(define-fun first12 ((a us_t4)) Int (to_rep (first11 (rt4 a))))

(define-fun last13 ((a us_t4)) Int (to_rep (last12 (rt4 a))))

(define-fun length4 ((a us_t4)) Int (ite (<= (first12 a) (last13 a))
                                    (+ (- (last13 a) (first12 a)) 1) 0))

(declare-fun value__size4 () Int)

(declare-fun object__size4 ((Array Int integer)) Int)

(declare-fun value__component__size4 () Int)

(declare-fun object__component__size4 ((Array Int integer)) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size4 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size4))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size4 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment4 a))))

(define-fun bool_eq10 ((x us_t4)
  (y us_t4)) Bool (bool_eq1 (elts4 x) (to_rep (first11 (rt4 x)))
                  (to_rep (last12 (rt4 x))) (elts4 y)
                  (to_rep (first11 (rt4 y))) (to_rep (last12 (rt4 y)))))

(declare-fun user_eq9 (us_t4 us_t4) Bool)

(declare-fun dummy9 () us_t4)

(declare-datatypes () ((t14b__ref (mk_t14b__ref (t14b__content us_t4)))))
(define-fun t14b__ref___projection ((a t14b__ref)) us_t4 (t14b__content a))

(declare-fun kmp__init_next__next__aggregate_def (Int Int Int) us_t2)

;; def_axiom
  (assert
  (forall ((temp___159 Int) (temp___160 Int) (temp___161 Int))
  (let ((temp___158 (kmp__init_next__next__aggregate_def temp___159
                    temp___160 temp___161)))
  (and
  (=> (dynamic_property (- 2147483648) 2147483647 temp___160 temp___161)
  (and (= (first7 temp___158) temp___160) (= (last7 temp___158) temp___161)))
  (forall ((temp___162 Int))
  (= (select (to_array2 temp___158) temp___162) (of_rep temp___159)))))))

(define-fun dynamic_invariant2 ((temp___expr_152 us_t1)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (not (= temp___skip_constant_150 true))
                                      (and (dynamic_property2 (first1 p)
                                      (last1 p) (first4 temp___expr_152)
                                      (last4 temp___expr_152))
                                      (and
                                      (= (first4 temp___expr_152) (first1 p))
                                      (= (last4 temp___expr_152) (last1 p))))))

(declare-fun next () (Array Int integer))

(declare-fun i () Int)

(declare-fun j () Int)

(declare-fun temp___164 () (Array Int integer))

(declare-fun temp___1641 () t2)

(declare-fun kmp__init_next__next__assume () (Array Int integer))

(declare-fun kmp__init_next__next__assume1 () t1)

(declare-fun o () Int)

(declare-fun result () (Array Int integer))

(declare-fun next1 () (Array Int integer))

(declare-fun result1 () Int)

(declare-fun i1 () Int)

(declare-fun result2 () Int)

(declare-fun j1 () Int)

;; H
  (assert (dynamic_invariant1 p true false true))

;; H
  (assert (<= 1 (length p)))

;; H
  (assert
  (= (to_rep
     (first6
     (rt2
     (kmp__init_next__next__aggregate_def 0 (to_rep (first (rt p)))
     (to_rep (last (rt p))))))) (to_rep (first (rt p)))))

;; H
  (assert
  (= (to_rep
     (last6
     (rt2
     (kmp__init_next__next__aggregate_def 0 (to_rep (first (rt p)))
     (to_rep (last (rt p))))))) (to_rep (last (rt p)))))

;; H
  (assert
  (= (mk___t2 temp___164 temp___1641) (kmp__init_next__next__aggregate_def 0
                                      (to_rep (first (rt p)))
                                      (to_rep (last (rt p))))))

;; H
  (assert
  (= (ite (<= (to_rep (first6 temp___1641)) (to_rep (last6 temp___1641)))
     (+ (- (to_rep (last6 temp___1641)) (to_rep (first6 temp___1641))) 1) 0) 
  (ite (<= (to_rep (first (rt p))) (to_rep (last (rt p))))
  (+ (- (to_rep (last (rt p))) (to_rep (first (rt p)))) 1) 0)))

;; H
  (assert
  (= (slide temp___164 (to_rep (first6 temp___1641)) (to_rep (first (rt p)))) 
  kmp__init_next__next__assume))

;; H
  (assert
  (= (mk1 (to_rep (first (rt p))) (to_rep (last (rt p)))) kmp__init_next__next__assume1))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref next)))

;; H
  (assert (= next1 kmp__init_next__next__assume))

;; H
  (assert
  (= (to_rep next__first) (to_rep (first3 kmp__init_next__next__assume1))))

;; H
  (assert
  (= (to_rep next__last) (to_rep (last3 kmp__init_next__next__assume1))))

;; H
  (assert
  (and (dynamic_property2 (to_rep (first (rt p))) (to_rep (last (rt p)))
  (to_rep next__first) (to_rep next__last))
  (and (= (to_rep next__first) (to_rep (first (rt p))))
  (= (to_rep next__last) (to_rep (last (rt p)))))))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref i)))

;; H
  (assert (= i1 (to_rep (first (rt p)))))

;; H
  (assert (in_range1 i1))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 j)))

;; H
  (assert (< 1 (length p)))

;; H
  (assert
  (and (= o (+ (to_rep (first (rt p))) 1)) (in_range1
  (+ (to_rep (first (rt p))) 1))))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref j)))

;; H
  (assert (= j1 o))

(assert
;; WP_parameter_def
 ;; File "kmp.ads", line 5, characters 0-0
  (not (in_range1 (- (to_rep (last (rt p))) 1))))
(check-sat)
