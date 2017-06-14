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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () (Array Int integer))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun a () (Array Int integer))

(declare-fun i () Int)

(declare-fun temp___292 () (Array Int integer))

(declare-fun temp___291 () Int)

(declare-fun o () integer)

(declare-fun o1 () (Array Int integer))

(declare-fun a1 () (Array Int integer))

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () (Array Int integer))

(declare-fun a2 () (Array Int integer))

(declare-fun a3 () (Array Int integer))

(declare-fun i2 () Int)

(declare-fun a4 () (Array Int integer))

(declare-fun i3 () Int)

(declare-fun a5 () (Array Int integer))

(declare-fun i4 () Int)

(declare-fun a6 () (Array Int integer))

(declare-fun i5 () Int)

(declare-fun a7 () (Array Int integer))

(declare-fun i6 () Int)

(declare-fun a8 () (Array Int integer))

(declare-fun i7 () Int)

(declare-fun a9 () (Array Int integer))

(declare-fun i8 () Int)

(define-fun a10 () map__ref (mk_map__ref a6))

(define-fun a11 () map__ref (mk_map__ref a))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i)))

;; H
  (assert (= i1 (- 2147483648)))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= temp___292 a)))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= temp___291 i1)))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647))
  (= (to_rep o) (to_rep (select b i1)))))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= o1 (store a i1 o))))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647))
  (= (mk_map__ref result1) a11)))

;; H
  (assert (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= a2 o1)))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647))
  (forall ((j Int))
  (=> (and (<= (- 2147483648) j) (<= j i2))
  (= (to_rep (select a3 j)) (to_rep (select b j)))))))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647))
  (and
  (and (=> (<= (- 2147483648) 2147483647) (in_range1 i2))
  (forall ((temp___293 Int))
  (=> (and (<= (- 2147483648) temp___293) (<= temp___293 2147483647))
  (=> (< i2 temp___293)
  (= (select a3 temp___293) (select temp___292 temp___293))))))
  (and (<= (- 2147483648) i2) (<= i2 2147483647)))))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= i2 2147483647)))

;; H
  (assert (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= i2 i3)))

;; H
  (assert (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= a3 a4)))

;; H
  (assert (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= i4 i2)))

;; H
  (assert (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= a5 a3)))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647))
  (= (mk_int__ref i5) (mk_int__ref i3))))

;; H
  (assert
  (=> (and (<= (- 2147483648) i1) (<= i1 2147483647))
  (= a10 (mk_map__ref a4))))

;; H
  (assert (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= i6 i4)))

;; H
  (assert (=> (and (<= (- 2147483648) i1) (<= i1 2147483647)) (= a7 a5)))

;; H
  (assert
  (=> (not (and (<= (- 2147483648) i1) (<= i1 2147483647))) (= i1 i5)))

;; H
  (assert
  (=> (not (and (<= (- 2147483648) i1) (<= i1 2147483647))) (= a10 a11)))

;; H
  (assert
  (=> (not (and (<= (- 2147483648) i1) (<= i1 2147483647))) (= i6 i1)))

;; H
  (assert
  (=> (not (and (<= (- 2147483648) i1) (<= i1 2147483647))) (= a7 a1)))

;; H
  (assert (= i7 i5))

;; H
  (assert (= (mk_map__ref a8) a10))

;; H
  (assert (= i8 i6))

;; H
  (assert (= a9 a7))

(assert
;; WP_parameter_def
 ;; File "simple_arrays.adb", line 25, characters 0-0
  (not
  (= (bool_eq1 a8 (- 2147483648) 2147483647 b (- 2147483648) 2147483647) true)))
(check-sat)
