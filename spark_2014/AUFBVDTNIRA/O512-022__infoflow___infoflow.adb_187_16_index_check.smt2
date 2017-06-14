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
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (to_rep (select a temp___idx_133)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_133)))))))
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
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep (select a temp___idx_133)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_133)))))))))))

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

(declare-datatypes () ((arr__ref (mk_arr__ref (arr__content us_t)))))
(define-fun arr__ref___projection ((a arr__ref)) us_t (arr__content a))

(define-fun dynamic_invariant1 ((temp___expr_225 us_t)
  (temp___is_init_222 Bool) (temp___skip_constant_223 Bool)
  (temp___do_toplevel_224 Bool)) Bool (=>
                                      (not (= temp___skip_constant_223 true))
                                      (dynamic_property (- 2147483648)
                                      2147483647 (first1 temp___expr_225)
                                      (last1 temp___expr_225))))

(declare-fun a_v1__first () integer)

(declare-fun a_v1__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun a_v2__first () integer)

(declare-fun a_v2__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun b_v1 () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun c_v1 () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun b_v2 () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun c_v2 () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun k_1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun k_2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

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

(declare-datatypes () ((t42b__ref (mk_t42b__ref (t42b__content integer)))))
(define-fun t42b__ref___projection ((a t42b__ref)) integer (t42b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun first3 () Int)

(declare-fun last3 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes () ((t49b__ref (mk_t49b__ref (t49b__content integer)))))
(define-fun t49b__ref___projection ((a t49b__ref)) integer (t49b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun first4 () Int)

(declare-fun last4 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t62b__ref (mk_t62b__ref (t62b__content integer)))))
(define-fun t62b__ref___projection ((a t62b__ref)) integer (t62b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property4 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes () ((t73b__ref (mk_t73b__ref (t73b__content integer)))))
(define-fun t73b__ref___projection ((a t73b__ref)) integer (t73b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS12 () Int)

(declare-fun i_v1 () Int)

(declare-fun temp___443 () Int)

(declare-fun temp___437 () Int)

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun o2 () Int)

(declare-fun o3 () integer)

(declare-fun a_v1 () (Array Int integer))

(declare-fun result () Int)

(declare-fun i_v11 () Int)

(declare-fun a_v11 () (Array Int integer))

(declare-fun i_v12 () Int)

;; H
  (assert (dynamic_property (- 2147483648) 2147483647 (to_rep a_v1__first)
  (to_rep a_v1__last)))

;; H
  (assert (dynamic_property (- 2147483648) 2147483647 (to_rep a_v2__first)
  (to_rep a_v2__last)))

;; H
  (assert (dynamic_invariant1 b_v1 true false true))

;; H
  (assert (dynamic_invariant1 c_v1 true false true))

;; H
  (assert (dynamic_invariant1 b_v2 true false true))

;; H
  (assert (dynamic_invariant1 c_v2 true false true))

;; H
  (assert (in_range1 k_1))

;; H
  (assert (in_range1 k_2))

;; H
  (assert (in_range1 i))

;; H
  (assert
  (and (= (to_rep a_v1__first) 1)
  (and (= (to_rep (first (rt b_v1))) 1)
  (and (= (to_rep (first (rt c_v1))) 1)
  (and (= (to_rep a_v1__last) (to_rep (last (rt b_v1))))
  (and (= (to_rep a_v1__last) (to_rep (last (rt c_v1))))
  (and
  (and (<= (to_rep (first (rt b_v1))) k_1)
  (<= k_1 (to_rep (last (rt b_v1)))))
  (and (= (to_rep a_v2__first) 1)
  (and (= (to_rep (first (rt b_v2))) 1)
  (and (= (to_rep (first (rt c_v2))) 1)
  (and (= (to_rep a_v2__last) (to_rep (last (rt b_v2))))
  (and (= (to_rep a_v2__last) (to_rep (last (rt c_v2))))
  (and
  (and (<= (to_rep (first (rt b_v2))) k_2)
  (<= k_2 (to_rep (last (rt b_v2)))))
  (= (to_rep a_v1__last) (to_rep a_v2__last)))))))))))))))

;; H
  (assert
  (forall ((m Int))
  (=> (and (<= (to_rep a_v1__first) m) (<= m k_1))
  (= (to_rep (select a_v1 m)) (to_rep (select (elts b_v1) m))))))

;; H
  (assert (and (= temp___443 (+ k_1 1)) (in_range1 (+ k_1 1))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i_v1)))

;; H
  (assert (= i_v11 temp___443))

;; H
  (assert (<= temp___443 i_v11))

;; H
  (assert (<= i_v11 (to_rep a_v1__last)))

;; H
  (assert
  (and
  (forall ((m Int))
  (=> (and (<= (to_rep a_v1__first) m) (<= m k_1))
  (= (to_rep (select a_v11 m)) (to_rep (select (elts b_v1) m)))))
  (forall ((m Int))
  (=> (and (<= (+ k_1 1) m) (<= m (- i_v12 1)))
  (= (to_rep (select a_v11 m)) (to_rep (select (elts c_v1) (- m k_1))))))))

;; H
  (assert
  (and
  (and
  (=> (<= (+ k_1 1) (to_rep a_v1__last)) (dynamic_property2 (+ k_1 1)
  (to_rep a_v1__last) i_v12))
  (forall ((temp___441 Int))
  (=>
  (and (<= (to_rep a_v1__first) temp___441)
  (<= temp___441 (to_rep a_v1__last)))
  (=> (<= i_v12 temp___441)
  (= (select a_v11 temp___441) (select a_v1 temp___441))))))
  (and (<= (+ k_1 1) i_v12) (<= i_v12 (to_rep a_v1__last)))))

;; H
  (assert (and (= temp___437 (- i_v12 k_1)) (in_range1 (- i_v12 k_1))))

;; H
  (assert
  (and (<= (to_rep (first (rt c_v1))) temp___437)
  (<= temp___437 (to_rep (last (rt c_v1))))))

;; H
  (assert (= o temp___437))

;; H
  (assert (= o1 (select (elts c_v1) o)))

;; H
  (assert (= o2 (to_rep o1)))

;; H
  (assert (= (to_rep o3) o2))

(assert
;; WP_parameter_def
 ;; File "infoflow.ads", line 89, characters 0-0
  (not (<= (to_rep a_v1__first) i_v12)))
(check-sat)
