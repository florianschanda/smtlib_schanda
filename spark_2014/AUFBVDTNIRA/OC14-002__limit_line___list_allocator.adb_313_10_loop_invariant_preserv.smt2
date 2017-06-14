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

(declare-sort tresourceB 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (tresourceB tresourceB) Bool)

(declare-fun dummy () tresourceB)

(declare-datatypes ()
((tresourceB__ref (mk_tresourceB__ref (tresourceB__content tresourceB)))))
(define-fun tresourceB__ref___projection ((a tresourceB__ref)) tresourceB 
  (tresourceB__content a))

(declare-sort resource 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (resource resource) Bool)

(declare-fun dummy1 () resource)

(declare-datatypes ()
((resource__ref (mk_resource__ref (resource__content resource)))))
(define-fun resource__ref___projection ((a resource__ref)) resource (resource__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_284 Int)
  (temp___is_init_281 Bool) (temp___skip_constant_282 Bool)
  (temp___do_toplevel_283 Bool)) Bool (=>
                                      (or (= temp___is_init_281 true)
                                      (<= 0 3)) (in_range2 temp___expr_284)))

(declare-fun to_rep (resource) Int)

(declare-fun of_rep (Int) resource)

;; inversion_axiom
  (assert
  (forall ((x resource))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x resource)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort valid_resource 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (valid_resource valid_resource) Bool)

(declare-fun dummy2 () valid_resource)

(declare-datatypes ()
((valid_resource__ref
 (mk_valid_resource__ref (valid_resource__content valid_resource)))))
(define-fun valid_resource__ref___projection ((a valid_resource__ref)) valid_resource 
  (valid_resource__content a))

(declare-fun no_resource () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort status 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (status status) Bool)

(declare-fun dummy3 () status)

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
  (forall ((x status)) (! (in_range4 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__list_allocator__cell__stat status)(rec__list_allocator__cell__prev resource)(rec__list_allocator__cell__next resource)))))
(define-fun us_split_fields_Stat__projection ((a us_split_fields)) status 
  (rec__list_allocator__cell__stat a))

(define-fun us_split_fields_Prev__projection ((a us_split_fields)) resource 
  (rec__list_allocator__cell__prev a))

(define-fun us_split_fields_Next__projection ((a us_split_fields)) resource 
  (rec__list_allocator__cell__next a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_6__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_8__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq4 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep1
                           (rec__list_allocator__cell__stat
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__list_allocator__cell__stat
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__list_allocator__cell__prev
                           (us_split_fields1 a))) (to_rep
                                                  (rec__list_allocator__cell__prev
                                                  (us_split_fields1 b)))))
                        (= (to_rep
                           (rec__list_allocator__cell__next
                           (us_split_fields1 a))) (to_rep
                                                  (rec__list_allocator__cell__next
                                                  (us_split_fields1 b)))))
                   true false))

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

(declare-fun list_allocator__cell__prev__first__bit () Int)

(declare-fun list_allocator__cell__prev__last__bit () Int)

(declare-fun list_allocator__cell__prev__position () Int)

;; list_allocator__cell__prev__first__bit_axiom
  (assert (<= 0 list_allocator__cell__prev__first__bit))

;; list_allocator__cell__prev__last__bit_axiom
  (assert
  (< list_allocator__cell__prev__first__bit list_allocator__cell__prev__last__bit))

;; list_allocator__cell__prev__position_axiom
  (assert (<= 0 list_allocator__cell__prev__position))

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

(declare-fun dummy4 () us_rep)

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

(define-fun bool_eq5 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (bool_eq4 (select a temp___idx_133)
                              (select b (+ (- b__first a__first) temp___idx_133))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq4 (select a temp___idx_133)
     (select b (+ (- b__first a__first) temp___idx_133))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun all_available ((Array Int us_rep)) Bool)

(declare-fun all_available__function_guard (Bool (Array Int us_rep)) Bool)

;; all_available__post_axiom
  (assert true)

;; all_available__def_axiom
  (assert
  (forall ((list_allocator__data (Array Int us_rep)))
  (! (=> (all_available__function_guard (all_available list_allocator__data)
     list_allocator__data)
     (= (= (all_available list_allocator__data) true)
     (forall ((r Int))
     (=> (and (<= 1 r) (<= r 3))
     (= (to_rep1
        (rec__list_allocator__cell__stat
        (us_split_fields1 (select list_allocator__data r)))) 0))))) :pattern (
  (all_available list_allocator__data)) )))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep1 0)

(declare-fun bool_eq6 (us_rep1 us_rep1) Bool)

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

(declare-fun length (us_rep1) Int)

(declare-fun length__function_guard (Int us_rep1) Bool)

(declare-fun length1 (Int us_rep1) Int)

(declare-fun length__function_guard1 (Int Int us_rep1) Bool)

(declare-sort natural 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (natural natural) Bool)

(declare-fun dummy6 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range5
                                     temp___expr_33)))

(declare-fun oeq (us_rep1 us_rep1) Bool)

(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)

(declare-fun oeq1 (Int us_rep1 us_rep1) Bool)

(declare-fun oeq__function_guard1 (Bool Int us_rep1 us_rep1) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (and (oeq__function_guard (oeq a b) a b) (= (user_eq5 a b) (oeq a b))) :pattern (
  (user_eq5 a b)) )))

;; temp___result_313_def
  (assert
  (forall ((temp___312 us_rep1)) (length__function_guard (length temp___312)
  temp___312)))

(define-fun default_initial_assumption ((temp___expr_310 us_rep1)
  (temp___skip_top_level_311 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_311 true))
                                         (= (length temp___expr_310) 0)))

;; length__post_axiom
  (assert
  (forall ((s us_rep1))
  (! (let ((result (length s)))
     (=> (length__function_guard result s) (dynamic_invariant1 result true
     false true))) :pattern ((length s)) )))

;; length__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((s us_rep1))
  (! (let ((result (length1 attr__tag s)))
     (=> (length__function_guard1 result attr__tag s) (dynamic_invariant1
     result true false true))) :pattern ((length1 attr__tag s)) ))))

(declare-sort element_type 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (element_type element_type) Bool)

(declare-fun dummy7 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_302 Int)
  (temp___is_init_299 Bool) (temp___skip_constant_300 Bool)
  (temp___do_toplevel_301 Bool)) Bool (=>
                                      (or (= temp___is_init_299 true)
                                      (<= 0 3)) (in_range6 temp___expr_302)))

(declare-fun is_add (us_rep1 Int us_rep1) Bool)

(declare-fun is_add__function_guard (Bool us_rep1 Int us_rep1) Bool)

(declare-fun is_add1 (Int us_rep1 Int us_rep1) Bool)

(declare-fun is_add__function_guard1 (Bool Int us_rep1 Int us_rep1) Bool)

(declare-fun add (us_rep1 Int) us_rep1)

(declare-fun add__function_guard (us_rep1 us_rep1 Int) Bool)

(declare-fun add1 (Int us_rep1 Int) us_rep1)

(declare-fun add__function_guard1 (us_rep1 Int us_rep1 Int) Bool)

;; add__post_axiom
  (assert
  (forall ((s us_rep1))
  (forall ((e Int))
  (! (=> (dynamic_invariant2 e true true true)
     (let ((result (add s e)))
     (and (is_add__function_guard (is_add s e result) s e result)
     (=> (add__function_guard result s e) (= (is_add s e result) true))))) :pattern (
  (add s e)) ))))

;; add__post__dispatch_axiom
  (assert true)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__list_allocator__m__t__available us_rep1)(rec__list_allocator__m__t__allocated us_rep1)))))
(define-fun us_split_fields_Available__projection ((a us_split_fields2)) us_rep1 
  (rec__list_allocator__m__t__available a))

(define-fun us_split_fields_Allocated__projection ((a us_split_fields2)) us_rep1 
  (rec__list_allocator__m__t__allocated a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_5__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep2 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_7__projection ((a us_rep2)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq9 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (= (user_eq5
                            (rec__list_allocator__m__t__available
                            (us_split_fields3 a))
                            (rec__list_allocator__m__t__available
                            (us_split_fields3 b))) true)
                         (= (user_eq5
                            (rec__list_allocator__m__t__allocated
                            (us_split_fields3 a))
                            (rec__list_allocator__m__t__allocated
                            (us_split_fields3 b))) true))
                    true false))

(declare-fun user_eq8 (us_rep2 us_rep2) Bool)

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

(declare-fun dummy8 () us_rep2)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep2)))))
(define-fun t__ref___projection ((a t__ref)) us_rep2 (t__content a))

(declare-fun oeq2 (us_rep2 us_rep2) Bool)

(declare-fun oeq__function_guard2 (Bool us_rep2 us_rep2) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep2) (b us_rep2))
  (! (and (oeq__function_guard2 (oeq2 a b) a b)
     (= (user_eq8 a b) (oeq2 a b))) :pattern ((user_eq8 a b)) )))

;; temp___result_403_def
  (assert
  (forall ((temp___402 us_rep1)) (length__function_guard (length temp___402)
  temp___402)))

;; temp___result_406_def
  (assert
  (forall ((temp___405 us_rep1)) (length__function_guard (length temp___405)
  temp___405)))

(define-fun default_initial_assumption1 ((temp___expr_399 us_rep2)
  (temp___skip_top_level_400 Bool)) Bool (and
                                         (= (length
                                            (rec__list_allocator__m__t__available
                                            (us_split_fields3
                                            temp___expr_399))) 0)
                                         (= (length
                                            (rec__list_allocator__m__t__allocated
                                            (us_split_fields3
                                            temp___expr_399))) 0)))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun mem (us_rep1 Int) Bool)

(declare-fun mem__function_guard (Bool us_rep1 Int) Bool)

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

(declare-fun get1 (Int us_rep1 Int) Int)

(declare-fun get__function_guard1 (Int Int us_rep1 Int) Bool)

;; mem__post_axiom
  (assert true)

;; mem__def_axiom
  (assert
  (forall ((s us_rep1))
  (forall ((r Int))
  (! (=> (mem__function_guard (mem s r) s r)
     (and (length__function_guard (length s) s)
     (and (forall ((j Int)) (get__function_guard (get s j) s j))
     (= (= (mem s r) true)
     (exists ((j Int))
     (and (and (<= 1 j) (<= j (length s))) (= (get s j) r))))))) :pattern (
  (mem s r)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-sort t3b 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq9 (t3b t3b) Bool)

(declare-fun dummy9 () t3b)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content t3b)))))
(define-fun t3b__ref___projection ((a t3b__ref)) t3b (t3b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun list_allocator__data__aggregate_def (us_rep) (Array Int us_rep))

;; def_axiom
  (assert
  (forall ((temp___549 us_rep))
  (forall ((temp___550 Int))
  (= (select (list_allocator__data__aggregate_def temp___549) temp___550) temp___549))))

(declare-sort positive 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq10 (positive positive) Bool)

(declare-fun dummy10 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant3 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range8
                                     temp___expr_39)))

(define-fun dynamic_invariant4 ((temp___expr_507 Int)
  (temp___is_init_504 Bool) (temp___skip_constant_505 Bool)
  (temp___do_toplevel_506 Bool)) Bool (=>
                                      (or (= temp___is_init_504 true)
                                      (<= 0 1)) (in_range4 temp___expr_507)))

(define-fun dynamic_invariant5 ((temp___expr_290 Int)
  (temp___is_init_287 Bool) (temp___skip_constant_288 Bool)
  (temp___do_toplevel_289 Bool)) Bool (=>
                                      (or (= temp___is_init_287 true)
                                      (<= 1 3)) (in_range3 temp___expr_290)))

;; no_resource__def_axiom
  (assert (= no_resource 0))

;; oeq__post_axiom
  (assert true)

;; oeq__def_axiom
  (assert
  (forall ((x us_rep2) (y us_rep2))
  (! (=> (oeq__function_guard2 (oeq2 x y) x y)
     (and (oeq__function_guard
     (oeq (rec__list_allocator__m__t__available (us_split_fields3 x))
     (rec__list_allocator__m__t__available (us_split_fields3 y)))
     (rec__list_allocator__m__t__available (us_split_fields3 x))
     (rec__list_allocator__m__t__available (us_split_fields3 y)))
     (and (oeq__function_guard
     (oeq (rec__list_allocator__m__t__allocated (us_split_fields3 x))
     (rec__list_allocator__m__t__allocated (us_split_fields3 y)))
     (rec__list_allocator__m__t__allocated (us_split_fields3 x))
     (rec__list_allocator__m__t__allocated (us_split_fields3 y)))
     (= (= (oeq2 x y) true)
     (and
     (= (oeq (rec__list_allocator__m__t__available (us_split_fields3 x))
        (rec__list_allocator__m__t__available (us_split_fields3 y))) true)
     (= (oeq (rec__list_allocator__m__t__allocated (us_split_fields3 x))
        (rec__list_allocator__m__t__allocated (us_split_fields3 y))) true)))))) :pattern (
  (oeq2 x y)) )))

;; get__post_axiom
  (assert
  (forall ((s us_rep1))
  (forall ((n Int))
  (! (and (length__function_guard (length s) s)
     (=>
     (and (dynamic_invariant3 n true true true)
     (and (<= 1 n) (<= n (length s))))
     (let ((result (get s n)))
     (=> (get__function_guard result s n) (dynamic_invariant2 result true
     false true))))) :pattern ((get s n)) ))))

;; get__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int) (n Int))
  (forall ((s us_rep1))
  (! (=> (dynamic_invariant3 n true true true)
     (let ((result (get1 attr__tag s n)))
     (=> (get__function_guard1 result attr__tag s n) (dynamic_invariant2
     result true false true)))) :pattern ((get1 attr__tag s n)) ))))

;; oeq__post_axiom
  (assert
  (forall ((s1 us_rep1) (s2 us_rep1))
  (! (let ((result (oeq s1 s2)))
     (and (length__function_guard (length s1) s1)
     (and (length__function_guard (length s2) s2)
     (and (length__function_guard (length s1) s1)
     (and (forall ((n Int)) (get__function_guard (get s1 n) s1 n))
     (and (forall ((n Int)) (get__function_guard (get s2 n) s2 n))
     (=> (oeq__function_guard result s1 s2)
     (= (= result true)
     (and (= (length s1) (length s2))
     (forall ((n Int))
     (=> (and (<= 1 n) (<= n (length s1))) (= (get s1 n) (get s2 n))))))))))))) :pattern (
  (oeq s1 s2)) )))

;; oeq__post__dispatch_axiom
  (assert true)

;; is_add__post_axiom
  (assert
  (forall ((s us_rep1) (result__ us_rep1))
  (forall ((e Int))
  (! (=> (dynamic_invariant2 e true true true)
     (let ((result (is_add s e result__)))
     (and (length__function_guard (length result__) result__)
     (and (length__function_guard (length s) s)
     (and (length__function_guard (length result__) result__)
     (and (length__function_guard (length result__) result__)
     (and (get__function_guard (get result__ (length result__)) result__
     (length result__))
     (and (length__function_guard (length s) s)
     (and
     (forall ((m Int)) (get__function_guard (get result__ m) result__ m))
     (and (forall ((m Int)) (get__function_guard (get s m) s m))
     (=> (is_add__function_guard result s e result__)
     (= (= result true)
     (and
     (and (= (length result__) (+ (length s) 1))
     (= (get result__ (length result__)) e))
     (forall ((m Int))
     (=> (and (<= 1 m) (<= m (length s))) (= (get result__ m) (get s m))))))))))))))))) :pattern (
  (is_add s e result__)) ))))

;; is_add__post__dispatch_axiom
  (assert true)

(declare-fun data () (Array Int us_rep))

(declare-fun first_available () Int)

(declare-fun first_allocated () Int)

(declare-fun r () Int)

(declare-fun o () resource)

(declare-fun o1 () resource)

(declare-fun o2 () status)

(declare-fun o3 () status)

(declare-fun o4 () resource)

(declare-fun o5 () resource)

(declare-fun o6 () status)

(declare-fun o7 () resource)

(declare-fun o8 () resource)

(declare-fun o9 () (Array Int us_rep))

(declare-fun o10 () resource)

(declare-fun o11 () status)

(declare-fun o12 () resource)

(declare-fun o13 () resource)

(declare-fun o14 () status)

(declare-fun o15 () resource)

(declare-fun o16 () resource)

(declare-fun o17 () (Array Int us_rep))

(declare-fun o18 () Int)

(declare-fun o19 () resource)

(declare-fun o20 () status)

(declare-fun o21 () resource)

(declare-fun o22 () resource)

(declare-fun o23 () status)

(declare-fun o24 () resource)

(declare-fun o25 () resource)

(declare-fun o26 () (Array Int us_rep))

(declare-fun o27 () resource)

(declare-fun o28 () status)

(declare-fun o29 () resource)

(declare-fun o30 () resource)

(declare-fun o31 () status)

(declare-fun o32 () resource)

(declare-fun o33 () resource)

(declare-fun o34 () (Array Int us_rep))

(declare-fun o35 () Int)

(declare-fun o36 () resource)

(declare-fun o37 () status)

(declare-fun o38 () resource)

(declare-fun o39 () resource)

(declare-fun o40 () status)

(declare-fun o41 () resource)

(declare-fun o42 () resource)

(declare-fun o43 () (Array Int us_rep))

(declare-fun result () map__ref)

(declare-fun data1 () (Array Int us_rep))

(declare-fun result1 () int__ref)

(declare-fun first_available1 () Int)

(declare-fun result2 () int__ref)

(declare-fun first_allocated1 () Int)

(declare-fun result3 () int__ref)

(declare-fun r1 () Int)

(declare-fun result4 () map__ref)

(declare-fun data2 () (Array Int us_rep))

(declare-fun result5 () map__ref)

(declare-fun data3 () (Array Int us_rep))

(declare-fun data4 () (Array Int us_rep))

(declare-fun r2 () Int)

(declare-fun result6 () int__ref)

(declare-fun r3 () Int)

(declare-fun result7 () map__ref)

(declare-fun data5 () (Array Int us_rep))

(declare-fun result8 () map__ref)

(declare-fun data6 () (Array Int us_rep))

;; H
  (assert (in_range2 no_resource))

;; H
  (assert (= (to_rep o) 0))

;; H
  (assert (= (to_rep o1) 0))

;; H
  (assert (= (to_rep1 o2) 0))

;; H
  (assert (= o2 o3))

;; H
  (assert (= o1 o4))

;; H
  (assert (= o o5))

;; H
  (assert (= o6 o3))

;; H
  (assert (= o7 o4))

;; H
  (assert (= o8 o5))

;; H
  (assert
  (= o9 (list_allocator__data__aggregate_def
        (mk___rep (mk___split_fields o6 o7 o8)))))

;; H
  (assert (= result (mk_map__ref data)))

;; H
  (assert (= data1 o9))

;; H
  (assert (= result1 (mk_int__ref first_available)))

;; H
  (assert (= first_available1 1))

;; H
  (assert (in_range2 first_available1))

;; H
  (assert (= result2 (mk_int__ref first_allocated)))

;; H
  (assert (= first_allocated1 0))

;; H
  (assert (in_range2 first_allocated1))

;; H
  (assert (= result3 (mk_int__ref r)))

;; H
  (assert (= r1 1))

;; H
  (assert (<= 1 r1))

;; H
  (assert (<= r1 3))

;; H
  (assert (=> (< 1 r1) (= (to_rep o10) (- r1 1))))

;; H
  (assert
  (=> (< 1 r1)
  (= (rec__list_allocator__cell__stat (us_split_fields1 (select data1 r1))) 
  o11)))

;; H
  (assert (=> (< 1 r1) (= o10 o12)))

;; H
  (assert
  (=> (< 1 r1)
  (= (rec__list_allocator__cell__next (us_split_fields1 (select data1 r1))) 
  o13)))

;; H
  (assert (=> (< 1 r1) (= o14 o11)))

;; H
  (assert (=> (< 1 r1) (= o15 o12)))

;; H
  (assert (=> (< 1 r1) (= o16 o13)))

;; H
  (assert
  (=> (< 1 r1)
  (= o17 (store data1 r1 (mk___rep (mk___split_fields o14 o15 o16))))))

;; H
  (assert (=> (< 1 r1) (= result4 (mk_map__ref data1))))

;; H
  (assert (=> (< 1 r1) (= data2 o17)))

;; H
  (assert (=> (not (< 1 r1)) (= data2 data1)))

;; H
  (assert (=> (< r1 3) (and (= o18 (+ r1 1)) (in_range2 (+ r1 1)))))

;; H
  (assert (=> (< r1 3) (= (to_rep o19) o18)))

;; H
  (assert
  (=> (< r1 3)
  (= (rec__list_allocator__cell__stat (us_split_fields1 (select data2 r1))) 
  o20)))

;; H
  (assert
  (=> (< r1 3)
  (= (rec__list_allocator__cell__prev (us_split_fields1 (select data2 r1))) 
  o21)))

;; H
  (assert (=> (< r1 3) (= o19 o22)))

;; H
  (assert (=> (< r1 3) (= o23 o20)))

;; H
  (assert (=> (< r1 3) (= o24 o21)))

;; H
  (assert (=> (< r1 3) (= o25 o22)))

;; H
  (assert
  (=> (< r1 3)
  (= o26 (store data2 r1 (mk___rep (mk___split_fields o23 o24 o25))))))

;; H
  (assert (=> (< r1 3) (= result5 (mk_map__ref data2))))

;; H
  (assert (=> (< r1 3) (= data3 o26)))

;; H
  (assert (=> (not (< r1 3)) (= data3 data2)))

;; H
  (assert
  (forall ((rr Int))
  (=> (and (<= 1 rr) (<= rr r2))
  (= (to_rep
     (rec__list_allocator__cell__prev (us_split_fields1 (select data4 rr)))) 
  (ite (= rr 1) 0 (- rr 1))))))

;; H
  (assert
  (forall ((rr Int))
  (=> (and (<= 1 rr) (<= rr r2))
  (= (to_rep
     (rec__list_allocator__cell__next (us_split_fields1 (select data4 rr)))) 
  (ite (= rr 3) 0 (+ rr 1))))))

;; H
  (assert
  (forall ((rr Int))
  (=> (and (<= 1 rr) (<= rr 3))
  (= (to_rep1
     (rec__list_allocator__cell__stat (us_split_fields1 (select data4 rr)))) 0))))

;; H
  (assert
  (and
  (and
  (forall ((temp___535 Int))
  (=> (and (<= 1 temp___535) (<= temp___535 3))
  (ite (< r2 temp___535)
  (= (select data4 temp___535) (select data1 temp___535))
  (= (rec__list_allocator__cell__stat
     (us_split_fields1 (select data4 temp___535))) (rec__list_allocator__cell__stat
                                                   (us_split_fields1
                                                   (select data1 temp___535)))))))
  (=> (<= 1 3) (in_range3 r2))) (and (<= 1 r2) (<= r2 3))))

;; H
  (assert (not (= r2 3)))

;; H
  (assert (= result6 (mk_int__ref r2)))

;; H
  (assert (= r3 (+ r2 1)))

;; H
  (assert (=> (< 1 r3) (= (to_rep o27) (- r3 1))))

;; H
  (assert
  (=> (< 1 r3)
  (= (rec__list_allocator__cell__stat (us_split_fields1 (select data4 r3))) 
  o28)))

;; H
  (assert (=> (< 1 r3) (= o27 o29)))

;; H
  (assert
  (=> (< 1 r3)
  (= (rec__list_allocator__cell__next (us_split_fields1 (select data4 r3))) 
  o30)))

;; H
  (assert (=> (< 1 r3) (= o31 o28)))

;; H
  (assert (=> (< 1 r3) (= o32 o29)))

;; H
  (assert (=> (< 1 r3) (= o33 o30)))

;; H
  (assert
  (=> (< 1 r3)
  (= o34 (store data4 r3 (mk___rep (mk___split_fields o31 o32 o33))))))

;; H
  (assert (=> (< 1 r3) (= result7 (mk_map__ref data4))))

;; H
  (assert (=> (< 1 r3) (= data5 o34)))

;; H
  (assert (=> (not (< 1 r3)) (= data5 data4)))

;; H
  (assert (=> (< r3 3) (and (= o35 (+ r3 1)) (in_range2 (+ r3 1)))))

;; H
  (assert (=> (< r3 3) (= (to_rep o36) o35)))

;; H
  (assert
  (=> (< r3 3)
  (= (rec__list_allocator__cell__stat (us_split_fields1 (select data5 r3))) 
  o37)))

;; H
  (assert
  (=> (< r3 3)
  (= (rec__list_allocator__cell__prev (us_split_fields1 (select data5 r3))) 
  o38)))

;; H
  (assert (=> (< r3 3) (= o36 o39)))

;; H
  (assert (=> (< r3 3) (= o40 o37)))

;; H
  (assert (=> (< r3 3) (= o41 o38)))

;; H
  (assert (=> (< r3 3) (= o42 o39)))

;; H
  (assert
  (=> (< r3 3)
  (= o43 (store data5 r3 (mk___rep (mk___split_fields o40 o41 o42))))))

;; H
  (assert (=> (< r3 3) (= result8 (mk_map__ref data5))))

;; H
  (assert (=> (< r3 3) (= data6 o43)))

;; H
  (assert (=> (not (< r3 3)) (= data6 data5)))

(declare-fun rr () Int)

;; H
  (assert (<= 1 rr))

;; H
  (assert (<= rr r3))

(assert
;; WP_parameter_def
 ;; File "list_allocator.adb", line 16, characters 0-0
  (not
  (= (to_rep
     (rec__list_allocator__cell__prev (us_split_fields1 (select data6 rr)))) 
  (ite (= rr 1) 0 (- rr 1)))))
(check-sat)
