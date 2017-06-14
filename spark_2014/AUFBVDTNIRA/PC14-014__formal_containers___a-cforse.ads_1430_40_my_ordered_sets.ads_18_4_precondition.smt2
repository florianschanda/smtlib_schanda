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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

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
((us_split_fields
 (mk___split_fields
 (rec__my_ordered_sets__my_rec__f natural)(rec__my_ordered_sets__my_rec__g integer)))))
(define-fun us_split_fields_F__projection ((a us_split_fields)) natural 
  (rec__my_ordered_sets__my_rec__f a))

(define-fun us_split_fields_G__projection ((a us_split_fields)) integer 
  (rec__my_ordered_sets__my_rec__g a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_7__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_10__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                               a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__my_ordered_sets__my_rec__f
                           (us_split_fields1 a))) (to_rep
                                                  (rec__my_ordered_sets__my_rec__f
                                                  (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__my_ordered_sets__my_rec__g
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__my_ordered_sets__my_rec__g
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

(declare-fun my_ordered_sets__my_rec__f__first__bit () Int)

(declare-fun my_ordered_sets__my_rec__f__last__bit () Int)

(declare-fun my_ordered_sets__my_rec__f__position () Int)

;; my_ordered_sets__my_rec__f__first__bit_axiom
  (assert (<= 0 my_ordered_sets__my_rec__f__first__bit))

;; my_ordered_sets__my_rec__f__last__bit_axiom
  (assert
  (< my_ordered_sets__my_rec__f__first__bit my_ordered_sets__my_rec__f__last__bit))

;; my_ordered_sets__my_rec__f__position_axiom
  (assert (<= 0 my_ordered_sets__my_rec__f__position))

(declare-fun my_ordered_sets__my_rec__g__first__bit () Int)

(declare-fun my_ordered_sets__my_rec__g__last__bit () Int)

(declare-fun my_ordered_sets__my_rec__g__position () Int)

;; my_ordered_sets__my_rec__g__first__bit_axiom
  (assert (<= 0 my_ordered_sets__my_rec__g__first__bit))

;; my_ordered_sets__my_rec__g__last__bit_axiom
  (assert
  (< my_ordered_sets__my_rec__g__first__bit my_ordered_sets__my_rec__g__last__bit))

;; my_ordered_sets__my_rec__g__position_axiom
  (assert (<= 0 my_ordered_sets__my_rec__g__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep (my_rec__content
                                                              a))

(define-fun my_lt ((x us_rep)
  (y us_rep)) Bool (< (to_rep
                      (rec__my_ordered_sets__my_rec__f (us_split_fields1 x))) 
  (to_rep (rec__my_ordered_sets__my_rec__f (us_split_fields1 y)))))

(declare-fun my_lt__function_guard (Bool us_rep us_rep) Bool)

(declare-datatypes ()
((element_type__ref (mk_element_type__ref (element_type__content us_rep)))))
(define-fun element_type__ref_5__projection ((a element_type__ref)) us_rep 
  (element_type__content a))

(declare-sort count_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (count_type count_type) Bool)

(declare-fun dummy3 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(declare-fun to_rep2 (count_type) Int)

(declare-fun of_rep2 (Int) count_type)

;; inversion_axiom
  (assert
  (forall ((x count_type))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x count_type)) (! (in_range3
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__my_ordered_sets__n__set__capacity count_type)))))
(define-fun us_split_discrs_2__projection ((a us_split_discrs)) count_type 
  (rec__my_ordered_sets__n__set__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref_2__projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__my_ordered_sets__n__set us_main_type)))))
(define-fun us_split_fields_Set2__projection ((a us_split_fields2)) us_main_type 
  (rec__my_ordered_sets__n__set a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_8__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1
 (mk___rep1
 (us_split_discrs1 us_split_discrs)(us_split_fields3 us_split_fields2)))))
(define-fun us_rep_11__projection ((a us_rep1)) us_split_discrs (us_split_discrs1
                                                                a))

(define-fun us_rep_12__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                 a))

(define-fun bool_eq4 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep2
                            (rec__my_ordered_sets__n__set__capacity
                            (us_split_discrs1 a))) (to_rep2
                                                   (rec__my_ordered_sets__n__set__capacity
                                                   (us_split_discrs1 b))))
                         (= (us_main_eq
                            (rec__my_ordered_sets__n__set
                            (us_split_fields3 a))
                            (rec__my_ordered_sets__n__set
                            (us_split_fields3 b))) true))
                    true false))

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

(declare-fun my_ordered_sets__n__set__capacity__first__bit () Int)

(declare-fun my_ordered_sets__n__set__capacity__last__bit () Int)

(declare-fun my_ordered_sets__n__set__capacity__position () Int)

;; my_ordered_sets__n__set__capacity__first__bit_axiom
  (assert (<= 0 my_ordered_sets__n__set__capacity__first__bit))

;; my_ordered_sets__n__set__capacity__last__bit_axiom
  (assert
  (< my_ordered_sets__n__set__capacity__first__bit my_ordered_sets__n__set__capacity__last__bit))

;; my_ordered_sets__n__set__capacity__position_axiom
  (assert (<= 0 my_ordered_sets__n__set__capacity__position))

(declare-fun dummy4 () us_rep1)

(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep1)))))
(define-fun set__ref_3__projection ((a set__ref)) us_rep1 (set__content a))

(declare-fun oeq (us_rep1 us_rep1) Bool)

(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)

(declare-fun oeq1 (Int us_rep1 us_rep1) Bool)

(declare-fun oeq__function_guard1 (Bool Int us_rep1 us_rep1) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (= (user_eq4 a b) (oeq a b)) :pattern ((user_eq4 a b)) )))

(declare-fun length (us_rep1) Int)

(declare-fun length__function_guard (Int us_rep1) Bool)

(declare-fun length1 (Int us_rep1) Int)

(declare-fun length__function_guard1 (Int Int us_rep1) Bool)

(define-fun dynamic_invariant ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_142)))

;; length__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep2
                (rec__my_ordered_sets__n__set__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant result true false true))) :pattern ((length
                                                            container)) )))

;; length__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep1)) (! (dynamic_invariant
  (length1 attr__tag container) true false
  true) :pattern ((length1 attr__tag container)) ))))

(declare-fun last_element (us_rep1) us_rep)

(declare-fun last_element__function_guard (us_rep us_rep1) Bool)

(declare-fun last_element1 (Int us_rep1) us_rep)

(declare-fun last_element__function_guard1 (us_rep Int us_rep1) Bool)

(declare-datatypes ()
((element_type__ref1 (mk_element_type__ref1 (element_type__content1 us_rep)))))
(define-fun element_type__ref_7__projection ((a element_type__ref1)) us_rep 
  (element_type__content1 a))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

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

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep2)))))
(define-fun sequence__ref_2__projection ((a sequence__ref)) us_rep2 (sequence__content
                                                                    a))

(declare-fun get (us_rep2 Int) us_rep)

(declare-fun get__function_guard (us_rep us_rep2 Int) Bool)

(define-fun e_bigger_than_range ((container us_rep2) (fst Int) (lst Int)
  (item us_rep)) Bool (ite (forall ((i Int))
                           (=> (and (<= fst i) (<= i lst))
                           (= (my_lt (get container i) item) true)))
                      true false))

(declare-fun e_bigger_than_range__function_guard (Bool us_rep2 Int Int
  us_rep) Bool)

(declare-fun elements (us_rep1) us_rep2)

(declare-fun elements__function_guard (us_rep2 us_rep1) Bool)

(declare-fun is_empty (us_rep1) Bool)

(declare-fun is_empty__function_guard (Bool us_rep1) Bool)

(declare-fun is_empty1 (Int us_rep1) Bool)

(declare-fun is_empty__function_guard1 (Bool Int us_rep1) Bool)

;; last_element__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (=> (not (= (is_empty container) true))
     (let ((result (last_element container)))
     (and
     (= (bool_eq2 result (get (elements container) (length container))) true)
     (= (e_bigger_than_range (elements container) 1 (- (length container) 1)
        result) true)))) :pattern ((last_element container)) )))

;; last_element__post__dispatch_axiom
  (assert true)

(declare-fun container () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun item () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(define-fun dynamic_invariant2 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(define-fun equivalent_elements ((left us_rep)
  (right us_rep)) Bool (and (not (my_lt left right)) (not (my_lt right left))))

(declare-fun equivalent_elements__function_guard (Bool us_rep us_rep) Bool)

(declare-fun length2 (us_rep2) Int)

(declare-fun length__function_guard2 (Int us_rep2) Bool)

(define-fun e_smaller_than_range ((container1 us_rep2) (fst Int) (lst Int)
  (item1 us_rep)) Bool (ite (forall ((i Int))
                            (=> (and (<= fst i) (<= i lst))
                            (= (my_lt item1 (get container1 i)) true)))
                       true false))

(declare-fun e_smaller_than_range__function_guard (Bool us_rep2 Int Int
  us_rep) Bool)

(define-fun e_is_find ((container1 us_rep2) (item1 us_rep)
  (position Int)) Bool (and (ite (< 0 position)
                            (e_bigger_than_range container1 1 (- position 1)
                            item1) (of_int 1)) (ite (< position (length2
                                                                container1))
                                               (e_smaller_than_range
                                               container1 (+ position 1)
                                               (length2 container1) item1)
                                               (of_int 1))))

(declare-fun e_is_find__function_guard (Bool us_rep2 us_rep Int) Bool)

(define-fun last ((container1 us_rep2)) Int (+ 0 (length2 container1)))

(declare-fun last__function_guard (Int us_rep2) Bool)

(define-fun oeq2 ((left us_rep2)
  (right us_rep2)) Bool (and (= (length2 left) (length2 right)) (ite 
                                                                (forall
                                                                ((n Int))
                                                                (=>
                                                                (and (<= 1 n)
                                                                (<= n 
                                                                (last left)))
                                                                (= (bool_eq2
                                                                   (get left
                                                                   n)
                                                                   (get right
                                                                   n)) true)))
                                                                true false)))

(declare-fun oeq__function_guard2 (Bool us_rep2 us_rep2) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep2) (b us_rep2))
  (! (= (user_eq5 a b) (oeq2 a b)) :pattern ((user_eq5 a b)) )))

(define-fun default_initial_assumption ((temp___expr_592 us_rep2)
  (temp___skip_top_level_593 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_593 true))
                                         (= (length2 temp___expr_592) 0)))

(declare-fun find (us_rep2 us_rep) Int)

(declare-fun find__function_guard (Int us_rep2 us_rep) Bool)

;; find__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (forall ((item1 us_rep))
  (! (let ((result (find container1 item1)))
     (and
     (=> (< 0 result)
     (and (<= result (length2 container1))
     (= (equivalent_elements item1 (get container1 result)) true)))
     (dynamic_invariant result true false true))) :pattern ((find container1
                                                            item1)) ))))

(define-fun e_elements_included ((left us_rep2)
  (right us_rep2)) Bool (ite (forall ((i Int))
                             (=> (and (<= 1 i) (<= i (length2 left)))
                             (and (< 0 (find right (get left i)))
                             (= (bool_eq2
                                (get right (find right (get left i)))
                                (get left i)) true))))
                        true false))

(declare-fun e_elements_included__function_guard (Bool us_rep2 us_rep2) Bool)

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

(declare-datatypes () ((set__ref1 (mk_set__ref1 (set__content1 us_rep3)))))
(define-fun set__ref_4__projection ((a set__ref1)) us_rep3 (set__content1 a))

(declare-fun is_empty2 (us_rep3) Bool)

(declare-fun is_empty__function_guard2 (Bool us_rep3) Bool)

(define-fun default_initial_assumption1 ((temp___expr_559 us_rep3)
  (temp___skip_top_level_560 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_560 true))
                                         (= (is_empty2 temp___expr_559) true)))

(declare-fun length3 (us_rep3) Int)

(declare-fun length__function_guard3 (Int us_rep3) Bool)

(declare-fun model__ (us_rep1) us_rep3)

(declare-fun model____function_guard (us_rep3 us_rep1) Bool)

;; model____post_axiom
  (assert
  (forall ((container1 us_rep1))
  (! (= (length3 (model__ container1)) (length container1)) :pattern (
  (model__ container1)) )))

(declare-datatypes ()
((element_type__ref2 (mk_element_type__ref2 (element_type__content2 us_rep)))))
(define-fun element_type__ref_6__projection ((a element_type__ref2)) us_rep 
  (element_type__content2 a))

(declare-fun contains (us_rep3 us_rep) Bool)

(declare-fun contains__function_guard (Bool us_rep3 us_rep) Bool)

(declare-sort extended_index 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq7 (extended_index extended_index) Bool)

(declare-fun dummy7 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref_2__projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun iter_has_element ((container1 us_rep2)
  (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position 
                                                             (last
                                                             container1))
                                                             true false)))

(declare-fun iter_has_element__function_guard (Bool us_rep2 Int) Bool)

;; elements__post_axiom
  (assert
  (forall ((container1 us_rep1))
  (! (let ((result (elements container1)))
     (and
     (and
     (and (= (length2 result) (length container1))
     (forall ((temp___626 Int))
     (=>
     (and (in_range4 temp___626)
     (= (iter_has_element result temp___626) true))
     (= (contains (model__ container1) (get result temp___626)) true))))
     (forall ((item1 us_rep))
     (=> (= (contains (model__ container1) item1) true)
     (and (< 0 (find result item1))
     (= (equivalent_elements (get result (find result item1)) item1) true)))))
     (forall ((i Int))
     (=> (and (<= 1 i) (<= i (length container1)))
     (and (= (find result (get result i)) i)
     (= (e_is_find result (get result i) i) true)))))) :pattern ((elements
                                                                 container1)) )))

;; oeq__post_axiom
  (assert
  (forall ((left us_rep1) (right us_rep1))
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
  (forall ((container1 us_rep1))
  (! (= (= (is_empty container1) true) (= (length container1) 0)) :pattern (
  (is_empty container1)) )))

;; is_empty__post__dispatch_axiom
  (assert true)

;; contains__post_axiom
  (assert
  (forall ((container1 us_rep3))
  (forall ((item1 us_rep))
  (! (=> (= (of_int 1) true)
     (=>
     (exists ((e us_rep))
     (and (= (contains container1 e) true)
     (= (equivalent_elements e item1) true)))
     (= (contains container1 item1) true))) :pattern ((contains container1
                                                      item1)) ))))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep3)) (! (dynamic_invariant (length3 container1)
  true false true) :pattern ((length3 container1)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container1 us_rep3))
  (! (let ((result (is_empty2 container1)))
     (and
     (= (= result true)
     (forall ((item1 us_rep)) (not (= (contains container1 item1) true))))
     (= (= result true) (= (length3 container1) 0)))) :pattern ((is_empty2
                                                                container1)) )))

(define-fun dynamic_invariant3 ((temp___expr_585 Int)
  (temp___is_init_582 Bool) (temp___skip_constant_583 Bool)
  (temp___do_toplevel_584 Bool)) Bool (=>
                                      (or (= temp___is_init_582 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_585)))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (! (let ((result (length2 container1)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false
     true))) :pattern ((length2 container1)) )))

;; get__post_axiom
  (assert true)

(declare-fun o () Int)

(declare-fun result () Bool)

;; H
  (assert
  (and (= o (length container))
  (and (in_range3 o)
  (<= o (to_rep2
        (rec__my_ordered_sets__n__set__capacity (us_split_discrs1 container)))))))

;; H
  (assert (= result (ite (= o 0) true false)))

;; H
  (assert (not (= result true)))

(assert
;; WP_parameter_def
 ;; File "a-cforse.ads", line 1412, characters 0-0
  (not (not (= (is_empty container) true))))
(check-sat)
