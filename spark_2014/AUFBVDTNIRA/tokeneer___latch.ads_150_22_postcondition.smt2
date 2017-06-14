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

(declare-sort yearst 0)

(define-fun in_range ((x Int)) Bool (and (<= 1901 x) (<= x 2099)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (yearst yearst) Bool)

(declare-fun dummy () yearst)

(declare-datatypes ()
((yearst__ref (mk_yearst__ref (yearst__content yearst)))))
(define-fun yearst__ref___projection ((a yearst__ref)) yearst (yearst__content
                                                              a))

(declare-fun to_rep (yearst) Int)

(declare-fun of_rep (Int) yearst)

;; inversion_axiom
  (assert
  (forall ((x yearst)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x yearst)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort monthst 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 12)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (monthst monthst) Bool)

(declare-fun dummy1 () monthst)

(declare-datatypes ()
((monthst__ref (mk_monthst__ref (monthst__content monthst)))))
(define-fun monthst__ref___projection ((a monthst__ref)) monthst (monthst__content
                                                                 a))

(declare-fun to_rep1 (monthst) Int)

(declare-fun of_rep1 (Int) monthst)

;; inversion_axiom
  (assert
  (forall ((x monthst))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x monthst)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort dayst 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 31)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (dayst dayst) Bool)

(declare-fun dummy2 () dayst)

(declare-datatypes () ((dayst__ref (mk_dayst__ref (dayst__content dayst)))))
(define-fun dayst__ref___projection ((a dayst__ref)) dayst (dayst__content a))

(declare-fun to_rep2 (dayst) Int)

(declare-fun of_rep2 (Int) dayst)

;; inversion_axiom
  (assert
  (forall ((x dayst))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x dayst)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort millisecst 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 86399999)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (millisecst millisecst) Bool)

(declare-fun dummy3 () millisecst)

(declare-datatypes ()
((millisecst__ref (mk_millisecst__ref (millisecst__content millisecst)))))
(define-fun millisecst__ref___projection ((a millisecst__ref)) millisecst 
  (millisecst__content a))

(declare-fun to_rep3 (millisecst) Int)

(declare-fun of_rep3 (Int) millisecst)

;; inversion_axiom
  (assert
  (forall ((x millisecst))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x millisecst)) (! (in_range3
  (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__clock__timet__year yearst)(rec__clock__timet__month monthst)(rec__clock__timet__day dayst)(rec__clock__timet__millisec millisecst)))))
(define-fun us_split_fields_Year__projection ((a us_split_fields)) yearst 
  (rec__clock__timet__year a))

(define-fun us_split_fields_Month__projection ((a us_split_fields)) monthst 
  (rec__clock__timet__month a))

(define-fun us_split_fields_Day__projection ((a us_split_fields)) dayst 
  (rec__clock__timet__day a))

(define-fun us_split_fields_MilliSec__projection ((a us_split_fields)) millisecst 
  (rec__clock__timet__millisec a))

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
                        (and
                        (= (to_rep
                           (rec__clock__timet__year (us_split_fields1 a))) 
                        (to_rep
                        (rec__clock__timet__year (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__clock__timet__month (us_split_fields1 a))) 
                        (to_rep1
                        (rec__clock__timet__month (us_split_fields1 b)))))
                        (= (to_rep2
                           (rec__clock__timet__day (us_split_fields1 a))) 
                        (to_rep2
                        (rec__clock__timet__day (us_split_fields1 b)))))
                        (= (to_rep3
                           (rec__clock__timet__millisec (us_split_fields1 a))) 
                        (to_rep3
                        (rec__clock__timet__millisec (us_split_fields1 b)))))
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

(declare-fun clock__timet__year__first__bit () Int)

(declare-fun clock__timet__year__last__bit () Int)

(declare-fun clock__timet__year__position () Int)

;; clock__timet__year__first__bit_axiom
  (assert (<= 0 clock__timet__year__first__bit))

;; clock__timet__year__last__bit_axiom
  (assert (< clock__timet__year__first__bit clock__timet__year__last__bit))

;; clock__timet__year__position_axiom
  (assert (<= 0 clock__timet__year__position))

(declare-fun clock__timet__month__first__bit () Int)

(declare-fun clock__timet__month__last__bit () Int)

(declare-fun clock__timet__month__position () Int)

;; clock__timet__month__first__bit_axiom
  (assert (<= 0 clock__timet__month__first__bit))

;; clock__timet__month__last__bit_axiom
  (assert (< clock__timet__month__first__bit clock__timet__month__last__bit))

;; clock__timet__month__position_axiom
  (assert (<= 0 clock__timet__month__position))

(declare-fun clock__timet__day__first__bit () Int)

(declare-fun clock__timet__day__last__bit () Int)

(declare-fun clock__timet__day__position () Int)

;; clock__timet__day__first__bit_axiom
  (assert (<= 0 clock__timet__day__first__bit))

;; clock__timet__day__last__bit_axiom
  (assert (< clock__timet__day__first__bit clock__timet__day__last__bit))

;; clock__timet__day__position_axiom
  (assert (<= 0 clock__timet__day__position))

(declare-fun clock__timet__millisec__first__bit () Int)

(declare-fun clock__timet__millisec__last__bit () Int)

(declare-fun clock__timet__millisec__position () Int)

;; clock__timet__millisec__first__bit_axiom
  (assert (<= 0 clock__timet__millisec__first__bit))

;; clock__timet__millisec__last__bit_axiom
  (assert
  (< clock__timet__millisec__first__bit clock__timet__millisec__last__bit))

;; clock__timet__millisec__position_axiom
  (assert (<= 0 clock__timet__millisec__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((timet__ref (mk_timet__ref (timet__content us_rep)))))
(define-fun timet__ref___projection ((a timet__ref)) us_rep (timet__content
                                                            a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun latch_timeout (us_split_fields) us_rep)

(declare-fun latch_timeout__function_guard (us_rep us_split_fields) Bool)

;; latch_timeout__post_axiom
  (assert true)

;; latch_timeout__def_axiom
  (assert
  (forall ((latch__latchtimeout__fields us_split_fields))
  (! (=> (latch_timeout__function_guard
     (latch_timeout latch__latchtimeout__fields) latch__latchtimeout__fields)
     (= (latch_timeout latch__latchtimeout__fields) (mk___rep
                                                    latch__latchtimeout__fields))) :pattern (
  (latch_timeout latch__latchtimeout__fields)) )))

(declare-fun time () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant ((temp___expr_236 Int)
  (temp___is_init_233 Bool) (temp___skip_constant_234 Bool)
  (temp___do_toplevel_235 Bool)) Bool (=>
                                      (or (= temp___is_init_233 true)
                                      (<= 1901 2099)) (in_range
                                      temp___expr_236)))

(define-fun dynamic_invariant1 ((temp___expr_242 Int)
  (temp___is_init_239 Bool) (temp___skip_constant_240 Bool)
  (temp___do_toplevel_241 Bool)) Bool (=>
                                      (or (= temp___is_init_239 true)
                                      (<= 1 12)) (in_range1 temp___expr_242)))

(define-fun dynamic_invariant2 ((temp___expr_248 Int)
  (temp___is_init_245 Bool) (temp___skip_constant_246 Bool)
  (temp___do_toplevel_247 Bool)) Bool (=>
                                      (or (= temp___is_init_245 true)
                                      (<= 1 31)) (in_range2 temp___expr_248)))

(define-fun dynamic_invariant3 ((temp___expr_272 Int)
  (temp___is_init_269 Bool) (temp___skip_constant_270 Bool)
  (temp___do_toplevel_271 Bool)) Bool (=>
                                      (or (= temp___is_init_269 true)
                                      (<= 0 86399999)) (in_range3
                                      temp___expr_272)))

(declare-fun latchtimeout__split_fields () yearst)

(declare-fun latchtimeout__split_fields1 () monthst)

(declare-fun latchtimeout__split_fields2 () dayst)

(declare-fun latchtimeout__split_fields3 () millisecst)

;; H
  (assert
  (= (bool_eq4
     (mk___rep
     (mk___split_fields latchtimeout__split_fields
     latchtimeout__split_fields1 latchtimeout__split_fields2
     latchtimeout__split_fields3)) time) true))

;; H
  (assert (latch_timeout__function_guard
  (latch_timeout
  (mk___split_fields latchtimeout__split_fields latchtimeout__split_fields1
  latchtimeout__split_fields2 latchtimeout__split_fields3))
  (mk___split_fields latchtimeout__split_fields latchtimeout__split_fields1
  latchtimeout__split_fields2 latchtimeout__split_fields3)))

(assert
;; WP_parameter_def
 ;; File "latch.ads", line 120, characters 0-0
  (not
  (= (bool_eq4
     (latch_timeout
     (mk___split_fields latchtimeout__split_fields
     latchtimeout__split_fields1 latchtimeout__split_fields2
     latchtimeout__split_fields3)) time) true)))
(check-sat)
