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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-sort index_range 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (index_range index_range) Bool)

(declare-fun dummy2 () index_range)

(declare-datatypes ()
((index_range__ref (mk_index_range__ref (index_range__content index_range)))))
(define-fun index_range__ref___projection ((a index_range__ref)) index_range 
  (index_range__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort pointer_range 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 100)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (pointer_range pointer_range) Bool)

(declare-fun dummy3 () pointer_range)

(declare-datatypes ()
((pointer_range__ref
 (mk_pointer_range__ref (pointer_range__content pointer_range)))))
(define-fun pointer_range__ref___projection ((a pointer_range__ref)) pointer_range 
  (pointer_range__content a))

(declare-fun to_rep1 (pointer_range) Int)

(declare-fun of_rep1 (Int) pointer_range)

;; inversion_axiom
  (assert
  (forall ((x pointer_range))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x pointer_range)) (! (in_range4
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun dummy4 () (Array Int integer))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int integer)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int integer)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))

(declare-fun user_eq4 ((Array Int integer) (Array Int integer)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__stack_functional_spec__stack_type__s (Array Int integer))(rec__stack_functional_spec__stack_type__pointer pointer_range)))))
(define-fun us_split_fields_S__projection ((a us_split_fields)) (Array Int integer) 
  (rec__stack_functional_spec__stack_type__s a))

(define-fun us_split_fields_Pointer__projection ((a us_split_fields)) pointer_range 
  (rec__stack_functional_spec__stack_type__pointer a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq5 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (bool_eq3
                           (rec__stack_functional_spec__stack_type__s
                           (us_split_fields1 a)) 1 100
                           (rec__stack_functional_spec__stack_type__s
                           (us_split_fields1 b)) 1 100) true)
                        (= (to_rep1
                           (rec__stack_functional_spec__stack_type__pointer
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__stack_functional_spec__stack_type__pointer
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq5 (us_rep us_rep) Bool)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))

(declare-fun stack_functional_spec__stack_type__s__first__bit () Int)

(declare-fun stack_functional_spec__stack_type__s__last__bit () Int)

(declare-fun stack_functional_spec__stack_type__s__position () Int)

;; stack_functional_spec__stack_type__s__first__bit_axiom
  (assert (<= 0 stack_functional_spec__stack_type__s__first__bit))

;; stack_functional_spec__stack_type__s__last__bit_axiom
  (assert
  (< stack_functional_spec__stack_type__s__first__bit stack_functional_spec__stack_type__s__last__bit))

;; stack_functional_spec__stack_type__s__position_axiom
  (assert (<= 0 stack_functional_spec__stack_type__s__position))

(declare-fun stack_functional_spec__stack_type__pointer__first__bit () Int)

(declare-fun stack_functional_spec__stack_type__pointer__last__bit () Int)

(declare-fun stack_functional_spec__stack_type__pointer__position () Int)

;; stack_functional_spec__stack_type__pointer__first__bit_axiom
  (assert (<= 0 stack_functional_spec__stack_type__pointer__first__bit))

;; stack_functional_spec__stack_type__pointer__last__bit_axiom
  (assert
  (< stack_functional_spec__stack_type__pointer__first__bit stack_functional_spec__stack_type__pointer__last__bit))

;; stack_functional_spec__stack_type__pointer__position_axiom
  (assert (<= 0 stack_functional_spec__stack_type__pointer__position))

(declare-fun dummy5 () us_rep)

(declare-datatypes ()
((stack_type__ref (mk_stack_type__ref (stack_type__content us_rep)))))
(define-fun stack_type__ref___projection ((a stack_type__ref)) us_rep 
  (stack_type__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun state__2 (us_split_fields) us_rep)

(declare-fun state__2__function_guard (us_rep us_split_fields) Bool)

;; state__2__post_axiom
  (assert true)

;; state__2__def_axiom
  (assert
  (forall ((stack_functional_spec__my_stack__fields us_split_fields))
  (! (=> (state__2__function_guard
     (state__2 stack_functional_spec__my_stack__fields)
     stack_functional_spec__my_stack__fields)
     (= (state__2 stack_functional_spec__my_stack__fields) (mk___rep
                                                           stack_functional_spec__my_stack__fields))) :pattern (
  (state__2 stack_functional_spec__my_stack__fields)) )))

(declare-fun count (us_rep) Int)

(declare-fun count__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

;; count__post_axiom
  (assert
  (forall ((s us_rep))
  (! (let ((result (count s)))
     (=> (count__function_guard result s) (dynamic_invariant1 result true
     false true))) :pattern ((count s)) )))

;; count__def_axiom
  (assert
  (forall ((s us_rep))
  (! (=> (count__function_guard (count s) s)
     (= (count s) (to_rep1
                  (rec__stack_functional_spec__stack_type__pointer
                  (us_split_fields1 s))))) :pattern ((count s)) )))

(declare-fun stack_entry (us_rep Int) Int)

(declare-fun stack_entry__function_guard (Int us_rep Int) Bool)

;; stack_entry__post_axiom
  (assert
  (forall ((s us_rep))
  (forall ((n Int))
  (! (and (count__function_guard (count s) s)
     (=>
     (and (dynamic_invariant1 n true true true)
     (and (<= 1 n) (<= n (count s))))
     (let ((result (stack_entry s n)))
     (=> (stack_entry__function_guard result s n) (dynamic_invariant result
     true false true))))) :pattern ((stack_entry s n)) ))))

;; stack_entry__def_axiom
  (assert
  (forall ((s us_rep))
  (forall ((n Int))
  (! (=>
     (and (dynamic_invariant1 n true true true) (stack_entry__function_guard
     (stack_entry s n) s n))
     (= (stack_entry s n) (to_rep
                          (let ((temp___180 (rec__stack_functional_spec__stack_type__s
                                            (us_split_fields1 s))))
                          (select temp___180 n))))) :pattern ((stack_entry s
                                                              n)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant2 ((temp___expr_155 Int)
  (temp___is_init_152 Bool) (temp___skip_constant_153 Bool)
  (temp___do_toplevel_154 Bool)) Bool (=>
                                      (or (= temp___is_init_152 true)
                                      (<= 0 100)) (in_range4
                                      temp___expr_155)))

(define-fun dynamic_invariant3 ((temp___expr_140 Int)
  (temp___is_init_137 Bool) (temp___skip_constant_138 Bool)
  (temp___do_toplevel_139 Bool)) Bool (=>
                                      (or (= temp___is_init_137 true)
                                      (<= 1 100)) (in_range3
                                      temp___expr_140)))

(declare-fun my_stack__split_fields () (Array Int integer))

(declare-fun my_stack__split_fields1 () pointer_range)

(declare-fun temp () Int)

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () integer)

(declare-fun o5 () Int)

(declare-fun o6 () integer)

(declare-fun o7 () Int)

(declare-fun o8 () (Array Int integer))

(declare-fun o9 () (Array Int integer))

(declare-fun o10 () pointer_range)

(declare-fun temp___352 () (Array Int integer))

(declare-fun temp___3521 () pointer_range)

(declare-fun o11 () integer)

(declare-fun o12 () Int)

(declare-fun o13 () (Array Int integer))

(declare-fun o14 () (Array Int integer))

(declare-fun o15 () pointer_range)

(declare-fun temp___356 () (Array Int integer))

(declare-fun temp___3561 () pointer_range)

(declare-fun o16 () (Array Int integer))

(declare-fun o17 () pointer_range)

(declare-fun o18 () (Array Int integer))

(declare-fun o19 () pointer_range)

(declare-fun o20 () Int)

(declare-fun o21 () (Array Int integer))

(declare-fun o22 () pointer_range)

(declare-fun o23 () Int)

(declare-fun o24 () Int)

(declare-fun o25 () Int)

(declare-fun o26 () Int)

(declare-fun o27 () (Array Int integer))

(declare-fun o28 () pointer_range)

(declare-fun o29 () (Array Int integer))

(declare-fun o30 () pointer_range)

(declare-fun o31 () Int)

(declare-fun o32 () Int)

(declare-fun o33 () Int)

(declare-fun o34 () (Array Int integer))

(declare-fun o35 () pointer_range)

(declare-fun o36 () Int)

(declare-fun o37 () Int)

(declare-fun o38 () Int)

(declare-fun o39 () Bool)

(declare-fun i () Int)

(declare-fun o40 () us_rep)

(declare-fun o41 () Int)

(declare-fun o42 () Int)

(declare-fun o43 () Bool)

(declare-fun o44 () Bool)

(declare-fun result () int__ref)

(declare-fun temp1 () Int)

(declare-fun result1 () us_split_fields__ref)

(declare-fun my_stack__split_fields2 () us_split_fields)

(declare-fun result2 () us_split_fields__ref)

(declare-fun my_stack__split_fields3 () us_split_fields)

(declare-fun my_stack__split_fields4 () us_split_fields__ref)

(declare-fun temp2 () int__ref)

(declare-fun my_stack__split_fields5 () us_split_fields)

(declare-fun temp3 () Int)

(declare-fun result3 () Bool)

(define-fun o45 () us_rep (mk___rep (mk___split_fields o34 o35)))

(define-fun o46 () us_rep (mk___rep (mk___split_fields o29 o30)))

(define-fun o47 () us_rep (mk___rep (mk___split_fields o27 o28)))

(define-fun o48 () us_rep (mk___rep (mk___split_fields o21 o22)))

(define-fun o49 () us_rep (mk___rep (mk___split_fields o18 o19)))

(define-fun o50 () us_rep (mk___rep (mk___split_fields o16 o17)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert (count__function_guard
  (count
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))))

;; H
  (assert
  (<= 2 (count
        (state__2
        (mk___split_fields my_stack__split_fields my_stack__split_fields1)))))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 temp)))

;; H
  (assert
  (and (<= 1 (to_rep1 my_stack__split_fields1))
  (<= (to_rep1 my_stack__split_fields1) 100)))

;; H
  (assert (= o (to_rep1 my_stack__split_fields1)))

;; H
  (assert (= o1 (select my_stack__split_fields o)))

;; H
  (assert (= o2 (to_rep o1)))

;; H
  (assert (= result (mk_int__ref temp)))

;; H
  (assert (= temp1 o2))

;; H
  (assert
  (and (<= 1 (- (to_rep1 my_stack__split_fields1) 1))
  (<= (- (to_rep1 my_stack__split_fields1) 1) 100)))

;; H
  (assert (= o3 (- (to_rep1 my_stack__split_fields1) 1)))

;; H
  (assert (= o4 (select my_stack__split_fields o3)))

;; H
  (assert (= o5 (to_rep o4)))

;; H
  (assert (= (to_rep o6) o5))

;; H
  (assert
  (and (<= 1 (to_rep1 my_stack__split_fields1))
  (<= (to_rep1 my_stack__split_fields1) 100)))

;; H
  (assert (= o7 (to_rep1 my_stack__split_fields1)))

;; H
  (assert (= o8 (store my_stack__split_fields o7 o6)))

;; H
  (assert (= o8 o9))

;; H
  (assert (= my_stack__split_fields1 o10))

;; H
  (assert (= temp___352 o9))

;; H
  (assert (= temp___3521 o10))

;; H
  (assert
  (= result1 (mk___split_fields__ref
             (mk___split_fields my_stack__split_fields
             my_stack__split_fields1))))

;; H
  (assert
  (= my_stack__split_fields2 (mk___split_fields temp___352 temp___3521)))

;; H
  (assert (= (to_rep o11) temp1))

;; H
  (assert
  (and
  (<= 1 (- (to_rep1
           (rec__stack_functional_spec__stack_type__pointer
           my_stack__split_fields2)) 1))
  (<= (- (to_rep1
         (rec__stack_functional_spec__stack_type__pointer
         my_stack__split_fields2)) 1) 100)))

;; H
  (assert
  (= o12 (- (to_rep1
            (rec__stack_functional_spec__stack_type__pointer
            my_stack__split_fields2)) 1)))

;; H
  (assert
  (= o13 (store (rec__stack_functional_spec__stack_type__s
                my_stack__split_fields2) o12 o11)))

;; H
  (assert (= o13 o14))

;; H
  (assert
  (= (rec__stack_functional_spec__stack_type__pointer
     my_stack__split_fields2) o15))

;; H
  (assert (= temp___356 o14))

;; H
  (assert (= temp___3561 o15))

;; H
  (assert (= result2 (mk___split_fields__ref my_stack__split_fields2)))

;; H
  (assert
  (= my_stack__split_fields3 (mk___split_fields temp___356 temp___3561)))

;; H
  (assert (= temp2 (mk_int__ref temp1)))

;; H
  (assert
  (= my_stack__split_fields4 (mk___split_fields__ref my_stack__split_fields3)))

;; H
  (assert (= temp3 temp1))

;; H
  (assert (= my_stack__split_fields5 my_stack__split_fields3))

;; H
  (assert (state__2__function_guard
  (state__2 (us_split_fields__content my_stack__split_fields4))
  (us_split_fields__content my_stack__split_fields4)))

;; H
  (assert (state__2__function_guard
  (state__2 (us_split_fields__content my_stack__split_fields4))
  (us_split_fields__content my_stack__split_fields4)))

;; H
  (assert (count__function_guard
  (count (state__2 (us_split_fields__content my_stack__split_fields4)))
  (state__2 (us_split_fields__content my_stack__split_fields4))))

;; H
  (assert (state__2__function_guard
  (state__2 (us_split_fields__content my_stack__split_fields4))
  (us_split_fields__content my_stack__split_fields4)))

;; H
  (assert (state__2__function_guard
  (state__2 (us_split_fields__content my_stack__split_fields4))
  (us_split_fields__content my_stack__split_fields4)))

;; H
  (assert
  (forall ((i1 Int)) (stack_entry__function_guard
  (stack_entry (state__2 (us_split_fields__content my_stack__split_fields4))
  i1) (state__2 (us_split_fields__content my_stack__split_fields4)) i1)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert
  (forall ((i1 Int)) (stack_entry__function_guard
  (stack_entry
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)) i1)
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)) i1)))

;; H
  (assert
  (and
  (and (= o40 (state__2 (us_split_fields__content my_stack__split_fields4)))
  (state__2__function_guard o40
  (us_split_fields__content my_stack__split_fields4)))
  (= o40 (mk___rep (us_split_fields__content my_stack__split_fields4)))))

;; H
  (assert
  (and (and (= o41 (count o40)) (count__function_guard o41 o40))
  (and (in_range2 o41)
  (= o41 (to_rep1
         (rec__stack_functional_spec__stack_type__pointer
         (us_split_fields1 o40)))))))

;; H
  (assert (= o42 (- o41 2)))

;; H
  (assert (= o43 (ite (<= i o42) true false)))

;; H
  (assert (= result3 (ite (<= 1 i) o43 false)))

;; H
  (assert
  (= (= o44 true)
  (forall ((i1 Int))
  (=>
  (and (<= 1 i1)
  (<= i1 (- (count
            (state__2 (us_split_fields__content my_stack__split_fields4))) 2)))
  (= (stack_entry
     (state__2 (us_split_fields__content my_stack__split_fields4)) i1) 
  (stack_entry
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)) i1))))))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert
  (and
  (and (= o45 (state__2 (us_split_fields__content my_stack__split_fields4)))
  (state__2__function_guard o45
  (us_split_fields__content my_stack__split_fields4)))
  (= (us_split_fields__content my_stack__split_fields4) (mk___split_fields
                                                        o34 o35))))

;; H
  (assert
  (and (and (= o36 (count o45)) (count__function_guard o36 o45))
  (and (in_range2 o36) (= o36 (to_rep1 o35)))))

;; H
  (assert
  (and
  (and
  (= o37 (stack_entry
         (state__2
         (mk___split_fields my_stack__split_fields my_stack__split_fields1))
         o36))
  (stack_entry__function_guard o37
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)) 
  o36))
  (and (in_range1 o37)
  (= o37 (to_rep
         (select (rec__stack_functional_spec__stack_type__s
                 (us_split_fields1
                 (state__2
                 (mk___split_fields my_stack__split_fields
                 my_stack__split_fields1)))) o36))))))

;; H
  (assert
  (and
  (and (= o46 (state__2 (us_split_fields__content my_stack__split_fields4)))
  (state__2__function_guard o46
  (us_split_fields__content my_stack__split_fields4)))
  (= (us_split_fields__content my_stack__split_fields4) (mk___split_fields
                                                        o29 o30))))

;; H
  (assert
  (and (and (= o31 (count o46)) (count__function_guard o31 o46))
  (and (in_range2 o31) (= o31 (to_rep1 o30)))))

;; H
  (assert (= o32 (- o31 1)))

;; H
  (assert (and (= o33 o32) (in_range2 o32)))

;; H
  (assert
  (and
  (and (= o47 (state__2 (us_split_fields__content my_stack__split_fields4)))
  (state__2__function_guard o47
  (us_split_fields__content my_stack__split_fields4)))
  (= (us_split_fields__content my_stack__split_fields4) (mk___split_fields
                                                        o27 o28))))

;; H
  (assert
  (and
  (and (= o38 (stack_entry o47 o33)) (stack_entry__function_guard o38 
  o47 o33)) (and (in_range1 o38) (= o38 (to_rep (select o27 o33))))))

;; H
  (assert (= o39 (ite (= o38 o37) true false)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert (state__2__function_guard
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1))
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)))

;; H
  (assert
  (and
  (and (= o48 (state__2 (us_split_fields__content my_stack__split_fields4)))
  (state__2__function_guard o48
  (us_split_fields__content my_stack__split_fields4)))
  (= (us_split_fields__content my_stack__split_fields4) (mk___split_fields
                                                        o21 o22))))

;; H
  (assert
  (and (and (= o23 (count o48)) (count__function_guard o23 o48))
  (and (in_range2 o23) (= o23 (to_rep1 o22)))))

;; H
  (assert (= o24 (- o23 1)))

;; H
  (assert (and (= o25 o24) (in_range2 o24)))

;; H
  (assert
  (and
  (and
  (= o26 (stack_entry
         (state__2
         (mk___split_fields my_stack__split_fields my_stack__split_fields1))
         o25))
  (stack_entry__function_guard o26
  (state__2
  (mk___split_fields my_stack__split_fields my_stack__split_fields1)) 
  o25))
  (and (in_range1 o26)
  (= o26 (to_rep
         (select (rec__stack_functional_spec__stack_type__s
                 (us_split_fields1
                 (state__2
                 (mk___split_fields my_stack__split_fields
                 my_stack__split_fields1)))) o25))))))

;; H
  (assert
  (and
  (and (= o49 (state__2 (us_split_fields__content my_stack__split_fields4)))
  (state__2__function_guard o49
  (us_split_fields__content my_stack__split_fields4)))
  (= (us_split_fields__content my_stack__split_fields4) (mk___split_fields
                                                        o18 o19))))

;; H
  (assert
  (and (and (= o20 (count o49)) (count__function_guard o20 o49))
  (and (in_range2 o20) (= o20 (to_rep1 o19)))))

;; H
  (assert
  (and
  (and (= o50 (state__2 (us_split_fields__content my_stack__split_fields4)))
  (state__2__function_guard o50
  (us_split_fields__content my_stack__split_fields4)))
  (= (us_split_fields__content my_stack__split_fields4) (mk___split_fields
                                                        o16 o17))))

(assert
;; WP_parameter_def
 ;; File "stack_functional_spec.ads", line 75, characters 0-0
  (not (<= 1 o20)))
(check-sat)
