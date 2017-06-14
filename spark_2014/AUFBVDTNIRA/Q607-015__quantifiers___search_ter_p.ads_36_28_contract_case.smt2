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

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

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

(define-fun bool_eq2 ((a (Array Int integer)) (a__first Int) (a__last Int)
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
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int integer))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))

(define-fun of_array ((a (Array Int integer)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

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

(define-fun bool_eq3 ((x us_t)
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes () ((t_arr__ref (mk_t_arr__ref (t_arr__content us_t)))))
(define-fun t_arr__ref___projection ((a t_arr__ref)) us_t (t_arr__content a))

(define-fun dynamic_invariant ((temp___expr_136 us_t)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (not (= temp___skip_constant_134 true))
                                      (dynamic_property 1 2147483647
                                      (first1 temp___expr_136)
                                      (last1 temp___expr_136))))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__types__option__exists Bool)(rec__types__option__value integer)))))
(define-fun us_split_fields_Exists__projection ((a us_split_fields)) Bool 
  (rec__types__option__exists a))

(define-fun us_split_fields_Value__projection ((a us_split_fields)) integer 
  (rec__types__option__value a))

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
                        (= (rec__types__option__exists (us_split_fields1 a)) 
                        (rec__types__option__exists (us_split_fields1 b)))
                        (= (to_rep
                           (rec__types__option__value (us_split_fields1 a))) 
                        (to_rep
                        (rec__types__option__value (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

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

(declare-fun types__option__exists__first__bit () Int)

(declare-fun types__option__exists__last__bit () Int)

(declare-fun types__option__exists__position () Int)

;; types__option__exists__first__bit_axiom
  (assert (<= 0 types__option__exists__first__bit))

;; types__option__exists__last__bit_axiom
  (assert
  (< types__option__exists__first__bit types__option__exists__last__bit))

;; types__option__exists__position_axiom
  (assert (<= 0 types__option__exists__position))

(declare-fun types__option__value__first__bit () Int)

(declare-fun types__option__value__last__bit () Int)

(declare-fun types__option__value__position () Int)

;; types__option__value__first__bit_axiom
  (assert (<= 0 types__option__value__first__bit))

;; types__option__value__last__bit_axiom
  (assert
  (< types__option__value__first__bit types__option__value__last__bit))

;; types__option__value__position_axiom
  (assert (<= 0 types__option__value__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((option__ref (mk_option__ref (option__content us_rep)))))
(define-fun option__ref___projection ((a option__ref)) us_rep (option__content
                                                              a))

(declare-fun equal_subrange (us_t Int us_t) Bool)

(declare-fun equal_subrange__function_guard (Bool us_t Int us_t) Bool)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t17s__ref (mk_t17s__ref (t17s__content integer)))))
(define-fun t17s__ref___projection ((a t17s__ref)) integer (t17s__content a))

(declare-sort t1 0)

(declare-fun first3 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first3 (mk1 f l))) f) (= (to_rep (last3 (mk1 f l))) l)))) :pattern (
  (mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int integer))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int integer) (elts1 a))

(define-fun of_array1 ((a (Array Int integer)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first4 ((a us_t1)) Int (to_rep (first3 (rt1 a))))

(define-fun last4 ((a us_t1)) Int (to_rep (last3 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first4 a) (last4 a))
                                    (+ (- (last4 a) (first4 a)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int integer)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int integer)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment2 a))))

(define-fun bool_eq6 ((x us_t1)
  (y us_t1)) Bool (bool_eq2 (elts1 x) (to_rep (first3 (rt1 x)))
                  (to_rep (last3 (rt1 x))) (elts1 y)
                  (to_rep (first3 (rt1 y))) (to_rep (last3 (rt1 y)))))

(declare-fun user_eq5 (us_t1 us_t1) Bool)

(declare-fun dummy5 () us_t1)

(declare-datatypes () ((t18s__ref (mk_t18s__ref (t18s__content us_t1)))))
(define-fun t18s__ref___projection ((a t18s__ref)) us_t1 (t18s__content a))

;; equal_subrange__post_axiom
  (assert true)

;; equal_subrange__def_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (forall ((j Int))
  (! (=> (equal_subrange__function_guard (equal_subrange a j b) a j b)
     (= (= (equal_subrange a j b) true)
     (= (let ((temp___153 (let ((temp___152 (+ (- j 1) (length b))))
                          (of_array1 (to_array a) j temp___152))))
        (bool_eq2 (to_array1 temp___153) (first4 temp___153)
        (last4 temp___153) (to_array b) (first1 b) (last1 b))) true))) :pattern (
  (equal_subrange a j b)) ))))

(declare-fun has_sub_range_in_prefix (us_t Int us_t) Bool)

(declare-fun has_sub_range_in_prefix__function_guard (Bool us_t Int
  us_t) Bool)

;; has_sub_range_in_prefix__post_axiom
  (assert true)

;; has_sub_range_in_prefix__def_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (forall ((last5 Int))
  (! (=> (has_sub_range_in_prefix__function_guard
     (has_sub_range_in_prefix a last5 b) a last5 b)
     (and
     (forall ((j Int)) (equal_subrange__function_guard (equal_subrange a j b)
     a j b))
     (= (= (has_sub_range_in_prefix a last5 b) true)
     (exists ((j Int))
     (and (and (<= (first1 a) j) (<= j last5))
     (= (equal_subrange a j b) true)))))) :pattern ((has_sub_range_in_prefix
                                                    a last5 b)) ))))

(declare-fun has_sub_range (us_t us_t) Bool)

(declare-fun has_sub_range__function_guard (Bool us_t us_t) Bool)

;; has_sub_range__post_axiom
  (assert true)

;; has_sub_range__def_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (! (=> (has_sub_range__function_guard (has_sub_range a b) a b)
     (and (has_sub_range_in_prefix__function_guard
     (has_sub_range_in_prefix a (- (+ (last1 a) 1) (length b)) b) a
     (- (+ (last1 a) 1) (length b)) b)
     (= (= (has_sub_range a b) true)
     (= (has_sub_range_in_prefix a (- (+ (last1 a) 1) (length b)) b) true)))) :pattern (
  (has_sub_range a b)) )))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content integer)))))
(define-fun t4b__ref___projection ((a1 t4b__ref)) integer (t4b__content a1))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(declare-fun result____split_fields () Bool)

(declare-fun result____split_fields1 () integer)

(declare-fun i () Int)

(declare-fun search_ter_p__search__result () Bool)

(declare-fun search_ter_p__search__result1 () integer)

(declare-fun o () integer)

(declare-fun o1 () Bool)

(declare-fun o2 () integer)

(declare-fun search_ter_p__search__result__assume () Bool)

(declare-fun search_ter_p__search__result__assume1 () integer)

(declare-fun temp___215 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun temp___216 () Int)

(declare-fun temp___212 () Bool)

(declare-fun temp___2121 () integer)

(declare-fun temp___211 () Int)

(declare-fun temp___214 () Int)

(declare-fun o6 () integer)

(declare-fun o7 () Bool)

(declare-fun o8 () integer)

(declare-fun temp___210 () Bool)

(declare-fun temp___2101 () integer)

(declare-fun o9 () integer)

(declare-fun o10 () Bool)

(declare-fun o11 () integer)

(declare-fun temp___2102 () Bool)

(declare-fun temp___2103 () integer)

(declare-fun i1 () Int)

(declare-fun search_ter_p__search__result2 () Bool)

(declare-fun search_ter_p__search__result3 () integer)

(declare-fun result () Bool)

(declare-fun result1 () integer)

(declare-fun result____split_fields2 () us_split_fields)

(declare-fun result2 () Bool)

(declare-fun result3 () option__ref)

(declare-fun search_ter_p__search__result4 () us_rep)

(declare-fun result4 () int__ref)

(declare-fun i2 () Int)

(declare-fun temp___2141 () Int)

(declare-fun result5 () Bool)

(declare-fun result6 () us_split_fields__ref)

(declare-fun result____split_fields3 () us_split_fields)

(declare-fun result7 () us_split_fields__ref)

(declare-fun result____split_fields4 () us_split_fields)

(declare-fun result8 () option__ref)

(declare-fun search_ter_p__search__result5 () us_rep)

(declare-fun result____split_fields5 () us_split_fields)

(declare-fun i3 () Int)

(declare-fun search_ter_p__search__result6 () us_rep)

(declare-fun temp___2142 () Int)

(declare-fun result9 () int__ref)

(declare-fun temp___2143 () Int)

(declare-fun result10 () int__ref)

(declare-fun i4 () Int)

(declare-fun result11 () Bool)

(declare-fun result12 () us_split_fields__ref)

(declare-fun result____split_fields6 () us_split_fields)

(declare-fun result13 () us_split_fields__ref)

(declare-fun result____split_fields7 () us_split_fields)

(declare-fun result14 () option__ref)

(declare-fun search_ter_p__search__result7 () us_rep)

(declare-fun result____split_fields8 () us_split_fields__ref)

(declare-fun i5 () int__ref)

(declare-fun search_ter_p__search__result8 () option__ref)

(declare-fun temp___2144 () int__ref)

(declare-fun result____split_fields9 () us_split_fields)

(declare-fun i6 () Int)

(declare-fun search_ter_p__search__result9 () us_rep)

(declare-fun temp___2145 () Int)

(declare-fun result____split_fields10 () us_split_fields__ref)

(declare-fun i7 () int__ref)

(declare-fun search_ter_p__search__result10 () option__ref)

(declare-fun result____split_fields11 () us_split_fields)

(declare-fun i8 () Int)

(declare-fun search_ter_p__search__result11 () us_rep)

(declare-fun result____split_fields12 () us_split_fields__ref)

(declare-fun i9 () int__ref)

(declare-fun search_ter_p__search__result12 () option__ref)

(declare-fun result____split_fields13 () us_split_fields)

(declare-fun i10 () Int)

(declare-fun search_ter_p__search__result13 () us_rep)

(declare-fun result15 () option__ref)

(declare-fun search_ter_p__search__result14 () us_rep)

(declare-fun search_ter_p__search__result15 () option__ref)

(declare-fun search_ter_p__search__result16 () us_rep)

(declare-fun result____split_fields14 () us_split_fields__ref)

(declare-fun i11 () int__ref)

(declare-fun search_ter_p__search__result17 () option__ref)

(declare-fun result____split_fields15 () us_split_fields)

(declare-fun i12 () Int)

(declare-fun search_ter_p__search__result18 () us_rep)

(declare-fun result____split_fields16 () us_split_fields__ref)

(declare-fun i13 () int__ref)

(declare-fun search_ter_p__search__result19 () option__ref)

(declare-fun result____split_fields17 () us_split_fields)

(declare-fun i14 () Int)

(declare-fun search_ter_p__search__result20 () us_rep)

(declare-fun result____split_fields18 () us_split_fields__ref)

(declare-fun i15 () int__ref)

(declare-fun search_ter_p__search__result21 () option__ref)

(declare-fun result____split_fields19 () us_split_fields)

(declare-fun i16 () Int)

(declare-fun search_ter_p__search__result22 () us_rep)

(define-fun i17 () int__ref (mk_int__ref i))

;; H
  (assert (dynamic_invariant a true false true))

;; H
  (assert (dynamic_invariant b true false true))

;; H
  (assert
  (and (< (to_rep (last (rt a))) 2147483647)
  (<= (to_rep (first (rt b))) (to_rep (last (rt b))))))

;; H
  (assert (has_sub_range_in_prefix__function_guard
  (has_sub_range_in_prefix a i3 b) a i3 b))

;; H
  (assert (has_sub_range_in_prefix__function_guard
  (has_sub_range_in_prefix a i3 b) a i3 b))

;; H
  (assert (= (to_rep o) 1))

;; H
  (assert (= (of_int 0) o1))

;; H
  (assert (= o o2))

;; H
  (assert (= search_ter_p__search__result__assume o1))

;; H
  (assert (= search_ter_p__search__result__assume1 o2))

;; H
  (assert
  (= (mk___split_fields__ref (mk___split_fields result result1)) (mk___split_fields__ref
                                                                 (mk___split_fields
                                                                 result____split_fields
                                                                 result____split_fields1))))

;; H
  (assert
  (= result____split_fields2 (mk___split_fields
                             search_ter_p__search__result__assume
                             search_ter_p__search__result__assume1)))

;; H
  (assert
  (or
  (and
  (and
  (and
  (= search_ter_p__search__result19 (mk_option__ref
                                    search_ter_p__search__result4))
  (and (= i13 i17)
  (= result____split_fields16 (mk___split_fields__ref
                              result____split_fields2))))
  (and (= search_ter_p__search__result20 search_ter_p__search__result4)
  (and (= i14 i1) (= result____split_fields17 result____split_fields2))))
  (and
  (ite (< (length a) (length b)) (= result2 true)
  (= result2 (ite (= (length b) 0) true false)))
  (and (= result2 true)
  (and
  (= result3 (mk_option__ref
             (mk___rep
             (mk___split_fields search_ter_p__search__result
             search_ter_p__search__result1))))
  (= search_ter_p__search__result4 (mk___rep result____split_fields2))))))
  (and
  (and
  (ite (< (length a) (length b)) (= result2 true)
  (= result2 (ite (= (length b) 0) true false)))
  (and (not (= result2 true))
  (and
  (= search_ter_p__search__result4 (mk___rep
                                   (mk___split_fields
                                   search_ter_p__search__result
                                   search_ter_p__search__result1)))
  (= search_ter_p__search__result4 (mk___rep
                                   (mk___split_fields
                                   search_ter_p__search__result2
                                   search_ter_p__search__result3))))))
  (and
  (and
  (and (= search_ter_p__search__result19 search_ter_p__search__result17)
  (and (= i13 i11) (= result____split_fields16 result____split_fields14)))
  (and (= search_ter_p__search__result20 search_ter_p__search__result18)
  (and (= i14 i12) (= result____split_fields17 result____split_fields15))))
  (or
  (and
  (and
  (and (= search_ter_p__search__result17 search_ter_p__search__result8)
  (and (= i11 i5) (= result____split_fields14 result____split_fields8)))
  (and (= search_ter_p__search__result18 search_ter_p__search__result9)
  (and (= i12 i6) (= result____split_fields15 result____split_fields9))))
  (and (= temp___215 (to_rep (first (rt a))))
  (and
  (and
  (and (and (= o3 (length b)) (in_range1 (length b)))
  (and
  (and (= o4 (+ (to_rep (last (rt a))) 1)) (in_range1
  (+ (to_rep (last (rt a))) 1))) (= o5 (- o4 o3))))
  (and (= temp___216 o5) (in_range1 o5)))
  (and (and (= result4 i17) (= i2 temp___215))
  (and (and (<= temp___215 i2) (<= i2 temp___216))
  (and (= result____split_fields2 (mk___split_fields temp___212 temp___2121))
  (and (= temp___211 i2)
  (and (= 0 temp___214)
  (or
  (and
  (and
  (and (= temp___2144 (mk_int__ref temp___214))
  (and
  (= search_ter_p__search__result8 (mk_option__ref
                                   search_ter_p__search__result5))
  (and (= i5 (mk_int__ref i2))
  (= result____split_fields8 (mk___split_fields__ref result____split_fields4)))))
  (and (= temp___2145 temp___2141)
  (and (= search_ter_p__search__result9 search_ter_p__search__result5)
  (and (= i6 i2) (= result____split_fields9 result____split_fields4)))))
  (and
  (and
  (and (= result5 (equal_subrange a i2 b)) (equal_subrange__function_guard
  result5 a i2 b))
  (= (= result5 true)
  (= (bool_eq2 (elts a) (to_rep (first3 (mk1 i2 (+ (- i2 1) (length b)))))
     (to_rep (last3 (mk1 i2 (+ (- i2 1) (length b))))) (elts b)
     (to_rep (first (rt b))) (to_rep (last (rt b)))) true)))
  (and (= result5 true)
  (and
  (and (= result6 (mk___split_fields__ref result____split_fields2))
  (= result____split_fields3 (mk___split_fields (of_int 1)
                             (rec__types__option__value
                             result____split_fields2))))
  (and
  (and
  (and
  (and (= (to_rep o6) i2)
  (and (= (rec__types__option__exists result____split_fields3) o7) (= o6 o8)))
  (and (= temp___210 o7) (= temp___2101 o8)))
  (and (= result7 (mk___split_fields__ref result____split_fields3))
  (= result____split_fields4 (mk___split_fields temp___210 temp___2101))))
  (and (= result8 (mk_option__ref search_ter_p__search__result4))
  (= search_ter_p__search__result5 (mk___rep result____split_fields4))))))))
  (and
  (and
  (and
  (and (= result5 (equal_subrange a i2 b)) (equal_subrange__function_guard
  result5 a i2 b))
  (= (= result5 true)
  (= (bool_eq2 (elts a) (to_rep (first3 (mk1 i2 (+ (- i2 1) (length b)))))
     (to_rep (last3 (mk1 i2 (+ (- i2 1) (length b))))) (elts b)
     (to_rep (first (rt b))) (to_rep (last (rt b)))) true)))
  (and (not (= result5 true))
  (and (= search_ter_p__search__result5 search_ter_p__search__result4)
  (= result____split_fields4 result____split_fields2))))
  (and
  (and
  (and (= temp___2144 (mk_int__ref temp___2143))
  (and
  (= search_ter_p__search__result8 (mk_option__ref
                                   search_ter_p__search__result7))
  (and (= i5 (mk_int__ref i4))
  (= result____split_fields8 (mk___split_fields__ref result____split_fields7)))))
  (and (= temp___2145 temp___2143)
  (and (= search_ter_p__search__result9 search_ter_p__search__result7)
  (and (= i6 i4) (= result____split_fields9 result____split_fields7)))))
  (and
  (and (not (= (has_sub_range_in_prefix a i3 b) true))
  (not (= (rec__types__option__exists result____split_fields5) true)))
  (and
  (and
  (=>
  (<= (to_rep (first (rt a))) (- (+ (to_rep (last (rt a))) 1) (length b)))
  (dynamic_property3 (to_rep (first (rt a)))
  (- (+ (to_rep (last (rt a))) 1) (length b)) i3))
  (and (<= (to_rep (first (rt a))) i3)
  (<= i3 (- (+ (to_rep (last (rt a))) 1) (length b)))))
  (and (and (= result9 (mk_int__ref temp___2142)) (= temp___2143 i3))
  (and (not (= i3 temp___216))
  (and (and (= result10 (mk_int__ref i3)) (= i4 (+ i3 1)))
  (and
  (and
  (and (= result11 (equal_subrange a i4 b)) (equal_subrange__function_guard
  result11 a i4 b))
  (= (= result11 true)
  (= (bool_eq2 (elts a) (to_rep (first3 (mk1 i4 (+ (- i4 1) (length b)))))
     (to_rep (last3 (mk1 i4 (+ (- i4 1) (length b))))) (elts b)
     (to_rep (first (rt b))) (to_rep (last (rt b)))) true)))
  (and (= result11 true)
  (and
  (and (= result12 (mk___split_fields__ref result____split_fields5))
  (= result____split_fields6 (mk___split_fields (of_int 1)
                             (rec__types__option__value
                             result____split_fields5))))
  (and
  (and
  (and
  (and (= (to_rep o9) i4)
  (and (= (rec__types__option__exists result____split_fields6) o10)
  (= o9 o11))) (and (= temp___2102 o10) (= temp___2103 o11)))
  (and (= result13 (mk___split_fields__ref result____split_fields6))
  (= result____split_fields7 (mk___split_fields temp___2102 temp___2103))))
  (and (= result14 (mk_option__ref search_ter_p__search__result6))
  (= search_ter_p__search__result7 (mk___rep result____split_fields7)))))))))))))))))))))))
  (and
  (and
  (and
  (and (and (= o3 (length b)) (in_range1 (length b)))
  (and
  (and (= o4 (+ (to_rep (last (rt a))) 1)) (in_range1
  (+ (to_rep (last (rt a))) 1))) (= o5 (- o4 o3))))
  (and (= temp___216 o5) (in_range1 o5)))
  (and (and (= result4 i17) (= i2 (to_rep (first (rt a)))))
  (ite (and (<= (to_rep (first (rt a))) i2) (<= i2 temp___216))
  (and
  (and
  (and (= result____split_fields2 (mk___split_fields temp___212 temp___2121))
  (and (= temp___211 i2)
  (and (= 0 temp___214)
  (and
  (and
  (and
  (and (= result5 (equal_subrange a i2 b)) (equal_subrange__function_guard
  result5 a i2 b))
  (= (= result5 true)
  (= (bool_eq2 (elts a) (to_rep (first3 (mk1 i2 (+ (- i2 1) (length b)))))
     (to_rep (last3 (mk1 i2 (+ (- i2 1) (length b))))) (elts b)
     (to_rep (first (rt b))) (to_rep (last (rt b)))) true)))
  (and (not (= result5 true))
  (and (= search_ter_p__search__result5 search_ter_p__search__result4)
  (= result____split_fields4 result____split_fields2))))
  (and
  (and (not (= (has_sub_range_in_prefix a i3 b) true))
  (not (= (rec__types__option__exists result____split_fields5) true)))
  (and
  (and
  (=>
  (<= (to_rep (first (rt a))) (- (+ (to_rep (last (rt a))) 1) (length b)))
  (dynamic_property3 (to_rep (first (rt a)))
  (- (+ (to_rep (last (rt a))) 1) (length b)) i3))
  (and (<= (to_rep (first (rt a))) i3)
  (<= i3 (- (+ (to_rep (last (rt a))) 1) (length b)))))
  (and (and (= result9 (mk_int__ref temp___2142)) (= temp___2143 i3))
  (= i3 temp___216))))))))
  (and
  (and
  (= search_ter_p__search__result10 (mk_option__ref
                                    search_ter_p__search__result6))
  (and (= i7 (mk_int__ref i3))
  (= result____split_fields10 (mk___split_fields__ref
                              result____split_fields5))))
  (and (= search_ter_p__search__result11 search_ter_p__search__result6)
  (and (= i8 i3) (= result____split_fields11 result____split_fields5)))))
  (and
  (and (= search_ter_p__search__result12 search_ter_p__search__result10)
  (and (= i9 i7) (= result____split_fields12 result____split_fields10)))
  (and (= search_ter_p__search__result13 search_ter_p__search__result11)
  (and (= i10 i8) (= result____split_fields13 result____split_fields11)))))
  (and
  (and
  (= search_ter_p__search__result12 (mk_option__ref
                                    search_ter_p__search__result4))
  (and (= i9 (mk_int__ref i2))
  (= result____split_fields12 (mk___split_fields__ref
                              result____split_fields2))))
  (and (= search_ter_p__search__result13 search_ter_p__search__result4)
  (and (= i10 i2) (= result____split_fields13 result____split_fields2)))))))
  (and
  (and
  (and (= search_ter_p__search__result17 search_ter_p__search__result15)
  (and (= i11 i9) (= result____split_fields14 result____split_fields12)))
  (and (= search_ter_p__search__result18 search_ter_p__search__result16)
  (and (= i12 i10) (= result____split_fields15 result____split_fields13))))
  (and
  (and
  (= search_ter_p__search__result15 (mk_option__ref
                                    search_ter_p__search__result14))
  (= search_ter_p__search__result16 search_ter_p__search__result14))
  (and (= result15 search_ter_p__search__result12)
  (= search_ter_p__search__result14 (mk___rep
                                    (us_split_fields__content
                                    result____split_fields12))))))))))))

;; H
  (assert (= search_ter_p__search__result21 search_ter_p__search__result19))

;; H
  (assert (= i15 i13))

;; H
  (assert (= result____split_fields18 result____split_fields16))

;; H
  (assert (= search_ter_p__search__result22 search_ter_p__search__result20))

;; H
  (assert (= i16 i14))

;; H
  (assert (= result____split_fields19 result____split_fields17))

;; H
  (assert
  (=> (= (= (length b) 0) true)
  (not
  (= (rec__types__option__exists
     (us_split_fields1 (option__content search_ter_p__search__result21))) true))))

;; H
  (assert (= (< (length a) (length b)) true))

(assert
;; WP_parameter_def
 ;; File "types.ads", line 11, characters 0-0
  (not
  (not
  (= (rec__types__option__exists
     (us_split_fields1 (option__content search_ter_p__search__result21))) true))))
(check-sat)
