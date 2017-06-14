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

(declare-sort positive 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-sort character 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (character character) Bool)

(declare-fun dummy2 () character)

(declare-datatypes ()
((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character 
  (character__content a))

(declare-fun to_rep (character) Int)

(declare-fun of_rep (Int) character)

;; inversion_axiom
  (assert
  (forall ((x character))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x character)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

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

(define-fun bool_eq3 ((a (Array Int character)) (a__first Int) (a__last Int)
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
                           (= (to_rep (select a temp___idx_78)) (to_rep
                                                                (select b (+ (- b__first a__first) temp___idx_78)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_78 Int))
  (=> (and (<= a__first temp___idx_78) (<= temp___idx_78 a__last))
  (= (to_rep (select a temp___idx_78)) (to_rep
                                       (select b (+ (- b__first a__first) temp___idx_78)))))))))))

(declare-fun compare ((Array Int character) Int Int (Array Int character) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                             (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high) (and (in_range1 low) (in_range1 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int character))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))

(define-fun of_array ((a (Array Int character)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

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

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-fun to_string (us_image) us_t)

(declare-fun from_string (us_t) us_image)

(declare-datatypes ()
((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content
                                                            a))

(declare-sort enum 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (enum enum) Bool)

(declare-fun dummy4 () enum)

(declare-datatypes () ((enum__ref (mk_enum__ref (enum__content enum)))))
(define-fun enum__ref___projection ((a enum__ref)) enum (enum__content a))

(declare-fun to_rep2 (enum) Int)

(declare-fun of_rep2 (Int) enum)

;; inversion_axiom
  (assert
  (forall ((x enum)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x enum)) (! (in_range3 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

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

(define-fun p_init__t__x2__pred ((a us_rep)) Bool (= (to_rep2
                                                     (rec__p_init__t__e
                                                     (us_split_discrs1 a))) 1))

(define-fun bool_eq6 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep2 (rec__p_init__t__e (us_split_discrs1 a))) 
                        (to_rep2 (rec__p_init__t__e (us_split_discrs1 b))))
                        (= (to_rep1
                           (rec__p_init__t__x1 (us_split_fields1 a))) 
                        (to_rep1 (rec__p_init__t__x1 (us_split_fields1 b)))))
                        (=> (p_init__t__x2__pred a)
                        (= (to_rep1
                           (rec__p_init__t__x2 (us_split_fields1 a))) 
                        (to_rep1 (rec__p_init__t__x2 (us_split_fields1 b))))))
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

(declare-fun dummy5 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(define-fun default_initial_assumption ((temp___expr_143 us_rep)
  (temp___skip_top_level_144 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_143) false)
                                         (= (to_rep2
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_143))) 0)))

(declare-fun init (tuple0) us_rep)

(declare-fun init__function_guard (us_rep tuple0) Bool)

;; init__post_axiom
  (assert true)

(declare-fun y1__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y2__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun in_range4 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep2
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

(declare-fun dummy6 () us_rep)

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
                                      (in_range4 0 temp___expr_199))
                                      (= (attr__constrained temp___expr_199) true)))

(define-fun default_initial_assumption1 ((temp___expr_201 us_rep)
  (temp___skip_top_level_202 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_201) true)
                                         (= (to_rep2
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_201))) 0)))

(define-fun in_range5 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep2
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

(declare-fun dummy7 () us_rep)

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
                                      (in_range5 1 temp___expr_209))
                                      (= (attr__constrained temp___expr_209) true)))

(define-fun default_initial_assumption2 ((temp___expr_211 us_rep)
  (temp___skip_top_level_212 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_211) true)
                                         (= (to_rep2
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_211))) 1)))

(define-fun in_range6 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep2
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

(declare-fun dummy8 () us_rep)

(declare-datatypes () ((tc1S__ref (mk_tc1S__ref (tc1S__content us_rep)))))
(define-fun tc1S__ref___projection ((a tc1S__ref)) us_rep (tc1S__content a))

(define-fun dynamic_invariant2 ((temp___expr_179 us_rep)
  (temp___is_init_176 Bool) (temp___skip_constant_177 Bool)
  (temp___do_toplevel_178 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_177 true))
                                      (in_range6 0 temp___expr_179))
                                      (= (attr__constrained temp___expr_179) true)))

(define-fun default_initial_assumption3 ((temp___expr_181 us_rep)
  (temp___skip_top_level_182 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_181) true)
                                         (= (to_rep2
                                            (rec__p_init__t__e
                                            (us_split_discrs1
                                            temp___expr_181))) 0)))

(define-fun in_range7 ((rec__p_init__t__e1 Int)
  (a us_rep)) Bool (= rec__p_init__t__e1 (to_rep2
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

(declare-fun dummy9 () us_rep)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content us_rep)))))
(define-fun t1b__ref___projection ((a t1b__ref)) us_rep (t1b__content a))

(declare-fun c1 () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun temp___String_Literal_223 (tuple0) (Array Int character))

;; temp___String_Literal_223__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (= (to_rep (select (temp___String_Literal_223 us_void_param) 1)) 89)
     (= (to_rep (select (temp___String_Literal_223 us_void_param) 2)) 50)) :pattern (
  (temp___String_Literal_223 us_void_param)) )))

(declare-fun temp___String_Literal_225 (tuple0) (Array Int character))

;; temp___String_Literal_225__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (= (to_rep (select (temp___String_Literal_225 us_void_param) 1)) 90)
     (= (to_rep (select (temp___String_Literal_225 us_void_param) 2)) 50)) :pattern (
  (temp___String_Literal_225 us_void_param)) )))

(declare-fun temp___String_Literal_229 (tuple0) (Array Int character))

;; temp___String_Literal_229__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (= (to_rep (select (temp___String_Literal_229 us_void_param) 1)) 89)
     (= (to_rep (select (temp___String_Literal_229 us_void_param) 2)) 49)) :pattern (
  (temp___String_Literal_229 us_void_param)) )))

(declare-fun temp___String_Literal_233 (tuple0) (Array Int character))

;; temp___String_Literal_233__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (= (to_rep (select (temp___String_Literal_233 us_void_param) 1)) 90)
     (= (to_rep (select (temp___String_Literal_233 us_void_param) 2)) 49)) :pattern (
  (temp___String_Literal_233 us_void_param)) )))

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range1
                                     temp___expr_39)))

(define-fun dynamic_invariant5 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range2 temp___expr_63)))

(define-fun dynamic_invariant6 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

;; c1__def_axiom
  (assert
  (= c1 (mk___rep (mk___split_discrs (of_rep2 0))
        (mk___split_fields (of_rep1 1) dummy) true)))

(define-fun dynamic_invariant7 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 1)) (in_range3 temp___expr_135)))

(declare-fun y2__split_fields () integer)

(declare-fun y2__split_fields1 () integer)

(declare-fun y2__split_discrs () enum)

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

(declare-fun temp___238 () enum)

(declare-fun temp___2381 () integer)

(declare-fun temp___2382 () integer)

(declare-fun temp___2383 () Bool)

(declare-fun temp___220 () us_rep)

(declare-fun usq_ () us_rep)

(declare-fun temp___222 () us_rep)

(declare-fun o13 () us_rep)

(declare-fun result () us_split_fields__ref)

(declare-fun y2__split_fields2 () us_split_fields)

(declare-fun result1 () us_split_discrs__ref)

(declare-fun y2__split_discrs1 () us_split_discrs)

(define-fun temp___2384 () us_rep (mk___rep (mk___split_discrs temp___238)
                                  (mk___split_fields temp___2381 temp___2382)
                                  temp___2383))

(define-fun o14 () us_rep (mk___rep (mk___split_discrs o9)
                          (mk___split_fields o10 o11) o12))

;; H
  (assert
  (and (= 0 (to_rep2 (rec__p_init__t__e (us_split_discrs1 c1))))
  (= (attr__constrained c1) true)))

;; H
  (assert (= (to_rep1 o1) 1))

;; H
  (assert (= o1 o2))

;; H
  (assert (= dummy o3))

;; H
  (assert (= (to_rep2 o) 0))

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
  (= o14 (mk___rep (mk___split_discrs o5) (mk___split_fields o6 o7) o8)))

;; H
  (assert (= temp___2384 o14))

;; H
  (assert (= temp___2384 c1))

;; H
  (assert (= y1__attr__constrained false))

;; H
  (assert (= y2__attr__constrained false))

;; H
  (assert
  (and (= 0 (to_rep2 (rec__p_init__t__e z1__split_discrs)))
  (= z1__attr__constrained true)))

;; H
  (assert
  (and (= 1 (to_rep2 (rec__p_init__t__e z2__split_discrs)))
  (= z2__attr__constrained true)))

;; H
  (assert
  (and (= temp___220 (init Tuple0)) (init__function_guard temp___220 Tuple0)))

;; H
  (assert
  (=> (= y2__attr__constrained true)
  (= (rec__p_init__t__e (us_split_discrs1 temp___220)) y2__split_discrs)))

;; H
  (assert (= usq_ temp___220))

;; H
  (assert
  (= temp___222 (mk___rep (us_split_discrs1 usq_) (us_split_fields1 usq_)
                y2__attr__constrained)))

;; H
  (assert
  (= result (mk___split_fields__ref
            (mk___split_fields y2__split_fields y2__split_fields1))))

;; H
  (assert (= y2__split_fields2 (us_split_fields1 temp___222)))

;; H
  (assert
  (= result1 (mk___split_discrs__ref (mk___split_discrs y2__split_discrs))))

;; H
  (assert (= y2__split_discrs1 (us_split_discrs1 temp___222)))

;; H
  (assert (and (= o13 (init Tuple0)) (init__function_guard o13 Tuple0)))

(assert
;; WP_parameter_def
 ;; File "run.adb", line 15, characters 0-0
  (not (= 1 (to_rep2 (rec__p_init__t__e (us_split_discrs1 o13))))))
(check-sat)
