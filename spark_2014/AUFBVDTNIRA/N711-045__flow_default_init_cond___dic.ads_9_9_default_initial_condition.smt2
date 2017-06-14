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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__dic__pr_record_t2__x integer)(rec__dic__pr_record_t2__y integer)))))
(define-fun us_split_fields_X3__projection ((a us_split_fields)) integer 
  (rec__dic__pr_record_t2__x a))

(define-fun us_split_fields_Y2__projection ((a us_split_fields)) integer 
  (rec__dic__pr_record_t2__y a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_3__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__dic__pr_record_t2__x (us_split_fields1 a))) 
                        (to_rep
                        (rec__dic__pr_record_t2__x (us_split_fields1 b))))
                        (= (to_rep
                           (rec__dic__pr_record_t2__y (us_split_fields1 a))) 
                        (to_rep
                        (rec__dic__pr_record_t2__y (us_split_fields1 b)))))
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

(declare-fun dic__pr_record_t2__x__first__bit () Int)

(declare-fun dic__pr_record_t2__x__last__bit () Int)

(declare-fun dic__pr_record_t2__x__position () Int)

;; dic__pr_record_t2__x__first__bit_axiom
  (assert (<= 0 dic__pr_record_t2__x__first__bit))

;; dic__pr_record_t2__x__last__bit_axiom
  (assert
  (< dic__pr_record_t2__x__first__bit dic__pr_record_t2__x__last__bit))

;; dic__pr_record_t2__x__position_axiom
  (assert (<= 0 dic__pr_record_t2__x__position))

(declare-fun dic__pr_record_t2__y__first__bit () Int)

(declare-fun dic__pr_record_t2__y__last__bit () Int)

(declare-fun dic__pr_record_t2__y__position () Int)

;; dic__pr_record_t2__y__first__bit_axiom
  (assert (<= 0 dic__pr_record_t2__y__first__bit))

;; dic__pr_record_t2__y__last__bit_axiom
  (assert
  (< dic__pr_record_t2__y__first__bit dic__pr_record_t2__y__last__bit))

;; dic__pr_record_t2__y__position_axiom
  (assert (<= 0 dic__pr_record_t2__y__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((pr_record_t2__ref (mk_pr_record_t2__ref (pr_record_t2__content us_rep)))))
(define-fun pr_record_t2__ref___projection ((a pr_record_t2__ref)) us_rep 
  (pr_record_t2__content a))

(declare-fun foo (us_rep Int) Bool)

(declare-fun foo__function_guard (Bool us_rep Int) Bool)

;; temp___result_152_def
  (assert
  (forall ((dic__g Int) (temp___151 us_rep)) (foo__function_guard
  (foo temp___151 dic__g) temp___151 dic__g)))

(define-fun default_initial_assumption ((temp___expr_149 us_rep)
  (temp___skip_top_level_150 Bool)
  (dic__g Int)) Bool (and
                     (and
                     (= (to_rep
                        (rec__dic__pr_record_t2__x
                        (us_split_fields1 temp___expr_149))) 0)
                     (= (to_rep
                        (rec__dic__pr_record_t2__y
                        (us_split_fields1 temp___expr_149))) 0))
                     (=> (not (= temp___skip_top_level_150 true))
                     (= (foo temp___expr_149 dic__g) true))))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

;; foo__post_axiom
  (assert true)

;; foo__def_axiom
  (assert
  (forall ((par1 us_rep))
  (forall ((dic__g Int))
  (! (=> (foo__function_guard (foo par1 dic__g) par1 dic__g)
     (= (= (foo par1 dic__g) true)
     (= (+ (to_rep (rec__dic__pr_record_t2__x (us_split_fields1 par1))) 
     (to_rep (rec__dic__pr_record_t2__y (us_split_fields1 par1)))) dic__g))) :pattern (
  (foo par1 dic__g)) ))))

(declare-fun g () Int)

(declare-fun temp___178 () integer)

(declare-fun temp___1781 () integer)

(define-fun temp___1782 () us_rep (mk___rep
                                  (mk___split_fields temp___178 temp___1781)))

;; H
  (assert (and (= (to_rep temp___178) 0) (= (to_rep temp___1781) 0)))

;; H
  (assert (foo__function_guard (foo temp___1782 g) temp___1782 g))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= (foo temp___1782 g) true)))
(check-sat)
