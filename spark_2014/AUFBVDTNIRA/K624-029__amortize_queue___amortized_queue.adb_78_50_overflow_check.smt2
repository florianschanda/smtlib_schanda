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

(declare-sort index_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index_type index_type) Bool)

(declare-fun dummy1 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(declare-sort extended_index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 1001)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (extended_index extended_index) Bool)

(declare-fun dummy2 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant ((temp___expr_207 Int)
  (temp___is_init_204 Bool) (temp___skip_constant_205 Bool)
  (temp___do_toplevel_206 Bool)) Bool (=>
                                      (or (= temp___is_init_204 true)
                                      (<= 0 1001)) (in_range3
                                      temp___expr_207)))

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

(define-fun dynamic_invariant1 ((temp___expr_213 Int)
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
     (and (<= result (capacity container)) (dynamic_invariant1 result true
     false true))) :pattern ((length container)) )))

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

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

(declare-fun length1 (us_rep1) Int)

(declare-fun length__function_guard1 (Int us_rep1) Bool)

(define-fun last ((container us_rep1)) Int (+ 0 (length1 container)))

(declare-fun last__function_guard (Int us_rep1) Bool)

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

(define-fun oeq1 ((left us_rep1)
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

(declare-fun oeq__function_guard1 (Bool us_rep1 us_rep1) Bool)

(declare-fun model__ (us_rep) us_rep1)

(declare-fun model____function_guard (us_rep1 us_rep) Bool)

;; oeq__post_axiom
  (assert
  (forall ((left us_rep) (right us_rep))
  (! (= (= (oeq left right) true)
     (= (oeq1 (model__ left) (model__ right)) true)) :pattern ((oeq left
                                                               right)) )))

(define-fun last_index ((container us_rep)) Int (last (model__ container)))

(declare-fun last_index__function_guard (Int us_rep) Bool)

(define-fun element ((container us_rep)
  (index Int)) Int (get (model__ container) index))

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

(define-fun dynamic_invariant2 ((temp___expr_201 Int)
  (temp___is_init_198 Bool) (temp___skip_constant_199 Bool)
  (temp___do_toplevel_200 Bool)) Bool (=>
                                      (or (= temp___is_init_198 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range5 temp___expr_201)))

(declare-fun first_index__function_guard (Int us_rep) Bool)

(define-fun olt ((left us_rep1)
  (right us_rep1)) Bool (and (< (length1 left) (length1 right)) (ite 
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

(declare-fun olt__function_guard (Bool us_rep1 us_rep1) Bool)

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

(declare-fun is_empty (us_rep) Bool)

(declare-fun is_empty__function_guard (Bool us_rep) Bool)

(define-fun dynamic_invariant3 ((temp___expr_351 us_rep)
  (temp___is_init_348 Bool) (temp___skip_constant_349 Bool)
  (temp___do_toplevel_350 Bool)) Bool (=>
                                      (not (= temp___skip_constant_349 true))
                                      (in_range6 1000 temp___expr_351)))

(define-fun default_initial_assumption ((temp___expr_353 us_rep)
  (temp___skip_top_level_354 Bool)) Bool (and
                                         (= (to_rep
                                            (rec__amortized_queue__my_vectors__vector__capacity
                                            (us_split_discrs1
                                            temp___expr_353))) 1000)
                                         (=>
                                         (not
                                         (= temp___skip_top_level_354 true))
                                         (= (is_empty temp___expr_353) true))))

(declare-fun front__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun rear__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun ofront () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun orear () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun r51b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun last1 () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes () ((t52b__ref (mk_t52b__ref (t52b__content integer)))))
(define-fun t52b__ref___projection ((a t52b__ref)) integer (t52b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-sort count_type 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (count_type count_type) Bool)

(declare-fun dummy9 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant5 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 2147483647)) (in_range7
                                      temp___expr_141)))

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (= (user_eq5 a b) (oeq1 a b)) :pattern ((user_eq5 a b)) )))

(define-fun default_initial_assumption1 ((temp___expr_247 us_rep1)
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

(define-fun dynamic_invariant6 ((temp___expr_195 Int)
  (temp___is_init_192 Bool) (temp___skip_constant_193 Bool)
  (temp___do_toplevel_194 Bool)) Bool (=>
                                      (or (= temp___is_init_192 true)
                                      (<= 1 1000)) (in_range2
                                      temp___expr_195)))

(declare-sort extended_index1 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (extended_index1 extended_index1) Bool)

(declare-fun dummy10 () extended_index1)

(declare-datatypes ()
((extended_index__ref1
 (mk_extended_index__ref1 (extended_index__content1 extended_index1)))))
(define-fun extended_index__ref_2__projection ((a extended_index__ref1)) extended_index1 
  (extended_index__content1 a))

(define-fun dynamic_invariant7 ((temp___expr_240 Int)
  (temp___is_init_237 Bool) (temp___skip_constant_238 Bool)
  (temp___do_toplevel_239 Bool)) Bool (=>
                                      (or (= temp___is_init_237 true)
                                      (<= 0 1000)) (in_range8
                                      temp___expr_240)))

;; length__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (length1 container)))
     (and (<= (+ 0 result) 1000) (dynamic_invariant5 result true false true))) :pattern (
  (length1 container)) )))

(declare-sort element_type1 0)

(define-fun in_range9 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq10 (element_type1 element_type1) Bool)

(declare-fun dummy11 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_2__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant8 ((temp___expr_234 Int)
  (temp___is_init_231 Bool) (temp___skip_constant_232 Bool)
  (temp___do_toplevel_233 Bool)) Bool (=>
                                      (or (= temp___is_init_231 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range9 temp___expr_234)))

;; get__post_axiom
  (assert
  (forall ((container us_rep1))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant7 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant8 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun front__split_fields () us_main_type)

(declare-fun rear__split_fields () us_main_type)

(declare-fun idx () Int)

(declare-fun amortized_queue__reverse_insert__L_5__R51b__assume () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun i () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Bool)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun result () Int)

(declare-fun idx1 () Int)

(declare-fun amortized_queue__my_vectors__append__2__container__fields () us_main_type)

(declare-fun result1 () us_main_type)

(declare-fun front__split_fields1 () us_main_type)

(declare-fun front__split_fields2 () us_main_type)

(declare-fun idx2 () Int)

(declare-fun result2 () Bool)

(define-fun front__split_fields3 () us_split_fields (mk___split_fields
                                                    front__split_fields2))

(define-fun amortized_queue__my_vectors__append__2__container__fields1 () us_split_fields 
  (mk___split_fields
  amortized_queue__my_vectors__append__2__container__fields))

;; H
  (assert
  (= 1000 (to_rep
          (rec__amortized_queue__my_vectors__vector__capacity
          front__split_discrs))))

;; H
  (assert
  (= 1000 (to_rep
          (rec__amortized_queue__my_vectors__vector__capacity
          rear__split_discrs))))

;; H
  (assert
  (= 1000 (to_rep
          (rec__amortized_queue__my_vectors__vector__capacity
          (us_split_discrs1 ofront)))))

;; H
  (assert
  (= 1000 (to_rep
          (rec__amortized_queue__my_vectors__vector__capacity
          (us_split_discrs1 orear)))))

;; H
  (assert
  (and
  (< (length
     (mk___rep rear__split_discrs (mk___split_fields rear__split_fields))) (- 1000 
  (length
  (mk___rep front__split_discrs (mk___split_fields front__split_fields)))))
  (and
  (= (oeq
     (mk___rep front__split_discrs (mk___split_fields front__split_fields))
     ofront) true)
  (= (oeq
     (mk___rep rear__split_discrs (mk___split_fields rear__split_fields))
     orear) true))))

;; H
  (assert
  (and
  (= amortized_queue__reverse_insert__L_5__R51b__assume (last
                                                        (model__
                                                        (mk___rep
                                                        rear__split_discrs
                                                        (mk___split_fields
                                                        rear__split_fields)))))
  (and (in_range3 amortized_queue__reverse_insert__L_5__R51b__assume)
  (= amortized_queue__reverse_insert__L_5__R51b__assume (last
                                                        (model__
                                                        (mk___rep
                                                        rear__split_discrs
                                                        (mk___split_fields
                                                        rear__split_fields))))))))

;; H
  (assert (= amortized_queue__reverse_insert__L_5__R51b__assume r51b))

;; H
  (assert (in_range3 r51b))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref idx)))

;; H
  (assert (= idx1 r51b))

;; H
  (assert (<= 1 idx1))

;; H
  (assert (<= idx1 r51b))

;; H
  (assert (and (= o idx1) (in_range2 idx1)))

;; H
  (assert
  (and
  (= o1 (get
        (model__
        (mk___rep rear__split_discrs (mk___split_fields rear__split_fields)))
        o))
  (and (in_range5 o1)
  (= o1 (get
        (model__
        (mk___rep rear__split_discrs (mk___split_fields rear__split_fields)))
        o)))))

;; H
  (assert
  (and
  (and
  (= (length
     (mk___rep front__split_discrs
     amortized_queue__my_vectors__append__2__container__fields1)) (+ 
  (length
  (mk___rep front__split_discrs (mk___split_fields front__split_fields))) 1))
  (= (olt
     (model__
     (mk___rep front__split_discrs (mk___split_fields front__split_fields)))
     (model__
     (mk___rep front__split_discrs
     amortized_queue__my_vectors__append__2__container__fields1))) true))
  (= (get
     (model__
     (mk___rep front__split_discrs
     amortized_queue__my_vectors__append__2__container__fields1))
     (+ (last
        (model__
        (mk___rep front__split_discrs
        (mk___split_fields front__split_fields)))) 1)) o1)))

;; H
  (assert
  (= (mk___split_fields__ref (mk___split_fields result1)) (mk___split_fields__ref
                                                          (mk___split_fields
                                                          front__split_fields))))

;; H
  (assert
  (= (mk___split_fields front__split_fields1) amortized_queue__my_vectors__append__2__container__fields1))

;; H
  (assert
  (= (length (mk___rep front__split_discrs front__split_fields3)) (+ (- (+ 
  (length ofront) (last
                  (model__
                  (mk___rep rear__split_discrs
                  (mk___split_fields rear__split_fields))))) idx2) 1)))

;; H
  (assert
  (forall ((i1 Int))
  (=> (and (<= 1 i1) (<= i1 (last (model__ ofront))))
  (= (get (model__ (mk___rep front__split_discrs front__split_fields3)) i1) 
  (get (model__ ofront) i1)))))

;; H
  (assert
  (forall ((i1 Int))
  (=>
  (and (<= idx2 i1)
  (<= i1 (last
         (model__
         (mk___rep rear__split_discrs (mk___split_fields rear__split_fields))))))
  (= (get (model__ (mk___rep front__split_discrs front__split_fields3))
     (- (+ (last
           (model__ (mk___rep front__split_discrs front__split_fields3))) 
     idx2) i1)) (get
                (model__
                (mk___rep rear__split_discrs
                (mk___split_fields rear__split_fields))) i1)))))

;; H
  (assert
  (and (=> (<= 1 r51b) (dynamic_property 1 r51b idx2))
  (and (<= 1 idx2) (<= idx2 r51b))))

;; H
  (assert
  (and
  (= o2 (last
        (model__
        (mk___rep rear__split_discrs (mk___split_fields rear__split_fields)))))
  (and (in_range3 o2)
  (= o2 (last
        (model__
        (mk___rep rear__split_discrs (mk___split_fields rear__split_fields))))))))

;; H
  (assert (= o3 (ite (<= i o2) true false)))

;; H
  (assert (= result2 (ite (<= idx2 i) o3 false)))

;; H
  (assert (= result2 true))

;; H
  (assert (and (= o6 i) (in_range2 i)))

;; H
  (assert
  (and
  (= o7 (get
        (model__
        (mk___rep rear__split_discrs (mk___split_fields rear__split_fields)))
        o6))
  (and (in_range5 o7)
  (= o7 (get
        (model__
        (mk___rep rear__split_discrs (mk___split_fields rear__split_fields)))
        o6)))))

;; H
  (assert
  (and
  (= o4 (last (model__ (mk___rep front__split_discrs front__split_fields3))))
  (and (in_range3 o4)
  (= o4 (last (model__ (mk___rep front__split_discrs front__split_fields3)))))))

;; H
  (assert (= o5 (+ o4 idx2)))

(assert
;; WP_parameter_def
 ;; File "amortized_queue.ads", line 41, characters 0-0
  (not (in_range1 o5)))
(check-sat)
