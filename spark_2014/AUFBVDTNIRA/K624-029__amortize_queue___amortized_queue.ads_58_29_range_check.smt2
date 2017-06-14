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

(declare-sort index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index index) Bool)

(declare-fun dummy1 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-sort index_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (index_type index_type) Bool)

(declare-fun dummy2 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(declare-sort capacity_range 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (capacity_range capacity_range) Bool)

(declare-fun dummy3 () capacity_range)

(declare-datatypes ()
((capacity_range__ref
 (mk_capacity_range__ref (capacity_range__content capacity_range)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) capacity_range 
  (capacity_range__content a))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__amortized_queue__my_vectors__vector__capacity capacity_range)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) capacity_range 
  (rec__amortized_queue__my_vectors__vector__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__amortized_queue__my_vectors__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type 
  (rec__amortized_queue__my_vectors__vector a))

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

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun amortized_queue__my_vectors__vector__capacity__first__bit () Int)

(declare-fun amortized_queue__my_vectors__vector__capacity__last__bit () Int)

(declare-fun amortized_queue__my_vectors__vector__capacity__position () Int)

;; amortized_queue__my_vectors__vector__capacity__first__bit_axiom
  (assert (<= 0 amortized_queue__my_vectors__vector__capacity__first__bit))

;; amortized_queue__my_vectors__vector__capacity__last__bit_axiom
  (assert
  (< amortized_queue__my_vectors__vector__capacity__first__bit amortized_queue__my_vectors__vector__capacity__last__bit))

;; amortized_queue__my_vectors__vector__capacity__position_axiom
  (assert (<= 0 amortized_queue__my_vectors__vector__capacity__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content
                                                              a))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_213 Int)
  (temp___is_init_210 Bool) (temp___skip_constant_211 Bool)
  (temp___do_toplevel_212 Bool)) Bool (=>
                                      (or (= temp___is_init_210 true)
                                      (<= 0 1000)) (in_range4
                                      temp___expr_213)))

(declare-fun to_rep (capacity_range) Int)

(declare-fun of_rep (Int) capacity_range)

;; inversion_axiom
  (assert
  (forall ((x capacity_range))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x capacity_range)) (! (in_range4
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(define-fun capacity ((container us_rep)) Int (ite (= (of_int 1) true)
                                              (to_rep
                                              (rec__amortized_queue__my_vectors__vector__capacity
                                              (us_split_discrs1 container)))
                                              1000))

(declare-fun capacity__function_guard (Int us_rep) Bool)

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and (<= result (capacity container)) (dynamic_invariant result true
     false true))) :pattern ((length container)) )))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep1 0)

(declare-fun bool_eq4 (us_rep1 us_rep1) Bool)

(declare-fun user_eq5 (us_rep1 us_rep1) Bool)

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

(declare-fun dummy5 () us_rep1)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content
                                                                   a))

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

(declare-fun model__ (us_rep) us_rep1)

(declare-fun model____function_guard (us_rep1 us_rep) Bool)

(define-fun element ((container us_rep)
  (index1 Int)) Int (get (model__ container) index1))

(declare-fun element__function_guard (Int us_rep Int) Bool)

(declare-sort element_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (element_type element_type) Bool)

(declare-fun dummy6 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_201 Int)
  (temp___is_init_198 Bool) (temp___skip_constant_199 Bool)
  (temp___do_toplevel_200 Bool)) Bool (=>
                                      (or (= temp___is_init_198 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range5 temp___expr_201)))

(declare-fun length1 (us_rep1) Int)

(declare-fun length__function_guard1 (Int us_rep1) Bool)

(define-fun last ((container us_rep1)) Int (+ 0 (length1 container)))

(declare-fun last__function_guard (Int us_rep1) Bool)

(define-fun last_index ((container us_rep)) Int (last (model__ container)))

(declare-fun last_index__function_guard (Int us_rep) Bool)

(declare-fun first_index__function_guard (Int us_rep) Bool)

(define-fun in_range6 ((rec__amortized_queue__my_vectors__vector__capacity1 Int)
  (a us_rep)) Bool (= rec__amortized_queue__my_vectors__vector__capacity1 
  (to_rep
  (rec__amortized_queue__my_vectors__vector__capacity (us_split_discrs1 a)))))

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

(declare-fun amortized_queue__my_vectors__vector__capacity__first__bit1 () Int)

(declare-fun amortized_queue__my_vectors__vector__capacity__last__bit1 () Int)

(declare-fun amortized_queue__my_vectors__vector__capacity__position1 () Int)

;; amortized_queue__my_vectors__vector__capacity__first__bit_axiom
  (assert (<= 0 amortized_queue__my_vectors__vector__capacity__first__bit1))

;; amortized_queue__my_vectors__vector__capacity__last__bit_axiom
  (assert
  (< amortized_queue__my_vectors__vector__capacity__first__bit1 amortized_queue__my_vectors__vector__capacity__last__bit1))

;; amortized_queue__my_vectors__vector__capacity__position_axiom
  (assert (<= 0 amortized_queue__my_vectors__vector__capacity__position1))

(declare-fun dummy7 () us_rep)

(declare-datatypes ()
((constrained_vector__ref
 (mk_constrained_vector__ref (constrained_vector__content us_rep)))))
(define-fun constrained_vector__ref___projection ((a constrained_vector__ref)) us_rep 
  (constrained_vector__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__amortized_queue__queue__front us_rep)(rec__amortized_queue__queue__rear us_rep)))))
(define-fun us_split_fields_Front__projection ((a us_split_fields2)) us_rep 
  (rec__amortized_queue__queue__front a))

(define-fun us_split_fields_Rear__projection ((a us_split_fields2)) us_rep 
  (rec__amortized_queue__queue__rear a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep2 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_3__projection ((a us_rep2)) us_split_fields2 (us_split_fields3
                                                                a))

(declare-fun user_eq7 (us_rep2 us_rep2) Bool)

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

(declare-fun amortized_queue__queue__front__first__bit () Int)

(declare-fun amortized_queue__queue__front__last__bit () Int)

(declare-fun amortized_queue__queue__front__position () Int)

;; amortized_queue__queue__front__first__bit_axiom
  (assert (<= 0 amortized_queue__queue__front__first__bit))

;; amortized_queue__queue__front__last__bit_axiom
  (assert
  (< amortized_queue__queue__front__first__bit amortized_queue__queue__front__last__bit))

;; amortized_queue__queue__front__position_axiom
  (assert (<= 0 amortized_queue__queue__front__position))

(declare-fun amortized_queue__queue__rear__first__bit () Int)

(declare-fun amortized_queue__queue__rear__last__bit () Int)

(declare-fun amortized_queue__queue__rear__position () Int)

;; amortized_queue__queue__rear__first__bit_axiom
  (assert (<= 0 amortized_queue__queue__rear__first__bit))

;; amortized_queue__queue__rear__last__bit_axiom
  (assert
  (< amortized_queue__queue__rear__first__bit amortized_queue__queue__rear__last__bit))

;; amortized_queue__queue__rear__position_axiom
  (assert (<= 0 amortized_queue__queue__rear__position))

(declare-fun dummy8 () us_rep2)

(declare-datatypes ()
((queue__ref (mk_queue__ref (queue__content us_rep2)))))
(define-fun queue__ref___projection ((a queue__ref)) us_rep2 (queue__content
                                                             a))

(declare-fun is_empty (us_rep) Bool)

(declare-fun is_empty__function_guard (Bool us_rep) Bool)

(define-fun dynamic_invariant2 ((temp___expr_360 us_rep2)
  (temp___is_init_357 Bool) (temp___skip_constant_358 Bool)
  (temp___do_toplevel_359 Bool)) Bool (and (in_range6 1000
                                      (rec__amortized_queue__queue__front
                                      (us_split_fields3 temp___expr_360)))
                                      (in_range6 1000
                                      (rec__amortized_queue__queue__rear
                                      (us_split_fields3 temp___expr_360)))))

(define-fun default_initial_assumption ((temp___expr_363 us_rep2)
  (temp___skip_top_level_364 Bool)) Bool (and
                                         (and
                                         (= (to_rep
                                            (rec__amortized_queue__my_vectors__vector__capacity
                                            (us_split_discrs1
                                            (rec__amortized_queue__queue__front
                                            (us_split_fields3
                                            temp___expr_363))))) 1000)
                                         (= (is_empty
                                            (rec__amortized_queue__queue__front
                                            (us_split_fields3
                                            temp___expr_363))) true))
                                         (and
                                         (= (to_rep
                                            (rec__amortized_queue__my_vectors__vector__capacity
                                            (us_split_discrs1
                                            (rec__amortized_queue__queue__rear
                                            (us_split_fields3
                                            temp___expr_363))))) 1000)
                                         (= (is_empty
                                            (rec__amortized_queue__queue__rear
                                            (us_split_fields3
                                            temp___expr_363))) true))))

(declare-fun q () us_rep2)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun m () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_183 Int)
  (temp___is_init_180 Bool) (temp___skip_constant_181 Bool)
  (temp___do_toplevel_182 Bool)) Bool (=>
                                      (or (= temp___is_init_180 true)
                                      (<= 1 1000)) (in_range2
                                      temp___expr_183)))

(define-fun dynamic_invariant5 ((temp___expr_351 us_rep)
  (temp___is_init_348 Bool) (temp___skip_constant_349 Bool)
  (temp___do_toplevel_350 Bool)) Bool (=>
                                      (not (= temp___skip_constant_349 true))
                                      (in_range6 1000 temp___expr_351)))

(define-fun default_initial_assumption1 ((temp___expr_353 us_rep)
  (temp___skip_top_level_354 Bool)) Bool (and
                                         (= (to_rep
                                            (rec__amortized_queue__my_vectors__vector__capacity
                                            (us_split_discrs1
                                            temp___expr_353))) 1000)
                                         (=>
                                         (not
                                         (= temp___skip_top_level_354 true))
                                         (= (is_empty temp___expr_353) true))))

(declare-sort count_type 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (count_type count_type) Bool)

(declare-fun dummy9 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant6 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 2147483647)) (in_range7
                                      temp___expr_141)))

(declare-sort extended_index 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 1001)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq9 (extended_index extended_index) Bool)

(declare-fun dummy10 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant7 ((temp___expr_207 Int)
  (temp___is_init_204 Bool) (temp___skip_constant_205 Bool)
  (temp___do_toplevel_206 Bool)) Bool (=>
                                      (or (= temp___is_init_204 true)
                                      (<= 0 1001)) (in_range8
                                      temp___expr_207)))

(define-fun oeq ((left us_rep1)
  (right us_rep1)) Bool (and (= (length1 left) (length1 right)) (ite 
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

(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (= (user_eq5 a b) (oeq a b)) :pattern ((user_eq5 a b)) )))

(define-fun default_initial_assumption2 ((temp___expr_247 us_rep1)
  (temp___skip_top_level_248 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_248 true))
                                         (= (length1 temp___expr_247) 0)))

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length1 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (= (is_empty container) true) (= (length container) 0)) :pattern (
  (is_empty container)) )))

(define-fun dynamic_invariant8 ((temp___expr_195 Int)
  (temp___is_init_192 Bool) (temp___skip_constant_193 Bool)
  (temp___do_toplevel_194 Bool)) Bool (=>
                                      (or (= temp___is_init_192 true)
                                      (<= 1 1000)) (in_range3
                                      temp___expr_195)))

(declare-sort extended_index1 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq10 (extended_index1 extended_index1) Bool)

(declare-fun dummy11 () extended_index1)

(declare-datatypes ()
((extended_index__ref1
 (mk_extended_index__ref1 (extended_index__content1 extended_index1)))))
(define-fun extended_index__ref_2__projection ((a extended_index__ref1)) extended_index1 
  (extended_index__content1 a))

(define-fun dynamic_invariant9 ((temp___expr_240 Int)
  (temp___is_init_237 Bool) (temp___skip_constant_238 Bool)
  (temp___do_toplevel_239 Bool)) Bool (=>
                                      (or (= temp___is_init_237 true)
                                      (<= 0 1000)) (in_range9
                                      temp___expr_240)))

;; length__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (length1 container)))
     (and (<= (+ 0 result) 1000) (dynamic_invariant6 result true false true))) :pattern (
  (length1 container)) )))

(declare-sort element_type1 0)

(define-fun in_range10 ((x Int)) Bool (and (<= (- 2147483648) x)
                                      (<= x 2147483647)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq11 (element_type1 element_type1) Bool)

(declare-fun dummy12 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_2__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant10 ((temp___expr_234 Int)
  (temp___is_init_231 Bool) (temp___skip_constant_232 Bool)
  (temp___do_toplevel_233 Bool)) Bool (=>
                                      (or (= temp___is_init_231 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range10 temp___expr_234)))

;; get__post_axiom
  (assert
  (forall ((container us_rep1))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant9 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant10 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun i () Int)

(declare-fun o () Int)

(declare-fun o1 () Bool)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun i1 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Bool)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () Int)

(declare-fun o12 () Int)

(declare-fun o13 () Int)

(declare-fun result () Bool)

(declare-fun result1 () Bool)

(declare-fun result2 () Bool)

(declare-fun result3 () Bool)

(declare-fun result4 () Bool)

;; H
  (assert
  (and
  (= 1000 (to_rep
          (rec__amortized_queue__my_vectors__vector__capacity
          (us_split_discrs1
          (rec__amortized_queue__queue__front (us_split_fields3 q))))))
  (= 1000 (to_rep
          (rec__amortized_queue__my_vectors__vector__capacity
          (us_split_discrs1
          (rec__amortized_queue__queue__rear (us_split_fields3 q))))))))

;; H
  (assert
  (and (= o12 (length m)) (and (in_range4 o12) (<= o12 (capacity m)))))

;; H
  (assert
  (and
  (= o10 (length (rec__amortized_queue__queue__rear (us_split_fields3 q))))
  (and (in_range4 o10)
  (<= o10 (capacity (rec__amortized_queue__queue__rear (us_split_fields3 q)))))))

;; H
  (assert
  (and
  (= o11 (length (rec__amortized_queue__queue__front (us_split_fields3 q))))
  (and (in_range4 o11)
  (<= o11 (capacity
          (rec__amortized_queue__queue__front (us_split_fields3 q)))))))

;; H
  (assert (= o13 (+ o11 o10)))

;; H
  (assert (= result2 (ite (= o13 o12) true false)))

;; H
  (assert
  (=> (= result2 true)
  (and (= o9 (length m)) (and (in_range4 o9) (<= o9 (capacity m))))))

;; H
  (assert (=> (= result2 true) (= result1 (ite (<= o9 1000) true false))))

;; H
  (assert (=> (not (= result2 true)) (= result1 false)))

;; H
  (assert
  (=> (= result1 true)
  (and
  (= o7 (length (rec__amortized_queue__queue__rear (us_split_fields3 q))))
  (and (in_range4 o7)
  (<= o7 (capacity (rec__amortized_queue__queue__rear (us_split_fields3 q))))))))

;; H
  (assert (=> (= result1 true) (= o8 (ite (<= i1 o7) true false))))

;; H
  (assert (=> (= result1 true) (= result3 (ite (<= 1 i1) o8 false))))

;; H
  (assert
  (=> (= result1 true)
  (= (= result true)
  (forall ((i2 Int))
  (=>
  (and (<= 1 i2)
  (<= i2 (length (rec__amortized_queue__queue__rear (us_split_fields3 q)))))
  (= (get (model__ m) i2) (get
                          (model__
                          (rec__amortized_queue__queue__rear
                          (us_split_fields3 q)))
                          (+ (- (length
                                (rec__amortized_queue__queue__rear
                                (us_split_fields3 q))) i2) 1))))))))

;; H
  (assert (=> (not (= result1 true)) (= result false)))

;; H
  (assert (= result true))

;; H
  (assert
  (and
  (= o (length (rec__amortized_queue__queue__front (us_split_fields3 q))))
  (and (in_range4 o)
  (<= o (capacity (rec__amortized_queue__queue__front (us_split_fields3 q)))))))

;; H
  (assert (= o1 (ite (<= i o) true false)))

;; H
  (assert (= result4 (ite (<= 1 i) o1 false)))

;; H
  (assert (= result4 true))

;; H
  (assert (and (= o5 i) (in_range3 i)))

;; H
  (assert
  (and
  (= o6 (get
        (model__ (rec__amortized_queue__queue__front (us_split_fields3 q)))
        o5))
  (and (in_range5 o6)
  (= o6 (get
        (model__ (rec__amortized_queue__queue__front (us_split_fields3 q)))
        o5)))))

;; H
  (assert
  (and
  (= o2 (length (rec__amortized_queue__queue__rear (us_split_fields3 q))))
  (and (in_range4 o2)
  (<= o2 (capacity (rec__amortized_queue__queue__rear (us_split_fields3 q)))))))

;; H
  (assert (= o3 (+ i o2)))

;; H
  (assert (and (= o4 o3) (in_range1 o3)))

(assert
;; WP_parameter_def
 ;; File "amortized_queue.ads", line 51, characters 0-0
  (not (in_range3 o4)))
(check-sat)
