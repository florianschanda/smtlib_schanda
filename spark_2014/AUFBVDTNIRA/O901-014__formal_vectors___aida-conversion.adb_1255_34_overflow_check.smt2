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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant1 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(declare-fun is_digit (Int) Bool)

(declare-fun is_digit__function_guard (Bool Int) Bool)

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

;; is_digit__post_axiom
  (assert
  (forall ((c Int))
  (! (=> (dynamic_invariant2 c true true true)
     (let ((result (is_digit c)))
     (=> (is_digit__function_guard result c)
     (ite (= c 48) (= result true)
     (ite (= c 49) (= result true)
     (ite (= c 50) (= result true)
     (ite (= c 51) (= result true)
     (ite (= c 52) (= result true)
     (ite (= c 53) (= result true)
     (ite (= c 54) (= result true)
     (ite (= c 55) (= result true)
     (ite (= c 56) (= result true)
     (ite (= c 57) (= result true)
     (ite (< 57 c) (not (= result true)) (=> (< c 48) (not (= result true))))))))))))))))) :pattern (
  (is_digit c)) )))

(declare-fun convert_character_digit_to_integer (Int) Int)

(declare-fun convert_character_digit_to_integer__function_guard (Int
  Int) Bool)

;; convert_character_digit_to_integer__post_axiom
  (assert
  (forall ((source Int))
  (! (and (is_digit__function_guard (is_digit source) source)
     (=>
     (and (dynamic_invariant2 source true true true)
     (= (is_digit source) true))
     (let ((result (convert_character_digit_to_integer source)))
     (=> (convert_character_digit_to_integer__function_guard result source)
     (and
     (and (and (<= 0 result) (<= result 9))
     (ite (= source 48) (= result 0)
     (ite (= source 49) (= result 1)
     (ite (= source 50) (= result 2)
     (ite (= source 51) (= result 3)
     (ite (= source 52) (= result 4)
     (ite (= source 53) (= result 5)
     (ite (= source 54) (= result 6)
     (ite (= source 55) (= result 7)
     (ite (= source 56) (= result 8) (=> (= source 57) (= result 9))))))))))))
     (dynamic_invariant result true false true)))))) :pattern ((convert_character_digit_to_integer
                                                               source)) )))

(declare-fun source () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant3 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(declare-fun target () Int)

(declare-fun has_failed () Bool)

(declare-fun o () Int)

(declare-fun o1 () character)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () character)

(declare-fun o5 () Int)

(declare-fun temp___1170 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () character)

(declare-fun o8 () Int)

(declare-fun temp___1171 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () character)

(declare-fun o11 () Int)

(declare-fun temp___1172 () Int)

(declare-fun o12 () Int)

(declare-fun o13 () character)

(declare-fun o14 () Int)

(declare-fun temp___1173 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () character)

(declare-fun o17 () Int)

(declare-fun has_failed1 () Bool)

(declare-fun result () Int)

(declare-fun target1 () Int)

(declare-fun result1 () Bool)

(declare-fun has_failed2 () Bool)

(declare-fun result2 () Bool)

(declare-fun target2 () Int)

(declare-fun has_failed3 () Bool)

(declare-fun result3 () Bool)

(declare-fun has_failed4 () Bool)

(declare-fun result4 () Bool)

(declare-fun target3 () Int)

(declare-fun has_failed5 () Bool)

(declare-fun result5 () Bool)

(declare-fun has_failed6 () Bool)

(declare-fun result6 () Bool)

(declare-fun target4 () Int)

(declare-fun has_failed7 () Bool)

;; H
  (assert (dynamic_invariant1 source true false true))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 target)))

;; H
  (assert
  (forall ((index Int)) (is_digit__function_guard
  (is_digit (to_rep (select (elts source) index)))
  (to_rep (select (elts source) index)))))

;; H
  (assert
  (and
  (and
  (forall ((index Int))
  (=>
  (and (<= (to_rep1 (first (rt source))) index)
  (<= index (to_rep1 (last (rt source)))))
  (= (is_digit (to_rep (select (elts source) index))) true)))
  (<= 1 (length source))) (<= (length source) 10)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref target)))

;; H
  (assert (= target1 0))

;; H
  (assert (= (length source) 10))

;; H
  (assert
  (and (<= (to_rep1 (first (rt source))) (to_rep1 (first (rt source))))
  (<= (to_rep1 (first (rt source))) (to_rep1 (last (rt source))))))

;; H
  (assert (= o (to_rep1 (first (rt source)))))

;; H
  (assert (= o1 (select (elts source) o)))

;; H
  (assert (= o2 (to_rep o1)))

;; H
  (assert (= result1 (ite (< 50 o2) true false)))

;; H
  (assert (not (= result1 true)))

;; H
  (assert (= has_failed2 has_failed))

;; H
  (assert (= has_failed2 has_failed1))

;; H
  (assert
  (and (<= (to_rep1 (first (rt source))) (to_rep1 (first (rt source))))
  (<= (to_rep1 (first (rt source))) (to_rep1 (last (rt source))))))

;; H
  (assert (= o3 (to_rep1 (first (rt source)))))

;; H
  (assert (= o4 (select (elts source) o3)))

;; H
  (assert (= o5 (to_rep o4)))

;; H
  (assert (= result2 (ite (< o5 50) true false)))

;; H
  (assert (not (= result2 true)))

;; H
  (assert (= has_failed3 has_failed2))

;; H
  (assert (= target2 target1))

;; H
  (assert
  (and (= temp___1170 (+ (to_rep1 (first (rt source))) 1)) (in_range1
  (+ (to_rep1 (first (rt source))) 1))))

;; H
  (assert
  (and (<= (to_rep1 (first (rt source))) temp___1170)
  (<= temp___1170 (to_rep1 (last (rt source))))))

;; H
  (assert (= o6 temp___1170))

;; H
  (assert (= o7 (select (elts source) o6)))

;; H
  (assert (= o8 (to_rep o7)))

;; H
  (assert (= result3 (ite (< 49 o8) true false)))

;; H
  (assert (not (= result3 true)))

;; H
  (assert (= has_failed4 has_failed3))

;; H
  (assert
  (and (= temp___1171 (+ (to_rep1 (first (rt source))) 1)) (in_range1
  (+ (to_rep1 (first (rt source))) 1))))

;; H
  (assert
  (and (<= (to_rep1 (first (rt source))) temp___1171)
  (<= temp___1171 (to_rep1 (last (rt source))))))

;; H
  (assert (= o9 temp___1171))

;; H
  (assert (= o10 (select (elts source) o9)))

;; H
  (assert (= o11 (to_rep o10)))

;; H
  (assert (= result4 (ite (< o11 49) true false)))

;; H
  (assert (not (= result4 true)))

;; H
  (assert (= has_failed5 has_failed4))

;; H
  (assert (= target3 target2))

;; H
  (assert
  (and (= temp___1172 (+ (to_rep1 (first (rt source))) 2)) (in_range1
  (+ (to_rep1 (first (rt source))) 2))))

;; H
  (assert
  (and (<= (to_rep1 (first (rt source))) temp___1172)
  (<= temp___1172 (to_rep1 (last (rt source))))))

;; H
  (assert (= o12 temp___1172))

;; H
  (assert (= o13 (select (elts source) o12)))

;; H
  (assert (= o14 (to_rep o13)))

;; H
  (assert (= result5 (ite (< 52 o14) true false)))

;; H
  (assert (not (= result5 true)))

;; H
  (assert (= has_failed6 has_failed5))

;; H
  (assert
  (and (= temp___1173 (+ (to_rep1 (first (rt source))) 2)) (in_range1
  (+ (to_rep1 (first (rt source))) 2))))

;; H
  (assert
  (and (<= (to_rep1 (first (rt source))) temp___1173)
  (<= temp___1173 (to_rep1 (last (rt source))))))

;; H
  (assert (= o15 temp___1173))

;; H
  (assert (= o16 (select (elts source) o15)))

;; H
  (assert (= o17 (to_rep o16)))

;; H
  (assert (= result6 (ite (< o17 52) true false)))

;; H
  (assert (not (= result6 true)))

;; H
  (assert (= has_failed7 has_failed6))

;; H
  (assert (= target4 target3))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range1 (+ (to_rep1 (first (rt source))) 3))))
(check-sat)
