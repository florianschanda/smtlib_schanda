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

(declare-fun my_inf (Int Int) Bool)

(declare-fun my_inf__function_guard (Bool Int Int) Bool)

(declare-sort element_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (element_type element_type) Bool)

(declare-fun dummy () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant ((temp___expr_300 Int)
  (temp___is_init_297 Bool) (temp___skip_constant_298 Bool)
  (temp___do_toplevel_299 Bool)) Bool (=>
                                      (or (= temp___is_init_297 true)
                                      (<= 1 100)) (in_range1
                                      temp___expr_300)))

;; my_inf__post_axiom
  (assert true)

;; my_inf__def_axiom
  (assert
  (forall ((i1 Int) (i2 Int))
  (! (=> (my_inf__function_guard (my_inf i1 i2) i1 i2)
     (= (= (my_inf i1 i2) true) (< i1 i2))) :pattern ((my_inf i1 i2)) )))

(declare-sort element_type1 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (element_type1 element_type1) Bool)

(declare-fun dummy1 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_2__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant1 ((temp___expr_306 Int)
  (temp___is_init_303 Bool) (temp___skip_constant_304 Bool)
  (temp___do_toplevel_305 Bool)) Bool (=>
                                      (or (= temp___is_init_303 true)
                                      (<= 1 100)) (in_range2
                                      temp___expr_306)))

(declare-sort count_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (count_type count_type) Bool)

(declare-fun dummy2 () count_type)

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
  (forall ((x count_type)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__p__my_sets__set__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type 
  (rec__p__my_sets__set__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__p__my_sets__set us_main_type)))))
(define-fun us_split_fields_Set__projection ((a us_split_fields)) us_main_type 
  (rec__p__my_sets__set a))

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

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__p__my_sets__set__capacity
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__p__my_sets__set__capacity
                                                  (us_split_discrs1 b))))
                        (= (us_main_eq
                           (rec__p__my_sets__set (us_split_fields1 a))
                           (rec__p__my_sets__set (us_split_fields1 b))) true))
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

(declare-fun p__my_sets__set__capacity__first__bit () Int)

(declare-fun p__my_sets__set__capacity__last__bit () Int)

(declare-fun p__my_sets__set__capacity__position () Int)

;; p__my_sets__set__capacity__first__bit_axiom
  (assert (<= 0 p__my_sets__set__capacity__first__bit))

;; p__my_sets__set__capacity__last__bit_axiom
  (assert
  (< p__my_sets__set__capacity__first__bit p__my_sets__set__capacity__last__bit))

;; p__my_sets__set__capacity__position_axiom
  (assert (<= 0 p__my_sets__set__capacity__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep)))))
(define-fun set__ref___projection ((a set__ref)) us_rep (set__content a))

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

(declare-fun oeq1 (Int us_rep us_rep) Bool)

(declare-fun oeq__function_guard1 (Bool Int us_rep us_rep) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (= (user_eq3 a b) (oeq a b)) :pattern ((user_eq3 a b)) )))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(declare-fun length1 (Int us_rep) Int)

(declare-fun length__function_guard1 (Int Int us_rep) Bool)

(define-fun dynamic_invariant2 ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_153)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep
                (rec__p__my_sets__set__capacity (us_split_discrs1 container))))
     (dynamic_invariant2 result true false true))) :pattern ((length
                                                             container)) )))

;; length__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep)) (! (dynamic_invariant2
  (length1 attr__tag container) true false
  true) :pattern ((length1 attr__tag container)) ))))

(declare-fun first_element (us_rep) Int)

(declare-fun first_element__function_guard (Int us_rep) Bool)

(declare-fun first_element1 (Int us_rep) Int)

(declare-fun first_element__function_guard1 (Int Int us_rep) Bool)

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep1 0)

(declare-fun bool_eq4 (us_rep1 us_rep1) Bool)

(declare-fun user_eq4 (us_rep1 us_rep1) Bool)

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

(declare-fun dummy4 () us_rep1)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content
                                                                   a))

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

;; temp___result_136_def
  (assert
  (forall ((container us_rep1) (item Int) (i Int)) (my_inf__function_guard
  (my_inf item (get container i)) item (get container i))))

(define-fun e_smaller_than_range ((container us_rep1) (fst Int) (lst Int)
  (item Int)) Bool (ite (forall ((i Int))
                        (=> (and (<= fst i) (<= i lst))
                        (= (my_inf item (get container i)) true)))
                   true false))

(declare-fun e_smaller_than_range__function_guard (Bool us_rep1 Int Int
  Int) Bool)

(declare-fun elements (us_rep) us_rep1)

(declare-fun elements__function_guard (us_rep1 us_rep) Bool)

(declare-fun is_empty (us_rep) Bool)

(declare-fun is_empty__function_guard (Bool us_rep) Bool)

(declare-fun is_empty1 (Int us_rep) Bool)

(declare-fun is_empty__function_guard1 (Bool Int us_rep) Bool)

;; first_element__post_axiom
  (assert
  (forall ((container us_rep))
  (! (=> (not (= (is_empty container) true))
     (let ((result (first_element container)))
     (and
     (and (= result (get (elements container) 1))
     (= (e_smaller_than_range (elements container) 2 (length container)
        result) true))
     (dynamic_invariant1 result true false true)))) :pattern ((first_element
                                                              container)) )))

;; first_element__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep)) (! (dynamic_invariant1
  (first_element1 attr__tag container) true false
  true) :pattern ((first_element1 attr__tag container)) ))))

(declare-fun container () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun item () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

;; temp___result_133_def
  (assert
  (forall ((left Int) (right Int)) (my_inf__function_guard
  (my_inf left right) left right)))

;; temp___result_134_def
  (assert
  (forall ((left Int) (right Int)) (my_inf__function_guard
  (my_inf right left) right left)))

(define-fun equivalent_elements ((left Int)
  (right Int)) Bool (and (not (my_inf left right)) (not (my_inf right left))))

(declare-fun equivalent_elements__function_guard (Bool Int Int) Bool)

(declare-fun length2 (us_rep1) Int)

(declare-fun length__function_guard2 (Int us_rep1) Bool)

;; temp___result_135_def
  (assert
  (forall ((container1 us_rep1) (item1 Int) (i Int)) (my_inf__function_guard
  (my_inf (get container1 i) item1) (get container1 i) item1)))

(define-fun e_bigger_than_range ((container1 us_rep1) (fst Int) (lst Int)
  (item1 Int)) Bool (ite (forall ((i Int))
                         (=> (and (<= fst i) (<= i lst))
                         (= (my_inf (get container1 i) item1) true)))
                    true false))

(declare-fun e_bigger_than_range__function_guard (Bool us_rep1 Int Int
  Int) Bool)

(define-fun e_is_find ((container1 us_rep1) (item1 Int)
  (position Int)) Bool (and (ite (< 0 position)
                            (e_bigger_than_range container1 1 (- position 1)
                            item1) (of_int 1)) (ite (< position (length2
                                                                container1))
                                               (e_smaller_than_range
                                               container1 (+ position 1)
                                               (length2 container1) item1)
                                               (of_int 1))))

(declare-fun e_is_find__function_guard (Bool us_rep1 Int Int) Bool)

(define-fun last ((container1 us_rep1)) Int (+ 0 (length2 container1)))

(declare-fun last__function_guard (Int us_rep1) Bool)

(define-fun oeq2 ((left us_rep1)
  (right us_rep1)) Bool (and (= (length2 left) (length2 right)) (ite 
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

(declare-fun oeq__function_guard2 (Bool us_rep1 us_rep1) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (= (user_eq4 a b) (oeq2 a b)) :pattern ((user_eq4 a b)) )))

(define-fun default_initial_assumption ((temp___expr_374 us_rep1)
  (temp___skip_top_level_375 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_375 true))
                                         (= (length2 temp___expr_374) 0)))

(declare-fun find (us_rep1 Int) Int)

(declare-fun find__function_guard (Int us_rep1 Int) Bool)

;; find__post_axiom
  (assert
  (forall ((container1 us_rep1))
  (forall ((item1 Int))
  (! (=> (dynamic_invariant1 item1 true true true)
     (let ((result (find container1 item1)))
     (and
     (=> (< 0 result)
     (and (<= result (length2 container1))
     (= (equivalent_elements item1 (get container1 result)) true)))
     (dynamic_invariant2 result true false true)))) :pattern ((find
                                                              container1
                                                              item1)) ))))

(define-fun e_elements_included ((left us_rep1)
  (right us_rep1)) Bool (ite (forall ((i Int))
                             (=> (and (<= 1 i) (<= i (length2 left)))
                             (and (< 0 (find right (get left i)))
                             (= (get right (find right (get left i))) 
                             (get left i)))))
                        true false))

(declare-fun e_elements_included__function_guard (Bool us_rep1 us_rep1) Bool)

(declare-sort us_main_type2 0)

(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)

(declare-sort us_rep2 0)

(declare-fun bool_eq5 (us_rep2 us_rep2) Bool)

(declare-fun user_eq5 (us_rep2 us_rep2) Bool)

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

(declare-fun dummy5 () us_rep2)

(declare-datatypes () ((set__ref1 (mk_set__ref1 (set__content1 us_rep2)))))
(define-fun set__ref_2__projection ((a set__ref1)) us_rep2 (set__content1 a))

(declare-fun is_empty2 (us_rep2) Bool)

(declare-fun is_empty__function_guard2 (Bool us_rep2) Bool)

(define-fun default_initial_assumption1 ((temp___expr_343 us_rep2)
  (temp___skip_top_level_344 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_344 true))
                                         (= (is_empty2 temp___expr_343) true)))

(declare-fun length3 (us_rep2) Int)

(declare-fun length__function_guard3 (Int us_rep2) Bool)

(declare-fun model__ (us_rep) us_rep2)

(declare-fun model____function_guard (us_rep2 us_rep) Bool)

;; model____post_axiom
  (assert
  (forall ((container1 us_rep))
  (! (= (length3 (model__ container1)) (length container1)) :pattern (
  (model__ container1)) )))

(declare-sort element_type2 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (element_type2 element_type2) Bool)

(declare-fun dummy6 () element_type2)

(declare-datatypes ()
((element_type__ref2
 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref_3__projection ((a element_type__ref2)) element_type2 
  (element_type__content2 a))

(declare-fun contains (us_rep2 Int) Bool)

(declare-fun contains__function_guard (Bool us_rep2 Int) Bool)

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

(define-fun iter_has_element ((container1 us_rep1)
  (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position 
                                                             (last
                                                             container1))
                                                             true false)))

(declare-fun iter_has_element__function_guard (Bool us_rep1 Int) Bool)

;; elements__post_axiom
  (assert
  (forall ((container1 us_rep))
  (! (let ((result (elements container1)))
     (and
     (and
     (and (= (length2 result) (length container1))
     (forall ((temp___412 Int))
     (=>
     (and (in_range5 temp___412)
     (= (iter_has_element result temp___412) true))
     (= (contains (model__ container1) (get result temp___412)) true))))
     (forall ((item1 Int))
     (=>
     (and (in_range4 item1) (= (contains (model__ container1) item1) true))
     (and (< 0 (find result item1))
     (= (equivalent_elements (get result (find result item1)) item1) true)))))
     (forall ((i Int))
     (=> (and (<= 1 i) (<= i (length container1)))
     (and (= (find result (get result i)) i)
     (= (e_is_find result (get result i) i) true)))))) :pattern ((elements
                                                                 container1)) )))

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

;; is_empty__post_axiom
  (assert
  (forall ((container1 us_rep))
  (! (= (= (is_empty container1) true) (= (length container1) 0)) :pattern (
  (is_empty container1)) )))

;; is_empty__post__dispatch_axiom
  (assert true)

(define-fun dynamic_invariant3 ((temp___expr_336 Int)
  (temp___is_init_333 Bool) (temp___skip_constant_334 Bool)
  (temp___do_toplevel_335 Bool)) Bool (=>
                                      (or (= temp___is_init_333 true)
                                      (<= 1 100)) (in_range4
                                      temp___expr_336)))

;; contains__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (forall ((item1 Int))
  (! (=> (dynamic_invariant3 item1 true true true)
     (=> (= (of_int 1) true)
     (=>
     (exists ((e Int))
     (and (and (in_range4 e) (= (contains container1 e) true))
     (= (equivalent_elements e item1) true)))
     (= (contains container1 item1) true)))) :pattern ((contains container1
                                                       item1)) ))))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep2)) (! (dynamic_invariant2 (length3 container1)
  true false true) :pattern ((length3 container1)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (! (let ((result (is_empty2 container1)))
     (and
     (= (= result true)
     (forall ((item1 Int))
     (not (and (in_range4 item1) (= (contains container1 item1) true)))))
     (= (= result true) (= (length3 container1) 0)))) :pattern ((is_empty2
                                                                container1)) )))

(define-fun dynamic_invariant4 ((temp___expr_367 Int)
  (temp___is_init_364 Bool) (temp___skip_constant_365 Bool)
  (temp___do_toplevel_366 Bool)) Bool (=>
                                      (or (= temp___is_init_364 true)
                                      (<= 0 2147483647)) (in_range5
                                      temp___expr_367)))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep1))
  (! (let ((result (length2 container1)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant2 result true false
     true))) :pattern ((length2 container1)) )))

(declare-sort element_type3 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (element_type3 element_type3) Bool)

(declare-fun dummy8 () element_type3)

(declare-datatypes ()
((element_type__ref3
 (mk_element_type__ref3 (element_type__content3 element_type3)))))
(define-fun element_type__ref_4__projection ((a element_type__ref3)) element_type3 
  (element_type__content3 a))

(define-fun dynamic_invariant5 ((temp___expr_361 Int)
  (temp___is_init_358 Bool) (temp___skip_constant_359 Bool)
  (temp___do_toplevel_360 Bool)) Bool (=>
                                      (or (= temp___is_init_358 true)
                                      (<= 1 100)) (in_range6
                                      temp___expr_361)))

;; get__post_axiom
  (assert
  (forall ((container1 us_rep1))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant4 position true true true)
     (and (<= 1 position) (<= position (last container1))))
     (dynamic_invariant5 (get container1 position) true false true)) :pattern (
  (get container1 position)) ))))

(declare-fun o () Int)

(declare-fun result () Bool)

;; H
  (assert (in_range2 item))

;; H
  (assert
  (and (= o (length container))
  (and (in_range3 o)
  (<= o (to_rep
        (rec__p__my_sets__set__capacity (us_split_discrs1 container)))))))

;; H
  (assert (= result (ite (= o 0) true false)))

;; H
  (assert (not (= result true)))

(assert
;; WP_parameter_def
 ;; File "a-cforse.ads", line 1390, characters 0-0
  (not (not (= (is_empty container) true))))
(check-sat)
