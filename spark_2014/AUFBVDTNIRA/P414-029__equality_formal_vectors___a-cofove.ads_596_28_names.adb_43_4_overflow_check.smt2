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

(declare-sort tcount_typeB 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy () tcount_typeB)

(declare-datatypes ()
((tcount_typeB__ref
 (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB 
  (tcount_typeB__content a))

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

(define-fun dynamic_invariant ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_142)))

(declare-sort capacity_range 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (capacity_range capacity_range) Bool)

(declare-fun dummy2 () capacity_range)

(declare-datatypes ()
((capacity_range__ref
 (mk_capacity_range__ref (capacity_range__content capacity_range)))))
(define-fun capacity_range__ref_2__projection ((a capacity_range__ref)) capacity_range 
  (capacity_range__content a))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__names__entry_tables__vector__capacity capacity_range)))))
(define-fun us_split_discrs_2__projection ((a us_split_discrs)) capacity_range 
  (rec__names__entry_tables__vector__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref_2__projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__names__entry_tables__vector us_main_type)))))
(define-fun us_split_fields_Vector2__projection ((a us_split_fields)) us_main_type 
  (rec__names__entry_tables__vector a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep_4__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                              a))

(define-fun us_rep_5__projection ((a us_rep)) us_split_fields (us_split_fields1
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

(declare-fun names__entry_tables__vector__capacity__first__bit () Int)

(declare-fun names__entry_tables__vector__capacity__last__bit () Int)

(declare-fun names__entry_tables__vector__capacity__position () Int)

;; names__entry_tables__vector__capacity__first__bit_axiom
  (assert (<= 0 names__entry_tables__vector__capacity__first__bit))

;; names__entry_tables__vector__capacity__last__bit_axiom
  (assert
  (< names__entry_tables__vector__capacity__first__bit names__entry_tables__vector__capacity__last__bit))

;; names__entry_tables__vector__capacity__position_axiom
  (assert (<= 0 names__entry_tables__vector__capacity__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref_2__projection ((a vector__ref)) us_rep (vector__content
                                                               a))

(declare-sort extended_index 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (extended_index extended_index) Bool)

(declare-fun dummy4 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref_3__projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant1 ((temp___expr_353 Int)
  (temp___is_init_350 Bool) (temp___skip_constant_351 Bool)
  (temp___do_toplevel_352 Bool)) Bool (=>
                                      (or (= temp___is_init_350 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_353)))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant2 ((temp___expr_359 Int)
  (temp___is_init_356 Bool) (temp___skip_constant_357 Bool)
  (temp___do_toplevel_358 Bool)) Bool (=>
                                      (or (= temp___is_init_356 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_359)))

(declare-fun to_rep (capacity_range) Int)

(declare-fun of_rep (Int) capacity_range)

;; inversion_axiom
  (assert
  (forall ((x capacity_range))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x capacity_range)) (! (in_range3
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(define-fun capacity ((container us_rep)) Int (ite (= (of_int 0) true)
                                              (to_rep
                                              (rec__names__entry_tables__vector__capacity
                                              (us_split_discrs1 container)))
                                              2147483647))

(declare-fun capacity__function_guard (Int us_rep) Bool)

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and (<= result (capacity container)) (dynamic_invariant2 result true
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
(define-fun sequence__ref_2__projection ((a sequence__ref)) us_rep1 (sequence__content
                                                                    a))

(declare-fun length1 (us_rep1) Int)

(declare-fun length__function_guard1 (Int us_rep1) Bool)

(define-fun last ((container us_rep1)) Int (+ 0 (length1 container)))

(declare-fun last__function_guard (Int us_rep1) Bool)

(declare-fun model__ (us_rep) us_rep1)

(declare-fun model____function_guard (us_rep1 us_rep) Bool)

(define-fun last_index ((container us_rep)) Int (last (model__ container)))

(declare-fun last_index__function_guard (Int us_rep) Bool)

(declare-fun first_index__function_guard (Int us_rep) Bool)

(declare-sort index_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (index_type index_type) Bool)

(declare-fun dummy6 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref_3__projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant3 ((temp___expr_338 Int)
  (temp___is_init_335 Bool) (temp___skip_constant_336 Bool)
  (temp___do_toplevel_337 Bool)) Bool (=>
                                      (or (= temp___is_init_335 true)
                                      (<= 1 2147483647)) (in_range5
                                      temp___expr_338)))

(declare-fun container__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun index () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun count () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort positive 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (positive positive) Bool)

(declare-fun dummy7 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant4 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range6
                                     temp___expr_39)))

(declare-sort char_table_index 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 2147483646)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (char_table_index char_table_index) Bool)

(declare-fun dummy8 () char_table_index)

(declare-datatypes ()
((char_table_index__ref
 (mk_char_table_index__ref (char_table_index__content char_table_index)))))
(define-fun char_table_index__ref___projection ((a char_table_index__ref)) char_table_index 
  (char_table_index__content a))

(define-fun dynamic_invariant5 ((temp___expr_260 Int)
  (temp___is_init_257 Bool) (temp___skip_constant_258 Bool)
  (temp___do_toplevel_259 Bool)) Bool (=>
                                      (or (= temp___is_init_257 true)
                                      (<= 0 2147483646)) (in_range7
                                      temp___expr_260)))

(declare-fun to_rep1 (positive) Int)

(declare-fun of_rep1 (Int) positive)

;; inversion_axiom
  (assert
  (forall ((x positive))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x positive)) (! (in_range6 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range6 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort name_id 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (name_id name_id) Bool)

(declare-fun dummy9 () name_id)

(declare-datatypes ()
((name_id__ref (mk_name_id__ref (name_id__content name_id)))))
(define-fun name_id__ref___projection ((a name_id__ref)) name_id (name_id__content
                                                                 a))

(declare-fun to_rep2 (name_id) Int)

(declare-fun of_rep2 (Int) name_id)

;; inversion_axiom
  (assert
  (forall ((x name_id))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x name_id)) (! (in_range8 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range8 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-fun to_rep3 (char_table_index) Int)

(declare-fun of_rep3 (Int) char_table_index)

;; inversion_axiom
  (assert
  (forall ((x char_table_index))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x char_table_index)) (! (in_range7
  (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range7 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__names__name_entry__table_index char_table_index)(rec__names__name_entry__length positive)(rec__names__name_entry__next_hash name_id)))))
(define-fun us_split_fields_Table_Index__projection ((a us_split_fields2)) char_table_index 
  (rec__names__name_entry__table_index a))

(define-fun us_split_fields_Length__projection ((a us_split_fields2)) positive 
  (rec__names__name_entry__length a))

(define-fun us_split_fields_Next_Hash__projection ((a us_split_fields2)) name_id 
  (rec__names__name_entry__next_hash a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep2 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_3__projection ((a us_rep2)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq9 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (and
                         (= (to_rep3
                            (rec__names__name_entry__table_index
                            (us_split_fields3 a))) (to_rep3
                                                   (rec__names__name_entry__table_index
                                                   (us_split_fields3 b))))
                         (= (to_rep1
                            (rec__names__name_entry__length
                            (us_split_fields3 a))) (to_rep1
                                                   (rec__names__name_entry__length
                                                   (us_split_fields3 b)))))
                         (= (to_rep2
                            (rec__names__name_entry__next_hash
                            (us_split_fields3 a))) (to_rep2
                                                   (rec__names__name_entry__next_hash
                                                   (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq10 (us_rep2 us_rep2) Bool)

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

(declare-fun names__name_entry__table_index__first__bit () Int)

(declare-fun names__name_entry__table_index__last__bit () Int)

(declare-fun names__name_entry__table_index__position () Int)

;; names__name_entry__table_index__first__bit_axiom
  (assert (<= 0 names__name_entry__table_index__first__bit))

;; names__name_entry__table_index__last__bit_axiom
  (assert
  (< names__name_entry__table_index__first__bit names__name_entry__table_index__last__bit))

;; names__name_entry__table_index__position_axiom
  (assert (<= 0 names__name_entry__table_index__position))

(declare-fun names__name_entry__length__first__bit () Int)

(declare-fun names__name_entry__length__last__bit () Int)

(declare-fun names__name_entry__length__position () Int)

;; names__name_entry__length__first__bit_axiom
  (assert (<= 0 names__name_entry__length__first__bit))

;; names__name_entry__length__last__bit_axiom
  (assert
  (< names__name_entry__length__first__bit names__name_entry__length__last__bit))

;; names__name_entry__length__position_axiom
  (assert (<= 0 names__name_entry__length__position))

(declare-fun names__name_entry__next_hash__first__bit () Int)

(declare-fun names__name_entry__next_hash__last__bit () Int)

(declare-fun names__name_entry__next_hash__position () Int)

;; names__name_entry__next_hash__first__bit_axiom
  (assert (<= 0 names__name_entry__next_hash__first__bit))

;; names__name_entry__next_hash__last__bit_axiom
  (assert
  (< names__name_entry__next_hash__first__bit names__name_entry__next_hash__last__bit))

;; names__name_entry__next_hash__position_axiom
  (assert (<= 0 names__name_entry__next_hash__position))

(declare-fun dummy10 () us_rep2)

(declare-datatypes ()
((name_entry__ref (mk_name_entry__ref (name_entry__content us_rep2)))))
(define-fun name_entry__ref___projection ((a name_entry__ref)) us_rep2 
  (name_entry__content a))

(define-fun dynamic_invariant6 ((temp___expr_180 Int)
  (temp___is_init_177 Bool) (temp___skip_constant_178 Bool)
  (temp___do_toplevel_179 Bool)) Bool (=>
                                      (or (= temp___is_init_177 true)
                                      (<= 0 2147483647)) (in_range8
                                      temp___expr_180)))

(declare-datatypes ()
((element_type__ref (mk_element_type__ref (element_type__content us_rep2)))))
(define-fun element_type__ref_4__projection ((a element_type__ref)) us_rep2 
  (element_type__content a))

(declare-fun get (us_rep1 Int) us_rep2)

(declare-fun get__function_guard (us_rep2 us_rep1 Int) Bool)

(define-fun oeq ((left us_rep1)
  (right us_rep1)) Bool (and (= (length1 left) (length1 right)) (ite 
                                                                (forall
                                                                ((n Int))
                                                                (=>
                                                                (and (<= 1 n)
                                                                (<= n 
                                                                (last left)))
                                                                (= (bool_eq9
                                                                   (get left
                                                                   n)
                                                                   (get right
                                                                   n)) true)))
                                                                true false)))

(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (= (user_eq5 a b) (oeq a b)) :pattern ((user_eq5 a b)) )))

(define-fun default_initial_assumption ((temp___expr_392 us_rep1)
  (temp___skip_top_level_393 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_393 true))
                                         (= (length1 temp___expr_392) 0)))

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length1 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

(declare-sort extended_index1 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq11 (extended_index1 extended_index1) Bool)

(declare-fun dummy11 () extended_index1)

(declare-datatypes ()
((extended_index__ref1
 (mk_extended_index__ref1 (extended_index__content1 extended_index1)))))
(define-fun extended_index__ref_4__projection ((a extended_index__ref1)) extended_index1 
  (extended_index__content1 a))

(define-fun dynamic_invariant7 ((temp___expr_385 Int)
  (temp___is_init_382 Bool) (temp___skip_constant_383 Bool)
  (temp___do_toplevel_384 Bool)) Bool (=>
                                      (or (= temp___is_init_382 true)
                                      (<= 0 2147483647)) (in_range9
                                      temp___expr_385)))

;; length__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (length1 container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false
     true))) :pattern ((length1 container)) )))

;; get__post_axiom
  (assert true)

(declare-fun container__split_fields () us_main_type)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

;; H
  (assert (in_range4 index))

;; H
  (assert (in_range2 count))

;; H
  (assert
  (and (<= 1 index)
  (<= index (last
            (model__
            (mk___rep container__split_discrs
            (mk___split_fields container__split_fields)))))))

;; H
  (assert (and (= o2 (- index 1)) (in_range2 (- index 1))))

;; H
  (assert
  (and
  (= o (length
       (mk___rep container__split_discrs
       (mk___split_fields container__split_fields))))
  (and (in_range3 o)
  (<= o (capacity
        (mk___rep container__split_discrs
        (mk___split_fields container__split_fields)))))))

;; H
  (assert (= o1 (- o count)))

(assert
;; WP_parameter_def
 ;; File "a-cofove.ads", line 549, characters 0-0
  (not (in_range1 o1)))
(check-sat)
