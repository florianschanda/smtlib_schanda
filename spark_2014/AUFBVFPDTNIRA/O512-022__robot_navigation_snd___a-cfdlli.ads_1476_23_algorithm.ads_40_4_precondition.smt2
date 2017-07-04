;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
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

(declare-sort count_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (count_type count_type) Bool)

(declare-fun dummy () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(declare-fun to_rep (count_type) Int)

(declare-fun of_rep (Int) count_type)

;; inversion_axiom
  (assert
  (forall ((x count_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x count_type)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__algorithm__gap_vectors__list__capacity count_type)))))
(define-fun us_split_discrs_3__projection ((a us_split_discrs)) count_type 
  (rec__algorithm__gap_vectors__list__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref_3__projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__algorithm__gap_vectors__list us_main_type)))))
(define-fun us_split_fields_List__projection ((a us_split_fields)) us_main_type 
  (rec__algorithm__gap_vectors__list a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_9__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep_13__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                               a))

(define-fun us_rep_14__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                               a))

(define-fun bool_eq ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__algorithm__gap_vectors__list__capacity
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__algorithm__gap_vectors__list__capacity
                                                  (us_split_discrs1 b))))
                        (= (us_main_eq
                           (rec__algorithm__gap_vectors__list
                           (us_split_fields1 a))
                           (rec__algorithm__gap_vectors__list
                           (us_split_fields1 b))) true))
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

(declare-fun algorithm__gap_vectors__list__capacity__first__bit () Int)

(declare-fun algorithm__gap_vectors__list__capacity__last__bit () Int)

(declare-fun algorithm__gap_vectors__list__capacity__position () Int)

;; algorithm__gap_vectors__list__capacity__first__bit_axiom
  (assert (<= 0 algorithm__gap_vectors__list__capacity__first__bit))

;; algorithm__gap_vectors__list__capacity__last__bit_axiom
  (assert
  (< algorithm__gap_vectors__list__capacity__first__bit algorithm__gap_vectors__list__capacity__last__bit))

;; algorithm__gap_vectors__list__capacity__position_axiom
  (assert (<= 0 algorithm__gap_vectors__list__capacity__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((list__ref (mk_list__ref (list__content us_rep)))))
(define-fun list__ref___projection ((a list__ref)) us_rep (list__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__algorithm__gap_vectors__cursor__node count_type)))))
(define-fun us_split_fields_Node__projection ((a us_split_fields2)) count_type 
  (rec__algorithm__gap_vectors__cursor__node a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_10__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_15__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                 a))

(define-fun bool_eq1 ((a us_rep1)
  (b us_rep1)) Bool (ite (= (to_rep
                            (rec__algorithm__gap_vectors__cursor__node
                            (us_split_fields3 a))) (to_rep
                                                   (rec__algorithm__gap_vectors__cursor__node
                                                   (us_split_fields3 b))))
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

(declare-fun algorithm__gap_vectors__cursor__node__first__bit () Int)

(declare-fun algorithm__gap_vectors__cursor__node__last__bit () Int)

(declare-fun algorithm__gap_vectors__cursor__node__position () Int)

;; algorithm__gap_vectors__cursor__node__first__bit_axiom
  (assert (<= 0 algorithm__gap_vectors__cursor__node__first__bit))

;; algorithm__gap_vectors__cursor__node__last__bit_axiom
  (assert
  (< algorithm__gap_vectors__cursor__node__first__bit algorithm__gap_vectors__cursor__node__last__bit))

;; algorithm__gap_vectors__cursor__node__position_axiom
  (assert (<= 0 algorithm__gap_vectors__cursor__node__position))

(declare-fun dummy2 () us_rep1)

(declare-datatypes ()
((cursor__ref (mk_cursor__ref (cursor__content us_rep1)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep1 (cursor__content
                                                               a))

(define-fun default_initial_assumption ((temp___expr_413 us_rep1)
  (temp___skip_top_level_414 Bool)) Bool (= (to_rep
                                            (rec__algorithm__gap_vectors__cursor__node
                                            (us_split_fields3
                                            temp___expr_413))) 0))

(declare-fun no_element () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_324 Int)
  (temp___is_init_321 Bool) (temp___skip_constant_322 Bool)
  (temp___do_toplevel_323 Bool)) Bool (=>
                                      (or (= temp___is_init_321 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_324)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep
                (rec__algorithm__gap_vectors__list__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant result true false true))) :pattern ((length
                                                            container)) )))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep2 0)

(declare-fun bool_eq2 (us_rep2 us_rep2) Bool)

(declare-fun user_eq3 (us_rep2 us_rep2) Bool)

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

(declare-fun dummy3 () us_rep2)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep2)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep2 (sequence__content
                                                                   a))

(declare-fun pow2 (Int) Int)

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int1 (RoundingMode Int) Float32)

(declare-fun to_int2 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range2 ((x Real)) Bool (and
                                      (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                      (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range2
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort float 0)

(declare-fun user_eq4 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy4 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-fun to_rep1 (float) Float32)

(declare-fun of_rep1 (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep1 x)) (fp.isNaN (to_rep1 x)))) :pattern (
  (to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x)))
     (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))) )))

(declare-sort normalized2pi 0)

(define-fun in_range3 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000001 #b10010010000111111011011)))))

(declare-fun user_eq5 (normalized2pi normalized2pi) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy5 () normalized2pi)

(declare-datatypes ()
((normalized2pi__ref
 (mk_normalized2pi__ref (normalized2pi__content normalized2pi)))))
(define-fun normalized2pi__ref___projection ((a normalized2pi__ref)) normalized2pi 
  (normalized2pi__content a))

(declare-fun to_rep2 (normalized2pi) Float32)

(declare-fun of_rep2 (Float32) normalized2pi)

;; inversion_axiom
  (assert
  (forall ((x normalized2pi))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x normalized2pi)) (! (in_range3
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2 (rec__spaces__angles__angle__theta normalized2pi)))))
(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep3 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep___projection ((a us_rep3)) us_split_fields4 (us_split_fields5
                                                               a))

(define-fun bool_eq3 ((a us_rep3)
  (b us_rep3)) Bool (ite (= (to_rep2
                            (rec__spaces__angles__angle__theta
                            (us_split_fields5 a))) (to_rep2
                                                   (rec__spaces__angles__angle__theta
                                                   (us_split_fields5 b))))
                    true false))

(declare-fun user_eq6 (us_rep3 us_rep3) Bool)

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep3) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep3) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep3)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep3)) (<= 0 (object__alignment3 a))))

(declare-fun spaces__angles__angle__theta__first__bit () Int)

(declare-fun spaces__angles__angle__theta__last__bit () Int)

(declare-fun spaces__angles__angle__theta__position () Int)

;; spaces__angles__angle__theta__first__bit_axiom
  (assert (<= 0 spaces__angles__angle__theta__first__bit))

;; spaces__angles__angle__theta__last__bit_axiom
  (assert
  (< spaces__angles__angle__theta__first__bit spaces__angles__angle__theta__last__bit))

;; spaces__angles__angle__theta__position_axiom
  (assert (<= 0 spaces__angles__angle__theta__position))

(declare-fun dummy6 () us_rep3)

(declare-datatypes ()
((angle__ref (mk_angle__ref (angle__content us_rep3)))))
(define-fun angle__ref___projection ((a angle__ref)) us_rep3 (angle__content
                                                             a))

(declare-sort idir_t 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 1) x) (<= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq7 (idir_t idir_t) Bool)

(declare-fun dummy7 () idir_t)

(declare-datatypes ()
((idir_t__ref (mk_idir_t__ref (idir_t__content idir_t)))))
(define-fun idir_t__ref___projection ((a idir_t__ref)) idir_t (idir_t__content
                                                              a))

(declare-fun to_rep3 (idir_t) Int)

(declare-fun of_rep3 (Int) idir_t)

;; inversion_axiom
  (assert
  (forall ((x idir_t))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x idir_t)) (! (in_range4 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-datatypes ()
((us_split_fields6
 (mk___split_fields3
 (rec__gaps__gap__bearing us_rep3)(rec__gaps__gap__distance float)(rec__gaps__gap__idir idir_t)))))
(define-fun us_split_fields_bearing__projection ((a us_split_fields6)) us_rep3 
  (rec__gaps__gap__bearing a))

(define-fun us_split_fields_iDir__projection ((a us_split_fields6)) idir_t 
  (rec__gaps__gap__idir a))

(declare-datatypes ()
((us_split_fields__ref3
 (mk___split_fields__ref3 (us_split_fields__content3 us_split_fields6)))))
(define-fun us_split_fields__ref_6__projection ((a us_split_fields__ref3)) us_split_fields6 
  (us_split_fields__content3 a))

(declare-datatypes ()
((us_rep4 (mk___rep3 (us_split_fields7 us_split_fields6)))))
(define-fun us_rep_8__projection ((a us_rep4)) us_split_fields6 (us_split_fields7
                                                                a))

(define-fun bool_eq4 ((a us_rep4)
  (b us_rep4)) Bool (ite (and
                         (and
                         (= (bool_eq3
                            (rec__gaps__gap__bearing (us_split_fields7 a))
                            (rec__gaps__gap__bearing (us_split_fields7 b))) true)
                         (= (to_rep1
                            (rec__gaps__gap__distance (us_split_fields7 a))) 
                         (to_rep1
                         (rec__gaps__gap__distance (us_split_fields7 b)))))
                         (= (to_rep3
                            (rec__gaps__gap__idir (us_split_fields7 a))) 
                         (to_rep3
                         (rec__gaps__gap__idir (us_split_fields7 b)))))
                    true false))

(declare-fun user_eq8 (us_rep4 us_rep4) Bool)

(declare-fun value__size4 () Int)

(declare-fun object__size4 (us_rep4) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 (us_rep4) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a us_rep4)) (<= 0 (object__size4 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a us_rep4)) (<= 0 (object__alignment4 a))))

(declare-fun gaps__gap__bearing__first__bit () Int)

(declare-fun gaps__gap__bearing__last__bit () Int)

(declare-fun gaps__gap__bearing__position () Int)

;; gaps__gap__bearing__first__bit_axiom
  (assert (<= 0 gaps__gap__bearing__first__bit))

;; gaps__gap__bearing__last__bit_axiom
  (assert (< gaps__gap__bearing__first__bit gaps__gap__bearing__last__bit))

;; gaps__gap__bearing__position_axiom
  (assert (<= 0 gaps__gap__bearing__position))

(declare-fun gaps__gap__distance__first__bit () Int)

(declare-fun gaps__gap__distance__last__bit () Int)

(declare-fun gaps__gap__distance__position () Int)

;; gaps__gap__distance__first__bit_axiom
  (assert (<= 0 gaps__gap__distance__first__bit))

;; gaps__gap__distance__last__bit_axiom
  (assert (< gaps__gap__distance__first__bit gaps__gap__distance__last__bit))

;; gaps__gap__distance__position_axiom
  (assert (<= 0 gaps__gap__distance__position))

(declare-fun gaps__gap__idir__first__bit () Int)

(declare-fun gaps__gap__idir__last__bit () Int)

(declare-fun gaps__gap__idir__position () Int)

;; gaps__gap__idir__first__bit_axiom
  (assert (<= 0 gaps__gap__idir__first__bit))

;; gaps__gap__idir__last__bit_axiom
  (assert (< gaps__gap__idir__first__bit gaps__gap__idir__last__bit))

;; gaps__gap__idir__position_axiom
  (assert (<= 0 gaps__gap__idir__position))

(declare-fun dummy8 () us_rep4)

(declare-datatypes () ((gap__ref (mk_gap__ref (gap__content us_rep4)))))
(define-fun gap__ref___projection ((a gap__ref)) us_rep4 (gap__content a))

(declare-datatypes ()
((element_type__ref (mk_element_type__ref (element_type__content us_rep4)))))
(define-fun element_type__ref_2__projection ((a element_type__ref)) us_rep4 
  (element_type__content a))

(declare-fun get (us_rep2 Int) us_rep4)

(declare-fun get__function_guard (us_rep4 us_rep2 Int) Bool)

(define-fun contains ((container us_rep2) (fst Int) (lst Int)
  (item us_rep4)) Bool (ite (exists ((i Int))
                            (and (and (<= fst i) (<= i lst))
                            (= (bool_eq4 (get container i) item) true)))
                       true false))

(declare-fun contains__function_guard (Bool us_rep2 Int Int us_rep4) Bool)

(declare-fun length1 (us_rep2) Int)

(declare-fun length__function_guard1 (Int us_rep2) Bool)

(define-fun last ((container us_rep2)) Int (+ 0 (length1 container)))

(declare-fun last__function_guard (Int us_rep2) Bool)

(declare-sort us_main_type2 0)

(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)

(declare-sort us_rep5 0)

(declare-fun bool_eq5 (us_rep5 us_rep5) Bool)

(declare-fun user_eq9 (us_rep5 us_rep5) Bool)

(declare-fun value__size5 () Int)

(declare-fun object__size5 (us_rep5) Int)

(declare-fun value__alignment5 () Int)

(declare-fun object__alignment5 (us_rep5) Int)

;; value__size_axiom
  (assert (<= 0 value__size5))

;; object__size_axiom
  (assert (forall ((a us_rep5)) (<= 0 (object__size5 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment5))

;; object__alignment_axiom
  (assert (forall ((a us_rep5)) (<= 0 (object__alignment5 a))))

(declare-fun dummy9 () us_rep5)

(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep5)))))
(define-fun map__ref___projection ((a map__ref)) us_rep5 (map__content a))

(declare-datatypes ()
((key_type__ref (mk_key_type__ref (key_type__content us_rep1)))))
(define-fun key_type__ref___projection ((a key_type__ref)) us_rep1 (key_type__content
                                                                   a))

(declare-fun get1 (us_rep5 us_rep1) Int)

(declare-fun get__function_guard1 (Int us_rep5 us_rep1) Bool)

(declare-sort element_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq10 (element_type element_type) Bool)

(declare-fun dummy10 () element_type)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type)))))
(define-fun element_type__ref_3__projection ((a element_type__ref1)) element_type 
  (element_type__content1 a))

(define-fun dynamic_invariant1 ((temp___expr_461 Int)
  (temp___is_init_458 Bool) (temp___skip_constant_459 Bool)
  (temp___do_toplevel_460 Bool)) Bool (=>
                                      (or (= temp___is_init_458 true)
                                      (<= 1 2147483647)) (in_range5
                                      temp___expr_461)))

(declare-fun length2 (us_rep5) Int)

(declare-fun length__function_guard2 (Int us_rep5) Bool)

(declare-fun is_empty (us_rep5) Bool)

(declare-fun is_empty__function_guard (Bool us_rep5) Bool)

(define-fun default_initial_assumption1 ((temp___expr_468 us_rep5)
  (temp___skip_top_level_469 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_469 true))
                                         (and
                                         (= (is_empty temp___expr_468) true)
                                         (= (length2 temp___expr_468) 0))))

(declare-fun has_key (us_rep5 us_rep1) Bool)

(declare-fun has_key__function_guard (Bool us_rep5 us_rep1) Bool)

(declare-fun witness (us_rep5 us_rep1) Int)

(declare-fun witness__function_guard (Int us_rep5 us_rep1) Bool)

(declare-fun w_get (us_rep5 Int) Int)

(declare-fun w_get__function_guard (Int us_rep5 Int) Bool)

(define-fun default_initial_assumption2 ((temp___expr_456 us_rep1)
  (temp___skip_top_level_457 Bool)) Bool (= (to_rep
                                            (rec__algorithm__gap_vectors__cursor__node
                                            (us_split_fields3
                                            temp___expr_456))) 0))

;; get__post_axiom
  (assert
  (forall ((container us_rep5))
  (forall ((key us_rep1))
  (! (=> (= (has_key container key) true)
     (let ((result (get1 container key)))
     (and
     (=> (= (of_int 0) true)
     (and (= result (w_get container (witness container key)))
     (forall ((k us_rep1))
     (=> (= (has_key container k) true)
     (= (= (bool_eq1 k key) true)
     (= (witness container key) (witness container k)))))))
     (dynamic_invariant1 result true false true)))) :pattern ((get1 container
                                                              key)) ))))

(declare-fun model__ (us_rep) us_rep2)

(declare-fun model____function_guard (us_rep2 us_rep) Bool)

(define-fun oeq ((left us_rep2)
  (right us_rep2)) Bool (and (= (length1 left) (length1 right)) (ite 
                                                                (forall
                                                                ((n Int))
                                                                (=>
                                                                (and (<= 1 n)
                                                                (<= n 
                                                                (last left)))
                                                                (= (bool_eq4
                                                                   (get left
                                                                   n)
                                                                   (get right
                                                                   n)) true)))
                                                                true false)))

(declare-fun oeq__function_guard (Bool us_rep2 us_rep2) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep2) (b us_rep2))
  (! (= (user_eq3 a b) (oeq a b)) :pattern ((user_eq3 a b)) )))

(define-fun default_initial_assumption3 ((temp___expr_449 us_rep2)
  (temp___skip_top_level_450 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_450 true))
                                         (= (length1 temp___expr_449) 0)))

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length1 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

(declare-fun positions (us_rep) us_rep5)

(declare-fun positions__function_guard (us_rep5 us_rep) Bool)

;; positions__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (positions container)))
     (and (not (= (has_key result no_element) true))
     (forall ((i us_rep1))
     (=> (= (has_key result i) true)
     (and
     (and (<= 1 (get1 result i)) (<= (get1 result i) (length container)))
     (forall ((j us_rep1))
     (=> (= (has_key result j) true)
     (=> (= (get1 result i) (get1 result j)) (= (bool_eq1 i j) true))))))))) :pattern (
  (positions container)) )))

(define-fun has_element ((container us_rep)
  (position us_rep1)) Bool (has_key (positions container) position))

(declare-fun has_element__function_guard (Bool us_rep us_rep1) Bool)

(declare-fun container () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-datatypes ()
((element_type__ref2
 (mk_element_type__ref2 (element_type__content2 us_rep4)))))
(define-fun element_type__ref___projection ((a element_type__ref2)) us_rep4 
  (element_type__content2 a))

(declare-fun item () us_rep4)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun position () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant2 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(define-fun dynamic_invariant3 ((temp___expr_170 Float32)
  (temp___is_init_167 Bool) (temp___skip_constant_168 Bool)
  (temp___do_toplevel_169 Bool)) Bool (=>
                                      (or (= temp___is_init_167 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000001 #b10010010000111111011011)))
                                      (in_range3 temp___expr_170)))

(define-fun dynamic_invariant4 ((temp___expr_286 Int)
  (temp___is_init_283 Bool) (temp___skip_constant_284 Bool)
  (temp___do_toplevel_285 Bool)) Bool (=>
                                      (or (= temp___is_init_283 true)
                                      (<= (- 1) 1)) (in_range4
                                      temp___expr_286)))

;; no_element__def_axiom
  (assert (= no_element (mk___rep1 (mk___split_fields1 (of_rep 0)))))

(declare-sort extended_index 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq11 (extended_index extended_index) Bool)

(declare-fun dummy11 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant5 ((temp___expr_442 Int)
  (temp___is_init_439 Bool) (temp___skip_constant_440 Bool)
  (temp___do_toplevel_441 Bool)) Bool (=>
                                      (or (= temp___is_init_439 true)
                                      (<= 0 2147483647)) (in_range6
                                      temp___expr_442)))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep2))
  (! (let ((result (length1 container1)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false
     true))) :pattern ((length1 container1)) )))

;; get__post_axiom
  (assert true)

;; has_key__post_axiom
  (assert
  (forall ((container1 us_rep5))
  (forall ((key us_rep1))
  (! (=> (= (of_int 0) true)
     (=>
     (exists ((k us_rep1))
     (and (= (has_key container1 k) true) (= (bool_eq1 k key) true)))
     (= (has_key container1 key) true))) :pattern ((has_key container1 key)) ))))

;; length__post_axiom
  (assert
  (forall ((container1 us_rep5)) (! (dynamic_invariant (length2 container1)
  true false true) :pattern ((length2 container1)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container1 us_rep5))
  (! (= (= (is_empty container1) true)
     (forall ((key us_rep1)) (not (= (has_key container1 key) true)))) :pattern (
  (is_empty container1)) )))

(declare-fun has_witness (us_rep5 Int) Bool)

(declare-fun has_witness__function_guard (Bool us_rep5 Int) Bool)

;; has_witness__post_axiom
  (assert true)

;; witness__post_axiom
  (assert
  (forall ((container1 us_rep5))
  (forall ((key us_rep1))
  (! (=> (= (has_key container1 key) true)
     (let ((result (witness container1 key)))
     (and (= (has_witness container1 result) true) (dynamic_invariant result
     true false true)))) :pattern ((witness container1 key)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container1 us_rep5))
  (forall ((witness1 Int))
  (! (=>
     (and (dynamic_invariant witness1 true true true)
     (= (has_witness container1 witness1) true)) (dynamic_invariant1
     (w_get container1 witness1) true false true)) :pattern ((w_get
                                                             container1
                                                             witness1)) ))))

(declare-fun o () count_type)

(declare-fun o1 () count_type)

(declare-fun temp___781 () count_type)

(declare-fun o2 () us_rep5)

;; H
  (assert (= (to_rep o) 0))

;; H
  (assert (= o o1))

;; H
  (assert (= temp___781 o1))

;; H
  (assert (= (mk___rep1 (mk___split_fields1 temp___781)) no_element))

;; H
  (assert
  (or (= (has_key (positions container) position) true)
  (= (bool_eq1 position no_element) true)))

;; H
  (assert (not (= (bool_eq1 position no_element) true)))

;; H
  (assert
  (and (= o2 (positions container))
  (and (not (= (has_key o2 no_element) true))
  (forall ((i us_rep1))
  (=> (= (has_key o2 i) true)
  (and (and (<= 1 (get1 o2 i)) (<= (get1 o2 i) (length container)))
  (forall ((j us_rep1))
  (=> (= (has_key o2 j) true)
  (=> (= (get1 o2 i) (get1 o2 j)) (= (bool_eq1 i j) true))))))))))

(assert
;; WP_parameter_def
 ;; File "a-cfdlli.ads", line 1403, characters 0-0
  (not (= (has_key o2 position) true)))
(check-sat)
