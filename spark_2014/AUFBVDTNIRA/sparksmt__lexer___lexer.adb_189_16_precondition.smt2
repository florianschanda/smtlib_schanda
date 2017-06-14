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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(declare-sort character 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (character character) Bool)

(declare-fun dummy2 () character)

(declare-datatypes ()
((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character 
  (character__content a))

(declare-fun to_rep (character) Int)

(declare-fun of_rep (Int) character)

;; inversion_axiom
  (assert
  (forall ((x character))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x character)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

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

(declare-datatypes () ((file__ref (mk_file__ref (file__content us_rep)))))
(define-fun file__ref___projection ((a file__ref)) us_rep (file__content a))

(declare-sort read_status 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (read_status read_status) Bool)

(declare-fun dummy4 () read_status)

(declare-datatypes ()
((read_status__ref (mk_read_status__ref (read_status__content read_status)))))
(define-fun read_status__ref___projection ((a read_status__ref)) read_status 
  (read_status__content a))

(declare-fun to_rep1 (read_status) Int)

(declare-fun of_rep1 (Int) read_status)

;; inversion_axiom
  (assert
  (forall ((x read_status))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x read_status)) (! (in_range4
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__file_io__read_result__status read_status)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) read_status 
  (rec__file_io__read_result__status a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__file_io__read_result__c character)))))
(define-fun us_split_fields_C__projection ((a us_split_fields)) character 
  (rec__file_io__read_result__c a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep1
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)(attr__constrained Bool)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_discrs (us_split_discrs1
                                                               a))

(define-fun us_rep_4__projection ((a us_rep1)) us_split_fields (us_split_fields1
                                                               a))

(define-fun us_rep_5__projection ((a us_rep1)) Bool (attr__constrained a))

(define-fun file_io__read_result__c__pred ((a us_rep1)) Bool (= (to_rep1
                                                                (rec__file_io__read_result__status
                                                                (us_split_discrs1
                                                                a))) 0))

(define-fun bool_eq5 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep1
                            (rec__file_io__read_result__status
                            (us_split_discrs1 a))) (to_rep1
                                                   (rec__file_io__read_result__status
                                                   (us_split_discrs1 b))))
                         (=> (file_io__read_result__c__pred a)
                         (= (to_rep
                            (rec__file_io__read_result__c
                            (us_split_fields1 a))) (to_rep
                                                   (rec__file_io__read_result__c
                                                   (us_split_fields1 b))))))
                    true false))

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

(declare-fun file_io__read_result__status__first__bit () Int)

(declare-fun file_io__read_result__status__last__bit () Int)

(declare-fun file_io__read_result__status__position () Int)

;; file_io__read_result__status__first__bit_axiom
  (assert (<= 0 file_io__read_result__status__first__bit))

;; file_io__read_result__status__last__bit_axiom
  (assert
  (< file_io__read_result__status__first__bit file_io__read_result__status__last__bit))

;; file_io__read_result__status__position_axiom
  (assert (<= 0 file_io__read_result__status__position))

(declare-fun file_io__read_result__c__first__bit () Int)

(declare-fun file_io__read_result__c__last__bit () Int)

(declare-fun file_io__read_result__c__position () Int)

;; file_io__read_result__c__first__bit_axiom
  (assert (<= 0 file_io__read_result__c__first__bit))

;; file_io__read_result__c__last__bit_axiom
  (assert
  (< file_io__read_result__c__first__bit file_io__read_result__c__last__bit))

;; file_io__read_result__c__position_axiom
  (assert (<= 0 file_io__read_result__c__position))

(declare-fun dummy5 () us_rep1)

(declare-datatypes ()
((read_result__ref (mk_read_result__ref (read_result__content us_rep1)))))
(define-fun read_result__ref___projection ((a read_result__ref)) us_rep1 
  (read_result__content a))

(define-fun default_initial_assumption ((temp___expr_470 us_rep1)
  (temp___skip_top_level_471 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_470) false)
                                         (= (to_rep1
                                            (rec__file_io__read_result__status
                                            (us_split_discrs1
                                            temp___expr_470))) 2)))

(declare-fun current_read__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun next_read__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun local_invariant (us_split_fields us_split_discrs us_split_fields
  us_split_discrs) Bool)

(declare-fun local_invariant__function_guard (Bool us_split_fields
  us_split_discrs us_split_fields us_split_discrs) Bool)

;; local_invariant__post_axiom
  (assert true)

;; local_invariant__def_axiom
  (assert
  (forall ((lexer__current_read__fields us_split_fields)
  (lexer__next_read__fields us_split_fields))
  (forall ((lexer__current_read__discrs us_split_discrs)
  (lexer__next_read__discrs us_split_discrs))
  (! (=> (local_invariant__function_guard
     (local_invariant lexer__current_read__fields lexer__current_read__discrs
     lexer__next_read__fields lexer__next_read__discrs)
     lexer__current_read__fields lexer__current_read__discrs
     lexer__next_read__fields lexer__next_read__discrs)
     (=
     (= (local_invariant lexer__current_read__fields
        lexer__current_read__discrs lexer__next_read__fields
        lexer__next_read__discrs) true)
     (and
     (not
     (= (attr__constrained
        (mk___rep lexer__current_read__discrs lexer__current_read__fields
        current_read__attr__constrained)) true))
     (not
     (= (attr__constrained
        (mk___rep lexer__next_read__discrs lexer__next_read__fields
        next_read__attr__constrained)) true))))) :pattern ((local_invariant
                                                           lexer__current_read__fields
                                                           lexer__current_read__discrs
                                                           lexer__next_read__fields
                                                           lexer__next_read__discrs)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(define-fun dynamic_invariant3 ((temp___expr_462 Int)
  (temp___is_init_459 Bool) (temp___skip_constant_460 Bool)
  (temp___do_toplevel_461 Bool)) Bool (=>
                                      (or (= temp___is_init_459 true)
                                      (<= 0 2)) (in_range4 temp___expr_462)))

(declare-fun current_read__split_fields () character)

(declare-fun current_read__split_discrs () read_status)

(declare-fun current_line () Int)

(declare-fun current_col () Int)

(declare-fun current_pos () Int)

(declare-fun next_read__split_fields () character)

(declare-fun next_read__split_discrs () read_status)

(declare-fun current_read__split_fields1 () us_split_fields)

(declare-fun current_read__split_discrs1 () us_split_discrs)

(declare-fun current_line1 () Int)

(declare-fun current_col1 () Int)

(declare-fun current_pos1 () Int)

(declare-fun result () Bool)

(declare-fun current_read__split_fields2 () us_split_fields)

(declare-fun current_read__split_discrs2 () us_split_discrs)

(declare-fun current_line2 () Int)

(declare-fun current_col2 () Int)

(declare-fun current_pos2 () Int)

(declare-fun next_read__split_fields1 () us_split_fields)

(declare-fun next_read__split_discrs1 () us_split_discrs)

;; H
  (assert (= current_read__attr__constrained false))

;; H
  (assert (in_range2 current_line))

;; H
  (assert (in_range1 current_col))

;; H
  (assert (in_range1 current_pos))

;; H
  (assert (= next_read__attr__constrained false))

;; H
  (assert (local_invariant__function_guard
  (local_invariant (mk___split_fields current_read__split_fields)
  (mk___split_discrs current_read__split_discrs)
  (mk___split_fields next_read__split_fields)
  (mk___split_discrs next_read__split_discrs))
  (mk___split_fields current_read__split_fields)
  (mk___split_discrs current_read__split_discrs)
  (mk___split_fields next_read__split_fields)
  (mk___split_discrs next_read__split_discrs)))

;; H
  (assert
  (= (local_invariant (mk___split_fields current_read__split_fields)
     (mk___split_discrs current_read__split_discrs)
     (mk___split_fields next_read__split_fields)
     (mk___split_discrs next_read__split_discrs)) true))

;; H
  (assert
  (and (and (in_range2 current_line1) (in_range1 current_col1)) (in_range1
  current_pos1)))

;; H
  (assert
  (=>
  (= (to_rep1
     (rec__file_io__read_result__status current_read__split_discrs1)) 0)
  (= result (ite (or
                 (= (to_rep
                    (rec__file_io__read_result__c
                    current_read__split_fields1)) 10)
                 (or
                 (= (to_rep
                    (rec__file_io__read_result__c
                    current_read__split_fields1)) 13)
                 (or
                 (= (to_rep
                    (rec__file_io__read_result__c
                    current_read__split_fields1)) 32)
                 (= (to_rep
                    (rec__file_io__read_result__c
                    current_read__split_fields1)) 9))))
            true false))))

;; H
  (assert
  (=>
  (not
  (= (to_rep1
     (rec__file_io__read_result__status current_read__split_discrs1)) 0))
  (= result false)))

;; H
  (assert (= result true))

;; H
  (assert
  (and
  (and (and (in_range2 current_line2) (in_range1 current_col2)) (in_range1
  current_pos2))
  (and
  (= (to_rep1
     (rec__file_io__read_result__status current_read__split_discrs2)) 0)
  (let ((temp___870 (to_rep
                    (rec__file_io__read_result__c
                    current_read__split_fields2))))
  (or (= temp___870 10)
  (or (= temp___870 13) (or (= temp___870 32) (= temp___870 9))))))))

;; H
  (assert (local_invariant__function_guard
  (local_invariant current_read__split_fields2 current_read__split_discrs2
  next_read__split_fields1 next_read__split_discrs1)
  current_read__split_fields2 current_read__split_discrs2
  next_read__split_fields1 next_read__split_discrs1))

(assert
;; WP_parameter_def
 ;; File "lexer.adb", line 47, characters 0-0
  (not
  (= (local_invariant current_read__split_fields2 current_read__split_discrs2
     next_read__split_fields1 next_read__split_discrs1) true)))
(check-sat)
