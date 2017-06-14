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

(declare-sort character 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

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
  (forall ((x character)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
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
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

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

(define-fun dynamic_invariant ((temp___expr_82 us_t) (temp___is_init_79 Bool)
  (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(declare-sort t1s 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 14)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (t1s t1s) Bool)

(declare-fun dummy4 () t1s)

(declare-datatypes () ((t1s__ref (mk_t1s__ref (t1s__content t1s)))))
(define-fun t1s__ref___projection ((a t1s__ref)) t1s (t1s__content a))

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
 (rec__instr__instrument__name (Array Int character))(rec__ext__ us_private)))))
(define-fun us_split_fields_Name__projection ((a us_split_fields)) (Array Int character) 
  (rec__instr__instrument__name a))

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
  (b us_rep)) Bool (ite (= (bool_eq3
                           (rec__instr__instrument__name
                           (us_split_fields1 a)) 1 14
                           (rec__instr__instrument__name
                           (us_split_fields1 b)) 1 14) true)
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

(declare-fun instr__instrument__name__first__bit () Int)

(declare-fun instr__instrument__name__last__bit () Int)

(declare-fun instr__instrument__name__position () Int)

;; instr__instrument__name__first__bit_axiom
  (assert (<= 0 instr__instrument__name__first__bit))

;; instr__instrument__name__last__bit_axiom
  (assert
  (< instr__instrument__name__first__bit instr__instrument__name__last__bit))

;; instr__instrument__name__position_axiom
  (assert (<= 0 instr__instrument__name__position))

(declare-fun dummy6 () us_rep)

(declare-datatypes ()
((instrument__ref (mk_instrument__ref (instrument__content us_rep)))))
(define-fun instrument__ref___projection ((a instrument__ref)) us_rep 
  (instrument__content a))

(declare-fun temp___String_Literal_163 (tuple0) (Array Int character))

;; temp___String_Literal_163__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 1)) 32)
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 2)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 3)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 4)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 6)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 7)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 8)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 10)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 11)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 12)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 13)) 32))
     (= (to_rep (select (temp___String_Literal_163 us_void_param) 14)) 32)) :pattern (
  (temp___String_Literal_163 us_void_param)) )))

(define-fun default_initial_assumption ((temp___expr_161 us_rep)
  (temp___skip_top_level_162 Bool)) Bool (and
                                         (= (attr__tag temp___expr_161) 
                                         us_tag)
                                         (= (rec__instr__instrument__name
                                            (us_split_fields1
                                            temp___expr_161)) (temp___String_Literal_163
                                                              Tuple0))))

(declare-fun x__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun s () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun x__split_fields () (Array Int character))

(declare-fun j () Int)

(declare-fun o () character)

(declare-fun result () Int)

(declare-fun j1 () Int)

(declare-fun x__split_fields1 () (Array Int character))

(declare-fun j2 () Int)

;; H
  (assert (dynamic_invariant s true false true))

;; H
  (assert (= result j))

;; H
  (assert (= j1 (to_rep1 (first (rt s)))))

;; H
  (assert (<= (to_rep1 (first (rt s))) j1))

;; H
  (assert (<= j1 (to_rep1 (last (rt s)))))

;; H
  (assert
  (and
  (forall ((temp___323 Int))
  (=> (and (<= 1 temp___323) (<= temp___323 14))
  (=> (<= j2 temp___323)
  (= (select x__split_fields1 temp___323) (select x__split_fields temp___323)))))
  (and (<= (to_rep1 (first (rt s))) j2) (<= j2 (to_rep1 (last (rt s)))))))

;; H
  (assert (= (to_rep o) (to_rep (select (elts s) j2))))

(assert
;; WP_parameter_def
 ;; File "instr.ads", line 87, characters 0-0
  (not (<= 1 j2)))
(check-sat)
