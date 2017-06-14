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

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (positive positive) Bool)

(declare-fun dummy2 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
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

(define-fun bool_eq3 ((a (Array Int integer)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
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
  (forall ((a (Array Int integer)) (b (Array Int integer)))
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

(declare-sort tTaSP1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (tTaSP1 tTaSP1) Bool)

(declare-fun dummy3 () tTaSP1)

(declare-datatypes ()
((tTaSP1__ref (mk_tTaSP1__ref (tTaSP1__content tTaSP1)))))
(define-fun tTaSP1__ref___projection ((a tTaSP1__ref)) tTaSP1 (tTaSP1__content
                                                              a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun a () (Array Int integer))

(declare-fun l () Int)

(declare-fun longest_common_prefix__lcp__result () Int)

(declare-fun temp___159 () Int)

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun temp___160 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () integer)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun temp___155 () Int)

(declare-fun temp___158 () Int)

(declare-fun o8 () Int)

(declare-fun temp___1591 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () integer)

(declare-fun temp___1601 () Int)

(declare-fun o11 () Int)

(declare-fun o12 () integer)

(declare-fun o13 () Int)

(declare-fun o14 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () Int)

(declare-fun o17 () Bool)

(declare-fun i () Int)

(declare-fun temp___161 () Int)

(declare-fun temp___162 () Int)

(declare-fun o18 () Int)

(declare-fun o19 () integer)

(declare-fun o20 () Int)

(declare-fun result () Int)

(declare-fun l1 () Int)

(declare-fun result1 () Bool)

(declare-fun result2 () Bool)

(declare-fun result3 () Bool)

(declare-fun l2 () Int)

(declare-fun temp___1581 () Int)

(declare-fun result4 () Int)

(declare-fun temp___1582 () Int)

(declare-fun result5 () Int)

(declare-fun l3 () Int)

(declare-fun result6 () Bool)

(declare-fun result7 () Bool)

(declare-fun result8 () Bool)

(declare-fun l4 () Int)

(declare-fun l5 () Int)

(declare-fun l6 () Int)

(declare-fun l7 () Int)

(declare-fun result9 () Int)

(declare-fun longest_common_prefix__lcp__result1 () Int)

(declare-fun longest_common_prefix__lcp__result2 () Int)

(declare-fun longest_common_prefix__lcp__result3 () Int)

(declare-fun l8 () Int)

(declare-fun longest_common_prefix__lcp__result4 () Int)

(declare-fun l9 () Int)

(declare-fun longest_common_prefix__lcp__result5 () Int)

(define-fun l10 () int__ref (mk_int__ref l6))

;; H
  (assert (in_range3 x))

;; H
  (assert (in_range3 y))

;; H
  (assert (and (and (<= 1 x) (<= x 1000)) (and (<= 1 y) (<= y 1000))))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 l)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref l)))

;; H
  (assert (= l1 0))

;; H
  (assert (and (= o7 (+ x l1)) (in_range1 (+ x l1))))

;; H
  (assert (= result3 (ite (<= o7 1000) true false)))

;; H
  (assert (=> (= result3 true) (and (= o6 (+ y l1)) (in_range1 (+ y l1)))))

;; H
  (assert (=> (= result3 true) (= result2 (ite (<= o6 1000) true false))))

;; H
  (assert (=> (not (= result3 true)) (= result2 false)))

;; H
  (assert
  (=> (= result2 true) (and (= temp___160 (+ y l1)) (in_range1 (+ y l1)))))

;; H
  (assert (=> (= result2 true) (and (<= 1 temp___160) (<= temp___160 1000))))

;; H
  (assert (=> (= result2 true) (= o2 temp___160)))

;; H
  (assert (=> (= result2 true) (= o3 (select a o2))))

;; H
  (assert (=> (= result2 true) (= o4 (to_rep o3))))

;; H
  (assert
  (=> (= result2 true) (and (= temp___159 (+ x l1)) (in_range1 (+ x l1)))))

;; H
  (assert (=> (= result2 true) (and (<= 1 temp___159) (<= temp___159 1000))))

;; H
  (assert (=> (= result2 true) (= o temp___159)))

;; H
  (assert (=> (= result2 true) (= o1 (select a o))))

;; H
  (assert (=> (= result2 true) (= o5 (to_rep o1))))

;; H
  (assert (=> (= result2 true) (= result1 (ite (= o5 o4) true false))))

;; H
  (assert (=> (not (= result2 true)) (= result1 false)))

;; H
  (assert (=> (= result1 true) (= temp___155 l1)))

;; H
  (assert (=> (= result1 true) (= 0 temp___158)))

;; H
  (assert
  (=> (= result1 true)
  (forall ((k Int))
  (=> (and (<= 0 k) (<= k (- l2 1)))
  (= (to_rep (select a (+ x k))) (to_rep (select a (+ y k))))))))

;; H
  (assert
  (=> (= result1 true)
  (and (=> (<= 0 2147483647) (in_range2 l2))
  (and (and (<= (+ x l2) 1000) (<= (+ y l2) 1000))
  (= (to_rep (select a (+ x l2))) (to_rep (select a (+ y l2))))))))

;; H
  (assert (=> (= result1 true) (= temp___1581 result4)))

;; H
  (assert (=> (= result1 true) (= temp___1582 l2)))

;; H
  (assert (=> (= result1 true) (and (= o8 (+ l2 1)) (in_range1 (+ l2 1)))))

;; H
  (assert (=> (= result1 true) (= l2 result5)))

;; H
  (assert (=> (= result1 true) (= l3 o8)))

;; H
  (assert (=> (= result1 true) (and (= o16 (+ x l3)) (in_range1 (+ x l3)))))

;; H
  (assert (=> (= result1 true) (= result8 (ite (<= o16 1000) true false))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result8 true) (and (= o15 (+ y l3)) (in_range1 (+ y l3))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result8 true) (= result7 (ite (<= o15 1000) true false)))))

;; H
  (assert
  (=> (= result1 true) (=> (not (= result8 true)) (= result7 false))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result7 true) (and (= temp___1601 (+ y l3)) (in_range1 (+ y l3))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result7 true) (and (<= 1 temp___1601) (<= temp___1601 1000)))))

;; H
  (assert (=> (= result1 true) (=> (= result7 true) (= o11 temp___1601))))

;; H
  (assert (=> (= result1 true) (=> (= result7 true) (= o12 (select a o11)))))

;; H
  (assert (=> (= result1 true) (=> (= result7 true) (= o13 (to_rep o12)))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result7 true) (and (= temp___1591 (+ x l3)) (in_range1 (+ x l3))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result7 true) (and (<= 1 temp___1591) (<= temp___1591 1000)))))

;; H
  (assert (=> (= result1 true) (=> (= result7 true) (= o9 temp___1591))))

;; H
  (assert (=> (= result1 true) (=> (= result7 true) (= o10 (select a o9)))))

;; H
  (assert (=> (= result1 true) (=> (= result7 true) (= o14 (to_rep o10)))))

;; H
  (assert
  (=> (= result1 true)
  (=> (= result7 true) (= o17 (ite (= o14 o13) true false)))))

;; H
  (assert (=> (= result1 true) (=> (not (= result7 true)) (= o17 false))))

;; H
  (assert
  (=> (= result1 true) (= result6 (ite (not (= o17 true)) true false))))

;; H
  (assert (=> (= result1 true) (= result6 true)))

;; H
  (assert (=> (= result1 true) (= l3 l4)))

;; H
  (assert (=> (= result1 true) (= l5 l3)))

;; H
  (assert (=> (= result1 true) (= l10 (mk_int__ref l4))))

;; H
  (assert (=> (= result1 true) (= l7 l5)))

;; H
  (assert (=> (not (= result1 true)) (= l1 l6)))

;; H
  (assert (=> (not (= result1 true)) (= l7 l1)))

;; H
  (assert
  (= longest_common_prefix__lcp__result1 longest_common_prefix__lcp__result2))

;; H
  (assert
  (= longest_common_prefix__lcp__result3 longest_common_prefix__lcp__result1))

;; H
  (assert
  (= (mk_int__ref result9) (mk_int__ref longest_common_prefix__lcp__result)))

;; H
  (assert (= longest_common_prefix__lcp__result1 l6))

;; H
  (assert
  (= (mk_int__ref longest_common_prefix__lcp__result4) (mk_int__ref
                                                       longest_common_prefix__lcp__result2)))

;; H
  (assert (= (mk_int__ref l8) l10))

;; H
  (assert
  (= longest_common_prefix__lcp__result5 longest_common_prefix__lcp__result3))

;; H
  (assert (= l9 l7))

;; H
  (assert (<= 0 i))

;; H
  (assert (<= i (- longest_common_prefix__lcp__result4 1)))

;; H
  (assert (and (= temp___162 (+ y i)) (in_range1 (+ y i))))

;; H
  (assert (and (<= 1 temp___162) (<= temp___162 1000)))

;; H
  (assert (= o18 temp___162))

;; H
  (assert (= o19 (select a o18)))

;; H
  (assert (= o20 (to_rep o19)))

;; H
  (assert (and (= temp___161 (+ x i)) (in_range1 (+ x i))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (<= 1 temp___161)))
(check-sat)
