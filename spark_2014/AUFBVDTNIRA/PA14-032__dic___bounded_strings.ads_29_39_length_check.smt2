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

(declare-sort index_type 0)

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 65536)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (index_type index_type) Bool)

(declare-fun dummy () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant ((temp___expr_137 Int)
  (temp___is_init_134 Bool) (temp___skip_constant_135 Bool)
  (temp___do_toplevel_136 Bool)) Bool (=>
                                      (or (= temp___is_init_134 true)
                                      (<= 1 65536)) (in_range
                                      temp___expr_137)))

(declare-fun to_rep (index_type) Int)

(declare-fun of_rep (Int) index_type)

;; inversion_axiom
  (assert
  (forall ((x index_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x index_type)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort length_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 65536)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (length_type length_type) Bool)

(declare-fun dummy1 () length_type)

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
  (forall ((x length_type)) (! (in_range1
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort character 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (character character) Bool)

(declare-fun dummy3 () character)

(declare-datatypes ()
((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character 
  (character__content a))

(declare-fun to_rep2 (character) Int)

(declare-fun of_rep2 (Int) character)

;; inversion_axiom
  (assert
  (forall ((x character))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x character)) (! (in_range3
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))

;; slide_eq
  (assert
  (forall ((a (Array Int character)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int character)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int character) Int Int (Array Int character) Int
  Int) (Array Int character))

;; concat_def
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (character Int) (Array Int character))

;; singleton_def
  (assert
  (forall ((v character))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq4 ((a (Array Int character)) (a__first Int) (a__last Int)
  (b (Array Int character)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_78 Int))
                           (=>
                           (and (<= a__first temp___idx_78)
                           (<= temp___idx_78 a__last))
                           (= (to_rep2 (select a temp___idx_78)) (to_rep2
                                                                 (select b (+ (- b__first a__first) temp___idx_78)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_78 Int))
  (=> (and (<= a__first temp___idx_78) (<= temp___idx_78 a__last))
  (= (to_rep2 (select a temp___idx_78)) (to_rep2
                                        (select b (+ (- b__first a__first) temp___idx_78)))))))))))

(declare-fun compare ((Array Int character) Int Int (Array Int character) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq4 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq4 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep2 (select a (+ i 1))) (to_rep2 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq4 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep2 (select b (+ i 1))) (to_rep2 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun to_rep3 (integer) Int)

(declare-fun of_rep3 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t2s__ref (mk_t2s__ref (t2s__content integer)))))
(define-fun t2s__ref___projection ((a t2s__ref)) integer (t2s__content a))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last1 (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range2 f)
     (=> (in_range2 l)
     (and (= (to_rep3 (first (mk f l))) f) (= (to_rep3 (last1 (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range2 low)
                   (and (in_range2 high)
                   (=> (<= low high)
                   (and (dynamic_property range_first range_last low)
                   (dynamic_property range_first range_last high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int character))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))

(define-fun of_array ((a (Array Int character)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep3 (first (rt a))))

(define-fun last2 ((a us_t)) Int (to_rep3 (last1 (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last2 a))
                                  (+ (- (last2 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int character)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int character)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment a))))

(define-fun bool_eq6 ((x us_t)
  (y us_t)) Bool (bool_eq4 (elts x) (to_rep3 (first (rt x)))
                 (to_rep3 (last1 (rt x))) (elts y) (to_rep3 (first (rt y)))
                 (to_rep3 (last1 (rt y)))))

(declare-fun user_eq5 (us_t us_t) Bool)

(declare-fun dummy5 () us_t)

(declare-datatypes () ((t3s__ref (mk_t3s__ref (t3s__content us_t)))))
(define-fun t3s__ref___projection ((a t3s__ref)) us_t (t3s__content a))

(declare-fun last3 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t4s__ref (mk_t4s__ref (t4s__content integer)))))
(define-fun t4s__ref___projection ((a t4s__ref)) integer (t4s__content a))

(declare-sort t1 0)

(declare-fun first2 (t1) integer)

(declare-fun last4 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range2 f)
     (=> (in_range2 l)
     (and (= (to_rep3 (first2 (mk1 f l))) f)
     (= (to_rep3 (last4 (mk1 f l))) l)))) :pattern ((mk1 f l)) )))

(define-fun dynamic_property3 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range2 low)
                   (and (in_range2 high)
                   (=> (<= low high)
                   (and (dynamic_property2 range_first range_last low)
                   (dynamic_property2 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int character))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int character) (elts1 a))

(define-fun of_array1 ((a (Array Int character)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first3 ((a us_t1)) Int (to_rep3 (first2 (rt1 a))))

(define-fun last5 ((a us_t1)) Int (to_rep3 (last4 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last5 a))
                                    (+ (- (last5 a) (first3 a)) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int character)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int character)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment1 a))))

(define-fun bool_eq8 ((x us_t1)
  (y us_t1)) Bool (bool_eq4 (elts1 x) (to_rep3 (first2 (rt1 x)))
                  (to_rep3 (last4 (rt1 x))) (elts1 y)
                  (to_rep3 (first2 (rt1 y))) (to_rep3 (last4 (rt1 y)))))

(declare-fun user_eq7 (us_t1 us_t1) Bool)

(declare-fun dummy7 () us_t1)

(declare-datatypes () ((t5s__ref (mk_t5s__ref (t5s__content us_t1)))))
(define-fun t5s__ref___projection ((a t5s__ref)) us_t1 (t5s__content a))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__bounded_strings__bounded_string__bound index_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) index_type 
  (rec__bounded_strings__bounded_string__bound a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__bounded_strings__bounded_string__text us_t)(rec__bounded_strings__bounded_string__length length_type)))))
(define-fun us_split_fields_Text__projection ((a us_split_fields)) us_t 
  (rec__bounded_strings__bounded_string__text a))

(define-fun us_split_fields_Length__projection ((a us_split_fields)) length_type 
  (rec__bounded_strings__bounded_string__length a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq9 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep
                           (rec__bounded_strings__bounded_string__bound
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__bounded_strings__bounded_string__bound
                                                  (us_split_discrs1 b))))
                        (= (bool_eq6
                           (rec__bounded_strings__bounded_string__text
                           (us_split_fields1 a))
                           (rec__bounded_strings__bounded_string__text
                           (us_split_fields1 b))) true))
                        (= (to_rep1
                           (rec__bounded_strings__bounded_string__length
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__bounded_strings__bounded_string__length
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq8 (us_rep us_rep) Bool)

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

(declare-fun bounded_strings__bounded_string__bound__first__bit () Int)

(declare-fun bounded_strings__bounded_string__bound__last__bit () Int)

(declare-fun bounded_strings__bounded_string__bound__position () Int)

;; bounded_strings__bounded_string__bound__first__bit_axiom
  (assert (<= 0 bounded_strings__bounded_string__bound__first__bit))

;; bounded_strings__bounded_string__bound__last__bit_axiom
  (assert
  (< bounded_strings__bounded_string__bound__first__bit bounded_strings__bounded_string__bound__last__bit))

;; bounded_strings__bounded_string__bound__position_axiom
  (assert (<= 0 bounded_strings__bounded_string__bound__position))

(declare-fun bounded_strings__bounded_string__text__first__bit () Int)

(declare-fun bounded_strings__bounded_string__text__last__bit () Int)

(declare-fun bounded_strings__bounded_string__text__position () Int)

;; bounded_strings__bounded_string__text__first__bit_axiom
  (assert (<= 0 bounded_strings__bounded_string__text__first__bit))

;; bounded_strings__bounded_string__text__last__bit_axiom
  (assert
  (< bounded_strings__bounded_string__text__first__bit bounded_strings__bounded_string__text__last__bit))

;; bounded_strings__bounded_string__text__position_axiom
  (assert (<= 0 bounded_strings__bounded_string__text__position))

(declare-fun bounded_strings__bounded_string__length__first__bit () Int)

(declare-fun bounded_strings__bounded_string__length__last__bit () Int)

(declare-fun bounded_strings__bounded_string__length__position () Int)

;; bounded_strings__bounded_string__length__first__bit_axiom
  (assert (<= 0 bounded_strings__bounded_string__length__first__bit))

;; bounded_strings__bounded_string__length__last__bit_axiom
  (assert
  (< bounded_strings__bounded_string__length__first__bit bounded_strings__bounded_string__length__last__bit))

;; bounded_strings__bounded_string__length__position_axiom
  (assert (<= 0 bounded_strings__bounded_string__length__position))

(declare-fun dummy8 () us_rep)

(declare-datatypes ()
((bounded_string__ref
 (mk_bounded_string__ref (bounded_string__content us_rep)))))
(define-fun bounded_string__ref___projection ((a bounded_string__ref)) us_rep 
  (bounded_string__content a))

(define-fun dynamic_invariant1 ((temp___expr_149 us_rep)
  (temp___is_init_146 Bool) (temp___skip_constant_147 Bool)
  (temp___do_toplevel_148 Bool)) Bool (let ((temp___150 (rec__bounded_strings__bounded_string__bound
                                                        (us_split_discrs1
                                                        temp___expr_149))))
                                      (and (dynamic_property1 1
                                      (to_rep temp___150)
                                      (first1
                                      (rec__bounded_strings__bounded_string__text
                                      (us_split_fields1 temp___expr_149)))
                                      (last2
                                      (rec__bounded_strings__bounded_string__text
                                      (us_split_fields1 temp___expr_149))))
                                      (and
                                      (= (first1
                                         (rec__bounded_strings__bounded_string__text
                                         (us_split_fields1 temp___expr_149))) 1)
                                      (= (last2
                                         (rec__bounded_strings__bounded_string__text
                                         (us_split_fields1 temp___expr_149))) 
                                      (to_rep temp___150))))))

(declare-fun length2 (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant2 ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 0 65536)) (in_range1
                                      temp___expr_143)))

;; length__post_axiom
  (assert
  (forall ((source us_rep))
  (! (=> (dynamic_invariant1 source true true true)
     (let ((result (length2 source)))
     (=> (length__function_guard result source) (dynamic_invariant2 result
     true false true)))) :pattern ((length2 source)) )))

;; length__def_axiom
  (assert
  (forall ((source us_rep))
  (! (=>
     (and (dynamic_invariant1 source true true true) (length__function_guard
     (length2 source) source))
     (= (length2 source) (to_rep1
                         (rec__bounded_strings__bounded_string__length
                         (us_split_fields1 source))))) :pattern ((length2
                                                                 source)) )))

(declare-sort positive 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq9 (positive positive) Bool)

(declare-fun dummy9 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-sort t2 0)

(declare-fun first4 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range2 f)
     (=> (in_range2 l)
     (and (= (to_rep3 (first4 (mk2 f l))) f)
     (= (to_rep3 (last6 (mk2 f l))) l)))) :pattern ((mk2 f l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range2 low)
                   (and (in_range2 high)
                   (=> (<= low high) (and (in_range4 low) (in_range4 high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int character))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int character) (elts2 a))

(define-fun of_array2 ((a (Array Int character)) (f Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f l)))

(define-fun first5 ((a us_t2)) Int (to_rep3 (first4 (rt2 a))))

(define-fun last7 ((a us_t2)) Int (to_rep3 (last6 (rt2 a))))

(define-fun length3 ((a us_t2)) Int (ite (<= (first5 a) (last7 a))
                                    (+ (- (last7 a) (first5 a)) 1) 0))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int character)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int character)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size3 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment3 a))))

(define-fun bool_eq11 ((x us_t2)
  (y us_t2)) Bool (bool_eq4 (elts2 x) (to_rep3 (first4 (rt2 x)))
                  (to_rep3 (last6 (rt2 x))) (elts2 y)
                  (to_rep3 (first4 (rt2 y))) (to_rep3 (last6 (rt2 y)))))

(declare-fun user_eq10 (us_t2 us_t2) Bool)

(declare-fun dummy10 () us_t2)

(declare-fun to_string (us_image) us_t2)

(declare-fun from_string (us_t2) us_image)

(declare-datatypes ()
((string__ref (mk_string__ref (string__content us_t2)))))
(define-fun string__ref___projection ((a string__ref)) us_t2 (string__content
                                                             a))

(declare-fun temp___171 (Int Int Int) us_t1)

;; def_axiom
  (assert
  (forall ((temp___173 Int) (temp___174 Int) (temp___175 Int))
  (let ((temp___172 (temp___171 temp___173 temp___174 temp___175)))
  (and
  (=> (dynamic_property4 1 2147483647 temp___174 temp___175)
  (and (= (first3 temp___172) temp___174) (= (last5 temp___172) temp___175)))
  (forall ((temp___176 Int))
  (= (select (to_array1 temp___172) temp___176) (of_rep2 temp___173)))))))

(define-fun dynamic_invariant3 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(declare-fun temp___182 () Int)

(declare-fun temp___181 () index_type)

(declare-fun temp___184 () (Array Int character))

(declare-fun temp___1841 () t1)

;; H
  (assert (in_range temp___182))

;; H
  (assert (= temp___182 (to_rep temp___181)))

;; H
  (assert (= (to_rep3 (first2 (rt1 (temp___171 32 1 temp___182)))) 1))

;; H
  (assert
  (= (to_rep3 (last4 (rt1 (temp___171 32 1 temp___182)))) temp___182))

;; H
  (assert (= (mk___t1 temp___184 temp___1841) (temp___171 32 1 temp___182)))

(assert
;; WP_parameter_def
 ;; File "bounded_strings.ads", line 29, characters 0-0
  (not
  (= (ite (<= (to_rep3 (first2 temp___1841)) (to_rep3 (last4 temp___1841)))
     (+ (- (to_rep3 (last4 temp___1841)) (to_rep3 (first2 temp___1841))) 1)
     0) (ite (<= 1 temp___182) (+ (- temp___182 1) 1) 0))))
(check-sat)
