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

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

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

(declare-sort value 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (value value) Bool)

(declare-fun dummy2 () value)

(declare-datatypes () ((value__ref (mk_value__ref (value__content value)))))
(define-fun value__ref___projection ((a value__ref)) value (value__content a))

(declare-fun to_rep1 (value) Int)

(declare-fun of_rep1 (Int) value)

;; inversion_axiom
  (assert
  (forall ((x value))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x value)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int value))))))
(declare-fun slide ((Array Int value) Int Int) (Array Int value))

;; slide_eq
  (assert
  (forall ((a (Array Int value)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int value)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int value) Int Int (Array Int value) Int
  Int) (Array Int value))

;; concat_def
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (value Int) (Array Int value))

;; singleton_def
  (assert
  (forall ((v value))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int value)) (a__first Int) (a__last Int)
  (b (Array Int value)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_151 Int))
                           (=>
                           (and (<= a__first temp___idx_151)
                           (<= temp___idx_151 a__last))
                           (= (to_rep1 (select a temp___idx_151)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_151)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_151 Int))
  (=> (and (<= a__first temp___idx_151) (<= temp___idx_151 a__last))
  (= (to_rep1 (select a temp___idx_151)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_151)))))))))))

(declare-fun compare ((Array Int value) Int Int (Array Int value) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun to_rep2 (integer) Int)

(declare-fun of_rep2 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes () ((t3s__ref (mk_t3s__ref (t3s__content integer)))))
(define-fun t3s__ref_2__projection ((a t3s__ref)) integer (t3s__content a))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last1 (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep2 (first (mk f l))) f) (= (to_rep2 (last1 (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property range_first range_last low)
                   (dynamic_property range_first range_last high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int value))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int value) (elts a))

(define-fun of_array ((a (Array Int value)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep2 (first (rt a))))

(define-fun last2 ((a us_t)) Int (to_rep2 (last1 (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last2 a))
                                  (+ (- (last2 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int value)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int value)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int value)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int value))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int value))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int value))) (<= 0 (object__alignment a))))

(define-fun bool_eq5 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep2 (first (rt x)))
                 (to_rep2 (last1 (rt x))) (elts y) (to_rep2 (first (rt y)))
                 (to_rep2 (last1 (rt y)))))

(declare-fun user_eq4 (us_t us_t) Bool)

(declare-fun dummy4 () us_t)

(declare-datatypes () ((t4s__ref (mk_t4s__ref (t4s__content us_t)))))
(define-fun t4s__ref___projection ((a t4s__ref)) us_t (t4s__content a))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__simple_unc_arrays__table__last natural)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) natural 
  (rec__simple_unc_arrays__table__last a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__simple_unc_arrays__table__v us_t)))))
(define-fun us_split_fields_V__projection ((a us_split_fields)) us_t 
  (rec__simple_unc_arrays__table__v a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep_3__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                              a))

(define-fun us_rep_4__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq6 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__simple_unc_arrays__table__last
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__simple_unc_arrays__table__last
                                                  (us_split_discrs1 b))))
                        (= (bool_eq5
                           (rec__simple_unc_arrays__table__v
                           (us_split_fields1 a))
                           (rec__simple_unc_arrays__table__v
                           (us_split_fields1 b))) true))
                   true false))

(declare-fun user_eq5 (us_rep us_rep) Bool)

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

(declare-fun simple_unc_arrays__table__last__first__bit () Int)

(declare-fun simple_unc_arrays__table__last__last__bit () Int)

(declare-fun simple_unc_arrays__table__last__position () Int)

;; simple_unc_arrays__table__last__first__bit_axiom
  (assert (<= 0 simple_unc_arrays__table__last__first__bit))

;; simple_unc_arrays__table__last__last__bit_axiom
  (assert
  (< simple_unc_arrays__table__last__first__bit simple_unc_arrays__table__last__last__bit))

;; simple_unc_arrays__table__last__position_axiom
  (assert (<= 0 simple_unc_arrays__table__last__position))

(declare-fun simple_unc_arrays__table__v__first__bit () Int)

(declare-fun simple_unc_arrays__table__v__last__bit () Int)

(declare-fun simple_unc_arrays__table__v__position () Int)

;; simple_unc_arrays__table__v__first__bit_axiom
  (assert (<= 0 simple_unc_arrays__table__v__first__bit))

;; simple_unc_arrays__table__v__last__bit_axiom
  (assert
  (< simple_unc_arrays__table__v__first__bit simple_unc_arrays__table__v__last__bit))

;; simple_unc_arrays__table__v__position_axiom
  (assert (<= 0 simple_unc_arrays__table__v__position))

(declare-fun dummy5 () us_rep)

(declare-datatypes () ((table__ref (mk_table__ref (table__content us_rep)))))
(define-fun table__ref___projection ((a table__ref)) us_rep (table__content
                                                            a))

(define-fun dynamic_invariant1 ((temp___expr_542 us_rep)
  (temp___is_init_539 Bool) (temp___skip_constant_540 Bool)
  (temp___do_toplevel_541 Bool)) Bool (let ((temp___543 (rec__simple_unc_arrays__table__last
                                                        (us_split_discrs1
                                                        temp___expr_542))))
                                      (and (dynamic_property1 1
                                      (to_rep temp___543)
                                      (first1
                                      (rec__simple_unc_arrays__table__v
                                      (us_split_fields1 temp___expr_542)))
                                      (last2
                                      (rec__simple_unc_arrays__table__v
                                      (us_split_fields1 temp___expr_542))))
                                      (and
                                      (= (first1
                                         (rec__simple_unc_arrays__table__v
                                         (us_split_fields1 temp___expr_542))) 1)
                                      (= (last2
                                         (rec__simple_unc_arrays__table__v
                                         (us_split_fields1 temp___expr_542))) 
                                      (to_rep temp___543))))))

(declare-fun a__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant3 ((temp___expr_531 Int)
  (temp___is_init_528 Bool) (temp___skip_constant_529 Bool)
  (temp___do_toplevel_530 Bool)) Bool (=>
                                      (or (= temp___is_init_528 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_531)))

(declare-fun a__split_fields () (Array Int value))

(declare-fun a__split_fields1 () t)

(declare-fun tmp () Int)

(declare-fun j () Int)

(declare-fun k () Int)

(declare-fun result () Int)

(declare-fun tmp1 () Int)

(declare-fun a__split_fields2 () (Array Int value))

(declare-fun a__split_fields3 () t)

(declare-fun a__split_fields4 () (Array Int value))

(declare-fun a__split_fields5 () t)

(declare-fun tmp2 () Int)

(declare-fun a__split_fields6 () (Array Int value))

(declare-fun a__split_fields7 () t)

(declare-fun tmp3 () Int)

(declare-fun result1 () Bool)

(define-fun a__split_fields8 () us_split_fields (mk___split_fields
                                                (mk___t a__split_fields2
                                                a__split_fields3)))

;; H
  (assert (dynamic_invariant1
  (mk___rep a__split_discrs
  (mk___split_fields (mk___t a__split_fields a__split_fields1))) true false
  true))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref tmp)))

;; H
  (assert
  (= tmp1 (to_rep (rec__simple_unc_arrays__table__last a__split_discrs))))

;; H
  (assert (in_range2 tmp1))

;; H
  (assert (dynamic_invariant1 (mk___rep a__split_discrs a__split_fields8)
  true true true))

;; H
  (assert (= tmp1 tmp2))

;; H
  (assert (= a__split_fields4 a__split_fields2))

;; H
  (assert (= a__split_fields5 a__split_fields3))

;; H
  (assert (= tmp3 tmp1))

;; H
  (assert
  (= (mk___split_fields (mk___t a__split_fields6 a__split_fields7)) a__split_fields8))

;; H
  (assert
  (= (= result1 true)
  (forall ((j1 Int))
  (=>
  (and (<= 1 j1)
  (<= j1 (- (to_rep (rec__simple_unc_arrays__table__last a__split_discrs)) 1)))
  (<= (to_rep1 (select a__split_fields4 j1)) (to_rep1
                                             (select a__split_fields4 (+ j1 1))))))))

;; H
  (assert (= result1 true))

;; H
  (assert (<= 1 j))

;; H
  (assert
  (<= j (to_rep (rec__simple_unc_arrays__table__last a__split_discrs))))

;; H
  (assert (<= 1 k))

;; H
  (assert
  (<= k (to_rep (rec__simple_unc_arrays__table__last a__split_discrs))))

(assert
;; WP_parameter_def
 ;; File "simple_unc_arrays.ads", line 10, characters 0-0
  (not (<= (to_rep2 (first a__split_fields5)) k)))
(check-sat)
