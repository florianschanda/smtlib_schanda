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

(declare-sort tcount_typeB 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy () tcount_typeB)

(declare-datatypes ()
((tcount_typeB__ref
 (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB 
  (tcount_typeB__content a))

(declare-sort count_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

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
  (forall ((x count_type)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__use_ordered_sets__my_sets__set__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type 
  (rec__use_ordered_sets__my_sets__set__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__use_ordered_sets__my_sets__set us_main_type)))))
(define-fun us_split_fields_Set__projection ((a us_split_fields)) us_main_type 
  (rec__use_ordered_sets__my_sets__set a))

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
                           (rec__use_ordered_sets__my_sets__set__capacity
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__use_ordered_sets__my_sets__set__capacity
                                                  (us_split_discrs1 b))))
                        (= (us_main_eq
                           (rec__use_ordered_sets__my_sets__set
                           (us_split_fields1 a))
                           (rec__use_ordered_sets__my_sets__set
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

(declare-fun use_ordered_sets__my_sets__set__capacity__first__bit () Int)

(declare-fun use_ordered_sets__my_sets__set__capacity__last__bit () Int)

(declare-fun use_ordered_sets__my_sets__set__capacity__position () Int)

;; use_ordered_sets__my_sets__set__capacity__first__bit_axiom
  (assert (<= 0 use_ordered_sets__my_sets__set__capacity__first__bit))

;; use_ordered_sets__my_sets__set__capacity__last__bit_axiom
  (assert
  (< use_ordered_sets__my_sets__set__capacity__first__bit use_ordered_sets__my_sets__set__capacity__last__bit))

;; use_ordered_sets__my_sets__set__capacity__position_axiom
  (assert (<= 0 use_ordered_sets__my_sets__set__capacity__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep)))))
(define-fun set__ref___projection ((a set__ref)) us_rep (set__content a))

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

(declare-fun oeq1 (Int us_rep us_rep) Bool)

(declare-fun oeq__function_guard1 (Bool Int us_rep us_rep) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (= (user_eq2 a b) (oeq a b)) :pattern ((user_eq2 a b)) )))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(declare-fun length1 (Int us_rep) Int)

(declare-fun length__function_guard1 (Int Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_142)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep
                (rec__use_ordered_sets__my_sets__set__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant result true false true))) :pattern ((length
                                                            container)) )))

;; length__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep)) (! (dynamic_invariant
  (length1 attr__tag container) true false
  true) :pattern ((length1 attr__tag container)) ))))

(declare-fun intersection__2 (us_rep us_rep) us_rep)

(declare-fun intersection__2__function_guard (us_rep us_rep us_rep) Bool)

(declare-fun intersection__21 (Int us_rep us_rep) us_rep)

(declare-fun intersection__2__function_guard1 (us_rep Int us_rep
  us_rep) Bool)

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep1 0)

(declare-fun bool_eq3 (us_rep1 us_rep1) Bool)

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

(declare-fun dummy3 () us_rep1)

(declare-datatypes () ((set__ref1 (mk_set__ref1 (set__content1 us_rep1)))))
(define-fun set__ref_2__projection ((a set__ref1)) us_rep1 (set__content1 a))

(declare-fun ole (us_rep1 us_rep1) Bool)

(declare-fun ole__function_guard (Bool us_rep1 us_rep1) Bool)

(declare-fun includes_intersection (us_rep1 us_rep1 us_rep1) Bool)

(declare-fun includes_intersection__function_guard (Bool us_rep1 us_rep1
  us_rep1) Bool)

(declare-fun num_overlaps (us_rep1 us_rep1) Int)

(declare-fun num_overlaps__function_guard (Int us_rep1 us_rep1) Bool)

(declare-sort us_main_type2 0)

(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)

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

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep2)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep2 (sequence__content
                                                                   a))

(declare-fun length2 (us_rep2) Int)

(declare-fun length__function_guard2 (Int us_rep2) Bool)

(declare-fun get (us_rep2 Int) Int)

(declare-fun get__function_guard (Int us_rep2 Int) Bool)

(declare-fun find (us_rep2 Int) Int)

(declare-fun find__function_guard (Int us_rep2 Int) Bool)

(define-fun e_elements_included ((left us_rep2)
  (right us_rep2)) Bool (ite (forall ((i Int))
                             (=> (and (<= 1 i) (<= i (length2 left)))
                             (and (< 0 (find right (get left i)))
                             (= (get right (find right (get left i))) 
                             (get left i)))))
                        true false))

(declare-fun e_elements_included__function_guard (Bool us_rep2 us_rep2) Bool)

(declare-fun contains (us_rep1 Int) Bool)

(declare-fun contains__function_guard (Bool us_rep1 Int) Bool)

(define-fun e_elements_included__2 ((left us_rep2) (model__ us_rep1)
  (right us_rep2)) Bool (ite (forall ((i Int))
                             (=> (and (<= 1 i) (<= i (length2 left)))
                             (=> (= (contains model__ (get left i)) true)
                             (and (< 0 (find right (get left i)))
                             (= (get right (find right (get left i))) 
                             (get left i))))))
                        true false))

(declare-fun e_elements_included__2__function_guard (Bool us_rep2 us_rep1
  us_rep2) Bool)

(declare-fun model__ (us_rep) us_rep1)

(declare-fun model____function_guard (us_rep1 us_rep) Bool)

(declare-fun elements (us_rep) us_rep2)

(declare-fun elements__function_guard (us_rep2 us_rep) Bool)

;; intersection__2__post_axiom
  (assert
  (forall ((left us_rep) (right us_rep))
  (! (let ((result (intersection__2 left right)))
     (and
     (and
     (and
     (and
     (and (= (length result) (num_overlaps (model__ left) (model__ right)))
     (= (ole (model__ result) (model__ left)) true))
     (= (ole (model__ result) (model__ right)) true))
     (= (includes_intersection (model__ result) (model__ left)
        (model__ right)) true))
     (= (e_elements_included (elements result) (elements left)) true))
     (= (e_elements_included__2 (elements left) (model__ right)
        (elements result)) true))) :pattern ((intersection__2 left right)) )))

;; intersection__2__post__dispatch_axiom
  (assert true)

(declare-fun target__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun source () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range2 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Bool)

(define-fun equivalent_elements ((left Int)
  (right Int)) Bool (and (not (< left right)) (not (< right left))))

(declare-fun equivalent_elements__function_guard (Bool Int Int) Bool)

(define-fun e_bigger_than_range ((container us_rep2) (fst Int) (lst Int)
  (item Int)) Bool (ite (forall ((i Int))
                        (=> (and (<= fst i) (<= i lst))
                        (< (get container i) item)))
                   true false))

(declare-fun e_bigger_than_range__function_guard (Bool us_rep2 Int Int
  Int) Bool)

(define-fun e_smaller_than_range ((container us_rep2) (fst Int) (lst Int)
  (item Int)) Bool (ite (forall ((i Int))
                        (=> (and (<= fst i) (<= i lst))
                        (< item (get container i))))
                   true false))

(declare-fun e_smaller_than_range__function_guard (Bool us_rep2 Int Int
  Int) Bool)

(define-fun e_is_find ((container us_rep2) (item Int)
  (position Int)) Bool (and (ite (< 0 position)
                            (e_bigger_than_range container 1 (- position 1)
                            item) (of_int 1)) (ite (< position (length2
                                                               container))
                                              (e_smaller_than_range container
                                              (+ position 1)
                                              (length2 container) item)
                                              (of_int 1))))

(declare-fun e_is_find__function_guard (Bool us_rep2 Int Int) Bool)

(declare-sort element_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (element_type element_type) Bool)

(declare-fun dummy5 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_2__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_295 Int)
  (temp___is_init_292 Bool) (temp___skip_constant_293 Bool)
  (temp___do_toplevel_294 Bool)) Bool (=>
                                      (or (= temp___is_init_292 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_295)))

(define-fun last ((container us_rep2)) Int (+ 0 (length2 container)))

(declare-fun last__function_guard (Int us_rep2) Bool)

(define-fun oeq2 ((left us_rep2)
  (right us_rep2)) Bool (and (= (length2 left) (length2 right)) (ite 
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

(declare-fun oeq__function_guard2 (Bool us_rep2 us_rep2) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep2) (b us_rep2))
  (! (= (user_eq4 a b) (oeq2 a b)) :pattern ((user_eq4 a b)) )))

(define-fun default_initial_assumption ((temp___expr_359 us_rep2)
  (temp___skip_top_level_360 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_360 true))
                                         (= (length2 temp___expr_359) 0)))

;; find__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((item Int))
  (! (=> (dynamic_invariant1 item true true true)
     (let ((result (find container item)))
     (and
     (=> (< 0 result)
     (and (<= result (length2 container))
     (= (equivalent_elements item (get container result)) true)))
     (dynamic_invariant result true false true)))) :pattern ((find container
                                                             item)) ))))

(declare-fun is_empty (us_rep1) Bool)

(declare-fun is_empty__function_guard (Bool us_rep1) Bool)

(define-fun default_initial_assumption1 ((temp___expr_328 us_rep1)
  (temp___skip_top_level_329 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_329 true))
                                         (= (is_empty temp___expr_328) true)))

(declare-fun length3 (us_rep1) Int)

(declare-fun length__function_guard3 (Int us_rep1) Bool)

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length3 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

(declare-sort element_type1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (element_type1 element_type1) Bool)

(declare-fun dummy6 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_3__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(declare-sort extended_index 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (extended_index extended_index) Bool)

(declare-fun dummy7 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun iter_has_element ((container us_rep2)
  (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position 
                                                             (last container))
                                                             true false)))

(declare-fun iter_has_element__function_guard (Bool us_rep2 Int) Bool)

;; elements__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (elements container)))
     (and
     (and
     (and (= (length2 result) (length container))
     (forall ((temp___393 Int))
     (=>
     (and (in_range5 temp___393)
     (= (iter_has_element result temp___393) true))
     (= (contains (model__ container) (get result temp___393)) true))))
     (forall ((item Int))
     (=> (and (in_range4 item) (= (contains (model__ container) item) true))
     (and (< 0 (find result item))
     (= (equivalent_elements (get result (find result item)) item) true)))))
     (forall ((i Int))
     (=> (and (<= 1 i) (<= i (length container)))
     (and (= (find result (get result i)) i)
     (= (e_is_find result (get result i) i) true)))))) :pattern ((elements
                                                                 container)) )))

;; oeq__post_axiom
  (assert
  (forall ((left us_rep) (right us_rep))
  (! (ite (= (oeq left right) true)
     (= (oeq2 (elements left) (elements right)) true)
     (or
     (not (= (e_elements_included (elements left) (elements right)) true))
     (not (= (e_elements_included (elements right) (elements left)) true)))) :pattern (
  (oeq left right)) )))

;; oeq__post__dispatch_axiom
  (assert true)

(define-fun dynamic_invariant2 ((temp___expr_321 Int)
  (temp___is_init_318 Bool) (temp___skip_constant_319 Bool)
  (temp___do_toplevel_320 Bool)) Bool (=>
                                      (or (= temp___is_init_318 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range4 temp___expr_321)))

;; contains__post_axiom
  (assert
  (forall ((container us_rep1))
  (forall ((item Int))
  (! (=> (dynamic_invariant2 item true true true)
     (=> (= (of_int 1) true)
     (=>
     (exists ((e Int))
     (and (and (in_range4 e) (= (contains container e) true))
     (= (equivalent_elements e item) true)))
     (= (contains container item) true)))) :pattern ((contains container
                                                     item)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep1)) (! (dynamic_invariant (length3 container)
  true false true) :pattern ((length3 container)) )))

;; ole__post_axiom
  (assert
  (forall ((left us_rep1) (right us_rep1))
  (! (= (= (ole left right) true)
     (forall ((item Int))
     (=> (and (in_range4 item) (= (contains left item) true))
     (= (contains right item) true)))) :pattern ((ole left right)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (is_empty container)))
     (and
     (= (= result true)
     (forall ((item Int))
     (not (and (in_range4 item) (= (contains container item) true)))))
     (= (= result true) (= (length3 container) 0)))) :pattern ((is_empty
                                                               container)) )))

;; includes_intersection__post_axiom
  (assert
  (forall ((container us_rep1) (left us_rep1) (right us_rep1))
  (! (= (= (includes_intersection container left right) true)
     (forall ((item Int))
     (=> (and (in_range4 item) (= (contains left item) true))
     (=> (= (contains right item) true) (= (contains container item) true))))) :pattern (
  (includes_intersection container left right)) )))

(declare-fun no_overlap (us_rep1 us_rep1) Bool)

(declare-fun no_overlap__function_guard (Bool us_rep1 us_rep1) Bool)

;; no_overlap__post_axiom
  (assert
  (forall ((left us_rep1) (right us_rep1))
  (! (= (= (no_overlap left right) true)
     (forall ((item Int))
     (=> (and (in_range4 item) (= (contains left item) true))
     (not (= (contains right item) true))))) :pattern ((no_overlap left
                                                       right)) )))

(declare-fun intersection1 (us_rep1 us_rep1) us_rep1)

(declare-fun intersection__function_guard (us_rep1 us_rep1 us_rep1) Bool)

;; num_overlaps__post_axiom
  (assert
  (forall ((left us_rep1) (right us_rep1))
  (! (let ((result (num_overlaps left right)))
     (and
     (and
     (and
     (and (= result (length3 (intersection1 left right)))
     (ite (= (ole left right) true) (= result (length3 left))
     (< result (length3 left))))
     (ite (= (ole right left) true) (= result (length3 right))
     (< result (length3 right))))
     (= (= result 0) (= (no_overlap left right) true))) (dynamic_invariant
     result true false true))) :pattern ((num_overlaps left right)) )))

;; intersection__post_axiom
  (assert
  (forall ((left us_rep1) (right us_rep1))
  (! (let ((result (intersection1 left right)))
     (and (and (= (ole result left) true) (= (ole result right) true))
     (= (includes_intersection result left right) true))) :pattern ((intersection1
                                                                    left
                                                                    right)) )))

(define-fun dynamic_invariant3 ((temp___expr_352 Int)
  (temp___is_init_349 Bool) (temp___skip_constant_350 Bool)
  (temp___do_toplevel_351 Bool)) Bool (=>
                                      (or (= temp___is_init_349 true)
                                      (<= 0 2147483647)) (in_range5
                                      temp___expr_352)))

;; length__post_axiom
  (assert
  (forall ((container us_rep2))
  (! (let ((result (length2 container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false
     true))) :pattern ((length2 container)) )))

(declare-sort element_type2 0)

(define-fun in_range6 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (element_type2 element_type2) Bool)

(declare-fun dummy8 () element_type2)

(declare-datatypes ()
((element_type__ref2
 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref_4__projection ((a element_type__ref2)) element_type2 
  (element_type__content2 a))

(define-fun dynamic_invariant4 ((temp___expr_346 Int)
  (temp___is_init_343 Bool) (temp___skip_constant_344 Bool)
  (temp___do_toplevel_345 Bool)) Bool (=>
                                      (or (= temp___is_init_343 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range6 temp___expr_346)))

;; get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant3 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant4 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun target__split_fields () us_main_type)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () count_type)

(declare-fun o3 () us_main_type)

(declare-fun o4 () Int)

(define-fun o5 () us_rep (mk___rep (mk___split_discrs o2)
                         (mk___split_fields o3)))

;; H
  (assert
  (and
  (= o5 (intersection__2
        (mk___rep target__split_discrs
        (mk___split_fields target__split_fields)) source))
  (and
  (and
  (and
  (and
  (and
  (= (length o5) (num_overlaps
                 (model__
                 (mk___rep target__split_discrs
                 (mk___split_fields target__split_fields))) (model__ source)))
  (= (ole (model__ o5)
     (model__
     (mk___rep target__split_discrs (mk___split_fields target__split_fields)))) true))
  (= (ole (model__ o5) (model__ source)) true))
  (= (includes_intersection (model__ o5)
     (model__
     (mk___rep target__split_discrs (mk___split_fields target__split_fields)))
     (model__ source)) true))
  (= (e_elements_included (elements o5)
     (elements
     (mk___rep target__split_discrs (mk___split_fields target__split_fields)))) true))
  (= (e_elements_included__2
     (elements
     (mk___rep target__split_discrs (mk___split_fields target__split_fields)))
     (model__ source) (elements o5)) true))))

;; H
  (assert (and (= o4 (length o5)) (and (in_range1 o4) (<= o4 (to_rep o2)))))

;; H
  (assert
  (and
  (= o (length
       (mk___rep target__split_discrs
       (mk___split_fields target__split_fields))))
  (and (in_range1 o)
  (<= o (to_rep
        (rec__use_ordered_sets__my_sets__set__capacity target__split_discrs))))))

;; H
  (assert
  (= o1 (- (to_rep
           (rec__use_ordered_sets__my_sets__set__capacity
           target__split_discrs)) o)))

(assert
;; WP_parameter_def
 ;; File "a-cforse.ads", line 1157, characters 0-0
  (not (in_range o1)))
(check-sat)
