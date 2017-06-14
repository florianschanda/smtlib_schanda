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

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant2 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(declare-fun change__first () integer)

(declare-fun change__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun new_val () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content integer)))))
(define-fun t3b__ref___projection ((a t3b__ref)) integer (t3b__content a))

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

(define-fun bool_eq7 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first3 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first3 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq6 (us_t1 us_t1) Bool)

(declare-fun dummy6 () us_t1)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content us_t1)))))
(define-fun t4b__ref___projection ((a t4b__ref)) us_t1 (t4b__content a))

(declare-fun r5b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun r8b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content integer)))))
(define-fun t6b__ref___projection ((a t6b__ref)) integer (t6b__content a))

(declare-sort t2 0)

(declare-fun first6 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first6 (mk2 f l))) f)
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

(define-fun first7 ((a us_t2)) Int (to_rep1 (first6 (rt2 a))))

(define-fun last7 ((a us_t2)) Int (to_rep1 (last6 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first7 a) (last7 a))
                                    (+ (- (last7 a) (first7 a)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int character)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int character)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment2 a))))

(define-fun bool_eq9 ((x us_t2)
  (y us_t2)) Bool (bool_eq3 (elts2 x) (to_rep1 (first6 (rt2 x)))
                  (to_rep1 (last6 (rt2 x))) (elts2 y)
                  (to_rep1 (first6 (rt2 y))) (to_rep1 (last6 (rt2 y)))))

(declare-fun user_eq8 (us_t2 us_t2) Bool)

(declare-fun dummy8 () us_t2)

(declare-datatypes () ((t7b__ref (mk_t7b__ref (t7b__content us_t2)))))
(define-fun t7b__ref___projection ((a t7b__ref)) us_t2 (t7b__content a))

(declare-fun first8 () Int)

(declare-fun last8 () Int)

(define-fun dynamic_property5 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq9 (integer integer) Bool)

(declare-fun dummy9 () integer)

(declare-datatypes () ((t9b__ref (mk_t9b__ref (t9b__content integer)))))
(define-fun t9b__ref___projection ((a t9b__ref)) integer (t9b__content a))

(declare-sort t3 0)

(declare-fun first9 (t3) integer)

(declare-fun last9 (t3) integer)

(declare-fun mk3 (Int Int) t3)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first9 (mk3 f l))) f)
     (= (to_rep1 (last9 (mk3 f l))) l)))) :pattern ((mk3 f l)) )))

(define-fun dynamic_property6 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property5 range_first range_last low)
                   (dynamic_property5 range_first range_last high))))))

(declare-datatypes ()
((us_t3 (mk___t3 (elts3 (Array Int character))(rt3 t3)))))
(define-fun to_array3 ((a us_t3)) (Array Int character) (elts3 a))

(define-fun of_array3 ((a (Array Int character)) (f Int)
  (l Int)) us_t3 (mk___t3 a (mk3 f l)))

(define-fun first10 ((a us_t3)) Int (to_rep1 (first9 (rt3 a))))

(define-fun last10 ((a us_t3)) Int (to_rep1 (last9 (rt3 a))))

(define-fun length3 ((a us_t3)) Int (ite (<= (first10 a) (last10 a))
                                    (+ (- (last10 a) (first10 a)) 1) 0))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int character)) Int)

(declare-fun value__component__size3 () Int)

(declare-fun object__component__size3 ((Array Int character)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size3 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size3))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment3 a))))

(define-fun bool_eq11 ((x us_t3)
  (y us_t3)) Bool (bool_eq3 (elts3 x) (to_rep1 (first9 (rt3 x)))
                  (to_rep1 (last9 (rt3 x))) (elts3 y)
                  (to_rep1 (first9 (rt3 y))) (to_rep1 (last9 (rt3 y)))))

(declare-fun user_eq10 (us_t3 us_t3) Bool)

(declare-fun dummy10 () us_t3)

(declare-datatypes () ((t10b__ref (mk_t10b__ref (t10b__content us_t3)))))
(define-fun t10b__ref___projection ((a t10b__ref)) us_t3 (t10b__content a))

(declare-fun temp___258 (Int Int Int) us_t1)

;; def_axiom
  (assert
  (forall ((temp___260 Int) (temp___261 Int) (temp___262 Int))
  (let ((temp___259 (temp___258 temp___260 temp___261 temp___262)))
  (and
  (=> (dynamic_property 1 2147483647 temp___261 temp___262)
  (and (= (first4 temp___259) temp___261) (= (last4 temp___259) temp___262)))
  (forall ((temp___263 Int))
  (= (select (to_array1 temp___259) temp___263) (of_rep temp___260)))))))

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

(declare-fun change () (Array Int character))

(declare-fun len () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun temp___265 () (Array Int character))

(declare-fun temp___2651 () t1)

(declare-fun temp___266 () (Array Int character))

(declare-fun temp___2661 () t)

(declare-fun temp___267 () (Array Int character))

(declare-fun temp___2671 () t)

(declare-fun o5 () (Array Int character))

(declare-fun fixed_string__trim_string__R5b__assume () Int)

(declare-fun fixed_string__trim_string__R8b__assume () Int)

(declare-fun o6 () (Array Int character))

(declare-fun temp___269 () (Array Int character))

(declare-fun temp___2691 () t3)

(declare-fun temp___270 () (Array Int character))

(declare-fun temp___2701 () t2)

(declare-fun temp___273 () (Array Int character))

(declare-fun temp___2731 () t2)

(declare-fun o7 () (Array Int character))

(declare-fun i () Int)

(declare-fun o8 () Int)

(declare-fun o9 () Int)

(declare-fun o10 () character)

(declare-fun o11 () Int)

(declare-fun o12 () Bool)

(declare-fun result () Int)

(declare-fun len1 () Int)

(declare-fun result1 () (Array Int character))

(declare-fun change1 () (Array Int character))

(declare-fun result2 () (Array Int character))

(declare-fun change2 () (Array Int character))

(declare-fun change3 () (Array Int character))

(declare-fun len2 () Int)

(declare-fun change4 () (Array Int character))

(declare-fun len3 () Int)

;; H
  (assert (dynamic_property 1 2147483647 (to_rep1 change__first)
  (to_rep1 change__last)))

;; H
  (assert (dynamic_invariant2 new_val true false true))

;; H
  (assert (and (= o1 (length new_val)) (in_range1 (length new_val))))

;; H
  (assert
  (=> (<= (to_rep1 change__first) (to_rep1 change__last))
  (= o (+ (- (to_rep1 change__last) (to_rep1 change__first)) 1))))

;; H
  (assert
  (=> (not (<= (to_rep1 change__first) (to_rep1 change__last))) (= o 0)))

;; H
  (assert (and (= o2 o) (in_range1 o)))

;; H
  (assert (= o3 (ite (< o2 o1) o2 o1)))

;; H
  (assert (and (= o4 o3) (in_range4 o3)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref len)))

;; H
  (assert (= len1 o4))

;; H
  (assert (in_range4 len1))

;; H
  (assert
  (= (to_rep1
     (first3
     (rt1 (temp___258 0 (to_rep1 change__first) (to_rep1 change__last))))) 
  (to_rep1 change__first)))

;; H
  (assert
  (= (to_rep1
     (last3
     (rt1 (temp___258 0 (to_rep1 change__first) (to_rep1 change__last))))) 
  (to_rep1 change__last)))

;; H
  (assert
  (= (mk___t1 temp___265 temp___2651) (temp___258 0 (to_rep1 change__first)
                                      (to_rep1 change__last))))

;; H
  (assert (= temp___265 temp___266))

;; H
  (assert
  (= (mk (to_rep1 (first3 temp___2651)) (to_rep1 (last3 temp___2651))) 
  temp___2661))

;; H
  (assert
  (= (ite (<= (to_rep1 (first temp___2661)) (to_rep1 (last temp___2661)))
     (+ (- (to_rep1 (last temp___2661)) (to_rep1 (first temp___2661))) 1) 0) 
  (ite (<= (to_rep1 change__first) (to_rep1 change__last))
  (+ (- (to_rep1 change__last) (to_rep1 change__first)) 1) 0)))

;; H
  (assert
  (= (mk___t temp___267 temp___2671) (mk___t temp___266 temp___2661)))

;; H
  (assert
  (= o5 (slide temp___267 (to_rep1 (first temp___2671))
        (to_rep1 change__first))))

;; H
  (assert (= (mk_map__ref result1) (mk_map__ref change)))

;; H
  (assert (= change1 o5))

;; H
  (assert
  (and
  (= fixed_string__trim_string__R5b__assume (+ (to_rep1 change__first) (- 
  len1 1))) (in_range1 (+ (to_rep1 change__first) (- len1 1)))))

;; H
  (assert (= fixed_string__trim_string__R5b__assume r5b))

;; H
  (assert (in_range1 r5b))

;; H
  (assert
  (and
  (= fixed_string__trim_string__R8b__assume (+ (to_rep1 (first (rt new_val))) (- 
  len1 1))) (in_range1 (+ (to_rep1 (first (rt new_val))) (- len1 1)))))

;; H
  (assert (= fixed_string__trim_string__R8b__assume r8b))

;; H
  (assert (in_range1 r8b))

;; H
  (assert
  (=> (<= (to_rep1 (first (rt new_val))) r8b)
  (and
  (and (<= (to_rep1 (first (rt new_val))) (to_rep1 (first (rt new_val))))
  (<= (to_rep1 (first (rt new_val))) (to_rep1 (last (rt new_val)))))
  (and (<= (to_rep1 (first (rt new_val))) r8b)
  (<= r8b (to_rep1 (last (rt new_val))))))))

;; H
  (assert (= o6 (elts new_val)))

;; H
  (assert (= o6 temp___269))

;; H
  (assert (= (mk3 (to_rep1 (first (rt new_val))) r8b) temp___2691))

;; H
  (assert
  (= (ite (<= (to_rep1 (first9 temp___2691)) (to_rep1 (last9 temp___2691)))
     (+ (- (to_rep1 (last9 temp___2691)) (to_rep1 (first9 temp___2691))) 1)
     0) (ite (<= (to_rep1 change__first) r5b)
        (+ (- r5b (to_rep1 change__first)) 1) 0)))

;; H
  (assert
  (= (slide temp___269 (to_rep1 (first9 temp___2691))
     (to_rep1 change__first)) temp___270))

;; H
  (assert (= (mk2 (to_rep1 change__first) r5b) temp___2701))

;; H
  (assert
  (= (ite (<= (to_rep1 (first6 temp___2701)) (to_rep1 (last6 temp___2701)))
     (+ (- (to_rep1 (last6 temp___2701)) (to_rep1 (first6 temp___2701))) 1)
     0) (ite (<= (to_rep1 (first6 (mk2 (to_rep1 change__first) r5b))) 
        (to_rep1 (last6 (mk2 (to_rep1 change__first) r5b))))
        (+ (- (to_rep1 (last6 (mk2 (to_rep1 change__first) r5b))) (to_rep1
                                                                  (first6
                                                                  (mk2
                                                                  (to_rep1
                                                                  change__first)
                                                                  r5b)))) 1)
        0)))

;; H
  (assert
  (= (mk___t2 temp___273 temp___2731) (mk___t2 temp___270 temp___2701)))

;; H
  (assert
  (forall ((temp___274 Int))
  (ite (and (<= (to_rep1 change__first) temp___274) (<= temp___274 r5b))
  (= (select o7 temp___274) (select temp___273 temp___274))
  (= (select o7 temp___274) (select change1 temp___274)))))

;; H
  (assert (= change1 result2))

;; H
  (assert (= change2 o7))

;; H
  (assert (= len1 len2))

;; H
  (assert (= change2 change3))

;; H
  (assert (= len3 len1))

;; H
  (assert (= change4 change2))

;; H
  (assert (<= (to_rep1 change__first) i))

;; H
  (assert (<= i (to_rep1 change__last)))

;; H
  (assert (and (<= (to_rep1 change__first) i) (<= i (to_rep1 change__last))))

;; H
  (assert (= o9 i))

;; H
  (assert (= o10 (select change3 o9)))

;; H
  (assert (= o11 (to_rep o10)))

;; H
  (assert (= o12 (ite (= o11 0) true false)))

;; H
  (assert (not (< (to_rep1 (first (rt new_val))) 0)))

;; H
  (assert
  (and (= o8 (- 2147483647 (to_rep1 (first (rt new_val))))) (in_range1
  (- 2147483647 (to_rep1 (first (rt new_val)))))))

(assert
;; WP_parameter_def
 ;; File "fixed_string.ads", line 31, characters 0-0
  (not (in_range1 (- i (to_rep1 change__first)))))
(check-sat)
