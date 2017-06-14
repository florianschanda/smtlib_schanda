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

(declare-sort tcount_typeB 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy1 () tcount_typeB)

(declare-datatypes ()
((tcount_typeB__ref
 (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB 
  (tcount_typeB__content a))

(declare-sort resource 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 10000)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (resource resource) Bool)

(declare-fun dummy2 () resource)

(declare-datatypes ()
((resource__ref (mk_resource__ref (resource__content resource)))))
(define-fun resource__ref___projection ((a resource__ref)) resource (resource__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_148 Int)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (or (= temp___is_init_145 true)
                                      (<= 0 10000)) (in_range3
                                      temp___expr_148)))

(declare-fun to_rep (resource) Int)

(declare-fun of_rep (Int) resource)

;; inversion_axiom
  (assert
  (forall ((x resource))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x resource)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort valid_resource 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 10000)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (valid_resource valid_resource) Bool)

(declare-fun dummy3 () valid_resource)

(declare-datatypes ()
((valid_resource__ref
 (mk_valid_resource__ref (valid_resource__content valid_resource)))))
(define-fun valid_resource__ref___projection ((a valid_resource__ref)) valid_resource 
  (valid_resource__content a))

(declare-sort status 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (status status) Bool)

(declare-fun dummy4 () status)

(declare-datatypes ()
((status__ref (mk_status__ref (status__content status)))))
(define-fun status__ref___projection ((a status__ref)) status (status__content
                                                              a))

(declare-fun to_rep1 (status) Int)

(declare-fun of_rep1 (Int) status)

;; inversion_axiom
  (assert
  (forall ((x status))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x status)) (! (in_range5 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__list_allocator__cell__stat status)(rec__list_allocator__cell__next resource)))))
(define-fun us_split_fields_Stat__projection ((a us_split_fields)) status 
  (rec__list_allocator__cell__stat a))

(define-fun us_split_fields_Next__projection ((a us_split_fields)) resource 
  (rec__list_allocator__cell__next a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq5 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep1
                           (rec__list_allocator__cell__stat
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__list_allocator__cell__stat
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__list_allocator__cell__next
                           (us_split_fields1 a))) (to_rep
                                                  (rec__list_allocator__cell__next
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq5 (us_rep us_rep) Bool)

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

(declare-fun list_allocator__cell__stat__first__bit () Int)

(declare-fun list_allocator__cell__stat__last__bit () Int)

(declare-fun list_allocator__cell__stat__position () Int)

;; list_allocator__cell__stat__first__bit_axiom
  (assert (<= 0 list_allocator__cell__stat__first__bit))

;; list_allocator__cell__stat__last__bit_axiom
  (assert
  (< list_allocator__cell__stat__first__bit list_allocator__cell__stat__last__bit))

;; list_allocator__cell__stat__position_axiom
  (assert (<= 0 list_allocator__cell__stat__position))

(declare-fun list_allocator__cell__next__first__bit () Int)

(declare-fun list_allocator__cell__next__last__bit () Int)

(declare-fun list_allocator__cell__next__position () Int)

;; list_allocator__cell__next__first__bit_axiom
  (assert (<= 0 list_allocator__cell__next__first__bit))

;; list_allocator__cell__next__last__bit_axiom
  (assert
  (< list_allocator__cell__next__first__bit list_allocator__cell__next__last__bit))

;; list_allocator__cell__next__position_axiom
  (assert (<= 0 list_allocator__cell__next__position))

(declare-fun dummy5 () us_rep)

(declare-datatypes () ((cell__ref (mk_cell__ref (cell__content us_rep)))))
(define-fun cell__ref___projection ((a cell__ref)) us_rep (cell__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int us_rep) Int Int (Array Int us_rep) Int
  Int) (Array Int us_rep))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (us_rep Int) (Array Int us_rep))

;; singleton_def
  (assert
  (forall ((v us_rep))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq6 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (bool_eq5 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq5 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep1 0)

(declare-fun bool_eq7 (us_rep1 us_rep1) Bool)

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

(declare-fun dummy6 () us_rep1)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content
                                                                   a))

(declare-fun length (us_rep1) Int)

(declare-fun length__function_guard (Int us_rep1) Bool)

(declare-sort count_type 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (count_type count_type) Bool)

(declare-fun dummy7 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 2147483647)) (in_range6
                                      temp___expr_142)))

(define-fun last ((container us_rep1)) Int (+ 0 (length container)))

(declare-fun last__function_guard (Int us_rep1) Bool)

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

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
  (! (= (user_eq6 a b) (oeq a b)) :pattern ((user_eq6 a b)) )))

(define-fun default_initial_assumption ((temp___expr_185 us_rep1)
  (temp___skip_top_level_186 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_186 true))
                                         (= (length temp___expr_185) 0)))

;; length__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (length container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant1 result true false
     true))) :pattern ((length container)) )))

(declare-sort element_type 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 10000)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (element_type element_type) Bool)

(declare-fun dummy8 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_172 Int)
  (temp___is_init_169 Bool) (temp___skip_constant_170 Bool)
  (temp___do_toplevel_171 Bool)) Bool (=>
                                      (or (= temp___is_init_169 true)
                                      (<= 0 10000)) (in_range7
                                      temp___expr_172)))

(declare-sort extended_index 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (extended_index extended_index) Bool)

(declare-fun dummy9 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant3 ((temp___expr_178 Int)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (=>
                                      (or (= temp___is_init_175 true)
                                      (<= 0 2147483647)) (in_range8
                                      temp___expr_178)))

;; get__post_axiom
  (assert
  (forall ((container us_rep1))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant3 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant2 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-sort element_type1 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 10000)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq10 (element_type1 element_type1) Bool)

(declare-fun dummy10 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_2__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep2 0)

(declare-fun bool_eq12 (us_rep2 us_rep2) Bool)

(declare-fun user_eq11 (us_rep2 us_rep2) Bool)

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

(declare-fun dummy11 () us_rep2)

(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep2)))))
(define-fun set__ref___projection ((a set__ref)) us_rep2 (set__content a))

(declare-fun contains (us_rep2 Int) Bool)

(declare-fun contains__function_guard (Bool us_rep2 Int) Bool)

(define-fun dynamic_invariant4 ((temp___expr_191 Int)
  (temp___is_init_188 Bool) (temp___skip_constant_189 Bool)
  (temp___do_toplevel_190 Bool)) Bool (=>
                                      (or (= temp___is_init_188 true)
                                      (<= 0 10000)) (in_range9
                                      temp___expr_191)))

(declare-fun is_empty (us_rep2) Bool)

(declare-fun is_empty__function_guard (Bool us_rep2) Bool)

(define-fun default_initial_assumption1 ((temp___expr_198 us_rep2)
  (temp___skip_top_level_199 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_199 true))
                                         (= (is_empty temp___expr_198) true)))

;; contains__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((item Int))
  (! (=> (dynamic_invariant4 item true true true)
     (=> (= (of_int 1) true)
     (=>
     (exists ((e Int))
     (and (and (in_range9 e) (= (contains container e) true)) (= e item)))
     (= (contains container item) true)))) :pattern ((contains container
                                                     item)) ))))

(declare-fun length1 (us_rep2) Int)

(declare-fun length__function_guard1 (Int us_rep2) Bool)

;; length__post_axiom
  (assert
  (forall ((container us_rep2)) (! (dynamic_invariant1 (length1 container)
  true false true) :pattern ((length1 container)) )))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__list_allocator__m__t__available us_rep1)(rec__list_allocator__m__t__allocated us_rep2)))))
(define-fun us_split_fields_Available__projection ((a us_split_fields2)) us_rep1 
  (rec__list_allocator__m__t__available a))

(define-fun us_split_fields_Allocated__projection ((a us_split_fields2)) us_rep2 
  (rec__list_allocator__m__t__allocated a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep3 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___projection ((a us_rep3)) us_split_fields2 (us_split_fields3
                                                               a))

(define-fun bool_eq13 ((a us_rep3)
  (b us_rep3)) Bool (ite (and
                         (= (user_eq6
                            (rec__list_allocator__m__t__available
                            (us_split_fields3 a))
                            (rec__list_allocator__m__t__available
                            (us_split_fields3 b))) true)
                         (= (bool_eq12
                            (rec__list_allocator__m__t__allocated
                            (us_split_fields3 a))
                            (rec__list_allocator__m__t__allocated
                            (us_split_fields3 b))) true))
                    true false))

(declare-fun user_eq12 (us_rep3 us_rep3) Bool)

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

(declare-fun list_allocator__m__t__available__first__bit () Int)

(declare-fun list_allocator__m__t__available__last__bit () Int)

(declare-fun list_allocator__m__t__available__position () Int)

;; list_allocator__m__t__available__first__bit_axiom
  (assert (<= 0 list_allocator__m__t__available__first__bit))

;; list_allocator__m__t__available__last__bit_axiom
  (assert
  (< list_allocator__m__t__available__first__bit list_allocator__m__t__available__last__bit))

;; list_allocator__m__t__available__position_axiom
  (assert (<= 0 list_allocator__m__t__available__position))

(declare-fun list_allocator__m__t__allocated__first__bit () Int)

(declare-fun list_allocator__m__t__allocated__last__bit () Int)

(declare-fun list_allocator__m__t__allocated__position () Int)

;; list_allocator__m__t__allocated__first__bit_axiom
  (assert (<= 0 list_allocator__m__t__allocated__first__bit))

;; list_allocator__m__t__allocated__last__bit_axiom
  (assert
  (< list_allocator__m__t__allocated__first__bit list_allocator__m__t__allocated__last__bit))

;; list_allocator__m__t__allocated__position_axiom
  (assert (<= 0 list_allocator__m__t__allocated__position))

(declare-fun dummy12 () us_rep3)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep3)))))
(define-fun t__ref___projection ((a t__ref)) us_rep3 (t__content a))

(declare-fun oeq1 (us_rep3 us_rep3) Bool)

(declare-fun oeq__function_guard1 (Bool us_rep3 us_rep3) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep3) (b us_rep3))
  (! (and (oeq__function_guard1 (oeq1 a b) a b)
     (= (user_eq12 a b) (oeq1 a b))) :pattern ((user_eq12 a b)) )))

(define-fun default_initial_assumption2 ((temp___expr_212 us_rep3)
  (temp___skip_top_level_213 Bool)) Bool (and
                                         (= (length
                                            (rec__list_allocator__m__t__available
                                            (us_split_fields3
                                            temp___expr_212))) 0)
                                         (= (is_empty
                                            (rec__list_allocator__m__t__allocated
                                            (us_split_fields3
                                            temp___expr_212))) true)))

(declare-fun contains1 (us_rep1 Int) Bool)

(declare-fun contains__function_guard1 (Bool us_rep1 Int) Bool)

;; contains__post_axiom
  (assert true)

;; contains__def_axiom
  (assert
  (forall ((s us_rep1))
  (forall ((e Int))
  (! (=> (contains__function_guard1 (contains1 s e) s e)
     (= (= (contains1 s e) true)
     (exists ((i Int))
     (and (and (<= 1 i) (<= i (length s))) (= (get s i) e))))) :pattern (
  (contains1 s e)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant5 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant6 ((temp___expr_243 Int)
  (temp___is_init_240 Bool) (temp___skip_constant_241 Bool)
  (temp___do_toplevel_242 Bool)) Bool (=>
                                      (or (= temp___is_init_240 true)
                                      (<= 0 1)) (in_range5 temp___expr_243)))

(define-fun dynamic_invariant7 ((temp___expr_154 Int)
  (temp___is_init_151 Bool) (temp___skip_constant_152 Bool)
  (temp___do_toplevel_153 Bool)) Bool (=>
                                      (or (= temp___is_init_151 true)
                                      (<= 1 10000)) (in_range4
                                      temp___expr_154)))

(declare-fun oeq2 (us_rep2 us_rep2) Bool)

(declare-fun oeq__function_guard2 (Bool us_rep2 us_rep2) Bool)

;; oeq__post_axiom
  (assert true)

;; oeq__def_axiom
  (assert
  (forall ((x us_rep3) (y us_rep3))
  (! (=> (oeq__function_guard1 (oeq1 x y) x y)
     (= (= (oeq1 x y) true)
     (and
     (= (oeq (rec__list_allocator__m__t__available (us_split_fields3 x))
        (rec__list_allocator__m__t__available (us_split_fields3 y))) true)
     (= (oeq2 (rec__list_allocator__m__t__allocated (us_split_fields3 x))
        (rec__list_allocator__m__t__allocated (us_split_fields3 y))) true)))) :pattern (
  (oeq1 x y)) )))

(declare-fun ole (us_rep2 us_rep2) Bool)

(declare-fun ole__function_guard (Bool us_rep2 us_rep2) Bool)

;; ole__post_axiom
  (assert
  (forall ((left us_rep2) (right us_rep2))
  (! (= (= (ole left right) true)
     (forall ((item Int))
     (=> (and (in_range9 item) (= (contains left item) true))
     (= (contains right item) true)))) :pattern ((ole left right)) )))

;; oeq__post_axiom
  (assert
  (forall ((left us_rep2) (right us_rep2))
  (! (= (= (oeq2 left right) true)
     (and (= (ole left right) true) (= (ole right left) true))) :pattern (
  (oeq2 left right)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep2))
  (! (let ((result (is_empty container)))
     (and
     (= (= result true)
     (forall ((item Int))
     (not (and (in_range9 item) (= (contains container item) true)))))
     (= (= result true) (= (length1 container) 0)))) :pattern ((is_empty
                                                               container)) )))

(declare-fun model____split_fields () us_rep1)

(declare-fun model____split_fields1 () us_rep2)

(declare-fun first_available () Int)

(declare-fun j () Int)

(declare-fun o () Int)

(declare-fun o1 () Bool)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () Int)

(declare-fun o12 () Int)

(declare-fun result () Bool)

(declare-fun result1 () Bool)

(declare-fun result2 () Bool)

(declare-fun result3 () Bool)

(declare-fun result4 () Bool)

(declare-fun result5 () Bool)

(declare-fun result6 () Bool)

(declare-fun result7 () Bool)

;; H
  (assert (in_range3 first_available))

;; H
  (assert
  (and (= o12 (length model____split_fields))
  (and (in_range6 o12) (<= (+ 0 o12) 2147483647))))

;; H
  (assert (= result3 (ite (<= o12 10000) true false)))

;; H
  (assert
  (=> (= result3 true)
  (and (= o11 (length1 model____split_fields1)) (in_range6 o11))))

;; H
  (assert (=> (= result3 true) (= result2 (ite (<= o11 10000) true false))))

;; H
  (assert (=> (not (= result3 true)) (= result2 false)))

;; H
  (assert
  (=> (= result2 true)
  (and (= o7 (length1 model____split_fields1)) (in_range6 o7))))

;; H
  (assert
  (=> (= result2 true)
  (and (= o8 (length model____split_fields))
  (and (in_range6 o8) (<= (+ 0 o8) 2147483647)))))

;; H
  (assert (=> (= result2 true) (= o9 (+ o8 o7))))

;; H
  (assert (=> (= result2 true) (and (= o10 o9) (in_range2 o9))))

;; H
  (assert (=> (= result2 true) (= result1 (ite (= o10 10000) true false))))

;; H
  (assert (=> (not (= result2 true)) (= result1 false)))

;; H
  (assert
  (=> (= result1 true)
  (=> (not (= first_available 0))
  (and (= o5 (length model____split_fields))
  (and (in_range6 o5) (<= (+ 0 o5) 2147483647))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (not (= first_available 0)) (= result4 (ite (< 0 o5) true false)))))

;; H
  (assert
  (=> (= result1 true)
  (=> (not (= first_available 0))
  (=> (= result4 true)
  (and (= o4 (get model____split_fields 1)) (in_range7 o4))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (not (= first_available 0))
  (=> (= result4 true) (= result (ite (= o4 first_available) true false))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (not (= first_available 0))
  (=> (not (= result4 true)) (= result false)))))

;; H
  (assert
  (=> (= result1 true)
  (=> (not (not (= first_available 0)))
  (and (= o6 (length model____split_fields))
  (and (in_range6 o6) (<= (+ 0 o6) 2147483647))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (not (not (= first_available 0))) (= result (ite (= o6 0) true false)))))

;; H
  (assert (=> (not (= result1 true)) (= result false)))

;; H
  (assert (= result true))

;; H
  (assert
  (and (= o (length model____split_fields))
  (and (in_range6 o) (<= (+ 0 o) 2147483647))))

;; H
  (assert (= o1 (ite (<= j o) true false)))

;; H
  (assert (= result5 (ite (<= 1 j) o1 false)))

;; H
  (assert (= result5 true))

;; H
  (assert (and (= o3 (get model____split_fields j)) (in_range7 o3)))

;; H
  (assert (= result6 (ite (in_range4 o3) true false)))

;; H
  (assert (= result6 true))

;; H
  (assert
  (and (= o2 (length model____split_fields))
  (and (in_range6 o2) (<= (+ 0 o2) 2147483647))))

;; H
  (assert (= result7 (ite (< j o2) true false)))

;; H
  (assert (= result7 true))

(assert
;; WP_parameter_def
 ;; File "list_allocator.ads", line 82, characters 0-0
  (not (in_range1 (+ j 1))))
(check-sat)
