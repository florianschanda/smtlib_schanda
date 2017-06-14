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

(declare-sort natural 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

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
  (forall ((x natural)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

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

(define-fun bool_eq1 ((a (Array Int natural)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq1 a a_first i b b_first j) true)
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
     (and (= (bool_eq1 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy1 () (Array Int natural))

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

(declare-fun user_eq1 ((Array Int natural) (Array Int natural)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__with_iterable__container__content (Array Int natural))))))
(define-fun us_split_fields_Content__projection ((a us_split_fields)) (Array Int natural) 
  (rec__with_iterable__container__content a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (= (bool_eq1
                           (rec__with_iterable__container__content
                           (us_split_fields1 a)) 1 100
                           (rec__with_iterable__container__content
                           (us_split_fields1 b)) 1 100) true)
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

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

(declare-fun with_iterable__container__content__first__bit () Int)

(declare-fun with_iterable__container__content__last__bit () Int)

(declare-fun with_iterable__container__content__position () Int)

;; with_iterable__container__content__first__bit_axiom
  (assert (<= 0 with_iterable__container__content__first__bit))

;; with_iterable__container__content__last__bit_axiom
  (assert
  (< with_iterable__container__content__first__bit with_iterable__container__content__last__bit))

;; with_iterable__container__content__position_axiom
  (assert (<= 0 with_iterable__container__content__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((container__ref (mk_container__ref (container__content us_rep)))))
(define-fun container__ref___projection ((a container__ref)) us_rep (container__content
                                                                    a))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__with_iterable__cursor__c natural)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) natural 
  (rec__with_iterable__cursor__c a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__with_iterable__cursor__i natural)))))
(define-fun us_split_fields_I__projection ((a us_split_fields2)) natural 
  (rec__with_iterable__cursor__i a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1
 (mk___rep1
 (us_split_discrs1 us_split_discrs)(us_split_fields3 us_split_fields2)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_discrs (us_split_discrs1
                                                               a))

(define-fun us_rep_3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq3 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (= (to_rep
                            (rec__with_iterable__cursor__c
                            (us_split_discrs1 a))) (to_rep
                                                   (rec__with_iterable__cursor__c
                                                   (us_split_discrs1 b))))
                         (= (to_rep
                            (rec__with_iterable__cursor__i
                            (us_split_fields3 a))) (to_rep
                                                   (rec__with_iterable__cursor__i
                                                   (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq3 (us_rep1 us_rep1) Bool)

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

(declare-fun with_iterable__cursor__c__first__bit () Int)

(declare-fun with_iterable__cursor__c__last__bit () Int)

(declare-fun with_iterable__cursor__c__position () Int)

;; with_iterable__cursor__c__first__bit_axiom
  (assert (<= 0 with_iterable__cursor__c__first__bit))

;; with_iterable__cursor__c__last__bit_axiom
  (assert
  (< with_iterable__cursor__c__first__bit with_iterable__cursor__c__last__bit))

;; with_iterable__cursor__c__position_axiom
  (assert (<= 0 with_iterable__cursor__c__position))

(declare-fun with_iterable__cursor__i__first__bit () Int)

(declare-fun with_iterable__cursor__i__last__bit () Int)

(declare-fun with_iterable__cursor__i__position () Int)

;; with_iterable__cursor__i__first__bit_axiom
  (assert (<= 0 with_iterable__cursor__i__first__bit))

;; with_iterable__cursor__i__last__bit_axiom
  (assert
  (< with_iterable__cursor__i__first__bit with_iterable__cursor__i__last__bit))

;; with_iterable__cursor__i__position_axiom
  (assert (<= 0 with_iterable__cursor__i__position))

(declare-fun dummy3 () us_rep1)

(declare-datatypes ()
((cursor__ref (mk_cursor__ref (cursor__content us_rep1)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep1 (cursor__content
                                                               a))

(define-fun in_range1 ((rec__with_iterable__cursor__c1 Int)
  (a us_rep1)) Bool (= rec__with_iterable__cursor__c1 (to_rep
                                                      (rec__with_iterable__cursor__c
                                                      (us_split_discrs1 a)))))

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep1) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment3 a))))

(declare-fun with_iterable__cursor__c__first__bit1 () Int)

(declare-fun with_iterable__cursor__c__last__bit1 () Int)

(declare-fun with_iterable__cursor__c__position1 () Int)

;; with_iterable__cursor__c__first__bit_axiom
  (assert (<= 0 with_iterable__cursor__c__first__bit1))

;; with_iterable__cursor__c__last__bit_axiom
  (assert
  (< with_iterable__cursor__c__first__bit1 with_iterable__cursor__c__last__bit1))

;; with_iterable__cursor__c__position_axiom
  (assert (<= 0 with_iterable__cursor__c__position1))

(declare-fun with_iterable__cursor__i__first__bit1 () Int)

(declare-fun with_iterable__cursor__i__last__bit1 () Int)

(declare-fun with_iterable__cursor__i__position1 () Int)

;; with_iterable__cursor__i__first__bit_axiom
  (assert (<= 0 with_iterable__cursor__i__first__bit1))

;; with_iterable__cursor__i__last__bit_axiom
  (assert
  (< with_iterable__cursor__i__first__bit1 with_iterable__cursor__i__last__bit1))

;; with_iterable__cursor__i__position_axiom
  (assert (<= 0 with_iterable__cursor__i__position1))

(declare-fun dummy4 () us_rep1)

(declare-datatypes ()
((cursor_2__ref (mk_cursor_2__ref (cursor_2__content us_rep1)))))
(define-fun cursor_2__ref___projection ((a cursor_2__ref)) us_rep1 (cursor_2__content
                                                                   a))

(define-fun dynamic_invariant ((temp___expr_165 us_rep1)
  (temp___is_init_162 Bool) (temp___skip_constant_163 Bool)
  (temp___do_toplevel_164 Bool)) Bool (and
                                      (=>
                                      (not (= temp___skip_constant_163 true))
                                      (in_range1 101 temp___expr_165))
                                      (=> (= temp___do_toplevel_164 true)
                                      (=> (= temp___is_init_162 true)
                                      (and
                                      (<= 1 (to_rep
                                            (rec__with_iterable__cursor__i
                                            (us_split_fields3
                                            temp___expr_165))))
                                      (<= (to_rep
                                          (rec__with_iterable__cursor__i
                                          (us_split_fields3 temp___expr_165))) 
                                      (to_rep
                                      (rec__with_iterable__cursor__c
                                      (us_split_discrs1 temp___expr_165)))))))))

(define-fun default_initial_assumption ((temp___expr_169 us_rep1)
  (temp___skip_top_level_170 Bool)) Bool (= (to_rep
                                            (rec__with_iterable__cursor__c
                                            (us_split_discrs1
                                            temp___expr_169))) 101))

(define-fun dynamic_predicate ((temp___173 us_rep1)) Bool (and
                                                          (<= 1 (to_rep
                                                                (rec__with_iterable__cursor__i
                                                                (us_split_fields3
                                                                temp___173))))
                                                          (<= (to_rep
                                                              (rec__with_iterable__cursor__i
                                                              (us_split_fields3
                                                              temp___173))) 
                                                          (to_rep
                                                          (rec__with_iterable__cursor__c
                                                          (us_split_discrs1
                                                          temp___173))))))

(declare-fun has_element (us_rep us_rep1) Bool)

(declare-fun has_element__function_guard (Bool us_rep us_rep1) Bool)

;; has_element__post_axiom
  (assert true)

;; has_element__def_axiom
  (assert
  (forall ((a us_rep))
  (forall ((cu us_rep1))
  (! (=> (has_element__function_guard (has_element a cu) a cu)
     (= (= (has_element a cu) true)
     (and
     (<= 1 (to_rep (rec__with_iterable__cursor__i (us_split_fields3 cu))))
     (<= (to_rep (rec__with_iterable__cursor__i (us_split_fields3 cu))) 100)))) :pattern (
  (has_element a cu)) ))))

(declare-fun contains_0 (us_rep) Bool)

(declare-fun contains_0__function_guard (Bool us_rep) Bool)

(declare-fun get (us_rep Int) Int)

(declare-fun get__function_guard (Int us_rep Int) Bool)

;; contains_0__post_axiom
  (assert true)

;; contains_0__def_axiom
  (assert
  (forall ((a us_rep))
  (! (=> (contains_0__function_guard (contains_0 a) a)
     (and
     (forall ((cu us_rep1)) (has_element__function_guard (has_element a cu) a
     cu))
     (and
     (forall ((cu us_rep1)) (get__function_guard
     (get a (to_rep (rec__with_iterable__cursor__i (us_split_fields3 cu)))) a
     (to_rep (rec__with_iterable__cursor__i (us_split_fields3 cu)))))
     (= (= (contains_0 a) true)
     (exists ((cu us_rep1))
     (and
     (and (dynamic_invariant cu true false true) (= (has_element a cu) true))
     (= (get a
        (to_rep (rec__with_iterable__cursor__i (us_split_fields3 cu)))) 0))))))) :pattern (
  (contains_0 a)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun in_range2 ((rec__with_iterable__cursor__c1 Int)
  (a us_rep1)) Bool (= rec__with_iterable__cursor__c1 (to_rep
                                                      (rec__with_iterable__cursor__c
                                                      (us_split_discrs1 a)))))

(declare-fun value__size4 () Int)

(declare-fun object__size4 (us_rep1) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size4 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment4 a))))

(declare-fun with_iterable__cursor__c__first__bit2 () Int)

(declare-fun with_iterable__cursor__c__last__bit2 () Int)

(declare-fun with_iterable__cursor__c__position2 () Int)

;; with_iterable__cursor__c__first__bit_axiom
  (assert (<= 0 with_iterable__cursor__c__first__bit2))

;; with_iterable__cursor__c__last__bit_axiom
  (assert
  (< with_iterable__cursor__c__first__bit2 with_iterable__cursor__c__last__bit2))

;; with_iterable__cursor__c__position_axiom
  (assert (<= 0 with_iterable__cursor__c__position2))

(declare-fun with_iterable__cursor__i__first__bit2 () Int)

(declare-fun with_iterable__cursor__i__last__bit2 () Int)

(declare-fun with_iterable__cursor__i__position2 () Int)

;; with_iterable__cursor__i__first__bit_axiom
  (assert (<= 0 with_iterable__cursor__i__first__bit2))

;; with_iterable__cursor__i__last__bit_axiom
  (assert
  (< with_iterable__cursor__i__first__bit2 with_iterable__cursor__i__last__bit2))

;; with_iterable__cursor__i__position_axiom
  (assert (<= 0 with_iterable__cursor__i__position2))

(declare-fun dummy5 () us_rep1)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content us_rep1)))))
(define-fun t1b__ref___projection ((a t1b__ref)) us_rep1 (t1b__content a))

(define-fun dynamic_predicate1 ((temp___209 us_rep1)) Bool (and
                                                           (<= 1 (to_rep
                                                                 (rec__with_iterable__cursor__i
                                                                 (us_split_fields3
                                                                 temp___209))))
                                                           (<= (to_rep
                                                               (rec__with_iterable__cursor__i
                                                               (us_split_fields3
                                                               temp___209))) 
                                                           (to_rep
                                                           (rec__with_iterable__cursor__c
                                                           (us_split_discrs1
                                                           temp___209))))))

(declare-fun first__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range
                                     temp___expr_33)))

(define-fun dynamic_invariant2 ((temp___expr_155 us_rep1)
  (temp___is_init_152 Bool) (temp___skip_constant_153 Bool)
  (temp___do_toplevel_154 Bool)) Bool (=> (= temp___do_toplevel_154 true)
                                      (=> (= temp___is_init_152 true)
                                      (and
                                      (<= 1 (to_rep
                                            (rec__with_iterable__cursor__i
                                            (us_split_fields3
                                            temp___expr_155))))
                                      (<= (to_rep
                                          (rec__with_iterable__cursor__i
                                          (us_split_fields3 temp___expr_155))) 
                                      (to_rep
                                      (rec__with_iterable__cursor__c
                                      (us_split_discrs1 temp___expr_155))))))))

(define-fun dynamic_predicate2 ((temp___158 us_rep1)) Bool (and
                                                           (<= 1 (to_rep
                                                                 (rec__with_iterable__cursor__i
                                                                 (us_split_fields3
                                                                 temp___158))))
                                                           (<= (to_rep
                                                               (rec__with_iterable__cursor__i
                                                               (us_split_fields3
                                                               temp___158))) 
                                                           (to_rep
                                                           (rec__with_iterable__cursor__c
                                                           (us_split_discrs1
                                                           temp___158))))))

;; get__post_axiom
  (assert
  (forall ((a us_rep))
  (forall ((i Int))
  (! (=>
     (and (dynamic_invariant1 i true true true) (and (<= 1 i) (<= i 100)))
     (let ((result (get a i)))
     (=> (get__function_guard result a i) (dynamic_invariant1 result true
     false true)))) :pattern ((get a i)) ))))

;; get__def_axiom
  (assert
  (forall ((a us_rep))
  (forall ((i Int))
  (! (=>
     (and (dynamic_invariant1 i true true true) (get__function_guard
     (get a i) a i))
     (= (get a i) (to_rep
                  (let ((temp___181 (rec__with_iterable__container__content
                                    (us_split_fields1 a))))
                  (select temp___181 i))))) :pattern ((get a i)) ))))

(declare-fun o () natural)

(declare-fun o1 () natural)

(declare-fun o2 () natural)

(declare-fun o3 () natural)

(declare-fun temp___231 () natural)

(declare-fun temp___2311 () natural)

;; H
  (assert (= (to_rep o1) 1))

;; H
  (assert (= o1 o2))

;; H
  (assert (= (to_rep o) 101))

;; H
  (assert (= o o3))

;; H
  (assert (= temp___231 o3))

;; H
  (assert (= temp___2311 o2))

(assert
;; WP_parameter_def
 ;; File "with_iterable.ads", line 29, characters 0-0
  (not (dynamic_predicate1
  (mk___rep1 (mk___split_discrs temp___231) (mk___split_fields1 temp___2311)))))
(check-sat)
