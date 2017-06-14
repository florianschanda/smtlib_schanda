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

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__volatiles_legal__vol_rec_t__x integer)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) integer 
  (rec__volatiles_legal__vol_rec_t__x a))

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
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__volatiles_legal__vol_rec_t__x
                           (us_split_fields1 a))) (to_rep
                                                  (rec__volatiles_legal__vol_rec_t__x
                                                  (us_split_fields1 b))))
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

(declare-fun volatiles_legal__vol_rec_t__x__first__bit () Int)

(declare-fun volatiles_legal__vol_rec_t__x__last__bit () Int)

(declare-fun volatiles_legal__vol_rec_t__x__position () Int)

;; volatiles_legal__vol_rec_t__x__first__bit_axiom
  (assert (<= 0 volatiles_legal__vol_rec_t__x__first__bit))

;; volatiles_legal__vol_rec_t__x__last__bit_axiom
  (assert
  (< volatiles_legal__vol_rec_t__x__first__bit volatiles_legal__vol_rec_t__x__last__bit))

;; volatiles_legal__vol_rec_t__x__position_axiom
  (assert (<= 0 volatiles_legal__vol_rec_t__x__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((vol_rec_t__ref (mk_vol_rec_t__ref (vol_rec_t__content us_rep)))))
(define-fun vol_rec_t__ref___projection ((a vol_rec_t__ref)) us_rep (vol_rec_t__content
                                                                    a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun vol__split_fields () integer)

(declare-fun temp () Int)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun temp___213 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () integer)

(declare-fun temp___211 () integer)

(declare-fun result () Int)

(declare-fun temp1 () Int)

(declare-fun result1 () integer)

(declare-fun vol__split_fields1 () integer)

(declare-fun result2 () integer)

(declare-fun vol__split_fields2 () integer)

;; H
  (assert (= result temp))

;; H
  (assert (= temp1 (to_rep vol__split_fields)))

;; H
  (assert (in_range1 temp1))

;; H
  (assert (=> (<= temp1 0) (= (to_rep o) (- 1))))

;; H
  (assert (=> (<= temp1 0) (= o o1)))

;; H
  (assert (=> (<= temp1 0) (= temp___213 o1)))

;; H
  (assert (=> (<= temp1 0) (= result1 vol__split_fields)))

;; H
  (assert (=> (<= temp1 0) (= temp___213 vol__split_fields1)))

;; H
  (assert (=> (not (<= temp1 0)) (= (to_rep o2) 1)))

;; H
  (assert (=> (not (<= temp1 0)) (= o2 o3)))

;; H
  (assert (=> (not (<= temp1 0)) (= temp___211 o3)))

;; H
  (assert (=> (not (<= temp1 0)) (= result2 vol__split_fields)))

;; H
  (assert (=> (not (<= temp1 0)) (= temp___211 vol__split_fields2)))

;; H
  (assert
  (=> (not (<= temp1 0))
  (= (mk___split_fields vol__split_fields1) (mk___split_fields
                                            vol__split_fields2))))

;; H
  (assert (< 0 temp1))

(assert
;; WP_parameter_def
 ;; File "volatiles_legal.adb", line 39, characters 0-0
  (not (= (to_rep vol__split_fields1) 1)))
(check-sat)
