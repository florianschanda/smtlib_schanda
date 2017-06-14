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

(declare-sort position 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (position position) Bool)

(declare-fun dummy1 () position)

(declare-datatypes ()
((position__ref (mk_position__ref (position__content position)))))
(define-fun position__ref___projection ((a position__ref)) position (position__content
                                                                    a))

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

(declare-fun no_v_in_range ((Array Int integer) Int Int Int) Bool)

(declare-fun no_v_in_range__function_guard (Bool (Array Int integer) Int Int
  Int) Bool)

(define-fun dynamic_invariant1 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 1 10)) (in_range2 temp___expr_136)))

;; no_v_in_range__post_axiom
  (assert true)

;; no_v_in_range__def_axiom
  (assert
  (forall ((t (Array Int integer)))
  (forall ((v Int) (low Int) (up Int))
  (! (=> (no_v_in_range__function_guard (no_v_in_range t v low up) t v low
     up)
     (= (= (no_v_in_range t v low up) true)
     (forall ((pos Int))
     (=> (and (<= low pos) (<= pos up)) (not (= (to_rep (select t pos)) v)))))) :pattern (
  (no_v_in_range t v low up)) ))))

(declare-fun t () (Array Int integer))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun v () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort t1b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t1b t1b) Bool)

(declare-fun dummy2 () t1b)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun pos () Int)

(declare-fun i () Int)

(declare-fun search__search__result () Int)

(declare-fun temp___158 () Int)

(declare-fun temp___157 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () integer)

(declare-fun o3 () Int)

(declare-fun result () Int)

(declare-fun pos1 () Int)

(declare-fun result1 () Int)

(declare-fun i1 () Int)

(declare-fun pos2 () Int)

(declare-fun i2 () Int)

(declare-fun result2 () Int)

(declare-fun pos3 () Int)

(declare-fun pos4 () Int)

(declare-fun i3 () Int)

(declare-fun pos5 () Int)

(declare-fun i4 () Int)

(declare-fun pos6 () Int)

(declare-fun i5 () Int)

(declare-fun pos7 () Int)

(declare-fun i6 () Int)

(declare-fun result3 () Int)

(declare-fun search__search__result1 () Int)

(declare-fun search__search__result2 () Int)

(declare-fun search__search__result3 () Int)

(declare-fun pos8 () Int)

(declare-fun i7 () Int)

(declare-fun search__search__result4 () Int)

(declare-fun pos9 () Int)

(declare-fun i8 () Int)

(declare-fun search__search__result5 () Int)

(declare-fun result4 () Bool)

(declare-fun result5 () Bool)

(define-fun i9 () int__ref (mk_int__ref i5))

(define-fun pos10 () int__ref (mk_int__ref pos6))

;; H
  (assert (in_range1 v))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref pos)))

;; H
  (assert (= pos1 0))

;; H
  (assert (in_range1 pos1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref i)))

;; H
  (assert (= i1 1))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= temp___158 i1)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= temp___157 pos1)))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 10))
  (or
  (and (= pos2 0)
  (forall ((j Int))
  (=> (and (<= 1 j) (<= j (- i2 1))) (not (= (to_rep (select t j)) v)))))
  (and (= (to_rep (select t pos2)) v)
  (forall ((j Int))
  (=> (and (<= 1 j) (<= j (- pos2 1))) (not (= (to_rep (select t j)) v))))))))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 10))
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 pos2))
  (=> (<= 1 10) (in_range3 i2))) (and (<= 1 i2) (<= i2 10)))))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 10))
  (=> (= (to_rep (select t i2)) v) (= pos2 result2))))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 10))
  (=> (= (to_rep (select t i2)) v) (= pos3 i2))))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 10))
  (=> (not (= (to_rep (select t i2)) v)) (= pos3 pos2))))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= i2 10)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= i2 i3)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= pos3 pos4)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= i4 i2)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= pos5 pos3)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= i9 (mk_int__ref i3))))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= pos10 (mk_int__ref pos4))))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= i6 i4)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 10)) (= pos7 pos5)))

;; H
  (assert (=> (not (and (<= 1 i1) (<= i1 10))) (= i1 i5)))

;; H
  (assert (=> (not (and (<= 1 i1) (<= i1 10))) (= pos1 pos6)))

;; H
  (assert (=> (not (and (<= 1 i1) (<= i1 10))) (= i6 i1)))

;; H
  (assert (=> (not (and (<= 1 i1) (<= i1 10))) (= pos7 pos1)))

;; H
  (assert (= search__search__result1 search__search__result2))

;; H
  (assert (= search__search__result3 search__search__result1))

;; H
  (assert (= (mk_int__ref result3) (mk_int__ref search__search__result)))

;; H
  (assert (= search__search__result1 pos6))

;; H
  (assert
  (= (mk_int__ref search__search__result4) (mk_int__ref
                                           search__search__result2)))

;; H
  (assert (= (mk_int__ref i7) i9))

;; H
  (assert (= (mk_int__ref pos8) pos10))

;; H
  (assert (= search__search__result5 search__search__result3))

;; H
  (assert (= i8 i6))

;; H
  (assert (= pos9 pos7))

;; H
  (assert
  (=> (= search__search__result4 0)
  (and
  (and (= result4 (no_v_in_range t v 1 10)) (no_v_in_range__function_guard
  result4 t v 1 10))
  (= (= result4 true)
  (forall ((pos11 Int))
  (=> (and (<= 1 pos11) (<= pos11 10)) (not (= (to_rep (select t pos11)) v))))))))

;; H
  (assert (=> (not (= search__search__result4 0)) (= result4 false)))

;; H
  (assert (not (= result4 true)))

;; H
  (assert
  (and (<= 1 search__search__result4) (<= search__search__result4 10)))

;; H
  (assert (= o1 search__search__result4))

;; H
  (assert (= o2 (select t o1)))

;; H
  (assert (= o3 (to_rep o2)))

;; H
  (assert (= result5 (ite (= o3 v) true false)))

;; H
  (assert (= result5 true))

;; H
  (assert
  (and (= o (- search__search__result4 1)) (in_range1
  (- search__search__result4 1))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range2 o)))
(check-sat)
