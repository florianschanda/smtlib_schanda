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

(declare-sort key_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (key_type key_type) Bool)

(declare-fun dummy () key_type)

(declare-datatypes ()
((key_type__ref (mk_key_type__ref (key_type__content key_type)))))
(define-fun key_type__ref___projection ((a key_type__ref)) key_type (key_type__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_289 Int)
  (temp___is_init_286 Bool) (temp___skip_constant_287 Bool)
  (temp___do_toplevel_288 Bool)) Bool (=>
                                      (or (= temp___is_init_286 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_289)))

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
 (mk___split_discrs (rec__my_ordered_maps__m__map__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type 
  (rec__my_ordered_maps__m__map__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__my_ordered_maps__m__map us_main_type)))))
(define-fun us_split_fields_Map__projection ((a us_split_fields)) us_main_type 
  (rec__my_ordered_maps__m__map a))

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
                           (rec__my_ordered_maps__m__map__capacity
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__my_ordered_maps__m__map__capacity
                                                  (us_split_discrs1 b))))
                        (= (us_main_eq
                           (rec__my_ordered_maps__m__map
                           (us_split_fields1 a))
                           (rec__my_ordered_maps__m__map
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

(declare-fun my_ordered_maps__m__map__capacity__first__bit () Int)

(declare-fun my_ordered_maps__m__map__capacity__last__bit () Int)

(declare-fun my_ordered_maps__m__map__capacity__position () Int)

;; my_ordered_maps__m__map__capacity__first__bit_axiom
  (assert (<= 0 my_ordered_maps__m__map__capacity__first__bit))

;; my_ordered_maps__m__map__capacity__last__bit_axiom
  (assert
  (< my_ordered_maps__m__map__capacity__first__bit my_ordered_maps__m__map__capacity__last__bit))

;; my_ordered_maps__m__map__capacity__position_axiom
  (assert (<= 0 my_ordered_maps__m__map__capacity__position))

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

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(declare-fun length1 (Int us_rep) Int)

(declare-fun length__function_guard1 (Int Int us_rep) Bool)

(define-fun dynamic_invariant1 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_142)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep
                (rec__my_ordered_maps__m__map__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant1 result true false true))) :pattern ((length
                                                             container)) )))

;; length__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep)) (! (dynamic_invariant1
  (length1 attr__tag container) true false
  true) :pattern ((length1 attr__tag container)) ))))

(declare-fun last_key (us_rep) Int)

(declare-fun last_key__function_guard (Int us_rep) Bool)

(declare-fun last_key1 (Int us_rep) Int)

(declare-fun last_key__function_guard1 (Int Int us_rep) Bool)

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

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content
                                                                   a))

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

(define-fun k_bigger_than_range ((container us_rep1) (fst Int) (lst Int)
  (key Int)) Bool (ite (forall ((i Int))
                       (=> (and (<= fst i) (<= i lst))
                       (< (get container i) key)))
                  true false))

(declare-fun k_bigger_than_range__function_guard (Bool us_rep1 Int Int
  Int) Bool)

(declare-fun keys (us_rep) us_rep1)

(declare-fun keys__function_guard (us_rep1 us_rep) Bool)

(declare-fun is_empty (us_rep) Bool)

(declare-fun is_empty__function_guard (Bool us_rep) Bool)

(declare-fun is_empty1 (Int us_rep) Bool)

(declare-fun is_empty__function_guard1 (Bool Int us_rep) Bool)

;; last_key__post_axiom
  (assert
  (forall ((container us_rep))
  (! (=> (not (= (is_empty container) true))
     (let ((result (last_key container)))
     (and
     (and (= result (get (keys container) (length container)))
     (= (k_bigger_than_range (keys container) 1 (- (length container) 1)
        result) true))
     (dynamic_invariant result true false true)))) :pattern ((last_key
                                                             container)) )))

;; last_key__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep)) (! (dynamic_invariant
  (last_key1 attr__tag container) true false
  true) :pattern ((last_key1 attr__tag container)) ))))

(declare-fun container () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun key () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun equivalent_keys ((left Int)
  (right Int)) Bool (and (not (< left right)) (not (< right left))))

(declare-fun equivalent_keys__function_guard (Bool Int Int) Bool)

(declare-fun length2 (us_rep1) Int)

(declare-fun length__function_guard2 (Int us_rep1) Bool)

(define-fun k_smaller_than_range ((container1 us_rep1) (fst Int) (lst Int)
  (key1 Int)) Bool (ite (forall ((i Int))
                        (=> (and (<= fst i) (<= i lst))
                        (< key1 (get container1 i))))
                   true false))

(declare-fun k_smaller_than_range__function_guard (Bool us_rep1 Int Int
  Int) Bool)

(define-fun k_is_find ((container1 us_rep1) (key1 Int)
  (position Int)) Bool (and (ite (< 0 position)
                            (k_bigger_than_range container1 1 (- position 1)
                            key1) (of_int 1)) (ite (< position (length2
                                                               container1))
                                              (k_smaller_than_range
                                              container1 (+ position 1)
                                              (length2 container1) key1)
                                              (of_int 1))))

(declare-fun k_is_find__function_guard (Bool us_rep1 Int Int) Bool)

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
  (! (= (user_eq3 a b) (oeq2 a b)) :pattern ((user_eq3 a b)) )))

(define-fun default_initial_assumption ((temp___expr_365 us_rep1)
  (temp___skip_top_level_366 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_366 true))
                                         (= (length2 temp___expr_365) 0)))

(declare-fun find (us_rep1 Int) Int)

(declare-fun find__function_guard (Int us_rep1 Int) Bool)

;; find__post_axiom
  (assert
  (forall ((container1 us_rep1))
  (forall ((key1 Int))
  (! (=> (dynamic_invariant key1 true true true)
     (let ((result (find container1 key1)))
     (and
     (=> (< 0 result)
     (and (<= result (length2 container1))
     (= (equivalent_keys key1 (get container1 result)) true)))
     (dynamic_invariant1 result true false true)))) :pattern ((find
                                                              container1
                                                              key1)) ))))

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

(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 us_rep2)))))
(define-fun map__ref_2__projection ((a map__ref1)) us_rep2 (map__content1 a))

(declare-fun length3 (us_rep2) Int)

(declare-fun length__function_guard3 (Int us_rep2) Bool)

(declare-fun is_empty2 (us_rep2) Bool)

(declare-fun is_empty__function_guard2 (Bool us_rep2) Bool)

(define-fun default_initial_assumption1 ((temp___expr_334 us_rep2)
  (temp___skip_top_level_335 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_335 true))
                                         (and
                                         (= (is_empty2 temp___expr_334) true)
                                         (= (length3 temp___expr_334) 0))))

(declare-fun model__ (us_rep) us_rep2)

(declare-fun model____function_guard (us_rep2 us_rep) Bool)

;; model____post_axiom
  (assert true)

(declare-sort key_type1 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (key_type1 key_type1) Bool)

(declare-fun dummy5 () key_type1)

(declare-datatypes ()
((key_type__ref1 (mk_key_type__ref1 (key_type__content1 key_type1)))))
(define-fun key_type__ref_2__projection ((a key_type__ref1)) key_type1 
  (key_type__content1 a))

(declare-fun has_key (us_rep2 Int) Bool)

(declare-fun has_key__function_guard (Bool us_rep2 Int) Bool)

(declare-sort extended_index 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (extended_index extended_index) Bool)

(declare-fun dummy6 () extended_index)

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

;; keys__post_axiom
  (assert
  (forall ((container1 us_rep))
  (! (let ((result (keys container1)))
     (and
     (and
     (and (= (length2 result) (length container1))
     (forall ((temp___399 Int))
     (=>
     (and (in_range4 temp___399)
     (= (iter_has_element result temp___399) true))
     (= (has_key (model__ container1) (get result temp___399)) true))))
     (forall ((key1 Int))
     (=> (and (in_range3 key1) (= (has_key (model__ container1) key1) true))
     (and (< 0 (find result key1))
     (= (equivalent_keys (get result (find result key1)) key1) true)))))
     (forall ((i Int))
     (=> (and (<= 1 i) (<= i (length container1)))
     (and (= (find result (get result i)) i)
     (= (k_is_find result (get result i) i) true)))))) :pattern ((keys
                                                                 container1)) )))

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

;; is_empty__post_axiom
  (assert
  (forall ((container1 us_rep))
  (! (= (= (is_empty container1) true) (= (length container1) 0)) :pattern (
  (is_empty container1)) )))

;; is_empty__post__dispatch_axiom
  (assert true)

(define-fun dynamic_invariant2 ((temp___expr_321 Int)
  (temp___is_init_318 Bool) (temp___skip_constant_319 Bool)
  (temp___do_toplevel_320 Bool)) Bool (=>
                                      (or (= temp___is_init_318 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_321)))

;; has_key__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (forall ((key1 Int))
  (! (=> (dynamic_invariant2 key1 true true true)
     (=> (= (of_int 1) true)
     (=>
     (exists ((k Int))
     (and (and (in_range3 k) (= (has_key container1 k) true))
     (= (equivalent_keys k key1) true))) (= (has_key container1 key1) true)))) :pattern (
  (has_key container1 key1)) ))))

(declare-sort element_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (element_type element_type) Bool)

(declare-fun dummy7 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_2__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant3 ((temp___expr_327 Int)
  (temp___is_init_324 Bool) (temp___skip_constant_325 Bool)
  (temp___do_toplevel_326 Bool)) Bool (=>
                                      (or (= temp___is_init_324 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range5 temp___expr_327)))

(declare-fun witness (us_rep2 Int) Int)

(declare-fun witness__function_guard (Int us_rep2 Int) Bool)

(declare-fun w_get (us_rep2 Int) Int)

(declare-fun w_get__function_guard (Int us_rep2 Int) Bool)

(declare-fun get1 (us_rep2 Int) Int)

(declare-fun get__function_guard1 (Int us_rep2 Int) Bool)

;; get__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (forall ((key1 Int))
  (! (=>
     (and (dynamic_invariant2 key1 true true true)
     (= (has_key container1 key1) true))
     (let ((result (get1 container1 key1)))
     (and
     (=> (= (of_int 1) true)
     (and (= result (w_get container1 (witness container1 key1)))
     (forall ((k Int))
     (=> (and (in_range3 k) (= (has_key container1 k) true))
     (= (= (equivalent_keys k key1) true)
     (= (witness container1 key1) (witness container1 k)))))))
     (dynamic_invariant3 result true false true)))) :pattern ((get1
                                                              container1
                                                              key1)) ))))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep2)) (! (dynamic_invariant1 (length3 container1)
  true false true) :pattern ((length3 container1)) )))

;; oeq__post_axiom
  (assert
  (forall ((left us_rep2) (right us_rep2))
  (! (= (= (oeq3 left right) true)
     (and
     (forall ((key1 Int))
     (=> (and (in_range3 key1) (= (has_key left key1) true))
     (and (= (has_key right key1) true)
     (= (get1 right key1) (get1 left key1)))))
     (forall ((key1 Int))
     (=> (and (in_range3 key1) (= (has_key right key1) true))
     (= (has_key left key1) true))))) :pattern ((oeq3 left right)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (! (= (= (is_empty2 container1) true)
     (forall ((key1 Int))
     (not (and (in_range3 key1) (= (has_key container1 key1) true))))) :pattern (
  (is_empty2 container1)) )))

(declare-fun has_witness (us_rep2 Int) Bool)

(declare-fun has_witness__function_guard (Bool us_rep2 Int) Bool)

;; has_witness__post_axiom
  (assert true)

;; witness__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (forall ((key1 Int))
  (! (=>
     (and (dynamic_invariant2 key1 true true true)
     (= (has_key container1 key1) true))
     (let ((result (witness container1 key1)))
     (and (= (has_witness container1 result) true) (dynamic_invariant1 result
     true false true)))) :pattern ((witness container1 key1)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (forall ((witness1 Int))
  (! (=>
     (and (dynamic_invariant1 witness1 true true true)
     (= (has_witness container1 witness1) true)) (dynamic_invariant3
     (w_get container1 witness1) true false true)) :pattern ((w_get
                                                             container1
                                                             witness1)) ))))

(define-fun dynamic_invariant4 ((temp___expr_358 Int)
  (temp___is_init_355 Bool) (temp___skip_constant_356 Bool)
  (temp___do_toplevel_357 Bool)) Bool (=>
                                      (or (= temp___is_init_355 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_358)))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep1))
  (! (let ((result (length2 container1)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant1 result true false
     true))) :pattern ((length2 container1)) )))

(declare-sort element_type1 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (element_type1 element_type1) Bool)

(declare-fun dummy8 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_3__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant5 ((temp___expr_352 Int)
  (temp___is_init_349 Bool) (temp___skip_constant_350 Bool)
  (temp___do_toplevel_351 Bool)) Bool (=>
                                      (or (= temp___is_init_349 true)
                                      (<= 0 2147483647)) (in_range6
                                      temp___expr_352)))

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
  (assert (in_range1 key))

;; H
  (assert
  (and (= o (length container))
  (and (in_range2 o)
  (<= o (to_rep
        (rec__my_ordered_maps__m__map__capacity (us_split_discrs1 container)))))))

;; H
  (assert (= result (ite (= o 0) true false)))

;; H
  (assert (not (= result true)))

(assert
;; WP_parameter_def
 ;; File "a-cforma.ads", line 982, characters 0-0
  (not (not (= (is_empty container) true))))
(check-sat)
