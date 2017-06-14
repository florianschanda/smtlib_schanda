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

(declare-sort capacity_range 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (capacity_range capacity_range) Bool)

(declare-fun dummy () capacity_range)

(declare-datatypes ()
((capacity_range__ref
 (mk_capacity_range__ref (capacity_range__content capacity_range)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) capacity_range 
  (capacity_range__content a))

(declare-fun to_rep (capacity_range) Int)

(declare-fun of_rep (Int) capacity_range)

;; inversion_axiom
  (assert
  (forall ((x capacity_range))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x capacity_range)) (! (in_range
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort capacity_range1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (capacity_range1 capacity_range1) Bool)

(declare-fun dummy1 () capacity_range1)

(declare-datatypes ()
((capacity_range__ref1
 (mk_capacity_range__ref1 (capacity_range__content1 capacity_range1)))))
(define-fun capacity_range__ref_2__projection ((a capacity_range__ref1)) capacity_range1 
  (capacity_range__content1 a))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__hnco__test2__v_type_owner__vector_type_owner__vector__capacity capacity_range1)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) capacity_range1 
  (rec__hnco__test2__v_type_owner__vector_type_owner__vector__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__hnco__test2__v_type_owner__vector_type_owner__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type 
  (rec__hnco__test2__v_type_owner__vector_type_owner__vector a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(declare-fun user_eq2 (us_rep us_rep) Bool)

(declare-fun to_rep1 (capacity_range1) Int)

(declare-fun of_rep1 (Int) capacity_range1)

;; inversion_axiom
  (assert
  (forall ((x capacity_range1))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x capacity_range1)) (! (in_range1
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

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

(declare-fun hnco__test2__v_type_owner__vector_type_owner__vector__capacity__first__bit () Int)

(declare-fun hnco__test2__v_type_owner__vector_type_owner__vector__capacity__last__bit () Int)

(declare-fun hnco__test2__v_type_owner__vector_type_owner__vector__capacity__position () Int)

;; hnco__test2__v_type_owner__vector_type_owner__vector__capacity__first__bit_axiom
  (assert
  (<= 0 hnco__test2__v_type_owner__vector_type_owner__vector__capacity__first__bit))

;; hnco__test2__v_type_owner__vector_type_owner__vector__capacity__last__bit_axiom
  (assert
  (< hnco__test2__v_type_owner__vector_type_owner__vector__capacity__first__bit 
  hnco__test2__v_type_owner__vector_type_owner__vector__capacity__last__bit))

;; hnco__test2__v_type_owner__vector_type_owner__vector__capacity__position_axiom
  (assert
  (<= 0 hnco__test2__v_type_owner__vector_type_owner__vector__capacity__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content
                                                              a))

(define-fun in_range2 ((rec__hnco__test2__v_type_owner__vector_type_owner__vector__capacity1 Int)
  (a us_rep)) Bool (= rec__hnco__test2__v_type_owner__vector_type_owner__vector__capacity1 
  (to_rep1
  (rec__hnco__test2__v_type_owner__vector_type_owner__vector__capacity
  (us_split_discrs1 a)))))

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

(declare-fun hnco__test2__v_type_owner__vector_type_owner__vector__capacity__first__bit1 () Int)

(declare-fun hnco__test2__v_type_owner__vector_type_owner__vector__capacity__last__bit1 () Int)

(declare-fun hnco__test2__v_type_owner__vector_type_owner__vector__capacity__position1 () Int)

;; hnco__test2__v_type_owner__vector_type_owner__vector__capacity__first__bit_axiom
  (assert
  (<= 0 hnco__test2__v_type_owner__vector_type_owner__vector__capacity__first__bit1))

;; hnco__test2__v_type_owner__vector_type_owner__vector__capacity__last__bit_axiom
  (assert
  (< hnco__test2__v_type_owner__vector_type_owner__vector__capacity__first__bit1 
  hnco__test2__v_type_owner__vector_type_owner__vector__capacity__last__bit1))

;; hnco__test2__v_type_owner__vector_type_owner__vector__capacity__position_axiom
  (assert
  (<= 0 hnco__test2__v_type_owner__vector_type_owner__vector__capacity__position1))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((t179s__ref (mk_t179s__ref (t179s__content us_rep)))))
(define-fun t179s__ref___projection ((a t179s__ref)) us_rep (t179s__content
                                                            a))

(declare-datatypes ()
((us_split_discrs2
 (mk___split_discrs1
 (rec__hnco__test2__v_type_owner__vector_type__capacity capacity_range)))))
(define-fun us_split_discrs_2__projection ((a us_split_discrs2)) capacity_range 
  (rec__hnco__test2__v_type_owner__vector_type__capacity a))

(declare-datatypes ()
((us_split_discrs__ref1
 (mk___split_discrs__ref1 (us_split_discrs__content1 us_split_discrs2)))))
(define-fun us_split_discrs__ref_2__projection ((a us_split_discrs__ref1)) us_split_discrs2 
  (us_split_discrs__content1 a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__hnco__test2__v_type_owner__vector_type__hidden_vector us_rep)(rec__ext__ us_private)))))
(define-fun us_split_fields_Hidden_Vector__projection ((a us_split_fields2)) us_rep 
  (rec__hnco__test2__v_type_owner__vector_type__hidden_vector a))

(define-fun us_split_fields___projection ((a us_split_fields2)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1
 (mk___rep1
 (us_split_discrs3 us_split_discrs2)(us_split_fields3 us_split_fields2)(attr__tag Int)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_discrs2 (us_split_discrs3
                                                                a))

(define-fun us_rep_4__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun us_rep_5__projection ((a us_rep1)) Int (attr__tag a))

(declare-fun user_eq3 (us_rep1 us_rep1) Bool)

(declare-fun us_dispatch_eq (us_rep1 us_rep1) Bool)

(declare-fun us_tag () Int)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep1) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))

(declare-fun hnco__test2__v_type_owner__vector_type__capacity__first__bit () Int)

(declare-fun hnco__test2__v_type_owner__vector_type__capacity__last__bit () Int)

(declare-fun hnco__test2__v_type_owner__vector_type__capacity__position () Int)

;; hnco__test2__v_type_owner__vector_type__capacity__first__bit_axiom
  (assert
  (<= 0 hnco__test2__v_type_owner__vector_type__capacity__first__bit))

;; hnco__test2__v_type_owner__vector_type__capacity__last__bit_axiom
  (assert
  (< hnco__test2__v_type_owner__vector_type__capacity__first__bit hnco__test2__v_type_owner__vector_type__capacity__last__bit))

;; hnco__test2__v_type_owner__vector_type__capacity__position_axiom
  (assert (<= 0 hnco__test2__v_type_owner__vector_type__capacity__position))

(declare-fun hnco__test2__v_type_owner__vector_type__hidden_vector__first__bit () Int)

(declare-fun hnco__test2__v_type_owner__vector_type__hidden_vector__last__bit () Int)

(declare-fun hnco__test2__v_type_owner__vector_type__hidden_vector__position () Int)

;; hnco__test2__v_type_owner__vector_type__hidden_vector__first__bit_axiom
  (assert
  (<= 0 hnco__test2__v_type_owner__vector_type__hidden_vector__first__bit))

;; hnco__test2__v_type_owner__vector_type__hidden_vector__last__bit_axiom
  (assert
  (< hnco__test2__v_type_owner__vector_type__hidden_vector__first__bit 
  hnco__test2__v_type_owner__vector_type__hidden_vector__last__bit))

;; hnco__test2__v_type_owner__vector_type__hidden_vector__position_axiom
  (assert
  (<= 0 hnco__test2__v_type_owner__vector_type__hidden_vector__position))

(declare-fun dummy4 () us_rep1)

(declare-datatypes ()
((vector_type__ref (mk_vector_type__ref (vector_type__content us_rep1)))))
(define-fun vector_type__ref___projection ((a vector_type__ref)) us_rep1 
  (vector_type__content a))

(define-fun dynamic_invariant ((temp___expr_230 us_rep1)
  (temp___is_init_227 Bool) (temp___skip_constant_228 Bool)
  (temp___do_toplevel_229 Bool)) Bool (in_range2
  (to_rep
  (rec__hnco__test2__v_type_owner__vector_type__capacity
  (us_split_discrs3 temp___expr_230)))
  (rec__hnco__test2__v_type_owner__vector_type__hidden_vector
  (us_split_fields3 temp___expr_230))))

(declare-fun is_empty (us_rep1) Bool)

(declare-fun is_empty__function_guard (Bool us_rep1) Bool)

(declare-fun container () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort element_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq4 (element_type element_type) Bool)

(declare-fun dummy5 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_2__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_726 Int)
  (temp___is_init_723 Bool) (temp___skip_constant_724 Bool)
  (temp___do_toplevel_725 Bool)) Bool (=>
                                      (or (= temp___is_init_723 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_726)))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep2 0)

(declare-fun bool_eq3 (us_rep2 us_rep2) Bool)

(declare-fun user_eq5 (us_rep2 us_rep2) Bool)

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep2) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment3 a))))

(declare-fun dummy6 () us_rep2)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep2)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep2 (sequence__content
                                                                   a))

(declare-fun get (us_rep2 Int) Int)

(declare-fun get__function_guard (Int us_rep2 Int) Bool)

(declare-fun model__ (us_rep) us_rep2)

(declare-fun model____function_guard (us_rep2 us_rep) Bool)

(declare-fun is_empty1 (us_rep) Bool)

(declare-fun is_empty__function_guard1 (Bool us_rep) Bool)

(define-fun first_element ((container1 us_rep)) Int (get (model__ container1)
                                                    1))

(declare-fun first_element__function_guard (Int us_rep) Bool)

(declare-sort count_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq6 (count_type count_type) Bool)

(declare-fun dummy7 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_141)))

(define-fun dynamic_invariant3 ((temp___expr_213 Int)
  (temp___is_init_210 Bool) (temp___skip_constant_211 Bool)
  (temp___do_toplevel_212 Bool)) Bool (=>
                                      (or (= temp___is_init_210 true)
                                      (<= 0 2147483647)) (in_range
                                      temp___expr_213)))

;; is_empty__post_axiom
  (assert true)

(define-fun dynamic_invariant4 ((temp___expr_219 Int)
  (temp___is_init_216 Bool) (temp___skip_constant_217 Bool)
  (temp___do_toplevel_218 Bool)) Bool (=>
                                      (or (= temp___is_init_216 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_219)))

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range5 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Bool)

(define-fun capacity ((container1 us_rep)) Int (ite (= (of_int 1) true)
                                               (to_rep1
                                               (rec__hnco__test2__v_type_owner__vector_type_owner__vector__capacity
                                               (us_split_discrs1 container1)))
                                               2147483647))

(declare-fun capacity__function_guard (Int us_rep) Bool)

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

;; length__post_axiom
  (assert
  (forall ((container1 us_rep))
  (! (let ((result (length container1)))
     (and (<= result (capacity container1)) (dynamic_invariant4 result true
     false true))) :pattern ((length container1)) )))

(declare-fun length1 (us_rep2) Int)

(declare-fun length__function_guard1 (Int us_rep2) Bool)

(define-fun last ((container1 us_rep2)) Int (+ 0 (length1 container1)))

(declare-fun last__function_guard (Int us_rep2) Bool)

(define-fun oeq ((left us_rep2)
  (right us_rep2)) Bool (and (= (length1 left) (length1 right)) (ite 
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

(declare-fun oeq__function_guard (Bool us_rep2 us_rep2) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep2) (b us_rep2))
  (! (= (user_eq5 a b) (oeq a b)) :pattern ((user_eq5 a b)) )))

(define-fun default_initial_assumption ((temp___expr_757 us_rep2)
  (temp___skip_top_level_758 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_758 true))
                                         (= (length1 temp___expr_757) 0)))

;; model____post_axiom
  (assert
  (forall ((container1 us_rep))
  (! (= (length1 (model__ container1)) (length container1)) :pattern (
  (model__ container1)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container1 us_rep))
  (! (= (= (is_empty1 container1) true) (= (length container1) 0)) :pattern (
  (is_empty1 container1)) )))

(declare-sort extended_index 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (extended_index extended_index) Bool)

(declare-fun dummy8 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref_3__projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant5 ((temp___expr_750 Int)
  (temp___is_init_747 Bool) (temp___skip_constant_748 Bool)
  (temp___do_toplevel_749 Bool)) Bool (=>
                                      (or (= temp___is_init_747 true)
                                      (<= 0 2147483647)) (in_range6
                                      temp___expr_750)))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (! (let ((result (length1 container1)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant2 result true false
     true))) :pattern ((length1 container1)) )))

(declare-sort element_type1 0)

(define-fun in_range7 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (element_type1 element_type1) Bool)

(declare-fun dummy9 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_3__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant6 ((temp___expr_744 Int)
  (temp___is_init_741 Bool) (temp___skip_constant_742 Bool)
  (temp___do_toplevel_743 Bool)) Bool (=>
                                      (or (= temp___is_init_741 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range7 temp___expr_744)))

;; get__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant5 position true true true)
     (and (<= 1 position) (<= position (last container1))))
     (dynamic_invariant6 (get container1 position) true false true)) :pattern (
  (get container1 position)) ))))

(declare-fun us () Int)

(declare-fun us1 () Int)

;; H
  (assert
  (= (to_rep
     (rec__hnco__test2__v_type_owner__vector_type__capacity
     (us_split_discrs3 container))) (to_rep1
                                    (rec__hnco__test2__v_type_owner__vector_type_owner__vector__capacity
                                    (us_split_discrs1
                                    (rec__hnco__test2__v_type_owner__vector_type__hidden_vector
                                    (us_split_fields3 container)))))))

;; H
  (assert (is_empty__function_guard (is_empty container) container))

;; H
  (assert (not (= (is_empty container) true)))

;; H
  (assert
  (and
  (= us (to_rep
        (rec__hnco__test2__v_type_owner__vector_type__capacity
        (us_split_discrs3 container))))
  (in_range
  (to_rep
  (rec__hnco__test2__v_type_owner__vector_type__capacity
  (us_split_discrs3 container))))))

;; H
  (assert
  (and
  (= us1 (to_rep
         (rec__hnco__test2__v_type_owner__vector_type__capacity
         (us_split_discrs3 container))))
  (in_range1
  (to_rep
  (rec__hnco__test2__v_type_owner__vector_type__capacity
  (us_split_discrs3 container))))))

(assert
;; WP_parameter_def
 ;; File "aida-containers-formal_vectors.ads", line 5, characters 0-0
  (not
  (not
  (= (is_empty1
     (rec__hnco__test2__v_type_owner__vector_type__hidden_vector
     (us_split_fields3 container))) true))))
(check-sat)
