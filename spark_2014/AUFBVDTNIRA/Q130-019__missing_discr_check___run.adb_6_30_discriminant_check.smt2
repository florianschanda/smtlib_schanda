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

(declare-sort enum 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (enum enum) Bool)

(declare-fun dummy1 () enum)

(declare-datatypes () ((enum__ref (mk_enum__ref (enum__content enum)))))
(define-fun enum__ref___projection ((a enum__ref)) enum (enum__content a))

(declare-fun to_rep1 (enum) Int)

(declare-fun of_rep1 (Int) enum)

;; inversion_axiom
  (assert
  (forall ((x enum)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x enum)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_discrs (mk___split_discrs (rec__p_init__t__e enum)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) enum (rec__p_init__t__e
                                                                    a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__p_init__t__x1 integer)(rec__p_init__t__x2 integer)))))
(define-fun us_split_fields_X1__projection ((a us_split_fields)) integer 
  (rec__p_init__t__x1 a))

(define-fun us_split_fields_X2__projection ((a us_split_fields)) integer 
  (rec__p_init__t__x2 a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)(attr__constrained Bool)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun us_rep_3__projection ((a us_rep)) Bool (attr__constrained a))

(define-fun p_init__t__x2__pred ((a us_rep)) Bool (= (to_rep1
                                                     (rec__p_init__t__e
                                                     (us_split_discrs1 a))) 1))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep1 (rec__p_init__t__e (us_split_discrs1 a))) 
                        (to_rep1 (rec__p_init__t__e (us_split_discrs1 b))))
                        (= (to_rep (rec__p_init__t__x1 (us_split_fields1 a))) 
                        (to_rep (rec__p_init__t__x1 (us_split_fields1 b)))))
                        (=> (p_init__t__x2__pred a)
                        (= (to_rep (rec__p_init__t__x2 (us_split_fields1 a))) 
                        (to_rep (rec__p_init__t__x2 (us_split_fields1 b))))))
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

(declare-fun p_init__t__e__first__bit () Int)

(declare-fun p_init__t__e__last__bit () Int)

(declare-fun p_init__t__e__position () Int)

;; p_init__t__e__first__bit_axiom
  (assert (<= 0 p_init__t__e__first__bit))

;; p_init__t__e__last__bit_axiom
  (assert (< p_init__t__e__first__bit p_init__t__e__last__bit))

;; p_init__t__e__position_axiom
  (assert (<= 0 p_init__t__e__position))

(declare-fun p_init__t__x1__first__bit () Int)

(declare-fun p_init__t__x1__last__bit () Int)

(declare-fun p_init__t__x1__position () Int)

;; p_init__t__x1__first__bit_axiom
  (assert (<= 0 p_init__t__x1__first__bit))

;; p_init__t__x1__last__bit_axiom
  (assert (< p_init__t__x1__first__bit p_init__t__x1__last__bit))

;; p_init__t__x1__position_axiom
  (assert (<= 0 p_init__t__x1__position))

(declare-fun p_init__t__x2__first__bit () Int)

(declare-fun p_init__t__x2__last__bit () Int)

(declare-fun p_init__t__x2__position () Int)

;; p_init__t__x2__first__bit_axiom
  (assert (<= 0 p_init__t__x2__first__bit))

;; p_init__t__x2__last__bit_axiom
  (assert (< p_init__t__x2__first__bit p_init__t__x2__last__bit))

;; p_init__t__x2__position_axiom
  (assert (<= 0 p_init__t__x2__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(define-fun default_initial_assumption ((temp___expr_143 us_rep)
  (temp___skip_top_level_144 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_143) false)
                                         (= (to_rep1
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_143))) 0)))

(declare-fun y1__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y2__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun in_range2 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep1
                                         (rec__p_init__t__e
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

(declare-fun p_init__t__e__first__bit1 () Int)

(declare-fun p_init__t__e__last__bit1 () Int)

(declare-fun p_init__t__e__position1 () Int)

;; p_init__t__e__first__bit_axiom
  (assert (<= 0 p_init__t__e__first__bit1))

;; p_init__t__e__last__bit_axiom
  (assert (< p_init__t__e__first__bit1 p_init__t__e__last__bit1))

;; p_init__t__e__position_axiom
  (assert (<= 0 p_init__t__e__position1))

(declare-fun p_init__t__x2__first__bit1 () Int)

(declare-fun p_init__t__x2__last__bit1 () Int)

(declare-fun p_init__t__x2__position1 () Int)

;; p_init__t__x2__first__bit_axiom
  (assert (<= 0 p_init__t__x2__first__bit1))

;; p_init__t__x2__last__bit_axiom
  (assert (< p_init__t__x2__first__bit1 p_init__t__x2__last__bit1))

;; p_init__t__x2__position_axiom
  (assert (<= 0 p_init__t__x2__position1))

(declare-fun p_init__t__x1__first__bit1 () Int)

(declare-fun p_init__t__x1__last__bit1 () Int)

(declare-fun p_init__t__x1__position1 () Int)

;; p_init__t__x1__first__bit_axiom
  (assert (<= 0 p_init__t__x1__first__bit1))

;; p_init__t__x1__last__bit_axiom
  (assert (< p_init__t__x1__first__bit1 p_init__t__x1__last__bit1))

;; p_init__t__x1__position_axiom
  (assert (<= 0 p_init__t__x1__position1))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((tz1S__ref (mk_tz1S__ref (tz1S__content us_rep)))))
(define-fun tz1S__ref___projection ((a tz1S__ref)) us_rep (tz1S__content a))

(declare-fun z1__split_discrs () us_split_discrs)

(declare-fun z1__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant ((temp___expr_199 us_rep)
  (temp___is_init_196 Bool) (temp___skip_constant_197 Bool)
  (temp___do_toplevel_198 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_197 true))
                                      (in_range2 0 temp___expr_199))
                                      (= (attr__constrained temp___expr_199) true)))

(define-fun default_initial_assumption1 ((temp___expr_201 us_rep)
  (temp___skip_top_level_202 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_201) true)
                                         (= (to_rep1
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_201))) 0)))

(define-fun in_range3 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep1
                                         (rec__p_init__t__e
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

(declare-fun p_init__t__e__first__bit2 () Int)

(declare-fun p_init__t__e__last__bit2 () Int)

(declare-fun p_init__t__e__position2 () Int)

;; p_init__t__e__first__bit_axiom
  (assert (<= 0 p_init__t__e__first__bit2))

;; p_init__t__e__last__bit_axiom
  (assert (< p_init__t__e__first__bit2 p_init__t__e__last__bit2))

;; p_init__t__e__position_axiom
  (assert (<= 0 p_init__t__e__position2))

(declare-fun p_init__t__x1__first__bit2 () Int)

(declare-fun p_init__t__x1__last__bit2 () Int)

(declare-fun p_init__t__x1__position2 () Int)

;; p_init__t__x1__first__bit_axiom
  (assert (<= 0 p_init__t__x1__first__bit2))

;; p_init__t__x1__last__bit_axiom
  (assert (< p_init__t__x1__first__bit2 p_init__t__x1__last__bit2))

;; p_init__t__x1__position_axiom
  (assert (<= 0 p_init__t__x1__position2))

(declare-fun p_init__t__x2__first__bit2 () Int)

(declare-fun p_init__t__x2__last__bit2 () Int)

(declare-fun p_init__t__x2__position2 () Int)

;; p_init__t__x2__first__bit_axiom
  (assert (<= 0 p_init__t__x2__first__bit2))

;; p_init__t__x2__last__bit_axiom
  (assert (< p_init__t__x2__first__bit2 p_init__t__x2__last__bit2))

;; p_init__t__x2__position_axiom
  (assert (<= 0 p_init__t__x2__position2))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((tz2S__ref (mk_tz2S__ref (tz2S__content us_rep)))))
(define-fun tz2S__ref___projection ((a tz2S__ref)) us_rep (tz2S__content a))

(declare-fun z2__split_discrs () us_split_discrs)

(declare-fun z2__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant1 ((temp___expr_209 us_rep)
  (temp___is_init_206 Bool) (temp___skip_constant_207 Bool)
  (temp___do_toplevel_208 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_207 true))
                                      (in_range3 1 temp___expr_209))
                                      (= (attr__constrained temp___expr_209) true)))

(define-fun default_initial_assumption2 ((temp___expr_211 us_rep)
  (temp___skip_top_level_212 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_211) true)
                                         (= (to_rep1
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_211))) 1)))

(define-fun in_range4 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep1
                                         (rec__p_init__t__e
                                         (us_split_discrs1 a)))))

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))

(declare-fun p_init__t__e__first__bit3 () Int)

(declare-fun p_init__t__e__last__bit3 () Int)

(declare-fun p_init__t__e__position3 () Int)

;; p_init__t__e__first__bit_axiom
  (assert (<= 0 p_init__t__e__first__bit3))

;; p_init__t__e__last__bit_axiom
  (assert (< p_init__t__e__first__bit3 p_init__t__e__last__bit3))

;; p_init__t__e__position_axiom
  (assert (<= 0 p_init__t__e__position3))

(declare-fun p_init__t__x2__first__bit3 () Int)

(declare-fun p_init__t__x2__last__bit3 () Int)

(declare-fun p_init__t__x2__position3 () Int)

;; p_init__t__x2__first__bit_axiom
  (assert (<= 0 p_init__t__x2__first__bit3))

;; p_init__t__x2__last__bit_axiom
  (assert (< p_init__t__x2__first__bit3 p_init__t__x2__last__bit3))

;; p_init__t__x2__position_axiom
  (assert (<= 0 p_init__t__x2__position3))

(declare-fun p_init__t__x1__first__bit3 () Int)

(declare-fun p_init__t__x1__last__bit3 () Int)

(declare-fun p_init__t__x1__position3 () Int)

;; p_init__t__x1__first__bit_axiom
  (assert (<= 0 p_init__t__x1__first__bit3))

;; p_init__t__x1__last__bit_axiom
  (assert (< p_init__t__x1__first__bit3 p_init__t__x1__last__bit3))

;; p_init__t__x1__position_axiom
  (assert (<= 0 p_init__t__x1__position3))

(declare-fun dummy5 () us_rep)

(declare-datatypes () ((tc1S__ref (mk_tc1S__ref (tc1S__content us_rep)))))
(define-fun tc1S__ref___projection ((a tc1S__ref)) us_rep (tc1S__content a))

(define-fun dynamic_invariant2 ((temp___expr_179 us_rep)
  (temp___is_init_176 Bool) (temp___skip_constant_177 Bool)
  (temp___do_toplevel_178 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_177 true))
                                      (in_range4 0 temp___expr_179))
                                      (= (attr__constrained temp___expr_179) true)))

(define-fun default_initial_assumption3 ((temp___expr_181 us_rep)
  (temp___skip_top_level_182 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_181) true)
                                         (= (to_rep1
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_181))) 0)))

(define-fun in_range5 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep1
                                         (rec__p_init__t__e
                                         (us_split_discrs1 a)))))

(declare-fun value__size4 () Int)

(declare-fun object__size4 (us_rep) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size4 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment4 a))))

(declare-fun p_init__t__e__first__bit4 () Int)

(declare-fun p_init__t__e__last__bit4 () Int)

(declare-fun p_init__t__e__position4 () Int)

;; p_init__t__e__first__bit_axiom
  (assert (<= 0 p_init__t__e__first__bit4))

;; p_init__t__e__last__bit_axiom
  (assert (< p_init__t__e__first__bit4 p_init__t__e__last__bit4))

;; p_init__t__e__position_axiom
  (assert (<= 0 p_init__t__e__position4))

(declare-fun p_init__t__x2__first__bit4 () Int)

(declare-fun p_init__t__x2__last__bit4 () Int)

(declare-fun p_init__t__x2__position4 () Int)

;; p_init__t__x2__first__bit_axiom
  (assert (<= 0 p_init__t__x2__first__bit4))

;; p_init__t__x2__last__bit_axiom
  (assert (< p_init__t__x2__first__bit4 p_init__t__x2__last__bit4))

;; p_init__t__x2__position_axiom
  (assert (<= 0 p_init__t__x2__position4))

(declare-fun p_init__t__x1__first__bit4 () Int)

(declare-fun p_init__t__x1__last__bit4 () Int)

(declare-fun p_init__t__x1__position4 () Int)

;; p_init__t__x1__first__bit_axiom
  (assert (<= 0 p_init__t__x1__first__bit4))

;; p_init__t__x1__last__bit_axiom
  (assert (< p_init__t__x1__first__bit4 p_init__t__x1__last__bit4))

;; p_init__t__x1__position_axiom
  (assert (<= 0 p_init__t__x1__position4))

(declare-fun dummy6 () us_rep)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content us_rep)))))
(define-fun t1b__ref___projection ((a t1b__ref)) us_rep (t1b__content a))

(declare-fun c1 () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun in_range6 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep1
                                         (rec__p_init__t__e
                                         (us_split_discrs1 a)))))

(declare-fun value__size5 () Int)

(declare-fun object__size5 (us_rep) Int)

(declare-fun value__alignment5 () Int)

(declare-fun object__alignment5 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size5))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size5 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment5))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment5 a))))

(declare-fun p_init__t__e__first__bit5 () Int)

(declare-fun p_init__t__e__last__bit5 () Int)

(declare-fun p_init__t__e__position5 () Int)

;; p_init__t__e__first__bit_axiom
  (assert (<= 0 p_init__t__e__first__bit5))

;; p_init__t__e__last__bit_axiom
  (assert (< p_init__t__e__first__bit5 p_init__t__e__last__bit5))

;; p_init__t__e__position_axiom
  (assert (<= 0 p_init__t__e__position5))

(declare-fun p_init__t__x1__first__bit5 () Int)

(declare-fun p_init__t__x1__last__bit5 () Int)

(declare-fun p_init__t__x1__position5 () Int)

;; p_init__t__x1__first__bit_axiom
  (assert (<= 0 p_init__t__x1__first__bit5))

;; p_init__t__x1__last__bit_axiom
  (assert (< p_init__t__x1__first__bit5 p_init__t__x1__last__bit5))

;; p_init__t__x1__position_axiom
  (assert (<= 0 p_init__t__x1__position5))

(declare-fun p_init__t__x2__first__bit5 () Int)

(declare-fun p_init__t__x2__last__bit5 () Int)

(declare-fun p_init__t__x2__position5 () Int)

;; p_init__t__x2__first__bit_axiom
  (assert (<= 0 p_init__t__x2__first__bit5))

;; p_init__t__x2__last__bit_axiom
  (assert (< p_init__t__x2__first__bit5 p_init__t__x2__last__bit5))

;; p_init__t__x2__position_axiom
  (assert (<= 0 p_init__t__x2__position5))

(declare-fun dummy7 () us_rep)

(declare-datatypes () ((tc2S__ref (mk_tc2S__ref (tc2S__content us_rep)))))
(define-fun tc2S__ref___projection ((a tc2S__ref)) us_rep (tc2S__content a))

(define-fun dynamic_invariant3 ((temp___expr_189 us_rep)
  (temp___is_init_186 Bool) (temp___skip_constant_187 Bool)
  (temp___do_toplevel_188 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_187 true))
                                      (in_range6 1 temp___expr_189))
                                      (= (attr__constrained temp___expr_189) true)))

(define-fun default_initial_assumption4 ((temp___expr_191 us_rep)
  (temp___skip_top_level_192 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_191) true)
                                         (= (to_rep1
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_191))) 1)))

(define-fun in_range7 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep1
                                         (rec__p_init__t__e
                                         (us_split_discrs1 a)))))

(declare-fun value__size6 () Int)

(declare-fun object__size6 (us_rep) Int)

(declare-fun value__alignment6 () Int)

(declare-fun object__alignment6 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size6))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size6 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment6))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment6 a))))

(declare-fun p_init__t__e__first__bit6 () Int)

(declare-fun p_init__t__e__last__bit6 () Int)

(declare-fun p_init__t__e__position6 () Int)

;; p_init__t__e__first__bit_axiom
  (assert (<= 0 p_init__t__e__first__bit6))

;; p_init__t__e__last__bit_axiom
  (assert (< p_init__t__e__first__bit6 p_init__t__e__last__bit6))

;; p_init__t__e__position_axiom
  (assert (<= 0 p_init__t__e__position6))

(declare-fun p_init__t__x1__first__bit6 () Int)

(declare-fun p_init__t__x1__last__bit6 () Int)

(declare-fun p_init__t__x1__position6 () Int)

;; p_init__t__x1__first__bit_axiom
  (assert (<= 0 p_init__t__x1__first__bit6))

;; p_init__t__x1__last__bit_axiom
  (assert (< p_init__t__x1__first__bit6 p_init__t__x1__last__bit6))

;; p_init__t__x1__position_axiom
  (assert (<= 0 p_init__t__x1__position6))

(declare-fun p_init__t__x2__first__bit6 () Int)

(declare-fun p_init__t__x2__last__bit6 () Int)

(declare-fun p_init__t__x2__position6 () Int)

;; p_init__t__x2__first__bit_axiom
  (assert (<= 0 p_init__t__x2__first__bit6))

;; p_init__t__x2__last__bit_axiom
  (assert (< p_init__t__x2__first__bit6 p_init__t__x2__last__bit6))

;; p_init__t__x2__position_axiom
  (assert (<= 0 p_init__t__x2__position6))

(declare-fun dummy8 () us_rep)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content us_rep)))))
(define-fun t2b__ref___projection ((a t2b__ref)) us_rep (t2b__content a))

(declare-fun c2 () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

;; c1__def_axiom
  (assert
  (= c1 (mk___rep (mk___split_discrs (of_rep1 0))
        (mk___split_fields (of_rep 1) dummy) true)))

;; c2__def_axiom
  (assert
  (= c2 (mk___rep (mk___split_discrs (of_rep1 1))
        (mk___split_fields (of_rep 1) (of_rep 2)) true)))

(define-fun dynamic_invariant5 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 1)) (in_range1 temp___expr_135)))

(declare-fun us () Int)

(declare-fun o () enum)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () integer)

(declare-fun o4 () enum)

(declare-fun o5 () enum)

(declare-fun o6 () integer)

(declare-fun o7 () integer)

(declare-fun o8 () Bool)

(declare-fun o9 () enum)

(declare-fun o10 () integer)

(declare-fun o11 () integer)

(declare-fun o12 () Bool)

;; H
  (assert (and (= us 0) (in_range1 0)))

;; H
  (assert (= (to_rep o1) 1))

;; H
  (assert (= o1 o2))

;; H
  (assert (= dummy o3))

;; H
  (assert (= (to_rep1 o) 0))

;; H
  (assert (= o o4))

;; H
  (assert (= o5 o4))

;; H
  (assert (= o6 o2))

;; H
  (assert (= o7 o3))

;; H
  (assert (= true o8))

;; H
  (assert
  (= (mk___rep (mk___split_discrs o9) (mk___split_fields o10 o11) o12) 
  (mk___rep (mk___split_discrs o5) (mk___split_fields o6 o7) o8)))

(assert
;; WP_parameter_def
 ;; File "run.adb", line 15, characters 0-0
  (not (= 0 (to_rep1 o9))))
(check-sat)
