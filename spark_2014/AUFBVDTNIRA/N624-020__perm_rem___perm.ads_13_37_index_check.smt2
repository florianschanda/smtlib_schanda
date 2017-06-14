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

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (index index) Bool)

(declare-fun dummy2 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant ((temp___expr_172 Int)
  (temp___is_init_169 Bool) (temp___skip_constant_170 Bool)
  (temp___do_toplevel_171 Bool)) Bool (=>
                                      (or (= temp___is_init_169 true)
                                      (<= 1 100)) (in_range3
                                      temp___expr_172)))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int natural))))))
(declare-fun slide ((Array Int natural) Int Int) (Array Int natural))

;; slide_eq
  (assert
  (forall ((a (Array Int natural)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int natural)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int natural) Int Int (Array Int natural) Int
  Int) (Array Int natural))

;; concat_def
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (natural Int) (Array Int natural))

;; singleton_def
  (assert
  (forall ((v natural))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int natural)) (a__first Int) (a__last Int)
  (b (Array Int natural)) (b__first Int)
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
  (forall ((a (Array Int natural)) (b (Array Int natural)))
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

(declare-fun compare ((Array Int natural) Int Int (Array Int natural) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
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
  (forall ((a (Array Int natural)) (b (Array Int natural)))
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

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range3 low) (in_range3 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int natural))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int natural) (elts a))

(define-fun of_array ((a (Array Int natural)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int natural)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int natural)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes ()
((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content
                                                                  a))

(define-fun dynamic_invariant1 ((temp___expr_178 us_t)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (=>
                                      (not (= temp___skip_constant_176 true))
                                      (dynamic_property 1 100
                                      (first1 temp___expr_178)
                                      (last1 temp___expr_178))))

(declare-fun invariant__ (us_t) Bool)

(declare-fun invariant____function_guard (Bool us_t) Bool)

;; invariant____post_axiom
  (assert true)

;; invariant____def_axiom
  (assert
  (forall ((a us_t))
  (! (=> (invariant____function_guard (invariant__ a) a)
     (= (= (invariant__ a) true) (and (= (first1 a) 1) (<= 0 (last1 a))))) :pattern (
  (invariant__ a)) )))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes ()
((tresult_tyP1__ref (mk_tresult_tyP1__ref (tresult_tyP1__content integer)))))
(define-fun tresult_tyP1__ref___projection ((a1 tresult_tyP1__ref)) integer 
  (tresult_tyP1__content a1))

(declare-sort t1 0)

(declare-fun first2 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first2 (mk1 f l))) f)
     (= (to_rep1 (last3 (mk1 f l))) l)))) :pattern ((mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int natural))(rt1 t1)))))
(define-fun to_array1 ((a1 us_t1)) (Array Int natural) (elts1 a1))

(define-fun of_array1 ((a1 (Array Int natural)) (f Int)
  (l Int)) us_t1 (mk___t1 a1 (mk1 f l)))

(define-fun first3 ((a1 us_t1)) Int (to_rep1 (first2 (rt1 a1))))

(define-fun last4 ((a1 us_t1)) Int (to_rep1 (last3 (rt1 a1))))

(define-fun length1 ((a1 us_t1)) Int (ite (<= (first3 a1) (last4 a1))
                                     (+ (- (last4 a1) (first3 a1)) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int natural)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int natural)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a1 (Array Int natural))) (<= 0 (object__size1 a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int natural))) (<= 0 (object__component__size1 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int natural))) (<= 0 (object__alignment1 a1))))

(define-fun bool_eq6 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first2 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first2 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq5 (us_t1 us_t1) Bool)

(declare-fun dummy5 () us_t1)

(declare-datatypes ()
((result_ty__ref (mk_result_ty__ref (result_ty__content us_t1)))))
(define-fun result_ty__ref___projection ((a1 result_ty__ref)) us_t1 (result_ty__content
                                                                    a1))

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content integer)))))
(define-fun t2b__ref___projection ((a1 t2b__ref)) integer (t2b__content a1))

(declare-sort t2 0)

(declare-fun first4 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first4 (mk2 f l))) f)
     (= (to_rep1 (last6 (mk2 f l))) l)))) :pattern ((mk2 f l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property3 range_first range_last low)
                   (dynamic_property3 range_first range_last high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int natural))(rt2 t2)))))
(define-fun to_array2 ((a1 us_t2)) (Array Int natural) (elts2 a1))

(define-fun of_array2 ((a1 (Array Int natural)) (f Int)
  (l Int)) us_t2 (mk___t2 a1 (mk2 f l)))

(define-fun first5 ((a1 us_t2)) Int (to_rep1 (first4 (rt2 a1))))

(define-fun last7 ((a1 us_t2)) Int (to_rep1 (last6 (rt2 a1))))

(define-fun length2 ((a1 us_t2)) Int (ite (<= (first5 a1) (last7 a1))
                                     (+ (- (last7 a1) (first5 a1)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int natural)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int natural)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a1 (Array Int natural))) (<= 0 (object__size2 a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int natural))) (<= 0 (object__component__size2 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int natural))) (<= 0 (object__alignment2 a1))))

(define-fun bool_eq8 ((x us_t2)
  (y us_t2)) Bool (bool_eq3 (elts2 x) (to_rep1 (first4 (rt2 x)))
                  (to_rep1 (last6 (rt2 x))) (elts2 y)
                  (to_rep1 (first4 (rt2 y))) (to_rep1 (last6 (rt2 y)))))

(declare-fun user_eq7 (us_t2 us_t2) Bool)

(declare-fun dummy7 () us_t2)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content us_t2)))))
(define-fun t3b__ref___projection ((a1 t3b__ref)) us_t2 (t3b__content a1))

(declare-fun first6 () Int)

(declare-fun last8 () Int)

(define-fun dynamic_property5 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content integer)))))
(define-fun t4b__ref___projection ((a1 t4b__ref)) integer (t4b__content a1))

(declare-sort t3 0)

(declare-fun first7 (t3) integer)

(declare-fun last9 (t3) integer)

(declare-fun mk3 (Int Int) t3)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first7 (mk3 f l))) f)
     (= (to_rep1 (last9 (mk3 f l))) l)))) :pattern ((mk3 f l)) )))

(define-fun dynamic_property6 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property5 range_first range_last low)
                   (dynamic_property5 range_first range_last high))))))

(declare-datatypes ()
((us_t3 (mk___t3 (elts3 (Array Int natural))(rt3 t3)))))
(define-fun to_array3 ((a1 us_t3)) (Array Int natural) (elts3 a1))

(define-fun of_array3 ((a1 (Array Int natural)) (f Int)
  (l Int)) us_t3 (mk___t3 a1 (mk3 f l)))

(define-fun first8 ((a1 us_t3)) Int (to_rep1 (first7 (rt3 a1))))

(define-fun last10 ((a1 us_t3)) Int (to_rep1 (last9 (rt3 a1))))

(define-fun length3 ((a1 us_t3)) Int (ite (<= (first8 a1) (last10 a1))
                                     (+ (- (last10 a1) (first8 a1)) 1) 0))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int natural)) Int)

(declare-fun value__component__size3 () Int)

(declare-fun object__component__size3 ((Array Int natural)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a1 (Array Int natural))) (<= 0 (object__size3 a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size3))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int natural))) (<= 0 (object__component__size3 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int natural))) (<= 0 (object__alignment3 a1))))

(define-fun bool_eq10 ((x us_t3)
  (y us_t3)) Bool (bool_eq3 (elts3 x) (to_rep1 (first7 (rt3 x)))
                  (to_rep1 (last9 (rt3 x))) (elts3 y)
                  (to_rep1 (first7 (rt3 y))) (to_rep1 (last9 (rt3 y)))))

(declare-fun user_eq9 (us_t3 us_t3) Bool)

(declare-fun dummy9 () us_t3)

(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content us_t3)))))
(define-fun t5b__ref___projection ((a1 t5b__ref)) us_t3 (t5b__content a1))

(declare-fun result____first () integer)

(declare-fun result____last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant2 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_297 us_t1)
  (temp___is_init_294 Bool) (temp___skip_constant_295 Bool)
  (temp___do_toplevel_296 Bool)) Bool (=>
                                      (not (= temp___skip_constant_295 true))
                                      (and (dynamic_property2 1
                                      (- (last1 a) 1)
                                      (first3 temp___expr_297)
                                      (last4 temp___expr_297))
                                      (and (= (first3 temp___expr_297) 1)
                                      (= (last4 temp___expr_297) (- (last1 a) 1))))))

(declare-fun result__ () (Array Int natural))

(declare-fun perm__remove__result () (Array Int natural))

(declare-fun perm__remove__result1 () t)

(declare-fun o () (Array Int natural))

(declare-fun temp___713 () (Array Int natural))

(declare-fun temp___7131 () t3)

(declare-fun o1 () (Array Int natural))

(declare-fun temp___712 () (Array Int natural))

(declare-fun temp___7121 () t2)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun temp___714 () (Array Int natural))

(declare-fun temp___7141 () t)

(declare-fun perm__remove__result__assume () (Array Int natural))

(declare-fun perm__remove__result__assume1 () t1)

(declare-fun k () Int)

(declare-fun o8 () Int)

(declare-fun o9 () natural)

(declare-fun o10 () Int)

(declare-fun o11 () Int)

(declare-fun result () (Array Int natural))

(declare-fun result__1 () (Array Int natural))

(declare-fun result1 () (Array Int natural))

(declare-fun result2 () t)

(declare-fun perm__remove__result2 () (Array Int natural))

(declare-fun perm__remove__result3 () t)

(declare-fun perm__remove__result4 () (Array Int natural))

(declare-fun perm__remove__result5 () t)

(declare-fun perm__remove__result6 () (Array Int natural))

(declare-fun perm__remove__result7 () t)

(declare-fun result__2 () (Array Int natural))

(declare-fun perm__remove__result8 () (Array Int natural))

(declare-fun perm__remove__result9 () t)

(declare-fun result__3 () (Array Int natural))

(declare-fun perm__remove__result10 () (Array Int natural))

(declare-fun perm__remove__result11 () t)

(declare-fun result3 () Bool)

(declare-fun result4 () Bool)

(define-fun perm__remove__result12 () us_t (mk___t perm__remove__result6
                                           perm__remove__result7))

;; H
  (assert (dynamic_invariant1 a true false true))

;; H
  (assert (in_range3 i))

;; H
  (assert (invariant____function_guard (invariant__ a) a))

;; H
  (assert
  (and (= (invariant__ a) true)
  (and (<= (to_rep1 (first (rt a))) i) (<= i (to_rep1 (last (rt a)))))))

;; H
  (assert
  (=> (<= (+ i 1) (to_rep1 (last (rt a))))
  (and
  (and (<= (to_rep1 (first (rt a))) (+ i 1))
  (<= (+ i 1) (to_rep1 (last (rt a)))))
  (and (<= (to_rep1 (first (rt a))) (to_rep1 (last (rt a))))
  (<= (to_rep1 (last (rt a))) (to_rep1 (last (rt a))))))))

;; H
  (assert (= o (elts a)))

;; H
  (assert (= o temp___713))

;; H
  (assert (= (mk3 (+ i 1) (to_rep1 (last (rt a)))) temp___7131))

;; H
  (assert
  (=> (<= 1 (- i 1))
  (and (and (<= (to_rep1 (first (rt a))) 1) (<= 1 (to_rep1 (last (rt a)))))
  (and (<= (to_rep1 (first (rt a))) (- i 1))
  (<= (- i 1) (to_rep1 (last (rt a))))))))

;; H
  (assert (= o1 (elts a)))

;; H
  (assert (= o1 temp___712))

;; H
  (assert (= (mk2 1 (- i 1)) temp___7121))

;; H
  (assert
  (=> (= (length2 (mk___t2 temp___712 temp___7121)) 0)
  (= temp___713 temp___714)))

;; H
  (assert
  (=> (= (length2 (mk___t2 temp___712 temp___7121)) 0)
  (= (mk (to_rep1 (first7 temp___7131)) (to_rep1 (last9 temp___7131))) 
  temp___7141)))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (=> (<= (to_rep1 (first7 temp___7131)) (to_rep1 (last9 temp___7131)))
  (= o2 (+ (- (to_rep1 (last9 temp___7131)) (to_rep1 (first7 temp___7131))) 1)))))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (=> (not (<= (to_rep1 (first7 temp___7131)) (to_rep1 (last9 temp___7131))))
  (= o2 0))))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (=> (<= (to_rep1 (first4 temp___7121)) (to_rep1 (last6 temp___7121)))
  (= o3 (+ (- (to_rep1 (last6 temp___7121)) (to_rep1 (first4 temp___7121))) 1)))))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (=> (not (<= (to_rep1 (first4 temp___7121)) (to_rep1 (last6 temp___7121))))
  (= o3 0))))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (= o4 (+ o3 o2))))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (= o5 (+ (to_rep1 (first4 temp___7121)) o4))))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0)) (= o6 (- o5 1))))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (and (= o7 o6) (in_range3 o6))))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (= (concat1 temp___712 (to_rep1 (first4 temp___7121))
     (to_rep1 (last6 temp___7121)) temp___713 (to_rep1 (first7 temp___7131))
     (to_rep1 (last9 temp___7131))) temp___714)))

;; H
  (assert
  (=> (not (= (length2 (mk___t2 temp___712 temp___7121)) 0))
  (= (mk (to_rep1 (first4 temp___7121)) o7) temp___7141)))

;; H
  (assert
  (= (ite (<= (to_rep1 (first temp___7141)) (to_rep1 (last temp___7141)))
     (+ (- (to_rep1 (last temp___7141)) (to_rep1 (first temp___7141))) 1) 0) 
  (ite (<= 1 (- (to_rep1 (last (rt a))) 1))
  (+ (- (- (to_rep1 (last (rt a))) 1) 1) 1) 0)))

;; H
  (assert
  (= (slide temp___714 (to_rep1 (first temp___7141)) 1) perm__remove__result__assume))

;; H
  (assert
  (= (mk1 1 (- (to_rep1 (last (rt a))) 1)) perm__remove__result__assume1))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref result__)))

;; H
  (assert (= result__1 perm__remove__result__assume))

;; H
  (assert
  (= (to_rep1 result____first) (to_rep1
                               (first2 perm__remove__result__assume1))))

;; H
  (assert
  (= (to_rep1 result____last) (to_rep1 (last3 perm__remove__result__assume1))))

;; H
  (assert
  (and (dynamic_property2 1 (- (to_rep1 (last (rt a))) 1)
  (to_rep1 result____first) (to_rep1 result____last))
  (and (= (to_rep1 result____first) 1)
  (= (to_rep1 result____last) (- (to_rep1 (last (rt a))) 1)))))

;; H
  (assert (= perm__remove__result4 perm__remove__result2))

;; H
  (assert (= perm__remove__result5 perm__remove__result3))

;; H
  (assert
  (= perm__remove__result12 (mk___t perm__remove__result2
                            perm__remove__result3)))

;; H
  (assert
  (= (mk_nat_array__ref (mk___t result1 result2)) (mk_nat_array__ref
                                                  (mk___t
                                                  perm__remove__result
                                                  perm__remove__result1))))

;; H
  (assert (= result__1 perm__remove__result2))

;; H
  (assert
  (= (mk (to_rep1 result____first) (to_rep1 result____last)) perm__remove__result3))

;; H
  (assert
  (= (mk_nat_array__ref (mk___t perm__remove__result8 perm__remove__result9)) 
  (mk_nat_array__ref (mk___t perm__remove__result4 perm__remove__result5))))

;; H
  (assert (= result__1 result__2))

;; H
  (assert
  (= (mk___t perm__remove__result10 perm__remove__result11) perm__remove__result12))

;; H
  (assert (= result__3 result__1))

;; H
  (assert
  (and
  (and
  (= result3 (invariant__
             (mk___t perm__remove__result8 perm__remove__result9)))
  (invariant____function_guard result3
  (mk___t perm__remove__result8 perm__remove__result9)))
  (= (= result3 true)
  (and (= (to_rep1 (first perm__remove__result9)) 1)
  (<= 0 (to_rep1 (last perm__remove__result9)))))))

;; H
  (assert (= result3 true))

;; H
  (assert
  (and (= o11 (- (to_rep1 (last (rt a))) 1)) (in_range1
  (- (to_rep1 (last (rt a))) 1))))

;; H
  (assert
  (= result4 (ite (= (to_rep1 (last perm__remove__result9)) o11) true false)))

;; H
  (assert (= result4 true))

;; H
  (assert (<= 1 k))

;; H
  (assert (<= k (- i 1)))

;; H
  (assert
  (and (<= (to_rep1 (first perm__remove__result9)) k)
  (<= k (to_rep1 (last perm__remove__result9)))))

;; H
  (assert (= o8 k))

;; H
  (assert (= o9 (select perm__remove__result8 o8)))

;; H
  (assert (= o10 (to_rep o9)))

(assert
;; WP_parameter_def
 ;; File "perm.ads", line 4, characters 0-0
  (not (<= (to_rep1 (first (rt a))) k)))
(check-sat)
