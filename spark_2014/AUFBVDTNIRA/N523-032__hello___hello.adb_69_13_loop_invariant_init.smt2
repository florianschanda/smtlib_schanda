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

(define-fun dynamic_invariant1 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(declare-fun to_lower (Int) Int)

(declare-fun to_lower__function_guard (Int Int) Bool)

;; to_lower__post_axiom
  (assert
  (forall ((item Int))
  (! (=> (dynamic_invariant1 item true true true) (dynamic_invariant1
     (to_lower item) true false true)) :pattern ((to_lower item)) )))

(declare-fun to_upper (Int) Int)

(declare-fun to_upper__function_guard (Int Int) Bool)

;; to_upper__post_axiom
  (assert
  (forall ((item Int))
  (! (=> (dynamic_invariant1 item true true true) (dynamic_invariant1
     (to_upper item) true false true)) :pattern ((to_upper item)) )))

(declare-fun to_caml_char2 (us_t us_t Int) Bool)

(declare-fun to_caml_char2__function_guard (Bool us_t us_t Int) Bool)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

;; to_caml_char2__post_axiom
  (assert true)

;; to_caml_char2__def_axiom
  (assert
  (forall ((str us_t) (res us_t))
  (forall ((last2 Int))
  (! (=> (to_caml_char2__function_guard (to_caml_char2 str res last2) str res
     last2)
     (= (= (to_caml_char2 str res last2) true)
     (forall ((j Int))
     (=> (and (<= (first1 str) j) (<= j last2))
     (ite (= j (first1 str))
     (= (to_rep (select (to_array res) j)) (to_upper
                                           (to_rep (select (to_array str) j))))
     (ite (and
          (= (not (and (ite (<= 97 (to_rep (select (to_array str) (- j 1))))
                       true false) (ite (<= (to_rep
                                            (select (to_array str) (- j 1))) 122)
                                   true false))) true)
          (= (not (and (ite (<= 65 (to_rep (select (to_array str) (- j 1))))
                       true false) (ite (<= (to_rep
                                            (select (to_array str) (- j 1))) 90)
                                   true false))) true))
     (= (to_rep (select (to_array res) j)) (to_upper
                                           (to_rep (select (to_array str) j))))
     (= (to_rep (select (to_array res) j)) (to_lower
                                           (to_rep (select (to_array str) j)))))))))) :pattern (
  (to_caml_char2 str res last2)) ))))

(declare-fun str () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes ()
((tTretSP1__ref (mk_tTretSP1__ref (tTretSP1__content integer)))))
(define-fun tTretSP1__ref___projection ((a tTretSP1__ref)) integer (tTretSP1__content
                                                                   a))

(declare-sort t1 0)

(declare-fun first3 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first3 (mk1 f l))) f)
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

(define-fun first4 ((a us_t1)) Int (to_rep1 (first3 (rt1 a))))

(define-fun last4 ((a us_t1)) Int (to_rep1 (last3 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first4 a) (last4 a))
                                    (+ (- (last4 a) (first4 a)) 1) 0))

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

(define-fun bool_eq6 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first3 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first3 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq5 (us_t1 us_t1) Bool)

(declare-fun dummy5 () us_t1)

(declare-datatypes () ((tretS__ref (mk_tretS__ref (tretS__content us_t1)))))
(define-fun tretS__ref___projection ((a tretS__ref)) us_t1 (tretS__content a))

(declare-fun ret__first () integer)

(declare-fun ret__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t9b__ref (mk_t9b__ref (t9b__content integer)))))
(define-fun t9b__ref___projection ((a t9b__ref)) integer (t9b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant3 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant4 ((temp___expr_570 us_t1)
  (temp___is_init_567 Bool) (temp___skip_constant_568 Bool)
  (temp___do_toplevel_569 Bool)) Bool (=>
                                      (not (= temp___skip_constant_568 true))
                                      (and (dynamic_property2 (first1 str)
                                      (last1 str) (first4 temp___expr_570)
                                      (last4 temp___expr_570))
                                      (and
                                      (= (first4 temp___expr_570) (first1
                                                                  str))
                                      (= (last4 temp___expr_570) (last1 str))))))

(declare-fun ret () (Array Int character))

(declare-fun to_up () Bool)

(declare-fun idx () Int)

(declare-fun hello__to_camel_case__ret__assume () (Array Int character))

(declare-fun hello__to_camel_case__ret__assume1 () t1)

(declare-fun o () Int)

(declare-fun o1 () character)

(declare-fun o2 () (Array Int character))

(declare-fun o3 () Int)

(declare-fun o4 () character)

(declare-fun o5 () (Array Int character))

(declare-fun result () (Array Int character))

(declare-fun ret1 () (Array Int character))

(declare-fun result1 () Bool)

(declare-fun to_up1 () Bool)

(declare-fun result2 () Int)

(declare-fun idx1 () Int)

(declare-fun result3 () (Array Int character))

(declare-fun ret2 () (Array Int character))

(declare-fun result4 () (Array Int character))

(declare-fun ret3 () (Array Int character))

;; H
  (assert (dynamic_invariant str true false true))

;; H
  (assert
  (= (slide (elts str) (to_rep1 (first (rt str))) (to_rep1 (first (rt str)))) 
  hello__to_camel_case__ret__assume))

;; H
  (assert
  (= (mk1 (to_rep1 (first (rt str))) (to_rep1 (last (rt str)))) hello__to_camel_case__ret__assume1))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref ret)))

;; H
  (assert (= ret1 hello__to_camel_case__ret__assume))

;; H
  (assert
  (= (to_rep1 ret__first) (to_rep1
                          (first3 hello__to_camel_case__ret__assume1))))

;; H
  (assert
  (= (to_rep1 ret__last) (to_rep1 (last3 hello__to_camel_case__ret__assume1))))

;; H
  (assert
  (and (dynamic_property2 (to_rep1 (first (rt str)))
  (to_rep1 (last (rt str))) (to_rep1 ret__first) (to_rep1 ret__last))
  (and (= (to_rep1 ret__first) (to_rep1 (first (rt str))))
  (= (to_rep1 ret__last) (to_rep1 (last (rt str)))))))

;; H
  (assert (= (mk_bool__ref result1) (mk_bool__ref to_up)))

;; H
  (assert (= to_up1 (of_int 1)))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref idx)))

;; H
  (assert (= idx1 (to_rep1 (first (rt str)))))

;; H
  (assert (<= (to_rep1 (first (rt str))) idx1))

;; H
  (assert (<= idx1 (to_rep1 (last (rt str)))))

;; H
  (assert
  (=> (= to_up1 true)
  (and (= o (to_upper (to_rep (select ret1 idx1)))) (in_range3 o))))

;; H
  (assert (=> (= to_up1 true) (= (to_rep o1) o)))

;; H
  (assert (=> (= to_up1 true) (= o2 (store ret1 idx1 o1))))

;; H
  (assert (=> (= to_up1 true) (= ret1 result3)))

;; H
  (assert (=> (= to_up1 true) (= ret2 o2)))

;; H
  (assert
  (=> (not (= to_up1 true))
  (and (= o3 (to_lower (to_rep (select ret1 idx1)))) (in_range3 o3))))

;; H
  (assert (=> (not (= to_up1 true)) (= (to_rep o4) o3)))

;; H
  (assert (=> (not (= to_up1 true)) (= o5 (store ret1 idx1 o4))))

;; H
  (assert (=> (not (= to_up1 true)) (= ret1 result4)))

;; H
  (assert (=> (not (= to_up1 true)) (= ret3 o5)))

;; H
  (assert (=> (not (= to_up1 true)) (= ret2 ret3)))

;; H
  (assert
  (and (<= (to_rep1 (first (rt str))) idx1)
  (<= idx1 (to_rep1 (last (rt str))))))

;; H
  (assert (and (<= (to_rep1 ret__first) idx1) (<= idx1 (to_rep1 ret__last))))

(declare-fun j () Int)

;; H
  (assert (<= idx1 j))

;; H
  (assert (<= j (to_rep1 (last (rt str)))))

;; H
  (assert (< idx1 j))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= (to_rep (select ret2 j)) (to_rep (select (elts str) j)))))
(check-sat)
