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

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__ext__ us_private)))))
(define-fun us_split_fields___projection ((a us_split_fields)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)(attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) Int (attr__tag a))

(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite true true false))

(declare-fun user_eq (us_rep us_rep) Bool)

(declare-fun us_dispatch_eq (us_rep us_rep) Bool)

(declare-fun us_tag () Int)

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

(declare-fun dummy () us_rep)

(declare-datatypes ()
((tinterface_jauge__ref
 (mk_tinterface_jauge__ref (tinterface_jauge__content us_rep)))))
(define-fun tinterface_jauge__ref___projection ((a tinterface_jauge__ref)) us_rep 
  (tinterface_jauge__content a))

(define-fun default_initial_assumption ((temp___expr_216 us_rep)
  (temp___skip_top_level_217 Bool)) Bool (= (attr__tag temp___expr_216) 
  us_tag))

(declare-sort index_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 4)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (index_type index_type) Bool)

(declare-fun dummy1 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant ((temp___expr_231 Int)
  (temp___is_init_228 Bool) (temp___skip_constant_229 Bool)
  (temp___do_toplevel_230 Bool)) Bool (=>
                                      (or (= temp___is_init_228 true)
                                      (<= 1 4)) (in_range1 temp___expr_231)))

(declare-sort capacity_range 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 4)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

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
 (rec__objt_types_jauge__objt_liste_jauge__vector__capacity capacity_range)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) capacity_range 
  (rec__objt_types_jauge__objt_liste_jauge__vector__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__objt_types_jauge__objt_liste_jauge__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields2)) us_main_type 
  (rec__objt_types_jauge__objt_liste_jauge__vector a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1
 (mk___rep1
 (us_split_discrs1 us_split_discrs)(us_split_fields3 us_split_fields2)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_discrs (us_split_discrs1
                                                               a))

(define-fun us_rep_4__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

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

(declare-fun objt_types_jauge__objt_liste_jauge__vector__capacity__first__bit () Int)

(declare-fun objt_types_jauge__objt_liste_jauge__vector__capacity__last__bit () Int)

(declare-fun objt_types_jauge__objt_liste_jauge__vector__capacity__position () Int)

;; objt_types_jauge__objt_liste_jauge__vector__capacity__first__bit_axiom
  (assert
  (<= 0 objt_types_jauge__objt_liste_jauge__vector__capacity__first__bit))

;; objt_types_jauge__objt_liste_jauge__vector__capacity__last__bit_axiom
  (assert
  (< objt_types_jauge__objt_liste_jauge__vector__capacity__first__bit 
  objt_types_jauge__objt_liste_jauge__vector__capacity__last__bit))

;; objt_types_jauge__objt_liste_jauge__vector__capacity__position_axiom
  (assert
  (<= 0 objt_types_jauge__objt_liste_jauge__vector__capacity__position))

(declare-fun dummy3 () us_rep1)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_rep1)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep1 (vector__content
                                                               a))

(declare-sort extended_index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 4)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (extended_index extended_index) Bool)

(declare-fun dummy4 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref_2__projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep2 0)

(declare-fun bool_eq4 (us_rep2 us_rep2) Bool)

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

(declare-fun get (us_rep2 Int) us_rep)

(declare-fun get__function_guard (us_rep us_rep2 Int) Bool)

(define-fun contains ((container us_rep2) (fst Int) (lst Int)
  (item us_rep)) Bool (ite (exists ((i Int))
                           (and (and (<= fst i) (<= i lst))
                           (= (let ((temp___138 (get container i)))
                              (and (ite (= (attr__tag temp___138) (attr__tag
                                                                  item))
                                   true false) (us_dispatch_eq temp___138
                                               item))) true)))
                      true false))

(declare-fun contains__function_guard (Bool us_rep2 Int Int us_rep) Bool)

(declare-fun length (us_rep2) Int)

(declare-fun length__function_guard (Int us_rep2) Bool)

(define-fun last ((container us_rep2)) Int (+ 0 (length container)))

(declare-fun last__function_guard (Int us_rep2) Bool)

(declare-fun model__ (us_rep1) us_rep2)

(declare-fun model____function_guard (us_rep2 us_rep1) Bool)

(declare-fun length1 (us_rep1) Int)

(declare-fun length__function_guard1 (Int us_rep1) Bool)

(define-fun oeq ((left us_rep2)
  (right us_rep2)) Bool (and (= (length left) (length right)) (ite (forall
                                                                   ((n Int))
                                                                   (=>
                                                                   (and
                                                                   (<= 1 n)
                                                                   (<= n 
                                                                   (last
                                                                   left)))
                                                                   (= 
                                                                   (let ((temp___133 
                                                                   (get right
                                                                   n)))
                                                                   (let ((temp___132 
                                                                   (get left
                                                                   n)))
                                                                   (and 
                                                                   (ite (= 
                                                                   (attr__tag
                                                                   temp___132) 
                                                                   (attr__tag
                                                                   temp___133))
                                                                   true
                                                                   false) 
                                                                   (us_dispatch_eq
                                                                   temp___132
                                                                   temp___133)))) true)))
                                                              true false)))

(declare-fun oeq__function_guard (Bool us_rep2 us_rep2) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep2) (b us_rep2))
  (! (= (user_eq5 a b) (oeq a b)) :pattern ((user_eq5 a b)) )))

(define-fun default_initial_assumption1 ((temp___expr_279 us_rep2)
  (temp___skip_top_level_280 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_280 true))
                                         (= (length temp___expr_279) 0)))

;; model____post_axiom
  (assert
  (forall ((container us_rep1))
  (! (= (length (model__ container)) (length1 container)) :pattern ((model__
                                                                    container)) )))

(define-fun last_index ((container us_rep1)) Int (last (model__ container)))

(declare-fun last_index__function_guard (Int us_rep1) Bool)

(declare-sort extended_index1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 5)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (extended_index1 extended_index1) Bool)

(declare-fun dummy6 () extended_index1)

(declare-datatypes ()
((extended_index__ref1
 (mk_extended_index__ref1 (extended_index__content1 extended_index1)))))
(define-fun extended_index__ref___projection ((a extended_index__ref1)) extended_index1 
  (extended_index__content1 a))

(define-fun dynamic_invariant1 ((temp___expr_241 Int)
  (temp___is_init_238 Bool) (temp___skip_constant_239 Bool)
  (temp___do_toplevel_240 Bool)) Bool (=>
                                      (or (= temp___is_init_238 true)
                                      (<= 0 5)) (in_range4 temp___expr_241)))

(declare-fun container () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun item () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun index () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort count_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (count_type count_type) Bool)

(declare-fun dummy7 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_209 Int)
  (temp___is_init_206 Bool) (temp___skip_constant_207 Bool)
  (temp___do_toplevel_208 Bool)) Bool (=>
                                      (or (= temp___is_init_206 true)
                                      (<= 0 2147483647)) (in_range5
                                      temp___expr_209)))

(define-fun dynamic_invariant3 ((temp___expr_247 Int)
  (temp___is_init_244 Bool) (temp___skip_constant_245 Bool)
  (temp___do_toplevel_246 Bool)) Bool (=>
                                      (or (= temp___is_init_244 true)
                                      (<= 0 4)) (in_range2 temp___expr_247)))

(declare-fun to_rep (capacity_range) Int)

(declare-fun of_rep (Int) capacity_range)

;; inversion_axiom
  (assert
  (forall ((x capacity_range))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x capacity_range)) (! (in_range2
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(define-fun capacity ((container1 us_rep1)) Int (ite (= (of_int 1) true)
                                                (to_rep
                                                (rec__objt_types_jauge__objt_liste_jauge__vector__capacity
                                                (us_split_discrs1 container1)))
                                                4))

(declare-fun capacity__function_guard (Int us_rep1) Bool)

;; length__post_axiom
  (assert
  (forall ((container1 us_rep1))
  (! (let ((result (length1 container1)))
     (and (<= result (capacity container1)) (dynamic_invariant3 result true
     false true))) :pattern ((length1 container1)) )))

(define-fun dynamic_invariant4 ((temp___expr_272 Int)
  (temp___is_init_269 Bool) (temp___skip_constant_270 Bool)
  (temp___do_toplevel_271 Bool)) Bool (=>
                                      (or (= temp___is_init_269 true)
                                      (<= 0 4)) (in_range3 temp___expr_272)))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (! (let ((result (length container1)))
     (and (<= (+ 0 result) 4) (dynamic_invariant2 result true false true))) :pattern (
  (length container1)) )))

;; get__post_axiom
  (assert true)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun result () Bool)

;; H
  (assert (in_range1 index))

;; H
  (assert
  (and (= o (last (model__ container)))
  (and (in_range4 o) (= o (last (model__ container))))))

;; H
  (assert (= result (ite (<= index o) true false)))

;; H
  (assert (not (= result true)))

;; H
  (assert
  (and (= o1 (last (model__ container)))
  (and (in_range4 o1) (= o1 (last (model__ container))))))

(assert
;; WP_parameter_def
 ;; File "a-cfinve.ads", line 720, characters 0-0
  (not (in_range3 o1)))
(check-sat)
