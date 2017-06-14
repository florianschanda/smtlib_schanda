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
 (mk___split_fields (rec__types__t1__j integer)(rec__ext__ us_private)))))
(define-fun us_split_fields_J__projection ((a us_split_fields)) integer 
  (rec__types__t1__j a))

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
  (b us_rep)) Bool (ite (= (to_rep (rec__types__t1__j (us_split_fields1 a))) 
                   (to_rep (rec__types__t1__j (us_split_fields1 b)))) true
                   false))

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

(declare-fun types__t1__j__first__bit () Int)

(declare-fun types__t1__j__last__bit () Int)

(declare-fun types__t1__j__position () Int)

;; types__t1__j__first__bit_axiom
  (assert (<= 0 types__t1__j__first__bit))

;; types__t1__j__last__bit_axiom
  (assert (< types__t1__j__first__bit types__t1__j__last__bit))

;; types__t1__j__position_axiom
  (assert (<= 0 types__t1__j__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((t1__ref (mk_t1__ref (t1__content us_rep)))))
(define-fun t1__ref___projection ((a t1__ref)) us_rep (t1__content a))

(define-fun default_initial_assumption ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (= (attr__tag temp___expr_136) 
  us_tag))

(declare-fun check__ (us_rep) Bool)

(declare-fun check____function_guard (Bool us_rep) Bool)

(declare-fun check__1 (Int us_rep) Bool)

(declare-fun check____function_guard1 (Bool Int us_rep) Bool)

(declare-fun x__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Bool)

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

(declare-fun types__t1__j__first__bit1 () Int)

(declare-fun types__t1__j__last__bit1 () Int)

(declare-fun types__t1__j__position1 () Int)

;; types__t1__j__first__bit_axiom
  (assert (<= 0 types__t1__j__first__bit1))

;; types__t1__j__last__bit_axiom
  (assert (< types__t1__j__first__bit1 types__t1__j__last__bit1))

;; types__t1__j__position_axiom
  (assert (<= 0 types__t1__j__position1))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((t2__ref (mk_t2__ref (t2__content us_rep)))))
(define-fun t2__ref___projection ((a t2__ref)) us_rep (t2__content a))

(declare-fun check__2 (us_rep) Bool)

(declare-fun check__2__function_guard (Bool us_rep) Bool)

(declare-fun check__21 (Int us_rep) Bool)

(declare-fun check__2__function_guard1 (Bool Int us_rep) Bool)

;; check____post_axiom
  (assert true)

;; check____post__dispatch_axiom
  (assert true)

;; types__t1__compat_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (check____function_guard1 (check__1 us_tag x) us_tag x)
     (and (check____function_guard (check__ x) x)
     (= (to_int1 (check__ x)) (to_int1 (check__1 us_tag x))))) :pattern (
  (check__1 us_tag x)) )))

;; types__t2__compat_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (check____function_guard1 (check__1 us_tag1 x) us_tag1 x)
     (and (check__2__function_guard (check__2 x) x)
     (= (to_int1 (check__2 x)) (to_int1 (check__1 us_tag1 x))))) :pattern (
  (check__1 us_tag1 x)) )))

;; check____def_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (check____function_guard (check__ x) x) (= (check__ x) true)) :pattern (
  (check__ x)) )))

(define-fun default_initial_assumption1 ((temp___expr_155 us_rep)
  (temp___skip_top_level_156 Bool)) Bool (= (attr__tag temp___expr_155) 
  us_tag1))

;; check__2__post_axiom
  (assert true)

;; check__2__post__dispatch_axiom
  (assert true)

;; types__t2__compat_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (check__2__function_guard1 (check__21 us_tag1 x) us_tag1 x)
     (and (check__2__function_guard (check__2 x) x)
     (= (to_int1 (check__2 x)) (to_int1 (check__21 us_tag1 x))))) :pattern (
  (check__21 us_tag1 x)) )))

;; check__2__def_axiom
  (assert
  (forall ((x us_rep))
  (! (=> (check__2__function_guard (check__2 x) x)
     (not (= (check__2 x) true))) :pattern ((check__2 x)) )))

(declare-fun x__split_fields () integer)

(declare-fun x__split_fields1 () us_private)

;; H
  (assert (check____function_guard
  (check__
  (mk___rep (mk___split_fields x__split_fields x__split_fields1)
  x__attr__tag))
  (mk___rep (mk___split_fields x__split_fields x__split_fields1)
  x__attr__tag)))

(assert
;; WP_parameter_def
 ;; File "types.ads", line 4, characters 0-0
  (not
  (= (check__
     (mk___rep (mk___split_fields x__split_fields x__split_fields1)
     x__attr__tag)) true)))
(check-sat)
