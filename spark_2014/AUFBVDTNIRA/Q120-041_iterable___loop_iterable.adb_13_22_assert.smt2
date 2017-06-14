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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort t5s 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (t5s t5s) Bool)

(declare-fun dummy1 () t5s)

(declare-datatypes () ((t5s__ref (mk_t5s__ref (t5s__content t5s)))))
(define-fun t5s__ref___projection ((a t5s__ref)) t5s (t5s__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int natural))))))
(declare-fun slide ((Array Int natural) Int Int) (Array Int natural))

;; slide_eq
  (assert
  (forall ((a (Array Int natural)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int natural)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int natural) Int Int (Array Int natural) Int
  Int) (Array Int natural))

;; concat_def
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (natural Int) (Array Int natural))

;; singleton_def
  (assert
  (forall ((v natural))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int natural)) (a__first Int) (a__last Int)
  (b (Array Int natural)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int natural) Int Int (Array Int natural) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy2 () (Array Int natural))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int natural)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int natural)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment a))))

(declare-fun user_eq2 ((Array Int natural) (Array Int natural)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__composite_cursors__cont1__content (Array Int natural))(rec__composite_cursors__cont1__length natural)))))
(define-fun us_split_fields_Content__projection ((a us_split_fields)) (Array Int natural) 
  (rec__composite_cursors__cont1__content a))

(define-fun us_split_fields_Length__projection ((a us_split_fields)) natural 
  (rec__composite_cursors__cont1__length a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (bool_eq2
                           (rec__composite_cursors__cont1__content
                           (us_split_fields1 a)) 1 100
                           (rec__composite_cursors__cont1__content
                           (us_split_fields1 b)) 1 100) true)
                        (= (to_rep
                           (rec__composite_cursors__cont1__length
                           (us_split_fields1 a))) (to_rep
                                                  (rec__composite_cursors__cont1__length
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

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

(declare-fun composite_cursors__cont1__content__first__bit () Int)

(declare-fun composite_cursors__cont1__content__last__bit () Int)

(declare-fun composite_cursors__cont1__content__position () Int)

;; composite_cursors__cont1__content__first__bit_axiom
  (assert (<= 0 composite_cursors__cont1__content__first__bit))

;; composite_cursors__cont1__content__last__bit_axiom
  (assert
  (< composite_cursors__cont1__content__first__bit composite_cursors__cont1__content__last__bit))

;; composite_cursors__cont1__content__position_axiom
  (assert (<= 0 composite_cursors__cont1__content__position))

(declare-fun composite_cursors__cont1__length__first__bit () Int)

(declare-fun composite_cursors__cont1__length__last__bit () Int)

(declare-fun composite_cursors__cont1__length__position () Int)

;; composite_cursors__cont1__length__first__bit_axiom
  (assert (<= 0 composite_cursors__cont1__length__first__bit))

;; composite_cursors__cont1__length__last__bit_axiom
  (assert
  (< composite_cursors__cont1__length__first__bit composite_cursors__cont1__length__last__bit))

;; composite_cursors__cont1__length__position_axiom
  (assert (<= 0 composite_cursors__cont1__length__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((cont1__ref (mk_cont1__ref (cont1__content us_rep)))))
(define-fun cont1__ref___projection ((a cont1__ref)) us_rep (cont1__content
                                                            a))

(define-fun dynamic_invariant ((temp___expr_150 us_rep)
  (temp___is_init_147 Bool) (temp___skip_constant_148 Bool)
  (temp___do_toplevel_149 Bool)) Bool (=> (= temp___do_toplevel_149 true)
                                      (=> (= temp___is_init_147 true)
                                      (<= (to_rep
                                          (rec__composite_cursors__cont1__length
                                          (us_split_fields1 temp___expr_150))) 100))))

(define-fun dynamic_predicate ((temp___159 us_rep)) Bool (<= (to_rep
                                                             (rec__composite_cursors__cont1__length
                                                             (us_split_fields1
                                                             temp___159))) 100))

(declare-fun first (us_rep) (Array Int natural))

(declare-fun first__function_guard ((Array Int natural) us_rep) Bool)

(declare-fun temp___164 (Int) (Array Int natural))

;; def_axiom
  (assert
  (forall ((temp___166 Int))
  (= (select (temp___164 temp___166) 1) (of_rep temp___166))))

;; first__post_axiom
  (assert true)

;; first__def_axiom
  (assert
  (forall ((c us_rep))
  (! (=>
     (and (dynamic_invariant c true true true) (first__function_guard
     (first c) c)) (= (first c) (temp___164 1))) :pattern ((first c)) )))

(declare-fun has_element (us_rep (Array Int natural)) Bool)

(declare-fun has_element__function_guard (Bool us_rep
  (Array Int natural)) Bool)

;; has_element__post_axiom
  (assert true)

;; has_element__def_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p (Array Int natural)))
  (! (=> (has_element__function_guard (has_element c p) c p)
     (= (= (has_element c p) true)
     (and (<= 1 (to_rep (select p 1)))
     (<= (to_rep (select p 1)) (to_rep
                               (rec__composite_cursors__cont1__length
                               (us_split_fields1 c))))))) :pattern ((has_element
                                                                    c p)) ))))

(declare-fun next (us_rep (Array Int natural)) (Array Int natural))

(declare-fun next__function_guard ((Array Int natural) us_rep
  (Array Int natural)) Bool)

(declare-fun temp___177 (Int) (Array Int natural))

;; def_axiom
  (assert
  (forall ((temp___179 Int))
  (= (select (temp___177 temp___179) 1) (of_rep temp___179))))

;; next__post_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p (Array Int natural))) (! (has_element__function_guard
  (has_element c p) c p) :pattern ((next c p)) ))))

;; next__def_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p (Array Int natural)))
  (! (=>
     (and (dynamic_invariant c true true true) (next__function_guard
     (next c p) c p))
     (= (next c p) (temp___177 (+ (to_rep (select p 1)) 1)))) :pattern (
  (next c p)) ))))

(declare-fun element (us_rep (Array Int natural)) Int)

(declare-fun element__function_guard (Int us_rep (Array Int natural)) Bool)

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

;; element__post_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p (Array Int natural)))
  (! (and (has_element__function_guard (has_element c p) c p)
     (=>
     (and (dynamic_invariant c true true true) (= (has_element c p) true))
     (let ((result (element c p)))
     (=> (element__function_guard result c p) (dynamic_invariant1 result true
     false true))))) :pattern ((element c p)) ))))

;; element__def_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p (Array Int natural)))
  (! (=>
     (and (dynamic_invariant c true true true) (element__function_guard
     (element c p) c p))
     (= (element c p) (to_rep
                      (let ((temp___194 (rec__composite_cursors__cont1__content
                                        (us_split_fields1 c))))
                      (select temp___194 (to_rep (select p 1))))))) :pattern (
  (element c p)) ))))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__composite_cursors__rec_cursor__content natural)))))
(define-fun us_split_fields_Content2__projection ((a us_split_fields2)) natural 
  (rec__composite_cursors__rec_cursor__content a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq4 ((a us_rep1)
  (b us_rep1)) Bool (ite (= (to_rep
                            (rec__composite_cursors__rec_cursor__content
                            (us_split_fields3 a))) (to_rep
                                                   (rec__composite_cursors__rec_cursor__content
                                                   (us_split_fields3 b))))
                    true false))

(declare-fun user_eq4 (us_rep1 us_rep1) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep1) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))

(declare-fun composite_cursors__rec_cursor__content__first__bit () Int)

(declare-fun composite_cursors__rec_cursor__content__last__bit () Int)

(declare-fun composite_cursors__rec_cursor__content__position () Int)

;; composite_cursors__rec_cursor__content__first__bit_axiom
  (assert (<= 0 composite_cursors__rec_cursor__content__first__bit))

;; composite_cursors__rec_cursor__content__last__bit_axiom
  (assert
  (< composite_cursors__rec_cursor__content__first__bit composite_cursors__rec_cursor__content__last__bit))

;; composite_cursors__rec_cursor__content__position_axiom
  (assert (<= 0 composite_cursors__rec_cursor__content__position))

(declare-fun dummy4 () us_rep1)

(declare-datatypes ()
((rec_cursor__ref (mk_rec_cursor__ref (rec_cursor__content us_rep1)))))
(define-fun rec_cursor__ref___projection ((a rec_cursor__ref)) us_rep1 
  (rec_cursor__content a))

(declare-sort t13s 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (t13s t13s) Bool)

(declare-fun dummy5 () t13s)

(declare-datatypes () ((t13s__ref (mk_t13s__ref (t13s__content t13s)))))
(define-fun t13s__ref___projection ((a t13s__ref)) t13s (t13s__content a))

(declare-fun dummy6 () (Array Int natural))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int natural)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int natural)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size3 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment3 a))))

(declare-fun user_eq6 ((Array Int natural) (Array Int natural)) Bool)

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2
 (rec__composite_cursors__cont2__content (Array Int natural))(rec__composite_cursors__cont2__length natural)))))
(define-fun us_split_fields_Content3__projection ((a us_split_fields4)) (Array Int natural) 
  (rec__composite_cursors__cont2__content a))

(define-fun us_split_fields_Length2__projection ((a us_split_fields4)) natural 
  (rec__composite_cursors__cont2__length a))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep_3__projection ((a us_rep2)) us_split_fields4 (us_split_fields5
                                                                a))

(define-fun bool_eq6 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (= (bool_eq2
                            (rec__composite_cursors__cont2__content
                            (us_split_fields5 a)) 1 100
                            (rec__composite_cursors__cont2__content
                            (us_split_fields5 b)) 1 100) true)
                         (= (to_rep
                            (rec__composite_cursors__cont2__length
                            (us_split_fields5 a))) (to_rep
                                                   (rec__composite_cursors__cont2__length
                                                   (us_split_fields5 b)))))
                    true false))

(declare-fun user_eq7 (us_rep2 us_rep2) Bool)

(declare-fun value__size4 () Int)

(declare-fun object__size4 (us_rep2) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size4 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment4 a))))

(declare-fun composite_cursors__cont2__content__first__bit () Int)

(declare-fun composite_cursors__cont2__content__last__bit () Int)

(declare-fun composite_cursors__cont2__content__position () Int)

;; composite_cursors__cont2__content__first__bit_axiom
  (assert (<= 0 composite_cursors__cont2__content__first__bit))

;; composite_cursors__cont2__content__last__bit_axiom
  (assert
  (< composite_cursors__cont2__content__first__bit composite_cursors__cont2__content__last__bit))

;; composite_cursors__cont2__content__position_axiom
  (assert (<= 0 composite_cursors__cont2__content__position))

(declare-fun composite_cursors__cont2__length__first__bit () Int)

(declare-fun composite_cursors__cont2__length__last__bit () Int)

(declare-fun composite_cursors__cont2__length__position () Int)

;; composite_cursors__cont2__length__first__bit_axiom
  (assert (<= 0 composite_cursors__cont2__length__first__bit))

;; composite_cursors__cont2__length__last__bit_axiom
  (assert
  (< composite_cursors__cont2__length__first__bit composite_cursors__cont2__length__last__bit))

;; composite_cursors__cont2__length__position_axiom
  (assert (<= 0 composite_cursors__cont2__length__position))

(declare-fun dummy7 () us_rep2)

(declare-datatypes ()
((cont2__ref (mk_cont2__ref (cont2__content us_rep2)))))
(define-fun cont2__ref___projection ((a cont2__ref)) us_rep2 (cont2__content
                                                             a))

(define-fun dynamic_invariant2 ((temp___expr_205 us_rep2)
  (temp___is_init_202 Bool) (temp___skip_constant_203 Bool)
  (temp___do_toplevel_204 Bool)) Bool (=> (= temp___do_toplevel_204 true)
                                      (=> (= temp___is_init_202 true)
                                      (<= (to_rep
                                          (rec__composite_cursors__cont2__length
                                          (us_split_fields5 temp___expr_205))) 100))))

(define-fun dynamic_predicate1 ((temp___214 us_rep2)) Bool (<= (to_rep
                                                               (rec__composite_cursors__cont2__length
                                                               (us_split_fields5
                                                               temp___214))) 100))

(declare-fun first__2 (us_rep2) us_rep1)

(declare-fun first__2__function_guard (us_rep1 us_rep2) Bool)

;; first__2__post_axiom
  (assert true)

;; first__2__def_axiom
  (assert
  (forall ((c us_rep2))
  (! (=>
     (and (dynamic_invariant2 c true true true) (first__2__function_guard
     (first__2 c) c))
     (= (first__2 c) (mk___rep1 (mk___split_fields1 (of_rep 1))))) :pattern (
  (first__2 c)) )))

(declare-fun has_element__2 (us_rep2 us_rep1) Bool)

(declare-fun has_element__2__function_guard (Bool us_rep2 us_rep1) Bool)

;; has_element__2__post_axiom
  (assert true)

;; has_element__2__def_axiom
  (assert
  (forall ((c us_rep2))
  (forall ((p us_rep1))
  (! (=> (has_element__2__function_guard (has_element__2 c p) c p)
     (= (= (has_element__2 c p) true)
     (and
     (<= 1 (to_rep
           (rec__composite_cursors__rec_cursor__content (us_split_fields3 p))))
     (<= (to_rep
         (rec__composite_cursors__rec_cursor__content (us_split_fields3 p))) 
     (to_rep (rec__composite_cursors__cont2__length (us_split_fields5 c))))))) :pattern (
  (has_element__2 c p)) ))))

(declare-fun next__2 (us_rep2 us_rep1) us_rep1)

(declare-fun next__2__function_guard (us_rep1 us_rep2 us_rep1) Bool)

;; next__2__post_axiom
  (assert
  (forall ((c us_rep2))
  (forall ((p us_rep1)) (! (has_element__2__function_guard
  (has_element__2 c p) c p) :pattern ((next__2 c p)) ))))

;; next__2__def_axiom
  (assert
  (forall ((c us_rep2))
  (forall ((p us_rep1))
  (! (=>
     (and (dynamic_invariant2 c true true true) (next__2__function_guard
     (next__2 c p) c p))
     (= (next__2 c p) (mk___rep1
                      (mk___split_fields1
                      (of_rep
                      (+ (to_rep
                         (rec__composite_cursors__rec_cursor__content
                         (us_split_fields3 p))) 1)))))) :pattern ((next__2 c
                                                                  p)) ))))

(declare-fun element__2 (us_rep2 us_rep1) Int)

(declare-fun element__2__function_guard (Int us_rep2 us_rep1) Bool)

;; element__2__post_axiom
  (assert
  (forall ((c us_rep2))
  (forall ((p us_rep1))
  (! (and (has_element__2__function_guard (has_element__2 c p) c p)
     (=>
     (and (dynamic_invariant2 c true true true)
     (= (has_element__2 c p) true))
     (let ((result (element__2 c p)))
     (=> (element__2__function_guard result c p) (dynamic_invariant1 result
     true false true))))) :pattern ((element__2 c p)) ))))

;; element__2__def_axiom
  (assert
  (forall ((c us_rep2))
  (forall ((p us_rep1))
  (! (=>
     (and (dynamic_invariant2 c true true true) (element__2__function_guard
     (element__2 c p) c p))
     (= (element__2 c p) (to_rep
                         (let ((temp___231 (rec__composite_cursors__cont2__content
                                           (us_split_fields5 c))))
                         (select temp___231 (to_rep
                                            (rec__composite_cursors__rec_cursor__content
                                            (us_split_fields3 p)))))))) :pattern (
  (element__2 c p)) ))))

(declare-sort t1b 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq8 (t1b t1b) Bool)

(declare-fun dummy8 () t1b)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t3b 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq9 (t3b t3b) Bool)

(declare-fun dummy9 () t3b)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content t3b)))))
(define-fun t3b__ref___projection ((a t3b__ref)) t3b (t3b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun temp___268 (Int Int) (Array Int natural))

;; def_axiom
  (assert
  (forall ((temp___270 Int) (temp___271 Int))
  (let ((temp___269 (temp___268 temp___270 temp___271)))
  (forall ((temp___272 Int))
  (ite (and (<= 1 temp___272) (<= temp___272 10))
  (= (select temp___269 temp___272) (of_rep temp___270))
  (= (select temp___269 temp___272) (of_rep temp___271)))))))

(declare-fun temp___274 (Int Int) (Array Int natural))

;; def_axiom
  (assert
  (forall ((temp___276 Int) (temp___277 Int))
  (let ((temp___275 (temp___274 temp___276 temp___277)))
  (forall ((temp___278 Int))
  (ite (and (<= 1 temp___278) (<= temp___278 10))
  (= (select temp___275 temp___278) (of_rep temp___276))
  (= (select temp___275 temp___278) (of_rep temp___277)))))))

(declare-fun c1__split_fields () (Array Int natural))

(declare-fun c1__split_fields1 () natural)

(declare-fun c2__split_fields () (Array Int natural))

(declare-fun c2__split_fields1 () natural)

(declare-fun e () Int)

(declare-fun e1 () Int)

(declare-fun o () natural)

(declare-fun o1 () (Array Int natural))

(declare-fun o2 () (Array Int natural))

(declare-fun o3 () natural)

(declare-fun temp___273 () (Array Int natural))

(declare-fun temp___2731 () natural)

(declare-fun loop_iterable__c1__assume () (Array Int natural))

(declare-fun loop_iterable__c1__assume1 () natural)

(declare-fun o4 () natural)

(declare-fun o5 () (Array Int natural))

(declare-fun o6 () (Array Int natural))

(declare-fun o7 () natural)

(declare-fun temp___279 () (Array Int natural))

(declare-fun temp___2791 () natural)

(declare-fun loop_iterable__c2__assume () (Array Int natural))

(declare-fun loop_iterable__c2__assume1 () natural)

(declare-fun o8 () (Array Int natural))

(declare-fun temp___282 () (Array Int natural))

(declare-fun o9 () Int)

(declare-fun o10 () (Array Int natural))

(declare-fun o11 () Bool)

(declare-fun o12 () natural)

(declare-fun temp___287 () natural)

(declare-fun o13 () Int)

(declare-fun e2 () Int)

(declare-fun e3 () Int)

(declare-fun result () us_split_fields__ref)

(declare-fun c1__split_fields2 () us_split_fields)

(declare-fun result1 () us_split_fields__ref2)

(declare-fun c2__split_fields2 () us_split_fields4)

(declare-fun temp___2821 () (Array Int natural))

(declare-fun result2 () Bool)

(declare-fun result3 () int__ref)

(declare-fun e4 () Int)

(declare-fun result4 () Bool)

(declare-fun e5 () Int)

(declare-fun temp___2822 () (Array Int natural))

(declare-fun result5 () Bool)

(declare-fun e6 () int__ref)

(declare-fun temp___2823 () map__ref)

(declare-fun e7 () Int)

(declare-fun temp___2824 () (Array Int natural))

(declare-fun e8 () int__ref)

(declare-fun temp___2825 () map__ref)

(declare-fun e9 () Int)

(declare-fun temp___2826 () (Array Int natural))

(declare-fun result6 () Bool)

(declare-fun result7 () int__ref)

(declare-fun e10 () Int)

(declare-fun e11 () int__ref)

(declare-fun e12 () Int)

(declare-fun result8 () Bool)

(declare-fun e13 () Int)

(declare-fun temp___2871 () us_rep1)

(define-fun o14 () us_rep1 (mk___rep1 (mk___split_fields1 o12)))

(define-fun e14 () int__ref (mk_int__ref e1))

;; H
  (assert (= (to_rep o) 10))

;; H
  (assert (= o1 (temp___268 1 0)))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= temp___273 o2))

;; H
  (assert (= temp___2731 o3))

;; H
  (assert (<= (to_rep temp___2731) 100))

;; H
  (assert
  (= (mk___rep
     (mk___split_fields loop_iterable__c1__assume loop_iterable__c1__assume1)) 
  (mk___rep (mk___split_fields temp___273 temp___2731))))

;; H
  (assert
  (= result (mk___split_fields__ref
            (mk___split_fields c1__split_fields c1__split_fields1))))

;; H
  (assert
  (= c1__split_fields2 (mk___split_fields loop_iterable__c1__assume
                       loop_iterable__c1__assume1)))

;; H
  (assert
  (<= (to_rep (rec__composite_cursors__cont1__length c1__split_fields2)) 100))

;; H
  (assert (= (to_rep o4) 10))

;; H
  (assert (= o5 (temp___274 1 0)))

;; H
  (assert (= o5 o6))

;; H
  (assert (= o4 o7))

;; H
  (assert (= temp___279 o6))

;; H
  (assert (= temp___2791 o7))

;; H
  (assert (<= (to_rep temp___2791) 100))

;; H
  (assert
  (= (mk___rep2
     (mk___split_fields2 loop_iterable__c2__assume
     loop_iterable__c2__assume1)) (mk___rep2
                                  (mk___split_fields2 temp___279 temp___2791))))

;; H
  (assert
  (= result1 (mk___split_fields__ref2
             (mk___split_fields2 c2__split_fields c2__split_fields1))))

;; H
  (assert
  (= c2__split_fields2 (mk___split_fields2 loop_iterable__c2__assume
                       loop_iterable__c2__assume1)))

;; H
  (assert
  (<= (to_rep (rec__composite_cursors__cont2__length c2__split_fields2)) 100))

;; H
  (assert (has_element__function_guard
  (has_element (mk___rep c1__split_fields2) temp___2822)
  (mk___rep c1__split_fields2) temp___2822))

;; H
  (assert (element__function_guard
  (element (mk___rep c1__split_fields2) temp___2822)
  (mk___rep c1__split_fields2) temp___2822))

;; H
  (assert
  (and
  (and (= o8 (first (mk___rep c1__split_fields2))) (first__function_guard 
  o8 (mk___rep c1__split_fields2))) (= o8 (temp___164 1))))

;; H
  (assert (= o8 temp___282))

;; H
  (assert
  (and
  (and (= result2 (has_element (mk___rep c1__split_fields2) temp___282))
  (has_element__function_guard result2 (mk___rep c1__split_fields2)
  temp___282))
  (= (= result2 true)
  (and (<= 1 (to_rep (select temp___282 1)))
  (<= (to_rep (select temp___282 1)) (to_rep
                                     (rec__composite_cursors__cont1__length
                                     c1__split_fields2)))))))

;; H
  (assert
  (=> (= result2 true)
  (and
  (and (= o9 (element (mk___rep c1__split_fields2) temp___282))
  (element__function_guard o9 (mk___rep c1__split_fields2) temp___282))
  (and (in_range1 o9)
  (= o9 (to_rep
        (select (rec__composite_cursors__cont1__content c1__split_fields2) 
        (to_rep (select temp___282 1)))))))))

;; H
  (assert (=> (= result2 true) (= result3 (mk_int__ref e))))

;; H
  (assert (=> (= result2 true) (= e4 o9)))

;; H
  (assert (=> (not (= result2 true)) (= e4 e)))

;; H
  (assert (=> (not (= result2 true)) (= e4 e2)))

;; H
  (assert
  (and
  (and (= result4 (has_element (mk___rep c1__split_fields2) temp___282))
  (has_element__function_guard result4 (mk___rep c1__split_fields2)
  temp___282))
  (= (= result4 true)
  (and (<= 1 (to_rep (select temp___282 1)))
  (<= (to_rep (select temp___282 1)) (to_rep
                                     (rec__composite_cursors__cont1__length
                                     c1__split_fields2)))))))

;; H
  (assert
  (=> (= result4 true)
  (and (= (has_element (mk___rep c1__split_fields2) temp___2822) true)
  (= e5 (element (mk___rep c1__split_fields2) temp___2822)))))

;; H
  (assert (=> (= result4 true) (= e5 1)))

;; H
  (assert
  (=> (= result4 true)
  (and
  (and (= o10 (next (mk___rep c1__split_fields2) temp___2822))
  (next__function_guard o10 (mk___rep c1__split_fields2) temp___2822))
  (= o10 (temp___177 (+ (to_rep (select temp___2822 1)) 1))))))

;; H
  (assert
  (=> (= result4 true)
  (and
  (and (= o11 (has_element (mk___rep c1__split_fields2) o10))
  (has_element__function_guard o11 (mk___rep c1__split_fields2) o10))
  (= (= o11 true)
  (and (<= 1 (to_rep (select o10 1)))
  (<= (to_rep (select o10 1)) (to_rep
                              (rec__composite_cursors__cont1__length
                              c1__split_fields2))))))))

;; H
  (assert
  (=> (= result4 true) (= result5 (ite (not (= o11 true)) true false))))

;; H
  (assert (=> (= result4 true) (= result5 true)))

;; H
  (assert (=> (= result4 true) (= temp___2823 (mk_map__ref temp___2822))))

;; H
  (assert (=> (= result4 true) (= e6 (mk_int__ref e5))))

;; H
  (assert (=> (= result4 true) (= temp___2824 temp___2822)))

;; H
  (assert (=> (= result4 true) (= e7 e5)))

;; H
  (assert (=> (= result4 true) (= temp___2825 temp___2823)))

;; H
  (assert (=> (= result4 true) (= e8 e6)))

;; H
  (assert (=> (= result4 true) (= temp___2826 temp___2824)))

;; H
  (assert (=> (= result4 true) (= e9 e7)))

;; H
  (assert
  (=> (not (= result4 true)) (= temp___2825 (mk_map__ref temp___282))))

;; H
  (assert (=> (not (= result4 true)) (= e8 (mk_int__ref e4))))

;; H
  (assert (=> (not (= result4 true)) (= temp___2826 temp___2821)))

;; H
  (assert (=> (not (= result4 true)) (= e9 e4)))

;; H
  (assert
  (and
  (and (= o14 (first__2 (mk___rep2 c2__split_fields2)))
  (first__2__function_guard o14 (mk___rep2 c2__split_fields2)))
  (= (of_rep 1) o12)))

;; H
  (assert (= temp___287 o12))

;; H
  (assert
  (and
  (and
  (= result6 (has_element__2 (mk___rep2 c2__split_fields2)
             (mk___rep1 (mk___split_fields1 temp___287))))
  (has_element__2__function_guard result6 (mk___rep2 c2__split_fields2)
  (mk___rep1 (mk___split_fields1 temp___287))))
  (= (= result6 true)
  (and (<= 1 (to_rep temp___287))
  (<= (to_rep temp___287) (to_rep
                          (rec__composite_cursors__cont2__length
                          c2__split_fields2)))))))

;; H
  (assert
  (=> (= result6 true)
  (and
  (and
  (= o13 (element__2 (mk___rep2 c2__split_fields2)
         (mk___rep1 (mk___split_fields1 temp___287))))
  (element__2__function_guard o13 (mk___rep2 c2__split_fields2)
  (mk___rep1 (mk___split_fields1 temp___287))))
  (and (in_range1 o13)
  (= o13 (to_rep
         (select (rec__composite_cursors__cont2__content c2__split_fields2) 
         (to_rep temp___287))))))))

;; H
  (assert (=> (= result6 true) (= result7 e14)))

;; H
  (assert (=> (= result6 true) (= e10 o13)))

;; H
  (assert (=> (= result6 true) (= e11 (mk_int__ref e10))))

;; H
  (assert (=> (= result6 true) (= e12 e10)))

;; H
  (assert (=> (not (= result6 true)) (= e11 e14)))

;; H
  (assert (=> (not (= result6 true)) (= e12 e3)))

;; H
  (assert
  (and
  (and
  (= result8 (has_element__2 (mk___rep2 c2__split_fields2)
             (mk___rep1 (mk___split_fields1 temp___287))))
  (has_element__2__function_guard result8 (mk___rep2 c2__split_fields2)
  (mk___rep1 (mk___split_fields1 temp___287))))
  (= (= result8 true)
  (and (<= 1 (to_rep temp___287))
  (<= (to_rep temp___287) (to_rep
                          (rec__composite_cursors__cont2__length
                          c2__split_fields2)))))))

;; H
  (assert (= result8 true))

;; H
  (assert (has_element__2__function_guard
  (has_element__2 (mk___rep2 c2__split_fields2) temp___2871)
  (mk___rep2 c2__split_fields2) temp___2871))

;; H
  (assert (element__2__function_guard
  (element__2 (mk___rep2 c2__split_fields2) temp___2871)
  (mk___rep2 c2__split_fields2) temp___2871))

;; H
  (assert
  (and (= (has_element__2 (mk___rep2 c2__split_fields2) temp___2871) true)
  (= e13 (element__2 (mk___rep2 c2__split_fields2) temp___2871))))

(assert
;; WP_parameter_def
 ;; File "loop_iterable.adb", line 2, characters 0-0
  (not (= e13 1)))
(check-sat)
