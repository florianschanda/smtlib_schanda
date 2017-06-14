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

(declare-sort my_integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (my_integer my_integer) Bool)

(declare-fun dummy () my_integer)

(declare-datatypes ()
((my_integer__ref (mk_my_integer__ref (my_integer__content my_integer)))))
(define-fun my_integer__ref___projection ((a my_integer__ref)) my_integer 
  (my_integer__content a))

(declare-fun to_rep (my_integer) Int)

(declare-fun of_rep (Int) my_integer)

;; inversion_axiom
  (assert
  (forall ((x my_integer))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x my_integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

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
  (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__storage_place_attributes__r2__d1 my_integer)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) my_integer 
  (rec__storage_place_attributes__r2__d1 a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__storage_place_attributes__r2__d3 integer)(rec__storage_place_attributes__r2__d2 Bool)))))
(define-fun us_split_fields_D3__projection ((a us_split_fields)) integer 
  (rec__storage_place_attributes__r2__d3 a))

(define-fun us_split_fields_D2__projection ((a us_split_fields)) Bool 
  (rec__storage_place_attributes__r2__d2 a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)(attr__constrained Bool)))))
(define-fun us_rep_3__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                              a))

(define-fun us_rep_4__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun us_rep_5__projection ((a us_rep)) Bool (attr__constrained a))

(define-fun storage_place_attributes__r2__d2__pred ((a us_rep)) Bool (= 
  (to_rep (rec__storage_place_attributes__r2__d1 (us_split_discrs1 a))) 5))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep
                           (rec__storage_place_attributes__r2__d1
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__storage_place_attributes__r2__d1
                                                  (us_split_discrs1 b))))
                        (= (to_rep1
                           (rec__storage_place_attributes__r2__d3
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__storage_place_attributes__r2__d3
                                                  (us_split_fields1 b)))))
                        (=> (storage_place_attributes__r2__d2__pred a)
                        (= (rec__storage_place_attributes__r2__d2
                           (us_split_fields1 a)) (rec__storage_place_attributes__r2__d2
                                                 (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

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

(declare-fun storage_place_attributes__r2__d1__first__bit () Int)

(declare-fun storage_place_attributes__r2__d1__last__bit () Int)

(declare-fun storage_place_attributes__r2__d1__position () Int)

;; storage_place_attributes__r2__d1__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d1__first__bit))

;; storage_place_attributes__r2__d1__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d1__first__bit storage_place_attributes__r2__d1__last__bit))

;; storage_place_attributes__r2__d1__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d1__position))

(declare-fun storage_place_attributes__r2__d3__first__bit () Int)

(declare-fun storage_place_attributes__r2__d3__last__bit () Int)

(declare-fun storage_place_attributes__r2__d3__position () Int)

;; storage_place_attributes__r2__d3__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d3__first__bit))

;; storage_place_attributes__r2__d3__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d3__first__bit storage_place_attributes__r2__d3__last__bit))

;; storage_place_attributes__r2__d3__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d3__position))

(declare-fun storage_place_attributes__r2__d2__first__bit () Int)

(declare-fun storage_place_attributes__r2__d2__last__bit () Int)

(declare-fun storage_place_attributes__r2__d2__position () Int)

;; storage_place_attributes__r2__d2__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d2__first__bit))

;; storage_place_attributes__r2__d2__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d2__first__bit storage_place_attributes__r2__d2__last__bit))

;; storage_place_attributes__r2__d2__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d2__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((r2__ref (mk_r2__ref (r2__content us_rep)))))
(define-fun r2__ref___projection ((a r2__ref)) us_rep (r2__content a))

(define-fun default_initial_assumption ((temp___expr_191 us_rep)
  (temp___skip_top_level_192 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_191) false)
                                         (and
                                         (and
                                         (= (to_rep
                                            (rec__storage_place_attributes__r2__d1
                                            (us_split_discrs1
                                            temp___expr_191))) 1)
                                         (= (to_rep1
                                            (rec__storage_place_attributes__r2__d3
                                            (us_split_fields1
                                            temp___expr_191))) 0))
                                         (=>
                                         (storage_place_attributes__r2__d2__pred
                                         temp___expr_191)
                                         (= (rec__storage_place_attributes__r2__d2
                                            (us_split_fields1
                                            temp___expr_191)) (of_int 0))))))

(define-fun in_range3 ((rec__storage_place_attributes__r2__d11 Int)
  (a us_rep)) Bool (= rec__storage_place_attributes__r2__d11 (to_rep
                                                             (rec__storage_place_attributes__r2__d1
                                                             (us_split_discrs1
                                                             a)))))

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))

(declare-fun storage_place_attributes__r2__d1__first__bit1 () Int)

(declare-fun storage_place_attributes__r2__d1__last__bit1 () Int)

(declare-fun storage_place_attributes__r2__d1__position1 () Int)

;; storage_place_attributes__r2__d1__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d1__first__bit1))

;; storage_place_attributes__r2__d1__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d1__first__bit1 storage_place_attributes__r2__d1__last__bit1))

;; storage_place_attributes__r2__d1__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d1__position1))

(declare-fun storage_place_attributes__r2__d3__first__bit1 () Int)

(declare-fun storage_place_attributes__r2__d3__last__bit1 () Int)

(declare-fun storage_place_attributes__r2__d3__position1 () Int)

;; storage_place_attributes__r2__d3__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d3__first__bit1))

;; storage_place_attributes__r2__d3__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d3__first__bit1 storage_place_attributes__r2__d3__last__bit1))

;; storage_place_attributes__r2__d3__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d3__position1))

(declare-fun storage_place_attributes__r2__d2__first__bit1 () Int)

(declare-fun storage_place_attributes__r2__d2__last__bit1 () Int)

(declare-fun storage_place_attributes__r2__d2__position1 () Int)

;; storage_place_attributes__r2__d2__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d2__first__bit1))

;; storage_place_attributes__r2__d2__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d2__first__bit1 storage_place_attributes__r2__d2__last__bit1))

;; storage_place_attributes__r2__d2__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d2__position1))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((r2a__ref (mk_r2a__ref (r2a__content us_rep)))))
(define-fun r2a__ref___projection ((a r2a__ref)) us_rep (r2a__content a))

(define-fun dynamic_invariant ((temp___expr_212 us_rep)
  (temp___is_init_209 Bool) (temp___skip_constant_210 Bool)
  (temp___do_toplevel_211 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_210 true))
                                      (in_range3 5 temp___expr_212))
                                      (= (attr__constrained temp___expr_212) true)))

(define-fun default_initial_assumption1 ((temp___expr_214 us_rep)
  (temp___skip_top_level_215 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_214) true)
                                         (and
                                         (and
                                         (= (to_rep
                                            (rec__storage_place_attributes__r2__d1
                                            (us_split_discrs1
                                            temp___expr_214))) 5)
                                         (= (to_rep1
                                            (rec__storage_place_attributes__r2__d3
                                            (us_split_fields1
                                            temp___expr_214))) 0))
                                         (=>
                                         (storage_place_attributes__r2__d2__pred
                                         temp___expr_214)
                                         (= (rec__storage_place_attributes__r2__d2
                                            (us_split_fields1
                                            temp___expr_214)) (of_int 0))))))

(define-fun in_range4 ((rec__storage_place_attributes__r2__d11 Int)
  (a us_rep)) Bool (= rec__storage_place_attributes__r2__d11 (to_rep
                                                             (rec__storage_place_attributes__r2__d1
                                                             (us_split_discrs1
                                                             a)))))

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))

(declare-fun storage_place_attributes__r2__d1__first__bit2 () Int)

(declare-fun storage_place_attributes__r2__d1__last__bit2 () Int)

(declare-fun storage_place_attributes__r2__d1__position2 () Int)

;; storage_place_attributes__r2__d1__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d1__first__bit2))

;; storage_place_attributes__r2__d1__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d1__first__bit2 storage_place_attributes__r2__d1__last__bit2))

;; storage_place_attributes__r2__d1__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d1__position2))

(declare-fun storage_place_attributes__r2__d2__first__bit2 () Int)

(declare-fun storage_place_attributes__r2__d2__last__bit2 () Int)

(declare-fun storage_place_attributes__r2__d2__position2 () Int)

;; storage_place_attributes__r2__d2__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d2__first__bit2))

;; storage_place_attributes__r2__d2__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d2__first__bit2 storage_place_attributes__r2__d2__last__bit2))

;; storage_place_attributes__r2__d2__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d2__position2))

(declare-fun storage_place_attributes__r2__d3__first__bit2 () Int)

(declare-fun storage_place_attributes__r2__d3__last__bit2 () Int)

(declare-fun storage_place_attributes__r2__d3__position2 () Int)

;; storage_place_attributes__r2__d3__first__bit_axiom
  (assert (<= 0 storage_place_attributes__r2__d3__first__bit2))

;; storage_place_attributes__r2__d3__last__bit_axiom
  (assert
  (< storage_place_attributes__r2__d3__first__bit2 storage_place_attributes__r2__d3__last__bit2))

;; storage_place_attributes__r2__d3__position_axiom
  (assert (<= 0 storage_place_attributes__r2__d3__position2))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((r2b__ref (mk_r2b__ref (r2b__content us_rep)))))
(define-fun r2b__ref___projection ((a r2b__ref)) us_rep (r2b__content a))

(define-fun dynamic_invariant1 ((temp___expr_220 us_rep)
  (temp___is_init_217 Bool) (temp___skip_constant_218 Bool)
  (temp___do_toplevel_219 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_218 true))
                                      (in_range4 1 temp___expr_220))
                                      (= (attr__constrained temp___expr_220) true)))

(define-fun default_initial_assumption2 ((temp___expr_222 us_rep)
  (temp___skip_top_level_223 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_222) true)
                                         (and
                                         (and
                                         (= (to_rep
                                            (rec__storage_place_attributes__r2__d1
                                            (us_split_discrs1
                                            temp___expr_222))) 1)
                                         (=>
                                         (storage_place_attributes__r2__d2__pred
                                         temp___expr_222)
                                         (= (rec__storage_place_attributes__r2__d2
                                            (us_split_fields1
                                            temp___expr_222)) (of_int 0))))
                                         (= (to_rep1
                                            (rec__storage_place_attributes__r2__d3
                                            (us_split_fields1
                                            temp___expr_222))) 0))))

(declare-sort tTr2a_arrSP1 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (tTr2a_arrSP1 tTr2a_arrSP1) Bool)

(declare-fun dummy5 () tTr2a_arrSP1)

(declare-datatypes ()
((tTr2a_arrSP1__ref
 (mk_tTr2a_arrSP1__ref (tTr2a_arrSP1__content tTr2a_arrSP1)))))
(define-fun tTr2a_arrSP1__ref___projection ((a tTr2a_arrSP1__ref)) tTr2a_arrSP1 
  (tTr2a_arrSP1__content a))

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
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (bool_eq2 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
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
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq2 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(define-fun dynamic_invariant2 ((temp___expr_234 (Array Int us_rep))
  (temp___is_init_231 Bool) (temp___skip_constant_232 Bool)
  (temp___do_toplevel_233 Bool)) Bool (forall ((temp___235 Int))
                                      (=>
                                      (and (<= 1 temp___235)
                                      (<= temp___235 3))
                                      (and
                                      (and (in_range3 5
                                      (select temp___expr_234 temp___235))
                                      (= (attr__constrained
                                         (select temp___expr_234 temp___235)) true))
                                      (= (attr__constrained
                                         (select temp___expr_234 temp___235)) true)))))

(define-fun default_initial_assumption3 ((temp___expr_237 (Array Int us_rep))
  (temp___skip_top_level_238 Bool)) Bool (forall ((temp___239 Int))
                                         (=>
                                         (and (<= 1 temp___239)
                                         (<= temp___239 3))
                                         (and
                                         (= (attr__constrained
                                            (select temp___expr_237 temp___239)) true)
                                         (and
                                         (and
                                         (= (to_rep
                                            (rec__storage_place_attributes__r2__d1
                                            (us_split_discrs1
                                            (select temp___expr_237 temp___239)))) 5)
                                         (= (to_rep1
                                            (rec__storage_place_attributes__r2__d3
                                            (us_split_fields1
                                            (select temp___expr_237 temp___239)))) 0))
                                         (=>
                                         (storage_place_attributes__r2__d2__pred
                                         (select temp___expr_237 temp___239))
                                         (= (rec__storage_place_attributes__r2__d2
                                            (us_split_fields1
                                            (select temp___expr_237 temp___239))) 
                                         (of_int 0))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun o2a__split_discrs () us_split_discrs)

(declare-fun o2a__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun o2aa__split_discrs () us_split_discrs)

(declare-fun o2aa__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun o2b__split_discrs () us_split_discrs)

(declare-fun o2b__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun o2__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_172 Int)
  (temp___is_init_169 Bool) (temp___skip_constant_170 Bool)
  (temp___do_toplevel_171 Bool)) Bool (=>
                                      (or (= temp___is_init_169 true)
                                      (<= 1 10)) (in_range1 temp___expr_172)))

(declare-fun r2a_arr () (Array Int us_rep))

(declare-fun o2a__split_fields () integer)

(declare-fun o2a__split_fields1 () Bool)

(declare-fun o2aa__split_fields () integer)

(declare-fun o2aa__split_fields1 () Bool)

(declare-fun o2b__split_fields () integer)

(declare-fun o2b__split_fields1 () Bool)

(declare-fun o2__split_fields () integer)

(declare-fun o2__split_fields1 () Bool)

(declare-fun o2__split_discrs () my_integer)

(declare-fun us () Int)

(declare-fun us1 () Int)

(declare-fun us2 () Int)

;; H
  (assert (and (= us 5) (in_range1 5)))

;; H
  (assert (and (= us1 5) (in_range1 5)))

;; H
  (assert (and (= us2 1) (in_range1 1)))

;; H
  (assert (default_initial_assumption3 r2a_arr false))

;; H
  (assert (dynamic_invariant2 r2a_arr false false true))

;; H
  (assert (default_initial_assumption1
  (mk___rep o2a__split_discrs
  (mk___split_fields o2a__split_fields o2a__split_fields1)
  o2a__attr__constrained) false))

;; H
  (assert
  (and
  (= 5 (to_rep (rec__storage_place_attributes__r2__d1 o2a__split_discrs)))
  (= o2a__attr__constrained true)))

;; H
  (assert (default_initial_assumption1
  (mk___rep o2aa__split_discrs
  (mk___split_fields o2aa__split_fields o2aa__split_fields1)
  o2aa__attr__constrained) false))

;; H
  (assert
  (and
  (= 5 (to_rep (rec__storage_place_attributes__r2__d1 o2aa__split_discrs)))
  (= o2aa__attr__constrained true)))

;; H
  (assert (default_initial_assumption2
  (mk___rep o2b__split_discrs
  (mk___split_fields o2b__split_fields o2b__split_fields1)
  o2b__attr__constrained) false))

;; H
  (assert
  (and
  (= 1 (to_rep (rec__storage_place_attributes__r2__d1 o2b__split_discrs)))
  (= o2b__attr__constrained true)))

;; H
  (assert
  (= storage_place_attributes__r2__d3__first__bit1 storage_place_attributes__r2__d3__first__bit2))

;; H
  (assert (default_initial_assumption
  (mk___rep (mk___split_discrs o2__split_discrs)
  (mk___split_fields o2__split_fields o2__split_fields1)
  o2__attr__constrained) false))

(assert
;; WP_parameter_def
 ;; File "storage_place_attributes.adb", line 1, characters 0-0
  (not
  (= storage_place_attributes__r2__d3__first__bit storage_place_attributes__r2__d3__first__bit1)))
(check-sat)
