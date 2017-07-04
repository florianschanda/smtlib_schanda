;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
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

(declare-fun pow2 (Int) Int)

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int1 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

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

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

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

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

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
  (forall ((x character)) (! (in_range4 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
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

(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
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
     (= (bool_eq a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq a a_first i b b_first j) true)
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
     (and (= (bool_eq a a_first j b b_first i) true)
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
  (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range2 f)
     (=> (in_range2 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range2 low)
                   (and (in_range2 high)
                   (=> (<= low high) (and (in_range3 low) (in_range3 high))))))

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

(define-fun bool_eq1 ((x us_t)
  (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x)))
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

(declare-sort float 0)

(declare-fun user_eq4 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Float32)

(declare-fun dummy4 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq2 (us_rep us_rep) Bool)

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
(define-fun file_type__ref_2__projection ((a file_type__ref)) us_rep 
  (file_type__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun status (us_rep) Int)

(declare-fun status__function_guard (Int us_rep) Bool)

(declare-sort file_status 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 10)))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (file_status file_status) Bool)

(declare-fun dummy6 () file_status)

(declare-datatypes ()
((file_status__ref (mk_file_status__ref (file_status__content file_status)))))
(define-fun file_status__ref_2__projection ((a file_status__ref)) file_status 
  (file_status__content a))

(define-fun dynamic_invariant1 ((temp___expr_538 Int)
  (temp___is_init_535 Bool) (temp___skip_constant_536 Bool)
  (temp___do_toplevel_537 Bool)) Bool (=>
                                      (or (= temp___is_init_535 true)
                                      (<= 0 10)) (in_range5 temp___expr_538)))

(declare-fun is_readable (us_rep) Bool)

(declare-fun is_readable__function_guard (Bool us_rep) Bool)

(declare-fun is_writable (us_rep) Bool)

(declare-fun is_writable__function_guard (Bool us_rep) Bool)

(declare-fun is_open (us_rep) Bool)

(declare-fun is_open__function_guard (Bool us_rep) Bool)

(declare-fun mode__2 (us_rep) Int)

(declare-fun mode__2__function_guard (Int us_rep) Bool)

;; is_writable__def_axiom
  (assert
  (forall ((file us_rep))
  (! (= (= (is_writable file) true)
     (and (= (is_open file) true)
     (or (= (mode__2 file) 1) (= (mode__2 file) 2)))) :pattern ((is_writable
                                                                file)) )))

(declare-fun is_standard_output (us_rep) Bool)

(declare-fun is_standard_output__function_guard (Bool us_rep) Bool)

(declare-fun name (us_rep) us_t)

(declare-fun name__function_guard (us_t us_rep) Bool)

(declare-fun form (us_rep) us_t)

(declare-fun form__function_guard (us_t us_rep) Bool)

(declare-fun line_length__2 (us_rep) Int)

(declare-fun line_length__2__function_guard (Int us_rep) Bool)

(declare-fun page_length__2 (us_rep) Int)

(declare-fun page_length__2__function_guard (Int us_rep) Bool)

(declare-fun is_standard_file (us_rep) Bool)

(declare-fun is_standard_file__function_guard (Bool us_rep) Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-sort t2b 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (t2b t2b) Bool)

(declare-fun dummy7 () t2b)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content t2b)))))
(define-fun t2b__ref___projection ((a t2b__ref)) t2b (t2b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun temp___String_Literal_845 (tuple0) (Array Int character))

;; temp___String_Literal_845__def_axiom
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
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 1)) 69)
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 2)) 114))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 3)) 114))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 4)) 111))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 5)) 114))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 6)) 32))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 7)) 111))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 8)) 110))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 10)) 83))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 11)) 116))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 12)) 97))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 13)) 110))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 14)) 100))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 15)) 97))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 16)) 114))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 17)) 100))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 18)) 95))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 19)) 79))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 20)) 117))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 21)) 116))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 22)) 112))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 23)) 117))
     (= (to_rep (select (temp___String_Literal_845 us_void_param) 24)) 116)) :pattern (
  (temp___String_Literal_845 us_void_param)) )))

(declare-fun temp___String_Literal_846 (tuple0) (Array Int character))

;; temp___String_Literal_846__def_axiom
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
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 1)) 84)
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 2)) 104))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 3)) 101))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 4)) 32))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 5)) 110))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 6)) 117))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 7)) 109))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 8)) 98))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 9)) 101))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 10)) 114))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 11)) 32))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 12)) 105))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 13)) 115))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 14)) 58))
     (= (to_rep (select (temp___String_Literal_846 us_void_param) 15)) 32)) :pattern (
  (temp___String_Literal_846 us_void_param)) )))

(declare-fun temp___String_Literal_847 (tuple0) (Array Int character))

;; temp___String_Literal_847__def_axiom
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
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 1)) 69)
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 2)) 114))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 3)) 114))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 4)) 111))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 5)) 114))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 6)) 32))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 7)) 111))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 8)) 110))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 10)) 83))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 11)) 116))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 12)) 97))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 13)) 110))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 14)) 100))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 15)) 97))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 16)) 114))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 17)) 100))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 18)) 95))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 19)) 79))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 20)) 117))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 21)) 116))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 22)) 112))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 23)) 117))
     (= (to_rep (select (temp___String_Literal_847 us_void_param) 24)) 116)) :pattern (
  (temp___String_Literal_847 us_void_param)) )))

(declare-fun temp___String_Literal_848 (tuple0) (Array Int character))

;; temp___String_Literal_848__def_axiom
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
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 1)) 69)
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 2)) 114))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 3)) 114))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 4)) 111))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 5)) 114))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 6)) 32))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 7)) 111))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 8)) 110))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 10)) 83))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 11)) 116))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 12)) 97))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 13)) 110))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 14)) 100))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 15)) 97))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 16)) 114))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 17)) 100))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 18)) 95))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 19)) 79))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 20)) 117))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 21)) 116))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 22)) 112))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 23)) 117))
     (= (to_rep (select (temp___String_Literal_848 us_void_param) 24)) 116)) :pattern (
  (temp___String_Literal_848 us_void_param)) )))

(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(define-fun dynamic_invariant3 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range4 temp___expr_63)))

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
                                     (in_range2 temp___expr_15)))

(declare-sort file_mode 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (file_mode file_mode) Bool)

(declare-fun dummy8 () file_mode)

(declare-datatypes ()
((file_mode__ref (mk_file_mode__ref (file_mode__content file_mode)))))
(define-fun file_mode__ref_3__projection ((a file_mode__ref)) file_mode 
  (file_mode__content a))

(define-fun dynamic_invariant6 ((temp___expr_550 Int)
  (temp___is_init_547 Bool) (temp___skip_constant_548 Bool)
  (temp___do_toplevel_549 Bool)) Bool (=>
                                      (or (= temp___is_init_547 true)
                                      (<= 0 2)) (in_range7 temp___expr_550)))

(declare-sort count 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (count count) Bool)

(declare-fun dummy9 () count)

(declare-datatypes () ((count__ref (mk_count__ref (count__content count)))))
(define-fun count__ref_2__projection ((a count__ref)) count (count__content
                                                            a))

(define-fun dynamic_invariant7 ((temp___expr_556 Int)
  (temp___is_init_553 Bool) (temp___skip_constant_554 Bool)
  (temp___do_toplevel_555 Bool)) Bool (=>
                                      (or (= temp___is_init_553 true)
                                      (<= 0 2147483647)) (in_range8
                                      temp___expr_556)))

(declare-fun is_standard_input (us_rep) Bool)

(declare-fun is_standard_input__function_guard (Bool us_rep) Bool)

(declare-fun is_standard_error (us_rep) Bool)

(declare-fun is_standard_error__function_guard (Bool us_rep) Bool)

;; is_standard_file__def_axiom
  (assert
  (forall ((file us_rep))
  (! (= (= (is_standard_file file) true)
     (or
     (or (= (is_standard_input file) true)
     (= (is_standard_output file) true)) (= (is_standard_error file) true))) :pattern (
  (is_standard_file file)) )))

;; is_readable__def_axiom
  (assert
  (forall ((file us_rep))
  (! (= (= (is_readable file) true)
     (and (= (is_open file) true) (= (mode__2 file) 0))) :pattern ((is_readable
                                                                   file)) )))

(declare-fun standard_input () us_rep)

(declare-fun standard_output () us_rep)

(declare-fun standard_error () us_rep)

(declare-fun f () Float32)

(declare-fun i () Int)

(declare-fun o () Int)

(declare-fun o1 () Bool)

(declare-fun o2 () Int)

(declare-fun o3 () Bool)

(declare-fun o4 () Int)

(declare-fun o5 () Bool)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () Float32)

(declare-fun f1 () Float32)

(declare-fun standard_output1 () us_rep)

(declare-fun standard_error1 () us_rep)

(declare-fun f2 () Float32)

(declare-fun i2 () Int)

(declare-fun result2 () Bool)

(declare-fun standard_error2 () us_rep)

(declare-fun standard_output2 () us_rep)

(declare-fun result3 () Bool)

(declare-fun standard_error3 () us_rep)

(declare-fun standard_output3 () us_rep)

(declare-fun result4 () Bool)

;; H
  (assert
  (and
  (and
  (and
  (and
  (and (= (is_readable standard_input) true)
  (= (is_writable standard_output) true))
  (= (is_writable standard_error) true)) (= (status standard_input) 1))
  (= (status standard_output) 1)) (= (status standard_error) 1)))

;; H
  (assert
  (and (= (is_writable standard_error) true) (= (status standard_error) 1)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite f) (fp.isNaN f)))))

;; H
  (assert (= result i))

;; H
  (assert (= i1 1))

;; H
  (assert (<= 1 i1))

;; H
  (assert (<= i1 10))

;; H
  (assert (= result1 f))

;; H
  (assert
  (= f1 (fp.mul RNE (of_int RNE i1) (fp #b0 #b01111111 #b10000000000000000000000))))

;; H
  (assert
  (and (= (is_writable standard_error1) true) (= (status standard_error1) 1)))

;; H
  (assert
  (and
  (and
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite f2) (fp.isNaN f2)))) (=> (<= 1 10) (in_range6 i2)))
  (and (<= 1 i2) (<= i2 10))))

;; H
  (assert (and (= o (status standard_output1)) (in_range5 o)))

;; H
  (assert (= o1 (ite (= o 1) true false)))

;; H
  (assert (= result2 (ite (not (= o1 true)) true false)))

;; H
  (assert (not (= result2 true)))

;; H
  (assert (= standard_error2 standard_error1))

;; H
  (assert
  (and
  (and
  (and
  (and
  (and
  (and (= (is_open standard_output2) true) (= (mode__2 standard_output2) 1))
  (= (let ((temp___782 (name standard_output1)))
     (let ((temp___781 (name standard_output2)))
     (bool_eq (elts temp___781) (to_rep1 (first (rt temp___781)))
     (to_rep1 (last (rt temp___781))) (elts temp___782)
     (to_rep1 (first (rt temp___782))) (to_rep1 (last (rt temp___782)))))) true))
  (= (let ((temp___784 (form standard_output1)))
     (let ((temp___783 (form standard_output2)))
     (bool_eq (elts temp___783) (to_rep1 (first (rt temp___783)))
     (to_rep1 (last (rt temp___783))) (elts temp___784)
     (to_rep1 (first (rt temp___784))) (to_rep1 (last (rt temp___784)))))) true))
  (= (line_length__2 standard_output2) (line_length__2 standard_output1)))
  (= (page_length__2 standard_output2) (page_length__2 standard_output1)))
  (= (is_standard_output standard_output2) true)))

;; H
  (assert (and (= o2 (status standard_output2)) (in_range5 o2)))

;; H
  (assert (= o3 (ite (= o2 1) true false)))

;; H
  (assert (= result3 (ite (not (= o3 true)) true false)))

;; H
  (assert (not (= result3 true)))

;; H
  (assert (= standard_error3 standard_error2))

;; H
  (assert
  (and
  (and
  (and
  (and
  (and
  (and (= (is_open standard_output3) true) (= (mode__2 standard_output3) 1))
  (= (let ((temp___838 (name standard_output2)))
     (let ((temp___837 (name standard_output3)))
     (bool_eq (elts temp___837) (to_rep1 (first (rt temp___837)))
     (to_rep1 (last (rt temp___837))) (elts temp___838)
     (to_rep1 (first (rt temp___838))) (to_rep1 (last (rt temp___838)))))) true))
  (= (let ((temp___840 (form standard_output2)))
     (let ((temp___839 (form standard_output3)))
     (bool_eq (elts temp___839) (to_rep1 (first (rt temp___839)))
     (to_rep1 (last (rt temp___839))) (elts temp___840)
     (to_rep1 (first (rt temp___840))) (to_rep1 (last (rt temp___840)))))) true))
  (= (line_length__2 standard_output3) (line_length__2 standard_output2)))
  (= (page_length__2 standard_output3) (page_length__2 standard_output2)))
  (= (is_standard_output standard_output3) true)))

;; H
  (assert (and (= o4 (status standard_output3)) (in_range5 o4)))

;; H
  (assert (= o5 (ite (= o4 1) true false)))

;; H
  (assert (= result4 (ite (not (= o5 true)) true false)))

;; H
  (assert (= result4 true))

(assert
;; WP_parameter_def
 ;; File "spark-text_io.ads", line 81, characters 0-0
  (not (= (is_writable standard_error3) true)))
(check-sat)
