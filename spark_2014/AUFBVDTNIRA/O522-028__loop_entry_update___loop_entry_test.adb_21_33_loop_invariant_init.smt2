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

(declare-sort index_t 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (index_t index_t) Bool)

(declare-fun dummy () index_t)

(declare-datatypes ()
((index_t__ref (mk_index_t__ref (index_t__content index_t)))))
(define-fun index_t__ref___projection ((a index_t__ref)) index_t (index_t__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_184 Int)
  (temp___is_init_181 Bool) (temp___skip_constant_182 Bool)
  (temp___do_toplevel_183 Bool)) Bool (=>
                                      (or (= temp___is_init_181 true)
                                      (<= 1 1000)) (in_range1
                                      temp___expr_184)))

(declare-sort component_t 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (component_t component_t) Bool)

(declare-fun dummy1 () component_t)

(declare-datatypes ()
((component_t__ref (mk_component_t__ref (component_t__content component_t)))))
(define-fun component_t__ref___projection ((a component_t__ref)) component_t 
  (component_t__content a))

(declare-fun to_rep (component_t) Int)

(declare-fun of_rep (Int) component_t)

;; inversion_axiom
  (assert
  (forall ((x component_t))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x component_t)) (! (in_range2
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int component_t))))))
(declare-fun slide ((Array Int component_t) Int Int) (Array Int component_t))

;; slide_eq
  (assert
  (forall ((a (Array Int component_t)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int component_t)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int component_t) Int Int (Array Int component_t)
  Int Int) (Array Int component_t))

;; concat_def
  (assert
  (forall ((a (Array Int component_t)) (b (Array Int component_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (component_t Int) (Array Int component_t))

;; singleton_def
  (assert
  (forall ((v component_t))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int component_t)) (a__first Int)
  (a__last Int) (b (Array Int component_t)) (b__first Int)
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
  (forall ((a (Array Int component_t)) (b (Array Int component_t)))
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

(declare-fun compare ((Array Int component_t) Int Int (Array Int component_t)
  Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int component_t)) (b (Array Int component_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int component_t)) (b (Array Int component_t)))
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
  (forall ((a (Array Int component_t)) (b (Array Int component_t)))
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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun first () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun last () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-sort integer 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun first1 () Int)

(declare-fun last1 () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content integer)))))
(define-fun t2b__ref___projection ((a t2b__ref)) integer (t2b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun temp___542 ((Array Int component_t) Int Int
  Int) (Array Int component_t))

;; def_axiom
  (assert
  (forall ((temp___544 (Array Int component_t)))
  (forall ((temp___545 Int) (temp___546 Int) (temp___547 Int))
  (let ((temp___543 (temp___542 temp___544 temp___545 temp___546 temp___547)))
  (forall ((temp___548 Int))
  (ite (and (<= temp___545 temp___548) (<= temp___548 temp___546))
  (= (select temp___543 temp___548) (of_rep temp___547))
  (= (select temp___543 temp___548) (select temp___544 temp___548))))))))

(declare-fun temp___564 ((Array Int component_t) Int Int
  Int) (Array Int component_t))

;; def_axiom
  (assert
  (forall ((temp___566 (Array Int component_t)))
  (forall ((temp___567 Int) (temp___568 Int) (temp___569 Int))
  (let ((temp___565 (temp___564 temp___566 temp___567 temp___568 temp___569)))
  (forall ((temp___570 Int))
  (ite (and (<= temp___567 temp___570) (<= temp___570 temp___568))
  (= (select temp___565 temp___570) (of_rep temp___569))
  (= (select temp___565 temp___570) (select temp___566 temp___570))))))))

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range3 temp___expr_15)))

(define-fun dynamic_invariant2 ((temp___expr_196 Int)
  (temp___is_init_193 Bool) (temp___skip_constant_194 Bool)
  (temp___do_toplevel_195 Bool)) Bool (=>
                                      (or (= temp___is_init_193 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_196)))

(declare-fun a () (Array Int component_t))

(declare-fun a_loop_entry () (Array Int component_t))

(declare-fun j () Int)

(declare-fun o () component_t)

(declare-fun o1 () (Array Int component_t))

(declare-fun result () (Array Int component_t))

(declare-fun a_loop_entry1 () (Array Int component_t))

(declare-fun result1 () Int)

(declare-fun j1 () Int)

(declare-fun result2 () (Array Int component_t))

(declare-fun a1 () (Array Int component_t))

;; H
  (assert (in_range1 first))

;; H
  (assert (in_range1 last))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref a_loop_entry)))

;; H
  (assert (= a_loop_entry1 a))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref j)))

;; H
  (assert (= j1 first))

;; H
  (assert (<= first j1))

;; H
  (assert (<= j1 last))

;; H
  (assert (= (to_rep o) 0))

;; H
  (assert (= o1 (store a j1 o)))

;; H
  (assert (= (mk_map__ref result2) (mk_map__ref a)))

;; H
  (assert (= a1 o1))

(assert
;; WP_parameter_def
 ;; File "loop_entry_test.ads", line 8, characters 0-0
  (not
  (= (bool_eq2 a1 1 1000 (temp___564 a_loop_entry1 first j1 0) 1 1000) true)))
(check-sat)
