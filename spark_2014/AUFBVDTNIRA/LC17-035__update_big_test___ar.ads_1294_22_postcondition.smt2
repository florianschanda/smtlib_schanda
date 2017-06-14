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

(declare-sort it1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (it1 it1) Bool)

(declare-fun dummy () it1)

(declare-datatypes () ((it1__ref (mk_it1__ref (it1__content it1)))))
(define-fun it1__ref___projection ((a it1__ref)) it1 (it1__content a))

(define-fun dynamic_invariant ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= 1 10)) (in_range1 temp___expr_152)))

(declare-sort et1 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (et1 et1) Bool)

(declare-fun dummy1 () et1)

(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))

(define-fun dynamic_invariant1 ((temp___expr_176 Int)
  (temp___is_init_173 Bool) (temp___skip_constant_174 Bool)
  (temp___do_toplevel_175 Bool)) Bool (=>
                                      (or (= temp___is_init_173 true)
                                      (<= 0 99)) (in_range2 temp___expr_176)))

(declare-fun to_rep (et1) Int)

(declare-fun of_rep (Int) et1)

;; inversion_axiom
  (assert
  (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x et1)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort et2 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 25)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (et2 et2) Bool)

(declare-fun dummy2 () et2)

(declare-datatypes () ((et2__ref (mk_et2__ref (et2__content et2)))))
(define-fun et2__ref___projection ((a et2__ref)) et2 (et2__content a))

(declare-fun to_rep1 (et2) Int)

(declare-fun of_rep1 (Int) et2)

;; inversion_axiom
  (assert
  (forall ((x et2)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x et2)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__ar__rec1t__f1 et1)(rec__ar__rec1t__g1 et2)))))
(define-fun us_split_fields_F1__projection ((a us_split_fields)) et1 
  (rec__ar__rec1t__f1 a))

(define-fun us_split_fields_G1__projection ((a us_split_fields)) et2 
  (rec__ar__rec1t__g1 a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep (rec__ar__rec1t__f1 (us_split_fields1 a))) 
                        (to_rep (rec__ar__rec1t__f1 (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__ar__rec1t__g1 (us_split_fields1 a))) 
                        (to_rep1 (rec__ar__rec1t__g1 (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

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

(declare-fun ar__rec1t__f1__first__bit () Int)

(declare-fun ar__rec1t__f1__last__bit () Int)

(declare-fun ar__rec1t__f1__position () Int)

;; ar__rec1t__f1__first__bit_axiom
  (assert (<= 0 ar__rec1t__f1__first__bit))

;; ar__rec1t__f1__last__bit_axiom
  (assert (< ar__rec1t__f1__first__bit ar__rec1t__f1__last__bit))

;; ar__rec1t__f1__position_axiom
  (assert (<= 0 ar__rec1t__f1__position))

(declare-fun ar__rec1t__g1__first__bit () Int)

(declare-fun ar__rec1t__g1__last__bit () Int)

(declare-fun ar__rec1t__g1__position () Int)

;; ar__rec1t__g1__first__bit_axiom
  (assert (<= 0 ar__rec1t__g1__first__bit))

;; ar__rec1t__g1__last__bit_axiom
  (assert (< ar__rec1t__g1__first__bit ar__rec1t__g1__last__bit))

;; ar__rec1t__g1__position_axiom
  (assert (<= 0 ar__rec1t__g1__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((rec1t__ref (mk_rec1t__ref (rec1t__content us_rep)))))
(define-fun rec1t__ref___projection ((a rec1t__ref)) us_rep (rec1t__content
                                                            a))

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

(define-fun bool_eq4 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_136 Int))
                           (=>
                           (and (<= a__first temp___idx_136)
                           (<= temp___idx_136 a__last))
                           (= (bool_eq3 (select a temp___idx_136)
                              (select b (+ (- b__first a__first) temp___idx_136))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_136 Int))
  (=> (and (<= a__first temp___idx_136) (<= temp___idx_136 a__last))
  (= (bool_eq3 (select a temp___idx_136)
     (select b (+ (- b__first a__first) temp___idx_136))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun r () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun e () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant2 ((temp___expr_182 Int)
  (temp___is_init_179 Bool) (temp___skip_constant_180 Bool)
  (temp___do_toplevel_181 Bool)) Bool (=>
                                      (or (= temp___is_init_179 true)
                                      (<= 1 25)) (in_range3 temp___expr_182)))

(declare-fun a () (Array Int us_rep))

(declare-fun o () et1)

(declare-fun o1 () et1)

(declare-fun o2 () et2)

(declare-fun o3 () et1)

(declare-fun o4 () et2)

(declare-fun o5 () (Array Int us_rep))

(declare-fun result () (Array Int us_rep))

(declare-fun a1 () (Array Int us_rep))

(declare-fun result1 () (Array Int us_rep))

(declare-fun a2 () (Array Int us_rep))

(declare-fun a3 () (Array Int us_rep))

(declare-fun a4 () (Array Int us_rep))

;; H
  (assert (in_range1 i))

;; H
  (assert (in_range2 e))

;; H
  (assert (= result a))

;; H
  (assert (= a1 (store a i r)))

;; H
  (assert (= (to_rep o) e))

;; H
  (assert (= o o1))

;; H
  (assert (= (rec__ar__rec1t__g1 (us_split_fields1 (select a1 i))) o2))

;; H
  (assert (= o3 o1))

;; H
  (assert (= o4 o2))

;; H
  (assert (= o5 (store a1 i (mk___rep (mk___split_fields o3 o4)))))

;; H
  (assert (= result1 a1))

;; H
  (assert (= a2 o5))

;; H
  (assert (= a2 a3))

;; H
  (assert (= a4 a2))

(declare-fun n () Int)

;; H
  (assert (<= 1 n))

;; H
  (assert (<= n 10))

(assert
;; WP_parameter_def
 ;; File "ar.ads", line 1289, characters 0-0
  (not (in_range2
  (to_rep (rec__ar__rec1t__f1 (us_split_fields1 (select a3 n)))))))
(check-sat)
