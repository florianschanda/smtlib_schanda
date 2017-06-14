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

(declare-sort pointer_range 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 100)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (pointer_range pointer_range) Bool)

(declare-fun dummy () pointer_range)

(declare-datatypes ()
((pointer_range__ref
 (mk_pointer_range__ref (pointer_range__content pointer_range)))))
(define-fun pointer_range__ref___projection ((a pointer_range__ref)) pointer_range 
  (pointer_range__content a))

(declare-fun to_rep (pointer_range) Int)

(declare-fun of_rep (Int) pointer_range)

;; inversion_axiom
  (assert
  (forall ((x pointer_range))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x pointer_range)) (! (in_range
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

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

(define-fun bool_eq2 ((a (Array Int integer)) (a__first Int) (a__last Int)
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
                           (= (to_rep1 (select a temp___idx_132)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep1 (select a temp___idx_132)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy2 () (Array Int integer))

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

(declare-fun user_eq2 ((Array Int integer) (Array Int integer)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__stack_external_prover__stack_type__s (Array Int integer))(rec__stack_external_prover__stack_type__pointer pointer_range)))))
(define-fun us_split_fields_S__projection ((a us_split_fields)) (Array Int integer) 
  (rec__stack_external_prover__stack_type__s a))

(define-fun us_split_fields_Pointer__projection ((a us_split_fields)) pointer_range 
  (rec__stack_external_prover__stack_type__pointer a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (bool_eq2
                           (rec__stack_external_prover__stack_type__s
                           (us_split_fields1 a)) 1 100
                           (rec__stack_external_prover__stack_type__s
                           (us_split_fields1 b)) 1 100) true)
                        (= (to_rep
                           (rec__stack_external_prover__stack_type__pointer
                           (us_split_fields1 a))) (to_rep
                                                  (rec__stack_external_prover__stack_type__pointer
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

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

(declare-fun stack_external_prover__stack_type__s__first__bit () Int)

(declare-fun stack_external_prover__stack_type__s__last__bit () Int)

(declare-fun stack_external_prover__stack_type__s__position () Int)

;; stack_external_prover__stack_type__s__first__bit_axiom
  (assert (<= 0 stack_external_prover__stack_type__s__first__bit))

;; stack_external_prover__stack_type__s__last__bit_axiom
  (assert
  (< stack_external_prover__stack_type__s__first__bit stack_external_prover__stack_type__s__last__bit))

;; stack_external_prover__stack_type__s__position_axiom
  (assert (<= 0 stack_external_prover__stack_type__s__position))

(declare-fun stack_external_prover__stack_type__pointer__first__bit () Int)

(declare-fun stack_external_prover__stack_type__pointer__last__bit () Int)

(declare-fun stack_external_prover__stack_type__pointer__position () Int)

;; stack_external_prover__stack_type__pointer__first__bit_axiom
  (assert (<= 0 stack_external_prover__stack_type__pointer__first__bit))

;; stack_external_prover__stack_type__pointer__last__bit_axiom
  (assert
  (< stack_external_prover__stack_type__pointer__first__bit stack_external_prover__stack_type__pointer__last__bit))

;; stack_external_prover__stack_type__pointer__position_axiom
  (assert (<= 0 stack_external_prover__stack_type__pointer__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((stack_type__ref (mk_stack_type__ref (stack_type__content us_rep)))))
(define-fun stack_type__ref___projection ((a stack_type__ref)) us_rep 
  (stack_type__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun is_empty (us_split_fields) Bool)

(declare-fun is_empty__function_guard (Bool us_split_fields) Bool)

;; is_empty__post_axiom
  (assert true)

(declare-sort index_range 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq4 (index_range index_range) Bool)

(declare-fun dummy4 () index_range)

(declare-datatypes ()
((index_range__ref (mk_index_range__ref (index_range__content index_range)))))
(define-fun index_range__ref___projection ((a index_range__ref)) index_range 
  (index_range__content a))

(declare-sort t3b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (t3b t3b) Bool)

(declare-fun dummy5 () t3b)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content t3b)))))
(define-fun t3b__ref___projection ((a t3b__ref)) t3b (t3b__content a))

(declare-fun initial_stack () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun temp___133 (Int) (Array Int integer))

;; def_axiom
  (assert
  (forall ((temp___135 Int))
  (forall ((temp___136 Int))
  (= (select (temp___133 temp___135) temp___136) (of_rep1 temp___135)))))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_175 Int)
  (temp___is_init_172 Bool) (temp___skip_constant_173 Bool)
  (temp___do_toplevel_174 Bool)) Bool (=>
                                      (or (= temp___is_init_172 true)
                                      (<= 0 100)) (in_range temp___expr_175)))

(define-fun dynamic_invariant2 ((temp___expr_181 Int)
  (temp___is_init_178 Bool) (temp___skip_constant_179 Bool)
  (temp___do_toplevel_180 Bool)) Bool (=>
                                      (or (= temp___is_init_178 true)
                                      (<= 1 100)) (in_range2
                                      temp___expr_181)))

;; initial_stack__def_axiom
  (assert
  (= initial_stack (mk___rep (mk___split_fields (temp___133 0) (of_rep 0)))))

(declare-fun my_stack__split_fields () (Array Int integer))

(declare-fun my_stack__split_fields1 () pointer_range)

(declare-fun o () pointer_range)

(declare-fun o1 () (Array Int integer))

(declare-fun o2 () (Array Int integer))

(declare-fun o3 () pointer_range)

(declare-fun stack_external_prover__initial_stack__assume () (Array Int integer))

(declare-fun stack_external_prover__initial_stack__assume1 () pointer_range)

(declare-fun result () (Array Int integer))

(declare-fun result1 () pointer_range)

(declare-fun my_stack__split_fields2 () (Array Int integer))

(declare-fun my_stack__split_fields3 () pointer_range)

(define-fun my_stack__split_fields4 () us_split_fields (mk___split_fields
                                                       my_stack__split_fields2
                                                       my_stack__split_fields3))

(declare-fun result2 () Bool)

;; H
  (assert (= (to_rep o) 0))

;; H
  (assert (= o1 (temp___133 0)))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= stack_external_prover__initial_stack__assume o2))

;; H
  (assert (= stack_external_prover__initial_stack__assume1 o3))

;; H
  (assert
  (= (mk___rep
     (mk___split_fields stack_external_prover__initial_stack__assume
     stack_external_prover__initial_stack__assume1)) initial_stack))

;; H
  (assert (= result my_stack__split_fields))

;; H
  (assert (= result1 my_stack__split_fields1))

;; H
  (assert (= my_stack__split_fields4 (us_split_fields1 initial_stack)))

;; H
  (assert
  (and (= result2 (is_empty my_stack__split_fields4))
  (is_empty__function_guard result2 my_stack__split_fields4)))

;; H
  (assert (is_empty__function_guard (is_empty my_stack__split_fields4)
  my_stack__split_fields4))

(assert
;; WP_parameter_def
 ;; File "stack_external_prover.adb", line 18, characters 0-0
  (not (= (is_empty my_stack__split_fields4) true)))
(check-sat)
