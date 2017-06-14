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

(declare-fun us_compatible_tags (Int Int) Bool)

;; __compatible_tags_refl
  (assert (forall ((tag Int)) (us_compatible_tags tag tag)))

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

(declare-datatypes () ((root__ref (mk_root__ref (root__content us_rep)))))
(define-fun root__ref___projection ((a root__ref)) us_rep (root__content a))

(define-fun default_initial_assumption ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (= (attr__tag temp___expr_136) 
  us_tag))

(declare-fun us_tag1 () Int)

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

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((child__ref (mk_child__ref (child__content us_rep)))))
(define-fun child__ref___projection ((a child__ref)) us_rep (child__content
                                                            a))

(define-fun default_initial_assumption1 ((temp___expr_146 us_rep)
  (temp___skip_top_level_147 Bool)) Bool (= (attr__tag temp___expr_146) 
  us_tag1))

(declare-fun c () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun cc () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun cc2__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun cc3__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun cc4__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

;; c__def_axiom
  (assert (= c (mk___rep (mk___split_fields us_null_ext__) us_tag1)))

;; cc__def_axiom
  (assert (= cc c))

(declare-fun cc2__split_fields () us_private)

(declare-fun cc3__split_fields () us_private)

(declare-fun result () us_private)

(declare-fun cc2__split_fields1 () us_private)

(declare-fun result1 () us_private)

(declare-fun cc3__split_fields1 () us_private)

(define-fun cc2__split_fields2 () us_split_fields (mk___split_fields
                                                  cc2__split_fields1))

;; H
  (assert (= c cc))

;; H
  (assert (= result cc2__split_fields))

;; H
  (assert (= cc2__split_fields2 (us_split_fields1 cc)))

;; H
  (assert (= cc2__attr__tag us_tag))

;; H
  (assert (= result1 cc3__split_fields))

;; H
  (assert (= (mk___split_fields cc3__split_fields1) cc2__split_fields2))

;; H
  (assert (= cc3__attr__tag cc2__attr__tag))

(assert
;; WP_parameter_def
 ;; File "tagged_conv.adb", line 63, characters 0-0
  (not (us_compatible_tags cc3__attr__tag us_tag1)))
(check-sat)
