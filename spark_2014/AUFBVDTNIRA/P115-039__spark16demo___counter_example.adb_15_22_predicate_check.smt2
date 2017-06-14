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

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

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

(declare-sort category 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 8)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (category category) Bool)

(declare-fun dummy1 () category)

(declare-datatypes ()
((category__ref (mk_category__ref (category__content category)))))
(define-fun category__ref___projection ((a category__ref)) category (category__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_148 Int)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (or (= temp___is_init_145 true)
                                      (<= 1 8)) (in_range2 temp___expr_148)))

(declare-fun to_rep1 (category) Int)

(declare-fun of_rep1 (Int) category)

;; inversion_axiom
  (assert
  (forall ((x category))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x category)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__counter_example__item__cat category)(rec__counter_example__item__idx natural)))))
(define-fun us_split_fields_Cat__projection ((a us_split_fields)) category 
  (rec__counter_example__item__cat a))

(define-fun us_split_fields_Idx__projection ((a us_split_fields)) natural 
  (rec__counter_example__item__idx a))

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
  (b us_rep)) Bool (ite (and
                        (= (to_rep1
                           (rec__counter_example__item__cat
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__counter_example__item__cat
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__counter_example__item__idx
                           (us_split_fields1 a))) (to_rep
                                                  (rec__counter_example__item__idx
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun counter_example__item__cat__first__bit () Int)

(declare-fun counter_example__item__cat__last__bit () Int)

(declare-fun counter_example__item__cat__position () Int)

;; counter_example__item__cat__first__bit_axiom
  (assert (<= 0 counter_example__item__cat__first__bit))

;; counter_example__item__cat__last__bit_axiom
  (assert
  (< counter_example__item__cat__first__bit counter_example__item__cat__last__bit))

;; counter_example__item__cat__position_axiom
  (assert (<= 0 counter_example__item__cat__position))

(declare-fun counter_example__item__idx__first__bit () Int)

(declare-fun counter_example__item__idx__last__bit () Int)

(declare-fun counter_example__item__idx__position () Int)

;; counter_example__item__idx__first__bit_axiom
  (assert (<= 0 counter_example__item__idx__first__bit))

;; counter_example__item__idx__last__bit_axiom
  (assert
  (< counter_example__item__idx__first__bit counter_example__item__idx__last__bit))

;; counter_example__item__idx__position_axiom
  (assert (<= 0 counter_example__item__idx__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((item__ref (mk_item__ref (item__content us_rep)))))
(define-fun item__ref___projection ((a item__ref)) us_rep (item__content a))

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

(define-fun bool_eq3 ((a (Array Int natural)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
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
  (forall ((a (Array Int natural)) (b (Array Int natural)))
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

(declare-sort integer 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep2 (integer) Int)

(declare-fun of_rep2 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range3 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range3 f)
     (=> (in_range3 l)
     (and (= (to_rep2 (first (mk f l))) f) (= (to_rep2 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range3 low)
                   (and (in_range3 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int natural))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int natural) (elts a))

(define-fun of_array ((a (Array Int natural)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep2 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep2 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int natural)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int natural)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment1 a))))

(define-fun bool_eq5 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep2 (first (rt x)))
                 (to_rep2 (last (rt x))) (elts y) (to_rep2 (first (rt y)))
                 (to_rep2 (last (rt y)))))

(declare-fun user_eq4 (us_t us_t) Bool)

(declare-fun dummy4 () us_t)

(declare-datatypes ()
((num_item_t__ref (mk_num_item_t__ref (num_item_t__content us_t)))))
(define-fun num_item_t__ref___projection ((a num_item_t__ref)) us_t (num_item_t__content
                                                                    a))

(declare-fun num_item_per_category () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant2 ((temp___expr_159 us_rep)
  (temp___is_init_156 Bool) (temp___skip_constant_157 Bool)
  (temp___do_toplevel_158 Bool)) Bool (=> (= temp___do_toplevel_158 true)
                                      (=> (= temp___is_init_156 true)
                                      (<= (to_rep
                                          (rec__counter_example__item__idx
                                          (us_split_fields1 temp___expr_159))) 
                                      (to_rep
                                      (select (to_array
                                              num_item_per_category) 
                                      (to_rep1
                                      (rec__counter_example__item__cat
                                      (us_split_fields1 temp___expr_159)))))))))

(define-fun dynamic_predicate ((temp___165 us_rep)) Bool (<= (to_rep
                                                             (rec__counter_example__item__idx
                                                             (us_split_fields1
                                                             temp___165))) 
  (to_rep
  (select (to_array num_item_per_category) (to_rep1
                                           (rec__counter_example__item__cat
                                           (us_split_fields1 temp___165)))))))

(declare-fun cat1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun cat2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun pick_last (Int) Int)

(declare-fun pick_last__function_guard (Int Int) Bool)

;; pick_last__post_axiom
  (assert
  (forall ((cat Int))
  (! (=> (dynamic_invariant1 cat true true true)
     (let ((result (pick_last cat)))
     (=> (pick_last__function_guard result cat) (dynamic_invariant result
     true false true)))) :pattern ((pick_last cat)) )))

;; pick_last__def_axiom
  (assert
  (forall ((cat Int))
  (! (=>
     (and (dynamic_invariant1 cat true true true) (pick_last__function_guard
     (pick_last cat) cat))
     (= (pick_last cat) (to_rep
                        (select (to_array num_item_per_category) cat)))) :pattern (
  (pick_last cat)) )))

(declare-fun idx1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun idx2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range3 temp___expr_15)))

;; idx1__def_axiom
  (assert
  (and (pick_last__function_guard (pick_last cat1) cat1)
  (= idx1 (pick_last cat1))))

;; idx2__def_axiom
  (assert
  (and (pick_last__function_guard (pick_last cat2) cat2)
  (= idx2 (pick_last cat2))))

(define-fun dynamic_invariant4 ((temp___expr_154 us_t)
  (temp___is_init_151 Bool) (temp___skip_constant_152 Bool)
  (temp___do_toplevel_153 Bool)) Bool (=>
                                      (not (= temp___skip_constant_152 true))
                                      (dynamic_property 1 8
                                      (first1 temp___expr_154)
                                      (last1 temp___expr_154))))

(declare-sort t3s 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 8)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (t3s t3s) Bool)

(declare-fun dummy5 () t3s)

(declare-datatypes () ((t3s__ref (mk_t3s__ref (t3s__content t3s)))))
(define-fun t3s__ref___projection ((a t3s__ref)) t3s (t3s__content a))

(declare-fun counter_example__num_item_per_category__aggregate_def (Int Int
  Int Int Int Int Int Int) (Array Int natural))

;; def_axiom
  (assert
  (forall ((temp___134 Int) (temp___135 Int) (temp___136 Int)
  (temp___137 Int) (temp___138 Int) (temp___139 Int) (temp___140 Int)
  (temp___141 Int))
  (let ((temp___133 (counter_example__num_item_per_category__aggregate_def
                    temp___134 temp___135 temp___136 temp___137 temp___138
                    temp___139 temp___140 temp___141)))
  (and
  (and
  (and
  (and
  (and
  (and
  (and (= (select temp___133 1) (of_rep temp___134))
  (= (select temp___133 2) (of_rep temp___135)))
  (= (select temp___133 3) (of_rep temp___136)))
  (= (select temp___133 4) (of_rep temp___137)))
  (= (select temp___133 5) (of_rep temp___138)))
  (= (select temp___133 6) (of_rep temp___139)))
  (= (select temp___133 7) (of_rep temp___140)))
  (= (select temp___133 8) (of_rep temp___141))))))

;; num_item_per_category__def_axiom
  (assert
  (= num_item_per_category (of_array
                           (counter_example__num_item_per_category__aggregate_def
                           3 8 10000 42 98 76 0 1) 1 8)))

(declare-fun pick1 () Bool)

(declare-fun counter_example__get_best_item__idx1__assume () Int)

(declare-fun counter_example__get_best_item__idx2__assume () Int)

(declare-fun o () natural)

(declare-fun o1 () category)

(declare-fun o2 () category)

(declare-fun o3 () natural)

(declare-fun temp___169 () category)

(declare-fun temp___1691 () natural)

(declare-fun result () Bool)

(declare-fun pick11 () Bool)

;; H
  (assert (in_range2 cat1))

;; H
  (assert (in_range2 cat2))

;; H
  (assert
  (and
  (and (= counter_example__get_best_item__idx1__assume (pick_last cat1))
  (pick_last__function_guard counter_example__get_best_item__idx1__assume
  cat1))
  (and (in_range1 counter_example__get_best_item__idx1__assume)
  (= counter_example__get_best_item__idx1__assume (to_rep
                                                  (select (elts
                                                          num_item_per_category) 
                                                  cat1))))))

;; H
  (assert (= counter_example__get_best_item__idx1__assume idx1))

;; H
  (assert (in_range1 idx1))

;; H
  (assert
  (and
  (and (= counter_example__get_best_item__idx2__assume (pick_last cat2))
  (pick_last__function_guard counter_example__get_best_item__idx2__assume
  cat2))
  (and (in_range1 counter_example__get_best_item__idx2__assume)
  (= counter_example__get_best_item__idx2__assume (to_rep
                                                  (select (elts
                                                          num_item_per_category) 
                                                  cat2))))))

;; H
  (assert (= counter_example__get_best_item__idx2__assume idx2))

;; H
  (assert (in_range1 idx2))

;; H
  (assert (= result pick1))

;; H
  (assert (= pick11 (of_int 0)))

;; H
  (assert (not (= pick11 true)))

;; H
  (assert (= (to_rep o) idx2))

;; H
  (assert (= (to_rep1 o1) cat1))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o o3))

;; H
  (assert (= temp___169 o2))

;; H
  (assert (= temp___1691 o3))

(assert
;; WP_parameter_def
 ;; File "counter_example.ads", line 9, characters 0-0
  (not
  (<= (to_rep temp___1691) (to_rep
                           (select (elts num_item_per_category) (to_rep1
                                                                temp___169))))))
(check-sat)
