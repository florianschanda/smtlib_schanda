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

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

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
                                     (in_range1 temp___expr_15)))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort dt 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (dt dt) Bool)

(declare-fun dummy1 () dt)

(declare-datatypes () ((dt__ref (mk_dt__ref (dt__content dt)))))
(define-fun dt__ref___projection ((a dt__ref)) dt (dt__content a))

(define-fun dynamic_invariant1 ((temp___expr_138 Int)
  (temp___is_init_135 Bool) (temp___skip_constant_136 Bool)
  (temp___do_toplevel_137 Bool)) Bool (=>
                                      (or (= temp___is_init_135 true)
                                      (<= 0 2)) (in_range2 temp___expr_138)))

(declare-fun to_rep1 (dt) Int)

(declare-fun of_rep1 (Int) dt)

;; inversion_axiom
  (assert
  (forall ((x dt)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x dt)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__test__wibble__d dt)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) dt (rec__test__wibble__d
                                                                  a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__test__wibble__flag Bool)(rec__test__wibble__x integer)(rec__test__wibble__y Bool)(rec__test__wibble__z dt)))))
(define-fun us_split_fields_Flag__projection ((a us_split_fields)) Bool 
  (rec__test__wibble__flag a))

(define-fun us_split_fields_X__projection ((a us_split_fields)) integer 
  (rec__test__wibble__x a))

(define-fun us_split_fields_Y__projection ((a us_split_fields)) Bool 
  (rec__test__wibble__y a))

(define-fun us_split_fields_Z__projection ((a us_split_fields)) dt (rec__test__wibble__z
                                                                   a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun test__wibble__x__pred ((a us_rep)) Bool (= (to_rep1
                                                       (rec__test__wibble__d
                                                       (us_split_discrs1 a))) 0))

(define-fun test__wibble__y__pred ((a us_rep)) Bool (= (to_rep1
                                                       (rec__test__wibble__d
                                                       (us_split_discrs1 a))) 1))

(define-fun test__wibble__z__pred ((a us_rep)) Bool (= (to_rep1
                                                       (rec__test__wibble__d
                                                       (us_split_discrs1 a))) 2))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (= (to_rep1
                           (rec__test__wibble__d (us_split_discrs1 a))) 
                        (to_rep1 (rec__test__wibble__d (us_split_discrs1 b))))
                        (= (rec__test__wibble__flag (us_split_fields1 a)) 
                        (rec__test__wibble__flag (us_split_fields1 b))))
                        (=> (test__wibble__x__pred a)
                        (= (to_rep
                           (rec__test__wibble__x (us_split_fields1 a))) 
                        (to_rep (rec__test__wibble__x (us_split_fields1 b))))))
                        (=> (test__wibble__y__pred a)
                        (= (rec__test__wibble__y (us_split_fields1 a)) 
                        (rec__test__wibble__y (us_split_fields1 b)))))
                        (=> (test__wibble__z__pred a)
                        (= (to_rep1
                           (rec__test__wibble__z (us_split_fields1 a))) 
                        (to_rep1 (rec__test__wibble__z (us_split_fields1 b))))))
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

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

(declare-fun test__wibble__d__first__bit () Int)

(declare-fun test__wibble__d__last__bit () Int)

(declare-fun test__wibble__d__position () Int)

;; test__wibble__d__first__bit_axiom
  (assert (<= 0 test__wibble__d__first__bit))

;; test__wibble__d__last__bit_axiom
  (assert (< test__wibble__d__first__bit test__wibble__d__last__bit))

;; test__wibble__d__position_axiom
  (assert (<= 0 test__wibble__d__position))

(declare-fun test__wibble__flag__first__bit () Int)

(declare-fun test__wibble__flag__last__bit () Int)

(declare-fun test__wibble__flag__position () Int)

;; test__wibble__flag__first__bit_axiom
  (assert (<= 0 test__wibble__flag__first__bit))

;; test__wibble__flag__last__bit_axiom
  (assert (< test__wibble__flag__first__bit test__wibble__flag__last__bit))

;; test__wibble__flag__position_axiom
  (assert (<= 0 test__wibble__flag__position))

(declare-fun test__wibble__x__first__bit () Int)

(declare-fun test__wibble__x__last__bit () Int)

(declare-fun test__wibble__x__position () Int)

;; test__wibble__x__first__bit_axiom
  (assert (<= 0 test__wibble__x__first__bit))

;; test__wibble__x__last__bit_axiom
  (assert (< test__wibble__x__first__bit test__wibble__x__last__bit))

;; test__wibble__x__position_axiom
  (assert (<= 0 test__wibble__x__position))

(declare-fun test__wibble__y__first__bit () Int)

(declare-fun test__wibble__y__last__bit () Int)

(declare-fun test__wibble__y__position () Int)

;; test__wibble__y__first__bit_axiom
  (assert (<= 0 test__wibble__y__first__bit))

;; test__wibble__y__last__bit_axiom
  (assert (< test__wibble__y__first__bit test__wibble__y__last__bit))

;; test__wibble__y__position_axiom
  (assert (<= 0 test__wibble__y__position))

(declare-fun test__wibble__z__first__bit () Int)

(declare-fun test__wibble__z__last__bit () Int)

(declare-fun test__wibble__z__position () Int)

;; test__wibble__z__first__bit_axiom
  (assert (<= 0 test__wibble__z__first__bit))

;; test__wibble__z__last__bit_axiom
  (assert (< test__wibble__z__first__bit test__wibble__z__last__bit))

;; test__wibble__z__position_axiom
  (assert (<= 0 test__wibble__z__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((wibble__ref (mk_wibble__ref (wibble__content us_rep)))))
(define-fun wibble__ref___projection ((a wibble__ref)) us_rep (wibble__content
                                                              a))

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun r__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun r6b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun in_range3 ((rec__test__wibble__d1 Int)
  (a us_rep)) Bool (= rec__test__wibble__d1 (to_rep1
                                            (rec__test__wibble__d
                                            (us_split_discrs1 a)))))

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

(declare-fun test__wibble__d__first__bit1 () Int)

(declare-fun test__wibble__d__last__bit1 () Int)

(declare-fun test__wibble__d__position1 () Int)

;; test__wibble__d__first__bit_axiom
  (assert (<= 0 test__wibble__d__first__bit1))

;; test__wibble__d__last__bit_axiom
  (assert (< test__wibble__d__first__bit1 test__wibble__d__last__bit1))

;; test__wibble__d__position_axiom
  (assert (<= 0 test__wibble__d__position1))

(declare-fun test__wibble__y__first__bit1 () Int)

(declare-fun test__wibble__y__last__bit1 () Int)

(declare-fun test__wibble__y__position1 () Int)

;; test__wibble__y__first__bit_axiom
  (assert (<= 0 test__wibble__y__first__bit1))

;; test__wibble__y__last__bit_axiom
  (assert (< test__wibble__y__first__bit1 test__wibble__y__last__bit1))

;; test__wibble__y__position_axiom
  (assert (<= 0 test__wibble__y__position1))

(declare-fun test__wibble__z__first__bit1 () Int)

(declare-fun test__wibble__z__last__bit1 () Int)

(declare-fun test__wibble__z__position1 () Int)

;; test__wibble__z__first__bit_axiom
  (assert (<= 0 test__wibble__z__first__bit1))

;; test__wibble__z__last__bit_axiom
  (assert (< test__wibble__z__first__bit1 test__wibble__z__last__bit1))

;; test__wibble__z__position_axiom
  (assert (<= 0 test__wibble__z__position1))

(declare-fun test__wibble__flag__first__bit1 () Int)

(declare-fun test__wibble__flag__last__bit1 () Int)

(declare-fun test__wibble__flag__position1 () Int)

;; test__wibble__flag__first__bit_axiom
  (assert (<= 0 test__wibble__flag__first__bit1))

;; test__wibble__flag__last__bit_axiom
  (assert (< test__wibble__flag__first__bit1 test__wibble__flag__last__bit1))

;; test__wibble__flag__position_axiom
  (assert (<= 0 test__wibble__flag__position1))

(declare-fun test__wibble__x__first__bit1 () Int)

(declare-fun test__wibble__x__last__bit1 () Int)

(declare-fun test__wibble__x__position1 () Int)

;; test__wibble__x__first__bit_axiom
  (assert (<= 0 test__wibble__x__first__bit1))

;; test__wibble__x__last__bit_axiom
  (assert (< test__wibble__x__first__bit1 test__wibble__x__last__bit1))

;; test__wibble__x__position_axiom
  (assert (<= 0 test__wibble__x__position1))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((t7b__ref (mk_t7b__ref (t7b__content us_rep)))))
(define-fun t7b__ref___projection ((a t7b__ref)) us_rep (t7b__content a))

(declare-fun r9b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun in_range4 ((rec__test__wibble__d1 Int)
  (a us_rep)) Bool (= rec__test__wibble__d1 (to_rep1
                                            (rec__test__wibble__d
                                            (us_split_discrs1 a)))))

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))

(declare-fun test__wibble__d__first__bit2 () Int)

(declare-fun test__wibble__d__last__bit2 () Int)

(declare-fun test__wibble__d__position2 () Int)

;; test__wibble__d__first__bit_axiom
  (assert (<= 0 test__wibble__d__first__bit2))

;; test__wibble__d__last__bit_axiom
  (assert (< test__wibble__d__first__bit2 test__wibble__d__last__bit2))

;; test__wibble__d__position_axiom
  (assert (<= 0 test__wibble__d__position2))

(declare-fun test__wibble__x__first__bit2 () Int)

(declare-fun test__wibble__x__last__bit2 () Int)

(declare-fun test__wibble__x__position2 () Int)

;; test__wibble__x__first__bit_axiom
  (assert (<= 0 test__wibble__x__first__bit2))

;; test__wibble__x__last__bit_axiom
  (assert (< test__wibble__x__first__bit2 test__wibble__x__last__bit2))

;; test__wibble__x__position_axiom
  (assert (<= 0 test__wibble__x__position2))

(declare-fun test__wibble__y__first__bit2 () Int)

(declare-fun test__wibble__y__last__bit2 () Int)

(declare-fun test__wibble__y__position2 () Int)

;; test__wibble__y__first__bit_axiom
  (assert (<= 0 test__wibble__y__first__bit2))

;; test__wibble__y__last__bit_axiom
  (assert (< test__wibble__y__first__bit2 test__wibble__y__last__bit2))

;; test__wibble__y__position_axiom
  (assert (<= 0 test__wibble__y__position2))

(declare-fun test__wibble__flag__first__bit2 () Int)

(declare-fun test__wibble__flag__last__bit2 () Int)

(declare-fun test__wibble__flag__position2 () Int)

;; test__wibble__flag__first__bit_axiom
  (assert (<= 0 test__wibble__flag__first__bit2))

;; test__wibble__flag__last__bit_axiom
  (assert (< test__wibble__flag__first__bit2 test__wibble__flag__last__bit2))

;; test__wibble__flag__position_axiom
  (assert (<= 0 test__wibble__flag__position2))

(declare-fun test__wibble__z__first__bit2 () Int)

(declare-fun test__wibble__z__last__bit2 () Int)

(declare-fun test__wibble__z__position2 () Int)

;; test__wibble__z__first__bit_axiom
  (assert (<= 0 test__wibble__z__first__bit2))

;; test__wibble__z__last__bit_axiom
  (assert (< test__wibble__z__first__bit2 test__wibble__z__last__bit2))

;; test__wibble__z__position_axiom
  (assert (<= 0 test__wibble__z__position2))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((t10b__ref (mk_t10b__ref (t10b__content us_rep)))))
(define-fun t10b__ref___projection ((a t10b__ref)) us_rep (t10b__content a))

(declare-fun o () dt)

(declare-fun o1 () integer)

(declare-fun o2 () Bool)

(declare-fun o3 () integer)

(declare-fun o4 () Bool)

(declare-fun o5 () dt)

(declare-fun o6 () dt)

(declare-fun temp___242 () dt)

(declare-fun temp___2421 () Bool)

(declare-fun temp___2422 () integer)

(declare-fun temp___2423 () Bool)

(declare-fun temp___2424 () dt)

;; H
  (assert (in_range1 x))

;; H
  (assert (< 0 x))

;; H
  (assert (= (to_rep1 (rec__test__wibble__d r__split_discrs)) r6b))

;; H
  (assert (in_range2 r6b))

;; H
  (assert (= (to_rep o1) x))

;; H
  (assert (= (of_int 0) o2))

;; H
  (assert (= o1 o3))

;; H
  (assert (= true o4))

;; H
  (assert (= dummy1 o5))

;; H
  (assert (= (to_rep1 o) 0))

;; H
  (assert (= o o6))

;; H
  (assert (= temp___242 o6))

;; H
  (assert (= temp___2421 o2))

;; H
  (assert (= temp___2422 o3))

;; H
  (assert (= temp___2423 o4))

;; H
  (assert (= temp___2424 o5))

(assert
;; WP_parameter_def
 ;; File "test.adb", line 61, characters 0-0
  (not (= temp___242 (rec__test__wibble__d r__split_discrs))))
(check-sat)
