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

(define-fun bool_eq2 ((a us_rep)
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

(declare-fun dummy2 () us_rep)

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

(define-fun bool_eq3 ((a us_rep1)
  (b us_rep1)) Bool (ite (= (to_rep
                            (rec__int_list__my_lists__cursor__node
                            (us_split_fields3 a))) (to_rep
                                                   (rec__int_list__my_lists__cursor__node
                                                   (us_split_fields3 b))))
                    true false))

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

(declare-fun dummy3 () us_rep1)

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

(define-fun dynamic_invariant ((temp___expr_141 Int)
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
     (dynamic_invariant result true false true))) :pattern ((length
                                                            container)) )))

(declare-sort extended_index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (extended_index extended_index) Bool)

(declare-fun dummy4 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

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
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep2 (sequence__content
                                                                   a))

(declare-fun get (us_rep2 Int) Int)

(declare-fun get__function_guard (Int us_rep2 Int) Bool)

(declare-sort element_type1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (element_type1 element_type1) Bool)

(declare-fun dummy6 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_2__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant1 ((temp___expr_220 Int)
  (temp___is_init_217 Bool) (temp___skip_constant_218 Bool)
  (temp___do_toplevel_219 Bool)) Bool (=>
                                      (or (= temp___is_init_217 true)
                                      (<= 1 100)) (in_range4
                                      temp___expr_220)))

(define-fun dynamic_invariant2 ((temp___expr_226 Int)
  (temp___is_init_223 Bool) (temp___skip_constant_224 Bool)
  (temp___do_toplevel_225 Bool)) Bool (=>
                                      (or (= temp___is_init_223 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_226)))

(declare-fun length1 (us_rep2) Int)

(declare-fun length__function_guard1 (Int us_rep2) Bool)

(define-fun last ((container us_rep2)) Int (+ 0 (length1 container)))

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

(define-fun default_initial_assumption1 ((temp___expr_233 us_rep2)
  (temp___skip_top_level_234 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_234 true))
                                         (= (length1 temp___expr_233) 0)))

;; get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant2 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant1 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-sort us_main_type2 0)

(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)

(declare-sort us_rep3 0)

(declare-fun bool_eq7 (us_rep3 us_rep3) Bool)

(declare-fun user_eq7 (us_rep3 us_rep3) Bool)

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

(declare-fun dummy7 () us_rep3)

(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep3)))))
(define-fun map__ref___projection ((a map__ref)) us_rep3 (map__content a))

(declare-datatypes ()
((key_type__ref (mk_key_type__ref (key_type__content us_rep1)))))
(define-fun key_type__ref___projection ((a key_type__ref)) us_rep1 (key_type__content
                                                                   a))

(declare-fun get1 (us_rep3 us_rep1) Int)

(declare-fun get__function_guard1 (Int us_rep3 us_rep1) Bool)

(declare-sort element_type2 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq8 (element_type2 element_type2) Bool)

(declare-fun dummy8 () element_type2)

(declare-datatypes ()
((element_type__ref2
 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref_3__projection ((a element_type__ref2)) element_type2 
  (element_type__content2 a))

(define-fun dynamic_invariant3 ((temp___expr_245 Int)
  (temp___is_init_242 Bool) (temp___skip_constant_243 Bool)
  (temp___do_toplevel_244 Bool)) Bool (=>
                                      (or (= temp___is_init_242 true)
                                      (<= 1 2147483647)) (in_range5
                                      temp___expr_245)))

(declare-fun length2 (us_rep3) Int)

(declare-fun length__function_guard2 (Int us_rep3) Bool)

(declare-fun is_empty (us_rep3) Bool)

(declare-fun is_empty__function_guard (Bool us_rep3) Bool)

(define-fun default_initial_assumption2 ((temp___expr_252 us_rep3)
  (temp___skip_top_level_253 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_253 true))
                                         (and
                                         (= (is_empty temp___expr_252) true)
                                         (= (length2 temp___expr_252) 0))))

(declare-fun has_key (us_rep3 us_rep1) Bool)

(declare-fun has_key__function_guard (Bool us_rep3 us_rep1) Bool)

(declare-fun witness (us_rep3 us_rep1) Int)

(declare-fun witness__function_guard (Int us_rep3 us_rep1) Bool)

(declare-fun w_get (us_rep3 Int) Int)

(declare-fun w_get__function_guard (Int us_rep3 Int) Bool)

(define-fun default_initial_assumption3 ((temp___expr_240 us_rep1)
  (temp___skip_top_level_241 Bool)) Bool (= (to_rep
                                            (rec__int_list__my_lists__cursor__node
                                            (us_split_fields3
                                            temp___expr_240))) 0))

;; get__post_axiom
  (assert
  (forall ((container us_rep3))
  (forall ((key us_rep1))
  (! (=> (= (has_key container key) true)
     (let ((result (get1 container key)))
     (and
     (=> (= (of_int 0) true)
     (and (= result (w_get container (witness container key)))
     (forall ((k us_rep1))
     (=> (= (has_key container k) true)
     (= (= (bool_eq3 k key) true)
     (= (witness container key) (witness container k)))))))
     (dynamic_invariant3 result true false true)))) :pattern ((get1 container
                                                              key)) ))))

(declare-fun oeq1 (us_rep3 us_rep3) Bool)

(declare-fun oeq__function_guard1 (Bool us_rep3 us_rep3) Bool)

;; oeq__post_axiom
  (assert
  (forall ((left us_rep3) (right us_rep3))
  (! (= (= (oeq1 left right) true)
     (and
     (forall ((key us_rep1))
     (=> (= (has_key left key) true)
     (and (= (has_key right key) true) (= (get1 right key) (get1 left key)))))
     (forall ((key us_rep1))
     (=> (= (has_key right key) true) (= (has_key left key) true))))) :pattern (
  (oeq1 left right)) )))

(declare-fun model__ (us_rep) us_rep2)

(declare-fun model____function_guard (us_rep2 us_rep) Bool)

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length1 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

(declare-fun positions (us_rep) us_rep3)

(declare-fun positions__function_guard (us_rep3 us_rep) Bool)

(declare-fun no_element () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

;; positions__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (positions container)))
     (and (not (= (has_key result no_element) true))
     (forall ((i us_rep1))
     (=> (= (has_key result i) true)
     (and
     (and (<= 1 (get1 result i)) (<= (get1 result i) (length container)))
     (forall ((j us_rep1))
     (=> (= (has_key result j) true)
     (=> (= (get1 result i) (get1 result j)) (= (bool_eq3 i j) true))))))))) :pattern (
  (positions container)) )))

(define-fun has_element ((container us_rep)
  (position us_rep1)) Bool (has_key (positions container) position))

(declare-fun has_element__function_guard (Bool us_rep us_rep1) Bool)

(define-fun element ((container us_rep)
  (position us_rep1)) Int (get (model__ container)
                          (get1 (positions container) position)))

(declare-fun element__function_guard (Int us_rep us_rep1) Bool)

(define-fun dynamic_invariant4 ((temp___expr_189 Int)
  (temp___is_init_186 Bool) (temp___skip_constant_187 Bool)
  (temp___do_toplevel_188 Bool)) Bool (=>
                                      (or (= temp___is_init_186 true)
                                      (<= 1 100)) (in_range1
                                      temp___expr_189)))

(define-fun equal_except ((left us_rep2) (right us_rep2)
  (position Int)) Bool (and (= (length1 left) (length1 right)) (ite (forall
                                                                    ((i Int))
                                                                    (=>
                                                                    (and
                                                                    (<= 1 i)
                                                                    (<= i 
                                                                    (last
                                                                    left)))
                                                                    (=>
                                                                    (not
                                                                    (= i position))
                                                                    (= 
                                                                    (get left
                                                                    i) 
                                                                    (get
                                                                    right i)))))
                                                               true false)))

(declare-fun equal_except__function_guard (Bool us_rep2 us_rep2 Int) Bool)

(declare-fun first (us_rep) us_rep1)

(declare-fun first__function_guard (us_rep1 us_rep) Bool)

;; first__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (first container)))
     (ite (= (length container) 0) (= (bool_eq3 result no_element) true)
     (and (= (has_element container result) true)
     (= (get1 (positions container) result) 1)))) :pattern ((first container)) )))

(declare-fun l__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

;; no_element__def_axiom
  (assert (= no_element (mk___rep1 (mk___split_fields1 (of_rep 0)))))

;; length__post_axiom
  (assert
  (forall ((container us_rep2))
  (! (let ((result (length1 container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false
     true))) :pattern ((length1 container)) )))

;; has_key__post_axiom
  (assert
  (forall ((container us_rep3))
  (forall ((key us_rep1))
  (! (=> (= (of_int 0) true)
     (=>
     (exists ((k us_rep1))
     (and (= (has_key container k) true) (= (bool_eq3 k key) true)))
     (= (has_key container key) true))) :pattern ((has_key container key)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep3)) (! (dynamic_invariant (length2 container)
  true false true) :pattern ((length2 container)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep3))
  (! (= (= (is_empty container) true)
     (forall ((key us_rep1)) (not (= (has_key container key) true)))) :pattern (
  (is_empty container)) )))

(declare-fun has_witness (us_rep3 Int) Bool)

(declare-fun has_witness__function_guard (Bool us_rep3 Int) Bool)

;; has_witness__post_axiom
  (assert true)

;; witness__post_axiom
  (assert
  (forall ((container us_rep3))
  (forall ((key us_rep1))
  (! (=> (= (has_key container key) true)
     (let ((result (witness container key)))
     (and (= (has_witness container result) true) (dynamic_invariant result
     true false true)))) :pattern ((witness container key)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container us_rep3))
  (forall ((witness1 Int))
  (! (=>
     (and (dynamic_invariant witness1 true true true)
     (= (has_witness container witness1) true)) (dynamic_invariant3
     (w_get container witness1) true false true)) :pattern ((w_get container
                                                            witness1)) ))))

(declare-fun l__split_fields () us_main_type)

(declare-fun c__split_fields () count_type)

(declare-fun int_list__incr__c__assume () count_type)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun result () us_split_fields__ref1)

(declare-fun c__split_fields1 () us_split_fields2)

(declare-fun result1 () Bool)

(declare-fun l__split_fields1 () us_split_fields)

(declare-fun c__split_fields2 () us_split_fields2)

(declare-fun l__split_fields2 () us_split_fields)

(define-fun int_list__incr__c__assume1 () us_rep1 (mk___rep1
                                                  (mk___split_fields1
                                                  int_list__incr__c__assume)))

;; H
  (assert
  (forall ((c us_rep1))
  (=>
  (= (has_key
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields))) c) true)
  (< (element (mk___rep l__split_discrs (mk___split_fields l__split_fields))
     c) 100))))

;; H
  (assert
  (and
  (= int_list__incr__c__assume1 (first
                                (mk___rep l__split_discrs
                                (mk___split_fields l__split_fields))))
  (ite (= (= (length
             (mk___rep l__split_discrs (mk___split_fields l__split_fields))) 0) true)
  (= (bool_eq3 int_list__incr__c__assume1 no_element) true)
  (and
  (= (has_key
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields)))
     int_list__incr__c__assume1) true)
  (= (get1
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields)))
     int_list__incr__c__assume1) 1)))))

;; H
  (assert
  (= result (mk___split_fields__ref1 (mk___split_fields1 c__split_fields))))

;; H
  (assert
  (= c__split_fields1 (mk___split_fields1 int_list__incr__c__assume)))

;; H
  (assert
  (and
  (= result1 (has_key
             (positions
             (mk___rep l__split_discrs (mk___split_fields l__split_fields)))
             (mk___rep1 c__split_fields1)))
  (= (= result1 true)
  (= (has_key
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields)))
     (mk___rep1 c__split_fields1)) true))))

;; H
  (assert (= result1 true))

;; H
  (assert
  (= (length (mk___rep l__split_discrs l__split_fields1)) (length
                                                          (mk___rep
                                                          l__split_discrs
                                                          (mk___split_fields
                                                          l__split_fields)))))

;; H
  (assert
  (= (oeq1 (positions (mk___rep l__split_discrs l__split_fields1))
     (positions
     (mk___rep l__split_discrs (mk___split_fields l__split_fields)))) true))

;; H
  (assert
  (forall ((i Int))
  (=>
  (and (<= 1 i)
  (<= i (- (get1 (positions (mk___rep l__split_discrs l__split_fields1))
           (mk___rep1 c__split_fields2)) 1)))
  (= (get (model__ (mk___rep l__split_discrs l__split_fields1)) i) (+ 
  (get
  (model__ (mk___rep l__split_discrs (mk___split_fields l__split_fields))) i) 1)))))

;; H
  (assert
  (forall ((i Int))
  (=>
  (and
  (<= (get1 (positions (mk___rep l__split_discrs l__split_fields1))
      (mk___rep1 c__split_fields2)) i)
  (<= i (length (mk___rep l__split_discrs l__split_fields1))))
  (= (get (model__ (mk___rep l__split_discrs l__split_fields1)) i) (get
                                                                   (model__
                                                                   (mk___rep
                                                                   l__split_discrs
                                                                   (mk___split_fields
                                                                   l__split_fields)))
                                                                   i)))))

;; H
  (assert
  (= (has_key (positions (mk___rep l__split_discrs l__split_fields1))
     (mk___rep1 c__split_fields2)) true))

;; H
  (assert
  (and
  (= o (element (mk___rep l__split_discrs l__split_fields1)
       (mk___rep1 c__split_fields2)))
  (and (in_range1 o)
  (= o (get (model__ (mk___rep l__split_discrs l__split_fields1))
       (get1 (positions (mk___rep l__split_discrs l__split_fields1))
       (mk___rep1 c__split_fields2)))))))

;; H
  (assert (= o1 (+ o 1)))

;; H
  (assert (and (= o2 o1) (in_range1 o1)))

;; H
  (assert
  (and
  (and
  (and
  (= (length (mk___rep l__split_discrs l__split_fields2)) (length
                                                          (mk___rep
                                                          l__split_discrs
                                                          l__split_fields1)))
  (= (oeq1 (positions (mk___rep l__split_discrs l__split_fields1))
     (positions (mk___rep l__split_discrs l__split_fields2))) true))
  (= (get (model__ (mk___rep l__split_discrs l__split_fields2))
     (get1 (positions (mk___rep l__split_discrs l__split_fields2))
     (mk___rep1 c__split_fields2))) o2))
  (= (equal_except (model__ (mk___rep l__split_discrs l__split_fields1))
     (model__ (mk___rep l__split_discrs l__split_fields2))
     (get1 (positions (mk___rep l__split_discrs l__split_fields2))
     (mk___rep1 c__split_fields2))) true)))

(assert
;; WP_parameter_def
 ;; File "int_list.ads", line 14, characters 0-0
  (not
  (or
  (= (has_key (positions (mk___rep l__split_discrs l__split_fields2))
     (mk___rep1 c__split_fields2)) true)
  (= (bool_eq3 (mk___rep1 c__split_fields2) no_element) true))))
(check-sat)
