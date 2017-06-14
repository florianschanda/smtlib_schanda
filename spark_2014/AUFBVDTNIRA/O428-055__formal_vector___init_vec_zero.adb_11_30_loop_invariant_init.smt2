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

(declare-sort index_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (index_type index_type) Bool)

(declare-fun dummy () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant ((temp___expr_205 Int)
  (temp___is_init_202 Bool) (temp___skip_constant_203 Bool)
  (temp___do_toplevel_204 Bool)) Bool (=>
                                      (or (= temp___is_init_202 true)
                                      (<= 1 1000)) (in_range1
                                      temp___expr_205)))

(declare-sort extended_index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1001)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (extended_index extended_index) Bool)

(declare-fun dummy1 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant1 ((temp___expr_217 Int)
  (temp___is_init_214 Bool) (temp___skip_constant_215 Bool)
  (temp___do_toplevel_216 Bool)) Bool (=>
                                      (or (= temp___is_init_214 true)
                                      (<= 0 1001)) (in_range2
                                      temp___expr_217)))

(declare-sort capacity_range 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (capacity_range capacity_range) Bool)

(declare-fun dummy2 () capacity_range)

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
 (rec__loop_types__vectors__vector__capacity capacity_range)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) capacity_range 
  (rec__loop_types__vectors__vector__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__loop_types__vectors__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type 
  (rec__loop_types__vectors__vector a))

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

(declare-fun loop_types__vectors__vector__capacity__first__bit () Int)

(declare-fun loop_types__vectors__vector__capacity__last__bit () Int)

(declare-fun loop_types__vectors__vector__capacity__position () Int)

;; loop_types__vectors__vector__capacity__first__bit_axiom
  (assert (<= 0 loop_types__vectors__vector__capacity__first__bit))

;; loop_types__vectors__vector__capacity__last__bit_axiom
  (assert
  (< loop_types__vectors__vector__capacity__first__bit loop_types__vectors__vector__capacity__last__bit))

;; loop_types__vectors__vector__capacity__position_axiom
  (assert (<= 0 loop_types__vectors__vector__capacity__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content
                                                              a))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep1 0)

(declare-fun bool_eq3 (us_rep1 us_rep1) Bool)

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

(declare-fun length (us_rep1) Int)

(declare-fun length__function_guard (Int us_rep1) Bool)

(define-fun last ((container us_rep1)) Int (+ 0 (length container)))

(declare-fun last__function_guard (Int us_rep1) Bool)

(declare-fun model__ (us_rep) us_rep1)

(declare-fun model____function_guard (us_rep1 us_rep) Bool)

(define-fun last_index ((container us_rep)) Int (last (model__ container)))

(declare-fun last_index__function_guard (Int us_rep) Bool)

(declare-fun first_index__function_guard (Int us_rep) Bool)

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

(define-fun element ((container us_rep)
  (index Int)) Int (get (model__ container) index))

(declare-fun element__function_guard (Int us_rep Int) Bool)

(declare-sort element_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (element_type element_type) Bool)

(declare-fun dummy5 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_211 Int)
  (temp___is_init_208 Bool) (temp___skip_constant_209 Bool)
  (temp___do_toplevel_210 Bool)) Bool (=>
                                      (or (= temp___is_init_208 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_211)))

(declare-fun length1 (us_rep) Int)

(declare-fun length__function_guard1 (Int us_rep) Bool)

(define-fun equal_except ((left us_rep1) (right us_rep1)
  (position Int)) Bool (and (= (length left) (length right)) (ite (forall
                                                                  ((i Int))
                                                                  (=>
                                                                  (and
                                                                  (<= 1 i)
                                                                  (<= i 
                                                                  (last left)))
                                                                  (=>
                                                                  (not
                                                                  (= i position))
                                                                  (= 
                                                                  (get left
                                                                  i) 
                                                                  (get right
                                                                  i)))))
                                                             true false)))

(declare-fun equal_except__function_guard (Bool us_rep1 us_rep1 Int) Bool)

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

(declare-fun loop_types__vectors__vector__capacity__first__bit1 () Int)

(declare-fun loop_types__vectors__vector__capacity__last__bit1 () Int)

(declare-fun loop_types__vectors__vector__capacity__position1 () Int)

;; loop_types__vectors__vector__capacity__first__bit_axiom
  (assert (<= 0 loop_types__vectors__vector__capacity__first__bit1))

;; loop_types__vectors__vector__capacity__last__bit_axiom
  (assert
  (< loop_types__vectors__vector__capacity__first__bit1 loop_types__vectors__vector__capacity__last__bit1))

;; loop_types__vectors__vector__capacity__position_axiom
  (assert (<= 0 loop_types__vectors__vector__capacity__position1))

(declare-fun dummy6 () us_rep)

(declare-datatypes () ((vec_t__ref (mk_vec_t__ref (vec_t__content us_rep)))))
(define-fun vec_t__ref___projection ((a vec_t__ref)) us_rep (vec_t__content
                                                            a))

(declare-fun v__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun r4b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun r5b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort integer 0)

(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range5 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun first () Int)

(declare-fun last1 () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content integer)))))
(define-fun t6b__ref___projection ((a t6b__ref)) integer (t6b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range5 temp___expr_15)))

(declare-sort count_type 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

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

(define-fun dynamic_invariant4 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 2147483647)) (in_range6
                                      temp___expr_142)))

(define-fun dynamic_invariant5 ((temp___expr_223 Int)
  (temp___is_init_220 Bool) (temp___skip_constant_221 Bool)
  (temp___do_toplevel_222 Bool)) Bool (=>
                                      (or (= temp___is_init_220 true)
                                      (<= 0 1000)) (in_range3
                                      temp___expr_223)))

(declare-fun to_rep1 (capacity_range) Int)

(declare-fun of_rep1 (Int) capacity_range)

;; inversion_axiom
  (assert
  (forall ((x capacity_range))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x capacity_range)) (! (in_range3
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(define-fun capacity ((container us_rep)) Int (ite (= (of_int 1) true)
                                              (to_rep1
                                              (rec__loop_types__vectors__vector__capacity
                                              (us_split_discrs1 container)))
                                              1000))

(declare-fun capacity__function_guard (Int us_rep) Bool)

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length1 container)))
     (and (<= result (capacity container)) (dynamic_invariant5 result true
     false true))) :pattern ((length1 container)) )))

(define-fun oeq ((left us_rep1)
  (right us_rep1)) Bool (and (= (length left) (length right)) (ite (forall
                                                                   ((n Int))
                                                                   (=>
                                                                   (and
                                                                   (<= 1 n)
                                                                   (<= n 
                                                                   (last
                                                                   left)))
                                                                   (= 
                                                                   (get left
                                                                   n) 
                                                                   (get right
                                                                   n))))
                                                              true false)))

(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (= (user_eq4 a b) (oeq a b)) :pattern ((user_eq4 a b)) )))

(define-fun default_initial_assumption ((temp___expr_257 us_rep1)
  (temp___skip_top_level_258 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_258 true))
                                         (= (length temp___expr_257) 0)))

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length (model__ container)) (length1 container)) :pattern ((model__
                                                                    container)) )))

(declare-sort extended_index1 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

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

(define-fun dynamic_invariant6 ((temp___expr_250 Int)
  (temp___is_init_247 Bool) (temp___skip_constant_248 Bool)
  (temp___do_toplevel_249 Bool)) Bool (=>
                                      (or (= temp___is_init_247 true)
                                      (<= 0 1000)) (in_range7
                                      temp___expr_250)))

;; length__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (length container)))
     (and (<= (+ 0 result) 1000) (dynamic_invariant4 result true false true))) :pattern (
  (length container)) )))

(declare-sort element_type1 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

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

(define-fun dynamic_invariant7 ((temp___expr_244 Int)
  (temp___is_init_241 Bool) (temp___skip_constant_242 Bool)
  (temp___do_toplevel_243 Bool)) Bool (=>
                                      (or (= temp___is_init_241 true)
                                      (<= 0 2147483647)) (in_range8
                                      temp___expr_244)))

;; get__post_axiom
  (assert
  (forall ((container us_rep1))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant6 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant7 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun v__split_fields () us_main_type)

(declare-fun j () Int)

(declare-fun init_vec_zero__L_1__R4b__assume () Int)

(declare-fun init_vec_zero__L_1__R5b__assume () Int)

(declare-fun o () Int)

(declare-fun result () Int)

(declare-fun j1 () Int)

(declare-fun loop_types__vectors__replace_element__container__fields () us_main_type)

(declare-fun result1 () us_main_type)

(declare-fun v__split_fields1 () us_main_type)

(define-fun v__split_fields2 () us_split_fields (mk___split_fields
                                                v__split_fields1))

(define-fun loop_types__vectors__replace_element__container__fields1 () us_split_fields 
  (mk___split_fields loop_types__vectors__replace_element__container__fields))

;; H
  (assert
  (and (= init_vec_zero__L_1__R4b__assume 1)
  (and (in_range1 init_vec_zero__L_1__R4b__assume)
  (= init_vec_zero__L_1__R4b__assume 1))))

;; H
  (assert (= init_vec_zero__L_1__R4b__assume r4b))

;; H
  (assert (in_range1 r4b))

;; H
  (assert
  (and
  (= init_vec_zero__L_1__R5b__assume (last
                                     (model__
                                     (mk___rep v__split_discrs
                                     (mk___split_fields v__split_fields)))))
  (and (in_range2 init_vec_zero__L_1__R5b__assume)
  (= init_vec_zero__L_1__R5b__assume (last
                                     (model__
                                     (mk___rep v__split_discrs
                                     (mk___split_fields v__split_fields))))))))

;; H
  (assert (= init_vec_zero__L_1__R5b__assume r5b))

;; H
  (assert (in_range2 r5b))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref j)))

;; H
  (assert (= j1 r4b))

;; H
  (assert (<= r4b j1))

;; H
  (assert (<= j1 r5b))

;; H
  (assert (and (= o j1) (in_range1 j1)))

;; H
  (assert
  (and
  (and
  (= (length1
     (mk___rep v__split_discrs
     loop_types__vectors__replace_element__container__fields1)) (length1
                                                                (mk___rep
                                                                v__split_discrs
                                                                (mk___split_fields
                                                                v__split_fields))))
  (= (get
     (model__
     (mk___rep v__split_discrs
     loop_types__vectors__replace_element__container__fields1)) o) 0))
  (= (equal_except
     (model__ (mk___rep v__split_discrs (mk___split_fields v__split_fields)))
     (model__
     (mk___rep v__split_discrs
     loop_types__vectors__replace_element__container__fields1)) o) true)))

;; H
  (assert
  (= (mk___split_fields__ref (mk___split_fields result1)) (mk___split_fields__ref
                                                          (mk___split_fields
                                                          v__split_fields))))

;; H
  (assert
  (= v__split_fields2 loop_types__vectors__replace_element__container__fields1))

(declare-fun k () Int)

;; H
  (assert (<= 1 k))

;; H
  (assert (<= k j1))

(assert
;; WP_parameter_def
 ;; File "init_vec_zero.adb", line 3, characters 0-0
  (not (= (get (model__ (mk___rep v__split_discrs v__split_fields2)) k) 0)))
(check-sat)
