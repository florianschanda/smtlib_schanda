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

(declare-sort index_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index_type index_type) Bool)

(declare-fun dummy1 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref_2__projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant ((temp___expr_635 Int)
  (temp___is_init_632 Bool) (temp___skip_constant_633 Bool)
  (temp___do_toplevel_634 Bool)) Bool (=>
                                      (or (= temp___is_init_632 true)
                                      (<= 1 2147483647)) (in_range2
                                      temp___expr_635)))

(declare-sort extended_index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (extended_index extended_index) Bool)

(declare-fun dummy2 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref_2__projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant1 ((temp___expr_649 Int)
  (temp___is_init_646 Bool) (temp___skip_constant_647 Bool)
  (temp___do_toplevel_648 Bool)) Bool (=>
                                      (or (= temp___is_init_646 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_649)))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq3 (us_rep us_rep) Bool)

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

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep)))))
(define-fun sequence__ref_2__projection ((a sequence__ref)) us_rep (sequence__content
                                                                   a))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(declare-sort integer 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

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
  (forall ((x integer)) (! (in_range4 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort positive 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (positive positive) Bool)

(declare-fun dummy5 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-fun to_rep1 (positive) Int)

(declare-fun of_rep1 (Int) positive)

;; inversion_axiom
  (assert
  (forall ((x positive))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x positive)) (! (in_range5 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__my_maps__my_rec__f positive)(rec__my_maps__my_rec__g integer)))))
(define-fun us_split_fields_F__projection ((a us_split_fields)) positive 
  (rec__my_maps__my_rec__f a))

(define-fun us_split_fields_G__projection ((a us_split_fields)) integer 
  (rec__my_maps__my_rec__g a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_7__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep1 (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_10__projection ((a us_rep1)) us_split_fields (us_split_fields1
                                                                a))

(define-fun bool_eq6 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep1
                            (rec__my_maps__my_rec__f (us_split_fields1 a))) 
                         (to_rep1
                         (rec__my_maps__my_rec__f (us_split_fields1 b))))
                         (= (to_rep
                            (rec__my_maps__my_rec__g (us_split_fields1 a))) 
                         (to_rep
                         (rec__my_maps__my_rec__g (us_split_fields1 b)))))
                    true false))

(declare-fun user_eq6 (us_rep1 us_rep1) Bool)

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

(declare-fun my_maps__my_rec__f__first__bit () Int)

(declare-fun my_maps__my_rec__f__last__bit () Int)

(declare-fun my_maps__my_rec__f__position () Int)

;; my_maps__my_rec__f__first__bit_axiom
  (assert (<= 0 my_maps__my_rec__f__first__bit))

;; my_maps__my_rec__f__last__bit_axiom
  (assert (< my_maps__my_rec__f__first__bit my_maps__my_rec__f__last__bit))

;; my_maps__my_rec__f__position_axiom
  (assert (<= 0 my_maps__my_rec__f__position))

(declare-fun my_maps__my_rec__g__first__bit () Int)

(declare-fun my_maps__my_rec__g__last__bit () Int)

(declare-fun my_maps__my_rec__g__position () Int)

;; my_maps__my_rec__g__first__bit_axiom
  (assert (<= 0 my_maps__my_rec__g__first__bit))

;; my_maps__my_rec__g__last__bit_axiom
  (assert (< my_maps__my_rec__g__first__bit my_maps__my_rec__g__last__bit))

;; my_maps__my_rec__g__position_axiom
  (assert (<= 0 my_maps__my_rec__g__position))

(declare-fun dummy6 () us_rep1)

(declare-datatypes ()
((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep1)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep1 (my_rec__content
                                                               a))

(declare-datatypes ()
((element_type__ref (mk_element_type__ref (element_type__content us_rep1)))))
(define-fun element_type__ref_7__projection ((a element_type__ref)) us_rep1 
  (element_type__content a))

(define-fun last ((container us_rep)) Int (+ 0 (length container)))

(declare-fun last__function_guard (Int us_rep) Bool)

(declare-fun get (us_rep Int) us_rep1)

(declare-fun get__function_guard (us_rep1 us_rep Int) Bool)

(define-fun oeq ((left us_rep)
  (right us_rep)) Bool (and (= (length left) (length right)) (ite (forall
                                                                  ((n Int))
                                                                  (=>
                                                                  (and
                                                                  (<= 1 n)
                                                                  (<= n 
                                                                  (last left)))
                                                                  (= 
                                                                  (bool_eq6
                                                                  (get left
                                                                  n)
                                                                  (get right
                                                                  n)) true)))
                                                             true false)))

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (= (user_eq3 a b) (oeq a b)) :pattern ((user_eq3 a b)) )))

(define-fun default_initial_assumption ((temp___expr_656 us_rep)
  (temp___skip_top_level_657 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_657 true))
                                         (= (length temp___expr_656) 0)))

(declare-sort count_type 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (count_type count_type) Bool)

(declare-fun dummy7 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_173 Int)
  (temp___is_init_170 Bool) (temp___skip_constant_171 Bool)
  (temp___do_toplevel_172 Bool)) Bool (=>
                                      (or (= temp___is_init_170 true)
                                      (<= 0 2147483647)) (in_range6
                                      temp___expr_173)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant2 result true false
     true))) :pattern ((length container)) )))

(declare-fun left () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun right () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun fst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun lst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun offset () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range4 temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range5
                                     temp___expr_39)))

;; get__post_axiom
  (assert true)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun result () Bool)

(declare-fun result1 () Bool)

;; H
  (assert (in_range2 fst))

;; H
  (assert (in_range3 lst))

;; H
  (assert (in_range1 offset))

;; H
  (assert
  (and (= o6 (last left)) (and (in_range3 o6) (= o6 (+ 0 (length left))))))

;; H
  (assert (= result (ite (<= lst o6) true false)))

;; H
  (assert (= result true))

;; H
  (assert
  (=> (< offset 0)
  (and (= o5 (- (- 2147483648) offset)) (in_range1
  (- (- 2147483648) offset)))))

;; H
  (assert (=> (< offset 0) (= result1 (ite (<= o5 1) true false))))

;; H
  (assert (=> (not (< offset 0)) (= result1 (of_int 1))))

;; H
  (assert (= result1 true))

;; H
  (assert (<= fst lst))

;; H
  (assert (and (= o2 lst) (in_range1 lst)))

;; H
  (assert
  (and (= o (length right)) (and (in_range6 o) (<= (+ 0 o) 2147483647))))

;; H
  (assert (= o1 (+ 0 o)))

;; H
  (assert (and (= o3 o1) (in_range1 o1)))

;; H
  (assert (= o4 (- o3 o2)))

(assert
;; WP_parameter_def
 ;; File "a-cofuve.ads", line 201, characters 0-0
  (not (in_range1 o4)))
(check-sat)
