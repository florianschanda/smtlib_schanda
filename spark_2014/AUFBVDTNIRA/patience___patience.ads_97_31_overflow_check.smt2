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

(declare-sort card 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 52)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (card card) Bool)

(declare-fun dummy1 () card)

(declare-datatypes () ((card__ref (mk_card__ref (card__content card)))))
(define-fun card__ref___projection ((a card__ref)) card (card__content a))

(declare-fun to_rep (card) Int)

(declare-fun of_rep (Int) card)

;; inversion_axiom
  (assert
  (forall ((x card)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x card)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int card))))))
(declare-fun slide ((Array Int card) Int Int) (Array Int card))

;; slide_eq
  (assert
  (forall ((a (Array Int card)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int card)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int card) Int Int (Array Int card) Int
  Int) (Array Int card))

;; concat_def
  (assert
  (forall ((a (Array Int card)) (b (Array Int card)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (card Int) (Array Int card))

;; singleton_def
  (assert
  (forall ((v card))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int card)) (a__first Int) (a__last Int)
  (b (Array Int card)) (b__first Int)
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
  (forall ((a (Array Int card)) (b (Array Int card)))
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

(declare-fun compare ((Array Int card) Int Int (Array Int card) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int card)) (b (Array Int card)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int card)) (b (Array Int card)))
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
  (forall ((a (Array Int card)) (b (Array Int card)))
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

(declare-sort cardindex 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 1) x) (<= x 100)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (cardindex cardindex) Bool)

(declare-fun dummy2 () cardindex)

(declare-datatypes ()
((cardindex__ref (mk_cardindex__ref (cardindex__content cardindex)))))
(define-fun cardindex__ref___projection ((a cardindex__ref)) cardindex 
  (cardindex__content a))

(declare-fun to_rep1 (cardindex) Int)

(declare-fun of_rep1 (Int) cardindex)

;; inversion_axiom
  (assert
  (forall ((x cardindex))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x cardindex)) (! (in_range3
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort tcardarrayD1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (tcardarrayD1 tcardarrayD1) Bool)

(declare-fun dummy3 () tcardarrayD1)

(declare-datatypes ()
((tcardarrayD1__ref
 (mk_tcardarrayD1__ref (tcardarrayD1__content tcardarrayD1)))))
(define-fun tcardarrayD1__ref___projection ((a tcardarrayD1__ref)) tcardarrayD1 
  (tcardarrayD1__content a))

(declare-sort tindexarrayD1 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (tindexarrayD1 tindexarrayD1) Bool)

(declare-fun dummy4 () tindexarrayD1)

(declare-datatypes ()
((tindexarrayD1__ref
 (mk_tindexarrayD1__ref (tindexarrayD1__content tindexarrayD1)))))
(define-fun tindexarrayD1__ref___projection ((a tindexarrayD1__ref)) tindexarrayD1 
  (tindexarrayD1__content a))

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int cardindex))))))
(declare-fun slide1 ((Array Int cardindex) Int Int) (Array Int cardindex))

;; slide_eq
  (assert
  (forall ((a (Array Int cardindex)))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int cardindex)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int cardindex) Int Int (Array Int cardindex) Int
  Int) (Array Int cardindex))

;; concat_def
  (assert
  (forall ((a (Array Int cardindex)) (b (Array Int cardindex)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (cardindex Int) (Array Int cardindex))

;; singleton_def
  (assert
  (forall ((v cardindex))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq6 ((a (Array Int cardindex)) (a__first Int) (a__last Int)
  (b (Array Int cardindex)) (b__first Int)
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
  (forall ((a (Array Int cardindex)) (b (Array Int cardindex)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep1 (select a temp___idx_133)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_133)))))))))))

(declare-fun compare1 ((Array Int cardindex) Int Int (Array Int cardindex)
  Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int cardindex)) (b (Array Int cardindex)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare1 a a_first a_last b b_first b_last) 0)
     (= (bool_eq6 a a_first a_last b b_first b_last) true)) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int cardindex)) (b (Array Int cardindex)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare1 a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq6 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int cardindex)) (b (Array Int cardindex)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare1 a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq6 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

(declare-sort tindexmatrixD1 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq5 (tindexmatrixD1 tindexmatrixD1) Bool)

(declare-fun dummy5 () tindexmatrixD1)

(declare-datatypes ()
((tindexmatrixD1__ref
 (mk_tindexmatrixD1__ref (tindexmatrixD1__content tindexmatrixD1)))))
(define-fun tindexmatrixD1__ref___projection ((a tindexmatrixD1__ref)) tindexmatrixD1 
  (tindexmatrixD1__content a))

(declare-fun dummy6 () (Array Int cardindex))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int cardindex)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int cardindex)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int cardindex)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int cardindex))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int cardindex))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int cardindex))) (<= 0 (object__alignment a))))

(declare-fun user_eq6 ((Array Int cardindex) (Array Int cardindex)) Bool)

(declare-datatypes ()
((map__ref2 (mk_map__ref2 (map__content2 (Array Int (Array Int cardindex)))))))
(declare-fun slide2 ((Array Int (Array Int cardindex)) Int
  Int) (Array Int (Array Int cardindex)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int cardindex))))
  (forall ((first Int))
  (! (= (slide2 a first first) a) :pattern ((slide2 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int cardindex))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide2 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide2 a old_first new_first) i)) ))))))

(declare-fun concat3 ((Array Int (Array Int cardindex)) Int Int
  (Array Int (Array Int cardindex)) Int
  Int) (Array Int (Array Int cardindex)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int cardindex)))
  (b (Array Int (Array Int cardindex))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat3 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton3 ((Array Int cardindex)
  Int) (Array Int (Array Int cardindex)))

;; singleton_def
  (assert
  (forall ((v (Array Int cardindex)))
  (forall ((i Int))
  (! (= (select (singleton3 v i) i) v) :pattern ((select (singleton3 v i) i)) ))))

(define-fun bool_eq8 ((a (Array Int (Array Int cardindex))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int cardindex))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_134 Int))
                           (=>
                           (and (<= a__first temp___idx_134)
                           (<= temp___idx_134 a__last))
                           (= (bool_eq6 (select a temp___idx_134) 0 99
                              (select b (+ (- b__first a__first) temp___idx_134))
                              0 99) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int cardindex)))
  (b (Array Int (Array Int cardindex))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq8 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_134 Int))
  (=> (and (<= a__first temp___idx_134) (<= temp___idx_134 a__last))
  (= (bool_eq6 (select a temp___idx_134) 0 99
     (select b (+ (- b__first a__first) temp___idx_134)) 0 99) true))))))))

(declare-fun dummy7 () (Array Int card))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int card)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int card)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int card)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int card))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int card))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int card))) (<= 0 (object__alignment1 a))))

(declare-fun user_eq7 ((Array Int card) (Array Int card)) Bool)

(declare-fun dummy8 () (Array Int (Array Int cardindex)))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int (Array Int cardindex))) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int (Array Int cardindex))) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int (Array Int cardindex))) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert
  (forall ((a (Array Int (Array Int cardindex)))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int (Array Int cardindex))))
  (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert
  (forall ((a (Array Int (Array Int cardindex))))
  (<= 0 (object__alignment2 a))))

(declare-fun user_eq8 ((Array Int (Array Int cardindex))
  (Array Int (Array Int cardindex))) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__patience__state__numelts cardindex)(rec__patience__state__values (Array Int card))(rec__patience__state__numstacks cardindex)(rec__patience__state__stacksizes (Array Int cardindex))(rec__patience__state__stacks (Array Int (Array Int cardindex)))(rec__patience__state__posstack (Array Int cardindex))(rec__patience__state__posheight (Array Int cardindex))(rec__patience__state__preds (Array Int cardindex))))))
(define-fun us_split_fields_NumElts__projection ((a us_split_fields)) cardindex 
  (rec__patience__state__numelts a))

(define-fun us_split_fields_Values__projection ((a us_split_fields)) (Array Int card) 
  (rec__patience__state__values a))

(define-fun us_split_fields_NumStacks__projection ((a us_split_fields)) cardindex 
  (rec__patience__state__numstacks a))

(define-fun us_split_fields_StackSizes__projection ((a us_split_fields)) (Array Int cardindex) 
  (rec__patience__state__stacksizes a))

(define-fun us_split_fields_Stacks__projection ((a us_split_fields)) (Array Int (Array Int cardindex)) 
  (rec__patience__state__stacks a))

(define-fun us_split_fields_PosStack__projection ((a us_split_fields)) (Array Int cardindex) 
  (rec__patience__state__posstack a))

(define-fun us_split_fields_PosHeight__projection ((a us_split_fields)) (Array Int cardindex) 
  (rec__patience__state__posheight a))

(define-fun us_split_fields_Preds__projection ((a us_split_fields)) (Array Int cardindex) 
  (rec__patience__state__preds a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq9 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (= (to_rep1
                           (rec__patience__state__numelts
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__patience__state__numelts
                                                  (us_split_fields1 b))))
                        (= (bool_eq2
                           (rec__patience__state__values
                           (us_split_fields1 a)) 0 99
                           (rec__patience__state__values
                           (us_split_fields1 b)) 0 99) true))
                        (= (to_rep1
                           (rec__patience__state__numstacks
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__patience__state__numstacks
                                                  (us_split_fields1 b)))))
                        (= (bool_eq6
                           (rec__patience__state__stacksizes
                           (us_split_fields1 a)) 0 99
                           (rec__patience__state__stacksizes
                           (us_split_fields1 b)) 0 99) true))
                        (= (bool_eq8
                           (rec__patience__state__stacks
                           (us_split_fields1 a)) 0 99
                           (rec__patience__state__stacks
                           (us_split_fields1 b)) 0 99) true))
                        (= (bool_eq6
                           (rec__patience__state__posstack
                           (us_split_fields1 a)) 0 99
                           (rec__patience__state__posstack
                           (us_split_fields1 b)) 0 99) true))
                        (= (bool_eq6
                           (rec__patience__state__posheight
                           (us_split_fields1 a)) 0 99
                           (rec__patience__state__posheight
                           (us_split_fields1 b)) 0 99) true))
                        (= (bool_eq6
                           (rec__patience__state__preds (us_split_fields1 a))
                           0 99
                           (rec__patience__state__preds (us_split_fields1 b))
                           0 99) true))
                   true false))

(declare-fun user_eq9 (us_rep us_rep) Bool)

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))

(declare-fun patience__state__numelts__first__bit () Int)

(declare-fun patience__state__numelts__last__bit () Int)

(declare-fun patience__state__numelts__position () Int)

;; patience__state__numelts__first__bit_axiom
  (assert (<= 0 patience__state__numelts__first__bit))

;; patience__state__numelts__last__bit_axiom
  (assert
  (< patience__state__numelts__first__bit patience__state__numelts__last__bit))

;; patience__state__numelts__position_axiom
  (assert (<= 0 patience__state__numelts__position))

(declare-fun patience__state__values__first__bit () Int)

(declare-fun patience__state__values__last__bit () Int)

(declare-fun patience__state__values__position () Int)

;; patience__state__values__first__bit_axiom
  (assert (<= 0 patience__state__values__first__bit))

;; patience__state__values__last__bit_axiom
  (assert
  (< patience__state__values__first__bit patience__state__values__last__bit))

;; patience__state__values__position_axiom
  (assert (<= 0 patience__state__values__position))

(declare-fun patience__state__numstacks__first__bit () Int)

(declare-fun patience__state__numstacks__last__bit () Int)

(declare-fun patience__state__numstacks__position () Int)

;; patience__state__numstacks__first__bit_axiom
  (assert (<= 0 patience__state__numstacks__first__bit))

;; patience__state__numstacks__last__bit_axiom
  (assert
  (< patience__state__numstacks__first__bit patience__state__numstacks__last__bit))

;; patience__state__numstacks__position_axiom
  (assert (<= 0 patience__state__numstacks__position))

(declare-fun patience__state__stacksizes__first__bit () Int)

(declare-fun patience__state__stacksizes__last__bit () Int)

(declare-fun patience__state__stacksizes__position () Int)

;; patience__state__stacksizes__first__bit_axiom
  (assert (<= 0 patience__state__stacksizes__first__bit))

;; patience__state__stacksizes__last__bit_axiom
  (assert
  (< patience__state__stacksizes__first__bit patience__state__stacksizes__last__bit))

;; patience__state__stacksizes__position_axiom
  (assert (<= 0 patience__state__stacksizes__position))

(declare-fun patience__state__stacks__first__bit () Int)

(declare-fun patience__state__stacks__last__bit () Int)

(declare-fun patience__state__stacks__position () Int)

;; patience__state__stacks__first__bit_axiom
  (assert (<= 0 patience__state__stacks__first__bit))

;; patience__state__stacks__last__bit_axiom
  (assert
  (< patience__state__stacks__first__bit patience__state__stacks__last__bit))

;; patience__state__stacks__position_axiom
  (assert (<= 0 patience__state__stacks__position))

(declare-fun patience__state__posstack__first__bit () Int)

(declare-fun patience__state__posstack__last__bit () Int)

(declare-fun patience__state__posstack__position () Int)

;; patience__state__posstack__first__bit_axiom
  (assert (<= 0 patience__state__posstack__first__bit))

;; patience__state__posstack__last__bit_axiom
  (assert
  (< patience__state__posstack__first__bit patience__state__posstack__last__bit))

;; patience__state__posstack__position_axiom
  (assert (<= 0 patience__state__posstack__position))

(declare-fun patience__state__posheight__first__bit () Int)

(declare-fun patience__state__posheight__last__bit () Int)

(declare-fun patience__state__posheight__position () Int)

;; patience__state__posheight__first__bit_axiom
  (assert (<= 0 patience__state__posheight__first__bit))

;; patience__state__posheight__last__bit_axiom
  (assert
  (< patience__state__posheight__first__bit patience__state__posheight__last__bit))

;; patience__state__posheight__position_axiom
  (assert (<= 0 patience__state__posheight__position))

(declare-fun patience__state__preds__first__bit () Int)

(declare-fun patience__state__preds__last__bit () Int)

(declare-fun patience__state__preds__position () Int)

;; patience__state__preds__first__bit_axiom
  (assert (<= 0 patience__state__preds__first__bit))

;; patience__state__preds__last__bit_axiom
  (assert
  (< patience__state__preds__first__bit patience__state__preds__last__bit))

;; patience__state__preds__position_axiom
  (assert (<= 0 patience__state__preds__position))

(declare-fun dummy9 () us_rep)

(declare-datatypes () ((state__ref (mk_state__ref (state__content us_rep)))))
(define-fun state__ref___projection ((a state__ref)) us_rep (state__content
                                                            a))

(declare-fun s () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_166 Int)
  (temp___is_init_163 Bool) (temp___skip_constant_164 Bool)
  (temp___do_toplevel_165 Bool)) Bool (=>
                                      (or (= temp___is_init_163 true)
                                      (<= 1 52)) (in_range2 temp___expr_166)))

(define-fun dynamic_invariant2 ((temp___expr_177 Int)
  (temp___is_init_174 Bool) (temp___skip_constant_175 Bool)
  (temp___do_toplevel_176 Bool)) Bool (=>
                                      (or (= temp___is_init_174 true)
                                      (<= (- 1) 100)) (in_range3
                                      temp___expr_177)))

(declare-fun i () Int)

(declare-fun j () Int)

(declare-fun o () Int)

(declare-fun o1 () cardindex)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Bool)

(declare-fun k () Int)

(declare-fun o5 () Int)

(declare-fun o6 () cardindex)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun o9 () Bool)

(declare-fun result () Bool)

(declare-fun result1 () Bool)

(declare-fun result2 () Bool)

(declare-fun result3 () Bool)

(declare-fun result4 () Bool)

;; H
  (assert
  (=>
  (and
  (and
  (and
  (<= 0 (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))))
  (<= (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))) 
  (to_rep1 (rec__patience__state__numelts (us_split_fields1 s)))))
  (<= (to_rep1 (rec__patience__state__numelts (us_split_fields1 s))) 100))
  (or (= (to_rep1 (rec__patience__state__numelts (us_split_fields1 s))) 0)
  (< 0 (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))))))
  (= (= result3 true)
  (forall ((i1 Int))
  (=>
  (and (<= 0 i1)
  (<= i1 (- (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))) 1)))
  (and
  (and
  (<= 1 (to_rep1
        (select (rec__patience__state__stacksizes (us_split_fields1 s)) i1)))
  (<= (to_rep1
      (select (rec__patience__state__stacksizes (us_split_fields1 s)) i1)) 
  (to_rep1 (rec__patience__state__numelts (us_split_fields1 s)))))
  (forall ((j1 Int))
  (=>
  (and (<= 0 j1)
  (<= j1 (- (to_rep1
            (select (rec__patience__state__stacksizes (us_split_fields1 s)) i1)) 1)))
  (and
  (<= 0 (to_rep1
        (select (select (rec__patience__state__stacks (us_split_fields1 s)) i1) j1)))
  (< (to_rep1
     (select (select (rec__patience__state__stacks (us_split_fields1 s)) i1) j1)) 
  (to_rep1 (rec__patience__state__numelts (us_split_fields1 s)))))))))))))

;; H
  (assert
  (=>
  (not
  (and
  (and
  (and
  (<= 0 (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))))
  (<= (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))) 
  (to_rep1 (rec__patience__state__numelts (us_split_fields1 s)))))
  (<= (to_rep1 (rec__patience__state__numelts (us_split_fields1 s))) 100))
  (or (= (to_rep1 (rec__patience__state__numelts (us_split_fields1 s))) 0)
  (< 0 (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s)))))))
  (= result3 false)))

;; H
  (assert
  (=> (= result3 true)
  (= (= result2 true)
  (forall ((i1 Int))
  (=>
  (and (<= 0 i1)
  (<= i1 (- (to_rep1 (rec__patience__state__numelts (us_split_fields1 s))) 1)))
  (and
  (and
  (and
  (<= 0 (to_rep1
        (select (rec__patience__state__posstack (us_split_fields1 s)) i1)))
  (<= (to_rep1
      (select (rec__patience__state__posstack (us_split_fields1 s)) i1)) (- 
  (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))) 1)))
  (and
  (<= 0 (to_rep1
        (select (rec__patience__state__posheight (us_split_fields1 s)) i1)))
  (<= (to_rep1
      (select (rec__patience__state__posheight (us_split_fields1 s)) i1)) (- 
  (to_rep1
  (select (rec__patience__state__stacksizes (us_split_fields1 s)) (to_rep1
                                                                  (select 
                                                                  (rec__patience__state__posstack
                                                                  (us_split_fields1
                                                                  s)) i1)))) 1))))
  (= (to_rep1
     (select (select (rec__patience__state__stacks (us_split_fields1 s)) 
     (to_rep1
     (select (rec__patience__state__posstack (us_split_fields1 s)) i1))) 
     (to_rep1
     (select (rec__patience__state__posheight (us_split_fields1 s)) i1)))) i1)))))))

;; H
  (assert (=> (not (= result3 true)) (= result2 false)))

;; H
  (assert
  (=> (= result2 true)
  (= (= result1 true)
  (forall ((ist Int))
  (=>
  (and (<= 0 ist)
  (<= ist (- (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))) 1)))
  (forall ((ip Int))
  (=>
  (and (<= 0 ip)
  (<= ip (- (to_rep1
            (select (rec__patience__state__stacksizes (us_split_fields1 s)) ist)) 1)))
  (and
  (= ist (to_rep1
         (select (rec__patience__state__posstack (us_split_fields1 s)) 
         (to_rep1
         (select (select (rec__patience__state__stacks (us_split_fields1 s)) ist) ip)))))
  (= ip (to_rep1
        (select (rec__patience__state__posheight (us_split_fields1 s)) 
        (to_rep1
        (select (select (rec__patience__state__stacks (us_split_fields1 s)) ist) ip)))))))))))))

;; H
  (assert (=> (not (= result2 true)) (= result1 false)))

;; H
  (assert
  (=> (= result1 true)
  (= (= result true)
  (forall ((i1 Int))
  (=>
  (and (<= 0 i1)
  (<= i1 (- (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))) 1)))
  (forall ((j1 Int))
  (=>
  (and (<= 0 j1)
  (<= j1 (- (to_rep1
            (select (rec__patience__state__stacksizes (us_split_fields1 s)) i1)) 2)))
  (forall ((k1 Int))
  (=>
  (and (<= (+ j1 1) k1)
  (<= k1 (- (to_rep1
            (select (rec__patience__state__stacksizes (us_split_fields1 s)) i1)) 1)))
  (< (to_rep1
     (select (select (rec__patience__state__stacks (us_split_fields1 s)) i1) j1)) 
  (to_rep1
  (select (select (rec__patience__state__stacks (us_split_fields1 s)) i1) k1))))))))))))

;; H
  (assert (=> (not (= result1 true)) (= result false)))

;; H
  (assert (= result true))

;; H
  (assert (<= 0 i))

;; H
  (assert
  (<= i (- (to_rep1 (rec__patience__state__numstacks (us_split_fields1 s))) 1)))

;; H
  (assert (and (<= 0 i) (<= i 99)))

;; H
  (assert (= o i))

;; H
  (assert
  (= o1 (select (rec__patience__state__stacksizes (us_split_fields1 s)) 
  o)))

;; H
  (assert (= o2 (to_rep1 o1)))

;; H
  (assert (= o3 (- o2 2)))

;; H
  (assert (= o4 (ite (<= j o3) true false)))

;; H
  (assert (= result4 (ite (<= 0 j) o4 false)))

;; H
  (assert (= result4 true))

;; H
  (assert (and (<= 0 i) (<= i 99)))

;; H
  (assert (= o5 i))

;; H
  (assert
  (= o6 (select (rec__patience__state__stacksizes (us_split_fields1 s)) 
  o5)))

;; H
  (assert (= o7 (to_rep1 o6)))

;; H
  (assert (= o8 (- o7 1)))

;; H
  (assert (= o9 (ite (<= k o8) true false)))

(assert
;; WP_parameter_def
 ;; File "patience.ads", line 53, characters 0-0
  (not (in_range1 (+ j 1))))
(check-sat)
