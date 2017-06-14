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

(declare-sort presencet 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (presencet presencet) Bool)

(declare-fun dummy4 () presencet)

(declare-datatypes ()
((presencet__ref (mk_presencet__ref (presencet__content presencet)))))
(define-fun presencet__ref___projection ((a presencet__ref)) presencet 
  (presencet__content a))

(define-fun dynamic_invariant ((temp___expr_174 Int)
  (temp___is_init_171 Bool) (temp___skip_constant_172 Bool)
  (temp___do_toplevel_173 Bool)) Bool (=>
                                      (or (= temp___is_init_171 true)
                                      (<= 0 1)) (in_range3 temp___expr_174)))

(declare-sort descriptioni 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 150)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (descriptioni descriptioni) Bool)

(declare-fun dummy5 () descriptioni)

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

(declare-sort yearst 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1901 x) (<= x 2099)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (yearst yearst) Bool)

(declare-fun dummy6 () yearst)

(declare-datatypes ()
((yearst__ref (mk_yearst__ref (yearst__content yearst)))))
(define-fun yearst__ref___projection ((a yearst__ref)) yearst (yearst__content
                                                              a))

(declare-fun to_rep2 (yearst) Int)

(declare-fun of_rep2 (Int) yearst)

;; inversion_axiom
  (assert
  (forall ((x yearst))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x yearst)) (! (in_range5 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort monthst 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 12)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (monthst monthst) Bool)

(declare-fun dummy7 () monthst)

(declare-datatypes ()
((monthst__ref (mk_monthst__ref (monthst__content monthst)))))
(define-fun monthst__ref___projection ((a monthst__ref)) monthst (monthst__content
                                                                 a))

(declare-fun to_rep3 (monthst) Int)

(declare-fun of_rep3 (Int) monthst)

;; inversion_axiom
  (assert
  (forall ((x monthst))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x monthst)) (! (in_range6 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range6 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-sort dayst 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 31)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (dayst dayst) Bool)

(declare-fun dummy8 () dayst)

(declare-datatypes () ((dayst__ref (mk_dayst__ref (dayst__content dayst)))))
(define-fun dayst__ref___projection ((a dayst__ref)) dayst (dayst__content a))

(declare-fun to_rep4 (dayst) Int)

(declare-fun of_rep4 (Int) dayst)

;; inversion_axiom
  (assert
  (forall ((x dayst))
  (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)) )))

;; range_axiom
  (assert
  (forall ((x dayst)) (! (in_range7 (to_rep4 x)) :pattern ((to_rep4 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range7 x) (= (to_rep4 (of_rep4 x)) x)) :pattern ((to_rep4
                                                              (of_rep4 x))) )))

(declare-sort millisecst 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 86399999)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (millisecst millisecst) Bool)

(declare-fun dummy9 () millisecst)

(declare-datatypes ()
((millisecst__ref (mk_millisecst__ref (millisecst__content millisecst)))))
(define-fun millisecst__ref___projection ((a millisecst__ref)) millisecst 
  (millisecst__content a))

(declare-fun to_rep5 (millisecst) Int)

(declare-fun of_rep5 (Int) millisecst)

;; inversion_axiom
  (assert
  (forall ((x millisecst))
  (! (= (of_rep5 (to_rep5 x)) x) :pattern ((to_rep5 x)) )))

;; range_axiom
  (assert
  (forall ((x millisecst)) (! (in_range8
  (to_rep5 x)) :pattern ((to_rep5 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range8 x) (= (to_rep5 (of_rep5 x)) x)) :pattern ((to_rep5
                                                              (of_rep5 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__clock__timet__year yearst)(rec__clock__timet__month monthst)(rec__clock__timet__day dayst)(rec__clock__timet__millisec millisecst)))))
(define-fun us_split_fields_Year__projection ((a us_split_fields)) yearst 
  (rec__clock__timet__year a))

(define-fun us_split_fields_Month__projection ((a us_split_fields)) monthst 
  (rec__clock__timet__month a))

(define-fun us_split_fields_Day__projection ((a us_split_fields)) dayst 
  (rec__clock__timet__day a))

(define-fun us_split_fields_MilliSec__projection ((a us_split_fields)) millisecst 
  (rec__clock__timet__millisec a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_4__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_4__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq11 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (= (to_rep2
                           (rec__clock__timet__year (us_split_fields1 a))) 
                        (to_rep2
                        (rec__clock__timet__year (us_split_fields1 b))))
                        (= (to_rep3
                           (rec__clock__timet__month (us_split_fields1 a))) 
                        (to_rep3
                        (rec__clock__timet__month (us_split_fields1 b)))))
                        (= (to_rep4
                           (rec__clock__timet__day (us_split_fields1 a))) 
                        (to_rep4
                        (rec__clock__timet__day (us_split_fields1 b)))))
                        (= (to_rep5
                           (rec__clock__timet__millisec (us_split_fields1 a))) 
                        (to_rep5
                        (rec__clock__timet__millisec (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq10 (us_rep us_rep) Bool)

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

(declare-fun clock__timet__year__first__bit () Int)

(declare-fun clock__timet__year__last__bit () Int)

(declare-fun clock__timet__year__position () Int)

;; clock__timet__year__first__bit_axiom
  (assert (<= 0 clock__timet__year__first__bit))

;; clock__timet__year__last__bit_axiom
  (assert (< clock__timet__year__first__bit clock__timet__year__last__bit))

;; clock__timet__year__position_axiom
  (assert (<= 0 clock__timet__year__position))

(declare-fun clock__timet__month__first__bit () Int)

(declare-fun clock__timet__month__last__bit () Int)

(declare-fun clock__timet__month__position () Int)

;; clock__timet__month__first__bit_axiom
  (assert (<= 0 clock__timet__month__first__bit))

;; clock__timet__month__last__bit_axiom
  (assert (< clock__timet__month__first__bit clock__timet__month__last__bit))

;; clock__timet__month__position_axiom
  (assert (<= 0 clock__timet__month__position))

(declare-fun clock__timet__day__first__bit () Int)

(declare-fun clock__timet__day__last__bit () Int)

(declare-fun clock__timet__day__position () Int)

;; clock__timet__day__first__bit_axiom
  (assert (<= 0 clock__timet__day__first__bit))

;; clock__timet__day__last__bit_axiom
  (assert (< clock__timet__day__first__bit clock__timet__day__last__bit))

;; clock__timet__day__position_axiom
  (assert (<= 0 clock__timet__day__position))

(declare-fun clock__timet__millisec__first__bit () Int)

(declare-fun clock__timet__millisec__last__bit () Int)

(declare-fun clock__timet__millisec__position () Int)

;; clock__timet__millisec__first__bit_axiom
  (assert (<= 0 clock__timet__millisec__first__bit))

;; clock__timet__millisec__last__bit_axiom
  (assert
  (< clock__timet__millisec__first__bit clock__timet__millisec__last__bit))

;; clock__timet__millisec__position_axiom
  (assert (<= 0 clock__timet__millisec__position))

(declare-fun dummy10 () us_rep)

(declare-datatypes () ((timet__ref (mk_timet__ref (timet__content us_rep)))))
(define-fun timet__ref___projection ((a timet__ref)) us_rep (timet__content
                                                            a))

(declare-fun thecurrenttime (us_private) us_rep)

(declare-fun thecurrenttime__function_guard (us_rep us_private) Bool)

;; thecurrenttime__post_axiom
  (assert true)

(declare-fun greaterthan (us_rep us_rep) Bool)

(declare-fun greaterthan__function_guard (Bool us_rep us_rep) Bool)

;; greaterthan__post_axiom
  (assert true)

(declare-fun valid_numberlogentries (us_private) Bool)

(declare-fun valid_numberlogentries__function_guard (Bool us_private) Bool)

(declare-sort statscount 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq11 (statscount statscount) Bool)

(declare-fun dummy11 () statscount)

(declare-datatypes ()
((statscount__ref (mk_statscount__ref (statscount__content statscount)))))
(define-fun statscount__ref___projection ((a statscount__ref)) statscount 
  (statscount__content a))

(declare-fun to_rep6 (statscount) Int)

(declare-fun of_rep6 (Int) statscount)

;; inversion_axiom
  (assert
  (forall ((x statscount))
  (! (= (of_rep6 (to_rep6 x)) x) :pattern ((to_rep6 x)) )))

;; range_axiom
  (assert
  (forall ((x statscount)) (! (in_range9
  (to_rep6 x)) :pattern ((to_rep6 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range9 x) (= (to_rep6 (of_rep6 x)) x)) :pattern ((to_rep6
                                                              (of_rep6 x))) )))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__stats__t__successentry statscount)(rec__stats__t__failentry statscount)(rec__stats__t__successbio statscount)(rec__stats__t__failbio statscount)))))
(define-fun us_split_fields_SuccessEntry__projection ((a us_split_fields2)) statscount 
  (rec__stats__t__successentry a))

(define-fun us_split_fields_FailEntry__projection ((a us_split_fields2)) statscount 
  (rec__stats__t__failentry a))

(define-fun us_split_fields_SuccessBio__projection ((a us_split_fields2)) statscount 
  (rec__stats__t__successbio a))

(define-fun us_split_fields_FailBio__projection ((a us_split_fields2)) statscount 
  (rec__stats__t__failbio a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_13__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_14__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                 a))

(define-fun bool_eq13 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (and
                         (and
                         (= (to_rep6
                            (rec__stats__t__successentry
                            (us_split_fields3 a))) (to_rep6
                                                   (rec__stats__t__successentry
                                                   (us_split_fields3 b))))
                         (= (to_rep6
                            (rec__stats__t__failentry (us_split_fields3 a))) 
                         (to_rep6
                         (rec__stats__t__failentry (us_split_fields3 b)))))
                         (= (to_rep6
                            (rec__stats__t__successbio (us_split_fields3 a))) 
                         (to_rep6
                         (rec__stats__t__successbio (us_split_fields3 b)))))
                         (= (to_rep6
                            (rec__stats__t__failbio (us_split_fields3 a))) 
                         (to_rep6
                         (rec__stats__t__failbio (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq12 (us_rep1 us_rep1) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep1) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))

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

(declare-fun dummy12 () us_rep1)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep1)))))
(define-fun t__ref_4__projection ((a t__ref)) us_rep1 (t__content a))

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

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort statust 0)

(define-fun in_range10 ((x Int)) Bool (and (<= 0 x) (<= x 7)))

(define-fun bool_eq14 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)

(declare-fun user_eq13 (statust statust) Bool)

(declare-fun dummy13 () statust)

(declare-datatypes ()
((statust__ref (mk_statust__ref (statust__content statust)))))
(define-fun statust__ref_2__projection ((a statust__ref)) statust (statust__content
                                                                  a))

(define-fun dynamic_invariant1 ((temp___expr_1767 Int)
  (temp___is_init_1764 Bool) (temp___skip_constant_1765 Bool)
  (temp___do_toplevel_1766 Bool)) Bool (=>
                                       (or (= temp___is_init_1764 true)
                                       (<= 0 7)) (in_range10
                                       temp___expr_1767)))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range1
                                     temp___expr_39)))

(define-fun dynamic_invariant3 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range2 temp___expr_63)))

(define-fun dynamic_invariant4 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(define-fun dynamic_invariant5 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

;; valid_numberlogentries__post_axiom
  (assert true)

(define-fun dynamic_invariant6 ((temp___expr_334 Int)
  (temp___is_init_331 Bool) (temp___skip_constant_332 Bool)
  (temp___do_toplevel_333 Bool)) Bool (=>
                                      (or (= temp___is_init_331 true)
                                      (<= 1 150)) (in_range4
                                      temp___expr_334)))

;; nodescription__def_axiom
  (assert (= nodescription (audittypes__nodescription__aggregate_def 32)))

(define-fun dynamic_invariant7 ((temp___expr_376 Int)
  (temp___is_init_373 Bool) (temp___skip_constant_374 Bool)
  (temp___do_toplevel_375 Bool)) Bool (=>
                                      (or (= temp___is_init_373 true)
                                      (<= 1901 2099)) (in_range5
                                      temp___expr_376)))

(define-fun dynamic_invariant8 ((temp___expr_382 Int)
  (temp___is_init_379 Bool) (temp___skip_constant_380 Bool)
  (temp___do_toplevel_381 Bool)) Bool (=>
                                      (or (= temp___is_init_379 true)
                                      (<= 1 12)) (in_range6 temp___expr_382)))

(define-fun dynamic_invariant9 ((temp___expr_388 Int)
  (temp___is_init_385 Bool) (temp___skip_constant_386 Bool)
  (temp___do_toplevel_387 Bool)) Bool (=>
                                      (or (= temp___is_init_385 true)
                                      (<= 1 31)) (in_range7 temp___expr_388)))

(define-fun dynamic_invariant10 ((temp___expr_412 Int)
  (temp___is_init_409 Bool) (temp___skip_constant_410 Bool)
  (temp___do_toplevel_411 Bool)) Bool (=>
                                      (or (= temp___is_init_409 true)
                                      (<= 0 86399999)) (in_range8
                                      temp___expr_412)))

(define-fun dynamic_invariant11 ((temp___expr_1085 Int)
  (temp___is_init_1082 Bool) (temp___skip_constant_1083 Bool)
  (temp___do_toplevel_1084 Bool)) Bool (=>
                                       (or (= temp___is_init_1082 true)
                                       (<= 0 2147483647)) (in_range9
                                       temp___expr_1085)))

(declare-fun currenttime () us_private)

(declare-fun state () us_private)

(declare-fun state1 () us_private)

(declare-fun status () Int)

(declare-fun fingertimeout__split_fields () yearst)

(declare-fun fingertimeout__split_fields1 () monthst)

(declare-fun fingertimeout__split_fields2 () dayst)

(declare-fun fingertimeout__split_fields3 () millisecst)

(declare-fun fingerpresence () Int)

(declare-fun o () Bool)

(declare-fun o1 () yearst)

(declare-fun o2 () monthst)

(declare-fun o3 () dayst)

(declare-fun o4 () millisecst)

(declare-fun o5 () (Array Int character))

(declare-fun result () Bool)

(declare-fun result1 () Bool)

(declare-fun fingerpresence1 () Int)

(define-fun o6 () us_rep (mk___rep (mk___split_fields o1 o2 o3 o4)))

;; H
  (assert (= (audittypes__nodescription__aggregate_def 32) nodescription))

;; H
  (assert (in_range10 status))

;; H
  (assert (= status 2))

;; H
  (assert (=> (<= 0 1) (in_range3 fingerpresence)))

;; H
  (assert
  (and (= o (ispresent state1)) (ispresent__function_guard o state1)))

;; H
  (assert (= result (ite (not (= o true)) true false)))

;; H
  (assert (not (= result true)))

;; H
  (assert
  (and (= o6 (thecurrenttime currenttime)) (thecurrenttime__function_guard 
  o6 currenttime)))

;; H
  (assert
  (and
  (= result1 (greaterthan o6
             (mk___rep
             (mk___split_fields fingertimeout__split_fields
             fingertimeout__split_fields1 fingertimeout__split_fields2
             fingertimeout__split_fields3))))
  (greaterthan__function_guard result1 o6
  (mk___rep
  (mk___split_fields fingertimeout__split_fields fingertimeout__split_fields1
  fingertimeout__split_fields2 fingertimeout__split_fields3)))))

;; H
  (assert (not (= result1 true)))

;; H
  (assert (in_range3 fingerpresence1))

;; H
  (assert (= fingerpresence1 0))

;; H
  (assert
  (and (= o5 (extractuser state1)) (extractuser__function_guard o5 state1)))

;; H
  (assert (valid_numberlogentries__function_guard
  (valid_numberlogentries state) state))

(assert
;; WP_parameter_def
 ;; File "userentry.adb", line 151, characters 0-0
  (not (= (valid_numberlogentries state) true)))
(check-sat)
