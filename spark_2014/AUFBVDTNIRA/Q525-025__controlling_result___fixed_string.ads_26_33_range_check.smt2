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

(declare-sort natural 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (natural natural) Bool)

(declare-fun dummy4 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-fun to_rep2 (natural) Int)

(declare-fun of_rep2 (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range3 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-fun dummy5 () (Array Int character))

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

(declare-fun user_eq5 ((Array Int character) (Array Int character)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__fixed_string__object__width natural)(rec__fixed_string__object__name (Array Int character))(rec__ext__ us_private)))))
(define-fun us_split_fields_Width__projection ((a us_split_fields)) natural 
  (rec__fixed_string__object__width a))

(define-fun us_split_fields_Name__projection ((a us_split_fields)) (Array Int character) 
  (rec__fixed_string__object__name a))

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

(define-fun bool_eq6 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep2
                           (rec__fixed_string__object__width
                           (us_split_fields1 a))) (to_rep2
                                                  (rec__fixed_string__object__width
                                                  (us_split_fields1 b))))
                        (= (bool_eq3
                           (rec__fixed_string__object__name
                           (us_split_fields1 a)) 1 20
                           (rec__fixed_string__object__name
                           (us_split_fields1 b)) 1 20) true))
                   true false))

(declare-fun user_eq6 (us_rep us_rep) Bool)

(declare-fun us_dispatch_eq (us_rep us_rep) Bool)

(declare-fun us_tag () Int)

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

(declare-fun fixed_string__object__width__first__bit () Int)

(declare-fun fixed_string__object__width__last__bit () Int)

(declare-fun fixed_string__object__width__position () Int)

;; fixed_string__object__width__first__bit_axiom
  (assert (<= 0 fixed_string__object__width__first__bit))

;; fixed_string__object__width__last__bit_axiom
  (assert
  (< fixed_string__object__width__first__bit fixed_string__object__width__last__bit))

;; fixed_string__object__width__position_axiom
  (assert (<= 0 fixed_string__object__width__position))

(declare-fun fixed_string__object__name__first__bit () Int)

(declare-fun fixed_string__object__name__last__bit () Int)

(declare-fun fixed_string__object__name__position () Int)

;; fixed_string__object__name__first__bit_axiom
  (assert (<= 0 fixed_string__object__name__first__bit))

;; fixed_string__object__name__last__bit_axiom
  (assert
  (< fixed_string__object__name__first__bit fixed_string__object__name__last__bit))

;; fixed_string__object__name__position_axiom
  (assert (<= 0 fixed_string__object__name__position))

(declare-fun dummy6 () us_rep)

(declare-datatypes ()
((object__ref (mk_object__ref (object__content us_rep)))))
(define-fun object__ref___projection ((a object__ref)) us_rep (object__content
                                                              a))

(declare-fun temp___139 (Int) (Array Int character))

;; def_axiom
  (assert
  (forall ((temp___141 Int))
  (forall ((temp___142 Int))
  (= (select (temp___139 temp___141) temp___142) (of_rep temp___141)))))

(define-fun default_initial_assumption ((temp___expr_137 us_rep)
  (temp___skip_top_level_138 Bool)) Bool (and
                                         (= (attr__tag temp___expr_137) 
                                         us_tag)
                                         (and
                                         (= (to_rep2
                                            (rec__fixed_string__object__width
                                            (us_split_fields1
                                            temp___expr_137))) 0)
                                         (= (rec__fixed_string__object__name
                                            (us_split_fields1
                                            temp___expr_137)) (temp___139 0)))))

(declare-fun elements (us_rep) Int)

(declare-fun elements__function_guard (Int us_rep) Bool)

(declare-fun elements1 (Int us_rep) Int)

(declare-fun elements__function_guard1 (Int Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range3
                                     temp___expr_33)))

;; elements__post_axiom
  (assert
  (forall ((this us_rep))
  (! (let ((result (elements this)))
     (=> (elements__function_guard result this) (dynamic_invariant result
     true false true))) :pattern ((elements this)) )))

;; elements__post__dispatch_axiom
  (assert
  (forall ((attr__tag1 Int))
  (forall ((this us_rep))
  (! (let ((result (elements1 attr__tag1 this)))
     (=> (elements__function_guard1 result attr__tag1 this)
     (dynamic_invariant result true false true))) :pattern ((elements1
                                                            attr__tag1 this)) ))))

;; fixed_string__object__compat_axiom
  (assert
  (forall ((this us_rep))
  (! (=> (elements__function_guard1 (elements1 us_tag this) us_tag this)
     (and (elements__function_guard (elements this) this)
     (= (elements this) (elements1 us_tag this)))) :pattern ((elements1
                                                             us_tag this)) )))

;; elements__def_axiom
  (assert
  (forall ((this us_rep))
  (! (=> (elements__function_guard (elements this) this)
     (= (elements this) (to_rep2
                        (rec__fixed_string__object__width
                        (us_split_fields1 this))))) :pattern ((elements this)) )))

(declare-fun this () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq7 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes ()
((tTvalueSP1__ref (mk_tTvalueSP1__ref (tTvalueSP1__content integer)))))
(define-fun tTvalueSP1__ref___projection ((a tTvalueSP1__ref)) integer 
  (tTvalueSP1__content a))

(declare-sort t1 0)

(declare-fun first2 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep1 (first2 (mk1 f l))) f)
     (= (to_rep1 (last3 (mk1 f l))) l)))) :pattern ((mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int character))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int character) (elts1 a))

(define-fun of_array1 ((a (Array Int character)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first3 ((a us_t1)) Int (to_rep1 (first2 (rt1 a))))

(define-fun last4 ((a us_t1)) Int (to_rep1 (last3 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last4 a))
                                    (+ (- (last4 a) (first3 a)) 1) 0))

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

(define-fun bool_eq8 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first2 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first2 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq8 (us_t1 us_t1) Bool)

(declare-fun dummy8 () us_t1)

(declare-datatypes ()
((tvalueS__ref (mk_tvalueS__ref (tvalueS__content us_t1)))))
(define-fun tvalueS__ref___projection ((a tvalueS__ref)) us_t1 (tvalueS__content
                                                               a))

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq9 (integer integer) Bool)

(declare-fun dummy9 () integer)

(declare-datatypes () ((t14b__ref (mk_t14b__ref (t14b__content integer)))))
(define-fun t14b__ref___projection ((a t14b__ref)) integer (t14b__content a))

(declare-sort t2 0)

(declare-fun first4 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep1 (first4 (mk2 f l))) f)
     (= (to_rep1 (last6 (mk2 f l))) l)))) :pattern ((mk2 f l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property3 range_first range_last low)
                   (dynamic_property3 range_first range_last high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int character))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int character) (elts2 a))

(define-fun of_array2 ((a (Array Int character)) (f Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f l)))

(define-fun first5 ((a us_t2)) Int (to_rep1 (first4 (rt2 a))))

(define-fun last7 ((a us_t2)) Int (to_rep1 (last6 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last7 a))
                                    (+ (- (last7 a) (first5 a)) 1) 0))

(declare-fun value__size4 () Int)

(declare-fun object__size4 ((Array Int character)) Int)

(declare-fun value__component__size3 () Int)

(declare-fun object__component__size3 ((Array Int character)) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size4 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size3))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment4 a))))

(define-fun bool_eq10 ((x us_t2)
  (y us_t2)) Bool (bool_eq3 (elts2 x) (to_rep1 (first4 (rt2 x)))
                  (to_rep1 (last6 (rt2 x))) (elts2 y)
                  (to_rep1 (first4 (rt2 y))) (to_rep1 (last6 (rt2 y)))))

(declare-fun user_eq10 (us_t2 us_t2) Bool)

(declare-fun dummy10 () us_t2)

(declare-datatypes () ((t15b__ref (mk_t15b__ref (t15b__content us_t2)))))
(define-fun t15b__ref___projection ((a t15b__ref)) us_t2 (t15b__content a))

(declare-fun value__first () integer)

(declare-fun value__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun fixed_string__null_string__value__aggregate_def (Int Int
  Int) us_t2)

;; def_axiom
  (assert
  (forall ((temp___234 Int) (temp___235 Int) (temp___236 Int))
  (let ((temp___233 (fixed_string__null_string__value__aggregate_def
                    temp___234 temp___235 temp___236)))
  (and
  (=> (dynamic_property 1 2147483647 temp___235 temp___236)
  (and (= (first5 temp___233) temp___235) (= (last7 temp___233) temp___236)))
  (forall ((temp___237 Int))
  (= (select (to_array2 temp___233) temp___237) (of_rep temp___234)))))))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range1
                                     temp___expr_39)))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range2 temp___expr_63)))

(define-fun dynamic_invariant3 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant5 ((temp___expr_205 us_t1)
  (temp___is_init_202 Bool) (temp___skip_constant_203 Bool)
  (temp___do_toplevel_204 Bool)) Bool (=>
                                      (not (= temp___skip_constant_203 true))
                                      (and (dynamic_property2 1
                                      (to_rep2
                                      (rec__fixed_string__object__width
                                      (us_split_fields1 this)))
                                      (first3 temp___expr_205)
                                      (last4 temp___expr_205))
                                      (and (= (first3 temp___expr_205) 1)
                                      (= (last4 temp___expr_205) (to_rep2
                                                                 (rec__fixed_string__object__width
                                                                 (us_split_fields1
                                                                 this))))))))

(declare-fun value () (Array Int character))

(declare-fun fixed_string__null_string__result () (Array Int character))

(declare-fun fixed_string__null_string__result1 () t)

(declare-fun temp___239 () (Array Int character))

(declare-fun temp___2391 () t2)

(declare-fun fixed_string__null_string__value__assume () (Array Int character))

(declare-fun fixed_string__null_string__value__assume1 () t1)

(declare-fun o () Int)

(declare-fun result () (Array Int character))

(declare-fun value1 () (Array Int character))

(declare-fun result1 () (Array Int character))

(declare-fun result2 () t)

(declare-fun fixed_string__null_string__result2 () (Array Int character))

(declare-fun fixed_string__null_string__result3 () t)

(declare-fun fixed_string__null_string__result4 () (Array Int character))

(declare-fun fixed_string__null_string__result5 () t)

(declare-fun fixed_string__null_string__result6 () (Array Int character))

(declare-fun fixed_string__null_string__result7 () t)

(declare-fun value2 () (Array Int character))

(declare-fun fixed_string__null_string__result8 () (Array Int character))

(declare-fun fixed_string__null_string__result9 () t)

(declare-fun value3 () (Array Int character))

(declare-fun fixed_string__null_string__result10 () (Array Int character))

(declare-fun fixed_string__null_string__result11 () t)

(define-fun fixed_string__null_string__result12 () us_t (mk___t
                                                        fixed_string__null_string__result6
                                                        fixed_string__null_string__result7))

;; H
  (assert
  (= (to_rep1
     (first4
     (rt2
     (fixed_string__null_string__value__aggregate_def 0 1
     (to_rep2 (rec__fixed_string__object__width (us_split_fields1 this))))))) 1))

;; H
  (assert
  (= (to_rep1
     (last6
     (rt2
     (fixed_string__null_string__value__aggregate_def 0 1
     (to_rep2 (rec__fixed_string__object__width (us_split_fields1 this))))))) 
  (to_rep2 (rec__fixed_string__object__width (us_split_fields1 this)))))

;; H
  (assert
  (= (mk___t2 temp___239 temp___2391) (fixed_string__null_string__value__aggregate_def
                                      0 1
                                      (to_rep2
                                      (rec__fixed_string__object__width
                                      (us_split_fields1 this))))))

;; H
  (assert
  (= (ite (<= (to_rep1 (first4 temp___2391)) (to_rep1 (last6 temp___2391)))
     (+ (- (to_rep1 (last6 temp___2391)) (to_rep1 (first4 temp___2391))) 1)
     0) (ite (<= 1 (to_rep2
                   (rec__fixed_string__object__width (us_split_fields1 this))))
        (+ (- (to_rep2
              (rec__fixed_string__object__width (us_split_fields1 this))) 1) 1)
        0)))

;; H
  (assert (= temp___239 fixed_string__null_string__value__assume))

;; H
  (assert
  (= (mk1 (to_rep1 (first4 temp___2391)) (to_rep1 (last6 temp___2391))) 
  fixed_string__null_string__value__assume1))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref value)))

;; H
  (assert (= value1 fixed_string__null_string__value__assume))

;; H
  (assert
  (= (to_rep1 value__first) (to_rep1
                            (first2
                            fixed_string__null_string__value__assume1))))

;; H
  (assert
  (= (to_rep1 value__last) (to_rep1
                           (last3 fixed_string__null_string__value__assume1))))

;; H
  (assert
  (and (dynamic_property2 1
  (to_rep2 (rec__fixed_string__object__width (us_split_fields1 this)))
  (to_rep1 value__first) (to_rep1 value__last))
  (and (= (to_rep1 value__first) 1)
  (= (to_rep1 value__last) (to_rep2
                           (rec__fixed_string__object__width
                           (us_split_fields1 this)))))))

;; H
  (assert
  (= fixed_string__null_string__result4 fixed_string__null_string__result2))

;; H
  (assert
  (= fixed_string__null_string__result5 fixed_string__null_string__result3))

;; H
  (assert
  (= fixed_string__null_string__result12 (mk___t
                                         fixed_string__null_string__result2
                                         fixed_string__null_string__result3)))

;; H
  (assert
  (= (mk_string__ref (mk___t result1 result2)) (mk_string__ref
                                               (mk___t
                                               fixed_string__null_string__result
                                               fixed_string__null_string__result1))))

;; H
  (assert (= value1 fixed_string__null_string__result2))

;; H
  (assert
  (= (mk (to_rep1 value__first) (to_rep1 value__last)) fixed_string__null_string__result3))

;; H
  (assert
  (= (mk_string__ref
     (mk___t fixed_string__null_string__result8
     fixed_string__null_string__result9)) (mk_string__ref
                                          (mk___t
                                          fixed_string__null_string__result4
                                          fixed_string__null_string__result5))))

;; H
  (assert (= value1 value2))

;; H
  (assert
  (= (mk___t fixed_string__null_string__result10
     fixed_string__null_string__result11) fixed_string__null_string__result12))

;; H
  (assert (= value3 value1))

;; H
  (assert
  (and (and (= o (elements this)) (elements__function_guard o this))
  (and (in_range3 o)
  (= o (to_rep2 (rec__fixed_string__object__width (us_split_fields1 this)))))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range
  (length
  (mk___t fixed_string__null_string__result8
  fixed_string__null_string__result9)))))
(check-sat)
