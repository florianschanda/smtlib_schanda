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

(define-fun dynamic_invariant1 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq6 (us_rep us_rep) Bool)

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

(declare-fun dummy5 () us_rep)

(declare-datatypes ()
((file_type__ref (mk_file_type__ref (file_type__content us_rep)))))
(define-fun file_type__ref___projection ((a file_type__ref)) us_rep (file_type__content
                                                                    a))

(declare-fun end_of_file (us_rep) Bool)

(declare-fun end_of_file__function_guard (Bool us_rep) Bool)

;; end_of_file__post_axiom
  (assert true)

(declare-sort tcandidate_name_tP1 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 70)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (tcandidate_name_tP1 tcandidate_name_tP1) Bool)

(declare-fun dummy6 () tcandidate_name_tP1)

(declare-datatypes ()
((tcandidate_name_tP1__ref
 (mk_tcandidate_name_tP1__ref
 (tcandidate_name_tP1__content tcandidate_name_tP1)))))
(define-fun tcandidate_name_tP1__ref___projection ((a tcandidate_name_tP1__ref)) tcandidate_name_tP1 
  (tcandidate_name_tP1__content a))

(declare-sort tTno_vote_entrySP1 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 7)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (tTno_vote_entrySP1 tTno_vote_entrySP1) Bool)

(declare-fun dummy7 () tTno_vote_entrySP1)

(declare-datatypes ()
((tTno_vote_entrySP1__ref
 (mk_tTno_vote_entrySP1__ref
 (tTno_vote_entrySP1__content tTno_vote_entrySP1)))))
(define-fun tTno_vote_entrySP1__ref___projection ((a tTno_vote_entrySP1__ref)) tTno_vote_entrySP1 
  (tTno_vote_entrySP1__content a))

(declare-fun no_vote_entry () (Array Int character))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun temp___String_Literal_151 (tuple0) (Array Int character))

;; temp___String_Literal_151__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_151 us_void_param) 1)) 78)
     (= (to_rep (select (temp___String_Literal_151 us_void_param) 2)) 111))
     (= (to_rep (select (temp___String_Literal_151 us_void_param) 3)) 32))
     (= (to_rep (select (temp___String_Literal_151 us_void_param) 4)) 118))
     (= (to_rep (select (temp___String_Literal_151 us_void_param) 5)) 111))
     (= (to_rep (select (temp___String_Literal_151 us_void_param) 6)) 116))
     (= (to_rep (select (temp___String_Literal_151 us_void_param) 7)) 101)) :pattern (
  (temp___String_Literal_151 us_void_param)) )))

(declare-sort program_phase_t 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (program_phase_t program_phase_t) Bool)

(declare-fun dummy8 () program_phase_t)

(declare-datatypes ()
((program_phase_t__ref
 (mk_program_phase_t__ref (program_phase_t__content program_phase_t)))))
(define-fun program_phase_t__ref___projection ((a program_phase_t__ref)) program_phase_t 
  (program_phase_t__content a))

(define-fun dynamic_invariant2 ((temp___expr_539 Int)
  (temp___is_init_536 Bool) (temp___skip_constant_537 Bool)
  (temp___do_toplevel_538 Bool)) Bool (=>
                                      (or (= temp___is_init_536 true)
                                      (<= 0 2)) (in_range7 temp___expr_539)))

(declare-sort candidate_number_t 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 20)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (candidate_number_t candidate_number_t) Bool)

(declare-fun dummy9 () candidate_number_t)

(declare-datatypes ()
((candidate_number_t__ref
 (mk_candidate_number_t__ref
 (candidate_number_t__content candidate_number_t)))))
(define-fun candidate_number_t__ref___projection ((a candidate_number_t__ref)) candidate_number_t 
  (candidate_number_t__content a))

(define-fun dynamic_invariant3 ((temp___expr_551 Int)
  (temp___is_init_548 Bool) (temp___skip_constant_549 Bool)
  (temp___do_toplevel_550 Bool)) Bool (=>
                                      (or (= temp___is_init_548 true)
                                      (<= 0 20)) (in_range8 temp___expr_551)))

(declare-fun dummy10 () (Array Int character))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int character)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int character)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment2 a))))

(declare-fun user_eq10 ((Array Int character) (Array Int character)) Bool)

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

(define-fun bool_eq11 ((a (Array Int (Array Int character))) (a__first Int)
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
  (=> (= (bool_eq11 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_152 Int))
  (=> (and (<= a__first temp___idx_152) (<= temp___idx_152 a__last))
  (= (bool_eq3 (select a temp___idx_152) 1 70
     (select b (+ (- b__first a__first) temp___idx_152)) 1 70) true))))))))

(declare-fun program_phase () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun candidates_filename () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun temp___String_Literal_155 (tuple0) (Array Int character))

;; temp___String_Literal_155__def_axiom
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
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 1)) 99)
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 2)) 97))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 3)) 110))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 4)) 100))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 5)) 105))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 6)) 100))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 7)) 97))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 8)) 116))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 9)) 101))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 10)) 115))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 11)) 46))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 12)) 116))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 13)) 120))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 14)) 116)) :pattern (
  (temp___String_Literal_155 us_void_param)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-sort t4b 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 20)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq11 (t4b t4b) Bool)

(declare-fun dummy11 () t4b)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content t4b)))))
(define-fun t4b__ref___projection ((a t4b__ref)) t4b (t4b__content a))

(declare-sort t2b 0)

(define-fun in_range10 ((x Int)) Bool (and (<= 1 x) (<= x 70)))

(define-fun bool_eq13 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)

(declare-fun user_eq12 (t2b t2b) Bool)

(declare-fun dummy12 () t2b)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content t2b)))))
(define-fun t2b__ref___projection ((a t2b__ref)) t2b (t2b__content a))

(declare-sort t6b 0)

(define-fun in_range11 ((x Int)) Bool (and (<= 1 x) (<= x 7)))

(define-fun bool_eq14 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE11 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check11 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE11 (us_image) Int)

(declare-fun user_eq13 (t6b t6b) Bool)

(declare-fun dummy13 () t6b)

(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content t6b)))))
(define-fun t6b__ref___projection ((a t6b__ref)) t6b (t6b__content a))

(declare-fun r17b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun r20b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq15 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE12 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check12 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE12 (us_image) Int)

(declare-fun user_eq14 (integer integer) Bool)

(declare-fun dummy14 () integer)

(declare-datatypes () ((t18b__ref (mk_t18b__ref (t18b__content integer)))))
(define-fun t18b__ref___projection ((a t18b__ref)) integer (t18b__content a))

(declare-sort t1 0)

(declare-fun first2 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first2 (mk1 f l))) f)
     (= (to_rep1 (last3 (mk1 f l))) l)))) :pattern ((mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
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

(define-fun bool_eq16 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first2 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first2 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq15 (us_t1 us_t1) Bool)

(declare-fun dummy15 () us_t1)

(declare-datatypes () ((t19b__ref (mk_t19b__ref (t19b__content us_t1)))))
(define-fun t19b__ref___projection ((a t19b__ref)) us_t1 (t19b__content a))

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq17 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE13 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check13 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE13 (us_image) Int)

(declare-fun user_eq16 (integer integer) Bool)

(declare-fun dummy16 () integer)

(declare-datatypes () ((t21b__ref (mk_t21b__ref (t21b__content integer)))))
(define-fun t21b__ref___projection ((a t21b__ref)) integer (t21b__content a))

(declare-sort t2 0)

(declare-fun first4 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first4 (mk2 f l))) f)
     (= (to_rep1 (last6 (mk2 f l))) l)))) :pattern ((mk2 f l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
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

(define-fun bool_eq18 ((x us_t2)
  (y us_t2)) Bool (bool_eq3 (elts2 x) (to_rep1 (first4 (rt2 x)))
                  (to_rep1 (last6 (rt2 x))) (elts2 y)
                  (to_rep1 (first4 (rt2 y))) (to_rep1 (last6 (rt2 y)))))

(declare-fun user_eq17 (us_t2 us_t2) Bool)

(declare-fun dummy17 () us_t2)

(declare-datatypes () ((t22b__ref (mk_t22b__ref (t22b__content us_t2)))))
(define-fun t22b__ref___projection ((a t22b__ref)) us_t2 (t22b__content a))

(declare-fun temp___622 ((Array Int character)) (Array Int (Array Int character)))

;; def_axiom
  (assert
  (forall ((temp___624 (Array Int character)))
  (forall ((temp___625 Int))
  (= (select (temp___622 temp___624) temp___625) temp___624))))

(declare-fun temp___626 (Int) (Array Int character))

;; def_axiom
  (assert
  (forall ((temp___628 Int))
  (forall ((temp___629 Int))
  (= (select (temp___626 temp___628) temp___629) (of_rep temp___628)))))

(declare-fun temp___String_Literal_633 (tuple0) (Array Int character))

;; temp___String_Literal_633__def_axiom
  (assert true)

(define-fun dynamic_invariant4 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant5 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(define-fun dynamic_invariant6 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

;; candidates_filename__def_axiom
  (assert
  (= candidates_filename (of_array (temp___String_Literal_155 Tuple0) 1 14)))

;; no_vote_entry__def_axiom
  (assert (= no_vote_entry (temp___String_Literal_151 Tuple0)))

(declare-fun candidates () (Array Int (Array Int character)))

(declare-fun last_candidate () Int)

(declare-fun current_candidate () Int)

(declare-fun last8 () Int)

(declare-fun o () (Array Int character))

(declare-fun o1 () (Array Int (Array Int character)))

(declare-fun temp___631 () (Array Int character))

(declare-fun o2 () (Array Int character))

(declare-fun o3 () (Array Int (Array Int character)))

(declare-fun o4 () Bool)

(declare-fun o5 () Bool)

(declare-fun o6 () Int)

(declare-fun o7 () integer)

(declare-fun o8 () integer)

(declare-fun o9 () (Array Int character))

(declare-fun temp___636 () (Array Int character))

(declare-fun temp___6361 () t2)

(declare-fun result () Int)

(declare-fun current_candidate1 () Int)

(declare-fun result1 () (Array Int (Array Int character)))

(declare-fun candidates1 () (Array Int (Array Int character)))

(declare-fun result2 () (Array Int (Array Int character)))

(declare-fun candidates2 () (Array Int (Array Int character)))

(declare-fun file () us_rep)

(declare-fun result3 () Bool)

(declare-fun result4 () Int)

(declare-fun current_candidate2 () Int)

(declare-fun candidates3 () (Array Int (Array Int character)))

(declare-fun current_candidate3 () Int)

(declare-fun last9 () Int)

(declare-fun item () (Array Int character))

(declare-fun last10 () Int)

(declare-fun ada__text_io__get_line__item () (Array Int character))

(declare-fun result5 () (Array Int character))

(declare-fun item1 () (Array Int character))

;; H
  (assert (dynamic_invariant1 candidates_filename true false true))

;; H
  (assert
  (= (mk___t (temp___String_Literal_155 Tuple0) (mk 1 14)) candidates_filename))

;; H
  (assert (= (temp___String_Literal_151 Tuple0) no_vote_entry))

;; H
  (assert (in_range7 program_phase))

;; H
  (assert (=> (<= 0 20) (in_range8 last_candidate)))

;; H
  (assert (= program_phase 0))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref current_candidate)))

;; H
  (assert (= current_candidate1 0))

;; H
  (assert (in_range8 current_candidate1))

;; H
  (assert (=> (<= 0 2147483647) (in_range4 last8)))

;; H
  (assert (= o (temp___626 32)))

;; H
  (assert (= o1 (temp___622 o)))

;; H
  (assert (= (mk_map__ref1 result1) (mk_map__ref1 candidates)))

;; H
  (assert (= candidates1 o1))

;; H
  (assert (= temp___631 no_vote_entry))

;; H
  (assert
  (forall ((temp___632 Int))
  (ite (and (<= 1 temp___632) (<= temp___632 7))
  (= (select o2 temp___632) (select temp___631 temp___632))
  (= (select o2 temp___632) (select (select candidates1 0) temp___632)))))

;; H
  (assert (= o3 (store candidates1 0 o2)))

;; H
  (assert (= candidates1 result2))

;; H
  (assert (= candidates2 o3))

;; H
  (assert (= o4 (end_of_file file)))

;; H
  (assert (= o5 (ite (not (= o4 true)) true false)))

;; H
  (assert
  (= result3 (ite (= o5 true) (ite (< current_candidate1 20) true false) false)))

;; H
  (assert (= result3 true))

;; H
  (assert
  (and (= o6 (+ current_candidate1 1)) (in_range8 (+ current_candidate1 1))))

;; H
  (assert (= current_candidate1 result4))

;; H
  (assert (= current_candidate2 o6))

;; H
  (assert
  (forall ((i Int))
  (=> (and (<= current_candidate3 i) (<= i 20))
  (forall ((j Int))
  (=> (and (<= 1 j) (<= j 70))
  (= (to_rep (select (select candidates3 i) j)) 32))))))

;; H
  (assert
  (and
  (and (=> (<= 0 2147483647) (in_range4 last9))
  (forall ((temp___647 Int))
  (=> (and (<= 0 temp___647) (<= temp___647 20))
  (forall ((temp___648 Int))
  (=> (and (<= 1 temp___648) (<= temp___648 70))
  (=> (< temp___648 1)
  (= (select (select candidates3 temp___647) temp___648) (select (select 
  candidates2 temp___647) temp___648))))))))
  (=> (<= 0 20) (in_range8 current_candidate3))))

;; H
  (assert (= (to_rep1 o8) 70))

;; H
  (assert (= (to_rep1 o7) 1))

;; H
  (assert (in_range4 last10))

;; H
  (assert (= item result5))

;; H
  (assert
  (= item1 (slide ada__text_io__get_line__item (to_rep1 (first (mk 1 70))) 1)))

;; H
  (assert (= last10 r17b))

;; H
  (assert (in_range4 r17b))

;; H
  (assert (= last10 r20b))

;; H
  (assert (in_range4 r20b))

;; H
  (assert
  (=> (<= 1 r20b)
  (and (and (<= 1 1) (<= 1 70)) (and (<= 1 r20b) (<= r20b 70)))))

;; H
  (assert (= o9 item1))

;; H
  (assert (= o9 temp___636))

;; H
  (assert (= (mk2 1 r20b) temp___6361))

(assert
;; WP_parameter_def
 ;; File "evoting.adb", line 34, characters 0-0
  (not
  (= (ite (<= (to_rep1 (first4 temp___6361)) (to_rep1 (last6 temp___6361)))
     (+ (- (to_rep1 (last6 temp___6361)) (to_rep1 (first4 temp___6361))) 1)
     0) (ite (<= 1 r17b) (+ (- r17b 1) 1) 0))))
(check-sat)
