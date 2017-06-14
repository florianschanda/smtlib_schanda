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

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant3 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 1 1000000)) (in_range3
                                      temp___expr_136)))

(declare-fun l () Int)

(declare-fun j () Int)

(declare-fun lcp__result () Int)

(declare-fun temp___158 () Int)

(declare-fun temp___159 () Int)

(declare-fun temp___157 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Bool)

(declare-fun o3 () Bool)

(declare-fun o4 () Bool)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Bool)

(declare-fun o8 () Bool)

(declare-fun o9 () Bool)

(declare-fun temp___155 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () integer)

(declare-fun temp___156 () Int)

(declare-fun o12 () Int)

(declare-fun o13 () integer)

(declare-fun o14 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () Bool)

(declare-fun o17 () Int)

(declare-fun lcp__result1 () Int)

(declare-fun result () Int)

(declare-fun l1 () Int)

(declare-fun result1 () Int)

(declare-fun j1 () Int)

(declare-fun l2 () Int)

(declare-fun j2 () Int)

(declare-fun lcp__result2 () Int)

(declare-fun result2 () Bool)

(declare-fun result3 () Bool)

(declare-fun result4 () Int)

(declare-fun lcp__result3 () Int)

(declare-fun result5 () Bool)

(declare-fun result6 () Int)

(declare-fun lcp__result4 () Int)

(declare-fun result7 () Int)

(declare-fun l3 () Int)

(declare-fun lcp__result5 () Int)

(declare-fun lcp__result6 () Int)

(declare-fun l4 () Int)

(declare-fun j3 () Int)

(declare-fun lcp__result7 () Int)

(declare-fun l5 () Int)

(declare-fun j4 () Int)

(declare-fun lcp__result8 () Int)

(declare-fun l6 () Int)

(declare-fun j5 () Int)

(declare-fun lcp__result9 () Int)

(declare-fun l7 () Int)

(declare-fun j6 () Int)

(declare-fun lcp__result10 () Int)

(declare-fun result8 () Int)

(declare-fun lcp__result11 () Int)

(declare-fun lcp__result12 () Int)

(declare-fun lcp__result13 () Int)

(declare-fun l8 () Int)

(declare-fun j7 () int__ref)

(declare-fun lcp__result14 () int__ref)

(declare-fun l9 () Int)

(declare-fun j8 () Int)

(declare-fun lcp__result15 () Int)

(declare-fun l10 () int__ref)

(declare-fun j9 () int__ref)

(declare-fun lcp__result16 () int__ref)

(declare-fun l11 () Int)

(declare-fun j10 () Int)

(declare-fun lcp__result17 () Int)

(declare-fun result9 () Bool)

(define-fun l12 () int__ref (mk_int__ref l8))

(define-fun lcp__result18 () int__ref (mk_int__ref lcp__result9))

(define-fun j11 () int__ref (mk_int__ref j5))

(define-fun l13 () int__ref (mk_int__ref l6))

(define-fun result10 () int__ref (mk_int__ref result1))

(define-fun j12 () int__ref (mk_int__ref j))

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
  (assert (= (mk_int__ref result) (mk_int__ref l)))

;; H
  (assert (= l1 0))

;; H
  (assert (in_range2 l1))

;; H
  (assert
  (or
  (and
  (and
  (and (= lcp__result14 (mk_int__ref lcp__result5))
  (and (= j7 (mk_int__ref j2)) (= l2 l8)))
  (and (= lcp__result15 lcp__result6) (and (= j8 j2) (= l9 l2))))
  (and (= temp___158 (to_rep (first (rt a))))
  (and (= temp___159 (to_rep (last (rt a))))
  (and (and (= result10 j12) (= j1 temp___158))
  (and (and (<= temp___158 j1) (<= j1 temp___159))
  (and (= temp___157 l1)
  (and
  (and (=> (<= 0 2147483647) (in_range2 l2))
  (and (<= (to_rep (first (rt a))) j2) (<= j2 (to_rep (last (rt a))))))
  (or
  (and (and (= lcp__result3 lcp__result5) (= lcp__result6 lcp__result3))
  (and
  (and
  (and
  (and
  (and (and (= o6 (+ x l2)) (in_range1 (+ x l2)))
  (= o7 (ite (<= o6 (to_rep (last (rt a)))) true false)))
  (and
  (and (and (= o5 (+ x l2)) (in_range1 (+ x l2)))
  (= o8 (ite (<= (to_rep (first (rt a))) o5) true false)))
  (= o9 (ite (= o8 true) o7 false))))
  (= result3 (ite (not (= o9 true)) true false)))
  (ite (= result3 true) (= result2 true)
  (and
  (and
  (and (and (= o1 (+ y l2)) (in_range1 (+ y l2)))
  (= o2 (ite (<= o1 (to_rep (last (rt a)))) true false)))
  (and
  (and (and (= o (+ y l2)) (in_range1 (+ y l2)))
  (= o3 (ite (<= (to_rep (first (rt a))) o) true false)))
  (= o4 (ite (= o3 true) o2 false))))
  (= result2 (ite (not (= o4 true)) true false)))))
  (and (= result2 true) (and (= lcp__result2 result4) (= lcp__result3 l2)))))
  (and
  (and
  (and
  (and
  (and
  (and (and (= o6 (+ x l2)) (in_range1 (+ x l2)))
  (= o7 (ite (<= o6 (to_rep (last (rt a)))) true false)))
  (and
  (and (and (= o5 (+ x l2)) (in_range1 (+ x l2)))
  (= o8 (ite (<= (to_rep (first (rt a))) o5) true false)))
  (= o9 (ite (= o8 true) o7 false))))
  (= result3 (ite (not (= o9 true)) true false)))
  (ite (= result3 true) (= result2 true)
  (and
  (and
  (and (and (= o1 (+ y l2)) (in_range1 (+ y l2)))
  (= o2 (ite (<= o1 (to_rep (last (rt a)))) true false)))
  (and
  (and (and (= o (+ y l2)) (in_range1 (+ y l2)))
  (= o3 (ite (<= (to_rep (first (rt a))) o) true false)))
  (= o4 (ite (= o3 true) o2 false))))
  (= result2 (ite (not (= o4 true)) true false)))))
  (and (not (= result2 true)) (= lcp__result3 lcp__result2)))
  (and (and (= lcp__result4 lcp__result5) (= lcp__result6 lcp__result4))
  (and
  (and
  (and
  (and
  (and
  (and (and (= temp___156 (+ y l2)) (in_range1 (+ y l2)))
  (and
  (and (<= (to_rep (first (rt a))) temp___156)
  (<= temp___156 (to_rep (last (rt a))))) (= o12 temp___156)))
  (= o13 (select (elts a) o12))) (= o14 (to_rep o13)))
  (and
  (and
  (and
  (and (and (= temp___155 (+ x l2)) (in_range1 (+ x l2)))
  (and
  (and (<= (to_rep (first (rt a))) temp___155)
  (<= temp___155 (to_rep (last (rt a))))) (= o10 temp___155)))
  (= o11 (select (elts a) o10))) (= o15 (to_rep o11)))
  (= o16 (ite (= o15 o14) true false))))
  (= result5 (ite (not (= o16 true)) true false)))
  (and (= result5 true) (and (= lcp__result3 result6) (= lcp__result4 l2))))))))))))))
  (and
  (and (and (= result10 j12) (= j1 (to_rep (first (rt a)))))
  (ite (and (<= (to_rep (first (rt a))) j1) (<= j1 (to_rep (last (rt a)))))
  (and
  (and
  (and (= temp___157 l1)
  (and
  (and (=> (<= 0 2147483647) (in_range2 l2))
  (and (<= (to_rep (first (rt a))) j2) (<= j2 (to_rep (last (rt a))))))
  (and
  (and
  (and
  (and
  (and
  (and (and (= o6 (+ x l2)) (in_range1 (+ x l2)))
  (= o7 (ite (<= o6 (to_rep (last (rt a)))) true false)))
  (and
  (and (and (= o5 (+ x l2)) (in_range1 (+ x l2)))
  (= o8 (ite (<= (to_rep (first (rt a))) o5) true false)))
  (= o9 (ite (= o8 true) o7 false))))
  (= result3 (ite (not (= o9 true)) true false)))
  (ite (= result3 true) (= result2 true)
  (and
  (and
  (and (and (= o1 (+ y l2)) (in_range1 (+ y l2)))
  (= o2 (ite (<= o1 (to_rep (last (rt a)))) true false)))
  (and
  (and (and (= o (+ y l2)) (in_range1 (+ y l2)))
  (= o3 (ite (<= (to_rep (first (rt a))) o) true false)))
  (= o4 (ite (= o3 true) o2 false))))
  (= result2 (ite (not (= o4 true)) true false)))))
  (and (not (= result2 true)) (= lcp__result3 lcp__result2)))
  (and
  (and
  (and
  (and
  (and
  (and
  (and (and (= temp___156 (+ y l2)) (in_range1 (+ y l2)))
  (and
  (and (<= (to_rep (first (rt a))) temp___156)
  (<= temp___156 (to_rep (last (rt a))))) (= o12 temp___156)))
  (= o13 (select (elts a) o12))) (= o14 (to_rep o13)))
  (and
  (and
  (and
  (and (and (= temp___155 (+ x l2)) (in_range1 (+ x l2)))
  (and
  (and (<= (to_rep (first (rt a))) temp___155)
  (<= temp___155 (to_rep (last (rt a))))) (= o10 temp___155)))
  (= o11 (select (elts a) o10))) (= o15 (to_rep o11)))
  (= o16 (ite (= o15 o14) true false))))
  (= result5 (ite (not (= o16 true)) true false)))
  (and (not (= result5 true)) (= lcp__result4 lcp__result3)))
  (and
  (and (and (= o17 (+ l2 1)) (in_range1 (+ l2 1)))
  (and (= l2 result7) (= l3 o17))) (= j2 (to_rep (last (rt a)))))))))
  (and (and (= lcp__result4 lcp__result7) (and (= j2 j3) (= l3 l4)))
  (and (= lcp__result8 lcp__result4) (and (= j4 j2) (= l5 l3)))))
  (and
  (and (= lcp__result18 (mk_int__ref lcp__result7))
  (and (= j11 (mk_int__ref j3)) (= l13 (mk_int__ref l4))))
  (and (= lcp__result10 lcp__result8) (and (= j6 j4) (= l7 l5)))))
  (and
  (and (= lcp__result18 (mk_int__ref lcp__result)) (and (= j1 j5) (= l1 l6)))
  (and (= lcp__result10 lcp__result1) (and (= j6 j1) (= l7 l1))))))
  (and
  (and
  (and (= lcp__result14 (mk_int__ref lcp__result12))
  (and (= j7 j11) (= l12 l13)))
  (and (= lcp__result15 lcp__result13) (and (= j8 j6) (= l9 l7))))
  (and (and (= lcp__result11 lcp__result12) (= lcp__result13 lcp__result11))
  (and (= (mk_int__ref result8) lcp__result18) (= lcp__result11 l6)))))))

;; H
  (assert (= lcp__result16 lcp__result14))

;; H
  (assert (= j9 j7))

;; H
  (assert (= l10 l12))

;; H
  (assert (= lcp__result17 lcp__result15))

;; H
  (assert (= j10 j8))

;; H
  (assert (= l11 l9))

;; H
  (assert
  (= (= result9 true)
  (forall ((k Int))
  (=> (and (<= 0 k) (<= k (int__content lcp__result16)))
  (= (to_rep (select (elts a) (+ x k))) (to_rep (select (elts a) (+ y k))))))))

;; H
  (assert (= result9 true))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range1 (+ x (int__content lcp__result16)))))
(check-sat)
