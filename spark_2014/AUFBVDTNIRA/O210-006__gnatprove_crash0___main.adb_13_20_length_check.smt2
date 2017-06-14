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

(declare-sort positive 0)

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (positive positive) Bool)

(declare-fun dummy () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range
                                     temp___expr_39)))

(declare-fun to_rep (positive) Int)

(declare-fun of_rep (Int) positive)

;; inversion_axiom
  (assert
  (forall ((x positive))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x positive)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

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

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep1 (select a temp___idx_132)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep1 (select a temp___idx_132)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content integer)))))
(define-fun t3b__ref___projection ((a t3b__ref)) integer (t3b__content a))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last1 (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last1 (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property range_first range_last low)
                   (dynamic_property range_first range_last high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int integer))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))

(define-fun of_array ((a (Array Int integer)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last2 ((a us_t)) Int (to_rep1 (last1 (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last2 a))
                                  (+ (- (last2 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int integer)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int integer)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last1 (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last1 (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content us_t)))))
(define-fun t4b__ref___projection ((a t4b__ref)) us_t (t4b__content a))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__main__discr_type__discr positive)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) positive 
  (rec__main__discr_type__discr a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__main__discr_type__m_array us_t)))))
(define-fun us_split_fields_M_Array__projection ((a us_split_fields)) us_t 
  (rec__main__discr_type__m_array a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq5 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__main__discr_type__discr
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__main__discr_type__discr
                                                  (us_split_discrs1 b))))
                        (= (bool_eq4
                           (rec__main__discr_type__m_array
                           (us_split_fields1 a))
                           (rec__main__discr_type__m_array
                           (us_split_fields1 b))) true))
                   true false))

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun main__discr_type__discr__first__bit () Int)

(declare-fun main__discr_type__discr__last__bit () Int)

(declare-fun main__discr_type__discr__position () Int)

;; main__discr_type__discr__first__bit_axiom
  (assert (<= 0 main__discr_type__discr__first__bit))

;; main__discr_type__discr__last__bit_axiom
  (assert
  (< main__discr_type__discr__first__bit main__discr_type__discr__last__bit))

;; main__discr_type__discr__position_axiom
  (assert (<= 0 main__discr_type__discr__position))

(declare-fun main__discr_type__m_array__first__bit () Int)

(declare-fun main__discr_type__m_array__last__bit () Int)

(declare-fun main__discr_type__m_array__position () Int)

;; main__discr_type__m_array__first__bit_axiom
  (assert (<= 0 main__discr_type__m_array__first__bit))

;; main__discr_type__m_array__last__bit_axiom
  (assert
  (< main__discr_type__m_array__first__bit main__discr_type__m_array__last__bit))

;; main__discr_type__m_array__position_axiom
  (assert (<= 0 main__discr_type__m_array__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((discr_type__ref (mk_discr_type__ref (discr_type__content us_rep)))))
(define-fun discr_type__ref___projection ((a discr_type__ref)) us_rep 
  (discr_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_178 us_rep)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (let ((temp___179 (rec__main__discr_type__discr
                                                        (us_split_discrs1
                                                        temp___expr_178))))
                                      (and (dynamic_property1 0
                                      (to_rep temp___179)
                                      (first1
                                      (rec__main__discr_type__m_array
                                      (us_split_fields1 temp___expr_178)))
                                      (last2
                                      (rec__main__discr_type__m_array
                                      (us_split_fields1 temp___expr_178))))
                                      (and
                                      (= (first1
                                         (rec__main__discr_type__m_array
                                         (us_split_fields1 temp___expr_178))) 0)
                                      (= (last2
                                         (rec__main__discr_type__m_array
                                         (us_split_fields1 temp___expr_178))) 
                                      (to_rep temp___179))))))

(declare-fun d__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun r6b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun last3 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes ()
((tS5bP1__ref (mk_tS5bP1__ref (tS5bP1__content integer)))))
(define-fun tS5bP1__ref___projection ((a tS5bP1__ref)) integer (tS5bP1__content
                                                               a))

(declare-sort t1 0)

(declare-fun first2 (t1) integer)

(declare-fun last4 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first2 (mk1 f l))) f)
     (= (to_rep1 (last4 (mk1 f l))) l)))) :pattern ((mk1 f l)) )))

(define-fun dynamic_property3 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property2 range_first range_last low)
                   (dynamic_property2 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int integer))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int integer) (elts1 a))

(define-fun of_array1 ((a (Array Int integer)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first3 ((a us_t1)) Int (to_rep1 (first2 (rt1 a))))

(define-fun last5 ((a us_t1)) Int (to_rep1 (last4 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last5 a))
                                    (+ (- (last5 a) (first3 a)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int integer)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int integer)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment2 a))))

(define-fun bool_eq7 ((x us_t1)
  (y us_t1)) Bool (bool_eq2 (elts1 x) (to_rep1 (first2 (rt1 x)))
                  (to_rep1 (last4 (rt1 x))) (elts1 y)
                  (to_rep1 (first2 (rt1 y))) (to_rep1 (last4 (rt1 y)))))

(declare-fun user_eq6 (us_t1 us_t1) Bool)

(declare-fun dummy6 () us_t1)

(declare-datatypes () ((s5b__ref (mk_s5b__ref (s5b__content us_t1)))))
(define-fun s5b__ref___projection ((a s5b__ref)) us_t1 (s5b__content a))

(declare-fun last6 () Int)

(define-fun dynamic_property4 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq7 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes () ((t7b__ref (mk_t7b__ref (t7b__content integer)))))
(define-fun t7b__ref___projection ((a t7b__ref)) integer (t7b__content a))

(declare-sort t2 0)

(declare-fun first4 (t2) integer)

(declare-fun last7 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first4 (mk2 f l))) f)
     (= (to_rep1 (last7 (mk2 f l))) l)))) :pattern ((mk2 f l)) )))

(define-fun dynamic_property5 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property4 range_first range_last low)
                   (dynamic_property4 range_first range_last high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int integer))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int integer) (elts2 a))

(define-fun of_array2 ((a (Array Int integer)) (f Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f l)))

(define-fun first5 ((a us_t2)) Int (to_rep1 (first4 (rt2 a))))

(define-fun last8 ((a us_t2)) Int (to_rep1 (last7 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last8 a))
                                    (+ (- (last8 a) (first5 a)) 1) 0))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int integer)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int integer)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size3 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment3 a))))

(define-fun bool_eq9 ((x us_t2)
  (y us_t2)) Bool (bool_eq2 (elts2 x) (to_rep1 (first4 (rt2 x)))
                  (to_rep1 (last7 (rt2 x))) (elts2 y)
                  (to_rep1 (first4 (rt2 y))) (to_rep1 (last7 (rt2 y)))))

(declare-fun user_eq8 (us_t2 us_t2) Bool)

(declare-fun dummy8 () us_t2)

(declare-datatypes () ((t8b__ref (mk_t8b__ref (t8b__content us_t2)))))
(define-fun t8b__ref___projection ((a t8b__ref)) us_t2 (t8b__content a))

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq9 (natural natural) Bool)

(declare-fun dummy9 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-sort t3 0)

(declare-fun first6 (t3) integer)

(declare-fun last9 (t3) integer)

(declare-fun mk3 (Int Int) t3)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first6 (mk3 f l))) f)
     (= (to_rep1 (last9 (mk3 f l))) l)))) :pattern ((mk3 f l)) )))

(define-fun dynamic_property6 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes ()
((us_t3 (mk___t3 (elts3 (Array Int integer))(rt3 t3)))))
(define-fun to_array3 ((a us_t3)) (Array Int integer) (elts3 a))

(define-fun of_array3 ((a (Array Int integer)) (f Int)
  (l Int)) us_t3 (mk___t3 a (mk3 f l)))

(define-fun first7 ((a us_t3)) Int (to_rep1 (first6 (rt3 a))))

(define-fun last10 ((a us_t3)) Int (to_rep1 (last9 (rt3 a))))

(define-fun length3 ((a us_t3)) Int (ite (<= (first7 a) (last10 a))
                                    (+ (- (last10 a) (first7 a)) 1) 0))

(declare-fun value__size4 () Int)

(declare-fun object__size4 ((Array Int integer)) Int)

(declare-fun value__component__size3 () Int)

(declare-fun object__component__size3 ((Array Int integer)) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 ((Array Int integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__size4 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size3))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int integer))) (<= 0 (object__component__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a (Array Int integer))) (<= 0 (object__alignment4 a))))

(define-fun bool_eq11 ((x us_t3)
  (y us_t3)) Bool (bool_eq2 (elts3 x) (to_rep1 (first6 (rt3 x)))
                  (to_rep1 (last9 (rt3 x))) (elts3 y)
                  (to_rep1 (first6 (rt3 y))) (to_rep1 (last9 (rt3 y)))))

(declare-fun user_eq10 (us_t3 us_t3) Bool)

(declare-fun dummy10 () us_t3)

(declare-datatypes ()
((array_type__ref (mk_array_type__ref (array_type__content us_t3)))))
(define-fun array_type__ref___projection ((a array_type__ref)) us_t3 
  (array_type__content a))

(declare-fun temp___209 (Int Int Int) us_t2)

;; def_axiom
  (assert
  (forall ((temp___211 Int) (temp___212 Int) (temp___213 Int))
  (let ((temp___210 (temp___209 temp___211 temp___212 temp___213)))
  (and
  (=> (dynamic_property6 0 2147483647 temp___212 temp___213)
  (and (= (first5 temp___210) temp___212) (= (last8 temp___210) temp___213)))
  (forall ((temp___214 Int))
  (= (select (to_array2 temp___210) temp___214) (of_rep1 temp___211)))))))

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant3 ((temp___expr_186 us_t1)
  (temp___is_init_183 Bool) (temp___skip_constant_184 Bool)
  (temp___do_toplevel_185 Bool)) Bool (=>
                                      (not (= temp___skip_constant_184 true))
                                      (and (dynamic_property3 0 r6b
                                      (first3 temp___expr_186)
                                      (last5 temp___expr_186))
                                      (and (= (first3 temp___expr_186) 0)
                                      (= (last5 temp___expr_186) r6b)))))

(declare-fun d__split_fields () (Array Int integer))

(declare-fun d__split_fields1 () t)

(declare-fun temp___216 () (Array Int integer))

(declare-fun temp___2161 () t2)

;; H
  (assert (dynamic_invariant1
  (mk___rep d__split_discrs
  (mk___split_fields (mk___t d__split_fields d__split_fields1))) false false
  true))

;; H
  (assert (= (to_rep (rec__main__discr_type__discr d__split_discrs)) r6b))

;; H
  (assert (in_range r6b))

;; H
  (assert (= (to_rep1 (first4 (rt2 (temp___209 0 0 r6b)))) 0))

;; H
  (assert (= (to_rep1 (last7 (rt2 (temp___209 0 0 r6b)))) r6b))

;; H
  (assert (= (mk___t2 temp___216 temp___2161) (temp___209 0 0 r6b)))

(assert
;; WP_parameter_def
 ;; File "main.adb", line 1, characters 0-0
  (not
  (= (ite (<= (to_rep1 (first4 temp___2161)) (to_rep1 (last7 temp___2161)))
     (+ (- (to_rep1 (last7 temp___2161)) (to_rep1 (first4 temp___2161))) 1)
     0) (ite (<= 0 r6b) (+ (- r6b 0) 1) 0))))
(check-sat)
