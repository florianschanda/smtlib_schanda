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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__simple_oo_without_contracts__t__x integer)(rec__ext__ us_private)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) integer 
  (rec__simple_oo_without_contracts__t__x a))

(define-fun us_split_fields___projection ((a us_split_fields)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)(attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) Int (attr__tag a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__simple_oo_without_contracts__t__x
                           (us_split_fields1 a))) (to_rep
                                                  (rec__simple_oo_without_contracts__t__x
                                                  (us_split_fields1 b))))
                   true false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

(declare-fun us_dispatch_eq (us_rep us_rep) Bool)

(declare-fun us_tag () Int)

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

(declare-fun simple_oo_without_contracts__t__x__first__bit () Int)

(declare-fun simple_oo_without_contracts__t__x__last__bit () Int)

(declare-fun simple_oo_without_contracts__t__x__position () Int)

;; simple_oo_without_contracts__t__x__first__bit_axiom
  (assert (<= 0 simple_oo_without_contracts__t__x__first__bit))

;; simple_oo_without_contracts__t__x__last__bit_axiom
  (assert
  (< simple_oo_without_contracts__t__x__first__bit simple_oo_without_contracts__t__x__last__bit))

;; simple_oo_without_contracts__t__x__position_axiom
  (assert (<= 0 simple_oo_without_contracts__t__x__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__simple_oo_without_contracts__t1__y integer)(rec__simple_oo_without_contracts__t__x1 integer)(rec__ext__1 us_private)))))
(define-fun us_split_fields_Y__projection ((a us_split_fields2)) integer 
  (rec__simple_oo_without_contracts__t1__y a))

(define-fun us_split_fields_X2__projection ((a us_split_fields2)) integer 
  (rec__simple_oo_without_contracts__t__x1 a))

(define-fun us_split_fields_2__projection ((a us_split_fields2)) us_private 
  (rec__ext__1 a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)(attr__tag1 Int)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun us_rep_4__projection ((a us_rep1)) Int (attr__tag1 a))

(declare-fun hide_ext__ (integer us_private) us_private)

(declare-fun extract__y (us_private) integer)

;; extract__y__conv
  (assert
  (forall ((y integer))
  (forall ((rec__ext__2 us_private))
  (= (extract__y (hide_ext__ y rec__ext__2)) y))))

(declare-fun extract__ext__ (us_private) us_private)

(define-fun to_base ((a us_rep1)) us_rep (mk___rep
                                         (mk___split_fields
                                         (rec__simple_oo_without_contracts__t__x1
                                         (us_split_fields3 a))
                                         (hide_ext__
                                         (rec__simple_oo_without_contracts__t1__y
                                         (us_split_fields3 a))
                                         (rec__ext__1 (us_split_fields3 a))))
                                         (attr__tag1 a)))

(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1
                                         (mk___split_fields1
                                         (extract__y
                                         (rec__ext__ (us_split_fields1 r)))
                                         (rec__simple_oo_without_contracts__t__x
                                         (us_split_fields1 r))
                                         (extract__ext__
                                         (rec__ext__ (us_split_fields1 r))))
                                         (attr__tag r)))

(define-fun bool_eq2 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep
                            (rec__simple_oo_without_contracts__t1__y
                            (us_split_fields3 a))) (to_rep
                                                   (rec__simple_oo_without_contracts__t1__y
                                                   (us_split_fields3 b))))
                         (= (to_rep
                            (rec__simple_oo_without_contracts__t__x1
                            (us_split_fields3 a))) (to_rep
                                                   (rec__simple_oo_without_contracts__t__x1
                                                   (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq2 (us_rep1 us_rep1) Bool)

(declare-fun us_tag1 () Int)

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

(declare-fun simple_oo_without_contracts__t1__y__first__bit () Int)

(declare-fun simple_oo_without_contracts__t1__y__last__bit () Int)

(declare-fun simple_oo_without_contracts__t1__y__position () Int)

;; simple_oo_without_contracts__t1__y__first__bit_axiom
  (assert (<= 0 simple_oo_without_contracts__t1__y__first__bit))

;; simple_oo_without_contracts__t1__y__last__bit_axiom
  (assert
  (< simple_oo_without_contracts__t1__y__first__bit simple_oo_without_contracts__t1__y__last__bit))

;; simple_oo_without_contracts__t1__y__position_axiom
  (assert (<= 0 simple_oo_without_contracts__t1__y__position))

(declare-fun simple_oo_without_contracts__t__x__first__bit1 () Int)

(declare-fun simple_oo_without_contracts__t__x__last__bit1 () Int)

(declare-fun simple_oo_without_contracts__t__x__position1 () Int)

;; simple_oo_without_contracts__t__x__first__bit_axiom
  (assert (<= 0 simple_oo_without_contracts__t__x__first__bit1))

;; simple_oo_without_contracts__t__x__last__bit_axiom
  (assert
  (< simple_oo_without_contracts__t__x__first__bit1 simple_oo_without_contracts__t__x__last__bit1))

;; simple_oo_without_contracts__t__x__position_axiom
  (assert (<= 0 simple_oo_without_contracts__t__x__position1))

(declare-fun dummy2 () us_rep1)

(declare-datatypes () ((t1__ref (mk_t1__ref (t1__content us_rep1)))))
(define-fun t1__ref___projection ((a t1__ref)) us_rep1 (t1__content a))

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2
 (rec__simple_oo_without_contracts__t3__z2 integer)(rec__simple_oo_without_contracts__t__x2 integer)(rec__simple_oo_without_contracts__t1__y1 integer)(rec__ext__2 us_private)))))
(define-fun us_split_fields_Z2__projection ((a us_split_fields4)) integer 
  (rec__simple_oo_without_contracts__t3__z2 a))

(define-fun us_split_fields_X4__projection ((a us_split_fields4)) integer 
  (rec__simple_oo_without_contracts__t__x2 a))

(define-fun us_split_fields_Y3__projection ((a us_split_fields4)) integer 
  (rec__simple_oo_without_contracts__t1__y1 a))

(define-fun us_split_fields_4__projection ((a us_split_fields4)) us_private 
  (rec__ext__2 a))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_4__projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)(attr__tag2 Int)))))
(define-fun us_rep_7__projection ((a us_rep2)) us_split_fields4 (us_split_fields5
                                                                a))

(define-fun us_rep_8__projection ((a us_rep2)) Int (attr__tag2 a))

(declare-fun hide_ext__1 (integer integer us_private) us_private)

(declare-fun extract__z2 (us_private) integer)

;; extract__z2__conv
  (assert
  (forall ((z2 integer) (y integer))
  (forall ((rec__ext__3 us_private))
  (= (extract__z2 (hide_ext__1 z2 y rec__ext__3)) z2))))

;; extract__y__conv
  (assert
  (forall ((z2 integer) (y integer))
  (forall ((rec__ext__3 us_private))
  (= (extract__y (hide_ext__1 z2 y rec__ext__3)) y))))

(declare-fun extract__ext__1 (us_private) us_private)

(define-fun to_base1 ((a us_rep2)) us_rep (mk___rep
                                          (mk___split_fields
                                          (rec__simple_oo_without_contracts__t__x2
                                          (us_split_fields5 a))
                                          (hide_ext__1
                                          (rec__simple_oo_without_contracts__t3__z2
                                          (us_split_fields5 a))
                                          (rec__simple_oo_without_contracts__t1__y1
                                          (us_split_fields5 a))
                                          (rec__ext__2 (us_split_fields5 a))))
                                          (attr__tag2 a)))

(define-fun of_base1 ((r us_rep)) us_rep2 (mk___rep2
                                          (mk___split_fields2
                                          (extract__z2
                                          (rec__ext__ (us_split_fields1 r)))
                                          (rec__simple_oo_without_contracts__t__x
                                          (us_split_fields1 r))
                                          (extract__y
                                          (rec__ext__ (us_split_fields1 r)))
                                          (extract__ext__1
                                          (rec__ext__ (us_split_fields1 r))))
                                          (attr__tag r)))

(define-fun bool_eq3 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (and
                         (= (to_rep
                            (rec__simple_oo_without_contracts__t3__z2
                            (us_split_fields5 a))) (to_rep
                                                   (rec__simple_oo_without_contracts__t3__z2
                                                   (us_split_fields5 b))))
                         (= (to_rep
                            (rec__simple_oo_without_contracts__t__x2
                            (us_split_fields5 a))) (to_rep
                                                   (rec__simple_oo_without_contracts__t__x2
                                                   (us_split_fields5 b)))))
                         (= (to_rep
                            (rec__simple_oo_without_contracts__t1__y1
                            (us_split_fields5 a))) (to_rep
                                                   (rec__simple_oo_without_contracts__t1__y1
                                                   (us_split_fields5 b)))))
                    true false))

(declare-fun user_eq3 (us_rep2 us_rep2) Bool)

(declare-fun us_tag2 () Int)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep2) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))

(declare-fun simple_oo_without_contracts__t3__z2__first__bit () Int)

(declare-fun simple_oo_without_contracts__t3__z2__last__bit () Int)

(declare-fun simple_oo_without_contracts__t3__z2__position () Int)

;; simple_oo_without_contracts__t3__z2__first__bit_axiom
  (assert (<= 0 simple_oo_without_contracts__t3__z2__first__bit))

;; simple_oo_without_contracts__t3__z2__last__bit_axiom
  (assert
  (< simple_oo_without_contracts__t3__z2__first__bit simple_oo_without_contracts__t3__z2__last__bit))

;; simple_oo_without_contracts__t3__z2__position_axiom
  (assert (<= 0 simple_oo_without_contracts__t3__z2__position))

(declare-fun simple_oo_without_contracts__t__x__first__bit2 () Int)

(declare-fun simple_oo_without_contracts__t__x__last__bit2 () Int)

(declare-fun simple_oo_without_contracts__t__x__position2 () Int)

;; simple_oo_without_contracts__t__x__first__bit_axiom
  (assert (<= 0 simple_oo_without_contracts__t__x__first__bit2))

;; simple_oo_without_contracts__t__x__last__bit_axiom
  (assert
  (< simple_oo_without_contracts__t__x__first__bit2 simple_oo_without_contracts__t__x__last__bit2))

;; simple_oo_without_contracts__t__x__position_axiom
  (assert (<= 0 simple_oo_without_contracts__t__x__position2))

(declare-fun simple_oo_without_contracts__t1__y__first__bit1 () Int)

(declare-fun simple_oo_without_contracts__t1__y__last__bit1 () Int)

(declare-fun simple_oo_without_contracts__t1__y__position1 () Int)

;; simple_oo_without_contracts__t1__y__first__bit_axiom
  (assert (<= 0 simple_oo_without_contracts__t1__y__first__bit1))

;; simple_oo_without_contracts__t1__y__last__bit_axiom
  (assert
  (< simple_oo_without_contracts__t1__y__first__bit1 simple_oo_without_contracts__t1__y__last__bit1))

;; simple_oo_without_contracts__t1__y__position_axiom
  (assert (<= 0 simple_oo_without_contracts__t1__y__position1))

(declare-fun dummy3 () us_rep2)

(declare-datatypes () ((t3__ref (mk_t3__ref (t3__content us_rep2)))))
(define-fun t3__ref___projection ((a t3__ref)) us_rep2 (t3__content a))

(define-fun default_initial_assumption ((temp___expr_175 us_rep2)
  (temp___skip_top_level_176 Bool)) Bool (= (attr__tag2 temp___expr_175) 
  us_tag2))

(declare-fun par1 () us_rep2)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun r1b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun default_initial_assumption1 ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (= (attr__tag temp___expr_136) 
  us_tag))

(define-fun default_initial_assumption2 ((temp___expr_148 us_rep1)
  (temp___skip_top_level_149 Bool)) Bool (= (attr__tag1 temp___expr_148) 
  us_tag1))

(declare-fun g2 () Int)

(declare-fun g3 () Int)

(declare-fun i () Int)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun i2 () Int)

;; H
  (assert (in_range1 g2))

;; H
  (assert (in_range1 g3))

;; H
  (assert (= g3 r1b))

;; H
  (assert (in_range1 r1b))

;; H
  (assert (= result i))

;; H
  (assert (= i1 1))

;; H
  (assert (<= 1 i1))

;; H
  (assert (<= i1 r1b))

;; H
  (assert (and (<= 1 i2) (<= i2 r1b)))

(assert
;; WP_parameter_def
 ;; File "simple_oo_without_contracts.ads", line 22, characters 0-0
  (not (in_range1
  (+ i2 (to_rep
        (rec__simple_oo_without_contracts__t3__z2 (us_split_fields5 par1)))))))
(check-sat)
