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

(declare-sort descriptioni 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 150)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (descriptioni descriptioni) Bool)

(declare-fun dummy4 () descriptioni)

(declare-datatypes ()
((descriptioni__ref
 (mk_descriptioni__ref (descriptioni__content descriptioni)))))
(define-fun descriptioni__ref___projection ((a descriptioni__ref)) descriptioni 
  (descriptioni__content a))

(declare-fun nodescription () (Array Int character))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun audittypes__nodescription__aggregate_def (Int) (Array Int character))

;; def_axiom
  (assert
  (forall ((temp___144 Int))
  (forall ((temp___145 Int))
  (= (select (audittypes__nodescription__aggregate_def temp___144) temp___145) 
  (of_rep temp___144)))))

(declare-fun valid_numberlogentries (us_private) Bool)

(declare-fun valid_numberlogentries__function_guard (Bool us_private) Bool)

(declare-fun privatekeypresent (us_private) Bool)

(declare-fun privatekeypresent__function_guard (Bool us_private) Bool)

;; privatekeypresent__post_axiom
  (assert true)

(declare-sort statscount 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (statscount statscount) Bool)

(declare-fun dummy5 () statscount)

(declare-datatypes ()
((statscount__ref (mk_statscount__ref (statscount__content statscount)))))
(define-fun statscount__ref___projection ((a statscount__ref)) statscount 
  (statscount__content a))

(declare-fun to_rep2 (statscount) Int)

(declare-fun of_rep2 (Int) statscount)

;; inversion_axiom
  (assert
  (forall ((x statscount))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x statscount)) (! (in_range4
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__stats__t__successentry statscount)(rec__stats__t__failentry statscount)(rec__stats__t__successbio statscount)(rec__stats__t__failbio statscount)))))
(define-fun us_split_fields_SuccessEntry__projection ((a us_split_fields)) statscount 
  (rec__stats__t__successentry a))

(define-fun us_split_fields_FailEntry__projection ((a us_split_fields)) statscount 
  (rec__stats__t__failentry a))

(define-fun us_split_fields_SuccessBio__projection ((a us_split_fields)) statscount 
  (rec__stats__t__successbio a))

(define-fun us_split_fields_FailBio__projection ((a us_split_fields)) statscount 
  (rec__stats__t__failbio a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_13__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_14__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                               a))

(define-fun bool_eq7 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (= (to_rep2
                           (rec__stats__t__successentry (us_split_fields1 a))) 
                        (to_rep2
                        (rec__stats__t__successentry (us_split_fields1 b))))
                        (= (to_rep2
                           (rec__stats__t__failentry (us_split_fields1 a))) 
                        (to_rep2
                        (rec__stats__t__failentry (us_split_fields1 b)))))
                        (= (to_rep2
                           (rec__stats__t__successbio (us_split_fields1 a))) 
                        (to_rep2
                        (rec__stats__t__successbio (us_split_fields1 b)))))
                        (= (to_rep2
                           (rec__stats__t__failbio (us_split_fields1 a))) 
                        (to_rep2
                        (rec__stats__t__failbio (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq6 (us_rep us_rep) Bool)

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

(declare-fun stats__t__successentry__first__bit () Int)

(declare-fun stats__t__successentry__last__bit () Int)

(declare-fun stats__t__successentry__position () Int)

;; stats__t__successentry__first__bit_axiom
  (assert (<= 0 stats__t__successentry__first__bit))

;; stats__t__successentry__last__bit_axiom
  (assert
  (< stats__t__successentry__first__bit stats__t__successentry__last__bit))

;; stats__t__successentry__position_axiom
  (assert (<= 0 stats__t__successentry__position))

(declare-fun stats__t__failentry__first__bit () Int)

(declare-fun stats__t__failentry__last__bit () Int)

(declare-fun stats__t__failentry__position () Int)

;; stats__t__failentry__first__bit_axiom
  (assert (<= 0 stats__t__failentry__first__bit))

;; stats__t__failentry__last__bit_axiom
  (assert (< stats__t__failentry__first__bit stats__t__failentry__last__bit))

;; stats__t__failentry__position_axiom
  (assert (<= 0 stats__t__failentry__position))

(declare-fun stats__t__successbio__first__bit () Int)

(declare-fun stats__t__successbio__last__bit () Int)

(declare-fun stats__t__successbio__position () Int)

;; stats__t__successbio__first__bit_axiom
  (assert (<= 0 stats__t__successbio__first__bit))

;; stats__t__successbio__last__bit_axiom
  (assert
  (< stats__t__successbio__first__bit stats__t__successbio__last__bit))

;; stats__t__successbio__position_axiom
  (assert (<= 0 stats__t__successbio__position))

(declare-fun stats__t__failbio__first__bit () Int)

(declare-fun stats__t__failbio__last__bit () Int)

(declare-fun stats__t__failbio__position () Int)

;; stats__t__failbio__first__bit_axiom
  (assert (<= 0 stats__t__failbio__first__bit))

;; stats__t__failbio__last__bit_axiom
  (assert (< stats__t__failbio__first__bit stats__t__failbio__last__bit))

;; stats__t__failbio__position_axiom
  (assert (<= 0 stats__t__failbio__position))

(declare-fun dummy6 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref_4__projection ((a t__ref)) us_rep (t__content a))

(declare-fun extractuser (us_private) (Array Int character))

(declare-fun extractuser__function_guard ((Array Int character)
  us_private) Bool)

;; extractuser__post_axiom
  (assert true)

(declare-fun ispresent (us_private) Bool)

(declare-fun ispresent__function_guard (Bool us_private) Bool)

;; ispresent__post_axiom
  (assert true)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort statust 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 7)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (statust statust) Bool)

(declare-fun dummy7 () statust)

(declare-datatypes ()
((statust__ref (mk_statust__ref (statust__content statust)))))
(define-fun statust__ref_2__projection ((a statust__ref)) statust (statust__content
                                                                  a))

(define-fun dynamic_invariant ((temp___expr_1767 Int)
  (temp___is_init_1764 Bool) (temp___skip_constant_1765 Bool)
  (temp___do_toplevel_1766 Bool)) Bool (=>
                                       (or (= temp___is_init_1764 true)
                                       (<= 0 7)) (in_range5
                                       temp___expr_1767)))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

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

;; valid_numberlogentries__post_axiom
  (assert true)

(define-fun dynamic_invariant5 ((temp___expr_334 Int)
  (temp___is_init_331 Bool) (temp___skip_constant_332 Bool)
  (temp___do_toplevel_333 Bool)) Bool (=>
                                      (or (= temp___is_init_331 true)
                                      (<= 1 150)) (in_range3
                                      temp___expr_334)))

;; nodescription__def_axiom
  (assert (= nodescription (audittypes__nodescription__aggregate_def 32)))

(define-fun dynamic_invariant6 ((temp___expr_1085 Int)
  (temp___is_init_1082 Bool) (temp___skip_constant_1083 Bool)
  (temp___do_toplevel_1084 Bool)) Bool (=>
                                       (or (= temp___is_init_1082 true)
                                       (<= 0 2147483647)) (in_range4
                                       temp___expr_1085)))

(declare-fun state () us_private)

(declare-fun state1 () us_private)

(declare-fun status () us_private)

(declare-fun output () us_private)

(declare-fun status1 () Int)

(declare-fun o () Bool)

(declare-fun o1 () (Array Int character))

(declare-fun status2 () us_private)

(declare-fun output1 () us_private)

(declare-fun result () Bool)

(declare-fun filestate () us_private)

(declare-fun state2 () us_private)

(declare-fun state3 () us_private)

(declare-fun updateok () Bool)

(declare-fun result1 () Int)

(declare-fun status3 () Int)

(declare-fun filestate1 () us_private)

(declare-fun state4 () us_private)

(declare-fun status4 () us_private)

(declare-fun output2 () us_private)

(declare-fun updateok1 () Bool)

;; H
  (assert (= (audittypes__nodescription__aggregate_def 32) nodescription))

;; H
  (assert (=> (<= 0 7) (in_range5 status1)))

;; H
  (assert (privatekeypresent__function_guard (privatekeypresent state)
  state))

;; H
  (assert (= (privatekeypresent state) true))

;; H
  (assert
  (and (= o (ispresent state1)) (ispresent__function_guard o state1)))

;; H
  (assert (= result (ite (not (= o true)) true false)))

;; H
  (assert (not (= result true)))

;; H
  (assert (= result1 status1))

;; H
  (assert (= status3 5))

;; H
  (assert (=> (not (= updateok true)) (= updateok1 updateok)))

;; H
  (assert (=> (not (= updateok true)) (= output2 output)))

;; H
  (assert (=> (not (= updateok true)) (= status4 status)))

;; H
  (assert (=> (not (= updateok true)) (= state4 state2)))

;; H
  (assert (=> (not (= updateok true)) (= filestate1 filestate)))

;; H
  (assert (=> (not (= updateok true)) (= updateok1 updateok)))

;; H
  (assert (=> (not (= updateok true)) (= output2 output1)))

;; H
  (assert (=> (not (= updateok true)) (= status4 status2)))

;; H
  (assert (=> (not (= updateok true)) (= state4 state2)))

;; H
  (assert (=> (not (= updateok true)) (= filestate1 filestate)))

;; H
  (assert (= updateok1 true))

;; H
  (assert
  (and (= o1 (extractuser state3)) (extractuser__function_guard o1 state3)))

;; H
  (assert (valid_numberlogentries__function_guard
  (valid_numberlogentries state4) state4))

(assert
;; WP_parameter_def
 ;; File "userentry.adb", line 470, characters 0-0
  (not (= (valid_numberlogentries state4) true)))
(check-sat)
