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

(declare-sort item 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 20)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (item item) Bool)

(declare-fun dummy () item)

(declare-datatypes () ((item__ref (mk_item__ref (item__content item)))))
(define-fun item__ref___projection ((a item__ref)) item (item__content a))

(declare-fun to_rep (item) Int)

(declare-fun of_rep (Int) item)

;; inversion_axiom
  (assert
  (forall ((x item)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x item)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun is_empty (Int) Bool)

(declare-fun is_empty__function_guard (Bool Int) Bool)

(declare-sort stack_pointer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 100)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (stack_pointer stack_pointer) Bool)

(declare-fun dummy1 () stack_pointer)

(declare-datatypes ()
((stack_pointer__ref
 (mk_stack_pointer__ref (stack_pointer__content stack_pointer)))))
(define-fun stack_pointer__ref___projection ((a stack_pointer__ref)) stack_pointer 
  (stack_pointer__content a))

(define-fun dynamic_invariant ((temp___expr_151 Int)
  (temp___is_init_148 Bool) (temp___skip_constant_149 Bool)
  (temp___do_toplevel_150 Bool)) Bool (=>
                                      (or (= temp___is_init_148 true)
                                      (<= 0 100)) (in_range1
                                      temp___expr_151)))

;; is_empty__post_axiom
  (assert true)

;; is_empty__def_axiom
  (assert
  (forall ((a_stack_no_spark_contracts_with_body__sp Int))
  (! (=> (is_empty__function_guard
     (is_empty a_stack_no_spark_contracts_with_body__sp)
     a_stack_no_spark_contracts_with_body__sp)
     (= (= (is_empty a_stack_no_spark_contracts_with_body__sp) true)
     (= a_stack_no_spark_contracts_with_body__sp 0))) :pattern ((is_empty
                                                                a_stack_no_spark_contracts_with_body__sp)) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int item))))))
(declare-fun slide ((Array Int item) Int Int) (Array Int item))

;; slide_eq
  (assert
  (forall ((a (Array Int item)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int item)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int item) Int Int (Array Int item) Int
  Int) (Array Int item))

;; concat_def
  (assert
  (forall ((a (Array Int item)) (b (Array Int item)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (item Int) (Array Int item))

;; singleton_def
  (assert
  (forall ((v item))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int item)) (a__first Int) (a__last Int)
  (b (Array Int item)) (b__first Int)
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
  (forall ((a (Array Int item)) (b (Array Int item)))
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

(declare-fun compare ((Array Int item) Int Int (Array Int item) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int item)) (b (Array Int item)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int item)) (b (Array Int item)))
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
  (forall ((a (Array Int item)) (b (Array Int item)))
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

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (index index) Bool)

(declare-fun dummy2 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant1 ((temp___expr_157 Int)
  (temp___is_init_154 Bool) (temp___skip_constant_155 Bool)
  (temp___do_toplevel_156 Bool)) Bool (=>
                                      (or (= temp___is_init_154 true)
                                      (<= 1 100)) (in_range2
                                      temp___expr_157)))

(define-fun dynamic_invariant2 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 0 20)) (in_range temp___expr_136)))

(declare-fun sp () Int)

;; H
  (assert (in_range1 sp))

;; H
  (assert (is_empty__function_guard (is_empty sp) sp))

;; H
  (assert (not (= (is_empty sp) true)))

(assert
;; WP_parameter_def
 ;; File "a_stack_no_spark_contracts_with_body.ads", line 4, characters 0-0
  (not (<= 1 sp)))
(check-sat)
