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

(declare-sort natural 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__default_init__glob2__f natural)))))
(define-fun us_split_fields_F3__projection ((a us_split_fields)) natural 
  (rec__default_init__glob2__f a))

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
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__default_init__glob2__f (us_split_fields1 a))) 
                   (to_rep
                   (rec__default_init__glob2__f (us_split_fields1 b)))) true
                   false))

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

(declare-fun default_init__glob2__f__first__bit () Int)

(declare-fun default_init__glob2__f__last__bit () Int)

(declare-fun default_init__glob2__f__position () Int)

;; default_init__glob2__f__first__bit_axiom
  (assert (<= 0 default_init__glob2__f__first__bit))

;; default_init__glob2__f__last__bit_axiom
  (assert
  (< default_init__glob2__f__first__bit default_init__glob2__f__last__bit))

;; default_init__glob2__f__position_axiom
  (assert (<= 0 default_init__glob2__f__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((glob2__ref (mk_glob2__ref (glob2__content us_rep)))))
(define-fun glob2__ref___projection ((a glob2__ref)) us_rep (glob2__content
                                                            a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun glob2_ok (us_rep Int) Bool)

(declare-fun glob2_ok__function_guard (Bool us_rep Int) Bool)

;; temp___result_220_def
  (assert
  (forall ((default_init__n Int) (temp___219 us_rep))
  (glob2_ok__function_guard (glob2_ok temp___219 default_init__n) temp___219
  default_init__n)))

(define-fun default_initial_assumption ((temp___expr_217 us_rep)
  (temp___skip_top_level_218 Bool)
  (default_init__n Int)) Bool (and
                              (= (to_rep
                                 (rec__default_init__glob2__f
                                 (us_split_fields1 temp___expr_217))) 0)
                              (=> (not (= temp___skip_top_level_218 true))
                              (= (glob2_ok temp___expr_217 default_init__n) true))))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range
                                     temp___expr_33)))

;; glob2_ok__post_axiom
  (assert true)

;; glob2_ok__def_axiom
  (assert
  (forall ((x us_rep))
  (forall ((default_init__n Int))
  (! (=> (glob2_ok__function_guard (glob2_ok x default_init__n) x
     default_init__n)
     (= (= (glob2_ok x default_init__n) true)
     (= (to_rep (rec__default_init__glob2__f (us_split_fields1 x))) default_init__n))) :pattern (
  (glob2_ok x default_init__n)) ))))

(declare-fun n () Int)

(declare-fun temp___324 () natural)

(define-fun temp___3241 () us_rep (mk___rep (mk___split_fields temp___324)))

;; H
  (assert (= (to_rep temp___324) 0))

;; H
  (assert (glob2_ok__function_guard (glob2_ok temp___3241 n) temp___3241 
  n))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= (glob2_ok temp___3241 n) true)))
(check-sat)
