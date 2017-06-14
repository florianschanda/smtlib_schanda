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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-sort ar_index 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 9999)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (ar_index ar_index) Bool)

(declare-fun dummy1 () ar_index)

(declare-datatypes ()
((ar_index__ref (mk_ar_index__ref (ar_index__content ar_index)))))
(define-fun ar_index__ref___projection ((a ar_index__ref)) ar_index (ar_index__content
                                                                    a))

(declare-fun to_rep (ar_index) Int)

(declare-fun of_rep (Int) ar_index)

;; inversion_axiom
  (assert
  (forall ((x ar_index))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x ar_index)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort length_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 10000)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (length_type length_type) Bool)

(declare-fun dummy2 () length_type)

(declare-datatypes ()
((length_type__ref (mk_length_type__ref (length_type__content length_type)))))
(define-fun length_type__ref___projection ((a length_type__ref)) length_type 
  (length_type__content a))

(declare-fun to_rep1 (length_type) Int)

(declare-fun of_rep1 (Int) length_type)

;; inversion_axiom
  (assert
  (forall ((x length_type))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x length_type)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun to_rep2 (integer) Int)

(declare-fun of_rep2 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                             (of_rep2 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep2 (select a temp___idx_132)) (to_rep2
                                                                  (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep2 (select a temp___idx_132)) (to_rep2
                                         (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep2 (select a (+ i 1))) (to_rep2 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep2 (select b (+ i 1))) (to_rep2 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy3 () (Array Int integer))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int integer)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int integer)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))

(declare-fun user_eq3 ((Array Int integer) (Array Int integer)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__ring_buf__ring_buffer__data (Array Int integer))(rec__ring_buf__ring_buffer__first ar_index)(rec__ring_buf__ring_buffer__length length_type)))))
(define-fun us_split_fields_Data__projection ((a us_split_fields)) (Array Int integer) 
  (rec__ring_buf__ring_buffer__data a))

(define-fun us_split_fields_First__projection ((a us_split_fields)) ar_index 
  (rec__ring_buf__ring_buffer__first a))

(define-fun us_split_fields_Length__projection ((a us_split_fields)) length_type 
  (rec__ring_buf__ring_buffer__length a))

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
                        (= (bool_eq3
                           (rec__ring_buf__ring_buffer__data
                           (us_split_fields1 a)) 0 9999
                           (rec__ring_buf__ring_buffer__data
                           (us_split_fields1 b)) 0 9999) true)
                        (= (to_rep
                           (rec__ring_buf__ring_buffer__first
                           (us_split_fields1 a))) (to_rep
                                                  (rec__ring_buf__ring_buffer__first
                                                  (us_split_fields1 b)))))
                        (= (to_rep1
                           (rec__ring_buf__ring_buffer__length
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__ring_buf__ring_buffer__length
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun ring_buf__ring_buffer__data__first__bit () Int)

(declare-fun ring_buf__ring_buffer__data__last__bit () Int)

(declare-fun ring_buf__ring_buffer__data__position () Int)

;; ring_buf__ring_buffer__data__first__bit_axiom
  (assert (<= 0 ring_buf__ring_buffer__data__first__bit))

;; ring_buf__ring_buffer__data__last__bit_axiom
  (assert
  (< ring_buf__ring_buffer__data__first__bit ring_buf__ring_buffer__data__last__bit))

;; ring_buf__ring_buffer__data__position_axiom
  (assert (<= 0 ring_buf__ring_buffer__data__position))

(declare-fun ring_buf__ring_buffer__first__first__bit () Int)

(declare-fun ring_buf__ring_buffer__first__last__bit () Int)

(declare-fun ring_buf__ring_buffer__first__position () Int)

;; ring_buf__ring_buffer__first__first__bit_axiom
  (assert (<= 0 ring_buf__ring_buffer__first__first__bit))

;; ring_buf__ring_buffer__first__last__bit_axiom
  (assert
  (< ring_buf__ring_buffer__first__first__bit ring_buf__ring_buffer__first__last__bit))

;; ring_buf__ring_buffer__first__position_axiom
  (assert (<= 0 ring_buf__ring_buffer__first__position))

(declare-fun ring_buf__ring_buffer__length__first__bit () Int)

(declare-fun ring_buf__ring_buffer__length__last__bit () Int)

(declare-fun ring_buf__ring_buffer__length__position () Int)

;; ring_buf__ring_buffer__length__first__bit_axiom
  (assert (<= 0 ring_buf__ring_buffer__length__first__bit))

;; ring_buf__ring_buffer__length__last__bit_axiom
  (assert
  (< ring_buf__ring_buffer__length__first__bit ring_buf__ring_buffer__length__last__bit))

;; ring_buf__ring_buffer__length__position_axiom
  (assert (<= 0 ring_buf__ring_buffer__length__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((ring_buffer__ref (mk_ring_buffer__ref (ring_buffer__content us_rep)))))
(define-fun ring_buffer__ref___projection ((a ring_buffer__ref)) us_rep 
  (ring_buffer__content a))

(declare-fun is_empty (us_rep) Bool)

(declare-fun is_empty__function_guard (Bool us_rep) Bool)

(declare-fun is_full (us_rep) Bool)

(declare-fun is_full__function_guard (Bool us_rep) Bool)

(declare-fun head (us_rep) Int)

(declare-fun head__function_guard (Int us_rep) Bool)

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun z () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant1 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 0 9999)) (in_range1
                                      temp___expr_136)))

(define-fun dynamic_invariant2 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 10000)) (in_range2
                                      temp___expr_142)))

;; is_full__post_axiom
  (assert true)

;; is_full__def_axiom
  (assert
  (forall ((r us_rep))
  (! (=> (is_full__function_guard (is_full r) r)
     (= (= (is_full r) true)
     (= (to_rep1 (rec__ring_buf__ring_buffer__length (us_split_fields1 r))) 10000))) :pattern (
  (is_full r)) )))

;; is_empty__post_axiom
  (assert true)

;; is_empty__def_axiom
  (assert
  (forall ((r us_rep))
  (! (=> (is_empty__function_guard (is_empty r) r)
     (= (= (is_empty r) true)
     (= (to_rep1 (rec__ring_buf__ring_buffer__length (us_split_fields1 r))) 0))) :pattern (
  (is_empty r)) )))

;; head__post_axiom
  (assert
  (forall ((r us_rep))
  (! (and (is_empty__function_guard (is_empty r) r)
     (=> (not (= (is_empty r) true))
     (let ((result (head r)))
     (=> (head__function_guard result r) (dynamic_invariant result true false
     true))))) :pattern ((head r)) )))

;; head__def_axiom
  (assert
  (forall ((r us_rep))
  (! (=> (head__function_guard (head r) r)
     (= (head r) (to_rep2
                 (let ((temp___177 (rec__ring_buf__ring_buffer__data
                                   (us_split_fields1 r))))
                 (select temp___177 (to_rep
                                    (rec__ring_buf__ring_buffer__first
                                    (us_split_fields1 r)))))))) :pattern (
  (head r)) )))

(declare-fun h () Int)

(declare-fun r__split_fields () (Array Int integer))

(declare-fun r__split_fields1 () ar_index)

(declare-fun r__split_fields2 () length_type)

(declare-fun r__split_fields3 () length_type)

(declare-fun r__split_fields4 () (Array Int integer))

(declare-fun r__split_fields5 () ar_index)

(declare-fun r__split_fields6 () length_type)

(define-fun r__split_fields7 () us_split_fields (mk___split_fields
                                                r__split_fields4
                                                r__split_fields5
                                                r__split_fields6))

(define-fun r__split_fields8 () us_split_fields (mk___split_fields
                                                r__split_fields
                                                r__split_fields1
                                                r__split_fields2))

;; H
  (assert (in_range x))

;; H
  (assert (in_range y))

;; H
  (assert (in_range z))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range h)))

;; H
  (assert (is_empty__function_guard (is_empty (mk___rep r__split_fields8))
  (mk___rep r__split_fields8)))

;; H
  (assert (= (is_empty (mk___rep r__split_fields8)) true))

;; H
  (assert (= (to_rep1 r__split_fields3) (+ (to_rep1 r__split_fields2) 1)))

;; H
  (assert (= (to_rep1 r__split_fields6) (+ (to_rep1 r__split_fields3) 1)))

;; H
  (assert (is_empty__function_guard (is_empty (mk___rep r__split_fields7))
  (mk___rep r__split_fields7)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (not (= (is_empty (mk___rep r__split_fields7)) true))))
(check-sat)
