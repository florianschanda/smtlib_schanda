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

(declare-sort natural 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (natural natural) Bool)

(declare-fun dummy4 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range4
                                     temp___expr_33)))

(declare-sort program_phase_t 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (program_phase_t program_phase_t) Bool)

(declare-fun dummy5 () program_phase_t)

(declare-datatypes ()
((program_phase_t__ref
 (mk_program_phase_t__ref (program_phase_t__content program_phase_t)))))
(define-fun program_phase_t__ref___projection ((a program_phase_t__ref)) program_phase_t 
  (program_phase_t__content a))

(define-fun dynamic_invariant1 ((temp___expr_539 Int)
  (temp___is_init_536 Bool) (temp___skip_constant_537 Bool)
  (temp___do_toplevel_538 Bool)) Bool (=>
                                      (or (= temp___is_init_536 true)
                                      (<= 0 2)) (in_range5 temp___expr_539)))

(declare-sort counter_range_t 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 10000)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (counter_range_t counter_range_t) Bool)

(declare-fun dummy6 () counter_range_t)

(declare-datatypes ()
((counter_range_t__ref
 (mk_counter_range_t__ref (counter_range_t__content counter_range_t)))))
(define-fun counter_range_t__ref___projection ((a counter_range_t__ref)) counter_range_t 
  (counter_range_t__content a))

(declare-fun to_rep2 (counter_range_t) Int)

(declare-fun of_rep2 (Int) counter_range_t)

;; inversion_axiom
  (assert
  (forall ((x counter_range_t))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x counter_range_t)) (! (in_range6
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range6 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort candidate_number_t 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 20)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq7 (candidate_number_t candidate_number_t) Bool)

(declare-fun dummy7 () candidate_number_t)

(declare-datatypes ()
((candidate_number_t__ref
 (mk_candidate_number_t__ref
 (candidate_number_t__content candidate_number_t)))))
(define-fun candidate_number_t__ref___projection ((a candidate_number_t__ref)) candidate_number_t 
  (candidate_number_t__content a))

(define-fun dynamic_invariant2 ((temp___expr_551 Int)
  (temp___is_init_548 Bool) (temp___skip_constant_549 Bool)
  (temp___do_toplevel_550 Bool)) Bool (=>
                                      (or (= temp___is_init_548 true)
                                      (<= 0 20)) (in_range7 temp___expr_551)))

(declare-fun dummy8 () (Array Int character))

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

(declare-fun user_eq8 ((Array Int character) (Array Int character)) Bool)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int character)))))))
(declare-fun slide1 ((Array Int (Array Int character)) Int
  Int) (Array Int (Array Int character)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int character))))
  (forall ((first2 Int))
  (! (= (slide1 a first2 first2) a) :pattern ((slide1 a first2 first2)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int character))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int (Array Int character)) Int Int
  (Array Int (Array Int character)) Int
  Int) (Array Int (Array Int character)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int character)))
  (b (Array Int (Array Int character))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 ((Array Int character)
  Int) (Array Int (Array Int character)))

;; singleton_def
  (assert
  (forall ((v (Array Int character)))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq9 ((a (Array Int (Array Int character))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int character))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_152 Int))
                           (=>
                           (and (<= a__first temp___idx_152)
                           (<= temp___idx_152 a__last))
                           (= (bool_eq3 (select a temp___idx_152) 1 70
                              (select b (+ (- b__first a__first) temp___idx_152))
                              1 70) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int character)))
  (b (Array Int (Array Int character))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq9 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_152 Int))
  (=> (and (<= a__first temp___idx_152) (<= temp___idx_152 a__last))
  (= (bool_eq3 (select a temp___idx_152) 1 70
     (select b (+ (- b__first a__first) temp___idx_152)) 1 70) true))))))))

(declare-datatypes ()
((map__ref2 (mk_map__ref2 (map__content2 (Array Int counter_range_t))))))
(declare-fun slide2 ((Array Int counter_range_t) Int
  Int) (Array Int counter_range_t))

;; slide_eq
  (assert
  (forall ((a (Array Int counter_range_t)))
  (forall ((first2 Int))
  (! (= (slide2 a first2 first2) a) :pattern ((slide2 a first2 first2)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int counter_range_t)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide2 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide2 a old_first new_first) i)) ))))))

(declare-fun concat3 ((Array Int counter_range_t) Int Int
  (Array Int counter_range_t) Int Int) (Array Int counter_range_t))

;; concat_def
  (assert
  (forall ((a (Array Int counter_range_t)) (b (Array Int counter_range_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat3 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton3 (counter_range_t Int) (Array Int counter_range_t))

;; singleton_def
  (assert
  (forall ((v counter_range_t))
  (forall ((i Int))
  (! (= (select (singleton3 v i) i) v) :pattern ((select (singleton3 v i) i)) ))))

(define-fun bool_eq10 ((a (Array Int counter_range_t)) (a__first Int)
  (a__last Int) (b (Array Int counter_range_t)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_153 Int))
                           (=>
                           (and (<= a__first temp___idx_153)
                           (<= temp___idx_153 a__last))
                           (= (to_rep2 (select a temp___idx_153)) (to_rep2
                                                                  (select b (+ (- b__first a__first) temp___idx_153)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int counter_range_t)) (b (Array Int counter_range_t)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq10 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_153 Int))
  (=> (and (<= a__first temp___idx_153) (<= temp___idx_153 a__last))
  (= (to_rep2 (select a temp___idx_153)) (to_rep2
                                         (select b (+ (- b__first a__first) temp___idx_153)))))))))))

(declare-fun compare1 ((Array Int counter_range_t) Int Int
  (Array Int counter_range_t) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int counter_range_t)) (b (Array Int counter_range_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare1 a a_first a_last b b_first b_last) 0)
     (= (bool_eq10 a a_first a_last b b_first b_last) true)) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int counter_range_t)) (b (Array Int counter_range_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare1 a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq10 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep2 (select a (+ i 1))) (to_rep2 (select b (+ j 1))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int counter_range_t)) (b (Array Int counter_range_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare1 a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq10 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep2 (select b (+ i 1))) (to_rep2 (select a (+ j 1))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

(declare-fun program_phase () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun candidates () (Array Int (Array Int character)))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun last_candidate () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-sort tTbufSP1 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 1 x) (<= x 255)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (tTbufSP1 tTbufSP1) Bool)

(declare-fun dummy9 () tTbufSP1)

(declare-datatypes ()
((tTbufSP1__ref (mk_tTbufSP1__ref (tTbufSP1__content tTbufSP1)))))
(define-fun tTbufSP1__ref___projection ((a tTbufSP1__ref)) tTbufSP1 (tTbufSP1__content
                                                                    a))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-sort t55b 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 1 x) (<= x 11)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq10 (t55b t55b) Bool)

(declare-fun dummy10 () t55b)

(declare-datatypes () ((t55b__ref (mk_t55b__ref (t55b__content t55b)))))
(define-fun t55b__ref___projection ((a t55b__ref)) t55b (t55b__content a))

(declare-fun temp___String_Literal_685 (tuple0) (Array Int character))

;; temp___String_Literal_685__def_axiom
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
     (and
     (and
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 1)) 42)
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 2)) 42))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 3)) 42))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 4)) 42))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 6)) 86))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 7)) 111))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 8)) 116))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 9)) 105))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 10)) 110))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 11)) 103))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 12)) 32))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 13)) 42))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 14)) 42))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 15)) 42))
     (= (to_rep (select (temp___String_Literal_685 us_void_param) 16)) 42)) :pattern (
  (temp___String_Literal_685 us_void_param)) )))

(declare-fun temp___String_Literal_686 (tuple0) (Array Int character))

;; temp___String_Literal_686__def_axiom
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
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 1)) 68)
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 2)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 3)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 4)) 121))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 5)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 6)) 117))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 7)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 8)) 119))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 9)) 97))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 10)) 110))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 11)) 116))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 12)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 13)) 116))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 14)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 15)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 16)) 118))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 17)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 18)) 116))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 19)) 101))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 20)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 21)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 22)) 114))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 23)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 24)) 115))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 25)) 116))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 26)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 27)) 112))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 28)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 29)) 116))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 30)) 104))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 31)) 101))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 32)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 33)) 118))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 34)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 35)) 116))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 36)) 101))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 37)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 38)) 40))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 39)) 118))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 40)) 47))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 41)) 39))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 42)) 101))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 43)) 110))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 44)) 100))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 45)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 46)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 47)) 102))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 48)) 32))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 49)) 118))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 50)) 111))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 51)) 116))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 52)) 101))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 53)) 39))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 54)) 41))
     (= (to_rep (select (temp___String_Literal_686 us_void_param) 55)) 63)) :pattern (
  (temp___String_Literal_686 us_void_param)) )))

(declare-fun temp___String_Literal_690 (tuple0) (Array Int character))

;; temp___String_Literal_690__def_axiom
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
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 1)) 101)
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 2)) 110))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 3)) 100))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 4)) 32))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 5)) 111))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 6)) 102))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 7)) 32))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 8)) 118))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 9)) 111))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 10)) 116))
     (= (to_rep (select (temp___String_Literal_690 us_void_param) 11)) 101)) :pattern (
  (temp___String_Literal_690 us_void_param)) )))

(declare-fun temp___String_Literal_693 (tuple0) (Array Int character))

;; temp___String_Literal_693__def_axiom
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
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 1)) 86)
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 2)) 111))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 3)) 116))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 4)) 101))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 6)) 115))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 7)) 116))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 8)) 111))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 9)) 114))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 10)) 101))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 11)) 100))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 12)) 58))
     (= (to_rep (select (temp___String_Literal_693 us_void_param) 13)) 32)) :pattern (
  (temp___String_Literal_693 us_void_param)) )))

(declare-fun temp___String_Literal_694 (tuple0) (Array Int character))

;; temp___String_Literal_694__def_axiom
  (assert true)

(define-fun dynamic_invariant3 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant4 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(define-fun dynamic_invariant5 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(define-fun dynamic_invariant6 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant7 ((temp___expr_545 Int)
  (temp___is_init_542 Bool) (temp___skip_constant_543 Bool)
  (temp___do_toplevel_544 Bool)) Bool (=>
                                      (or (= temp___is_init_542 true)
                                      (<= 0 10000)) (in_range6
                                      temp___expr_545)))

(declare-fun counters () (Array Int counter_range_t))

(declare-fun number_of_votes () Int)

(declare-fun last2 () Int)

(declare-fun chosen_vote () Int)

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun result () Bool)

(declare-fun counters1 () (Array Int counter_range_t))

(declare-fun number_of_votes1 () Int)

(declare-fun buf () (Array Int character))

(declare-fun last3 () Int)

(declare-fun chosen_vote1 () Int)

(declare-fun last4 () Int)

(declare-fun ada__text_io__get_line__2__item () (Array Int character))

(declare-fun result1 () (Array Int character))

(declare-fun buf1 () (Array Int character))

(declare-fun chosen_vote2 () Int)

;; H
  (assert (in_range5 program_phase))

;; H
  (assert (in_range7 last_candidate))

;; H
  (assert (in_range4 number_of_votes))

;; H
  (assert
  (and (= program_phase 1)
  (and
  (forall ((i Int))
  (=> (and (<= 0 i) (<= i 20)) (= (to_rep2 (select counters i)) 0)))
  (= number_of_votes 0))))

;; H
  (assert (=> (<= 0 2147483647) (in_range4 last2)))

;; H
  (assert (=> (<= 0 20) (in_range7 chosen_vote)))

;; H
  (assert
  (and (= o (* last_candidate 20)) (in_range1 (* last_candidate 20))))

;; H
  (assert (= result (ite (< number_of_votes o) true false)))

;; H
  (assert (= result true))

;; H
  (assert
  (forall ((i Int))
  (=> (and (<= (+ last_candidate 1) i) (<= i 20))
  (= (to_rep2 (select counters1 i)) 0))))

;; H
  (assert
  (and
  (and
  (and (in_range4 number_of_votes1) (=> (<= 0 2147483647) (in_range4 last3)))
  (=> (<= 0 20) (in_range7 chosen_vote1)))
  (< number_of_votes1 (* last_candidate 20))))

;; H
  (assert (= (to_rep1 o2) 255))

;; H
  (assert (= (to_rep1 o1) 1))

;; H
  (assert (in_range4 last4))

;; H
  (assert (= buf result1))

;; H
  (assert
  (= buf1 (slide ada__text_io__get_line__2__item (to_rep1 (first (mk 1 255)))
          1)))

;; H
  (assert (= (to_rep (select buf1 1)) 118))

;; H
  (assert (and (<= chosen_vote2 last_candidate) (in_range7 chosen_vote2)))

;; H
  (assert (< (to_rep2 (select counters1 chosen_vote2)) 10000))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range6 (+ (to_rep2 (select counters1 chosen_vote2)) 1))))
(check-sat)
