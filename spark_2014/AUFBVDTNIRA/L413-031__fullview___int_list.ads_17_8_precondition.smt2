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

(declare-sort my_int 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (my_int my_int) Bool)

(declare-fun dummy2 () my_int)

(declare-datatypes ()
((my_int__ref (mk_my_int__ref (my_int__content my_int)))))
(define-fun my_int__ref___projection ((a my_int__ref)) my_int (my_int__content
                                                              a))

(define-fun dynamic_invariant ((temp___expr_183 Int)
  (temp___is_init_180 Bool) (temp___skip_constant_181 Bool)
  (temp___do_toplevel_182 Bool)) Bool (=>
                                      (or (= temp___is_init_180 true)
                                      (<= 1 100)) (in_range3
                                      temp___expr_183)))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__int_list__my_lists__list__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type 
  (rec__int_list__my_lists__list__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__int_list__my_lists__list us_main_type)))))
(define-fun us_split_fields_List__projection ((a us_split_fields)) us_main_type 
  (rec__int_list__my_lists__list a))

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

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__int_list__my_lists__list__capacity
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__int_list__my_lists__list__capacity
                                                  (us_split_discrs1 b))))
                        (= (us_main_eq
                           (rec__int_list__my_lists__list
                           (us_split_fields1 a))
                           (rec__int_list__my_lists__list
                           (us_split_fields1 b))) true))
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

(declare-fun int_list__my_lists__list__capacity__first__bit () Int)

(declare-fun int_list__my_lists__list__capacity__last__bit () Int)

(declare-fun int_list__my_lists__list__capacity__position () Int)

;; int_list__my_lists__list__capacity__first__bit_axiom
  (assert (<= 0 int_list__my_lists__list__capacity__first__bit))

;; int_list__my_lists__list__capacity__last__bit_axiom
  (assert
  (< int_list__my_lists__list__capacity__first__bit int_list__my_lists__list__capacity__last__bit))

;; int_list__my_lists__list__capacity__position_axiom
  (assert (<= 0 int_list__my_lists__list__capacity__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((list__ref (mk_list__ref (list__content us_rep)))))
(define-fun list__ref___projection ((a list__ref)) us_rep (list__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__int_list__my_lists__cursor__node count_type)))))
(define-fun us_split_fields_Node__projection ((a us_split_fields2)) count_type 
  (rec__int_list__my_lists__cursor__node a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq4 ((a us_rep1)
  (b us_rep1)) Bool (ite (= (to_rep
                            (rec__int_list__my_lists__cursor__node
                            (us_split_fields3 a))) (to_rep
                                                   (rec__int_list__my_lists__cursor__node
                                                   (us_split_fields3 b))))
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

(declare-fun int_list__my_lists__cursor__node__first__bit () Int)

(declare-fun int_list__my_lists__cursor__node__last__bit () Int)

(declare-fun int_list__my_lists__cursor__node__position () Int)

;; int_list__my_lists__cursor__node__first__bit_axiom
  (assert (<= 0 int_list__my_lists__cursor__node__first__bit))

;; int_list__my_lists__cursor__node__last__bit_axiom
  (assert
  (< int_list__my_lists__cursor__node__first__bit int_list__my_lists__cursor__node__last__bit))

;; int_list__my_lists__cursor__node__position_axiom
  (assert (<= 0 int_list__my_lists__cursor__node__position))

(declare-fun dummy4 () us_rep1)

(declare-datatypes ()
((cursor__ref (mk_cursor__ref (cursor__content us_rep1)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep1 (cursor__content
                                                               a))

(define-fun default_initial_assumption ((temp___expr_201 us_rep1)
  (temp___skip_top_level_202 Bool)) Bool (= (to_rep
                                            (rec__int_list__my_lists__cursor__node
                                            (us_split_fields3
                                            temp___expr_201))) 0))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant1 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_141)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep
                (rec__int_list__my_lists__list__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant1 result true false true))) :pattern ((length
                                                             container)) )))

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

(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep2)))))
(define-fun map__ref___projection ((a map__ref)) us_rep2 (map__content a))

(declare-datatypes ()
((key_type__ref (mk_key_type__ref (key_type__content us_rep1)))))
(define-fun key_type__ref___projection ((a key_type__ref)) us_rep1 (key_type__content
                                                                   a))

(declare-fun has_key (us_rep2 us_rep1) Bool)

(declare-fun has_key__function_guard (Bool us_rep2 us_rep1) Bool)

(declare-fun positions (us_rep) us_rep2)

(declare-fun positions__function_guard (us_rep2 us_rep) Bool)

(define-fun has_element ((container us_rep)
  (position us_rep1)) Bool (has_key (positions container) position))

(declare-fun has_element__function_guard (Bool us_rep us_rep1) Bool)

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

(declare-fun get1 (us_rep2 us_rep1) Int)

(declare-fun get__function_guard1 (Int us_rep2 us_rep1) Bool)

(declare-fun model__ (us_rep) us_rep3)

(declare-fun model____function_guard (us_rep3 us_rep) Bool)

(define-fun element ((container us_rep)
  (position us_rep1)) Int (get (model__ container)
                          (get1 (positions container) position)))

(declare-fun element__function_guard (Int us_rep us_rep1) Bool)

(declare-sort element_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq7 (element_type element_type) Bool)

(declare-fun dummy7 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_189 Int)
  (temp___is_init_186 Bool) (temp___skip_constant_187 Bool)
  (temp___do_toplevel_188 Bool)) Bool (=>
                                      (or (= temp___is_init_186 true)
                                      (<= 1 100)) (in_range4
                                      temp___expr_189)))

(define-fun range_shifted ((left us_rep3) (right us_rep3) (fst Int) (lst Int)
  (offset Int)) Bool (and (ite (forall ((i Int))
                               (=> (and (<= fst i) (<= i lst))
                               (= (get left i) (get right (+ i offset)))))
                          true false) (ite (forall ((i Int))
                                           (=>
                                           (and (<= (+ fst offset) i)
                                           (<= i (+ lst offset)))
                                           (= (get left (- i offset)) 
                                           (get right i))))
                                      true false)))

(declare-fun range_shifted__function_guard (Bool us_rep3 us_rep3 Int Int
  Int) Bool)

(declare-fun p_positions_shifted (us_rep2 us_rep2 Int Int) Bool)

(declare-fun p_positions_shifted__function_guard (Bool us_rep2 us_rep2 Int
  Int) Bool)

(declare-fun first (us_rep) us_rep1)

(declare-fun first__function_guard (us_rep1 us_rep) Bool)

(declare-fun no_element () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

;; first__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (first container)))
     (ite (= (length container) 0) (= (bool_eq4 result no_element) true)
     (and (= (has_element container result) true)
     (= (get1 (positions container) result) 1)))) :pattern ((first container)) )))

(declare-fun l__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

;; no_element__def_axiom
  (assert (= no_element (mk___rep1 (mk___split_fields1 (of_rep 0)))))

(declare-sort positive_count_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq8 (positive_count_type positive_count_type) Bool)

(declare-fun dummy8 () positive_count_type)

(declare-datatypes ()
((positive_count_type__ref
 (mk_positive_count_type__ref
 (positive_count_type__content positive_count_type)))))
(define-fun positive_count_type__ref___projection ((a positive_count_type__ref)) positive_count_type 
  (positive_count_type__content a))

(define-fun dynamic_invariant3 ((temp___expr_208 Int)
  (temp___is_init_205 Bool) (temp___skip_constant_206 Bool)
  (temp___do_toplevel_207 Bool)) Bool (=>
                                      (or (= temp___is_init_205 true)
                                      (<= 1 2147483647)) (in_range5
                                      temp___expr_208)))

(declare-fun length1 (us_rep2) Int)

(declare-fun length__function_guard1 (Int us_rep2) Bool)

(declare-fun is_empty (us_rep2) Bool)

(declare-fun is_empty__function_guard (Bool us_rep2) Bool)

(define-fun default_initial_assumption1 ((temp___expr_252 us_rep2)
  (temp___skip_top_level_253 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_253 true))
                                         (and
                                         (= (is_empty temp___expr_252) true)
                                         (= (length1 temp___expr_252) 0))))

(declare-fun keys_included (us_rep2 us_rep2) Bool)

(declare-fun keys_included__function_guard (Bool us_rep2 us_rep2) Bool)

(define-fun default_initial_assumption2 ((temp___expr_240 us_rep1)
  (temp___skip_top_level_241 Bool)) Bool (= (to_rep
                                            (rec__int_list__my_lists__cursor__node
                                            (us_split_fields3
                                            temp___expr_240))) 0))

;; p_positions_shifted__post_axiom
  (assert
  (forall ((small us_rep2) (big us_rep2))
  (forall ((cut Int) (count Int))
  (! (=>
     (and (dynamic_invariant3 cut true true true) (dynamic_invariant1 count
     true true true))
     (= (= (p_positions_shifted small big cut count) true)
     (and
     (and (= (keys_included small big) true)
     (forall ((i1 us_rep1))
     (=> (= (has_key small i1) true)
     (ite (< (get1 small i1) cut) (= (get1 big i1) (get1 small i1))
     (= (- (get1 big i1) count) (get1 small i1))))))
     (forall ((i1 us_rep1))
     (=> (= (has_key big i1) true)
     (or (= (has_key small i1) true)
     (and (<= (- cut count) (- (get1 big i1) count))
     (<= (- (get1 big i1) count) (- cut 1))))))))) :pattern ((p_positions_shifted
                                                             small big cut
                                                             count)) ))))

(declare-fun length2 (us_rep3) Int)

(declare-fun length__function_guard2 (Int us_rep3) Bool)

(define-fun last ((container us_rep3)) Int (+ 0 (length2 container)))

(declare-fun last__function_guard (Int us_rep3) Bool)

(define-fun oeq ((left us_rep3)
  (right us_rep3)) Bool (and (= (length2 left) (length2 right)) (ite 
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

(declare-fun oeq__function_guard (Bool us_rep3 us_rep3) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep3) (b us_rep3))
  (! (= (user_eq6 a b) (oeq a b)) :pattern ((user_eq6 a b)) )))

(define-fun default_initial_assumption3 ((temp___expr_233 us_rep3)
  (temp___skip_top_level_234 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_234 true))
                                         (= (length2 temp___expr_233) 0)))

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length2 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

;; positions__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (positions container)))
     (and (not (= (has_key result no_element) true))
     (forall ((i1 us_rep1))
     (=> (= (has_key result i1) true)
     (and
     (and (<= 1 (get1 result i1)) (<= (get1 result i1) (length container)))
     (forall ((j us_rep1))
     (=> (= (has_key result j) true)
     (=> (= (get1 result i1) (get1 result j)) (= (bool_eq4 i1 j) true))))))))) :pattern (
  (positions container)) )))

(declare-sort extended_index 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq9 (extended_index extended_index) Bool)

(declare-fun dummy9 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant4 ((temp___expr_226 Int)
  (temp___is_init_223 Bool) (temp___skip_constant_224 Bool)
  (temp___do_toplevel_225 Bool)) Bool (=>
                                      (or (= temp___is_init_223 true)
                                      (<= 0 2147483647)) (in_range6
                                      temp___expr_226)))

;; length__post_axiom
  (assert
  (forall ((container us_rep3))
  (! (let ((result (length2 container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant1 result true false
     true))) :pattern ((length2 container)) )))

(declare-sort element_type1 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq10 (element_type1 element_type1) Bool)

(declare-fun dummy10 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_2__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant5 ((temp___expr_220 Int)
  (temp___is_init_217 Bool) (temp___skip_constant_218 Bool)
  (temp___do_toplevel_219 Bool)) Bool (=>
                                      (or (= temp___is_init_217 true)
                                      (<= 1 100)) (in_range7
                                      temp___expr_220)))

;; get__post_axiom
  (assert
  (forall ((container us_rep3))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant4 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant5 (get container position) true false true)) :pattern (
  (get container position)) ))))

;; has_key__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((key us_rep1))
  (! (=> (= (of_int 0) true)
     (=>
     (exists ((k us_rep1))
     (and (= (has_key container k) true) (= (bool_eq4 k key) true)))
     (= (has_key container key) true))) :pattern ((has_key container key)) ))))

(declare-sort element_type2 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq11 (element_type2 element_type2) Bool)

(declare-fun dummy11 () element_type2)

(declare-datatypes ()
((element_type__ref2
 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref_3__projection ((a element_type__ref2)) element_type2 
  (element_type__content2 a))

(define-fun dynamic_invariant6 ((temp___expr_245 Int)
  (temp___is_init_242 Bool) (temp___skip_constant_243 Bool)
  (temp___do_toplevel_244 Bool)) Bool (=>
                                      (or (= temp___is_init_242 true)
                                      (<= 1 2147483647)) (in_range8
                                      temp___expr_245)))

(declare-fun witness (us_rep2 us_rep1) Int)

(declare-fun witness__function_guard (Int us_rep2 us_rep1) Bool)

(declare-fun w_get (us_rep2 Int) Int)

(declare-fun w_get__function_guard (Int us_rep2 Int) Bool)

;; get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((key us_rep1))
  (! (=> (= (has_key container key) true)
     (let ((result (get1 container key)))
     (and
     (=> (= (of_int 0) true)
     (and (= result (w_get container (witness container key)))
     (forall ((k us_rep1))
     (=> (= (has_key container k) true)
     (= (= (bool_eq4 k key) true)
     (= (witness container key) (witness container k)))))))
     (dynamic_invariant6 result true false true)))) :pattern ((get1 container
                                                              key)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep2)) (! (dynamic_invariant1 (length1 container)
  true false true) :pattern ((length1 container)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep2))
  (! (= (= (is_empty container) true)
     (forall ((key us_rep1)) (not (= (has_key container key) true)))) :pattern (
  (is_empty container)) )))

;; keys_included__post_axiom
  (assert
  (forall ((left us_rep2) (right us_rep2))
  (! (= (= (keys_included left right) true)
     (forall ((key us_rep1))
     (=> (= (has_key left key) true) (= (has_key right key) true)))) :pattern (
  (keys_included left right)) )))

(declare-fun has_witness (us_rep2 Int) Bool)

(declare-fun has_witness__function_guard (Bool us_rep2 Int) Bool)

;; has_witness__post_axiom
  (assert true)

;; witness__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((key us_rep1))
  (! (=> (= (has_key container key) true)
     (let ((result (witness container key)))
     (and (= (has_witness container result) true) (dynamic_invariant1 result
     true false true)))) :pattern ((witness container key)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((witness1 Int))
  (! (=>
     (and (dynamic_invariant1 witness1 true true true)
     (= (has_witness container witness1) true)) (dynamic_invariant6
     (w_get container witness1) true false true)) :pattern ((w_get container
                                                            witness1)) ))))

(declare-fun l__split_fields () us_main_type)

(declare-fun o () count_type)

(declare-fun l__split_fields1 () us_main_type)

(declare-fun l__split_fields2 () us_main_type)

(declare-fun l__split_fields3 () us_main_type)

(define-fun l__split_fields4 () us_split_fields (mk___split_fields
                                                l__split_fields1))

(define-fun o1 () us_rep1 (mk___rep1 (mk___split_fields1 o)))

;; H
  (assert (in_range3 i))

;; H
  (assert
  (< (length (mk___rep l__split_discrs (mk___split_fields l__split_fields))) 
  (to_rep (rec__int_list__my_lists__list__capacity l__split_discrs))))

;; H
  (assert
  (and
  (and
  (and
  (= (length (mk___rep l__split_discrs l__split_fields4)) (+ (length
                                                             (mk___rep
                                                             l__split_discrs
                                                             (mk___split_fields
                                                             l__split_fields))) 1))
  (= (range_shifted
     (model__ (mk___rep l__split_discrs (mk___split_fields l__split_fields)))
     (model__ (mk___rep l__split_discrs l__split_fields4)) 1
     (length (mk___rep l__split_discrs (mk___split_fields l__split_fields)))
     1) true))
  (= (get (model__ (mk___rep l__split_discrs l__split_fields4)) 1) i))
  (= (p_positions_shifted
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields)))
     (positions (mk___rep l__split_discrs l__split_fields4)) 1 1) true)))

;; H
  (assert (= l__split_fields2 l__split_fields1))

;; H
  (assert (= (mk___split_fields l__split_fields3) l__split_fields4))

;; H
  (assert
  (and
  (= o1 (first
        (mk___rep l__split_discrs (mk___split_fields l__split_fields2))))
  (ite (= (= (length
             (mk___rep l__split_discrs (mk___split_fields l__split_fields2))) 0) true)
  (= (bool_eq4 o1 no_element) true)
  (and
  (= (has_key
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields2))) 
     o1) true)
  (= (get1
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields2))) 
     o1) 1)))))

(assert
;; WP_parameter_def
 ;; File "a-cfdlli.ads", line 1514, characters 0-0
  (not
  (= (has_key
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields2))) 
     o1) true)))
(check-sat)
