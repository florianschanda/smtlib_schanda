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

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

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

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (positive positive) Bool)

(declare-fun dummy2 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-fun to_rep1 (positive) Int)

(declare-fun of_rep1 (Int) positive)

;; inversion_axiom
  (assert
  (forall ((x positive))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x positive)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort element_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (element_type element_type) Bool)

(declare-fun dummy3 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant ((temp___expr_146 Int)
  (temp___is_init_143 Bool) (temp___skip_constant_144 Bool)
  (temp___do_toplevel_145 Bool)) Bool (=>
                                      (or (= temp___is_init_143 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_146)))

(declare-fun to_rep2 (element_type) Int)

(declare-fun of_rep2 (Int) element_type)

;; inversion_axiom
  (assert
  (forall ((x element_type))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x element_type)) (! (in_range3
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int element_type))))))
(declare-fun slide ((Array Int element_type) Int
  Int) (Array Int element_type))

;; slide_eq
  (assert
  (forall ((a (Array Int element_type)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int element_type)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int element_type) Int Int
  (Array Int element_type) Int Int) (Array Int element_type))

;; concat_def
  (assert
  (forall ((a (Array Int element_type)) (b (Array Int element_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (element_type Int) (Array Int element_type))

;; singleton_def
  (assert
  (forall ((v element_type))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq4 ((a (Array Int element_type)) (a__first Int)
  (a__last Int) (b (Array Int element_type)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep2 (select a temp___idx_132)) (to_rep2
                                                                  (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int element_type)) (b (Array Int element_type)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep2 (select a temp___idx_132)) (to_rep2
                                         (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int element_type) Int Int
  (Array Int element_type) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int element_type)) (b (Array Int element_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq4 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int element_type)) (b (Array Int element_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq4 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep2 (select a (+ i 1))) (to_rep2 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int element_type)) (b (Array Int element_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq4 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep2 (select b (+ i 1))) (to_rep2 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun to_rep3 (integer) Int)

(declare-fun of_rep3 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                             (of_rep3 x))) )))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes () ((t3s__ref (mk_t3s__ref (t3s__content integer)))))
(define-fun t3s__ref___projection ((a t3s__ref)) integer (t3s__content a))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last1 (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep3 (first (mk f l))) f) (= (to_rep3 (last1 (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property range_first range_last low)
                   (dynamic_property range_first range_last high))))))

(declare-datatypes ()
((us_t (mk___t (elts (Array Int element_type))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int element_type) (elts a))

(define-fun of_array ((a (Array Int element_type)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep3 (first (rt a))))

(define-fun last2 ((a us_t)) Int (to_rep3 (last1 (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last2 a))
                                  (+ (- (last2 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int element_type)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int element_type)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int element_type)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int element_type))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int element_type))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert
  (forall ((a (Array Int element_type))) (<= 0 (object__alignment a))))

(define-fun bool_eq6 ((x us_t)
  (y us_t)) Bool (bool_eq4 (elts x) (to_rep3 (first (rt x)))
                 (to_rep3 (last1 (rt x))) (elts y) (to_rep3 (first (rt y)))
                 (to_rep3 (last1 (rt y)))))

(declare-fun user_eq5 (us_t us_t) Bool)

(declare-fun dummy5 () us_t)

(declare-datatypes () ((t4s__ref (mk_t4s__ref (t4s__content us_t)))))
(define-fun t4s__ref___projection ((a t4s__ref)) us_t (t4s__content a))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__bounded_queue_v1__queue_type__max_size positive)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) positive 
  (rec__bounded_queue_v1__queue_type__max_size a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__bounded_queue_v1__queue_type__count natural)(rec__bounded_queue_v1__queue_type__front positive)(rec__bounded_queue_v1__queue_type__rear positive)(rec__bounded_queue_v1__queue_type__items us_t)))))
(define-fun us_split_fields_Count__projection ((a us_split_fields)) natural 
  (rec__bounded_queue_v1__queue_type__count a))

(define-fun us_split_fields_Front__projection ((a us_split_fields)) positive 
  (rec__bounded_queue_v1__queue_type__front a))

(define-fun us_split_fields_Rear__projection ((a us_split_fields)) positive 
  (rec__bounded_queue_v1__queue_type__rear a))

(define-fun us_split_fields_Items__projection ((a us_split_fields)) us_t 
  (rec__bounded_queue_v1__queue_type__items a))

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

(define-fun bool_eq7 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (= (to_rep1
                           (rec__bounded_queue_v1__queue_type__max_size
                           (us_split_discrs1 a))) (to_rep1
                                                  (rec__bounded_queue_v1__queue_type__max_size
                                                  (us_split_discrs1 b))))
                        (= (to_rep
                           (rec__bounded_queue_v1__queue_type__count
                           (us_split_fields1 a))) (to_rep
                                                  (rec__bounded_queue_v1__queue_type__count
                                                  (us_split_fields1 b)))))
                        (= (to_rep1
                           (rec__bounded_queue_v1__queue_type__front
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__bounded_queue_v1__queue_type__front
                                                  (us_split_fields1 b)))))
                        (= (to_rep1
                           (rec__bounded_queue_v1__queue_type__rear
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__bounded_queue_v1__queue_type__rear
                                                  (us_split_fields1 b)))))
                        (= (bool_eq6
                           (rec__bounded_queue_v1__queue_type__items
                           (us_split_fields1 a))
                           (rec__bounded_queue_v1__queue_type__items
                           (us_split_fields1 b))) true))
                   true false))

(declare-fun user_eq6 (us_rep us_rep) Bool)

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

(declare-fun bounded_queue_v1__queue_type__max_size__first__bit () Int)

(declare-fun bounded_queue_v1__queue_type__max_size__last__bit () Int)

(declare-fun bounded_queue_v1__queue_type__max_size__position () Int)

;; bounded_queue_v1__queue_type__max_size__first__bit_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__max_size__first__bit))

;; bounded_queue_v1__queue_type__max_size__last__bit_axiom
  (assert
  (< bounded_queue_v1__queue_type__max_size__first__bit bounded_queue_v1__queue_type__max_size__last__bit))

;; bounded_queue_v1__queue_type__max_size__position_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__max_size__position))

(declare-fun bounded_queue_v1__queue_type__count__first__bit () Int)

(declare-fun bounded_queue_v1__queue_type__count__last__bit () Int)

(declare-fun bounded_queue_v1__queue_type__count__position () Int)

;; bounded_queue_v1__queue_type__count__first__bit_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__count__first__bit))

;; bounded_queue_v1__queue_type__count__last__bit_axiom
  (assert
  (< bounded_queue_v1__queue_type__count__first__bit bounded_queue_v1__queue_type__count__last__bit))

;; bounded_queue_v1__queue_type__count__position_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__count__position))

(declare-fun bounded_queue_v1__queue_type__front__first__bit () Int)

(declare-fun bounded_queue_v1__queue_type__front__last__bit () Int)

(declare-fun bounded_queue_v1__queue_type__front__position () Int)

;; bounded_queue_v1__queue_type__front__first__bit_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__front__first__bit))

;; bounded_queue_v1__queue_type__front__last__bit_axiom
  (assert
  (< bounded_queue_v1__queue_type__front__first__bit bounded_queue_v1__queue_type__front__last__bit))

;; bounded_queue_v1__queue_type__front__position_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__front__position))

(declare-fun bounded_queue_v1__queue_type__rear__first__bit () Int)

(declare-fun bounded_queue_v1__queue_type__rear__last__bit () Int)

(declare-fun bounded_queue_v1__queue_type__rear__position () Int)

;; bounded_queue_v1__queue_type__rear__first__bit_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__rear__first__bit))

;; bounded_queue_v1__queue_type__rear__last__bit_axiom
  (assert
  (< bounded_queue_v1__queue_type__rear__first__bit bounded_queue_v1__queue_type__rear__last__bit))

;; bounded_queue_v1__queue_type__rear__position_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__rear__position))

(declare-fun bounded_queue_v1__queue_type__items__first__bit () Int)

(declare-fun bounded_queue_v1__queue_type__items__last__bit () Int)

(declare-fun bounded_queue_v1__queue_type__items__position () Int)

;; bounded_queue_v1__queue_type__items__first__bit_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__items__first__bit))

;; bounded_queue_v1__queue_type__items__last__bit_axiom
  (assert
  (< bounded_queue_v1__queue_type__items__first__bit bounded_queue_v1__queue_type__items__last__bit))

;; bounded_queue_v1__queue_type__items__position_axiom
  (assert (<= 0 bounded_queue_v1__queue_type__items__position))

(declare-fun dummy6 () us_rep)

(declare-datatypes ()
((queue_type__ref (mk_queue_type__ref (queue_type__content us_rep)))))
(define-fun queue_type__ref___projection ((a queue_type__ref)) us_rep 
  (queue_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_157 us_rep)
  (temp___is_init_154 Bool) (temp___skip_constant_155 Bool)
  (temp___do_toplevel_156 Bool)) Bool (let ((temp___158 (rec__bounded_queue_v1__queue_type__max_size
                                                        (us_split_discrs1
                                                        temp___expr_157))))
                                      (and (dynamic_property1 1
                                      (to_rep1 temp___158)
                                      (first1
                                      (rec__bounded_queue_v1__queue_type__items
                                      (us_split_fields1 temp___expr_157)))
                                      (last2
                                      (rec__bounded_queue_v1__queue_type__items
                                      (us_split_fields1 temp___expr_157))))
                                      (and
                                      (= (first1
                                         (rec__bounded_queue_v1__queue_type__items
                                         (us_split_fields1 temp___expr_157))) 1)
                                      (= (last2
                                         (rec__bounded_queue_v1__queue_type__items
                                         (us_split_fields1 temp___expr_157))) 
                                      (to_rep1 temp___158))))))

(declare-fun full (us_rep) Bool)

(declare-fun full__function_guard (Bool us_rep) Bool)

;; full__post_axiom
  (assert true)

(declare-fun empty (us_rep) Bool)

(declare-fun empty__function_guard (Bool us_rep) Bool)

;; empty__post_axiom
  (assert true)

(declare-fun size (us_rep) Int)

(declare-fun size__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant2 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

;; size__post_axiom
  (assert
  (forall ((queue us_rep))
  (! (=> (dynamic_invariant1 queue true true true)
     (let ((result (size queue)))
     (=> (size__function_guard result queue) (dynamic_invariant2 result true
     false true)))) :pattern ((size queue)) )))

(declare-fun last_element (us_rep) Int)

(declare-fun last_element__function_guard (Int us_rep) Bool)

;; last_element__post_axiom
  (assert
  (forall ((queue us_rep))
  (! (and (empty__function_guard (empty queue) queue)
     (=>
     (and (dynamic_invariant1 queue true true true)
     (not (= (empty queue) true)))
     (let ((result (last_element queue)))
     (=> (last_element__function_guard result queue) (dynamic_invariant
     result true false true))))) :pattern ((last_element queue)) )))

(declare-fun queue__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun item () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant3 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun queue__split_fields () natural)

(declare-fun queue__split_fields1 () positive)

(declare-fun queue__split_fields2 () positive)

(declare-fun queue__split_fields3 () (Array Int element_type))

(declare-fun queue__split_fields4 () t)

;; H
  (assert (dynamic_invariant1
  (mk___rep queue__split_discrs
  (mk___split_fields queue__split_fields queue__split_fields1
  queue__split_fields2 (mk___t queue__split_fields3 queue__split_fields4)))
  true false true))

;; H
  (assert (in_range3 item))

;; H
  (assert (full__function_guard
  (full
  (mk___rep queue__split_discrs
  (mk___split_fields queue__split_fields queue__split_fields1
  queue__split_fields2 (mk___t queue__split_fields3 queue__split_fields4))))
  (mk___rep queue__split_discrs
  (mk___split_fields queue__split_fields queue__split_fields1
  queue__split_fields2 (mk___t queue__split_fields3 queue__split_fields4)))))

;; H
  (assert
  (not
  (= (full
     (mk___rep queue__split_discrs
     (mk___split_fields queue__split_fields queue__split_fields1
     queue__split_fields2 (mk___t queue__split_fields3 queue__split_fields4)))) true)))

(assert
;; WP_parameter_def
 ;; File "bounded_queue_v1.ads", line 29, characters 0-0
  (not
  (not
  (= (to_rep1
     (rec__bounded_queue_v1__queue_type__max_size queue__split_discrs)) 0))))
(check-sat)
