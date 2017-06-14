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
((us_split_fields
 (mk___split_fields
 (rec__test_array_eq__my_rec__f1 integer)(rec__test_array_eq__my_rec__f2 integer)))))
(define-fun us_split_fields_F1__projection ((a us_split_fields)) integer 
  (rec__test_array_eq__my_rec__f1 a))

(define-fun us_split_fields_F2__projection ((a us_split_fields)) integer 
  (rec__test_array_eq__my_rec__f2 a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__test_array_eq__my_rec__f1
                           (us_split_fields1 a))) (to_rep
                                                  (rec__test_array_eq__my_rec__f1
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__test_array_eq__my_rec__f2
                           (us_split_fields1 a))) (to_rep
                                                  (rec__test_array_eq__my_rec__f2
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun test_array_eq__my_rec__f1__first__bit () Int)

(declare-fun test_array_eq__my_rec__f1__last__bit () Int)

(declare-fun test_array_eq__my_rec__f1__position () Int)

;; test_array_eq__my_rec__f1__first__bit_axiom
  (assert (<= 0 test_array_eq__my_rec__f1__first__bit))

;; test_array_eq__my_rec__f1__last__bit_axiom
  (assert
  (< test_array_eq__my_rec__f1__first__bit test_array_eq__my_rec__f1__last__bit))

;; test_array_eq__my_rec__f1__position_axiom
  (assert (<= 0 test_array_eq__my_rec__f1__position))

(declare-fun test_array_eq__my_rec__f2__first__bit () Int)

(declare-fun test_array_eq__my_rec__f2__last__bit () Int)

(declare-fun test_array_eq__my_rec__f2__position () Int)

;; test_array_eq__my_rec__f2__first__bit_axiom
  (assert (<= 0 test_array_eq__my_rec__f2__first__bit))

;; test_array_eq__my_rec__f2__last__bit_axiom
  (assert
  (< test_array_eq__my_rec__f2__first__bit test_array_eq__my_rec__f2__last__bit))

;; test_array_eq__my_rec__f2__position_axiom
  (assert (<= 0 test_array_eq__my_rec__f2__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep (my_rec__content
                                                              a))

(declare-sort tmy_arrayD1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq2 (tmy_arrayD1 tmy_arrayD1) Bool)

(declare-fun dummy2 () tmy_arrayD1)

(declare-datatypes ()
((tmy_arrayD1__ref (mk_tmy_arrayD1__ref (tmy_arrayD1__content tmy_arrayD1)))))
(define-fun tmy_arrayD1__ref___projection ((a tmy_arrayD1__ref)) tmy_arrayD1 
  (tmy_arrayD1__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int us_rep) Int Int (Array Int us_rep) Int
  Int) (Array Int us_rep))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (us_rep Int) (Array Int us_rep))

;; singleton_def
  (assert
  (forall ((v us_rep))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (user_eq1 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (user_eq1 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-sort t3b 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (t3b t3b) Bool)

(declare-fun dummy3 () t3b)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content t3b)))))
(define-fun t3b__ref___projection ((a t3b__ref)) t3b (t3b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t5b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (t5b t5b) Bool)

(declare-fun dummy4 () t5b)

(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content t5b)))))
(define-fun t5b__ref___projection ((a t5b__ref)) t5b (t5b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun test_array_eq__a__aggregate_def (us_rep
  us_rep) (Array Int us_rep))

;; def_axiom
  (assert
  (forall ((temp___190 us_rep) (temp___191 us_rep))
  (let ((temp___189 (test_array_eq__a__aggregate_def temp___190 temp___191)))
  (and (= (select temp___189 1) temp___190)
  (= (select temp___189 2) temp___191)))))

(declare-fun test_array_eq__b__aggregate_def (us_rep
  us_rep) (Array Int us_rep))

;; def_axiom
  (assert
  (forall ((temp___194 us_rep) (temp___195 us_rep))
  (let ((temp___193 (test_array_eq__b__aggregate_def temp___194 temp___195)))
  (and (= (select temp___193 1) temp___194)
  (= (select temp___193 2) temp___195)))))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (and (oeq__function_guard (oeq a b) a b) (= (user_eq1 a b) (oeq a b))) :pattern (
  (user_eq1 a b)) )))

;; oeq__post_axiom
  (assert true)

;; oeq__def_axiom
  (assert
  (forall ((x us_rep) (y us_rep))
  (! (=> (oeq__function_guard (oeq x y) x y)
     (= (= (oeq x y) true)
     (= (to_rep (rec__test_array_eq__my_rec__f1 (us_split_fields1 x))) 
     (to_rep (rec__test_array_eq__my_rec__f1 (us_split_fields1 y)))))) :pattern (
  (oeq x y)) )))

(declare-fun a () (Array Int us_rep))

(declare-fun b () (Array Int us_rep))

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () integer)

(declare-fun o4 () integer)

(declare-fun o5 () integer)

(declare-fun o6 () integer)

(declare-fun o7 () integer)

(declare-fun o8 () integer)

(declare-fun o9 () integer)

(declare-fun o10 () integer)

(declare-fun o11 () integer)

(declare-fun o12 () (Array Int us_rep))

(declare-fun o13 () integer)

(declare-fun o14 () integer)

(declare-fun o15 () integer)

(declare-fun o16 () integer)

(declare-fun o17 () integer)

(declare-fun o18 () integer)

(declare-fun o19 () integer)

(declare-fun o20 () integer)

(declare-fun o21 () integer)

(declare-fun o22 () integer)

(declare-fun o23 () integer)

(declare-fun o24 () integer)

(declare-fun o25 () (Array Int us_rep))

(declare-fun result () (Array Int us_rep))

(declare-fun a1 () (Array Int us_rep))

(declare-fun result1 () (Array Int us_rep))

(declare-fun b1 () (Array Int us_rep))

;; H
  (assert (= (to_rep o4) 4))

;; H
  (assert (= (to_rep o5) 3))

;; H
  (assert (= o5 o6))

;; H
  (assert (= o4 o7))

;; H
  (assert (= o8 o6))

;; H
  (assert (= o9 o7))

;; H
  (assert (= (to_rep o) 2))

;; H
  (assert (= (to_rep o1) 1))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= o10 o2))

;; H
  (assert (= o11 o3))

;; H
  (assert
  (= o12 (test_array_eq__a__aggregate_def
         (mk___rep (mk___split_fields o10 o11))
         (mk___rep (mk___split_fields o8 o9)))))

;; H
  (assert (= result a))

;; H
  (assert (= a1 o12))

;; H
  (assert (= (to_rep o17) 3))

;; H
  (assert (= (to_rep o18) 3))

;; H
  (assert (= o18 o19))

;; H
  (assert (= o17 o20))

;; H
  (assert (= o21 o19))

;; H
  (assert (= o22 o20))

;; H
  (assert (= (to_rep o13) 1))

;; H
  (assert (= (to_rep o14) 1))

;; H
  (assert (= o14 o15))

;; H
  (assert (= o13 o16))

;; H
  (assert (= o23 o15))

;; H
  (assert (= o24 o16))

;; H
  (assert
  (= o25 (test_array_eq__b__aggregate_def
         (mk___rep (mk___split_fields o23 o24))
         (mk___rep (mk___split_fields o21 o22)))))

;; H
  (assert (= result1 b))

;; H
  (assert (= b1 o25))

(assert
;; WP_parameter_def
 ;; File "test_array_eq.adb", line 7, characters 0-0
  (not (= (bool_eq3 a1 1 2 b1 1 2) true)))
(check-sat)
