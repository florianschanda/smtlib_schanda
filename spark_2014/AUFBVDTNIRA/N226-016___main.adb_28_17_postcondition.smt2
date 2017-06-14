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

(declare-sort id_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (id_type id_type) Bool)

(declare-fun dummy () id_type)

(declare-datatypes ()
((id_type__ref (mk_id_type__ref (id_type__content id_type)))))
(define-fun id_type__ref___projection ((a id_type__ref)) id_type (id_type__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_206 Int)
  (temp___is_init_203 Bool) (temp___skip_constant_204 Bool)
  (temp___do_toplevel_205 Bool)) Bool (=>
                                      (or (= temp___is_init_203 true)
                                      (<= 0 1)) (in_range1 temp___expr_206)))

(declare-fun to_rep (id_type) Int)

(declare-fun of_rep (Int) id_type)

;; inversion_axiom
  (assert
  (forall ((x id_type)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x id_type)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int id_type))))))
(declare-fun slide ((Array Int id_type) Int Int) (Array Int id_type))

;; slide_eq
  (assert
  (forall ((a (Array Int id_type)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int id_type)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int id_type) Int Int (Array Int id_type) Int
  Int) (Array Int id_type))

;; concat_def
  (assert
  (forall ((a (Array Int id_type)) (b (Array Int id_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (id_type Int) (Array Int id_type))

;; singleton_def
  (assert
  (forall ((v id_type))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int id_type)) (a__first Int) (a__last Int)
  (b (Array Int id_type)) (b__first Int)
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
  (forall ((a (Array Int id_type)) (b (Array Int id_type)))
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

(declare-fun compare ((Array Int id_type) Int Int (Array Int id_type) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int id_type)) (b (Array Int id_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int id_type)) (b (Array Int id_type)))
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
  (forall ((a (Array Int id_type)) (b (Array Int id_type)))
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

(declare-fun map1 () (Array Int id_type))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun main__map__aggregate_def (Int Int) (Array Int id_type))

;; def_axiom
  (assert
  (forall ((temp___135 Int) (temp___136 Int))
  (let ((temp___134 (main__map__aggregate_def temp___135 temp___136)))
  (and (= (select temp___134 0) (of_rep temp___135))
  (= (select temp___134 1) (of_rep temp___136))))))

(declare-fun id () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

;; map__def_axiom
  (assert (= map1 (main__map__aggregate_def 1 0)))

(declare-fun main__with_invariant__result () Int)

(declare-fun result () Int)

(declare-fun main__with_invariant__result1 () Int)

(declare-fun main__with_invariant__result2 () Int)

(declare-fun main__with_invariant__result3 () Int)

(declare-fun main__with_invariant__result4 () Int)

(declare-fun main__with_invariant__result5 () Int)

(declare-fun result1 () Int)

;; H
  (assert (= (main__map__aggregate_def 1 0) map1))

;; H
  (assert (in_range1 id))

;; H
  (assert
  (forall ((id1 Int))
  (=> (and (<= 0 id1) (<= id1 1)) (not (= (to_rep (select map1 id1)) id1)))))

;; H
  (assert (= main__with_invariant__result1 main__with_invariant__result2))

;; H
  (assert (= main__with_invariant__result3 main__with_invariant__result1))

;; H
  (assert (= result main__with_invariant__result))

;; H
  (assert (= main__with_invariant__result1 (to_rep (select map1 id))))

;; H
  (assert
  (= (mk_int__ref main__with_invariant__result4) (mk_int__ref
                                                 main__with_invariant__result2)))

;; H
  (assert (= main__with_invariant__result5 main__with_invariant__result3))

;; H
  (assert (= result1 main__with_invariant__result4))

(assert
;; WP_parameter_def
 ;; File "main.adb", line 8, characters 0-0
  (not (not (= id main__with_invariant__result4))))
(check-sat)
