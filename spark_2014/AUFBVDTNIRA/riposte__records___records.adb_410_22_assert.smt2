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

(declare-sort unsigned_byte 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (unsigned_byte unsigned_byte) Bool)

(declare-fun dummy () unsigned_byte)

(declare-datatypes ()
((unsigned_byte__ref
 (mk_unsigned_byte__ref (unsigned_byte__content unsigned_byte)))))
(define-fun unsigned_byte__ref___projection ((a unsigned_byte__ref)) unsigned_byte 
  (unsigned_byte__content a))

(declare-fun to_rep (unsigned_byte) Int)

(declare-fun of_rep (Int) unsigned_byte)

;; inversion_axiom
  (assert
  (forall ((x unsigned_byte))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x unsigned_byte)) (! (in_range
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__records_prooffuncs__pair__a unsigned_byte)(rec__records_prooffuncs__pair__b unsigned_byte)))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) unsigned_byte 
  (rec__records_prooffuncs__pair__a a))

(define-fun us_split_fields_B__projection ((a us_split_fields)) unsigned_byte 
  (rec__records_prooffuncs__pair__b a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__records_prooffuncs__pair__a
                           (us_split_fields1 a))) (to_rep
                                                  (rec__records_prooffuncs__pair__a
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__records_prooffuncs__pair__b
                           (us_split_fields1 a))) (to_rep
                                                  (rec__records_prooffuncs__pair__b
                                                  (us_split_fields1 b)))))
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

(declare-fun records_prooffuncs__pair__a__first__bit () Int)

(declare-fun records_prooffuncs__pair__a__last__bit () Int)

(declare-fun records_prooffuncs__pair__a__position () Int)

;; records_prooffuncs__pair__a__first__bit_axiom
  (assert (<= 0 records_prooffuncs__pair__a__first__bit))

;; records_prooffuncs__pair__a__last__bit_axiom
  (assert
  (< records_prooffuncs__pair__a__first__bit records_prooffuncs__pair__a__last__bit))

;; records_prooffuncs__pair__a__position_axiom
  (assert (<= 0 records_prooffuncs__pair__a__position))

(declare-fun records_prooffuncs__pair__b__first__bit () Int)

(declare-fun records_prooffuncs__pair__b__last__bit () Int)

(declare-fun records_prooffuncs__pair__b__position () Int)

;; records_prooffuncs__pair__b__first__bit_axiom
  (assert (<= 0 records_prooffuncs__pair__b__first__bit))

;; records_prooffuncs__pair__b__last__bit_axiom
  (assert
  (< records_prooffuncs__pair__b__first__bit records_prooffuncs__pair__b__last__bit))

;; records_prooffuncs__pair__b__position_axiom
  (assert (<= 0 records_prooffuncs__pair__b__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((pair__ref (mk_pair__ref (pair__content us_rep)))))
(define-fun pair__ref___projection ((a pair__ref)) us_rep (pair__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__records_prooffuncs__optional_pair__exists Bool)(rec__records_prooffuncs__optional_pair__the_pair us_rep)))))
(define-fun us_split_fields_Exists__projection ((a us_split_fields2)) Bool 
  (rec__records_prooffuncs__optional_pair__exists a))

(define-fun us_split_fields_The_Pair__projection ((a us_split_fields2)) us_rep 
  (rec__records_prooffuncs__optional_pair__the_pair a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (rec__records_prooffuncs__optional_pair__exists
                            (us_split_fields3 a)) (rec__records_prooffuncs__optional_pair__exists
                                                  (us_split_fields3 b)))
                         (= (bool_eq1
                            (rec__records_prooffuncs__optional_pair__the_pair
                            (us_split_fields3 a))
                            (rec__records_prooffuncs__optional_pair__the_pair
                            (us_split_fields3 b))) true))
                    true false))

(declare-fun user_eq2 (us_rep1 us_rep1) Bool)

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

(declare-fun records_prooffuncs__optional_pair__exists__first__bit () Int)

(declare-fun records_prooffuncs__optional_pair__exists__last__bit () Int)

(declare-fun records_prooffuncs__optional_pair__exists__position () Int)

;; records_prooffuncs__optional_pair__exists__first__bit_axiom
  (assert (<= 0 records_prooffuncs__optional_pair__exists__first__bit))

;; records_prooffuncs__optional_pair__exists__last__bit_axiom
  (assert
  (< records_prooffuncs__optional_pair__exists__first__bit records_prooffuncs__optional_pair__exists__last__bit))

;; records_prooffuncs__optional_pair__exists__position_axiom
  (assert (<= 0 records_prooffuncs__optional_pair__exists__position))

(declare-fun records_prooffuncs__optional_pair__the_pair__first__bit () Int)

(declare-fun records_prooffuncs__optional_pair__the_pair__last__bit () Int)

(declare-fun records_prooffuncs__optional_pair__the_pair__position () Int)

;; records_prooffuncs__optional_pair__the_pair__first__bit_axiom
  (assert (<= 0 records_prooffuncs__optional_pair__the_pair__first__bit))

;; records_prooffuncs__optional_pair__the_pair__last__bit_axiom
  (assert
  (< records_prooffuncs__optional_pair__the_pair__first__bit records_prooffuncs__optional_pair__the_pair__last__bit))

;; records_prooffuncs__optional_pair__the_pair__position_axiom
  (assert (<= 0 records_prooffuncs__optional_pair__the_pair__position))

(declare-fun dummy2 () us_rep1)

(declare-datatypes ()
((optional_pair__ref
 (mk_optional_pair__ref (optional_pair__content us_rep1)))))
(define-fun optional_pair__ref___projection ((a optional_pair__ref)) us_rep1 
  (optional_pair__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant ((temp___expr_188 Int)
  (temp___is_init_185 Bool) (temp___skip_constant_186 Bool)
  (temp___do_toplevel_187 Bool)) Bool (=>
                                      (or (= temp___is_init_185 true)
                                      (<= 0 255)) (in_range temp___expr_188)))

(declare-fun x__split_fields () Bool)

(declare-fun x__split_fields1 () unsigned_byte)

(declare-fun x__split_fields2 () unsigned_byte)

(declare-fun result () Bool)

(declare-fun result1 () unsigned_byte)

(declare-fun result2 () unsigned_byte)

(declare-fun x__split_fields3 () Bool)

(declare-fun x__split_fields4 () unsigned_byte)

(declare-fun x__split_fields5 () unsigned_byte)

;; H
  (assert (= result x__split_fields))

;; H
  (assert (= result1 x__split_fields1))

;; H
  (assert (= result2 x__split_fields2))

;; H
  (assert (= x__split_fields x__split_fields3))

;; H
  (assert (= x__split_fields1 x__split_fields4))

;; H
  (assert (= x__split_fields2 x__split_fields5))

(assert
;; WP_parameter_def
 ;; File "records_prooffuncs.ads", line 19, characters 0-0
  (not (= (to_rep x__split_fields4) 0)))
(check-sat)
