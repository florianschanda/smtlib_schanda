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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int natural))))))
(declare-fun slide ((Array Int natural) Int Int) (Array Int natural))

;; slide_eq
  (assert
  (forall ((a (Array Int natural)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int natural)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int natural) Int Int (Array Int natural) Int
  Int) (Array Int natural))

;; concat_def
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (natural Int) (Array Int natural))

;; singleton_def
  (assert
  (forall ((v natural))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int natural)) (a__first Int) (a__last Int)
  (b (Array Int natural)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int natural) Int Int (Array Int natural) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq1 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq1 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (positive positive) Bool)

(declare-fun dummy2 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range2 f)
     (=> (in_range2 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range2 low)
                   (and (in_range2 high)
                   (=> (<= low high) (and (in_range3 low) (in_range3 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int natural))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int natural) (elts a))

(define-fun of_array ((a (Array Int natural)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int natural)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int natural)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq1 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes ()
((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content
                                                                  a))

(define-fun dynamic_invariant1 ((temp___expr_137 us_t)
  (temp___is_init_134 Bool) (temp___skip_constant_135 Bool)
  (temp___do_toplevel_136 Bool)) Bool (=>
                                      (not (= temp___skip_constant_135 true))
                                      (dynamic_property 1 2147483647
                                      (first1 temp___expr_137)
                                      (last1 temp___expr_137))))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun c () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes ()
((a_range__ref (mk_a_range__ref (a_range__content integer)))))
(define-fun a_range__ref___projection ((a1 a_range__ref)) integer (a_range__content
                                                                  a1))

(declare-sort twrapperD1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 1)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (twrapperD1 twrapperD1) Bool)

(declare-fun dummy5 () twrapperD1)

(declare-datatypes ()
((twrapperD1__ref (mk_twrapperD1__ref (twrapperD1__content twrapperD1)))))
(define-fun twrapperD1__ref___projection ((a1 twrapperD1__ref)) twrapperD1 
  (twrapperD1__content a1))

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int integer))))))
(declare-fun slide1 ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a1 (Array Int integer)))
  (forall ((first3 Int))
  (! (= (slide1 a1 first3 first3) a1) :pattern ((slide1 a1 first3 first3)) ))))

;; slide_def
  (assert
  (forall ((a1 (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a1 old_first new_first) i) (select a1 (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a1 old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a1 (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a1 a_first a_last b b_first b_last) i) (select a1 i)))
     (=> (< a_last i)
     (= (select (concat2 a1 a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a1 a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq7 ((a1 (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (to_rep1 (select a1 temp___idx_133)) (to_rep1
                                                                   (select b (+ (- b__first a__first) temp___idx_133)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a1 (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq7 b b__first b__last a1 a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep1 (select a1 temp___idx_133)) (to_rep1
                                          (select b (+ (- b__first a__first) temp___idx_133)))))))))))

(declare-fun compare1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a1 (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare1 a1 a_first a_last b b_first b_last) 0)
     (= (bool_eq7 a1 a_first a_last b b_first b_last) true)) :pattern (
  (compare1 a1 a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a1 (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare1 a1 a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq7 a1 a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a1 (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare1 a1 a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a1 (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare1 a1 a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq7 a1 a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a1 (+ j 1))))))))))) :pattern (
  (compare1 a1 a_first a_last b b_first b_last)) ))))

(declare-fun dummy6 () (Array Int integer))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int integer)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int integer)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__size1 a1))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a1 (Array Int integer))) (<= 0 (object__component__size1 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a1 (Array Int integer))) (<= 0 (object__alignment1 a1))))

(declare-fun user_eq6 ((Array Int integer) (Array Int integer)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__dynamic_types__search__result_type__from (Array Int integer))(rec__dynamic_types__search__result_type__result natural)))))
(define-fun us_split_fields_From__projection ((a1 us_split_fields)) (Array Int integer) 
  (rec__dynamic_types__search__result_type__from a1))

(define-fun us_split_fields_Result__projection ((a1 us_split_fields)) natural 
  (rec__dynamic_types__search__result_type__result a1))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a1 us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a1))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a1 us_rep)) us_split_fields (us_split_fields1
                                                              a1))

(define-fun bool_eq8 ((a1 us_rep)
  (b us_rep)) Bool (ite (and
                        (= (bool_eq7
                           (rec__dynamic_types__search__result_type__from
                           (us_split_fields1 a1)) 1 1
                           (rec__dynamic_types__search__result_type__from
                           (us_split_fields1 b)) 1 1) true)
                        (= (to_rep
                           (rec__dynamic_types__search__result_type__result
                           (us_split_fields1 a1))) (to_rep
                                                   (rec__dynamic_types__search__result_type__result
                                                   (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq7 (us_rep us_rep) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a1 us_rep)) (<= 0 (object__size2 a1))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a1 us_rep)) (<= 0 (object__alignment2 a1))))

(declare-fun dynamic_types__search__result_type__from__first__bit () Int)

(declare-fun dynamic_types__search__result_type__from__last__bit () Int)

(declare-fun dynamic_types__search__result_type__from__position () Int)

;; dynamic_types__search__result_type__from__first__bit_axiom
  (assert (<= 0 dynamic_types__search__result_type__from__first__bit))

;; dynamic_types__search__result_type__from__last__bit_axiom
  (assert
  (< dynamic_types__search__result_type__from__first__bit dynamic_types__search__result_type__from__last__bit))

;; dynamic_types__search__result_type__from__position_axiom
  (assert (<= 0 dynamic_types__search__result_type__from__position))

(declare-fun dynamic_types__search__result_type__result__first__bit () Int)

(declare-fun dynamic_types__search__result_type__result__last__bit () Int)

(declare-fun dynamic_types__search__result_type__result__position () Int)

;; dynamic_types__search__result_type__result__first__bit_axiom
  (assert (<= 0 dynamic_types__search__result_type__result__first__bit))

;; dynamic_types__search__result_type__result__last__bit_axiom
  (assert
  (< dynamic_types__search__result_type__result__first__bit dynamic_types__search__result_type__result__last__bit))

;; dynamic_types__search__result_type__result__position_axiom
  (assert (<= 0 dynamic_types__search__result_type__result__position))

(declare-fun dummy7 () us_rep)

(declare-datatypes ()
((result_type__ref (mk_result_type__ref (result_type__content us_rep)))))
(define-fun result_type__ref___projection ((a1 result_type__ref)) us_rep 
  (result_type__content a1))

(declare-fun from () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort t9b 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 1)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (t9b t9b) Bool)

(declare-fun dummy8 () t9b)

(declare-datatypes () ((t9b__ref (mk_t9b__ref (t9b__content t9b)))))
(define-fun t9b__ref___projection ((a1 t9b__ref)) t9b (t9b__content a1))

(declare-sort t12b 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 1)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq9 (t12b t12b) Bool)

(declare-fun dummy9 () t12b)

(declare-datatypes () ((t12b__ref (mk_t12b__ref (t12b__content t12b)))))
(define-fun t12b__ref___projection ((a1 t12b__ref)) t12b (t12b__content a1))

(declare-fun temp___187 (Int) (Array Int integer))

;; def_axiom
  (assert
  (forall ((temp___189 Int))
  (= (select (temp___187 temp___189) 1) (of_rep1 temp___189))))

(declare-fun temp___191 (Int) (Array Int integer))

;; def_axiom
  (assert
  (forall ((temp___193 Int))
  (= (select (temp___191 temp___193) 1) (of_rep1 temp___193))))

(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= first2 last2)) (dynamic_property1
                                      first2 last2 temp___expr_152)))

;; first__def_axiom
  (assert (= first2 (first1 a)))

;; last__def_axiom
  (assert (= last2 (last1 a)))

(define-fun dynamic_invariant5 ((temp___expr_158 (Array Int integer))
  (temp___is_init_155 Bool) (temp___skip_constant_156 Bool)
  (temp___do_toplevel_157 Bool)) Bool (forall ((temp___159 Int))
                                      (=>
                                      (and (<= 1 temp___159)
                                      (<= temp___159 1))
                                      (=>
                                      (or (= temp___is_init_155 true)
                                      (<= first2 last2)) (dynamic_property1
                                      first2 last2
                                      (to_rep1
                                      (select temp___expr_158 temp___159)))))))

(define-fun dynamic_invariant6 ((temp___expr_167 us_rep)
  (temp___is_init_164 Bool) (temp___skip_constant_165 Bool)
  (temp___do_toplevel_166 Bool)) Bool (forall ((temp___168 Int))
                                      (=>
                                      (and (<= 1 temp___168)
                                      (<= temp___168 1))
                                      (=>
                                      (or (= temp___is_init_164 true)
                                      (<= first2 last2)) (dynamic_property1
                                      first2 last2
                                      (to_rep1
                                      (select (rec__dynamic_types__search__result_type__from
                                              (us_split_fields1
                                              temp___expr_167)) temp___168)))))))

(declare-fun dynamic_types__search__search_range__result () (Array Int integer))

(declare-fun dynamic_types__search__search_range__result1 () natural)

(declare-fun o () Int)

(declare-fun o1 () natural)

(declare-fun o2 () Int)

(declare-fun us () Int)

(declare-fun o3 () Int)

(declare-fun o4 () natural)

(declare-fun o5 () (Array Int integer))

(declare-fun o6 () (Array Int integer))

(declare-fun o7 () natural)

(declare-fun o8 () (Array Int integer))

(declare-fun o9 () natural)

(declare-fun us1 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () natural)

(declare-fun o12 () (Array Int integer))

(declare-fun o13 () (Array Int integer))

(declare-fun o14 () natural)

(declare-fun o15 () (Array Int integer))

(declare-fun o16 () natural)

(declare-fun result () Bool)

(declare-fun result1 () (Array Int integer))

(declare-fun result2 () natural)

(declare-fun dynamic_types__search__search_range__result2 () (Array Int integer))

(declare-fun dynamic_types__search__search_range__result3 () natural)

(declare-fun result3 () (Array Int integer))

(declare-fun result4 () natural)

(declare-fun dynamic_types__search__search_range__result4 () (Array Int integer))

(declare-fun dynamic_types__search__search_range__result5 () natural)

(declare-fun dynamic_types__search__search_range__result6 () (Array Int integer))

(declare-fun dynamic_types__search__search_range__result7 () natural)

(declare-fun dynamic_types__search__search_range__result8 () us_rep)

(declare-fun dynamic_types__search__search_range__result9 () result_type__ref)

(declare-fun dynamic_types__search__search_range__result10 () us_rep)

(declare-fun dynamic_types__search__search_range__result11 () result_type__ref)

(declare-fun dynamic_types__search__search_range__result12 () us_rep)

(define-fun dynamic_types__search__search_range__result13 () us_rep (mk___rep
                                                                    (mk___split_fields
                                                                    dynamic_types__search__search_range__result4
                                                                    dynamic_types__search__search_range__result5)))

(define-fun dynamic_types__search__search_range__result14 () us_rep (mk___rep
                                                                    (mk___split_fields
                                                                    dynamic_types__search__search_range__result2
                                                                    dynamic_types__search__search_range__result3)))

(define-fun dynamic_types__search__search_range__result15 () result_type__ref 
  (mk_result_type__ref
  (mk___rep
  (mk___split_fields dynamic_types__search__search_range__result
  dynamic_types__search__search_range__result1))))

(declare-fun result5 () (Array Int integer))

(declare-fun result6 () natural)

;; H
  (assert (in_range1 from))

;; H
  (assert (dynamic_invariant1 a true false true))

;; H
  (assert (in_range1 c))

;; H
  (assert
  (and (<= (to_rep1 (first (rt a))) from) (<= from (to_rep1 (last (rt a))))))

;; H
  (assert
  (= dynamic_types__search__search_range__result9 (mk_result_type__ref
                                                  (mk___rep
                                                  (mk___split_fields
                                                  dynamic_types__search__search_range__result6
                                                  dynamic_types__search__search_range__result7)))))

;; H
  (assert
  (= dynamic_types__search__search_range__result10 dynamic_types__search__search_range__result8))

;; H
  (assert
  (and (<= (to_rep1 (first (rt a))) from) (<= from (to_rep1 (last (rt a))))))

;; H
  (assert (= o from))

;; H
  (assert (= o1 (select (elts a) o)))

;; H
  (assert (= o2 (to_rep o1)))

;; H
  (assert (= result (ite (= o2 c) true false)))

;; H
  (assert
  (=> (= result true)
  (= dynamic_types__search__search_range__result6 dynamic_types__search__search_range__result2)))

;; H
  (assert
  (=> (= result true)
  (= dynamic_types__search__search_range__result7 dynamic_types__search__search_range__result3)))

;; H
  (assert
  (=> (= result true)
  (= dynamic_types__search__search_range__result8 dynamic_types__search__search_range__result14)))

;; H
  (assert (=> (= result true) (= (to_rep o4) from)))

;; H
  (assert
  (=> (= result true)
  (and (= us from) (dynamic_property1 first2 last2 from))))

;; H
  (assert (=> (= result true) (= o3 from)))

;; H
  (assert (=> (= result true) (= o5 (temp___191 o3))))

;; H
  (assert (=> (= result true) (= o5 o6)))

;; H
  (assert (=> (= result true) (= o4 o7)))

;; H
  (assert (=> (= result true) (= o8 o6)))

;; H
  (assert (=> (= result true) (= o9 o7)))

;; H
  (assert
  (=> (= result true)
  (= (mk_result_type__ref (mk___rep (mk___split_fields result1 result2))) 
  dynamic_types__search__search_range__result15)))

;; H
  (assert
  (=> (= result true)
  (= dynamic_types__search__search_range__result14 (mk___rep
                                                   (mk___split_fields o8 o9)))))

;; H
  (assert
  (=> (not (= result true))
  (= dynamic_types__search__search_range__result6 dynamic_types__search__search_range__result4)))

;; H
  (assert
  (=> (not (= result true))
  (= dynamic_types__search__search_range__result7 dynamic_types__search__search_range__result5)))

;; H
  (assert
  (=> (not (= result true))
  (= dynamic_types__search__search_range__result8 dynamic_types__search__search_range__result13)))

;; H
  (assert (=> (not (= result true)) (= (to_rep o11) 0)))

;; H
  (assert
  (=> (not (= result true))
  (and (= us1 from) (dynamic_property1 first2 last2 from))))

;; H
  (assert (=> (not (= result true)) (= o10 from)))

;; H
  (assert (=> (not (= result true)) (= o12 (temp___187 o10))))

;; H
  (assert (=> (not (= result true)) (= o12 o13)))

;; H
  (assert (=> (not (= result true)) (= o11 o14)))

;; H
  (assert (=> (not (= result true)) (= o15 o13)))

;; H
  (assert (=> (not (= result true)) (= o16 o14)))

;; H
  (assert
  (=> (not (= result true))
  (= (mk_result_type__ref (mk___rep (mk___split_fields result3 result4))) 
  dynamic_types__search__search_range__result15)))

;; H
  (assert
  (=> (not (= result true))
  (= dynamic_types__search__search_range__result13 (mk___rep
                                                   (mk___split_fields 
                                                   o15 o16)))))

;; H
  (assert
  (= dynamic_types__search__search_range__result11 dynamic_types__search__search_range__result9))

;; H
  (assert
  (= dynamic_types__search__search_range__result12 dynamic_types__search__search_range__result10))

;; H
  (assert
  (= (mk___rep (mk___split_fields result5 result6)) (result_type__content
                                                    dynamic_types__search__search_range__result11)))

(assert
;; WP_parameter_def
 ;; File "dynamic_types.adb", line 8, characters 0-0
  (not
  (or
  (and
  (= (to_rep
     (rec__dynamic_types__search__result_type__result
     (us_split_fields1
     (result_type__content dynamic_types__search__search_range__result11)))) 0)
  (forall ((i Int))
  (=>
  (and (<= from i)
  (<= i (to_rep1
        (select (rec__dynamic_types__search__result_type__from
                (us_split_fields1
                (result_type__content
                dynamic_types__search__search_range__result11))) 1))))
  (not (= (to_rep (select (elts a) i)) c)))))
  (and
  (and
  (<= (to_rep1 (first (rt a))) (to_rep
                               (rec__dynamic_types__search__result_type__result
                               (us_split_fields1
                               (result_type__content
                               dynamic_types__search__search_range__result11)))))
  (<= (to_rep
      (rec__dynamic_types__search__result_type__result
      (us_split_fields1
      (result_type__content dynamic_types__search__search_range__result11)))) 
  (to_rep1 (last (rt a)))))
  (= (to_rep
     (select (elts a) (to_rep
                      (rec__dynamic_types__search__result_type__result
                      (us_split_fields1
                      (result_type__content
                      dynamic_types__search__search_range__result11)))))) 
  c)))))
(check-sat)
