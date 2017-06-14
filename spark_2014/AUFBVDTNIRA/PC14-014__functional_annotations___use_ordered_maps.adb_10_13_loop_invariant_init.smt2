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

(declare-sort positive 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (positive positive) Bool)

(declare-fun dummy () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range1
                                     temp___expr_39)))

(declare-sort count_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (count_type count_type) Bool)

(declare-fun dummy1 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(declare-fun to_rep (count_type) Int)

(declare-fun of_rep (Int) count_type)

;; inversion_axiom
  (assert
  (forall ((x count_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x count_type)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__use_ordered_maps__my_maps__map__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type 
  (rec__use_ordered_maps__my_maps__map__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__use_ordered_maps__my_maps__map us_main_type)))))
(define-fun us_split_fields_Map__projection ((a us_split_fields)) us_main_type 
  (rec__use_ordered_maps__my_maps__map a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_5__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep_7__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                              a))

(define-fun us_rep_8__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__use_ordered_maps__my_maps__map__capacity
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__use_ordered_maps__my_maps__map__capacity
                                                  (us_split_discrs1 b))))
                        (= (us_main_eq
                           (rec__use_ordered_maps__my_maps__map
                           (us_split_fields1 a))
                           (rec__use_ordered_maps__my_maps__map
                           (us_split_fields1 b))) true))
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

(declare-fun use_ordered_maps__my_maps__map__capacity__first__bit () Int)

(declare-fun use_ordered_maps__my_maps__map__capacity__last__bit () Int)

(declare-fun use_ordered_maps__my_maps__map__capacity__position () Int)

;; use_ordered_maps__my_maps__map__capacity__first__bit_axiom
  (assert (<= 0 use_ordered_maps__my_maps__map__capacity__first__bit))

;; use_ordered_maps__my_maps__map__capacity__last__bit_axiom
  (assert
  (< use_ordered_maps__my_maps__map__capacity__first__bit use_ordered_maps__my_maps__map__capacity__last__bit))

;; use_ordered_maps__my_maps__map__capacity__position_axiom
  (assert (<= 0 use_ordered_maps__my_maps__map__capacity__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep)))))
(define-fun map__ref___projection ((a map__ref)) us_rep (map__content a))

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

(declare-fun oeq1 (Int us_rep us_rep) Bool)

(declare-fun oeq__function_guard1 (Bool Int us_rep us_rep) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (= (user_eq2 a b) (oeq a b)) :pattern ((user_eq2 a b)) )))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__use_ordered_maps__my_maps__cursor__node count_type)))))
(define-fun us_split_fields_Node__projection ((a us_split_fields2)) count_type 
  (rec__use_ordered_maps__my_maps__cursor__node a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_6__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_9__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq3 ((a us_rep1)
  (b us_rep1)) Bool (ite (= (to_rep
                            (rec__use_ordered_maps__my_maps__cursor__node
                            (us_split_fields3 a))) (to_rep
                                                   (rec__use_ordered_maps__my_maps__cursor__node
                                                   (us_split_fields3 b))))
                    true false))

(declare-fun user_eq3 (us_rep1 us_rep1) Bool)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep1) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))

(declare-fun use_ordered_maps__my_maps__cursor__node__first__bit () Int)

(declare-fun use_ordered_maps__my_maps__cursor__node__last__bit () Int)

(declare-fun use_ordered_maps__my_maps__cursor__node__position () Int)

;; use_ordered_maps__my_maps__cursor__node__first__bit_axiom
  (assert (<= 0 use_ordered_maps__my_maps__cursor__node__first__bit))

;; use_ordered_maps__my_maps__cursor__node__last__bit_axiom
  (assert
  (< use_ordered_maps__my_maps__cursor__node__first__bit use_ordered_maps__my_maps__cursor__node__last__bit))

;; use_ordered_maps__my_maps__cursor__node__position_axiom
  (assert (<= 0 use_ordered_maps__my_maps__cursor__node__position))

(declare-fun dummy3 () us_rep1)

(declare-datatypes ()
((cursor__ref (mk_cursor__ref (cursor__content us_rep1)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep1 (cursor__content
                                                               a))

(declare-fun no_element () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep2 0)

(declare-fun bool_eq4 (us_rep2 us_rep2) Bool)

(declare-fun user_eq4 (us_rep2 us_rep2) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep2) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))

(declare-fun dummy4 () us_rep2)

(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 us_rep2)))))
(define-fun map__ref_2__projection ((a map__ref1)) us_rep2 (map__content1 a))

(declare-fun has_key (us_rep2 Int) Bool)

(declare-fun has_key__function_guard (Bool us_rep2 Int) Bool)

(define-fun equivalent_keys ((left Int)
  (right Int)) Bool (and (not (< left right)) (not (< right left))))

(declare-fun equivalent_keys__function_guard (Bool Int Int) Bool)

(declare-sort key_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (key_type key_type) Bool)

(declare-fun dummy5 () key_type)

(declare-datatypes ()
((key_type__ref (mk_key_type__ref (key_type__content key_type)))))
(define-fun key_type__ref_2__projection ((a key_type__ref)) key_type 
  (key_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_321 Int)
  (temp___is_init_318 Bool) (temp___skip_constant_319 Bool)
  (temp___do_toplevel_320 Bool)) Bool (=>
                                      (or (= temp___is_init_318 true)
                                      (<= 1 2147483647)) (in_range3
                                      temp___expr_321)))

(declare-fun length (us_rep2) Int)

(declare-fun length__function_guard (Int us_rep2) Bool)

(declare-fun is_empty (us_rep2) Bool)

(declare-fun is_empty__function_guard (Bool us_rep2) Bool)

(define-fun default_initial_assumption ((temp___expr_334 us_rep2)
  (temp___skip_top_level_335 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_335 true))
                                         (and
                                         (= (is_empty temp___expr_334) true)
                                         (= (length temp___expr_334) 0))))

;; has_key__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((key Int))
  (! (=> (dynamic_invariant1 key true true true)
     (=> (= (of_int 1) true)
     (=>
     (exists ((k Int))
     (and (and (in_range3 k) (= (has_key container k) true))
     (= (equivalent_keys k key) true))) (= (has_key container key) true)))) :pattern (
  (has_key container key)) ))))

(declare-sort us_main_type2 0)

(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)

(declare-sort us_rep3 0)

(declare-fun bool_eq6 (us_rep3 us_rep3) Bool)

(declare-fun user_eq6 (us_rep3 us_rep3) Bool)

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep3) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep3) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep3)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep3)) (<= 0 (object__alignment3 a))))

(declare-fun dummy6 () us_rep3)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep3)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep3 (sequence__content
                                                                   a))

(declare-fun get (us_rep3 Int) Int)

(declare-fun get__function_guard (Int us_rep3 Int) Bool)

(declare-sort element_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq7 (element_type element_type) Bool)

(declare-fun dummy7 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_3__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_352 Int)
  (temp___is_init_349 Bool) (temp___skip_constant_350 Bool)
  (temp___do_toplevel_351 Bool)) Bool (=>
                                      (or (= temp___is_init_349 true)
                                      (<= 1 2147483647)) (in_range4
                                      temp___expr_352)))

(declare-sort extended_index 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq8 (extended_index extended_index) Bool)

(declare-fun dummy8 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant3 ((temp___expr_358 Int)
  (temp___is_init_355 Bool) (temp___skip_constant_356 Bool)
  (temp___do_toplevel_357 Bool)) Bool (=>
                                      (or (= temp___is_init_355 true)
                                      (<= 0 2147483647)) (in_range5
                                      temp___expr_358)))

(declare-fun length1 (us_rep3) Int)

(declare-fun length__function_guard1 (Int us_rep3) Bool)

(define-fun last ((container us_rep3)) Int (+ 0 (length1 container)))

(declare-fun last__function_guard (Int us_rep3) Bool)

(define-fun oeq2 ((left us_rep3)
  (right us_rep3)) Bool (and (= (length1 left) (length1 right)) (ite 
                                                                (forall
                                                                ((n Int))
                                                                (=>
                                                                (and (<= 1 n)
                                                                (<= n 
                                                                (last left)))
                                                                (= (get left
                                                                   n) 
                                                                (get right n))))
                                                                true false)))

(declare-fun oeq__function_guard2 (Bool us_rep3 us_rep3) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep3) (b us_rep3))
  (! (= (user_eq6 a b) (oeq2 a b)) :pattern ((user_eq6 a b)) )))

(define-fun default_initial_assumption1 ((temp___expr_365 us_rep3)
  (temp___skip_top_level_366 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_366 true))
                                         (= (length1 temp___expr_365) 0)))

;; get__post_axiom
  (assert
  (forall ((container us_rep3))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant3 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant2 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-sort us_main_type3 0)

(declare-fun us_main_eq3 (us_main_type3 us_main_type3) Bool)

(declare-sort us_rep4 0)

(declare-fun bool_eq9 (us_rep4 us_rep4) Bool)

(declare-fun user_eq9 (us_rep4 us_rep4) Bool)

(declare-fun value__size4 () Int)

(declare-fun object__size4 (us_rep4) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 (us_rep4) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a us_rep4)) (<= 0 (object__size4 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a us_rep4)) (<= 0 (object__alignment4 a))))

(declare-fun dummy9 () us_rep4)

(declare-datatypes () ((map__ref2 (mk_map__ref2 (map__content2 us_rep4)))))
(define-fun map__ref_3__projection ((a map__ref2)) us_rep4 (map__content2 a))

(declare-datatypes ()
((key_type__ref1 (mk_key_type__ref1 (key_type__content1 us_rep1)))))
(define-fun key_type__ref_3__projection ((a key_type__ref1)) us_rep1 
  (key_type__content1 a))

(declare-fun get1 (us_rep4 us_rep1) Int)

(declare-fun get__function_guard1 (Int us_rep4 us_rep1) Bool)

(declare-sort element_type1 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq10 (element_type1 element_type1) Bool)

(declare-fun dummy10 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_4__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant4 ((temp___expr_378 Int)
  (temp___is_init_375 Bool) (temp___skip_constant_376 Bool)
  (temp___do_toplevel_377 Bool)) Bool (=>
                                      (or (= temp___is_init_375 true)
                                      (<= 1 2147483647)) (in_range6
                                      temp___expr_378)))

(declare-fun length2 (us_rep4) Int)

(declare-fun length__function_guard2 (Int us_rep4) Bool)

(declare-fun is_empty1 (us_rep4) Bool)

(declare-fun is_empty__function_guard1 (Bool us_rep4) Bool)

(define-fun default_initial_assumption2 ((temp___expr_385 us_rep4)
  (temp___skip_top_level_386 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_386 true))
                                         (and
                                         (= (is_empty1 temp___expr_385) true)
                                         (= (length2 temp___expr_385) 0))))

(declare-fun has_key1 (us_rep4 us_rep1) Bool)

(declare-fun has_key__function_guard1 (Bool us_rep4 us_rep1) Bool)

(declare-fun witness (us_rep4 us_rep1) Int)

(declare-fun witness__function_guard (Int us_rep4 us_rep1) Bool)

(declare-fun w_get (us_rep4 Int) Int)

(declare-fun w_get__function_guard (Int us_rep4 Int) Bool)

;; get__post_axiom
  (assert
  (forall ((container us_rep4))
  (forall ((key us_rep1))
  (! (=> (= (has_key1 container key) true)
     (let ((result (get1 container key)))
     (and
     (=> (= (of_int 0) true)
     (and (= result (w_get container (witness container key)))
     (forall ((k us_rep1))
     (=> (= (has_key1 container k) true)
     (= (= (bool_eq3 k key) true)
     (= (witness container key) (witness container k)))))))
     (dynamic_invariant4 result true false true)))) :pattern ((get1 container
                                                              key)) ))))

(declare-fun model__ (us_rep) us_rep2)

(declare-fun model____function_guard (us_rep2 us_rep) Bool)

;; model____post_axiom
  (assert true)

(declare-fun keys (us_rep) us_rep3)

(declare-fun keys__function_guard (us_rep3 us_rep) Bool)

(declare-fun length3 (us_rep) Int)

(declare-fun length__function_guard3 (Int us_rep) Bool)

(declare-fun length4 (Int us_rep) Int)

(declare-fun length__function_guard4 (Int Int us_rep) Bool)

(define-fun iter_has_element ((container us_rep3)
  (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position 
                                                             (last container))
                                                             true false)))

(declare-fun iter_has_element__function_guard (Bool us_rep3 Int) Bool)

(define-fun k_bigger_than_range ((container us_rep3) (fst Int) (lst Int)
  (key Int)) Bool (ite (forall ((i Int))
                       (=> (and (<= fst i) (<= i lst))
                       (< (get container i) key)))
                  true false))

(declare-fun k_bigger_than_range__function_guard (Bool us_rep3 Int Int
  Int) Bool)

(define-fun k_smaller_than_range ((container us_rep3) (fst Int) (lst Int)
  (key Int)) Bool (ite (forall ((i Int))
                       (=> (and (<= fst i) (<= i lst))
                       (< key (get container i))))
                  true false))

(declare-fun k_smaller_than_range__function_guard (Bool us_rep3 Int Int
  Int) Bool)

(define-fun k_is_find ((container us_rep3) (key Int)
  (position Int)) Bool (and (ite (< 0 position)
                            (k_bigger_than_range container 1 (- position 1)
                            key) (of_int 1)) (ite (< position (length1
                                                              container))
                                             (k_smaller_than_range container
                                             (+ position 1)
                                             (length1 container) key)
                                             (of_int 1))))

(declare-fun k_is_find__function_guard (Bool us_rep3 Int Int) Bool)

(declare-fun find (us_rep3 Int) Int)

(declare-fun find__function_guard (Int us_rep3 Int) Bool)

;; keys__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (keys container)))
     (and
     (and
     (and (= (length1 result) (length3 container))
     (forall ((temp___399 Int))
     (=>
     (and (in_range5 temp___399)
     (= (iter_has_element result temp___399) true))
     (= (has_key (model__ container) (get result temp___399)) true))))
     (forall ((key Int))
     (=> (and (in_range3 key) (= (has_key (model__ container) key) true))
     (and (< 0 (find result key))
     (= (equivalent_keys (get result (find result key)) key) true)))))
     (forall ((i Int))
     (=> (and (<= 1 i) (<= i (length3 container)))
     (and (= (find result (get result i)) i)
     (= (k_is_find result (get result i) i) true)))))) :pattern ((keys
                                                                 container)) )))

(declare-fun positions (us_rep) us_rep4)

(declare-fun positions__function_guard (us_rep4 us_rep) Bool)

;; positions__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (positions container)))
     (and (not (= (has_key1 result no_element) true))
     (forall ((i us_rep1))
     (=> (= (has_key1 result i) true)
     (and
     (and (<= 1 (get1 result i)) (<= (get1 result i) (length3 container)))
     (forall ((j us_rep1))
     (=> (= (has_key1 result j) true)
     (=> (= (get1 result i) (get1 result j)) (= (bool_eq3 i j) true))))))))) :pattern (
  (positions container)) )))

(define-fun has_element ((container us_rep)
  (position us_rep1)) Bool (has_key1 (positions container) position))

(declare-fun has_element__function_guard (Bool us_rep us_rep1) Bool)

(declare-fun has_element1 (Int us_rep us_rep1) Bool)

(declare-fun has_element__function_guard1 (Bool Int us_rep us_rep1) Bool)

;; has_element__post__dispatch_axiom
  (assert true)

(define-fun key ((container us_rep)
  (position us_rep1)) Int (get (keys container)
                          (get1 (positions container) position)))

(declare-fun key__function_guard (Int us_rep us_rep1) Bool)

(declare-fun key1 (Int us_rep us_rep1) Int)

(declare-fun key__function_guard1 (Int Int us_rep us_rep1) Bool)

(declare-sort key_type1 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq11 (key_type1 key_type1) Bool)

(declare-fun dummy11 () key_type1)

(declare-datatypes ()
((key_type__ref2 (mk_key_type__ref2 (key_type__content2 key_type1)))))
(define-fun key_type__ref___projection ((a key_type__ref2)) key_type1 
  (key_type__content2 a))

(define-fun dynamic_invariant5 ((temp___expr_289 Int)
  (temp___is_init_286 Bool) (temp___skip_constant_287 Bool)
  (temp___do_toplevel_288 Bool)) Bool (=>
                                      (or (= temp___is_init_286 true)
                                      (<= 1 2147483647)) (in_range7
                                      temp___expr_289)))

;; key__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep))
  (forall ((position us_rep1)) (! (dynamic_invariant5
  (key1 attr__tag container position) true false
  true) :pattern ((key1 attr__tag container position)) )))))

(declare-fun first (us_rep) us_rep1)

(declare-fun first__function_guard (us_rep1 us_rep) Bool)

(declare-fun first1 (Int us_rep) us_rep1)

(declare-fun first__function_guard1 (us_rep1 Int us_rep) Bool)

;; first__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (first container)))
     (ite (= (length3 container) 0) (= (bool_eq3 result no_element) true)
     (and (= (has_element container result) true)
     (= (get1 (positions container) result) 1)))) :pattern ((first container)) )))

;; first__post__dispatch_axiom
  (assert true)

(declare-fun next (us_rep us_rep1) us_rep1)

(declare-fun next__function_guard (us_rep1 us_rep us_rep1) Bool)

(declare-fun next1 (Int us_rep us_rep1) us_rep1)

(declare-fun next__function_guard1 (us_rep1 Int us_rep us_rep1) Bool)

;; next__post_axiom
  (assert
  (forall ((container us_rep))
  (forall ((position us_rep1))
  (! (=>
     (or (= (has_element container position) true)
     (= (bool_eq3 position no_element) true))
     (let ((result (next container position)))
     (ite (or (= (bool_eq3 position no_element) true)
          (= (get1 (positions container) position) (length3 container)))
     (= (bool_eq3 result no_element) true)
     (and (= (has_element container result) true)
     (= (get1 (positions container) result) (+ (get1 (positions container)
                                               position) 1)))))) :pattern (
  (next container position)) ))))

;; next__post__dispatch_axiom
  (assert true)

(declare-fun s () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun k () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant6 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_142)))

;; no_element__def_axiom
  (assert (= no_element (mk___rep1 (mk___split_fields1 (of_rep 0)))))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length3 container)))
     (and
     (<= result (to_rep
                (rec__use_ordered_maps__my_maps__map__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant6 result true false true))) :pattern ((length3
                                                             container)) )))

;; length__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep)) (! (dynamic_invariant6
  (length4 attr__tag container) true false
  true) :pattern ((length4 attr__tag container)) ))))

;; find__post_axiom
  (assert
  (forall ((container us_rep3))
  (forall ((key2 Int))
  (! (=> (dynamic_invariant5 key2 true true true)
     (let ((result (find container key2)))
     (and
     (=> (< 0 result)
     (and (<= result (length1 container))
     (= (equivalent_keys key2 (get container result)) true)))
     (dynamic_invariant6 result true false true)))) :pattern ((find container
                                                              key2)) ))))

(declare-fun oeq3 (us_rep2 us_rep2) Bool)

(declare-fun oeq__function_guard3 (Bool us_rep2 us_rep2) Bool)

;; oeq__post_axiom
  (assert
  (forall ((left us_rep) (right us_rep))
  (! (= (= (oeq left right) true)
     (= (oeq3 (model__ left) (model__ right)) true)) :pattern ((oeq left
                                                               right)) )))

;; oeq__post__dispatch_axiom
  (assert true)

(declare-sort element_type2 0)

(define-fun in_range8 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq12 (element_type2 element_type2) Bool)

(declare-fun dummy12 () element_type2)

(declare-datatypes ()
((element_type__ref2
 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref_2__projection ((a element_type__ref2)) element_type2 
  (element_type__content2 a))

(define-fun dynamic_invariant7 ((temp___expr_327 Int)
  (temp___is_init_324 Bool) (temp___skip_constant_325 Bool)
  (temp___do_toplevel_326 Bool)) Bool (=>
                                      (or (= temp___is_init_324 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range8 temp___expr_327)))

(declare-fun witness1 (us_rep2 Int) Int)

(declare-fun witness__function_guard1 (Int us_rep2 Int) Bool)

(declare-fun w_get1 (us_rep2 Int) Int)

(declare-fun w_get__function_guard1 (Int us_rep2 Int) Bool)

(declare-fun get2 (us_rep2 Int) Int)

(declare-fun get__function_guard2 (Int us_rep2 Int) Bool)

;; get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((key2 Int))
  (! (=>
     (and (dynamic_invariant1 key2 true true true)
     (= (has_key container key2) true))
     (let ((result (get2 container key2)))
     (and
     (=> (= (of_int 1) true)
     (and (= result (w_get1 container (witness1 container key2)))
     (forall ((k1 Int))
     (=> (and (in_range3 k1) (= (has_key container k1) true))
     (= (= (equivalent_keys k1 key2) true)
     (= (witness1 container key2) (witness1 container k1)))))))
     (dynamic_invariant7 result true false true)))) :pattern ((get2 container
                                                              key2)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep2)) (! (dynamic_invariant6 (length container)
  true false true) :pattern ((length container)) )))

;; oeq__post_axiom
  (assert
  (forall ((left us_rep2) (right us_rep2))
  (! (= (= (oeq3 left right) true)
     (and
     (forall ((key2 Int))
     (=> (and (in_range3 key2) (= (has_key left key2) true))
     (and (= (has_key right key2) true)
     (= (get2 right key2) (get2 left key2)))))
     (forall ((key2 Int))
     (=> (and (in_range3 key2) (= (has_key right key2) true))
     (= (has_key left key2) true))))) :pattern ((oeq3 left right)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep2))
  (! (= (= (is_empty container) true)
     (forall ((key2 Int))
     (not (and (in_range3 key2) (= (has_key container key2) true))))) :pattern (
  (is_empty container)) )))

(declare-fun has_witness (us_rep2 Int) Bool)

(declare-fun has_witness__function_guard (Bool us_rep2 Int) Bool)

;; has_witness__post_axiom
  (assert true)

;; witness__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((key2 Int))
  (! (=>
     (and (dynamic_invariant1 key2 true true true)
     (= (has_key container key2) true))
     (let ((result (witness1 container key2)))
     (and (= (has_witness container result) true) (dynamic_invariant6 result
     true false true)))) :pattern ((witness1 container key2)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((witness2 Int))
  (! (=>
     (and (dynamic_invariant6 witness2 true true true)
     (= (has_witness container witness2) true)) (dynamic_invariant7
     (w_get1 container witness2) true false true)) :pattern ((w_get1
                                                             container
                                                             witness2)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep3))
  (! (let ((result (length1 container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant6 result true false
     true))) :pattern ((length1 container)) )))

;; has_key__post_axiom
  (assert
  (forall ((container us_rep4))
  (forall ((key2 us_rep1))
  (! (=> (= (of_int 0) true)
     (=>
     (exists ((k1 us_rep1))
     (and (= (has_key1 container k1) true) (= (bool_eq3 k1 key2) true)))
     (= (has_key1 container key2) true))) :pattern ((has_key1 container key2)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep4)) (! (dynamic_invariant6 (length2 container)
  true false true) :pattern ((length2 container)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep4))
  (! (= (= (is_empty1 container) true)
     (forall ((key2 us_rep1)) (not (= (has_key1 container key2) true)))) :pattern (
  (is_empty1 container)) )))

(declare-fun has_witness1 (us_rep4 Int) Bool)

(declare-fun has_witness__function_guard1 (Bool us_rep4 Int) Bool)

;; has_witness__post_axiom
  (assert true)

;; witness__post_axiom
  (assert
  (forall ((container us_rep4))
  (forall ((key2 us_rep1))
  (! (=> (= (has_key1 container key2) true)
     (let ((result (witness container key2)))
     (and (= (has_witness1 container result) true) (dynamic_invariant6 result
     true false true)))) :pattern ((witness container key2)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container us_rep4))
  (forall ((witness2 Int))
  (! (=>
     (and (dynamic_invariant6 witness2 true true true)
     (= (has_witness1 container witness2) true)) (dynamic_invariant4
     (w_get container witness2) true false true)) :pattern ((w_get container
                                                            witness2)) ))))

(declare-fun cu__split_fields () count_type)

(declare-fun o () count_type)

(declare-fun o1 () count_type)

(declare-fun temp___656 () count_type)

(declare-fun use_ordered_maps__my_find__cu__assume () count_type)

(declare-fun result () count_type)

(declare-fun cu__split_fields1 () count_type)

(declare-fun result1 () Bool)

(define-fun cu__split_fields2 () us_split_fields2 (mk___split_fields1
                                                  cu__split_fields1))

(define-fun use_ordered_maps__my_find__cu__assume1 () us_rep1 (mk___rep1
                                                              (mk___split_fields1
                                                              use_ordered_maps__my_find__cu__assume)))

;; H
  (assert (= (to_rep o) 0))

;; H
  (assert (= o o1))

;; H
  (assert (= temp___656 o1))

;; H
  (assert (= (mk___rep1 (mk___split_fields1 temp___656)) no_element))

;; H
  (assert (in_range1 k))

;; H
  (assert
  (and (= use_ordered_maps__my_find__cu__assume1 (first s))
  (ite (= (= (length3 s) 0) true)
  (= (bool_eq3 use_ordered_maps__my_find__cu__assume1 no_element) true)
  (and
  (= (has_key1 (positions s) use_ordered_maps__my_find__cu__assume1) true)
  (= (get1 (positions s) use_ordered_maps__my_find__cu__assume1) 1)))))

;; H
  (assert
  (= (mk___split_fields__ref1 (mk___split_fields1 result)) (mk___split_fields__ref1
                                                           (mk___split_fields1
                                                           cu__split_fields))))

;; H
  (assert (= use_ordered_maps__my_find__cu__assume cu__split_fields1))

;; H
  (assert
  (and (= result1 (has_key1 (positions s) (mk___rep1 cu__split_fields2)))
  (= (= result1 true)
  (= (has_key1 (positions s) (mk___rep1 cu__split_fields2)) true))))

;; H
  (assert (= result1 true))

(declare-fun i () Int)

;; H
  (assert (<= 1 i))

;; H
  (assert (<= i (- (get1 (positions s) (mk___rep1 cu__split_fields2)) 1)))

(assert
;; WP_parameter_def
 ;; File "a-cforma.ads", line 81, characters 0-0
  (not (not (= (get (keys s) i) k))))
(check-sat)
