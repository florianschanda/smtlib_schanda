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

(declare-sort instruction 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (instruction instruction) Bool)

(declare-fun dummy () instruction)

(declare-datatypes ()
((instruction__ref (mk_instruction__ref (instruction__content instruction)))))
(define-fun instruction__ref___projection ((a instruction__ref)) instruction 
  (instruction__content a))

(declare-fun to_rep (instruction) Int)

(declare-fun of_rep (Int) instruction)

;; inversion_axiom
  (assert
  (forall ((x instruction))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x instruction)) (! (in_range1
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort tlastS 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 200)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (tlastS tlastS) Bool)

(declare-fun dummy1 () tlastS)

(declare-datatypes ()
((tlastS__ref (mk_tlastS__ref (tlastS__content tlastS)))))
(define-fun tlastS__ref___projection ((a tlastS__ref)) tlastS (tlastS__content
                                                              a))

(define-fun dynamic_invariant ((temp___expr_176 Int)
  (temp___is_init_173 Bool) (temp___skip_constant_174 Bool)
  (temp___do_toplevel_175 Bool)) Bool (=>
                                      (or (= temp___is_init_173 true)
                                      (<= 0 200)) (in_range2
                                      temp___expr_176)))

(declare-sort integer 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

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
  (forall ((x integer)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__types__value__e integer)))))
(define-fun us_split_fields_E__projection ((a us_split_fields)) integer 
  (rec__types__value__e a))

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
  (b us_rep)) Bool (ite (= (to_rep1
                           (rec__types__value__e (us_split_fields1 a))) 
                   (to_rep1 (rec__types__value__e (us_split_fields1 b))))
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

(declare-fun types__value__e__first__bit () Int)

(declare-fun types__value__e__last__bit () Int)

(declare-fun types__value__e__position () Int)

;; types__value__e__first__bit_axiom
  (assert (<= 0 types__value__e__first__bit))

;; types__value__e__last__bit_axiom
  (assert (< types__value__e__first__bit types__value__e__last__bit))

;; types__value__e__position_axiom
  (assert (<= 0 types__value__e__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((value__ref (mk_value__ref (value__content us_rep)))))
(define-fun value__ref___projection ((a value__ref)) us_rep (value__content
                                                            a))

(declare-fun size (Int) Int)

(declare-fun size__function_guard (Int Int) Bool)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range3 temp___expr_15)))

;; size__post_axiom
  (assert
  (forall ((stack__last Int))
  (! (=> (dynamic_invariant stack__last true true true)
     (let ((result (size stack__last)))
     (=> (size__function_guard result stack__last) (dynamic_invariant1 result
     true false true)))) :pattern ((size stack__last)) )))

;; size__def_axiom
  (assert
  (forall ((stack__last Int))
  (! (=>
     (and (dynamic_invariant stack__last true true true)
     (size__function_guard (size stack__last) stack__last))
     (= (size stack__last) stack__last)) :pattern ((size stack__last)) )))

(declare-fun full (Int) Bool)

(declare-fun full__function_guard (Bool Int) Bool)

;; full__post_axiom
  (assert true)

;; full__def_axiom
  (assert
  (forall ((stack__last Int))
  (! (=> (full__function_guard (full stack__last) stack__last)
     (= (= (full stack__last) true) (<= 200 stack__last))) :pattern (
  (full stack__last)) )))

(declare-sort operation 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (operation operation) Bool)

(declare-fun dummy4 () operation)

(declare-datatypes ()
((operation__ref (mk_operation__ref (operation__content operation)))))
(define-fun operation__ref___projection ((a operation__ref)) operation 
  (operation__content a))

(declare-fun to_rep2 (operation) Int)

(declare-fun of_rep2 (Int) operation)

;; inversion_axiom
  (assert
  (forall ((x operation))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x operation)) (! (in_range4
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort token_kind 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (token_kind token_kind) Bool)

(declare-fun dummy5 () token_kind)

(declare-datatypes ()
((token_kind__ref (mk_token_kind__ref (token_kind__content token_kind)))))
(define-fun token_kind__ref___projection ((a token_kind__ref)) token_kind 
  (token_kind__content a))

(declare-fun to_rep3 (token_kind) Int)

(declare-fun of_rep3 (Int) token_kind)

;; inversion_axiom
  (assert
  (forall ((x token_kind))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x token_kind)) (! (in_range5
  (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__tokens__token__kind token_kind)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) token_kind 
  (rec__tokens__token__kind a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__tokens__token__val us_rep)(rec__tokens__token__op operation)(rec__tokens__token__instr instruction)))))
(define-fun us_split_fields_Val__projection ((a us_split_fields2)) us_rep 
  (rec__tokens__token__val a))

(define-fun us_split_fields_Op__projection ((a us_split_fields2)) operation 
  (rec__tokens__token__op a))

(define-fun us_split_fields_Instr__projection ((a us_split_fields2)) instruction 
  (rec__tokens__token__instr a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1
 (mk___rep1
 (us_split_discrs1 us_split_discrs)(us_split_fields3 us_split_fields2)(attr__constrained Bool)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_discrs (us_split_discrs1
                                                               a))

(define-fun us_rep_3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun us_rep_4__projection ((a us_rep1)) Bool (attr__constrained a))

(define-fun tokens__token__val__pred ((a us_rep1)) Bool (= (to_rep3
                                                           (rec__tokens__token__kind
                                                           (us_split_discrs1
                                                           a))) 0))

(define-fun tokens__token__op__pred ((a us_rep1)) Bool (= (to_rep3
                                                          (rec__tokens__token__kind
                                                          (us_split_discrs1
                                                          a))) 1))

(define-fun tokens__token__instr__pred ((a us_rep1)) Bool (= (to_rep3
                                                             (rec__tokens__token__kind
                                                             (us_split_discrs1
                                                             a))) 2))

(define-fun bool_eq6 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (and
                         (and
                         (= (to_rep3
                            (rec__tokens__token__kind (us_split_discrs1 a))) 
                         (to_rep3
                         (rec__tokens__token__kind (us_split_discrs1 b))))
                         (=> (tokens__token__val__pred a)
                         (= (bool_eq3
                            (rec__tokens__token__val (us_split_fields3 a))
                            (rec__tokens__token__val (us_split_fields3 b))) true)))
                         (=> (tokens__token__op__pred a)
                         (= (to_rep2
                            (rec__tokens__token__op (us_split_fields3 a))) 
                         (to_rep2
                         (rec__tokens__token__op (us_split_fields3 b))))))
                         (=> (tokens__token__instr__pred a)
                         (= (to_rep
                            (rec__tokens__token__instr (us_split_fields3 a))) 
                         (to_rep
                         (rec__tokens__token__instr (us_split_fields3 b))))))
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

(declare-fun tokens__token__kind__first__bit () Int)

(declare-fun tokens__token__kind__last__bit () Int)

(declare-fun tokens__token__kind__position () Int)

;; tokens__token__kind__first__bit_axiom
  (assert (<= 0 tokens__token__kind__first__bit))

;; tokens__token__kind__last__bit_axiom
  (assert (< tokens__token__kind__first__bit tokens__token__kind__last__bit))

;; tokens__token__kind__position_axiom
  (assert (<= 0 tokens__token__kind__position))

(declare-fun tokens__token__val__first__bit () Int)

(declare-fun tokens__token__val__last__bit () Int)

(declare-fun tokens__token__val__position () Int)

;; tokens__token__val__first__bit_axiom
  (assert (<= 0 tokens__token__val__first__bit))

;; tokens__token__val__last__bit_axiom
  (assert (< tokens__token__val__first__bit tokens__token__val__last__bit))

;; tokens__token__val__position_axiom
  (assert (<= 0 tokens__token__val__position))

(declare-fun tokens__token__op__first__bit () Int)

(declare-fun tokens__token__op__last__bit () Int)

(declare-fun tokens__token__op__position () Int)

;; tokens__token__op__first__bit_axiom
  (assert (<= 0 tokens__token__op__first__bit))

;; tokens__token__op__last__bit_axiom
  (assert (< tokens__token__op__first__bit tokens__token__op__last__bit))

;; tokens__token__op__position_axiom
  (assert (<= 0 tokens__token__op__position))

(declare-fun tokens__token__instr__first__bit () Int)

(declare-fun tokens__token__instr__last__bit () Int)

(declare-fun tokens__token__instr__position () Int)

;; tokens__token__instr__first__bit_axiom
  (assert (<= 0 tokens__token__instr__first__bit))

;; tokens__token__instr__last__bit_axiom
  (assert
  (< tokens__token__instr__first__bit tokens__token__instr__last__bit))

;; tokens__token__instr__position_axiom
  (assert (<= 0 tokens__token__instr__position))

(declare-fun dummy6 () us_rep1)

(declare-datatypes ()
((token__ref (mk_token__ref (token__content us_rep1)))))
(define-fun token__ref___projection ((a token__ref)) us_rep1 (token__content
                                                             a))

(define-fun default_initial_assumption ((temp___expr_203 us_rep1)
  (temp___skip_top_level_204 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_203) false)
                                         (= (to_rep3
                                            (rec__tokens__token__kind
                                            (us_split_discrs1
                                            temp___expr_203))) 0)))

(declare-fun t () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant2 ((temp___expr_195 Int)
  (temp___is_init_192 Bool) (temp___skip_constant_193 Bool)
  (temp___do_toplevel_194 Bool)) Bool (=>
                                      (or (= temp___is_init_192 true)
                                      (<= 0 2)) (in_range5 temp___expr_195)))

(define-fun dynamic_invariant3 ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= 0 2)) (in_range1 temp___expr_153)))

(define-fun dynamic_invariant4 ((temp___expr_186 Int)
  (temp___is_init_183 Bool) (temp___skip_constant_184 Bool)
  (temp___do_toplevel_185 Bool)) Bool (=>
                                      (or (= temp___is_init_183 true)
                                      (<= 0 3)) (in_range4 temp___expr_186)))

(declare-fun last () Int)

(declare-fun us () Int)

;; H
  (assert (in_range2 last))

;; H
  (assert (full__function_guard (full last) last))

;; H
  (assert (size__function_guard (size last) last))

;; H
  (assert
  (=> (= (to_rep3 (rec__tokens__token__kind (us_split_discrs1 t))) 0)
  (and (not (= (full last) true))
  (=> (= (to_rep3 (rec__tokens__token__kind (us_split_discrs1 t))) 1)
  (<= 2 (size last))))))

;; H
  (assert
  (and (= us (to_rep3 (rec__tokens__token__kind (us_split_discrs1 t))))
  (in_range5 (to_rep3 (rec__tokens__token__kind (us_split_discrs1 t))))))

;; H
  (assert
  (not (= (to_rep3 (rec__tokens__token__kind (us_split_discrs1 t))) 0)))

;; H
  (assert
  (not (= (to_rep3 (rec__tokens__token__kind (us_split_discrs1 t))) 1)))

(assert
;; WP_parameter_def
 ;; File "tokens.adb", line 13, characters 0-0
  (not (= (to_rep3 (rec__tokens__token__kind (us_split_discrs1 t))) 2)))
(check-sat)
