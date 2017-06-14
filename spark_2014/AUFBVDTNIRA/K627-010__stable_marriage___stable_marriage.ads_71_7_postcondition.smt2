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

(declare-sort group2_id 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (group2_id group2_id) Bool)

(declare-fun dummy1 () group2_id)

(declare-datatypes ()
((group2_id__ref (mk_group2_id__ref (group2_id__content group2_id)))))
(define-fun group2_id__ref___projection ((a group2_id__ref)) group2_id 
  (group2_id__content a))

(declare-fun to_rep1 (group2_id) Int)

(declare-fun of_rep1 (Int) group2_id)

;; inversion_axiom
  (assert
  (forall ((x group2_id))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x group2_id)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

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

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int group2_id))))))
(declare-fun slide1 ((Array Int group2_id) Int Int) (Array Int group2_id))

;; slide_eq
  (assert
  (forall ((a (Array Int group2_id)))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int group2_id)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int group2_id) Int Int (Array Int group2_id) Int
  Int) (Array Int group2_id))

;; concat_def
  (assert
  (forall ((a (Array Int group2_id)) (b (Array Int group2_id)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (group2_id Int) (Array Int group2_id))

;; singleton_def
  (assert
  (forall ((v group2_id))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int group2_id)) (a__first Int) (a__last Int)
  (b (Array Int group2_id)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (to_rep1 (select a temp___idx_133)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_133)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int group2_id)) (b (Array Int group2_id)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep1 (select a temp___idx_133)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_133)))))))))))

(declare-fun compare1 ((Array Int group2_id) Int Int (Array Int group2_id)
  Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int group2_id)) (b (Array Int group2_id)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare1 a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int group2_id)) (b (Array Int group2_id)))
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
  (forall ((a (Array Int group2_id)) (b (Array Int group2_id)))
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

(declare-fun g2_to_g1 () (Array Int group1_id))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t63b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t63b t63b) Bool)

(declare-fun dummy2 () t63b)

(declare-datatypes () ((t63b__ref (mk_t63b__ref (t63b__content t63b)))))
(define-fun t63b__ref___projection ((a t63b__ref)) t63b (t63b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun stable_marriage__invert_map__result__aggregate_def (Int) (Array Int group2_id))

;; def_axiom
  (assert
  (forall ((temp___503 Int))
  (forall ((temp___504 Int))
  (= (select (stable_marriage__invert_map__result__aggregate_def temp___503) temp___504) 
  (of_rep1 temp___503)))))

(define-fun dynamic_invariant ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 1 64)) (in_range1 temp___expr_143)))

(define-fun dynamic_invariant1 ((temp___expr_149 Int)
  (temp___is_init_146 Bool) (temp___skip_constant_147 Bool)
  (temp___do_toplevel_148 Bool)) Bool (=>
                                      (or (= temp___is_init_146 true)
                                      (<= 1 64)) (in_range2 temp___expr_149)))

(declare-fun result__ () (Array Int group2_id))

(declare-fun g2 () Int)

(declare-fun stable_marriage__invert_map__result () (Array Int group2_id))

(declare-fun o () (Array Int group2_id))

(declare-fun temp___506 () (Array Int group2_id))

(declare-fun temp___505 () Int)

(declare-fun o1 () group2_id)

(declare-fun o2 () (Array Int group2_id))

(declare-fun result () (Array Int group2_id))

(declare-fun result__1 () (Array Int group2_id))

(declare-fun result1 () Int)

(declare-fun g21 () Int)

(declare-fun result__2 () (Array Int group2_id))

(declare-fun g22 () Int)

(declare-fun result2 () (Array Int group2_id))

(declare-fun result__3 () (Array Int group2_id))

(declare-fun result__4 () (Array Int group2_id))

(declare-fun g23 () Int)

(declare-fun result__5 () (Array Int group2_id))

(declare-fun g24 () Int)

(declare-fun result__6 () (Array Int group2_id))

(declare-fun g25 () Int)

(declare-fun result__7 () (Array Int group2_id))

(declare-fun g26 () Int)

(declare-fun result3 () (Array Int group2_id))

(declare-fun stable_marriage__invert_map__result1 () (Array Int group2_id))

(declare-fun stable_marriage__invert_map__result2 () (Array Int group2_id))

(declare-fun stable_marriage__invert_map__result3 () (Array Int group2_id))

(declare-fun result__8 () (Array Int group2_id))

(declare-fun g27 () Int)

(declare-fun stable_marriage__invert_map__result4 () (Array Int group2_id))

(declare-fun result__9 () (Array Int group2_id))

(declare-fun g28 () Int)

(declare-fun stable_marriage__invert_map__result5 () (Array Int group2_id))

(define-fun g29 () int__ref (mk_int__ref g25))

(define-fun result__10 () map__ref1 (mk_map__ref1 result__6))

(declare-fun result4 () (Array Int group2_id))

;; H
  (assert
  (forall ((g1 Int))
  (=> (and (<= 1 g1) (<= g1 64))
  (exists ((g210 Int))
  (and (and (<= 1 g210) (<= g210 64)) (= (to_rep (select g2_to_g1 g210)) g1))))))

;; H
  (assert (= o (stable_marriage__invert_map__result__aggregate_def 64)))

;; H
  (assert (= (mk_map__ref1 result) (mk_map__ref1 result__)))

;; H
  (assert (= result__1 o))

;; H
  (assert
  (forall ((g211 Int))
  (=> (and (<= 1 g211) (<= g211 64))
  (forall ((g221 Int))
  (=> (and (<= 1 g221) (<= g221 64))
  (=> (not (= g211 g221))
  (not (= (to_rep (select g2_to_g1 g211)) (to_rep (select g2_to_g1 g221))))))))))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref g2)))

;; H
  (assert (= g21 1))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= temp___506 result__1)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= temp___505 g21)))

;; H
  (assert
  (=> (and (<= 1 g21) (<= g21 64))
  (forall ((prev Int))
  (=> (and (<= 1 prev) (<= prev (- g22 1)))
  (= (to_rep1 (select result__2 (to_rep (select g2_to_g1 prev)))) prev)))))

;; H
  (assert
  (=> (and (<= 1 g21) (<= g21 64))
  (forall ((g1 Int))
  (=> (and (<= 1 g1) (<= g1 64))
  (=>
  (exists ((prev2 Int))
  (and (and (<= 1 prev2) (<= prev2 (- g22 1)))
  (= (to_rep (select g2_to_g1 prev2)) g1)))
  (= (to_rep (select g2_to_g1 (to_rep1 (select result__2 g1)))) g1))))))

;; H
  (assert
  (=> (and (<= 1 g21) (<= g21 64))
  (and (=> (<= 1 64) (in_range2 g22)) (and (<= 1 g22) (<= g22 64)))))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= (to_rep1 o1) g22)))

;; H
  (assert
  (=> (and (<= 1 g21) (<= g21 64))
  (= o2 (store result__2 (to_rep (select g2_to_g1 g22)) o1))))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= result__2 result2)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= result__3 o2)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= g22 64)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= g22 g23)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= result__3 result__4)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= g24 g22)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= result__5 result__3)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= g29 (mk_int__ref g23))))

;; H
  (assert
  (=> (and (<= 1 g21) (<= g21 64)) (= result__10 (mk_map__ref1 result__4))))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= g26 g24)))

;; H
  (assert (=> (and (<= 1 g21) (<= g21 64)) (= result__7 result__5)))

;; H
  (assert (=> (not (and (<= 1 g21) (<= g21 64))) (= g21 g25)))

;; H
  (assert (=> (not (and (<= 1 g21) (<= g21 64))) (= result__1 result__6)))

;; H
  (assert (=> (not (and (<= 1 g21) (<= g21 64))) (= g26 g21)))

;; H
  (assert (=> (not (and (<= 1 g21) (<= g21 64))) (= result__7 result__1)))

;; H
  (assert
  (= stable_marriage__invert_map__result1 stable_marriage__invert_map__result2))

;; H
  (assert
  (= stable_marriage__invert_map__result3 stable_marriage__invert_map__result1))

;; H
  (assert (= result3 stable_marriage__invert_map__result))

;; H
  (assert (= stable_marriage__invert_map__result1 result__6))

;; H
  (assert
  (= (mk_map__ref1 stable_marriage__invert_map__result4) (mk_map__ref1
                                                         stable_marriage__invert_map__result2)))

;; H
  (assert (= (mk_int__ref g27) g29))

;; H
  (assert (= (mk_map__ref1 result__8) result__10))

;; H
  (assert
  (= stable_marriage__invert_map__result5 stable_marriage__invert_map__result3))

;; H
  (assert (= g28 g26))

;; H
  (assert (= result__9 result__7))

;; H
  (assert (= result4 stable_marriage__invert_map__result4))

(declare-fun g1 () Int)

;; H
  (assert (<= 1 g1))

;; H
  (assert (<= g1 64))

(assert
;; WP_parameter_def
 ;; File "stable_marriage.ads", line 17, characters 0-0
  (not
  (= (to_rep
     (select g2_to_g1 (to_rep1
                      (select stable_marriage__invert_map__result4 g1)))) 
  g1)))
(check-sat)
