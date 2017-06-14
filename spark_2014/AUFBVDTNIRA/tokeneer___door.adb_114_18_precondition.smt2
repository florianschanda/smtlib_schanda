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

(declare-sort statust 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (statust statust) Bool)

(declare-fun dummy4 () statust)

(declare-datatypes ()
((statust__ref (mk_statust__ref (statust__content statust)))))
(define-fun statust__ref___projection ((a statust__ref)) statust (statust__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= 0 1)) (in_range4 temp___expr_152)))

(declare-sort elementt 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 43)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (elementt elementt) Bool)

(declare-fun dummy5 () elementt)

(declare-datatypes ()
((elementt__ref (mk_elementt__ref (elementt__content elementt)))))
(define-fun elementt__ref___projection ((a elementt__ref)) elementt (elementt__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_158 Int)
  (temp___is_init_155 Bool) (temp___skip_constant_156 Bool)
  (temp___do_toplevel_157 Bool)) Bool (=>
                                      (or (= temp___is_init_155 true)
                                      (<= 0 43)) (in_range5 temp___expr_158)))

(declare-sort severityt 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (severityt severityt) Bool)

(declare-fun dummy6 () severityt)

(declare-datatypes ()
((severityt__ref (mk_severityt__ref (severityt__content severityt)))))
(define-fun severityt__ref___projection ((a severityt__ref)) severityt 
  (severityt__content a))

(define-fun dynamic_invariant2 ((temp___expr_164 Int)
  (temp___is_init_161 Bool) (temp___skip_constant_162 Bool)
  (temp___do_toplevel_163 Bool)) Bool (=>
                                      (or (= temp___is_init_161 true)
                                      (<= 0 2)) (in_range6 temp___expr_164)))

(declare-sort descriptioni 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 150)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq7 (descriptioni descriptioni) Bool)

(declare-fun dummy7 () descriptioni)

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
  (forall ((temp___133 Int))
  (forall ((temp___134 Int))
  (= (select (audittypes__nodescription__aggregate_def temp___133) temp___134) 
  (of_rep temp___133)))))

(declare-fun nouser () (Array Int character))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun temp___String_Literal_135 (tuple0) (Array Int character))

;; temp___String_Literal_135__def_axiom
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
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 1)) 78)
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 2)) 111))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 3)) 85))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 4)) 115))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 5)) 101))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 6)) 114))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 7)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 8)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 10)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 11)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 12)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 13)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 14)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 15)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 16)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 17)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 18)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 19)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 20)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 21)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 22)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 23)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 24)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 25)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 26)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 27)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 28)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 29)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 30)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 31)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 32)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 33)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 34)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 35)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 36)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 37)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 38)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 39)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 40)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 41)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 42)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 43)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 44)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 45)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 46)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 47)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 48)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 49)) 32))
     (= (to_rep (select (temp___String_Literal_135 us_void_param) 50)) 32)) :pattern (
  (temp___String_Literal_135 us_void_param)) )))

(declare-sort yearst 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 1901 x) (<= x 2099)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq8 (yearst yearst) Bool)

(declare-fun dummy8 () yearst)

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
  (forall ((x yearst)) (! (in_range8 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range8 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort monthst 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 1 x) (<= x 12)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq9 (monthst monthst) Bool)

(declare-fun dummy9 () monthst)

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
  (forall ((x monthst)) (! (in_range9 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range9 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-sort dayst 0)

(define-fun in_range10 ((x Int)) Bool (and (<= 1 x) (<= x 31)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)

(declare-fun user_eq10 (dayst dayst) Bool)

(declare-fun dummy10 () dayst)

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
  (forall ((x dayst)) (! (in_range10 (to_rep4 x)) :pattern ((to_rep4 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range10 x) (= (to_rep4 (of_rep4 x)) x)) :pattern ((to_rep4
                                                               (of_rep4 x))) )))

(declare-sort millisecst 0)

(define-fun in_range11 ((x Int)) Bool (and (<= 0 x) (<= x 86399999)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE11 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check11 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE11 (us_image) Int)

(declare-fun user_eq11 (millisecst millisecst) Bool)

(declare-fun dummy11 () millisecst)

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
  (forall ((x millisecst)) (! (in_range11
  (to_rep5 x)) :pattern ((to_rep5 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range11 x) (= (to_rep5 (of_rep5 x)) x)) :pattern ((to_rep5
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
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq13 ((a us_rep)
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

(declare-fun user_eq12 (us_rep us_rep) Bool)

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

(declare-fun dummy12 () us_rep)

(declare-datatypes () ((timet__ref (mk_timet__ref (timet__content us_rep)))))
(define-fun timet__ref___projection ((a timet__ref)) us_rep (timet__content
                                                            a))

(declare-fun thecurrenttime (us_private) us_rep)

(declare-fun thecurrenttime__function_guard (us_rep us_private) Bool)

;; thecurrenttime__post_axiom
  (assert true)

(declare-fun greaterthanorequal (us_rep us_rep) Bool)

(declare-fun greaterthanorequal__function_guard (Bool us_rep us_rep) Bool)

;; greaterthanorequal__post_axiom
  (assert true)

(declare-fun valid_numberlogentries (us_private) Bool)

(declare-fun valid_numberlogentries__function_guard (Bool us_private) Bool)

(declare-fun islocked (us_private) Bool)

(declare-fun islocked__function_guard (Bool us_private) Bool)

;; islocked__post_axiom
  (assert true)

(declare-sort t1 0)

(define-fun in_range12 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq14 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE12 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check12 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE12 (us_image) Int)

(declare-fun user_eq13 (t1 t1) Bool)

(declare-fun dummy13 () t1)

(declare-datatypes () ((t__ref (mk_t__ref (t__content t1)))))
(define-fun t__ref_3__projection ((a t__ref)) t1 (t__content a))

(define-fun dynamic_invariant3 ((temp___expr_855 Int)
  (temp___is_init_852 Bool) (temp___skip_constant_853 Bool)
  (temp___do_toplevel_854 Bool)) Bool (=>
                                      (or (= temp___is_init_852 true)
                                      (<= 0 1)) (in_range12 temp___expr_855)))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

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

(define-fun dynamic_invariant6 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(define-fun dynamic_invariant7 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

;; valid_numberlogentries__post_axiom
  (assert true)

(define-fun dynamic_invariant8 ((temp___expr_170 Int)
  (temp___is_init_167 Bool) (temp___skip_constant_168 Bool)
  (temp___do_toplevel_169 Bool)) Bool (=>
                                      (or (= temp___is_init_167 true)
                                      (<= 1 150)) (in_range7
                                      temp___expr_170)))

;; nodescription__def_axiom
  (assert (= nodescription (audittypes__nodescription__aggregate_def 32)))

;; nouser__def_axiom
  (assert (= nouser (temp___String_Literal_135 Tuple0)))

(define-fun dynamic_invariant9 ((temp___expr_236 Int)
  (temp___is_init_233 Bool) (temp___skip_constant_234 Bool)
  (temp___do_toplevel_235 Bool)) Bool (=>
                                      (or (= temp___is_init_233 true)
                                      (<= 1901 2099)) (in_range8
                                      temp___expr_236)))

(define-fun dynamic_invariant10 ((temp___expr_242 Int)
  (temp___is_init_239 Bool) (temp___skip_constant_240 Bool)
  (temp___do_toplevel_241 Bool)) Bool (=>
                                      (or (= temp___is_init_239 true)
                                      (<= 1 12)) (in_range9 temp___expr_242)))

(define-fun dynamic_invariant11 ((temp___expr_248 Int)
  (temp___is_init_245 Bool) (temp___skip_constant_246 Bool)
  (temp___do_toplevel_247 Bool)) Bool (=>
                                      (or (= temp___is_init_245 true)
                                      (<= 1 31)) (in_range10
                                      temp___expr_248)))

(define-fun dynamic_invariant12 ((temp___expr_272 Int)
  (temp___is_init_269 Bool) (temp___skip_constant_270 Bool)
  (temp___do_toplevel_271 Bool)) Bool (=>
                                      (or (= temp___is_init_269 true)
                                      (<= 0 86399999)) (in_range11
                                      temp___expr_272)))

(declare-fun currenttime () us_private)

(declare-fun state () us_private)

(declare-fun state1 () us_private)

(declare-fun currentdoor () Int)

(declare-fun dooralarm () Int)

(declare-fun alarmtimeout__split_fields () yearst)

(declare-fun alarmtimeout__split_fields1 () monthst)

(declare-fun alarmtimeout__split_fields2 () dayst)

(declare-fun alarmtimeout__split_fields3 () millisecst)

(declare-fun localalarm () Int)

(declare-fun severity () Int)

(declare-fun id () Int)

(declare-fun o () Bool)

(declare-fun o1 () yearst)

(declare-fun o2 () monthst)

(declare-fun o3 () dayst)

(declare-fun o4 () millisecst)

(declare-fun o5 () Bool)

(declare-fun o6 () Bool)

(declare-fun result () Bool)

(declare-fun result1 () Int)

(declare-fun localalarm1 () Int)

(declare-fun result2 () Int)

(declare-fun severity1 () Int)

(declare-fun result3 () Int)

(declare-fun id1 () Int)

(declare-fun result4 () Int)

(declare-fun localalarm2 () Int)

(declare-fun result5 () Int)

(declare-fun severity2 () Int)

(declare-fun result6 () Int)

(declare-fun id2 () Int)

(define-fun o7 () us_rep (mk___rep (mk___split_fields o1 o2 o3 o4)))

(define-fun id3 () int__ref (mk_int__ref id))

(define-fun severity3 () int__ref (mk_int__ref severity))

(define-fun localalarm3 () int__ref (mk_int__ref localalarm))

;; H
  (assert (= (audittypes__nodescription__aggregate_def 32) nodescription))

;; H
  (assert (= (temp___String_Literal_135 Tuple0) nouser))

;; H
  (assert (in_range12 currentdoor))

;; H
  (assert (in_range4 dooralarm))

;; H
  (assert (=> (<= 0 1) (in_range4 localalarm)))

;; H
  (assert (=> (<= 0 2) (in_range6 severity)))

;; H
  (assert (=> (<= 0 43) (in_range5 id)))

;; H
  (assert
  (and (= o7 (thecurrenttime currenttime)) (thecurrenttime__function_guard 
  o7 currenttime)))

;; H
  (assert
  (and
  (= o5 (greaterthanorequal o7
        (mk___rep
        (mk___split_fields alarmtimeout__split_fields
        alarmtimeout__split_fields1 alarmtimeout__split_fields2
        alarmtimeout__split_fields3))))
  (greaterthanorequal__function_guard o5 o7
  (mk___rep
  (mk___split_fields alarmtimeout__split_fields alarmtimeout__split_fields1
  alarmtimeout__split_fields2 alarmtimeout__split_fields3)))))

;; H
  (assert (and (= o (islocked state1)) (islocked__function_guard o state1)))

;; H
  (assert (= o6 (ite (= currentdoor 0) o false)))

;; H
  (assert (= result (ite (= o6 true) o5 false)))

;; H
  (assert (=> (= result true) (= (mk_int__ref result1) localalarm3)))

;; H
  (assert (=> (= result true) (= localalarm1 0)))

;; H
  (assert (=> (= result true) (= (mk_int__ref result2) severity3)))

;; H
  (assert (=> (= result true) (= severity1 2)))

;; H
  (assert (=> (= result true) (= (mk_int__ref result3) id3)))

;; H
  (assert (=> (= result true) (= id1 10)))

;; H
  (assert (=> (not (= result true)) (= (mk_int__ref result4) localalarm3)))

;; H
  (assert (=> (not (= result true)) (= localalarm2 1)))

;; H
  (assert (=> (not (= result true)) (= (mk_int__ref result5) severity3)))

;; H
  (assert (=> (not (= result true)) (= severity2 0)))

;; H
  (assert (=> (not (= result true)) (= (mk_int__ref result6) id3)))

;; H
  (assert (=> (not (= result true)) (= id2 11)))

;; H
  (assert (=> (not (= result true)) (= id1 id2)))

;; H
  (assert (=> (not (= result true)) (= severity1 severity2)))

;; H
  (assert (=> (not (= result true)) (= localalarm1 localalarm2)))

;; H
  (assert (not (= dooralarm localalarm1)))

;; H
  (assert (valid_numberlogentries__function_guard
  (valid_numberlogentries state) state))

(assert
;; WP_parameter_def
 ;; File "door.adb", line 412, characters 0-0
  (not (= (valid_numberlogentries state) true)))
(check-sat)
