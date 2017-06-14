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

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

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
  (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__dispatch__root__f integer)(rec__ext__ us_private)))))
(define-fun us_split_fields_F__projection ((a us_split_fields)) integer 
  (rec__dispatch__root__f a))

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

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__dispatch__root__f (us_split_fields1 a))) 
                   (to_rep (rec__dispatch__root__f (us_split_fields1 b))))
                   true false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

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

(declare-fun dispatch__root__f__first__bit () Int)

(declare-fun dispatch__root__f__last__bit () Int)

(declare-fun dispatch__root__f__position () Int)

;; dispatch__root__f__first__bit_axiom
  (assert (<= 0 dispatch__root__f__first__bit))

;; dispatch__root__f__last__bit_axiom
  (assert (< dispatch__root__f__first__bit dispatch__root__f__last__bit))

;; dispatch__root__f__position_axiom
  (assert (<= 0 dispatch__root__f__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((root__ref (mk_root__ref (root__content us_rep)))))
(define-fun root__ref___projection ((a root__ref)) us_rep (root__content a))

(define-fun default_initial_assumption ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (= (attr__tag temp___expr_136) 
  us_tag))

(declare-fun init (tuple0) us_rep)

(declare-fun init__function_guard (us_rep tuple0) Bool)

(declare-fun init1 (Int tuple0) us_rep)

(declare-fun init__function_guard1 (us_rep Int tuple0) Bool)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__dispatch__nested__child__g integer)(rec__dispatch__root__f1 integer)(rec__ext__1 us_private)))))
(define-fun us_split_fields_G__projection ((a us_split_fields2)) integer 
  (rec__dispatch__nested__child__g a))

(define-fun us_split_fields_F2__projection ((a us_split_fields2)) integer 
  (rec__dispatch__root__f1 a))

(define-fun us_split_fields_2__projection ((a us_split_fields2)) us_private 
  (rec__ext__1 a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)(attr__tag1 Int)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun us_rep_4__projection ((a us_rep1)) Int (attr__tag1 a))

(declare-fun hide_ext__ (integer us_private) us_private)

(declare-fun extract__g (us_private) integer)

;; extract__g__conv
  (assert
  (forall ((g integer))
  (forall ((rec__ext__2 us_private))
  (= (extract__g (hide_ext__ g rec__ext__2)) g))))

(declare-fun extract__ext__ (us_private) us_private)

(define-fun to_base ((a us_rep1)) us_rep (mk___rep
                                         (mk___split_fields
                                         (rec__dispatch__root__f1
                                         (us_split_fields3 a))
                                         (hide_ext__
                                         (rec__dispatch__nested__child__g
                                         (us_split_fields3 a))
                                         (rec__ext__1 (us_split_fields3 a))))
                                         (attr__tag1 a)))

(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1
                                         (mk___split_fields1
                                         (extract__g
                                         (rec__ext__ (us_split_fields1 r)))
                                         (rec__dispatch__root__f
                                         (us_split_fields1 r))
                                         (extract__ext__
                                         (rec__ext__ (us_split_fields1 r))))
                                         (attr__tag r)))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep
                            (rec__dispatch__nested__child__g
                            (us_split_fields3 a))) (to_rep
                                                   (rec__dispatch__nested__child__g
                                                   (us_split_fields3 b))))
                         (= (to_rep
                            (rec__dispatch__root__f1 (us_split_fields3 a))) 
                         (to_rep
                         (rec__dispatch__root__f1 (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq2 (us_rep1 us_rep1) Bool)

(declare-fun us_tag1 () Int)

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

(declare-fun dispatch__nested__child__g__first__bit () Int)

(declare-fun dispatch__nested__child__g__last__bit () Int)

(declare-fun dispatch__nested__child__g__position () Int)

;; dispatch__nested__child__g__first__bit_axiom
  (assert (<= 0 dispatch__nested__child__g__first__bit))

;; dispatch__nested__child__g__last__bit_axiom
  (assert
  (< dispatch__nested__child__g__first__bit dispatch__nested__child__g__last__bit))

;; dispatch__nested__child__g__position_axiom
  (assert (<= 0 dispatch__nested__child__g__position))

(declare-fun dispatch__root__f__first__bit1 () Int)

(declare-fun dispatch__root__f__last__bit1 () Int)

(declare-fun dispatch__root__f__position1 () Int)

;; dispatch__root__f__first__bit_axiom
  (assert (<= 0 dispatch__root__f__first__bit1))

;; dispatch__root__f__last__bit_axiom
  (assert (< dispatch__root__f__first__bit1 dispatch__root__f__last__bit1))

;; dispatch__root__f__position_axiom
  (assert (<= 0 dispatch__root__f__position1))

(declare-fun dummy2 () us_rep1)

(declare-datatypes ()
((child__ref (mk_child__ref (child__content us_rep1)))))
(define-fun child__ref___projection ((a child__ref)) us_rep1 (child__content
                                                             a))

(declare-fun init2 (tuple0) us_rep1)

(declare-fun init__function_guard2 (us_rep1 tuple0) Bool)

(declare-fun init3 (Int tuple0) us_rep1)

(declare-fun init__function_guard3 (us_rep1 Int tuple0) Bool)

;; init__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (init us_void_param)))
     (=> (init__function_guard result us_void_param)
     (= (attr__tag result) us_tag))) :pattern ((init us_void_param)) )))

;; init__post__dispatch_axiom
  (assert
  (forall ((attr__tag2 Int))
  (forall ((us_void_param tuple0))
  (! (let ((result (init1 attr__tag2 us_void_param)))
     (=> (init__function_guard1 result attr__tag2 us_void_param)
     (= (attr__tag result) attr__tag2))) :pattern ((init1 attr__tag2
                                                   us_void_param)) ))))

;; dispatch__root__compat_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (init__function_guard1 (init1 us_tag us_void_param) us_tag
     us_void_param)
     (and (init__function_guard (init us_void_param) us_void_param)
     (= (init us_void_param) (init1 us_tag us_void_param)))) :pattern (
  (init1 us_tag us_void_param)) )))

;; dispatch__nested__child__compat_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (init__function_guard1 (init1 us_tag1 us_void_param) us_tag1
     us_void_param)
     (and (init__function_guard2 (init2 us_void_param) us_void_param)
     (= (to_base (init2 us_void_param)) (init1 us_tag1 us_void_param)))) :pattern (
  (init1 us_tag1 us_void_param)) )))

;; init__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (init__function_guard (init us_void_param) us_void_param)
     (= (init us_void_param) (mk___rep
                             (mk___split_fields (of_rep 0) us_null_ext__)
                             us_tag))) :pattern ((init us_void_param)) )))

(define-fun default_initial_assumption1 ((temp___expr_149 us_rep1)
  (temp___skip_top_level_150 Bool)) Bool (= (attr__tag1 temp___expr_149) 
  us_tag1))

(declare-fun r__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun c__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun rc__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun cc__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

;; init__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (init2 us_void_param)))
     (=> (init__function_guard2 result us_void_param)
     (= (attr__tag1 result) us_tag1))) :pattern ((init2 us_void_param)) )))

;; init__post__dispatch_axiom
  (assert
  (forall ((attr__tag2 Int))
  (forall ((us_void_param tuple0))
  (! (let ((result (init3 attr__tag2 us_void_param)))
     (=> (init__function_guard3 result attr__tag2 us_void_param)
     (= (attr__tag1 result) attr__tag2))) :pattern ((init3 attr__tag2
                                                    us_void_param)) ))))

;; dispatch__nested__child__compat_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (init__function_guard3 (init3 us_tag1 us_void_param) us_tag1
     us_void_param)
     (and (init__function_guard2 (init2 us_void_param) us_void_param)
     (= (init2 us_void_param) (init3 us_tag1 us_void_param)))) :pattern (
  (init3 us_tag1 us_void_param)) )))

;; init__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (init__function_guard2 (init2 us_void_param) us_void_param)
     (= (init2 us_void_param) (mk___rep1
                              (mk___split_fields1 (of_rep 1) (of_rep 1)
                              us_null_ext__) us_tag1))) :pattern ((init2
                                                                  us_void_param)) )))

(declare-fun r__split_fields () integer)

(declare-fun r__split_fields1 () us_private)

(declare-fun c__split_fields () integer)

(declare-fun c__split_fields1 () integer)

(declare-fun c__split_fields2 () us_private)

(declare-fun rc__split_fields () integer)

(declare-fun rc__split_fields1 () us_private)

(declare-fun cc__split_fields () integer)

(declare-fun cc__split_fields1 () us_private)

(declare-fun usq_ () integer)

(declare-fun usq_1 () us_private)

(declare-fun usq_2 () Int)

(declare-fun temp___198 () integer)

(declare-fun temp___1981 () us_private)

(declare-fun temp___1982 () Int)

(declare-fun usq_3 () integer)

(declare-fun usq_4 () us_private)

(declare-fun usq_5 () Int)

(declare-fun temp___199 () integer)

(declare-fun temp___1991 () us_private)

(declare-fun temp___1992 () Int)

(declare-fun result () integer)

(declare-fun result1 () us_private)

(declare-fun rc__split_fields2 () integer)

(declare-fun rc__split_fields3 () us_private)

(declare-fun result2 () integer)

(declare-fun result3 () us_private)

(declare-fun cc__split_fields2 () us_split_fields)

(declare-fun result4 () us_split_fields__ref)

(declare-fun rc__split_fields4 () us_split_fields)

(declare-fun result5 () us_split_fields__ref)

(declare-fun cc__split_fields3 () us_split_fields)

(define-fun usq_6 () us_rep (mk___rep (mk___split_fields usq_3 usq_4) usq_5))

(define-fun usq_7 () us_rep (mk___rep (mk___split_fields usq_ usq_1) usq_2))

;; H
  (assert (= r__attr__tag us_tag))

;; H
  (assert (= c__attr__tag us_tag1))

;; H
  (assert (= result rc__split_fields))

;; H
  (assert (= result1 rc__split_fields1))

;; H
  (assert (= r__split_fields rc__split_fields2))

;; H
  (assert (= r__split_fields1 rc__split_fields3))

;; H
  (assert (= rc__attr__tag r__attr__tag))

;; H
  (assert (= result2 cc__split_fields))

;; H
  (assert (= result3 cc__split_fields1))

;; H
  (assert
  (= cc__split_fields2 (mk___split_fields c__split_fields1
                       (hide_ext__ c__split_fields c__split_fields2))))

;; H
  (assert (= cc__attr__tag c__attr__tag))

;; H
  (assert
  (and (= usq_7 (init1 rc__attr__tag Tuple0)) (init__function_guard1 
  usq_7 rc__attr__tag Tuple0)))

;; H
  (assert (= usq_ temp___198))

;; H
  (assert (= usq_1 temp___1981))

;; H
  (assert (= rc__attr__tag temp___1982))

;; H
  (assert
  (= result4 (mk___split_fields__ref
             (mk___split_fields rc__split_fields2 rc__split_fields3))))

;; H
  (assert (= rc__split_fields4 (mk___split_fields temp___198 temp___1981)))

;; H
  (assert
  (and (= usq_6 (init1 cc__attr__tag Tuple0)) (init__function_guard1 
  usq_6 cc__attr__tag Tuple0)))

;; H
  (assert (= usq_3 temp___199))

;; H
  (assert (= usq_4 temp___1991))

;; H
  (assert (= cc__attr__tag temp___1992))

;; H
  (assert (= result5 (mk___split_fields__ref cc__split_fields2)))

;; H
  (assert (= cc__split_fields3 (mk___split_fields temp___199 temp___1991)))

(assert
;; WP_parameter_def
 ;; File "test_dispatch.adb", line 2, characters 0-0
  (not
  (= (to_rep (rec__dispatch__root__f rc__split_fields4)) (to_rep
                                                         (rec__dispatch__root__f
                                                         cc__split_fields3)))))
(check-sat)
