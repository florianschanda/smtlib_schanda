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

(declare-sort tcount_typeB 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy () tcount_typeB)

(declare-datatypes ()
((tcount_typeB__ref
 (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB 
  (tcount_typeB__content a))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq1 (us_rep us_rep) Bool)

(declare-fun user_eq1 (us_rep us_rep) Bool)

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

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep)))))
(define-fun set__ref_4__projection ((a set__ref)) us_rep (set__content a))

(declare-fun is_empty (us_rep) Bool)

(declare-fun is_empty__function_guard (Bool us_rep) Bool)

(define-fun default_initial_assumption ((temp___expr_691 us_rep)
  (temp___skip_top_level_692 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_692 true))
                                         (= (is_empty temp___expr_691) true)))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(declare-sort count_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq2 (count_type count_type) Bool)

(declare-fun dummy2 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant ((temp___expr_173 Int)
  (temp___is_init_170 Bool) (temp___skip_constant_171 Bool)
  (temp___do_toplevel_172 Bool)) Bool (=>
                                      (or (= temp___is_init_170 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_173)))

;; length__post_axiom
  (assert
  (forall ((container us_rep)) (! (dynamic_invariant (length container) true
  false true) :pattern ((length container)) )))

(declare-fun num_overlaps (us_rep us_rep) Int)

(declare-fun num_overlaps__function_guard (Int us_rep us_rep) Bool)

(declare-fun ole (us_rep us_rep) Bool)

(declare-fun ole__function_guard (Bool us_rep us_rep) Bool)

(declare-fun no_overlap (us_rep us_rep) Bool)

(declare-fun no_overlap__function_guard (Bool us_rep us_rep) Bool)

(declare-fun intersection1 (us_rep us_rep) us_rep)

(declare-fun intersection__function_guard (us_rep us_rep us_rep) Bool)

;; num_overlaps__post_axiom
  (assert
  (forall ((left us_rep) (right us_rep))
  (! (let ((result (num_overlaps left right)))
     (and
     (and
     (and
     (and (= result (length (intersection1 left right)))
     (ite (= (ole left right) true) (= result (length left))
     (< result (length left))))
     (ite (= (ole right left) true) (= result (length right))
     (< result (length right))))
     (= (= result 0) (= (no_overlap left right) true))) (dynamic_invariant
     result true false true))) :pattern ((num_overlaps left right)) )))

(declare-fun left () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun right () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (positive positive) Bool)

(declare-fun dummy4 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun to_rep1 (positive) Int)

(declare-fun of_rep1 (Int) positive)

;; inversion_axiom
  (assert
  (forall ((x positive))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x positive)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__my_sets__my_rec__f positive)(rec__my_sets__my_rec__g integer)))))
(define-fun us_split_fields_F__projection ((a us_split_fields)) positive 
  (rec__my_sets__my_rec__f a))

(define-fun us_split_fields_G__projection ((a us_split_fields)) integer 
  (rec__my_sets__my_rec__g a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_7__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep1 (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_10__projection ((a us_rep1)) us_split_fields (us_split_fields1
                                                                a))

(define-fun bool_eq5 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep1
                            (rec__my_sets__my_rec__f (us_split_fields1 a))) 
                         (to_rep1
                         (rec__my_sets__my_rec__f (us_split_fields1 b))))
                         (= (to_rep
                            (rec__my_sets__my_rec__g (us_split_fields1 a))) 
                         (to_rep
                         (rec__my_sets__my_rec__g (us_split_fields1 b)))))
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

(declare-fun my_sets__my_rec__f__first__bit () Int)

(declare-fun my_sets__my_rec__f__last__bit () Int)

(declare-fun my_sets__my_rec__f__position () Int)

;; my_sets__my_rec__f__first__bit_axiom
  (assert (<= 0 my_sets__my_rec__f__first__bit))

;; my_sets__my_rec__f__last__bit_axiom
  (assert (< my_sets__my_rec__f__first__bit my_sets__my_rec__f__last__bit))

;; my_sets__my_rec__f__position_axiom
  (assert (<= 0 my_sets__my_rec__f__position))

(declare-fun my_sets__my_rec__g__first__bit () Int)

(declare-fun my_sets__my_rec__g__last__bit () Int)

(declare-fun my_sets__my_rec__g__position () Int)

;; my_sets__my_rec__g__first__bit_axiom
  (assert (<= 0 my_sets__my_rec__g__first__bit))

;; my_sets__my_rec__g__last__bit_axiom
  (assert (< my_sets__my_rec__g__first__bit my_sets__my_rec__g__last__bit))

;; my_sets__my_rec__g__position_axiom
  (assert (<= 0 my_sets__my_rec__g__position))

(declare-fun dummy5 () us_rep1)

(declare-datatypes ()
((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep1)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep1 (my_rec__content
                                                               a))

(define-fun my_eq ((x us_rep1)
  (y us_rep1)) Bool (= (to_rep1
                       (rec__my_sets__my_rec__f (us_split_fields1 x))) 
  (to_rep1 (rec__my_sets__my_rec__f (us_split_fields1 y)))))

(declare-fun my_eq__function_guard (Bool us_rep1 us_rep1) Bool)

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range4 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Bool)

(declare-datatypes ()
((element_type__ref (mk_element_type__ref (element_type__content us_rep1)))))
(define-fun element_type__ref_6__projection ((a element_type__ref)) us_rep1 
  (element_type__content a))

(declare-fun contains (us_rep us_rep1) Bool)

(declare-fun contains__function_guard (Bool us_rep us_rep1) Bool)

;; contains__post_axiom
  (assert
  (forall ((container us_rep))
  (forall ((item us_rep1))
  (! (=> (= (of_int 1) true)
     (=>
     (exists ((e us_rep1))
     (and (= (contains container e) true) (= (my_eq e item) true)))
     (= (contains container item) true))) :pattern ((contains container item)) ))))

;; ole__post_axiom
  (assert
  (forall ((left1 us_rep) (right1 us_rep))
  (! (= (= (ole left1 right1) true)
     (forall ((item us_rep1))
     (=> (= (contains left1 item) true) (= (contains right1 item) true)))) :pattern (
  (ole left1 right1)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (is_empty container)))
     (and
     (= (= result true)
     (forall ((item us_rep1)) (not (= (contains container item) true))))
     (= (= result true) (= (length container) 0)))) :pattern ((is_empty
                                                              container)) )))

(declare-fun includes_intersection (us_rep us_rep us_rep) Bool)

(declare-fun includes_intersection__function_guard (Bool us_rep us_rep
  us_rep) Bool)

;; includes_intersection__post_axiom
  (assert
  (forall ((container us_rep) (left1 us_rep) (right1 us_rep))
  (! (= (= (includes_intersection container left1 right1) true)
     (forall ((item us_rep1))
     (=> (= (contains left1 item) true)
     (=> (= (contains right1 item) true) (= (contains container item) true))))) :pattern (
  (includes_intersection container left1 right1)) )))

;; no_overlap__post_axiom
  (assert
  (forall ((left1 us_rep) (right1 us_rep))
  (! (= (= (no_overlap left1 right1) true)
     (forall ((item us_rep1))
     (=> (= (contains left1 item) true)
     (not (= (contains right1 item) true))))) :pattern ((no_overlap left1
                                                        right1)) )))

;; intersection__post_axiom
  (assert
  (forall ((left1 us_rep) (right1 us_rep))
  (! (let ((result (intersection1 left1 right1)))
     (and (and (= (ole result left1) true) (= (ole result right1) true))
     (= (includes_intersection result left1 right1) true))) :pattern (
  (intersection1 left1 right1)) )))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

;; H
  (assert (and (= o3 (length right)) (in_range1 o3)))

;; H
  (assert (= o4 (- 2147483647 o3)))

;; H
  (assert (and (= o5 o4) (in_range o4)))

;; H
  (assert
  (and (= o (num_overlaps left right))
  (and (in_range1 o)
  (and
  (and
  (and (= o (length (intersection1 left right)))
  (ite (= (ole left right) true) (= o (length left)) (< o (length left))))
  (ite (= (ole right left) true) (= o (length right)) (< o (length right))))
  (= (= o 0) (= (no_overlap left right) true))))))

;; H
  (assert (and (= o1 (length left)) (in_range1 o1)))

;; H
  (assert (= o2 (- o1 o)))

(assert
;; WP_parameter_def
 ;; File "a-cofuse.ads", line 218, characters 0-0
  (not (in_range o2)))
(check-sat)
