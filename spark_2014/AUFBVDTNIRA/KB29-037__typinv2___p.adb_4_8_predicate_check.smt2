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

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

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
  (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__p__t__access_count natural)(rec__p__t__locked Bool)))))
(define-fun us_split_fields_Access_Count__projection ((a us_split_fields)) natural 
  (rec__p__t__access_count a))

(define-fun us_split_fields_Locked__projection ((a us_split_fields)) Bool 
  (rec__p__t__locked a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__p__t__access_count (us_split_fields1 a))) 
                        (to_rep
                        (rec__p__t__access_count (us_split_fields1 b))))
                        (= (rec__p__t__locked (us_split_fields1 a)) (rec__p__t__locked
                                                                    (us_split_fields1
                                                                    b))))
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

(declare-fun p__t__access_count__first__bit () Int)

(declare-fun p__t__access_count__last__bit () Int)

(declare-fun p__t__access_count__position () Int)

;; p__t__access_count__first__bit_axiom
  (assert (<= 0 p__t__access_count__first__bit))

;; p__t__access_count__last__bit_axiom
  (assert (< p__t__access_count__first__bit p__t__access_count__last__bit))

;; p__t__access_count__position_axiom
  (assert (<= 0 p__t__access_count__position))

(declare-fun p__t__locked__first__bit () Int)

(declare-fun p__t__locked__last__bit () Int)

(declare-fun p__t__locked__position () Int)

;; p__t__locked__first__bit_axiom
  (assert (<= 0 p__t__locked__first__bit))

;; p__t__locked__last__bit_axiom
  (assert (< p__t__locked__first__bit p__t__locked__last__bit))

;; p__t__locked__position_axiom
  (assert (<= 0 p__t__locked__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(define-fun dynamic_invariant ((temp___expr_135 us_rep)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=> (= temp___do_toplevel_134 true)
                                      (=> (= temp___is_init_132 true)
                                      (=
                                      (= (rec__p__t__locked
                                         (us_split_fields1 temp___expr_135)) true)
                                      (< 3 (to_rep
                                           (rec__p__t__access_count
                                           (us_split_fields1 temp___expr_135))))))))

(define-fun default_initial_assumption ((temp___expr_137 us_rep)
  (temp___skip_top_level_138 Bool)) Bool (and
                                         (= (to_rep
                                            (rec__p__t__access_count
                                            (us_split_fields1
                                            temp___expr_137))) 0)
                                         (= (rec__p__t__locked
                                            (us_split_fields1
                                            temp___expr_137)) (of_int 0))))

(define-fun dynamic_predicate ((temp___139 us_rep)) Bool (=
                                                         (= (rec__p__t__locked
                                                            (us_split_fields1
                                                            temp___139)) true)
                                                         (< 3 (to_rep
                                                              (rec__p__t__access_count
                                                              (us_split_fields1
                                                              temp___139))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i1s () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun v__split_fields () natural)

(declare-fun v__split_fields1 () Bool)

(declare-fun o () Int)

(declare-fun o1 () natural)

(declare-fun o2 () natural)

(declare-fun o3 () Bool)

(declare-fun temp___144 () natural)

(declare-fun temp___1441 () Bool)

;; H
  (assert
  (let ((temp___136 i1s))
  (= (= (rec__p__t__locked (us_split_fields1 temp___136)) true)
  (< 3 (to_rep (rec__p__t__access_count (us_split_fields1 temp___136)))))))

;; H
  (assert (= (= v__split_fields1 true) (< 3 (to_rep v__split_fields))))

;; H
  (assert
  (and (= o (+ (to_rep v__split_fields) 1)) (in_range1
  (+ (to_rep v__split_fields) 1))))

;; H
  (assert (= (to_rep o1) o))

;; H
  (assert (= o1 o2))

;; H
  (assert (= v__split_fields1 o3))

;; H
  (assert (= temp___144 o2))

;; H
  (assert (= temp___1441 o3))

;; H
  (assert (= temp___1441 true))

(assert
;; WP_parameter_def
 ;; File "p.ads", line 5, characters 0-0
  (not (< 3 (to_rep temp___144))))
(check-sat)
