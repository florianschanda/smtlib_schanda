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

(declare-fun dummy2 () (Array Int group1_id))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int group1_id)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int group1_id)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int group1_id)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int group1_id))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int group1_id))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int group1_id))) (<= 0 (object__alignment a))))

(declare-fun user_eq2 ((Array Int group1_id) (Array Int group1_id)) Bool)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int group1_id)))))))
(declare-fun slide1 ((Array Int (Array Int group1_id)) Int
  Int) (Array Int (Array Int group1_id)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int group1_id))))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int group1_id))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int (Array Int group1_id)) Int Int
  (Array Int (Array Int group1_id)) Int
  Int) (Array Int (Array Int group1_id)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int group1_id)))
  (b (Array Int (Array Int group1_id))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 ((Array Int group1_id)
  Int) (Array Int (Array Int group1_id)))

;; singleton_def
  (assert
  (forall ((v (Array Int group1_id)))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int (Array Int group1_id))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int group1_id))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_135 Int))
                           (=>
                           (and (<= a__first temp___idx_135)
                           (<= temp___idx_135 a__last))
                           (= (bool_eq2 (select a temp___idx_135) 1 64
                              (select b (+ (- b__first a__first) temp___idx_135))
                              1 64) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int group1_id)))
  (b (Array Int (Array Int group1_id))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_135 Int))
  (=> (and (<= a__first temp___idx_135) (<= temp___idx_135 a__last))
  (= (bool_eq2 (select a temp___idx_135) 1 64
     (select b (+ (- b__first a__first) temp___idx_135)) 1 64) true))))))))

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

(declare-sort ranking 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (ranking ranking) Bool)

(declare-fun dummy3 () ranking)

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
  (forall ((x ranking)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref2 (mk_map__ref2 (map__content2 (Array Int ranking))))))
(declare-fun slide2 ((Array Int ranking) Int Int) (Array Int ranking))

;; slide_eq
  (assert
  (forall ((a (Array Int ranking)))
  (forall ((first Int))
  (! (= (slide2 a first first) a) :pattern ((slide2 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int ranking)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide2 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide2 a old_first new_first) i)) ))))))

(declare-fun concat3 ((Array Int ranking) Int Int (Array Int ranking) Int
  Int) (Array Int ranking))

;; concat_def
  (assert
  (forall ((a (Array Int ranking)) (b (Array Int ranking)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat3 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton3 (ranking Int) (Array Int ranking))

;; singleton_def
  (assert
  (forall ((v ranking))
  (forall ((i Int))
  (! (= (select (singleton3 v i) i) v) :pattern ((select (singleton3 v i) i)) ))))

(define-fun bool_eq5 ((a (Array Int ranking)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq5 a a_first a_last b b_first b_last) true)) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int ranking)) (b (Array Int ranking)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare1 a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq5 a a_first i b b_first j) true)
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
     (and (= (bool_eq5 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

(declare-fun invert_1 ((Array Int group1_id)) (Array Int ranking))

(declare-fun invert_1__function_guard ((Array Int ranking)
  (Array Int group1_id)) Bool)

;; invert_1__post_axiom
  (assert
  (forall ((r1 (Array Int group1_id)))
  (! (and (is_permutation_1__function_guard (is_permutation_1 r1) r1)
     (=> (= (is_permutation_1 r1) true)
     (let ((result (invert_1 r1)))
     (=> (invert_1__function_guard result r1)
     (and
     (forall ((rank Int))
     (=> (and (<= 1 rank) (<= rank 64))
     (= (to_rep1 (select result (to_rep (select r1 rank)))) rank)))
     (forall ((g1 Int))
     (=> (and (<= 1 g1) (<= g1 64))
     (= (to_rep (select r1 (to_rep1 (select result g1)))) g1)))))))) :pattern (
  (invert_1 r1)) )))

(declare-fun dummy4 () (Array Int ranking))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int ranking)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int ranking)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int ranking)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int ranking))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int ranking))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int ranking))) (<= 0 (object__alignment1 a))))

(declare-fun user_eq4 ((Array Int ranking) (Array Int ranking)) Bool)

(declare-datatypes ()
((map__ref3 (mk_map__ref3 (map__content3 (Array Int (Array Int ranking)))))))
(declare-fun slide3 ((Array Int (Array Int ranking)) Int
  Int) (Array Int (Array Int ranking)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int ranking))))
  (forall ((first Int))
  (! (= (slide3 a first first) a) :pattern ((slide3 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int ranking))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide3 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide3 a old_first new_first) i)) ))))))

(declare-fun concat4 ((Array Int (Array Int ranking)) Int Int
  (Array Int (Array Int ranking)) Int Int) (Array Int (Array Int ranking)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int ranking)))
  (b (Array Int (Array Int ranking))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat4 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat4 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat4 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton4 ((Array Int ranking)
  Int) (Array Int (Array Int ranking)))

;; singleton_def
  (assert
  (forall ((v (Array Int ranking)))
  (forall ((i Int))
  (! (= (select (singleton4 v i) i) v) :pattern ((select (singleton4 v i) i)) ))))

(define-fun bool_eq6 ((a (Array Int (Array Int ranking))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int ranking))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_138 Int))
                           (=>
                           (and (<= a__first temp___idx_138)
                           (<= temp___idx_138 a__last))
                           (= (bool_eq5 (select a temp___idx_138) 1 64
                              (select b (+ (- b__first a__first) temp___idx_138))
                              1 64) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int ranking)))
  (b (Array Int (Array Int ranking))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_138 Int))
  (=> (and (<= a__first temp___idx_138) (<= temp___idx_138 a__last))
  (= (bool_eq5 (select a temp___idx_138) 1 64
     (select b (+ (- b__first a__first) temp___idx_138)) 1 64) true))))))))

(declare-fun r2 () (Array Int (Array Int group1_id)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort t98b 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (t98b t98b) Bool)

(declare-fun dummy5 () t98b)

(declare-datatypes () ((t98b__ref (mk_t98b__ref (t98b__content t98b)))))
(define-fun t98b__ref___projection ((a t98b__ref)) t98b (t98b__content a))

(declare-sort t96b 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (t96b t96b) Bool)

(declare-fun dummy6 () t96b)

(declare-datatypes () ((t96b__ref (mk_t96b__ref (t96b__content t96b)))))
(define-fun t96b__ref___projection ((a t96b__ref)) t96b (t96b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun temp___587 ((Array Int ranking)) (Array Int (Array Int ranking)))

;; def_axiom
  (assert
  (forall ((temp___589 (Array Int ranking)))
  (forall ((temp___590 Int))
  (= (select (temp___587 temp___589) temp___590) temp___589))))

(declare-fun temp___591 (Int) (Array Int ranking))

;; def_axiom
  (assert
  (forall ((temp___593 Int))
  (forall ((temp___594 Int))
  (= (select (temp___591 temp___593) temp___594) (of_rep1 temp___593)))))

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

(define-fun dynamic_invariant2 ((temp___expr_155 Int)
  (temp___is_init_152 Bool) (temp___skip_constant_153 Bool)
  (temp___do_toplevel_154 Bool)) Bool (=>
                                      (or (= temp___is_init_152 true)
                                      (<= 1 64)) (in_range3 temp___expr_155)))

(declare-fun result__ () (Array Int (Array Int ranking)))

(declare-fun g2 () Int)

(declare-fun o () (Array Int ranking))

(declare-fun o1 () (Array Int (Array Int ranking)))

(declare-fun result () (Array Int (Array Int ranking)))

(declare-fun result__1 () (Array Int (Array Int ranking)))

(declare-fun result1 () Int)

(declare-fun g21 () Int)

(declare-fun result__2 () (Array Int (Array Int ranking)))

(declare-fun g22 () Int)

;; H
  (assert
  (forall ((g23 Int)) (is_permutation_1__function_guard
  (is_permutation_1 (select r2 g23)) (select r2 g23))))

;; H
  (assert
  (forall ((g23 Int))
  (=> (and (<= 1 g23) (<= g23 64))
  (= (is_permutation_1 (select r2 g23)) true))))

;; H
  (assert (= o (temp___591 64)))

;; H
  (assert (= o1 (temp___587 o)))

;; H
  (assert (= (mk_map__ref3 result) (mk_map__ref3 result__)))

;; H
  (assert (= result__1 o1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref g2)))

;; H
  (assert (= g21 1))

;; H
  (assert (<= 1 g21))

;; H
  (assert (<= g21 64))

;; H
  (assert
  (forall ((prev Int)) (invert_1__function_guard (invert_1 (select r2 prev))
  (select r2 prev))))

;; H
  (assert
  (forall ((prev Int))
  (=> (and (<= 1 prev) (<= prev (- g22 1)))
  (= (bool_eq5 (select result__2 prev) 1 64 (invert_1 (select r2 prev)) 1 64) true))))

;; H
  (assert
  (and
  (and (=> (<= 1 64) (in_range2 g22))
  (forall ((temp___597 Int))
  (=> (and (<= 1 temp___597) (<= temp___597 64))
  (=> (<= g22 temp___597)
  (= (select result__2 temp___597) (select result__1 temp___597))))))
  (and (<= 1 g22) (<= g22 64))))

;; H
  (assert (is_permutation_1__function_guard
  (is_permutation_1 (select r2 g22)) (select r2 g22)))

(assert
;; WP_parameter_def
 ;; File "stable_marriage.adb", line 127, characters 0-0
  (not (= (is_permutation_1 (select r2 g22)) true)))
(check-sat)
