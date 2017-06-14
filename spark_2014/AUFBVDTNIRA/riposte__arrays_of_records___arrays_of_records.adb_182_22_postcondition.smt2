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

(declare-sort index 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 1001)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (index index) Bool)

(declare-fun dummy () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-sort value 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 23) x) (<= x 69)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (value value) Bool)

(declare-fun dummy1 () value)

(declare-datatypes () ((value__ref (mk_value__ref (value__content value)))))
(define-fun value__ref___projection ((a value__ref)) value (value__content a))

(define-fun dynamic_invariant ((temp___expr_148 Int)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (or (= temp___is_init_145 true)
                                      (<= (- 23) 69)) (in_range1
                                      temp___expr_148)))

(declare-fun to_rep (value) Int)

(declare-fun of_rep (Int) value)

;; inversion_axiom
  (assert
  (forall ((x value)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x value)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__arrays_of_records__basic_record__flag Bool)(rec__arrays_of_records__basic_record__first_value value)(rec__arrays_of_records__basic_record__second_value value)))))
(define-fun us_split_fields_Flag__projection ((a us_split_fields)) Bool 
  (rec__arrays_of_records__basic_record__flag a))

(define-fun us_split_fields_First_Value__projection ((a us_split_fields)) value 
  (rec__arrays_of_records__basic_record__first_value a))

(define-fun us_split_fields_Second_Value__projection ((a us_split_fields)) value 
  (rec__arrays_of_records__basic_record__second_value a))

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
                        (and
                        (= (rec__arrays_of_records__basic_record__flag
                           (us_split_fields1 a)) (rec__arrays_of_records__basic_record__flag
                                                 (us_split_fields1 b)))
                        (= (to_rep
                           (rec__arrays_of_records__basic_record__first_value
                           (us_split_fields1 a))) (to_rep
                                                  (rec__arrays_of_records__basic_record__first_value
                                                  (us_split_fields1 b)))))
                        (= (to_rep
                           (rec__arrays_of_records__basic_record__second_value
                           (us_split_fields1 a))) (to_rep
                                                  (rec__arrays_of_records__basic_record__second_value
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

(declare-fun arrays_of_records__basic_record__flag__first__bit () Int)

(declare-fun arrays_of_records__basic_record__flag__last__bit () Int)

(declare-fun arrays_of_records__basic_record__flag__position () Int)

;; arrays_of_records__basic_record__flag__first__bit_axiom
  (assert (<= 0 arrays_of_records__basic_record__flag__first__bit))

;; arrays_of_records__basic_record__flag__last__bit_axiom
  (assert
  (< arrays_of_records__basic_record__flag__first__bit arrays_of_records__basic_record__flag__last__bit))

;; arrays_of_records__basic_record__flag__position_axiom
  (assert (<= 0 arrays_of_records__basic_record__flag__position))

(declare-fun arrays_of_records__basic_record__first_value__first__bit () Int)

(declare-fun arrays_of_records__basic_record__first_value__last__bit () Int)

(declare-fun arrays_of_records__basic_record__first_value__position () Int)

;; arrays_of_records__basic_record__first_value__first__bit_axiom
  (assert (<= 0 arrays_of_records__basic_record__first_value__first__bit))

;; arrays_of_records__basic_record__first_value__last__bit_axiom
  (assert
  (< arrays_of_records__basic_record__first_value__first__bit arrays_of_records__basic_record__first_value__last__bit))

;; arrays_of_records__basic_record__first_value__position_axiom
  (assert (<= 0 arrays_of_records__basic_record__first_value__position))

(declare-fun arrays_of_records__basic_record__second_value__first__bit () Int)

(declare-fun arrays_of_records__basic_record__second_value__last__bit () Int)

(declare-fun arrays_of_records__basic_record__second_value__position () Int)

;; arrays_of_records__basic_record__second_value__first__bit_axiom
  (assert (<= 0 arrays_of_records__basic_record__second_value__first__bit))

;; arrays_of_records__basic_record__second_value__last__bit_axiom
  (assert
  (< arrays_of_records__basic_record__second_value__first__bit arrays_of_records__basic_record__second_value__last__bit))

;; arrays_of_records__basic_record__second_value__position_axiom
  (assert (<= 0 arrays_of_records__basic_record__second_value__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((basic_record__ref (mk_basic_record__ref (basic_record__content us_rep)))))
(define-fun basic_record__ref___projection ((a basic_record__ref)) us_rep 
  (basic_record__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int us_rep) Int Int (Array Int us_rep) Int
  Int) (Array Int us_rep))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (us_rep Int) (Array Int us_rep))

;; singleton_def
  (assert
  (forall ((v us_rep))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (bool_eq2 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq2 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 1001)) (in_range
                                      temp___expr_142)))

(declare-fun a () (Array Int us_rep))

(declare-fun tmp () Int)

(declare-fun o () value)

(declare-fun o1 () Bool)

(declare-fun o2 () value)

(declare-fun o3 () value)

(declare-fun o4 () Bool)

(declare-fun o5 () value)

(declare-fun o6 () value)

(declare-fun o7 () (Array Int us_rep))

(declare-fun o8 () value)

(declare-fun o9 () Bool)

(declare-fun o10 () value)

(declare-fun o11 () value)

(declare-fun o12 () Bool)

(declare-fun o13 () value)

(declare-fun o14 () value)

(declare-fun o15 () (Array Int us_rep))

(declare-fun result () Int)

(declare-fun tmp1 () Int)

(declare-fun result1 () (Array Int us_rep))

(declare-fun a1 () (Array Int us_rep))

(declare-fun result2 () (Array Int us_rep))

(declare-fun a2 () (Array Int us_rep))

(declare-fun a3 () (Array Int us_rep))

(declare-fun tmp2 () Int)

(declare-fun a4 () (Array Int us_rep))

(declare-fun tmp3 () Int)

;; H
  (assert (=> (<= (- 23) 69) (in_range1 tmp)))

;; H
  (assert (= result tmp))

;; H
  (assert
  (= tmp1 (to_rep
          (rec__arrays_of_records__basic_record__first_value
          (us_split_fields1 (select a 17))))))

;; H
  (assert
  (= (to_rep o) (to_rep
                (rec__arrays_of_records__basic_record__first_value
                (us_split_fields1 (select a 5))))))

;; H
  (assert
  (= (rec__arrays_of_records__basic_record__flag
     (us_split_fields1 (select a 17))) o1))

;; H
  (assert (= o o2))

;; H
  (assert
  (= (rec__arrays_of_records__basic_record__second_value
     (us_split_fields1 (select a 17))) o3))

;; H
  (assert (= o4 o1))

;; H
  (assert (= o5 o2))

;; H
  (assert (= o6 o3))

;; H
  (assert (= o7 (store a 17 (mk___rep (mk___split_fields o4 o5 o6)))))

;; H
  (assert (= result1 a))

;; H
  (assert (= a1 o7))

;; H
  (assert (= (to_rep o8) tmp1))

;; H
  (assert
  (= (rec__arrays_of_records__basic_record__flag
     (us_split_fields1 (select a1 5))) o9))

;; H
  (assert (= o8 o10))

;; H
  (assert
  (= (rec__arrays_of_records__basic_record__second_value
     (us_split_fields1 (select a1 5))) o11))

;; H
  (assert (= o12 o9))

;; H
  (assert (= o13 o10))

;; H
  (assert (= o14 o11))

;; H
  (assert (= o15 (store a1 5 (mk___rep (mk___split_fields o12 o13 o14)))))

;; H
  (assert (= result2 a1))

;; H
  (assert (= a2 o15))

;; H
  (assert (= tmp2 tmp1))

;; H
  (assert (= a2 a3))

;; H
  (assert (= tmp3 tmp1))

;; H
  (assert (= a4 a2))

(assert
;; WP_parameter_def
 ;; File "arrays_of_records.adb", line 165, characters 0-0
  (not (not (= (bool_eq3 a3 0 1001 a 0 1001) true))))
(check-sat)
