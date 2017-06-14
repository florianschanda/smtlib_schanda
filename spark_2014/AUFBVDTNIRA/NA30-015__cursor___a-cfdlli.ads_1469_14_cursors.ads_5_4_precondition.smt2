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

(declare-sort count_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (count_type count_type) Bool)

(declare-fun dummy () count_type)

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
  (forall ((x count_type)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort element_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (element_type element_type) Bool)

(declare-fun dummy1 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant ((temp___expr_183 Int)
  (temp___is_init_180 Bool) (temp___skip_constant_181 Bool)
  (temp___do_toplevel_182 Bool)) Bool (=>
                                      (or (= temp___is_init_180 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range2 temp___expr_183)))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__cursors__l__list__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type 
  (rec__cursors__l__list__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__cursors__l__list us_main_type)))))
(define-fun us_split_fields_List__projection ((a us_split_fields)) us_main_type 
  (rec__cursors__l__list a))

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
                           (rec__cursors__l__list__capacity
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__cursors__l__list__capacity
                                                  (us_split_discrs1 b))))
                        (= (us_main_eq
                           (rec__cursors__l__list (us_split_fields1 a))
                           (rec__cursors__l__list (us_split_fields1 b))) true))
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

(declare-fun cursors__l__list__capacity__first__bit () Int)

(declare-fun cursors__l__list__capacity__last__bit () Int)

(declare-fun cursors__l__list__capacity__position () Int)

;; cursors__l__list__capacity__first__bit_axiom
  (assert (<= 0 cursors__l__list__capacity__first__bit))

;; cursors__l__list__capacity__last__bit_axiom
  (assert
  (< cursors__l__list__capacity__first__bit cursors__l__list__capacity__last__bit))

;; cursors__l__list__capacity__position_axiom
  (assert (<= 0 cursors__l__list__capacity__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((list__ref (mk_list__ref (list__content us_rep)))))
(define-fun list__ref___projection ((a list__ref)) us_rep (list__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__cursors__l__cursor__node count_type)))))
(define-fun us_split_fields_Node__projection ((a us_split_fields2)) count_type 
  (rec__cursors__l__cursor__node a))

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
                            (rec__cursors__l__cursor__node
                            (us_split_fields3 a))) (to_rep
                                                   (rec__cursors__l__cursor__node
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

(declare-fun cursors__l__cursor__node__first__bit () Int)

(declare-fun cursors__l__cursor__node__last__bit () Int)

(declare-fun cursors__l__cursor__node__position () Int)

;; cursors__l__cursor__node__first__bit_axiom
  (assert (<= 0 cursors__l__cursor__node__first__bit))

;; cursors__l__cursor__node__last__bit_axiom
  (assert
  (< cursors__l__cursor__node__first__bit cursors__l__cursor__node__last__bit))

;; cursors__l__cursor__node__position_axiom
  (assert (<= 0 cursors__l__cursor__node__position))

(declare-fun dummy3 () us_rep1)

(declare-datatypes ()
((cursor__ref (mk_cursor__ref (cursor__content us_rep1)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep1 (cursor__content
                                                               a))

(define-fun default_initial_assumption ((temp___expr_195 us_rep1)
  (temp___skip_top_level_196 Bool)) Bool (= (to_rep
                                            (rec__cursors__l__cursor__node
                                            (us_split_fields3
                                            temp___expr_195))) 0))

(declare-fun no_element () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant1 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_141)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep
                (rec__cursors__l__list__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant1 result true false true))) :pattern ((length
                                                             container)) )))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

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

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep2)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep2 (sequence__content
                                                                   a))

(declare-fun get (us_rep2 Int) Int)

(declare-fun get__function_guard (Int us_rep2 Int) Bool)

(define-fun contains ((container us_rep2) (fst Int) (lst Int)
  (item Int)) Bool (ite (exists ((i Int))
                        (and (and (<= fst i) (<= i lst))
                        (= (get container i) item)))
                   true false))

(declare-fun contains__function_guard (Bool us_rep2 Int Int Int) Bool)

(declare-fun length1 (us_rep2) Int)

(declare-fun length__function_guard1 (Int us_rep2) Bool)

(define-fun last ((container us_rep2)) Int (+ 0 (length1 container)))

(declare-fun last__function_guard (Int us_rep2) Bool)

(declare-sort us_main_type2 0)

(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)

(declare-sort us_rep3 0)

(declare-fun bool_eq5 (us_rep3 us_rep3) Bool)

(declare-fun user_eq5 (us_rep3 us_rep3) Bool)

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

(declare-fun dummy5 () us_rep3)

(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep3)))))
(define-fun map__ref___projection ((a map__ref)) us_rep3 (map__content a))

(declare-datatypes ()
((key_type__ref (mk_key_type__ref (key_type__content us_rep1)))))
(define-fun key_type__ref___projection ((a key_type__ref)) us_rep1 (key_type__content
                                                                   a))

(declare-fun get1 (us_rep3 us_rep1) Int)

(declare-fun get__function_guard1 (Int us_rep3 us_rep1) Bool)

(declare-sort element_type1 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq6 (element_type1 element_type1) Bool)

(declare-fun dummy6 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_3__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant2 ((temp___expr_239 Int)
  (temp___is_init_236 Bool) (temp___skip_constant_237 Bool)
  (temp___do_toplevel_238 Bool)) Bool (=>
                                      (or (= temp___is_init_236 true)
                                      (<= 1 2147483647)) (in_range3
                                      temp___expr_239)))

(declare-fun length2 (us_rep3) Int)

(declare-fun length__function_guard2 (Int us_rep3) Bool)

(declare-fun is_empty (us_rep3) Bool)

(declare-fun is_empty__function_guard (Bool us_rep3) Bool)

(define-fun default_initial_assumption1 ((temp___expr_246 us_rep3)
  (temp___skip_top_level_247 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_247 true))
                                         (and
                                         (= (is_empty temp___expr_246) true)
                                         (= (length2 temp___expr_246) 0))))

(declare-fun has_key (us_rep3 us_rep1) Bool)

(declare-fun has_key__function_guard (Bool us_rep3 us_rep1) Bool)

(declare-fun witness (us_rep3 us_rep1) Int)

(declare-fun witness__function_guard (Int us_rep3 us_rep1) Bool)

(declare-fun w_get (us_rep3 Int) Int)

(declare-fun w_get__function_guard (Int us_rep3 Int) Bool)

(define-fun default_initial_assumption2 ((temp___expr_234 us_rep1)
  (temp___skip_top_level_235 Bool)) Bool (= (to_rep
                                            (rec__cursors__l__cursor__node
                                            (us_split_fields3
                                            temp___expr_234))) 0))

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
     (dynamic_invariant2 result true false true)))) :pattern ((get1 container
                                                              key)) ))))

(declare-fun model__ (us_rep) us_rep2)

(declare-fun model____function_guard (us_rep2 us_rep) Bool)

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
  (! (= (user_eq4 a b) (oeq a b)) :pattern ((user_eq4 a b)) )))

(define-fun default_initial_assumption3 ((temp___expr_227 us_rep2)
  (temp___skip_top_level_228 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_228 true))
                                         (= (length1 temp___expr_227) 0)))

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length1 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

(declare-fun positions (us_rep) us_rep3)

(declare-fun positions__function_guard (us_rep3 us_rep) Bool)

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

(declare-fun container () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun item () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun position () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

;; no_element__def_axiom
  (assert (= no_element (mk___rep1 (mk___split_fields1 (of_rep 0)))))

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
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant3 ((temp___expr_220 Int)
  (temp___is_init_217 Bool) (temp___skip_constant_218 Bool)
  (temp___do_toplevel_219 Bool)) Bool (=>
                                      (or (= temp___is_init_217 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_220)))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (! (let ((result (length1 container1)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant1 result true false
     true))) :pattern ((length1 container1)) )))

(declare-sort element_type2 0)

(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq8 (element_type2 element_type2) Bool)

(declare-fun dummy8 () element_type2)

(declare-datatypes ()
((element_type__ref2
 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref_2__projection ((a element_type__ref2)) element_type2 
  (element_type__content2 a))

(define-fun dynamic_invariant4 ((temp___expr_214 Int)
  (temp___is_init_211 Bool) (temp___skip_constant_212 Bool)
  (temp___do_toplevel_213 Bool)) Bool (=>
                                      (or (= temp___is_init_211 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range5 temp___expr_214)))

;; get__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (forall ((position1 Int))
  (! (=>
     (and (dynamic_invariant3 position1 true true true)
     (and (<= 1 position1) (<= position1 (last container1))))
     (dynamic_invariant4 (get container1 position1) true false true)) :pattern (
  (get container1 position1)) ))))

;; has_key__post_axiom
  (assert
  (forall ((container1 us_rep3))
  (forall ((key us_rep1))
  (! (=> (= (of_int 0) true)
     (=>
     (exists ((k us_rep1))
     (and (= (has_key container1 k) true) (= (bool_eq3 k key) true)))
     (= (has_key container1 key) true))) :pattern ((has_key container1 key)) ))))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep3)) (! (dynamic_invariant1 (length2 container1)
  true false true) :pattern ((length2 container1)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container1 us_rep3))
  (! (= (= (is_empty container1) true)
     (forall ((key us_rep1)) (not (= (has_key container1 key) true)))) :pattern (
  (is_empty container1)) )))

(declare-fun has_witness (us_rep3 Int) Bool)

(declare-fun has_witness__function_guard (Bool us_rep3 Int) Bool)

;; has_witness__post_axiom
  (assert true)

;; witness__post_axiom
  (assert
  (forall ((container1 us_rep3))
  (forall ((key us_rep1))
  (! (=> (= (has_key container1 key) true)
     (let ((result (witness container1 key)))
     (and (= (has_witness container1 result) true) (dynamic_invariant1 result
     true false true)))) :pattern ((witness container1 key)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container1 us_rep3))
  (forall ((witness1 Int))
  (! (=>
     (and (dynamic_invariant1 witness1 true true true)
     (= (has_witness container1 witness1) true)) (dynamic_invariant2
     (w_get container1 witness1) true false true)) :pattern ((w_get
                                                             container1
                                                             witness1)) ))))

(declare-fun o () count_type)

(declare-fun o1 () count_type)

(declare-fun temp___472 () count_type)

(declare-fun o2 () us_rep2)

(declare-fun o3 () us_rep3)

(declare-fun o4 () Int)

;; H
  (assert (= (to_rep o) 0))

;; H
  (assert (= o o1))

;; H
  (assert (= temp___472 o1))

;; H
  (assert (= (mk___rep1 (mk___split_fields1 temp___472)) no_element))

;; H
  (assert (in_range2 item))

;; H
  (assert
  (or (= (has_key (positions container) position) true)
  (= (bool_eq3 position no_element) true)))

;; H
  (assert
  (=> (= (bool_eq3 position no_element) true)
  (and (= o4 (length container))
  (and (in_range1 o4)
  (<= o4 (to_rep
         (rec__cursors__l__list__capacity (us_split_discrs1 container))))))))

;; H
  (assert
  (=> (not (= (bool_eq3 position no_element) true))
  (and (= o3 (positions container))
  (and (not (= (has_key o3 no_element) true))
  (forall ((i us_rep1))
  (=> (= (has_key o3 i) true)
  (and (and (<= 1 (get1 o3 i)) (<= (get1 o3 i) (length container)))
  (forall ((j us_rep1))
  (=> (= (has_key o3 j) true)
  (=> (= (get1 o3 i) (get1 o3 j)) (= (bool_eq3 i j) true)))))))))))

;; H
  (assert
  (=> (not (= (bool_eq3 position no_element) true))
  (and (= o4 (get1 o3 position))
  (and (in_range3 o4)
  (=> (= (of_int 0) true)
  (and (= o4 (w_get o3 (witness o3 position)))
  (forall ((k us_rep1))
  (=> (= (has_key o3 k) true)
  (= (= (bool_eq3 k position) true) (= (witness o3 position) (witness o3 k)))))))))))

;; H
  (assert
  (and (= o2 (model__ container)) (= (length1 o2) (length container))))

(assert
;; WP_parameter_def
 ;; File "a-cfdlli.ads", line 1403, characters 0-0
  (not (<= o4 (last o2))))
(check-sat)
