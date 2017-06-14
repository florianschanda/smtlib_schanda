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

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(declare-fun to_rep (positive) Int)

(declare-fun of_rep (Int) positive)

;; inversion_axiom
  (assert
  (forall ((x positive))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x positive)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun max () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun is_full (Int) Bool)

(declare-fun is_full__function_guard (Bool Int) Bool)

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((top_range__ref (mk_top_range__ref (top_range__content integer)))))
(define-fun top_range__ref___projection ((a top_range__ref)) integer 
  (top_range__content a))

(define-fun dynamic_invariant1 ((temp___expr_197 Int)
  (temp___is_init_194 Bool) (temp___skip_constant_195 Bool)
  (temp___do_toplevel_196 Bool)) Bool (=>
                                      (or (= temp___is_init_194 true)
                                      (<= 0 last)) (dynamic_property 0 
                                      last temp___expr_197)))

;; last__def_axiom
  (assert (= last max))

;; is_full__post_axiom
  (assert true)

;; is_full__def_axiom
  (assert
  (forall ((use_stack__stacks__top Int))
  (! (=> (is_full__function_guard (is_full use_stack__stacks__top)
     use_stack__stacks__top)
     (= (= (is_full use_stack__stacks__top) true)
     (= use_stack__stacks__top max))) :pattern ((is_full
                                                use_stack__stacks__top)) )))

(declare-fun is_empty (Int) Bool)

(declare-fun is_empty__function_guard (Bool Int) Bool)

;; is_empty__post_axiom
  (assert true)

;; is_empty__def_axiom
  (assert
  (forall ((use_stack__stacks__top Int))
  (! (=> (is_empty__function_guard (is_empty use_stack__stacks__top)
     use_stack__stacks__top)
     (= (= (is_empty use_stack__stacks__top) true)
     (= use_stack__stacks__top 0))) :pattern ((is_empty
                                              use_stack__stacks__top)) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int positive))))))
(declare-fun slide ((Array Int positive) Int Int) (Array Int positive))

;; slide_eq
  (assert
  (forall ((a (Array Int positive)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int positive)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int positive) Int Int (Array Int positive) Int
  Int) (Array Int positive))

;; concat_def
  (assert
  (forall ((a (Array Int positive)) (b (Array Int positive)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (positive Int) (Array Int positive))

;; singleton_def
  (assert
  (forall ((v positive))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int positive)) (a__first Int) (a__last Int)
  (b (Array Int positive)) (b__first Int)
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
  (forall ((a (Array Int positive)) (b (Array Int positive)))
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

(declare-fun compare ((Array Int positive) Int Int (Array Int positive) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int positive)) (b (Array Int positive)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int positive)) (b (Array Int positive)))
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
  (forall ((a (Array Int positive)) (b (Array Int positive)))
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

(declare-fun content__first () integer)

(declare-fun content__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun peek (Int (Array Int positive)) Int)

(declare-fun peek__function_guard (Int Int (Array Int positive)) Bool)

(declare-fun last1 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes ()
((tmy_arrayD1__ref (mk_tmy_arrayD1__ref (tmy_arrayD1__content integer)))))
(define-fun tmy_arrayD1__ref___projection ((a tmy_arrayD1__ref)) integer 
  (tmy_arrayD1__content a))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last2 (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last2 (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int positive))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int positive) (elts a))

(define-fun of_array ((a (Array Int positive)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last3 ((a us_t)) Int (to_rep1 (last2 (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last3 a))
                                  (+ (- (last3 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int positive)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int positive)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int positive)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int positive))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int positive))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int positive))) (<= 0 (object__alignment a))))

(define-fun bool_eq5 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last2 (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last2 (rt y)))))

(declare-fun user_eq4 (us_t us_t) Bool)

(declare-fun dummy4 () us_t)

(declare-datatypes ()
((my_array__ref (mk_my_array__ref (my_array__content us_t)))))
(define-fun my_array__ref___projection ((a my_array__ref)) us_t (my_array__content
                                                                a))

;; peek__post_axiom
  (assert
  (forall ((use_stack__stacks__top Int))
  (forall ((use_stack__stacks__content (Array Int positive)))
  (! (and (is_empty__function_guard (is_empty use_stack__stacks__top)
     use_stack__stacks__top)
     (=>
     (and (dynamic_invariant1 use_stack__stacks__top true true true)
     (not (= (is_empty use_stack__stacks__top) true)))
     (let ((result (peek use_stack__stacks__top use_stack__stacks__content)))
     (=> (peek__function_guard result use_stack__stacks__top
     use_stack__stacks__content) (dynamic_invariant result true false true))))) :pattern (
  (peek use_stack__stacks__top use_stack__stacks__content)) ))))

;; peek__def_axiom
  (assert
  (forall ((use_stack__stacks__top Int))
  (forall ((use_stack__stacks__content (Array Int positive)))
  (! (=>
     (and (dynamic_invariant1 use_stack__stacks__top true true true)
     (peek__function_guard
     (peek use_stack__stacks__top use_stack__stacks__content)
     use_stack__stacks__top use_stack__stacks__content))
     (= (peek use_stack__stacks__top use_stack__stacks__content) (to_rep
                                                                 (select use_stack__stacks__content use_stack__stacks__top)))) :pattern (
  (peek use_stack__stacks__top use_stack__stacks__content)) ))))

(declare-fun e () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant3 ((temp___expr_203 us_t)
  (temp___is_init_200 Bool) (temp___skip_constant_201 Bool)
  (temp___do_toplevel_202 Bool)) Bool (=>
                                      (not (= temp___skip_constant_201 true))
                                      (and (dynamic_property2 1 max
                                      (first1 temp___expr_203)
                                      (last3 temp___expr_203))
                                      (and (= (first1 temp___expr_203) 1)
                                      (= (last3 temp___expr_203) max)))))

(declare-fun top () Int)

(declare-fun content () (Array Int positive))

(declare-fun temp___234 () Int)

(declare-fun us () Int)

(declare-fun o () Int)

(declare-fun o1 () positive)

(declare-fun o2 () Int)

(declare-fun o3 () (Array Int positive))

(declare-fun result () Int)

(declare-fun top1 () Int)

(declare-fun result1 () (Array Int positive))

(declare-fun content1 () (Array Int positive))

(declare-fun top2 () Int)

(declare-fun content2 () (Array Int positive))

(declare-fun top3 () Int)

(declare-fun content3 () (Array Int positive))

;; H
  (assert (in_range2 max))

;; H
  (assert (in_range2 e))

;; H
  (assert (dynamic_property 0 last top))

;; H
  (assert
  (and (dynamic_property2 1 max (to_rep1 content__first)
  (to_rep1 content__last))
  (and (= (to_rep1 content__first) 1) (= (to_rep1 content__last) max))))

;; H
  (assert (is_full__function_guard (is_full top) top))

;; H
  (assert (not (= (is_full top) true)))

;; H
  (assert (and (= temp___234 (+ top 1)) (in_range1 (+ top 1))))

;; H
  (assert (and (= us temp___234) (dynamic_property 0 last temp___234)))

;; H
  (assert (= o temp___234))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref top)))

;; H
  (assert (= top1 o))

;; H
  (assert (= (to_rep o1) e))

;; H
  (assert
  (and (<= (to_rep1 content__first) top1) (<= top1 (to_rep1 content__last))))

;; H
  (assert (= o2 top1))

;; H
  (assert (= o3 (store content o2 o1)))

;; H
  (assert (= (mk_map__ref result1) (mk_map__ref content)))

;; H
  (assert (= content1 o3))

;; H
  (assert (= content1 content2))

;; H
  (assert (= top1 top2))

;; H
  (assert (= content3 content1))

;; H
  (assert (= top3 top1))

;; H
  (assert (is_empty__function_guard (is_empty top2) top2))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (not (= (is_empty top2) true))))
(check-sat)
