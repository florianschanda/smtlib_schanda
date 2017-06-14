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

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__dic_of_cont__my_dlli__list__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type 
  (rec__dic_of_cont__my_dlli__list__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__dic_of_cont__my_dlli__list us_main_type)))))
(define-fun us_split_fields_List__projection ((a us_split_fields)) us_main_type 
  (rec__dic_of_cont__my_dlli__list a))

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

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__dic_of_cont__my_dlli__list__capacity
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__dic_of_cont__my_dlli__list__capacity
                                                  (us_split_discrs1 b))))
                        (= (us_main_eq
                           (rec__dic_of_cont__my_dlli__list
                           (us_split_fields1 a))
                           (rec__dic_of_cont__my_dlli__list
                           (us_split_fields1 b))) true))
                   true false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

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

(declare-fun dic_of_cont__my_dlli__list__capacity__first__bit () Int)

(declare-fun dic_of_cont__my_dlli__list__capacity__last__bit () Int)

(declare-fun dic_of_cont__my_dlli__list__capacity__position () Int)

;; dic_of_cont__my_dlli__list__capacity__first__bit_axiom
  (assert (<= 0 dic_of_cont__my_dlli__list__capacity__first__bit))

;; dic_of_cont__my_dlli__list__capacity__last__bit_axiom
  (assert
  (< dic_of_cont__my_dlli__list__capacity__first__bit dic_of_cont__my_dlli__list__capacity__last__bit))

;; dic_of_cont__my_dlli__list__capacity__position_axiom
  (assert (<= 0 dic_of_cont__my_dlli__list__capacity__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((list__ref (mk_list__ref (list__content us_rep)))))
(define-fun list__ref___projection ((a list__ref)) us_rep (list__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__dic_of_cont__my_dlli__cursor__node count_type)))))
(define-fun us_split_fields_Node__projection ((a us_split_fields2)) count_type 
  (rec__dic_of_cont__my_dlli__cursor__node a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_6__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_9__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (= (to_rep
                            (rec__dic_of_cont__my_dlli__cursor__node
                            (us_split_fields3 a))) (to_rep
                                                   (rec__dic_of_cont__my_dlli__cursor__node
                                                   (us_split_fields3 b))))
                    true false))

(declare-fun user_eq2 (us_rep1 us_rep1) Bool)

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

(declare-fun dic_of_cont__my_dlli__cursor__node__first__bit () Int)

(declare-fun dic_of_cont__my_dlli__cursor__node__last__bit () Int)

(declare-fun dic_of_cont__my_dlli__cursor__node__position () Int)

;; dic_of_cont__my_dlli__cursor__node__first__bit_axiom
  (assert (<= 0 dic_of_cont__my_dlli__cursor__node__first__bit))

;; dic_of_cont__my_dlli__cursor__node__last__bit_axiom
  (assert
  (< dic_of_cont__my_dlli__cursor__node__first__bit dic_of_cont__my_dlli__cursor__node__last__bit))

;; dic_of_cont__my_dlli__cursor__node__position_axiom
  (assert (<= 0 dic_of_cont__my_dlli__cursor__node__position))

(declare-fun dummy2 () us_rep1)

(declare-datatypes ()
((cursor__ref (mk_cursor__ref (cursor__content us_rep1)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep1 (cursor__content
                                                               a))

(define-fun default_initial_assumption ((temp___expr_337 us_rep1)
  (temp___skip_top_level_338 Bool)) Bool (= (to_rep
                                            (rec__dic_of_cont__my_dlli__cursor__node
                                            (us_split_fields3
                                            temp___expr_337))) 0))

(declare-fun no_element () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep2 0)

(declare-fun bool_eq3 (us_rep2 us_rep2) Bool)

(declare-fun user_eq3 (us_rep2 us_rep2) Bool)

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

(declare-fun dummy3 () us_rep2)

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

(declare-fun container__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun before () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun position () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant ((temp___expr_173 Int)
  (temp___is_init_170 Bool) (temp___skip_constant_171 Bool)
  (temp___do_toplevel_172 Bool)) Bool (=>
                                      (or (= temp___is_init_170 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_173)))

;; no_element__def_axiom
  (assert (= no_element (mk___rep1 (mk___split_fields1 (of_rep 0)))))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep
                (rec__dic_of_cont__my_dlli__list__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant result true false true))) :pattern ((length
                                                            container)) )))

(declare-fun length1 (us_rep2) Int)

(declare-fun length__function_guard1 (Int us_rep2) Bool)

(declare-fun is_empty (us_rep2) Bool)

(declare-fun is_empty__function_guard (Bool us_rep2) Bool)

(define-fun default_initial_assumption1 ((temp___expr_388 us_rep2)
  (temp___skip_top_level_389 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_389 true))
                                         (and
                                         (= (is_empty temp___expr_388) true)
                                         (= (length1 temp___expr_388) 0))))

(declare-fun get (us_rep2 us_rep1) Int)

(declare-fun get__function_guard (Int us_rep2 us_rep1) Bool)

(define-fun default_initial_assumption2 ((temp___expr_376 us_rep1)
  (temp___skip_top_level_377 Bool)) Bool (= (to_rep
                                            (rec__dic_of_cont__my_dlli__cursor__node
                                            (us_split_fields3
                                            temp___expr_376))) 0))

;; positions__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (positions container)))
     (and (not (= (has_key result no_element) true))
     (forall ((i us_rep1))
     (=> (= (has_key result i) true)
     (and (and (<= 1 (get result i)) (<= (get result i) (length container)))
     (forall ((j us_rep1))
     (=> (= (has_key result j) true)
     (=> (= (get result i) (get result j)) (= (bool_eq2 i j) true))))))))) :pattern (
  (positions container)) )))

;; has_key__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((key us_rep1))
  (! (=> (= (of_int 0) true)
     (=>
     (exists ((k us_rep1))
     (and (= (has_key container k) true) (= (bool_eq2 k key) true)))
     (= (has_key container key) true))) :pattern ((has_key container key)) ))))

(declare-sort element_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq4 (element_type element_type) Bool)

(declare-fun dummy4 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_3__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_381 Int)
  (temp___is_init_378 Bool) (temp___skip_constant_379 Bool)
  (temp___do_toplevel_380 Bool)) Bool (=>
                                      (or (= temp___is_init_378 true)
                                      (<= 1 2147483647)) (in_range2
                                      temp___expr_381)))

(declare-fun witness (us_rep2 us_rep1) Int)

(declare-fun witness__function_guard (Int us_rep2 us_rep1) Bool)

(declare-fun w_get (us_rep2 Int) Int)

(declare-fun w_get__function_guard (Int us_rep2 Int) Bool)

;; get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((key us_rep1))
  (! (=> (= (has_key container key) true)
     (let ((result (get container key)))
     (and
     (=> (= (of_int 0) true)
     (and (= result (w_get container (witness container key)))
     (forall ((k us_rep1))
     (=> (= (has_key container k) true)
     (= (= (bool_eq2 k key) true)
     (= (witness container key) (witness container k)))))))
     (dynamic_invariant1 result true false true)))) :pattern ((get container
                                                              key)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep2)) (! (dynamic_invariant (length1 container)
  true false true) :pattern ((length1 container)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep2))
  (! (= (= (is_empty container) true)
     (forall ((key us_rep1)) (not (= (has_key container key) true)))) :pattern (
  (is_empty container)) )))

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
     (and (= (has_witness container result) true) (dynamic_invariant result
     true false true)))) :pattern ((witness container key)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((witness1 Int))
  (! (=>
     (and (dynamic_invariant witness1 true true true)
     (= (has_witness container witness1) true)) (dynamic_invariant1
     (w_get container witness1) true false true)) :pattern ((w_get container
                                                            witness1)) ))))

(declare-fun container__split_fields () us_main_type)

(declare-fun o () count_type)

(declare-fun o1 () count_type)

(declare-fun temp___1751 () count_type)

;; H
  (assert (= (to_rep o) 0))

;; H
  (assert (= o o1))

;; H
  (assert (= temp___1751 o1))

;; H
  (assert (= (mk___rep1 (mk___split_fields1 temp___1751)) no_element))

;; H
  (assert
  (and
  (or
  (= (has_key
     (positions
     (mk___rep container__split_discrs
     (mk___split_fields container__split_fields))) before) true)
  (= (bool_eq2 before no_element) true))
  (= (has_key
     (positions
     (mk___rep container__split_discrs
     (mk___split_fields container__split_fields))) position) true)))

(assert
;; WP_parameter_def
 ;; File "a-cfdlli.ads", line 1118, characters 0-0
  (not
  (<= (+ (+ 0 (ite (= (bool_eq2 before position) true) 1 0)) (ite (= 
                                                             (bool_eq2 
                                                             before
                                                             no_element) true)
                                                             1 0)) 1)))
(check-sat)
