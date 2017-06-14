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

(declare-sort natural 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

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
                                     (<= 0 2147483647)) (in_range3
                                     temp___expr_33)))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range1
                                     temp___expr_39)))

(declare-fun max_length () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort tline_typeP1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (tline_typeP1 tline_typeP1) Bool)

(declare-fun dummy5 () tline_typeP1)

(declare-datatypes ()
((tline_typeP1__ref
 (mk_tline_typeP1__ref (tline_typeP1__content tline_typeP1)))))
(define-fun tline_typeP1__ref___projection ((a tline_typeP1__ref)) tline_typeP1 
  (tline_typeP1__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun r5b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content integer)))))
(define-fun t6b__ref___projection ((a t6b__ref)) integer (t6b__content a))

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

(define-fun bool_eq8 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first2 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first2 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq7 (us_t1 us_t1) Bool)

(declare-fun dummy7 () us_t1)

(declare-datatypes () ((t7b__ref (mk_t7b__ref (t7b__content us_t1)))))
(define-fun t7b__ref___projection ((a t7b__ref)) us_t1 (t7b__content a))

(declare-fun c9b () us_t1)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes () ((t15b__ref (mk_t15b__ref (t15b__content integer)))))
(define-fun t15b__ref___projection ((a t15b__ref)) integer (t15b__content a))

(declare-sort t2 0)

(declare-fun first4 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep1 (first4 (mk2 f l))) f)
     (= (to_rep1 (last6 (mk2 f l))) l)))) :pattern ((mk2 f l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
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

(define-fun bool_eq10 ((x us_t2)
  (y us_t2)) Bool (bool_eq3 (elts2 x) (to_rep1 (first4 (rt2 x)))
                  (to_rep1 (last6 (rt2 x))) (elts2 y)
                  (to_rep1 (first4 (rt2 y))) (to_rep1 (last6 (rt2 y)))))

(declare-fun user_eq9 (us_t2 us_t2) Bool)

(declare-fun dummy9 () us_t2)

(declare-datatypes () ((t16b__ref (mk_t16b__ref (t16b__content us_t2)))))
(define-fun t16b__ref___projection ((a t16b__ref)) us_t2 (t16b__content a))

(declare-fun last8 () Int)

(define-fun dynamic_property5 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq10 (integer integer) Bool)

(declare-fun dummy10 () integer)

(declare-datatypes () ((t17b__ref (mk_t17b__ref (t17b__content integer)))))
(define-fun t17b__ref___projection ((a t17b__ref)) integer (t17b__content a))

(declare-sort t3 0)

(declare-fun first6 (t3) integer)

(declare-fun last9 (t3) integer)

(declare-fun mk3 (Int Int) t3)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep1 (first6 (mk3 f l))) f)
     (= (to_rep1 (last9 (mk3 f l))) l)))) :pattern ((mk3 f l)) )))

(define-fun dynamic_property6 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property5 range_first range_last low)
                   (dynamic_property5 range_first range_last high))))))

(declare-datatypes ()
((us_t3 (mk___t3 (elts3 (Array Int character))(rt3 t3)))))
(define-fun to_array3 ((a us_t3)) (Array Int character) (elts3 a))

(define-fun of_array3 ((a (Array Int character)) (f Int)
  (l Int)) us_t3 (mk___t3 a (mk3 f l)))

(define-fun first7 ((a us_t3)) Int (to_rep1 (first6 (rt3 a))))

(define-fun last10 ((a us_t3)) Int (to_rep1 (last9 (rt3 a))))

(define-fun length3 ((a us_t3)) Int (ite (<= (first7 a) (last10 a))
                                    (+ (- (last10 a) (first7 a)) 1) 0))

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

(define-fun bool_eq12 ((x us_t3)
  (y us_t3)) Bool (bool_eq3 (elts3 x) (to_rep1 (first6 (rt3 x)))
                  (to_rep1 (last9 (rt3 x))) (elts3 y)
                  (to_rep1 (first6 (rt3 y))) (to_rep1 (last9 (rt3 y)))))

(declare-fun user_eq11 (us_t3 us_t3) Bool)

(declare-fun dummy11 () us_t3)

(declare-datatypes () ((t18b__ref (mk_t18b__ref (t18b__content us_t3)))))
(define-fun t18b__ref___projection ((a t18b__ref)) us_t3 (t18b__content a))

(declare-fun last11 () Int)

(define-fun dynamic_property7 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq13 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq12 (integer integer) Bool)

(declare-fun dummy12 () integer)

(declare-datatypes () ((t19b__ref (mk_t19b__ref (t19b__content integer)))))
(define-fun t19b__ref___projection ((a t19b__ref)) integer (t19b__content a))

(declare-sort t4 0)

(declare-fun first8 (t4) integer)

(declare-fun last12 (t4) integer)

(declare-fun mk4 (Int Int) t4)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep1 (first8 (mk4 f l))) f)
     (= (to_rep1 (last12 (mk4 f l))) l)))) :pattern ((mk4 f l)) )))

(define-fun dynamic_property8 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property7 range_first range_last low)
                   (dynamic_property7 range_first range_last high))))))

(declare-datatypes ()
((us_t4 (mk___t4 (elts4 (Array Int character))(rt4 t4)))))
(define-fun to_array4 ((a us_t4)) (Array Int character) (elts4 a))

(define-fun of_array4 ((a (Array Int character)) (f Int)
  (l Int)) us_t4 (mk___t4 a (mk4 f l)))

(define-fun first9 ((a us_t4)) Int (to_rep1 (first8 (rt4 a))))

(define-fun last13 ((a us_t4)) Int (to_rep1 (last12 (rt4 a))))

(define-fun length4 ((a us_t4)) Int (ite (<= (first9 a) (last13 a))
                                    (+ (- (last13 a) (first9 a)) 1) 0))

(declare-fun value__size4 () Int)

(declare-fun object__size4 ((Array Int character)) Int)

(declare-fun value__component__size4 () Int)

(declare-fun object__component__size4 ((Array Int character)) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size4 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size4))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size4 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment4 a))))

(define-fun bool_eq14 ((x us_t4)
  (y us_t4)) Bool (bool_eq3 (elts4 x) (to_rep1 (first8 (rt4 x)))
                  (to_rep1 (last12 (rt4 x))) (elts4 y)
                  (to_rep1 (first8 (rt4 y))) (to_rep1 (last12 (rt4 y)))))

(declare-fun user_eq13 (us_t4 us_t4) Bool)

(declare-fun dummy13 () us_t4)

(declare-datatypes () ((t20b__ref (mk_t20b__ref (t20b__content us_t4)))))
(define-fun t20b__ref___projection ((a t20b__ref)) us_t4 (t20b__content a))

(declare-fun temp___String_Literal_529 (tuple0) (Array Int character))

;; temp___String_Literal_529__def_axiom
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
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 1)) 69)
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 2)) 110))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 3)) 116))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 4)) 101))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 5)) 114))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 6)) 32))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 7)) 97))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 8)) 32))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 9)) 108))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 10)) 105))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 11)) 110))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 12)) 101))
     (= (to_rep (select (temp___String_Literal_529 us_void_param) 13)) 46)) :pattern (
  (temp___String_Literal_529 us_void_param)) )))

(declare-fun temp___String_Literal_540 (tuple0) (Array Int character))

;; temp___String_Literal_540__def_axiom
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
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 1)) 105)
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 2)) 115))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 3)) 32))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 4)) 110))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 5)) 111))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 6)) 116))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 7)) 32))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 8)) 97))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 9)) 32))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 10)) 112))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 11)) 97))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 12)) 108))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 13)) 105))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 14)) 110))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 15)) 100))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 16)) 114))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 17)) 111))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 18)) 109))
     (= (to_rep (select (temp___String_Literal_540 us_void_param) 19)) 101)) :pattern (
  (temp___String_Literal_540 us_void_param)) )))

(declare-fun temp___String_Literal_541 (tuple0) (Array Int character))

;; temp___String_Literal_541__def_axiom
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
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 1)) 105)
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 2)) 115))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 3)) 32))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 4)) 97))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 5)) 32))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 6)) 112))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 7)) 97))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 8)) 108))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 9)) 105))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 10)) 110))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 11)) 100))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 12)) 114))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 13)) 111))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 14)) 109))
     (= (to_rep (select (temp___String_Literal_541 us_void_param) 15)) 101)) :pattern (
  (temp___String_Literal_541 us_void_param)) )))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range2 temp___expr_63)))

(define-fun dynamic_invariant3 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

;; max_length__def_axiom
  (assert (= max_length 100))

(declare-fun line () (Array Int character))

(declare-fun count () Int)

(declare-fun left_index () Int)

(declare-fun right_index () Int)

(declare-fun o () integer)

(declare-fun o1 () integer)

(declare-fun o2 () (Array Int character))

(declare-fun palindrome__C9b__assume () (Array Int character))

(declare-fun palindrome__C9b__assume1 () t1)

(declare-fun o3 () (Array Int character))

(declare-fun o4 () (Array Int character))

(declare-fun o5 () t2)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () (Array Int character))

(declare-fun temp___537 () (Array Int character))

(declare-fun temp___5371 () t4)

(declare-fun count1 () Int)

(declare-fun ada__text_io__get_line__2__item () (Array Int character))

(declare-fun result () (Array Int character))

(declare-fun line1 () (Array Int character))

(declare-fun result1 () Int)

(declare-fun left_index1 () Int)

(declare-fun result2 () Int)

(declare-fun right_index1 () Int)

(declare-fun left_index2 () Int)

(declare-fun right_index2 () Int)

;; H
  (assert (in_range1 max_length))

;; H
  (assert (=> (<= 0 2147483647) (in_range3 count)))

;; H
  (assert (= (to_rep1 o1) 100))

;; H
  (assert (= (to_rep1 o) 1))

;; H
  (assert (in_range3 count1))

;; H
  (assert (= result line))

;; H
  (assert
  (= line1 (slide ada__text_io__get_line__2__item
           (to_rep1 (first (mk 1 100))) 1)))

;; H
  (assert (= count1 r5b))

;; H
  (assert (in_range3 r5b))

;; H
  (assert
  (=> (<= 1 r5b)
  (and (and (<= 1 1) (<= 1 100)) (and (<= 1 r5b) (<= r5b 100)))))

;; H
  (assert (= o2 line1))

;; H
  (assert (= o2 palindrome__C9b__assume))

;; H
  (assert (= (mk1 1 r5b) palindrome__C9b__assume1))

;; H
  (assert (= (mk___t1 palindrome__C9b__assume palindrome__C9b__assume1) 
  c9b))

;; H
  (assert
  (and (dynamic_property2 1 r5b (to_rep1 (first2 (rt1 c9b)))
  (to_rep1 (last3 (rt1 c9b))))
  (and (= (to_rep1 (first2 (rt1 c9b))) 1)
  (= (to_rep1 (last3 (rt1 c9b))) r5b))))

;; H
  (assert (=> (<= 0 2147483647) (in_range3 left_index)))

;; H
  (assert (=> (<= 0 2147483647) (in_range3 right_index)))

;; H
  (assert (= result1 left_index))

;; H
  (assert (= left_index1 1))

;; H
  (assert
  (=> (<= 1 r5b)
  (and (and (<= 1 1) (<= 1 100)) (and (<= 1 r5b) (<= r5b 100)))))

;; H
  (assert (= o3 line1))

;; H
  (assert (= o3 o4))

;; H
  (assert (= (mk2 1 r5b) o5))

;; H
  (assert (= o6 (to_rep1 (last6 o5))))

;; H
  (assert (and (= o7 o6) (in_range3 o6)))

;; H
  (assert (= result2 right_index))

;; H
  (assert (= right_index1 o7))

;; H
  (assert
  (and (=> (<= 0 2147483647) (in_range3 left_index2))
  (=> (<= 0 2147483647) (in_range3 right_index2))))

;; H
  (assert (not (<= right_index2 left_index2)))

;; H
  (assert
  (=> (<= 1 r5b)
  (and (and (<= 1 1) (<= 1 100)) (and (<= 1 r5b) (<= r5b 100)))))

;; H
  (assert (= o8 line1))

;; H
  (assert (= o8 temp___537))

;; H
  (assert (= (mk4 1 r5b) temp___5371))

(assert
;; WP_parameter_def
 ;; File "palindrome.adb", line 2, characters 0-0
  (not (<= (to_rep1 (first8 temp___5371)) left_index2)))
(check-sat)
