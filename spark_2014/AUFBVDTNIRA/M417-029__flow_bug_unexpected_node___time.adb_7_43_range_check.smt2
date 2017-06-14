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

(declare-sort minutes_t 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 59)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (minutes_t minutes_t) Bool)

(declare-fun dummy2 () minutes_t)

(declare-datatypes ()
((minutes_t__ref (mk_minutes_t__ref (minutes_t__content minutes_t)))))
(define-fun minutes_t__ref___projection ((a minutes_t__ref)) minutes_t 
  (minutes_t__content a))

(declare-fun to_rep1 (minutes_t) Int)

(declare-fun of_rep1 (Int) minutes_t)

;; inversion_axiom
  (assert
  (forall ((x minutes_t))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x minutes_t)) (! (in_range3
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort seconds_t 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 59)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (seconds_t seconds_t) Bool)

(declare-fun dummy3 () seconds_t)

(declare-datatypes ()
((seconds_t__ref (mk_seconds_t__ref (seconds_t__content seconds_t)))))
(define-fun seconds_t__ref___projection ((a seconds_t__ref)) seconds_t 
  (seconds_t__content a))

(declare-fun to_rep2 (seconds_t) Int)

(declare-fun of_rep2 (Int) seconds_t)

;; inversion_axiom
  (assert
  (forall ((x seconds_t))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x seconds_t)) (! (in_range4
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__time__t__hours natural)(rec__time__t__minutes minutes_t)(rec__time__t__seconds seconds_t)))))
(define-fun us_split_fields_Hours__projection ((a us_split_fields)) natural 
  (rec__time__t__hours a))

(define-fun us_split_fields_Minutes__projection ((a us_split_fields)) minutes_t 
  (rec__time__t__minutes a))

(define-fun us_split_fields_Seconds__projection ((a us_split_fields)) seconds_t 
  (rec__time__t__seconds a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq4 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep
                           (rec__time__t__hours (us_split_fields1 a))) 
                        (to_rep (rec__time__t__hours (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__time__t__minutes (us_split_fields1 a))) 
                        (to_rep1
                        (rec__time__t__minutes (us_split_fields1 b)))))
                        (= (to_rep2
                           (rec__time__t__seconds (us_split_fields1 a))) 
                        (to_rep2
                        (rec__time__t__seconds (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun time__t__hours__first__bit () Int)

(declare-fun time__t__hours__last__bit () Int)

(declare-fun time__t__hours__position () Int)

;; time__t__hours__first__bit_axiom
  (assert (<= 0 time__t__hours__first__bit))

;; time__t__hours__last__bit_axiom
  (assert (< time__t__hours__first__bit time__t__hours__last__bit))

;; time__t__hours__position_axiom
  (assert (<= 0 time__t__hours__position))

(declare-fun time__t__minutes__first__bit () Int)

(declare-fun time__t__minutes__last__bit () Int)

(declare-fun time__t__minutes__position () Int)

;; time__t__minutes__first__bit_axiom
  (assert (<= 0 time__t__minutes__first__bit))

;; time__t__minutes__last__bit_axiom
  (assert (< time__t__minutes__first__bit time__t__minutes__last__bit))

;; time__t__minutes__position_axiom
  (assert (<= 0 time__t__minutes__position))

(declare-fun time__t__seconds__first__bit () Int)

(declare-fun time__t__seconds__last__bit () Int)

(declare-fun time__t__seconds__position () Int)

;; time__t__seconds__first__bit_axiom
  (assert (<= 0 time__t__seconds__first__bit))

;; time__t__seconds__last__bit_axiom
  (assert (< time__t__seconds__first__bit time__t__seconds__last__bit))

;; time__t__seconds__position_axiom
  (assert (<= 0 time__t__seconds__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun max () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant2 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 59)) (in_range3 temp___expr_135)))

(define-fun dynamic_invariant3 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 59)) (in_range4 temp___expr_141)))

;; max__def_axiom
  (assert
  (= max (mk___rep
         (mk___split_fields (of_rep 2147483647) (of_rep1 59) (of_rep2 59)))))

(declare-fun result____split_fields () natural)

(declare-fun result____split_fields1 () minutes_t)

(declare-fun result____split_fields2 () seconds_t)

(declare-fun o () seconds_t)

(declare-fun o1 () minutes_t)

(declare-fun o2 () natural)

(declare-fun o3 () natural)

(declare-fun o4 () minutes_t)

(declare-fun o5 () seconds_t)

(declare-fun temp___166 () natural)

(declare-fun temp___1661 () minutes_t)

(declare-fun temp___1662 () seconds_t)

(declare-fun result () us_split_fields__ref)

(declare-fun result____split_fields3 () us_split_fields)

;; H
  (assert (= (to_rep2 o) 59))

;; H
  (assert (= (to_rep1 o1) 59))

;; H
  (assert (= (to_rep o2) 2147483647))

;; H
  (assert (= o2 o3))

;; H
  (assert (= o1 o4))

;; H
  (assert (= o o5))

;; H
  (assert (= temp___166 o3))

;; H
  (assert (= temp___1661 o4))

;; H
  (assert (= temp___1662 o5))

;; H
  (assert
  (= (mk___rep (mk___split_fields temp___166 temp___1661 temp___1662)) 
  max))

;; H
  (assert (not (= (bool_eq4 x max) true)))

;; H
  (assert
  (= result (mk___split_fields__ref
            (mk___split_fields result____split_fields result____split_fields1
            result____split_fields2))))

;; H
  (assert (= result____split_fields3 (us_split_fields1 x)))

;; H
  (assert (< (to_rep2 (rec__time__t__seconds (us_split_fields1 x))) 59))

(assert
;; WP_parameter_def
 ;; File "time.ads", line 6, characters 0-0
  (not (in_range4
  (+ (to_rep2 (rec__time__t__seconds result____split_fields3)) 1))))
(check-sat)
