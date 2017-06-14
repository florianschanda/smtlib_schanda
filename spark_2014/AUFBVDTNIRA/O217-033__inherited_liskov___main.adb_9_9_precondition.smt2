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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

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
 (rec__dispatch_in_contract__root__f1 integer)(rec__ext__ us_private)))))
(define-fun us_split_fields_F1__projection ((a us_split_fields)) integer 
  (rec__dispatch_in_contract__root__f1 a))

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
                           (rec__dispatch_in_contract__root__f1
                           (us_split_fields1 a))) (to_rep
                                                  (rec__dispatch_in_contract__root__f1
                                                  (us_split_fields1 b))))
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

(declare-fun dispatch_in_contract__root__f1__first__bit () Int)

(declare-fun dispatch_in_contract__root__f1__last__bit () Int)

(declare-fun dispatch_in_contract__root__f1__position () Int)

;; dispatch_in_contract__root__f1__first__bit_axiom
  (assert (<= 0 dispatch_in_contract__root__f1__first__bit))

;; dispatch_in_contract__root__f1__last__bit_axiom
  (assert
  (< dispatch_in_contract__root__f1__first__bit dispatch_in_contract__root__f1__last__bit))

;; dispatch_in_contract__root__f1__position_axiom
  (assert (<= 0 dispatch_in_contract__root__f1__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((root__ref (mk_root__ref (root__content us_rep)))))
(define-fun root__ref___projection ((a root__ref)) us_rep (root__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__dispatch_in_contract__child__f2 integer)(rec__dispatch_in_contract__root__f11 integer)(rec__ext__1 us_private)))))
(define-fun us_split_fields_F2__projection ((a us_split_fields2)) integer 
  (rec__dispatch_in_contract__child__f2 a))

(define-fun us_split_fields_F12__projection ((a us_split_fields2)) integer 
  (rec__dispatch_in_contract__root__f11 a))

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

(declare-fun extract__f2 (us_private) integer)

;; extract__f2__conv
  (assert
  (forall ((f2 integer))
  (forall ((rec__ext__2 us_private))
  (= (extract__f2 (hide_ext__ f2 rec__ext__2)) f2))))

(declare-fun extract__ext__ (us_private) us_private)

(define-fun to_base ((a us_rep1)) us_rep (mk___rep
                                         (mk___split_fields
                                         (rec__dispatch_in_contract__root__f11
                                         (us_split_fields3 a))
                                         (hide_ext__
                                         (rec__dispatch_in_contract__child__f2
                                         (us_split_fields3 a))
                                         (rec__ext__1 (us_split_fields3 a))))
                                         (attr__tag1 a)))

(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1
                                         (mk___split_fields1
                                         (extract__f2
                                         (rec__ext__ (us_split_fields1 r)))
                                         (rec__dispatch_in_contract__root__f1
                                         (us_split_fields1 r))
                                         (extract__ext__
                                         (rec__ext__ (us_split_fields1 r))))
                                         (attr__tag r)))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep
                            (rec__dispatch_in_contract__child__f2
                            (us_split_fields3 a))) (to_rep
                                                   (rec__dispatch_in_contract__child__f2
                                                   (us_split_fields3 b))))
                         (= (to_rep
                            (rec__dispatch_in_contract__root__f11
                            (us_split_fields3 a))) (to_rep
                                                   (rec__dispatch_in_contract__root__f11
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

(declare-fun dispatch_in_contract__child__f2__first__bit () Int)

(declare-fun dispatch_in_contract__child__f2__last__bit () Int)

(declare-fun dispatch_in_contract__child__f2__position () Int)

;; dispatch_in_contract__child__f2__first__bit_axiom
  (assert (<= 0 dispatch_in_contract__child__f2__first__bit))

;; dispatch_in_contract__child__f2__last__bit_axiom
  (assert
  (< dispatch_in_contract__child__f2__first__bit dispatch_in_contract__child__f2__last__bit))

;; dispatch_in_contract__child__f2__position_axiom
  (assert (<= 0 dispatch_in_contract__child__f2__position))

(declare-fun dispatch_in_contract__root__f1__first__bit1 () Int)

(declare-fun dispatch_in_contract__root__f1__last__bit1 () Int)

(declare-fun dispatch_in_contract__root__f1__position1 () Int)

;; dispatch_in_contract__root__f1__first__bit_axiom
  (assert (<= 0 dispatch_in_contract__root__f1__first__bit1))

;; dispatch_in_contract__root__f1__last__bit_axiom
  (assert
  (< dispatch_in_contract__root__f1__first__bit1 dispatch_in_contract__root__f1__last__bit1))

;; dispatch_in_contract__root__f1__position_axiom
  (assert (<= 0 dispatch_in_contract__root__f1__position1))

(declare-fun dummy2 () us_rep1)

(declare-datatypes ()
((child__ref (mk_child__ref (child__content us_rep1)))))
(define-fun child__ref___projection ((a child__ref)) us_rep1 (child__content
                                                             a))

(define-fun default_initial_assumption ((temp___expr_157 us_rep1)
  (temp___skip_top_level_158 Bool)) Bool (= (attr__tag1 temp___expr_157) 
  us_tag1))

(declare-fun less_than_max__2 (us_rep1) Bool)

(declare-fun less_than_max__2__function_guard (Bool us_rep1) Bool)

(declare-fun less_than_max__21 (Int us_rep1) Bool)

(declare-fun less_than_max__2__function_guard1 (Bool Int us_rep1) Bool)

(declare-fun incr__2__specific_post (Int us_split_fields2 Int
  us_split_fields2) Bool)

;; dispatch_in_contract__child__compat_axiom
  (assert true)

(declare-fun incr2__2__specific_post (Int us_split_fields2 Int
  us_split_fields2) Bool)

;; dispatch_in_contract__child__compat_axiom
  (assert true)

(declare-fun dummy3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun c1__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun c2__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun default_initial_assumption1 ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (= (attr__tag temp___expr_136) 
  us_tag))

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Bool)

;; less_than_max__2__post_axiom
  (assert true)

;; less_than_max__2__post__dispatch_axiom
  (assert true)

;; dispatch_in_contract__child__compat_axiom
  (assert
  (forall ((o us_rep1))
  (! (=> (less_than_max__2__function_guard1 (less_than_max__21 us_tag1 o)
     us_tag1 o)
     (and (less_than_max__2__function_guard (less_than_max__2 o) o)
     (= (to_int1 (less_than_max__2 o)) (to_int1
                                       (less_than_max__21 us_tag1 o))))) :pattern (
  (less_than_max__21 us_tag1 o)) )))

;; less_than_max__2__def_axiom
  (assert
  (forall ((o us_rep1))
  (! (=> (less_than_max__2__function_guard (less_than_max__2 o) o)
     (= (= (less_than_max__2 o) true)
     (and
     (< (to_rep (rec__dispatch_in_contract__root__f11 (us_split_fields3 o))) 2147483647)
     (< (to_rep (rec__dispatch_in_contract__child__f2 (us_split_fields3 o))) 2147483647)))) :pattern (
  (less_than_max__2 o)) )))

(declare-fun c1__split_fields () integer)

(declare-fun c1__split_fields1 () integer)

(declare-fun c1__split_fields2 () us_private)

(declare-fun c2__split_fields () integer)

(declare-fun c2__split_fields1 () integer)

(declare-fun c2__split_fields2 () us_private)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () integer)

(declare-fun o4 () us_private)

(declare-fun main__c1__assume () integer)

(declare-fun main__c1__assume1 () integer)

(declare-fun main__c1__assume2 () us_private)

(declare-fun main__c1__assume3 () Int)

(declare-fun o5 () integer)

(declare-fun o6 () integer)

(declare-fun o7 () integer)

(declare-fun o8 () integer)

(declare-fun o9 () us_private)

(declare-fun main__c2__assume () integer)

(declare-fun main__c2__assume1 () integer)

(declare-fun main__c2__assume2 () us_private)

(declare-fun main__c2__assume3 () Int)

(declare-fun result () integer)

(declare-fun result1 () integer)

(declare-fun result2 () us_private)

(declare-fun c1__split_fields3 () integer)

(declare-fun c1__split_fields4 () integer)

(declare-fun c1__split_fields5 () us_private)

(declare-fun result3 () integer)

(declare-fun result4 () integer)

(declare-fun result5 () us_private)

(declare-fun c2__split_fields3 () integer)

(declare-fun c2__split_fields4 () integer)

(declare-fun c2__split_fields5 () us_private)

(define-fun c2__split_fields6 () us_split_fields2 (mk___split_fields1
                                                  c2__split_fields3
                                                  c2__split_fields4
                                                  c2__split_fields5))

;; H
  (assert (in_range dummy3))

;; H
  (assert (= (to_rep o) 1))

;; H
  (assert (= (to_rep o1) 2147483647))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= us_null_ext__ o4))

;; H
  (assert (= main__c1__assume o2))

;; H
  (assert (= main__c1__assume1 o3))

;; H
  (assert (= main__c1__assume2 o4))

;; H
  (assert (= us_tag1 main__c1__assume3))

;; H
  (assert (= result c1__split_fields))

;; H
  (assert (= result1 c1__split_fields1))

;; H
  (assert (= result2 c1__split_fields2))

;; H
  (assert (= main__c1__assume c1__split_fields3))

;; H
  (assert (= main__c1__assume1 c1__split_fields4))

;; H
  (assert (= main__c1__assume2 c1__split_fields5))

;; H
  (assert (= c1__attr__tag us_tag1))

;; H
  (assert (= (to_rep o5) 1))

;; H
  (assert (= (to_rep o6) 2147483647))

;; H
  (assert (= o6 o7))

;; H
  (assert (= o5 o8))

;; H
  (assert (= us_null_ext__ o9))

;; H
  (assert (= main__c2__assume o7))

;; H
  (assert (= main__c2__assume1 o8))

;; H
  (assert (= main__c2__assume2 o9))

;; H
  (assert (= us_tag1 main__c2__assume3))

;; H
  (assert (= result3 c2__split_fields))

;; H
  (assert (= result4 c2__split_fields1))

;; H
  (assert (= result5 c2__split_fields2))

;; H
  (assert (= main__c2__assume c2__split_fields3))

;; H
  (assert (= main__c2__assume1 c2__split_fields4))

;; H
  (assert (= main__c2__assume2 c2__split_fields5))

;; H
  (assert (= c2__attr__tag us_tag1))

;; H
  (assert (not (= dummy3 1)))

;; H
  (assert (less_than_max__2__function_guard
  (less_than_max__2 (mk___rep1 c2__split_fields6 c2__attr__tag))
  (mk___rep1 c2__split_fields6 c2__attr__tag)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (= (less_than_max__2 (mk___rep1 c2__split_fields6 c2__attr__tag)) true)))
(check-sat)
