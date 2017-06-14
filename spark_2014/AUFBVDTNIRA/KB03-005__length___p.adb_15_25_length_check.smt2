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

(declare-sort tvec_10_subP1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 10)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (tvec_10_subP1 tvec_10_subP1) Bool)

(declare-fun dummy1 () tvec_10_subP1)

(declare-datatypes ()
((tvec_10_subP1__ref
 (mk_tvec_10_subP1__ref (tvec_10_subP1__content tvec_10_subP1)))))
(define-fun tvec_10_subP1__ref___projection ((a tvec_10_subP1__ref)) tvec_10_subP1 
  (tvec_10_subP1__content a))

(declare-fun f (tuple0) Int)

(declare-fun f__function_guard (Int tuple0) Bool)

;; f__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (f us_void_param)))
     (=> (f__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((f us_void_param)) )))

(declare-fun r4b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun first () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((tTaSP1__ref (mk_tTaSP1__ref (tTaSP1__content integer)))))
(define-fun tTaSP1__ref___projection ((a tTaSP1__ref)) integer (tTaSP1__content
                                                               a))

(declare-sort t 0)

(declare-fun first1 (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f1 Int) (l Int))
  (! (=> (in_range f1)
     (=> (in_range l)
     (and (= (to_rep (first1 (mk f1 l))) f1) (= (to_rep (last (mk f1 l))) l)))) :pattern (
  (mk f1 l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property range_first range_last low)
                   (dynamic_property range_first range_last high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int integer))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))

(define-fun of_array ((a (Array Int integer)) (f1 Int)
  (l Int)) us_t (mk___t a (mk f1 l)))

(define-fun first2 ((a us_t)) Int (to_rep (first1 (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first2 a) (last1 a))
                                  (+ (- (last1 a) (first2 a)) 1) 0))

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
  (y us_t)) Bool (bool_eq1 (elts x) (to_rep (first1 (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first1 (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes () ((taS__ref (mk_taS__ref (taS__content us_t)))))
(define-fun taS__ref___projection ((a taS__ref)) us_t (taS__content a))

(declare-fun first3 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content integer)))))
(define-fun t5b__ref___projection ((a t5b__ref)) integer (t5b__content a))

(declare-sort t1 0)

(declare-fun first4 (t1) integer)

(declare-fun last2 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f1 Int) (l Int))
  (! (=> (in_range f1)
     (=> (in_range l)
     (and (= (to_rep (first4 (mk1 f1 l))) f1)
     (= (to_rep (last2 (mk1 f1 l))) l)))) :pattern ((mk1 f1 l)) )))

(define-fun dynamic_property3 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property2 range_first range_last low)
                   (dynamic_property2 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int integer))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int integer) (elts1 a))

(define-fun of_array1 ((a (Array Int integer)) (f1 Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f1 l)))

(define-fun first5 ((a us_t1)) Int (to_rep (first4 (rt1 a))))

(define-fun last3 ((a us_t1)) Int (to_rep (last2 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first5 a) (last3 a))
                                    (+ (- (last3 a) (first5 a)) 1) 0))

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
  (y us_t1)) Bool (bool_eq1 (elts1 x) (to_rep (first4 (rt1 x)))
                  (to_rep (last2 (rt1 x))) (elts1 y)
                  (to_rep (first4 (rt1 y))) (to_rep (last2 (rt1 y)))))

(declare-fun user_eq5 (us_t1 us_t1) Bool)

(declare-fun dummy5 () us_t1)

(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content us_t1)))))
(define-fun t6b__ref___projection ((a t6b__ref)) us_t1 (t6b__content a))

(declare-fun a__first () integer)

(declare-fun a__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort t2 0)

(declare-fun first6 (t2) integer)

(declare-fun last4 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f1 Int) (l Int))
  (! (=> (in_range f1)
     (=> (in_range l)
     (and (= (to_rep (first6 (mk2 f1 l))) f1)
     (= (to_rep (last4 (mk2 f1 l))) l)))) :pattern ((mk2 f1 l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high) (and (in_range low) (in_range high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int integer))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int integer) (elts2 a))

(define-fun of_array2 ((a (Array Int integer)) (f1 Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f1 l)))

(define-fun first7 ((a us_t2)) Int (to_rep (first6 (rt2 a))))

(define-fun last5 ((a us_t2)) Int (to_rep (last4 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first7 a) (last5 a))
                                    (+ (- (last5 a) (first7 a)) 1) 0))

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

(define-fun bool_eq7 ((x us_t2)
  (y us_t2)) Bool (bool_eq1 (elts2 x) (to_rep (first6 (rt2 x)))
                  (to_rep (last4 (rt2 x))) (elts2 y)
                  (to_rep (first6 (rt2 y))) (to_rep (last4 (rt2 y)))))

(declare-fun user_eq6 (us_t2 us_t2) Bool)

(declare-fun dummy6 () us_t2)

(declare-datatypes () ((vec__ref (mk_vec__ref (vec__content us_t2)))))
(define-fun vec__ref___projection ((a vec__ref)) us_t2 (vec__content a))

(declare-fun p__a__aggregate_def (Int Int Int) us_t1)

;; def_axiom
  (assert
  (forall ((temp___194 Int) (temp___195 Int) (temp___196 Int))
  (let ((temp___193 (p__a__aggregate_def temp___194 temp___195 temp___196)))
  (and
  (=> (dynamic_property4 (- 2147483648) 2147483647 temp___195 temp___196)
  (and (= (first5 temp___193) temp___195) (= (last3 temp___193) temp___196)))
  (forall ((temp___197 Int))
  (= (select (to_array1 temp___193) temp___197) (of_rep temp___194)))))))

(define-fun dynamic_invariant1 ((temp___expr_187 us_t)
  (temp___is_init_184 Bool) (temp___skip_constant_185 Bool)
  (temp___do_toplevel_186 Bool)) Bool (=>
                                      (not (= temp___skip_constant_185 true))
                                      (and (dynamic_property1 r4b 10
                                      (first2 temp___expr_187)
                                      (last1 temp___expr_187))
                                      (and (= (first2 temp___expr_187) 
                                      r4b) (= (last1 temp___expr_187) 10)))))

(declare-fun p__R4b__assume () Int)

(declare-fun temp___199 () (Array Int integer))

(declare-fun temp___1991 () t1)

;; H
  (assert
  (and
  (and (= p__R4b__assume (f Tuple0)) (f__function_guard p__R4b__assume
  Tuple0)) (in_range p__R4b__assume)))

;; H
  (assert (= p__R4b__assume r4b))

;; H
  (assert (in_range r4b))

;; H
  (assert (= (to_rep (first4 (rt1 (p__a__aggregate_def 0 r4b 10)))) r4b))

;; H
  (assert (= (to_rep (last2 (rt1 (p__a__aggregate_def 0 r4b 10)))) 10))

;; H
  (assert
  (= (mk___t1 temp___199 temp___1991) (p__a__aggregate_def 0 r4b 10)))

(assert
;; WP_parameter_def
 ;; File "p.adb", line 10, characters 0-0
  (not
  (= (ite (<= (to_rep (first4 temp___1991)) (to_rep (last2 temp___1991)))
     (+ (- (to_rep (last2 temp___1991)) (to_rep (first4 temp___1991))) 1) 0) 
  (ite (<= r4b 10) (+ (- 10 r4b) 1) 0))))
(check-sat)
