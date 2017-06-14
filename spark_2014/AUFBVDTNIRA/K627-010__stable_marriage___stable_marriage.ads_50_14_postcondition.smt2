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

(declare-sort group1_id 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (group1_id group1_id) Bool)

(declare-fun dummy () group1_id)

(declare-datatypes ()
((group1_id__ref (mk_group1_id__ref (group1_id__content group1_id)))))
(define-fun group1_id__ref___projection ((a group1_id__ref)) group1_id 
  (group1_id__content a))

(declare-fun to_rep (group1_id) Int)

(declare-fun of_rep (Int) group1_id)

;; inversion_axiom
  (assert
  (forall ((x group1_id))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x group1_id)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort ranking 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (ranking ranking) Bool)

(declare-fun dummy1 () ranking)

(declare-datatypes ()
((ranking__ref (mk_ranking__ref (ranking__content ranking)))))
(define-fun ranking__ref___projection ((a ranking__ref)) ranking (ranking__content
                                                                 a))

(declare-fun to_rep1 (ranking) Int)

(declare-fun of_rep1 (Int) ranking)

;; inversion_axiom
  (assert
  (forall ((x ranking))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x ranking)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int group1_id))))))
(declare-fun slide ((Array Int group1_id) Int Int) (Array Int group1_id))

;; slide_eq
  (assert
  (forall ((a (Array Int group1_id)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int group1_id)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int group1_id) Int Int (Array Int group1_id) Int
  Int) (Array Int group1_id))

;; concat_def
  (assert
  (forall ((a (Array Int group1_id)) (b (Array Int group1_id)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (group1_id Int) (Array Int group1_id))

;; singleton_def
  (assert
  (forall ((v group1_id))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int group1_id)) (a__first Int) (a__last Int)
  (b (Array Int group1_id)) (b__first Int)
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
  (forall ((a (Array Int group1_id)) (b (Array Int group1_id)))
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

(declare-fun compare ((Array Int group1_id) Int Int (Array Int group1_id) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int group1_id)) (b (Array Int group1_id)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int group1_id)) (b (Array Int group1_id)))
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
  (forall ((a (Array Int group1_id)) (b (Array Int group1_id)))
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

(declare-fun is_permutation_1 ((Array Int group1_id)) Bool)

(declare-fun is_permutation_1__function_guard (Bool
  (Array Int group1_id)) Bool)

;; is_permutation_1__post_axiom
  (assert
  (forall ((r1 (Array Int group1_id)))
  (! (let ((result (is_permutation_1 r1)))
     (=> (is_permutation_1__function_guard result r1)
     (= (= result true)
     (forall ((g1 Int))
     (=> (and (<= 1 g1) (<= g1 64))
     (exists ((rank Int))
     (and (and (<= 1 rank) (<= rank 64)) (= (to_rep (select r1 rank)) g1)))))))) :pattern (
  (is_permutation_1 r1)) )))

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int ranking))))))
(declare-fun slide1 ((Array Int ranking) Int Int) (Array Int ranking))

;; slide_eq
  (assert
  (forall ((a (Array Int ranking)))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int ranking)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int ranking) Int Int (Array Int ranking) Int
  Int) (Array Int ranking))

;; concat_def
  (assert
  (forall ((a (Array Int ranking)) (b (Array Int ranking)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (ranking Int) (Array Int ranking))

;; singleton_def
  (assert
  (forall ((v ranking))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int ranking)) (a__first Int) (a__last Int)
  (b (Array Int ranking)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_136 Int))
                           (=>
                           (and (<= a__first temp___idx_136)
                           (<= temp___idx_136 a__last))
                           (= (to_rep1 (select a temp___idx_136)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_136)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int ranking)) (b (Array Int ranking)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_136 Int))
  (=> (and (<= a__first temp___idx_136) (<= temp___idx_136 a__last))
  (= (to_rep1 (select a temp___idx_136)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_136)))))))))))

(declare-fun compare1 ((Array Int ranking) Int Int (Array Int ranking) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int ranking)) (b (Array Int ranking)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare1 a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int ranking)) (b (Array Int ranking)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare1 a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int ranking)) (b (Array Int ranking)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare1 a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

(declare-fun r1 () (Array Int group1_id))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t35b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t35b t35b) Bool)

(declare-fun dummy2 () t35b)

(declare-datatypes () ((t35b__ref (mk_t35b__ref (t35b__content t35b)))))
(define-fun t35b__ref___projection ((a t35b__ref)) t35b (t35b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun stable_marriage__invert_1__result__aggregate_def (Int) (Array Int ranking))

;; def_axiom
  (assert
  (forall ((temp___480 Int))
  (forall ((temp___481 Int))
  (= (select (stable_marriage__invert_1__result__aggregate_def temp___480) temp___481) 
  (of_rep1 temp___480)))))

(define-fun dynamic_invariant ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 1 64)) (in_range1 temp___expr_143)))

(define-fun dynamic_invariant1 ((temp___expr_155 Int)
  (temp___is_init_152 Bool) (temp___skip_constant_153 Bool)
  (temp___do_toplevel_154 Bool)) Bool (=>
                                      (or (= temp___is_init_152 true)
                                      (<= 1 64)) (in_range2 temp___expr_155)))

(declare-fun result__ () (Array Int ranking))

(declare-fun rank () Int)

(declare-fun stable_marriage__invert_1__result () (Array Int ranking))

(declare-fun o () (Array Int ranking))

(declare-fun temp___484 () Int)

(declare-fun temp___482 () (Array Int ranking))

(declare-fun o1 () ranking)

(declare-fun o2 () (Array Int ranking))

(declare-fun result () (Array Int ranking))

(declare-fun result__1 () (Array Int ranking))

(declare-fun result1 () Int)

(declare-fun rank1 () Int)

(declare-fun result__2 () (Array Int ranking))

(declare-fun rank2 () Int)

(declare-fun result2 () (Array Int ranking))

(declare-fun result__3 () (Array Int ranking))

(declare-fun result__4 () (Array Int ranking))

(declare-fun rank3 () Int)

(declare-fun result__5 () (Array Int ranking))

(declare-fun rank4 () Int)

(declare-fun result__6 () (Array Int ranking))

(declare-fun rank5 () Int)

(declare-fun result__7 () (Array Int ranking))

(declare-fun rank6 () Int)

(declare-fun result3 () (Array Int ranking))

(declare-fun stable_marriage__invert_1__result1 () (Array Int ranking))

(declare-fun stable_marriage__invert_1__result2 () (Array Int ranking))

(declare-fun stable_marriage__invert_1__result3 () (Array Int ranking))

(declare-fun result__8 () (Array Int ranking))

(declare-fun rank7 () Int)

(declare-fun stable_marriage__invert_1__result4 () (Array Int ranking))

(declare-fun result__9 () (Array Int ranking))

(declare-fun rank8 () Int)

(declare-fun stable_marriage__invert_1__result5 () (Array Int ranking))

(define-fun rank9 () int__ref (mk_int__ref rank5))

(define-fun result__10 () map__ref1 (mk_map__ref1 result__6))

(declare-fun result4 () (Array Int ranking))

;; H
  (assert (is_permutation_1__function_guard (is_permutation_1 r1) r1))

;; H
  (assert (= (is_permutation_1 r1) true))

;; H
  (assert (= o (stable_marriage__invert_1__result__aggregate_def 64)))

;; H
  (assert (= (mk_map__ref1 result) (mk_map__ref1 result__)))

;; H
  (assert (= result__1 o))

;; H
  (assert
  (forall ((rank11 Int))
  (=> (and (<= 1 rank11) (<= rank11 64))
  (forall ((rank21 Int))
  (=> (and (<= 1 rank21) (<= rank21 64))
  (=> (not (= rank11 rank21))
  (not (= (to_rep (select r1 rank11)) (to_rep (select r1 rank21))))))))))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref rank)))

;; H
  (assert (= rank1 1))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= temp___484 rank1)))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= temp___482 result__1)))

;; H
  (assert
  (=> (and (<= 1 rank1) (<= rank1 64))
  (forall ((prev Int))
  (=> (and (<= 1 prev) (<= prev (- rank2 1)))
  (= (to_rep1 (select result__2 (to_rep (select r1 prev)))) prev)))))

;; H
  (assert
  (=> (and (<= 1 rank1) (<= rank1 64))
  (forall ((g1 Int))
  (=> (and (<= 1 g1) (<= g1 64))
  (=>
  (exists ((prev Int))
  (and (and (<= 1 prev) (<= prev (- rank2 1)))
  (= (to_rep (select r1 prev)) g1)))
  (= (to_rep (select r1 (to_rep1 (select result__2 g1)))) g1))))))

;; H
  (assert
  (=> (and (<= 1 rank1) (<= rank1 64))
  (and (=> (<= 1 64) (in_range2 rank2)) (and (<= 1 rank2) (<= rank2 64)))))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= (to_rep1 o1) rank2)))

;; H
  (assert
  (=> (and (<= 1 rank1) (<= rank1 64))
  (= o2 (store result__2 (to_rep (select r1 rank2)) o1))))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= result__2 result2)))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= result__3 o2)))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= rank2 64)))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= rank2 rank3)))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= result__3 result__4)))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= rank4 rank2)))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= result__5 result__3)))

;; H
  (assert
  (=> (and (<= 1 rank1) (<= rank1 64)) (= rank9 (mk_int__ref rank3))))

;; H
  (assert
  (=> (and (<= 1 rank1) (<= rank1 64))
  (= result__10 (mk_map__ref1 result__4))))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= rank6 rank4)))

;; H
  (assert (=> (and (<= 1 rank1) (<= rank1 64)) (= result__7 result__5)))

;; H
  (assert (=> (not (and (<= 1 rank1) (<= rank1 64))) (= rank1 rank5)))

;; H
  (assert
  (=> (not (and (<= 1 rank1) (<= rank1 64))) (= result__1 result__6)))

;; H
  (assert (=> (not (and (<= 1 rank1) (<= rank1 64))) (= rank6 rank1)))

;; H
  (assert
  (=> (not (and (<= 1 rank1) (<= rank1 64))) (= result__7 result__1)))

;; H
  (assert
  (= stable_marriage__invert_1__result1 stable_marriage__invert_1__result2))

;; H
  (assert
  (= stable_marriage__invert_1__result3 stable_marriage__invert_1__result1))

;; H
  (assert (= result3 stable_marriage__invert_1__result))

;; H
  (assert (= stable_marriage__invert_1__result1 result__6))

;; H
  (assert
  (= (mk_map__ref1 stable_marriage__invert_1__result4) (mk_map__ref1
                                                       stable_marriage__invert_1__result2)))

;; H
  (assert (= (mk_int__ref rank7) rank9))

;; H
  (assert (= (mk_map__ref1 result__8) result__10))

;; H
  (assert
  (= stable_marriage__invert_1__result5 stable_marriage__invert_1__result3))

;; H
  (assert (= rank8 rank6))

;; H
  (assert (= result__9 result__7))

;; H
  (assert (= result4 stable_marriage__invert_1__result4))

(declare-fun rank10 () Int)

;; H
  (assert (<= 1 rank10))

;; H
  (assert (<= rank10 64))

(assert
;; WP_parameter_def
 ;; File "stable_marriage.ads", line 44, characters 0-0
  (not
  (= (to_rep1
     (select stable_marriage__invert_1__result4 (to_rep (select r1 rank10)))) 
  rank10)))
(check-sat)
