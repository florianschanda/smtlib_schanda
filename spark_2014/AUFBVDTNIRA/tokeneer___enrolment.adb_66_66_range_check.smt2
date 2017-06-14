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

(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range1
                                     temp___expr_39)))

(define-fun dynamic_invariant1 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

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
  (forall ((temp___133 Int))
  (forall ((temp___134 Int))
  (= (select (audittypes__nodescription__aggregate_def temp___133) temp___134) 
  (of_rep temp___133)))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun detail () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun thedesc () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun temp___String_Literal_152 (tuple0) (Array Int character))

;; temp___String_Literal_152__def_axiom
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
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 1)) 69)
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 2)) 110))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 3)) 114))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 4)) 111))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 5)) 108))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 6)) 109))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 7)) 101))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 8)) 110))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 9)) 116))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 10)) 32))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 11)) 102))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 12)) 97))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 13)) 105))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 14)) 108))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 15)) 101))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 16)) 100))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 17)) 32))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 18)) 97))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 19)) 116))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 20)) 32))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 21)) 99))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 22)) 101))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 23)) 114))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 24)) 116))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 25)) 105))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 26)) 102))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 27)) 105))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 28)) 99))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 29)) 97))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 30)) 116))
     (= (to_rep (select (temp___String_Literal_152 us_void_param) 31)) 101)) :pattern (
  (temp___String_Literal_152 us_void_param)) )))

(declare-fun temp___String_Literal_155 (tuple0) (Array Int character))

;; temp___String_Literal_155__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 1)) 32)
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 2)) 45))
     (= (to_rep (select (temp___String_Literal_155 us_void_param) 3)) 32)) :pattern (
  (temp___String_Literal_155 us_void_param)) )))

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content integer)))))
(define-fun t4b__ref___projection ((a t4b__ref)) integer (t4b__content a))

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

(define-fun bool_eq7 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first2 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first2 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq6 (us_t1 us_t1) Bool)

(declare-fun dummy6 () us_t1)

(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content us_t1)))))
(define-fun t5b__ref___projection ((a t5b__ref)) us_t1 (t5b__content a))

(declare-sort t7b 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 150)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (t7b t7b) Bool)

(declare-fun dummy7 () t7b)

(declare-datatypes () ((t7b__ref (mk_t7b__ref (t7b__content t7b)))))
(define-fun t7b__ref___projection ((a t7b__ref)) t7b (t7b__content a))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range2 temp___expr_63)))

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_180 Int)
  (temp___is_init_177 Bool) (temp___skip_constant_178 Bool)
  (temp___do_toplevel_179 Bool)) Bool (=>
                                      (or (= temp___is_init_177 true)
                                      (<= 1 150)) (in_range3
                                      temp___expr_180)))

;; nodescription__def_axiom
  (assert (= nodescription (audittypes__nodescription__aggregate_def 32)))

(declare-fun certno () Int)

(declare-fun result__ () (Array Int character))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun result () (Array Int character))

(declare-fun result__1 () (Array Int character))

;; H
  (assert (= (audittypes__nodescription__aggregate_def 32) nodescription))

;; H
  (assert (in_range1 certno))

;; H
  (assert (dynamic_invariant1 detail true false true))

;; H
  (assert (= result result__))

;; H
  (assert (= result__1 nodescription))

;; H
  (assert
  (=>
  (<= (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE1 certno))))) 
  (to_rep1 (last (rt (to_string (attr__ATTRIBUTE_IMAGE1 certno))))))
  (= o (+ (- (to_rep1
             (last (rt (to_string (attr__ATTRIBUTE_IMAGE1 certno))))) 
  (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE1 certno)))))) 1))))

;; H
  (assert
  (=>
  (not
  (<= (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE1 certno))))) 
  (to_rep1 (last (rt (to_string (attr__ATTRIBUTE_IMAGE1 certno)))))))
  (= o 0)))

;; H
  (assert (=> (<= 1 31) (= o1 (+ (- 31 1) 1))))

;; H
  (assert (=> (not (<= 1 31)) (= o1 0)))

;; H
  (assert (= o2 (+ o1 o)))

;; H
  (assert (= o3 (+ 1 o2)))

;; H
  (assert (= o4 (- o3 1)))

(assert
;; WP_parameter_def
 ;; File "audittypes.ads", line 92, characters 0-0
  (not (in_range1 o4)))
(check-sat)
