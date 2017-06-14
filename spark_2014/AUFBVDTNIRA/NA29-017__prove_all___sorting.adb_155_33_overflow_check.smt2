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

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

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

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

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
((int_array__ref (mk_int_array__ref (int_array__content us_t)))))
(define-fun int_array__ref___projection ((a int_array__ref)) us_t (int_array__content
                                                                  a))

(declare-fun sorted (us_t Int Int) Bool)

(declare-fun sorted__function_guard (Bool us_t Int Int) Bool)

(define-fun dynamic_invariant1 ((temp___expr_136 us_t)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (not (= temp___skip_constant_134 true))
                                      (dynamic_property 0 2147483647
                                      (first1 temp___expr_136)
                                      (last1 temp___expr_136))))

;; sorted__post_axiom
  (assert true)

(declare-fun perm (us_t us_t Int Int) Bool)

(declare-fun perm__function_guard (Bool us_t us_t Int Int) Bool)

;; perm__post_axiom
  (assert true)

(declare-fun a__first () integer)

(declare-fun a__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun a_first () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun length1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun b__first () integer)

(declare-fun b__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun a () (Array Int integer))

(declare-fun i () Int)

(declare-fun l () Int)

(declare-fun k () Int)

(declare-fun temp___223 () Int)

(declare-fun temp___222 () (Array Int integer))

(declare-fun temp___220 () Int)

(declare-fun temp___219 () (Array Int integer))

(declare-fun o () Int)

(declare-fun o1 () Bool)

(declare-fun o2 () Int)

(declare-fun j () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () Int)

(declare-fun o12 () Int)

(declare-fun o13 () Int)

(declare-fun o14 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () Int)

(declare-fun o17 () Int)

(declare-fun o18 () Bool)

(declare-fun result () Int)

(declare-fun l1 () Int)

(declare-fun a1 () (Array Int integer))

(declare-fun b () (Array Int integer))

(declare-fun i1 () Int)

(declare-fun l2 () Int)

(declare-fun k1 () Int)

(declare-fun result1 () Int)

(declare-fun i2 () Int)

(declare-fun a2 () (Array Int integer))

(declare-fun b1 () (Array Int integer))

(declare-fun i3 () Int)

(declare-fun k2 () Int)

(declare-fun result2 () Bool)

(declare-fun k3 () Int)

(declare-fun a3 () (Array Int integer))

(declare-fun a4 () (Array Int integer))

(declare-fun b2 () (Array Int integer))

(declare-fun i4 () Int)

(declare-fun k4 () Int)

(declare-fun a5 () (Array Int integer))

(declare-fun b3 () (Array Int integer))

(declare-fun i5 () Int)

(declare-fun k5 () Int)

(declare-fun a6 () (Array Int integer))

(declare-fun b4 () (Array Int integer))

(declare-fun i6 () Int)

(declare-fun k6 () Int)

(declare-fun a7 () (Array Int integer))

(declare-fun b5 () (Array Int integer))

(declare-fun i7 () Int)

(declare-fun k7 () Int)

(declare-fun a8 () map__ref)

(declare-fun b6 () map__ref)

(declare-fun i8 () int__ref)

(declare-fun k8 () int__ref)

(declare-fun a9 () (Array Int integer))

(declare-fun b7 () (Array Int integer))

(declare-fun i9 () Int)

(declare-fun k9 () Int)

(declare-fun result3 () Bool)

(define-fun k10 () int__ref (mk_int__ref k6))

(define-fun i10 () int__ref (mk_int__ref i6))

(define-fun b8 () map__ref (mk_map__ref b4))

(define-fun a10 () map__ref (mk_map__ref a6))

;; H
  (assert (dynamic_property 0 2147483647 (to_rep a__first) (to_rep a__last)))

;; H
  (assert (in_range2 a_first))

;; H
  (assert (in_range2 length1))

;; H
  (assert (dynamic_property 0 2147483647 (to_rep b__first) (to_rep b__last)))

;; H
  (assert
  (and
  (and (<= (to_rep a__first) a_first)
  (<= (+ a_first length1) (+ (to_rep a__last) 1)))
  (<= length1 (ite (<= (to_rep b__first) (to_rep b__last))
              (+ (- (to_rep b__last) (to_rep b__first)) 1) 0))))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 i)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 l)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 k)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref l)))

;; H
  (assert (= l1 1))

;; H
  (assert
  (forall ((j1 Int)) (sorted__function_guard
  (sorted (mk___t a1 (mk (to_rep a__first) (to_rep a__last)))
  (+ a_first (* j1 l2))
  (ite (< l2 (- length1 (* j1 l2))) l2 (- length1 (* j1 l2))))
  (mk___t a1 (mk (to_rep a__first) (to_rep a__last))) (+ a_first (* j1 
  l2)) (ite (< l2 (- length1 (* j1 l2))) l2 (- length1 (* j1 l2))))))

;; H
  (assert (perm__function_guard
  (perm (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  (mk___t a1 (mk (to_rep a__first) (to_rep a__last))) a_first length1)
  (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  (mk___t a1 (mk (to_rep a__first) (to_rep a__last))) a_first length1))

;; H
  (assert
  (and
  (and
  (forall ((j1 Int))
  (=> (and (<= 0 j1) (<= j1 2147483647))
  (=> (< (* j1 l2) length1)
  (= (sorted (mk___t a1 (mk (to_rep a__first) (to_rep a__last)))
     (+ a_first (* j1 l2))
     (ite (< l2 (- length1 (* j1 l2))) l2 (- length1 (* j1 l2)))) true))))
  (= (perm (mk___t a (mk (to_rep a__first) (to_rep a__last)))
     (mk___t a1 (mk (to_rep a__first) (to_rep a__last))) a_first length1) true))
  (<= 1 l2)))

;; H
  (assert
  (and
  (and (=> (<= 0 2147483647) (in_range2 i1))
  (=> (<= 0 2147483647) (in_range2 l2)))
  (=> (<= 0 2147483647) (in_range2 k1))))

;; H
  (assert (= i1 result1))

;; H
  (assert (= i2 0))

;; H
  (assert
  (forall ((j1 Int)) (sorted__function_guard
  (sorted (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (+ a_first (* (* j1 l2) 2))
  (ite (< (* l2 2) (- length1 (* (* j1 l2) 2))) (* l2 2) (- length1 (* (* j1 
  l2) 2)))) (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (+ a_first (* (* j1 l2) 2))
  (ite (< (* l2 2) (- length1 (* (* j1 l2) 2))) (* l2 2) (- length1 (* (* j1 
  l2) 2))))))

;; H
  (assert
  (forall ((j1 Int)) (sorted__function_guard
  (sorted (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (+ (+ a_first i3) (* j1 l2))
  (ite (< l2 (- (- length1 i3) (* j1 l2))) l2 (- (- length1 i3) (* j1 
  l2)))) (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (+ (+ a_first i3) (* j1 l2))
  (ite (< l2 (- (- length1 i3) (* j1 l2))) l2 (- (- length1 i3) (* j1 
  l2))))))

;; H
  (assert (perm__function_guard
  (perm (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  (mk___t a2 (mk (to_rep a__first) (to_rep a__last))) a_first length1)
  (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  (mk___t a2 (mk (to_rep a__first) (to_rep a__last))) a_first length1))

;; H
  (assert
  (forall ((j1 Int)) (sorted__function_guard
  (sorted (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (+ a_first (* (* j1 l2) 2))
  (ite (< (* l2 2) (- length1 (* (* j1 l2) 2))) (* l2 2) (- length1 (* (* j1 
  l2) 2)))) (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (+ a_first (* (* j1 l2) 2))
  (ite (< (* l2 2) (- length1 (* (* j1 l2) 2))) (* l2 2) (- length1 (* (* j1 
  l2) 2))))))

;; H
  (assert
  (forall ((j1 Int)) (sorted__function_guard
  (sorted (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (+ (+ a_first i3) (* j1 l2))
  (ite (< l2 (- (- length1 i3) (* j1 l2))) l2 (- (- length1 i3) (* j1 
  l2)))) (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (+ (+ a_first i3) (* j1 l2))
  (ite (< l2 (- (- length1 i3) (* j1 l2))) l2 (- (- length1 i3) (* j1 
  l2))))))

;; H
  (assert (perm__function_guard
  (perm (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  (mk___t a2 (mk (to_rep a__first) (to_rep a__last))) a_first length1)
  (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  (mk___t a2 (mk (to_rep a__first) (to_rep a__last))) a_first length1))

;; H
  (assert (sorted__function_guard
  (sorted (mk___t a3 (mk (to_rep a__first) (to_rep a__last))) o2 (+ l2 k3))
  (mk___t a3 (mk (to_rep a__first) (to_rep a__last))) o2 (+ l2 k3)))

;; H
  (assert (perm__function_guard
  (perm (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (mk___t a3 (mk (to_rep a__first) (to_rep a__last))) o2 (+ l2 k3))
  (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
  (mk___t a3 (mk (to_rep a__first) (to_rep a__last))) o2 (+ l2 k3)))

;; H
  (assert (= temp___223 k1))

;; H
  (assert (= temp___222 a1))

;; H
  (assert (= temp___220 i2))

;; H
  (assert (= temp___219 b))

;; H
  (assert
  (and
  (and
  (and
  (and (and (<= i3 length1) (=> (< i3 length1) (= (mod2 i3 (* l2 2)) 0)))
  (forall ((j1 Int))
  (=> (and (<= 0 j1) (<= j1 2147483647))
  (=> (< (* (* j1 l2) 2) i3)
  (= (sorted (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
     (+ a_first (* (* j1 l2) 2))
     (ite (< (* l2 2) (- length1 (* (* j1 l2) 2))) (* l2 2) (- length1 (* (* j1 
     l2) 2)))) true)))))
  (forall ((j1 Int))
  (=> (and (<= 0 j1) (<= j1 2147483647))
  (=> (< (* j1 l2) (- length1 i3))
  (= (sorted (mk___t a2 (mk (to_rep a__first) (to_rep a__last)))
     (+ (+ a_first i3) (* j1 l2))
     (ite (< l2 (- (- length1 i3) (* j1 l2))) l2 (- (- length1 i3) (* j1 
     l2)))) true)))))
  (= (perm (mk___t a (mk (to_rep a__first) (to_rep a__last)))
     (mk___t a2 (mk (to_rep a__first) (to_rep a__last))) a_first length1) true))
  (<= 1 l2)))

;; H
  (assert
  (and (=> (<= 0 2147483647) (in_range2 i3))
  (=> (<= 0 2147483647) (in_range2 k2))))

;; H
  (assert (= k2 k4))

;; H
  (assert (= i3 i4))

;; H
  (assert (= b1 b2))

;; H
  (assert (= a2 a4))

;; H
  (assert (= k5 k2))

;; H
  (assert (= i5 i3))

;; H
  (assert (= b3 b1))

;; H
  (assert (= a5 a2))

;; H
  (assert (and (= o (- length1 l2)) (in_range1 (- length1 l2))))

;; H
  (assert (= o1 (ite (< i3 o) true false)))

;; H
  (assert (= result2 (ite (not (= o1 true)) true false)))

;; H
  (assert (= result2 true))

;; H
  (assert (= k10 (mk_int__ref k4)))

;; H
  (assert (= i10 (mk_int__ref i4)))

;; H
  (assert (= b8 (mk_map__ref b2)))

;; H
  (assert (= a10 (mk_map__ref a4)))

;; H
  (assert (= k7 k5))

;; H
  (assert (= i7 i5))

;; H
  (assert (= b5 b3))

;; H
  (assert (= a7 a5))

;; H
  (assert (= k8 k10))

;; H
  (assert (= i8 i10))

;; H
  (assert (= b6 b8))

;; H
  (assert (= a8 a10))

;; H
  (assert (= k9 k7))

;; H
  (assert (= i9 i7))

;; H
  (assert (= b7 b5))

;; H
  (assert (= a9 a7))

;; H
  (assert
  (and
  (= o18 (perm (mk___t a (mk (to_rep a__first) (to_rep a__last)))
         (mk___t (map__content a8) (mk (to_rep a__first) (to_rep a__last)))
         a_first length1))
  (perm__function_guard o18
  (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  (mk___t (map__content a8) (mk (to_rep a__first) (to_rep a__last))) 
  a_first length1)))

;; H
  (assert (<= 0 j))

;; H
  (assert (<= j 2147483647))

;; H
  (assert (and (= o3 (* j l2)) (in_range1 (* j l2))))

;; H
  (assert (= o4 (* o3 2)))

;; H
  (assert (and (= o5 o4) (in_range1 o4)))

;; H
  (assert (= result3 (ite (< o5 length1) true false)))

;; H
  (assert (= result3 true))

;; H
  (assert (and (= o10 (* j l2)) (in_range1 (* j l2))))

;; H
  (assert (= o11 (* o10 2)))

;; H
  (assert (and (= o12 o11) (in_range1 o11)))

;; H
  (assert (= o13 (- length1 o12)))

;; H
  (assert (and (= o14 o13) (in_range1 o13)))

;; H
  (assert (and (= o15 (* l2 2)) (in_range1 (* l2 2))))

;; H
  (assert (= o16 (ite (< o15 o14) o15 o14)))

;; H
  (assert (and (= o17 o16) (in_range2 o16)))

;; H
  (assert (and (= o6 (* j l2)) (in_range1 (* j l2))))

;; H
  (assert (= o7 (* o6 2)))

;; H
  (assert (and (= o8 o7) (in_range1 o7)))

;; H
  (assert (= o9 (+ a_first o8)))

(assert
;; WP_parameter_def
 ;; File "sorting.ads", line 13, characters 0-0
  (not (in_range1 o9)))
(check-sat)
