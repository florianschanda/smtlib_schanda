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
                   (=> (<= low high) (and (in_range low) (in_range high))))))

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

(declare-datatypes () ((uc__ref (mk_uc__ref (uc__content us_t)))))
(define-fun uc__ref___projection ((a uc__ref)) us_t (uc__content a))

(declare-sort index 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq2 (index index) Bool)

(declare-fun dummy2 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-sort t1 0)

(declare-fun first2 (t1) integer)

(declare-fun last2 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep (first2 (mk1 f l))) f) (= (to_rep (last2 (mk1 f l))) l)))) :pattern (
  (mk1 f l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high) (and (in_range1 low) (in_range1 high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int integer))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int integer) (elts1 a))

(define-fun of_array1 ((a (Array Int integer)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first3 ((a us_t1)) Int (to_rep (first2 (rt1 a))))

(define-fun last3 ((a us_t1)) Int (to_rep (last2 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last3 a))
                                    (+ (- (last3 a) (first3 a)) 1) 0))

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
  (y us_t1)) Bool (bool_eq1 (elts1 x) (to_rep (first2 (rt1 x)))
                  (to_rep (last2 (rt1 x))) (elts1 y)
                  (to_rep (first2 (rt1 y))) (to_rep (last2 (rt1 y)))))

(declare-fun user_eq3 (us_t1 us_t1) Bool)

(declare-fun dummy3 () us_t1)

(declare-datatypes () ((tcbB__ref (mk_tcbB__ref (tcbB__content us_t1)))))
(define-fun tcbB__ref___projection ((a tcbB__ref)) us_t1 (tcbB__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort t29b 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 6 x) (<= x 10)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq4 (t29b t29b) Bool)

(declare-fun dummy4 () t29b)

(declare-datatypes () ((t29b__ref (mk_t29b__ref (t29b__content t29b)))))
(define-fun t29b__ref___projection ((a t29b__ref)) t29b (t29b__content a))

(declare-sort t31b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 5)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (t31b t31b) Bool)

(declare-fun dummy5 () t31b)

(declare-datatypes () ((t31b__ref (mk_t31b__ref (t31b__content t31b)))))
(define-fun t31b__ref___projection ((a t31b__ref)) t31b (t31b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort t36b 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 6 x) (<= x 10)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (t36b t36b) Bool)

(declare-fun dummy6 () t36b)

(declare-datatypes () ((t36b__ref (mk_t36b__ref (t36b__content t36b)))))
(define-fun t36b__ref___projection ((a t36b__ref)) t36b (t36b__content a))

(declare-sort t38b 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 5)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (t38b t38b) Bool)

(declare-fun dummy7 () t38b)

(declare-datatypes () ((t38b__ref (mk_t38b__ref (t38b__content t38b)))))
(define-fun t38b__ref___projection ((a t38b__ref)) t38b (t38b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_136 us_t)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (not (= temp___skip_constant_134 true))
                                      (dynamic_property (- 2147483648)
                                      2147483647 (first1 temp___expr_136)
                                      (last1 temp___expr_136))))

(define-fun dynamic_invariant2 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 1 10)) (in_range1 temp___expr_141)))

(declare-fun x () (Array Int integer))

(declare-fun d () (Array Int integer))

(declare-fun temp___195 () (Array Int integer))

(declare-fun temp___194 () (Array Int integer))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun temp___196 () (Array Int integer))

(declare-fun temp___1961 () t)

(declare-fun o6 () (Array Int integer))

(declare-fun result () (Array Int integer))

(declare-fun d1 () (Array Int integer))

;; H
  (assert
  (=> (<= 1 5) (and (and (<= 1 1) (<= 1 10)) (and (<= 1 5) (<= 5 10)))))

;; H
  (assert (= temp___195 x))

;; H
  (assert
  (=> (<= 6 10) (and (and (<= 1 6) (<= 6 10)) (and (<= 1 10) (<= 10 10)))))

;; H
  (assert (= temp___194 x))

;; H
  (assert (=> (<= 1 5) (= o (+ (- 5 1) 1))))

;; H
  (assert (=> (not (<= 1 5)) (= o 0)))

;; H
  (assert (=> (<= 6 10) (= o1 (+ (- 10 6) 1))))

;; H
  (assert (=> (not (<= 6 10)) (= o1 0)))

;; H
  (assert (= o2 (+ o1 o)))

;; H
  (assert (= o3 (+ 6 o2)))

;; H
  (assert (= o4 (- o3 1)))

;; H
  (assert (and (= o5 o4) (in_range o4)))

;; H
  (assert (= (concat1 temp___194 6 10 temp___195 1 5) temp___196))

;; H
  (assert (= (mk 6 o5) temp___1961))

;; H
  (assert
  (= (ite (<= (to_rep (first temp___1961)) (to_rep (last temp___1961)))
     (+ (- (to_rep (last temp___1961)) (to_rep (first temp___1961))) 1) 0) 
  (ite (<= 1 10) (+ (- 10 1) 1) 0)))

;; H
  (assert (= o6 (slide temp___196 (to_rep (first temp___1961)) 1)))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref d)))

;; H
  (assert (= d1 o6))

;; H
  (assert (= (to_rep (select d1 1)) (to_rep (select x 6))))

(assert
;; WP_parameter_def
 ;; File "concat.ads", line 8, characters 0-0
  (not (= (to_rep (select d1 6)) (to_rep (select x 1)))))
(check-sat)
