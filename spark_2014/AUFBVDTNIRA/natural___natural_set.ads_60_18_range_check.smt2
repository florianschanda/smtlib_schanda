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

(declare-sort set_length 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (set_length set_length) Bool)

(declare-fun dummy1 () set_length)

(declare-datatypes ()
((set_length__ref (mk_set_length__ref (set_length__content set_length)))))
(define-fun set_length__ref___projection ((a set_length__ref)) set_length 
  (set_length__content a))

(declare-fun to_rep (set_length) Int)

(declare-fun of_rep (Int) set_length)

;; inversion_axiom
  (assert
  (forall ((x set_length))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x set_length)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort element_t 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 1) x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (element_t element_t) Bool)

(declare-fun dummy2 () element_t)

(declare-datatypes ()
((element_t__ref (mk_element_t__ref (element_t__content element_t)))))
(define-fun element_t__ref___projection ((a element_t__ref)) element_t 
  (element_t__content a))

(declare-fun to_rep1 (element_t) Int)

(declare-fun of_rep1 (Int) element_t)

;; inversion_axiom
  (assert
  (forall ((x element_t))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x element_t)) (! (in_range3
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort set_index 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (set_index set_index) Bool)

(declare-fun dummy3 () set_index)

(declare-datatypes ()
((set_index__ref (mk_set_index__ref (set_index__content set_index)))))
(define-fun set_index__ref___projection ((a set_index__ref)) set_index 
  (set_index__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int element_t))))))
(declare-fun slide ((Array Int element_t) Int Int) (Array Int element_t))

;; slide_eq
  (assert
  (forall ((a (Array Int element_t)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int element_t)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int element_t) Int Int (Array Int element_t) Int
  Int) (Array Int element_t))

;; concat_def
  (assert
  (forall ((a (Array Int element_t)) (b (Array Int element_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (element_t Int) (Array Int element_t))

;; singleton_def
  (assert
  (forall ((v element_t))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq4 ((a (Array Int element_t)) (a__first Int) (a__last Int)
  (b (Array Int element_t)) (b__first Int)
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
  (forall ((a (Array Int element_t)) (b (Array Int element_t)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep1 (select a temp___idx_132)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int element_t) Int Int (Array Int element_t) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int element_t)) (b (Array Int element_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq4 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int element_t)) (b (Array Int element_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq4 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int element_t)) (b (Array Int element_t)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq4 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy4 () (Array Int element_t))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int element_t)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int element_t)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int element_t)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int element_t))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int element_t))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int element_t))) (<= 0 (object__alignment a))))

(declare-fun user_eq4 ((Array Int element_t) (Array Int element_t)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__natural_set__t__len set_length)(rec__natural_set__t__m (Array Int element_t))))))
(define-fun us_split_fields_Len__projection ((a us_split_fields)) set_length 
  (rec__natural_set__t__len a))

(define-fun us_split_fields_M__projection ((a us_split_fields)) (Array Int element_t) 
  (rec__natural_set__t__m a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq5 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__natural_set__t__len (us_split_fields1 a))) 
                        (to_rep
                        (rec__natural_set__t__len (us_split_fields1 b))))
                        (= (bool_eq4
                           (rec__natural_set__t__m (us_split_fields1 a)) 1 10
                           (rec__natural_set__t__m (us_split_fields1 b)) 1
                           10) true))
                   true false))

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

(declare-fun natural_set__t__len__first__bit () Int)

(declare-fun natural_set__t__len__last__bit () Int)

(declare-fun natural_set__t__len__position () Int)

;; natural_set__t__len__first__bit_axiom
  (assert (<= 0 natural_set__t__len__first__bit))

;; natural_set__t__len__last__bit_axiom
  (assert (< natural_set__t__len__first__bit natural_set__t__len__last__bit))

;; natural_set__t__len__position_axiom
  (assert (<= 0 natural_set__t__len__position))

(declare-fun natural_set__t__m__first__bit () Int)

(declare-fun natural_set__t__m__last__bit () Int)

(declare-fun natural_set__t__m__position () Int)

;; natural_set__t__m__first__bit_axiom
  (assert (<= 0 natural_set__t__m__first__bit))

;; natural_set__t__m__last__bit_axiom
  (assert (< natural_set__t__m__first__bit natural_set__t__m__last__bit))

;; natural_set__t__m__position_axiom
  (assert (<= 0 natural_set__t__m__position))

(declare-fun dummy5 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun s () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(define-fun dynamic_invariant1 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= (- 1) 2147483647)) (in_range3
                                      temp___expr_142)))

(define-fun dynamic_invariant2 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 0 10)) (in_range2 temp___expr_136)))

(define-fun dynamic_invariant3 ((temp___expr_148 Int)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (or (= temp___is_init_145 true)
                                      (<= 1 10)) (in_range4 temp___expr_148)))

;; H
  (assert
  (<= (+ (to_rep (rec__natural_set__t__len (us_split_fields1 s))) 1) 10))

(assert
;; WP_parameter_def
 ;; File "natural_set.ads", line 19, characters 0-0
  (not
  (<= 1 (+ (to_rep (rec__natural_set__t__len (us_split_fields1 s))) 1))))
(check-sat)
