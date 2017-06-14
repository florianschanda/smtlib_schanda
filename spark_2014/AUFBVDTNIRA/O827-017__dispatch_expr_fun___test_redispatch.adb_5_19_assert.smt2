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
 (mk___split_fields
 (rec__tagged_types__root__i integer)(rec__ext__ us_private)))))
(define-fun us_split_fields_I__projection ((a us_split_fields)) integer 
  (rec__tagged_types__root__i a))

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
                           (rec__tagged_types__root__i (us_split_fields1 a))) 
                   (to_rep (rec__tagged_types__root__i (us_split_fields1 b))))
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

(declare-fun tagged_types__root__i__first__bit () Int)

(declare-fun tagged_types__root__i__last__bit () Int)

(declare-fun tagged_types__root__i__position () Int)

;; tagged_types__root__i__first__bit_axiom
  (assert (<= 0 tagged_types__root__i__first__bit))

;; tagged_types__root__i__last__bit_axiom
  (assert
  (< tagged_types__root__i__first__bit tagged_types__root__i__last__bit))

;; tagged_types__root__i__position_axiom
  (assert (<= 0 tagged_types__root__i__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((root__ref (mk_root__ref (root__content us_rep)))))
(define-fun root__ref___projection ((a root__ref)) us_rep (root__content a))

(declare-fun g (us_rep) Int)

(declare-fun g__function_guard (Int us_rep) Bool)

(declare-fun g1 (Int us_rep) Int)

(declare-fun g__function_guard1 (Int Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun default_initial_assumption ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (= (attr__tag temp___expr_136) 
  us_tag))

(declare-fun f (us_rep) Int)

(declare-fun f__function_guard (Int us_rep) Bool)

(declare-fun f1 (Int us_rep) Int)

(declare-fun f__function_guard1 (Int Int us_rep) Bool)

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__tagged_types__child__j integer)(rec__tagged_types__root__i1 integer)(rec__ext__1 us_private)))))
(define-fun us_split_fields_J__projection ((a us_split_fields2)) integer 
  (rec__tagged_types__child__j a))

(define-fun us_split_fields_I2__projection ((a us_split_fields2)) integer 
  (rec__tagged_types__root__i1 a))

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

(declare-fun extract__j (us_private) integer)

;; extract__j__conv
  (assert
  (forall ((j integer))
  (forall ((rec__ext__2 us_private))
  (= (extract__j (hide_ext__ j rec__ext__2)) j))))

(declare-fun extract__ext__ (us_private) us_private)

(define-fun to_base ((a us_rep1)) us_rep (mk___rep
                                         (mk___split_fields
                                         (rec__tagged_types__root__i1
                                         (us_split_fields3 a))
                                         (hide_ext__
                                         (rec__tagged_types__child__j
                                         (us_split_fields3 a))
                                         (rec__ext__1 (us_split_fields3 a))))
                                         (attr__tag1 a)))

(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1
                                         (mk___split_fields1
                                         (extract__j
                                         (rec__ext__ (us_split_fields1 r)))
                                         (rec__tagged_types__root__i
                                         (us_split_fields1 r))
                                         (extract__ext__
                                         (rec__ext__ (us_split_fields1 r))))
                                         (attr__tag r)))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep
                            (rec__tagged_types__child__j
                            (us_split_fields3 a))) (to_rep
                                                   (rec__tagged_types__child__j
                                                   (us_split_fields3 b))))
                         (= (to_rep
                            (rec__tagged_types__root__i1
                            (us_split_fields3 a))) (to_rep
                                                   (rec__tagged_types__root__i1
                                                   (us_split_fields3 b)))))
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

(declare-fun tagged_types__child__j__first__bit () Int)

(declare-fun tagged_types__child__j__last__bit () Int)

(declare-fun tagged_types__child__j__position () Int)

;; tagged_types__child__j__first__bit_axiom
  (assert (<= 0 tagged_types__child__j__first__bit))

;; tagged_types__child__j__last__bit_axiom
  (assert
  (< tagged_types__child__j__first__bit tagged_types__child__j__last__bit))

;; tagged_types__child__j__position_axiom
  (assert (<= 0 tagged_types__child__j__position))

(declare-fun tagged_types__root__i__first__bit1 () Int)

(declare-fun tagged_types__root__i__last__bit1 () Int)

(declare-fun tagged_types__root__i__position1 () Int)

;; tagged_types__root__i__first__bit_axiom
  (assert (<= 0 tagged_types__root__i__first__bit1))

;; tagged_types__root__i__last__bit_axiom
  (assert
  (< tagged_types__root__i__first__bit1 tagged_types__root__i__last__bit1))

;; tagged_types__root__i__position_axiom
  (assert (<= 0 tagged_types__root__i__position1))

(declare-fun dummy2 () us_rep1)

(declare-datatypes ()
((child__ref (mk_child__ref (child__content us_rep1)))))
(define-fun child__ref___projection ((a child__ref)) us_rep1 (child__content
                                                             a))

;; g__post_axiom
  (assert
  (forall ((x us_rep))
  (! (let ((result (g x)))
     (=> (g__function_guard result x) (dynamic_invariant result true false
     true))) :pattern ((g x)) )))

;; g__post__dispatch_axiom
  (assert
  (forall ((attr__tag2 Int))
  (forall ((x us_rep))
  (! (let ((result (g1 attr__tag2 x)))
     (=> (g__function_guard1 result attr__tag2 x) (dynamic_invariant result
     true false true))) :pattern ((g1 attr__tag2 x)) ))))

;; tagged_types__root__compat_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (g__function_guard1 (g1 us_tag x) us_tag x)
     (and (g__function_guard (g x) x) (= (g x) (g1 us_tag x)))) :pattern (
  (g1 us_tag x)) )))

;; tagged_types__child__compat_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (g__function_guard1 (g1 us_tag1 x) us_tag1 x)
     (and (g__function_guard (g x) x) (= (g x) (g1 us_tag1 x)))) :pattern (
  (g1 us_tag1 x)) )))

;; g__def_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (g__function_guard (g x) x)
     (and (f__function_guard1 (f1 (attr__tag x) x) (attr__tag x) x)
     (= (g x) (f1 (attr__tag x) x)))) :pattern ((g x)) )))

(define-fun default_initial_assumption1 ((temp___expr_153 us_rep1)
  (temp___skip_top_level_154 Bool)) Bool (= (attr__tag1 temp___expr_153) 
  us_tag1))

(declare-fun x__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun f__2 (us_rep1) Int)

(declare-fun f__2__function_guard (Int us_rep1) Bool)

(declare-fun f__21 (Int us_rep1) Int)

(declare-fun f__2__function_guard1 (Int Int us_rep1) Bool)

;; f__post_axiom
  (assert
  (forall ((x us_rep))
  (! (let ((result (f x)))
     (=> (f__function_guard result x) (dynamic_invariant result true false
     true))) :pattern ((f x)) )))

;; f__post__dispatch_axiom
  (assert
  (forall ((attr__tag2 Int))
  (forall ((x us_rep))
  (! (let ((result (f1 attr__tag2 x)))
     (=> (f__function_guard1 result attr__tag2 x) (dynamic_invariant result
     true false true))) :pattern ((f1 attr__tag2 x)) ))))

;; tagged_types__root__compat_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (f__function_guard1 (f1 us_tag x) us_tag x)
     (and (f__function_guard (f x) x) (= (f x) (f1 us_tag x)))) :pattern (
  (f1 us_tag x)) )))

;; tagged_types__child__compat_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (f__function_guard1 (f1 us_tag1 x) us_tag1 x)
     (and (f__2__function_guard (f__2 (of_base x)) (of_base x))
     (= (f__2 (of_base x)) (f1 us_tag1 x)))) :pattern ((f1 us_tag1 x)) )))

;; f__def_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (f__function_guard (f x) x)
     (= (f x) (to_rep (rec__tagged_types__root__i (us_split_fields1 x))))) :pattern (
  (f x)) )))

;; f__2__post_axiom
  (assert
  (forall ((x us_rep1))
  (! (let ((result (f__2 x)))
     (=> (f__2__function_guard result x) (dynamic_invariant result true false
     true))) :pattern ((f__2 x)) )))

;; f__2__post__dispatch_axiom
  (assert
  (forall ((attr__tag2 Int))
  (forall ((x us_rep1))
  (! (let ((result (f__21 attr__tag2 x)))
     (=> (f__2__function_guard1 result attr__tag2 x) (dynamic_invariant
     result true false true))) :pattern ((f__21 attr__tag2 x)) ))))

;; tagged_types__child__compat_axiom
  (assert
  (forall ((x us_rep1))
  (! (=> (f__2__function_guard1 (f__21 us_tag1 x) us_tag1 x)
     (and (f__2__function_guard (f__2 x) x) (= (f__2 x) (f__21 us_tag1 x)))) :pattern (
  (f__21 us_tag1 x)) )))

;; f__2__def_axiom
  (assert
  (forall ((x us_rep1))
  (! (=> (f__2__function_guard (f__2 x) x)
     (= (f__2 x) (to_rep (rec__tagged_types__child__j (us_split_fields3 x))))) :pattern (
  (f__2 x)) )))

(declare-fun x__split_fields () integer)

(declare-fun x__split_fields1 () integer)

(declare-fun x__split_fields2 () us_private)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () integer)

(declare-fun o4 () us_private)

(declare-fun test_redispatch__x__assume () integer)

(declare-fun test_redispatch__x__assume1 () integer)

(declare-fun test_redispatch__x__assume2 () us_private)

(declare-fun test_redispatch__x__assume3 () Int)

(declare-fun result () integer)

(declare-fun result1 () integer)

(declare-fun result2 () us_private)

(declare-fun x__split_fields3 () integer)

(declare-fun x__split_fields4 () integer)

(declare-fun x__split_fields5 () us_private)

;; H
  (assert (= (to_rep o) 1))

;; H
  (assert (= (to_rep o1) 2))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= us_null_ext__ o4))

;; H
  (assert (= test_redispatch__x__assume o2))

;; H
  (assert (= test_redispatch__x__assume1 o3))

;; H
  (assert (= test_redispatch__x__assume2 o4))

;; H
  (assert (= us_tag1 test_redispatch__x__assume3))

;; H
  (assert (= result x__split_fields))

;; H
  (assert (= result1 x__split_fields1))

;; H
  (assert (= result2 x__split_fields2))

;; H
  (assert (= test_redispatch__x__assume x__split_fields3))

;; H
  (assert (= test_redispatch__x__assume1 x__split_fields4))

;; H
  (assert (= test_redispatch__x__assume2 x__split_fields5))

;; H
  (assert (= x__attr__tag us_tag1))

;; H
  (assert (g__function_guard
  (g
  (mk___rep
  (mk___split_fields x__split_fields4
  (hide_ext__ x__split_fields3 x__split_fields5)) x__attr__tag))
  (mk___rep
  (mk___split_fields x__split_fields4
  (hide_ext__ x__split_fields3 x__split_fields5)) x__attr__tag)))

(assert
;; WP_parameter_def
 ;; File "test_redispatch.adb", line 2, characters 0-0
  (not
  (= (g
     (mk___rep
     (mk___split_fields x__split_fields4
     (hide_ext__ x__split_fields3 x__split_fields5)) x__attr__tag)) 2)))
(check-sat)
