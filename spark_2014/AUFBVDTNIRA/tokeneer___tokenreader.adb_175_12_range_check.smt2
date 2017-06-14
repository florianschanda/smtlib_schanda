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

(define-fun dynamic_invariant ((temp___expr_82 us_t) (temp___is_init_79 Bool)
  (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(declare-sort unsigned32t 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 4294967295)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (unsigned32t unsigned32t) Bool)

(declare-fun dummy4 () unsigned32t)

(declare-datatypes ()
((unsigned32t__ref (mk_unsigned32t__ref (unsigned32t__content unsigned32t)))))
(define-fun unsigned32t__ref___projection ((a unsigned32t__ref)) unsigned32t 
  (unsigned32t__content a))

(define-fun dynamic_invariant1 ((temp___expr_179 Int)
  (temp___is_init_176 Bool) (temp___skip_constant_177 Bool)
  (temp___do_toplevel_178 Bool)) Bool (=>
                                      (or (= temp___is_init_176 true)
                                      (<= 0 4294967295)) (in_range3
                                      temp___expr_179)))

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

(declare-sort responsecodet 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 20)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (responsecodet responsecodet) Bool)

(declare-fun dummy6 () responsecodet)

(declare-datatypes ()
((responsecodet__ref
 (mk_responsecodet__ref (responsecodet__content responsecodet)))))
(define-fun responsecodet__ref___projection ((a responsecodet__ref)) responsecodet 
  (responsecodet__content a))

(define-fun dynamic_invariant2 ((temp___expr_1026 Int)
  (temp___is_init_1023 Bool) (temp___skip_constant_1024 Bool)
  (temp___do_toplevel_1025 Bool)) Bool (=>
                                       (or (= temp___is_init_1023 true)
                                       (<= 0 20)) (in_range5
                                       temp___expr_1026)))

(declare-fun text () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun responsecode () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun fullstring () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun temp___String_Literal_164 (tuple0) (Array Int character))

;; temp___String_Literal_164__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (= (to_rep (select (temp___String_Literal_164 us_void_param) 1)) 58)
     (= (to_rep (select (temp___String_Literal_164 us_void_param) 2)) 32)) :pattern (
  (temp___String_Literal_164 us_void_param)) )))

(declare-fun temp___String_Literal_168 (tuple0) (Array Int character))

;; temp___String_Literal_168__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (= (to_rep (select (temp___String_Literal_168 us_void_param) 1)) 32)
     (= (to_rep (select (temp___String_Literal_168 us_void_param) 2)) 40)) :pattern (
  (temp___String_Literal_168 us_void_param)) )))

(declare-fun temp___String_Literal_173 (tuple0) (Array Int character))

;; temp___String_Literal_173__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (= (to_rep (select (temp___String_Literal_173 us_void_param) 1)) 41) :pattern (
  (temp___String_Literal_173 us_void_param)) )))

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes () ((t16b__ref (mk_t16b__ref (t16b__content integer)))))
(define-fun t16b__ref___projection ((a t16b__ref)) integer (t16b__content a))

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

(define-fun bool_eq9 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first2 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first2 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq8 (us_t1 us_t1) Bool)

(declare-fun dummy8 () us_t1)

(declare-datatypes () ((t17b__ref (mk_t17b__ref (t17b__content us_t1)))))
(define-fun t17b__ref___projection ((a t17b__ref)) us_t1 (t17b__content a))

(declare-sort t19b 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 150)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq9 (t19b t19b) Bool)

(declare-fun dummy9 () t19b)

(declare-datatypes () ((t19b__ref (mk_t19b__ref (t19b__content t19b)))))
(define-fun t19b__ref___projection ((a t19b__ref)) t19b (t19b__content a))

(define-fun dynamic_invariant3 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range1
                                     temp___expr_39)))

(define-fun dynamic_invariant4 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range2 temp___expr_63)))

(define-fun dynamic_invariant5 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant6 ((temp___expr_383 Int)
  (temp___is_init_380 Bool) (temp___skip_constant_381 Bool)
  (temp___do_toplevel_382 Bool)) Bool (=>
                                      (or (= temp___is_init_380 true)
                                      (<= 1 150)) (in_range4
                                      temp___expr_383)))

(declare-fun thecodename () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun temp___1193 () (Array Int character))

(declare-fun temp___11931 () t)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () Int)

(declare-fun temp___1195 () (Array Int character))

(declare-fun temp___11951 () t)

(declare-fun o12 () Int)

(declare-fun o13 () Int)

(declare-fun o14 () Int)

(declare-fun o15 () Int)

(declare-fun o16 () Int)

(declare-fun o17 () Int)

(declare-fun temp___1197 () (Array Int character))

(declare-fun temp___11971 () t)

(declare-fun o18 () Int)

(declare-fun o19 () Int)

(declare-fun o20 () Int)

(declare-fun o21 () Int)

(declare-fun o22 () Int)

;; H
  (assert (in_range5 thecodename))

;; H
  (assert (dynamic_invariant text true false true))

;; H
  (assert (in_range3 responsecode))

;; H
  (assert
  (=> (= (length text) 0) (= (temp___String_Literal_164 Tuple0) temp___1193)))

;; H
  (assert (=> (= (length text) 0) (= (mk 1 2) temp___11931)))

;; H
  (assert (=> (not (= (length text) 0)) (=> (<= 1 2) (= o (+ (- 2 1) 1)))))

;; H
  (assert (=> (not (= (length text) 0)) (=> (not (<= 1 2)) (= o 0))))

;; H
  (assert
  (=> (not (= (length text) 0))
  (=> (<= (to_rep1 (first (rt text))) (to_rep1 (last (rt text))))
  (= o1 (+ (- (to_rep1 (last (rt text))) (to_rep1 (first (rt text)))) 1)))))

;; H
  (assert
  (=> (not (= (length text) 0))
  (=> (not (<= (to_rep1 (first (rt text))) (to_rep1 (last (rt text)))))
  (= o1 0))))

;; H
  (assert (=> (not (= (length text) 0)) (= o2 (+ o1 o))))

;; H
  (assert
  (=> (not (= (length text) 0)) (= o3 (+ (to_rep1 (first (rt text))) o2))))

;; H
  (assert (=> (not (= (length text) 0)) (= o4 (- o3 1))))

;; H
  (assert (=> (not (= (length text) 0)) (and (= o5 o4) (in_range1 o4))))

;; H
  (assert
  (=> (not (= (length text) 0))
  (= (concat1 (elts text) (to_rep1 (first (rt text)))
     (to_rep1 (last (rt text))) (temp___String_Literal_164 Tuple0) 1 2) 
  temp___1193)))

;; H
  (assert
  (=> (not (= (length text) 0))
  (= (mk (to_rep1 (first (rt text))) o5) temp___11931)))

;; H
  (assert
  (=> (= (length (mk___t temp___1193 temp___11931)) 0)
  (= (elts (to_string (attr__ATTRIBUTE_IMAGE5 thecodename))) temp___1195)))

;; H
  (assert
  (=> (= (length (mk___t temp___1193 temp___11931)) 0)
  (= (mk
     (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename)))))
     (to_rep1 (last (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename)))))) 
  temp___11951)))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (=>
  (<= (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename))))) 
  (to_rep1 (last (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename))))))
  (= o6 (+ (- (to_rep1
              (last (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename))))) 
  (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename)))))) 1)))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (=>
  (not
  (<= (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename))))) 
  (to_rep1 (last (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename)))))))
  (= o6 0))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (=> (<= (to_rep1 (first temp___11931)) (to_rep1 (last temp___11931)))
  (= o7 (+ (- (to_rep1 (last temp___11931)) (to_rep1 (first temp___11931))) 1)))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (=> (not (<= (to_rep1 (first temp___11931)) (to_rep1 (last temp___11931))))
  (= o7 0))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (= o8 (+ o7 o6))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (= o9 (+ (to_rep1 (first temp___11931)) o8))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (= o10 (- o9 1))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (and (= o11 o10) (in_range1 o10))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (= (concat1 temp___1193 (to_rep1 (first temp___11931))
     (to_rep1 (last temp___11931))
     (elts (to_string (attr__ATTRIBUTE_IMAGE5 thecodename)))
     (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename)))))
     (to_rep1 (last (rt (to_string (attr__ATTRIBUTE_IMAGE5 thecodename)))))) 
  temp___1195)))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1193 temp___11931)) 0))
  (= (mk (to_rep1 (first temp___11931)) o11) temp___11951)))

;; H
  (assert
  (=> (= (length (mk___t temp___1195 temp___11951)) 0)
  (= (temp___String_Literal_168 Tuple0) temp___1197)))

;; H
  (assert
  (=> (= (length (mk___t temp___1195 temp___11951)) 0)
  (= (mk 1 2) temp___11971)))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (=> (<= 1 2) (= o12 (+ (- 2 1) 1)))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (=> (not (<= 1 2)) (= o12 0))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (=> (<= (to_rep1 (first temp___11951)) (to_rep1 (last temp___11951)))
  (= o13 (+ (- (to_rep1 (last temp___11951)) (to_rep1 (first temp___11951))) 1)))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (=> (not (<= (to_rep1 (first temp___11951)) (to_rep1 (last temp___11951))))
  (= o13 0))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (= o14 (+ o13 o12))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (= o15 (+ (to_rep1 (first temp___11951)) o14))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (= o16 (- o15 1))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (and (= o17 o16) (in_range1 o16))))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (= (concat1 temp___1195 (to_rep1 (first temp___11951))
     (to_rep1 (last temp___11951)) (temp___String_Literal_168 Tuple0) 1 2) 
  temp___1197)))

;; H
  (assert
  (=> (not (= (length (mk___t temp___1195 temp___11951)) 0))
  (= (mk (to_rep1 (first temp___11951)) o17) temp___11971)))

;; H
  (assert (not (= (length (mk___t temp___1197 temp___11971)) 0)))

;; H
  (assert
  (=>
  (<= (to_rep1
      (first (rt (to_string (attr__ATTRIBUTE_IMAGE3 responsecode))))) 
  (to_rep1 (last (rt (to_string (attr__ATTRIBUTE_IMAGE3 responsecode))))))
  (= o18 (+ (- (to_rep1
               (last (rt (to_string (attr__ATTRIBUTE_IMAGE3 responsecode))))) 
  (to_rep1 (first (rt (to_string (attr__ATTRIBUTE_IMAGE3 responsecode)))))) 1))))

;; H
  (assert
  (=>
  (not
  (<= (to_rep1
      (first (rt (to_string (attr__ATTRIBUTE_IMAGE3 responsecode))))) 
  (to_rep1 (last (rt (to_string (attr__ATTRIBUTE_IMAGE3 responsecode)))))))
  (= o18 0)))

;; H
  (assert
  (=> (<= (to_rep1 (first temp___11971)) (to_rep1 (last temp___11971)))
  (= o19 (+ (- (to_rep1 (last temp___11971)) (to_rep1 (first temp___11971))) 1))))

;; H
  (assert
  (=> (not (<= (to_rep1 (first temp___11971)) (to_rep1 (last temp___11971))))
  (= o19 0)))

;; H
  (assert (= o20 (+ o19 o18)))

;; H
  (assert (= o21 (+ (to_rep1 (first temp___11971)) o20)))

;; H
  (assert (= o22 (- o21 1)))

(assert
;; WP_parameter_def
 ;; File "audittypes.ads", line 92, characters 0-0
  (not (in_range1 o22)))
(check-sat)
