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
 (rec__new_eq__my_rec__f integer)(rec__new_eq__my_rec__g integer)))))
(define-fun us_split_fields_F__projection ((a us_split_fields)) integer 
  (rec__new_eq__my_rec__f a))

(define-fun us_split_fields_G__projection ((a us_split_fields)) integer 
  (rec__new_eq__my_rec__g a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__new_eq__my_rec__f (us_split_fields1 a))) 
                        (to_rep
                        (rec__new_eq__my_rec__f (us_split_fields1 b))))
                        (= (to_rep
                           (rec__new_eq__my_rec__g (us_split_fields1 a))) 
                        (to_rep
                        (rec__new_eq__my_rec__g (us_split_fields1 b)))))
                   true false))

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

(declare-fun new_eq__my_rec__f__first__bit () Int)

(declare-fun new_eq__my_rec__f__last__bit () Int)

(declare-fun new_eq__my_rec__f__position () Int)

;; new_eq__my_rec__f__first__bit_axiom
  (assert (<= 0 new_eq__my_rec__f__first__bit))

;; new_eq__my_rec__f__last__bit_axiom
  (assert (< new_eq__my_rec__f__first__bit new_eq__my_rec__f__last__bit))

;; new_eq__my_rec__f__position_axiom
  (assert (<= 0 new_eq__my_rec__f__position))

(declare-fun new_eq__my_rec__g__first__bit () Int)

(declare-fun new_eq__my_rec__g__last__bit () Int)

(declare-fun new_eq__my_rec__g__position () Int)

;; new_eq__my_rec__g__first__bit_axiom
  (assert (<= 0 new_eq__my_rec__g__first__bit))

;; new_eq__my_rec__g__last__bit_axiom
  (assert (< new_eq__my_rec__g__first__bit new_eq__my_rec__g__last__bit))

;; new_eq__my_rec__g__position_axiom
  (assert (<= 0 new_eq__my_rec__g__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep (my_rec__content
                                                              a))

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (and (oeq__function_guard (oeq a b) a b) (= (user_eq1 a b) (oeq a b))) :pattern (
  (user_eq1 a b)) )))

;; oeq__post_axiom
  (assert true)

;; oeq__def_axiom
  (assert
  (forall ((x us_rep) (y us_rep))
  (! (=> (oeq__function_guard (oeq x y) x y)
     (= (= (oeq x y) true)
     (= (to_rep (rec__new_eq__my_rec__f (us_split_fields1 x))) (to_rep
                                                               (rec__new_eq__my_rec__f
                                                               (us_split_fields1
                                                               y)))))) :pattern (
  (oeq x y)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun x__split_fields () integer)

(declare-fun x__split_fields1 () integer)

(declare-fun y__split_fields () integer)

(declare-fun y__split_fields1 () integer)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () integer)

(declare-fun new_eq__x__assume () integer)

(declare-fun new_eq__x__assume1 () integer)

(declare-fun o4 () integer)

(declare-fun o5 () integer)

(declare-fun o6 () integer)

(declare-fun o7 () integer)

(declare-fun new_eq__y__assume () integer)

(declare-fun new_eq__y__assume1 () integer)

(declare-fun result () integer)

(declare-fun result1 () integer)

(declare-fun x__split_fields2 () integer)

(declare-fun x__split_fields3 () integer)

(declare-fun result2 () integer)

(declare-fun result3 () integer)

(declare-fun y__split_fields2 () integer)

(declare-fun y__split_fields3 () integer)

(define-fun y__split_fields4 () us_split_fields (mk___split_fields
                                                y__split_fields2
                                                y__split_fields3))

(define-fun x__split_fields4 () us_split_fields (mk___split_fields
                                                x__split_fields2
                                                x__split_fields3))

;; H
  (assert (= (to_rep o) 2))

;; H
  (assert (= (to_rep o1) 1))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= new_eq__x__assume o2))

;; H
  (assert (= new_eq__x__assume1 o3))

;; H
  (assert (= result x__split_fields))

;; H
  (assert (= result1 x__split_fields1))

;; H
  (assert (= new_eq__x__assume x__split_fields2))

;; H
  (assert (= new_eq__x__assume1 x__split_fields3))

;; H
  (assert (= (to_rep o4) 3))

;; H
  (assert (= (to_rep o5) 1))

;; H
  (assert (= o5 o6))

;; H
  (assert (= o4 o7))

;; H
  (assert (= new_eq__y__assume o6))

;; H
  (assert (= new_eq__y__assume1 o7))

;; H
  (assert (= result2 y__split_fields))

;; H
  (assert (= result3 y__split_fields1))

;; H
  (assert (= new_eq__y__assume y__split_fields2))

;; H
  (assert (= new_eq__y__assume1 y__split_fields3))

;; H
  (assert (oeq__function_guard
  (oeq (mk___rep x__split_fields4) (mk___rep y__split_fields4))
  (mk___rep x__split_fields4) (mk___rep y__split_fields4)))

(assert
;; WP_parameter_def
 ;; File "new_eq.adb", line 6, characters 0-0
  (not
  (not
  (= (oeq (mk___rep x__split_fields4) (mk___rep y__split_fields4)) true))))
(check-sat)
