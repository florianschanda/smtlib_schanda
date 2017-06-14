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

(declare-sort value 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 23) x) (<= x 69)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (value value) Bool)

(declare-fun dummy () value)

(declare-datatypes () ((value__ref (mk_value__ref (value__content value)))))
(define-fun value__ref___projection ((a value__ref)) value (value__content a))

(define-fun dynamic_invariant ((temp___expr_148 Int)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (or (= temp___is_init_145 true)
                                      (<= (- 23) 69)) (in_range
                                      temp___expr_148)))

(declare-fun to_rep (value) Int)

(declare-fun of_rep (Int) value)

;; inversion_axiom
  (assert
  (forall ((x value)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x value)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int value))))))
(declare-fun slide ((Array Int value) Int Int) (Array Int value))

;; slide_eq
  (assert
  (forall ((a (Array Int value)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int value)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int value) Int Int (Array Int value) Int
  Int) (Array Int value))

;; concat_def
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (value Int) (Array Int value))

;; singleton_def
  (assert
  (forall ((v value))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int value)) (a__first Int) (a__last Int)
  (b (Array Int value)) (b__first Int)
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
  (forall ((a (Array Int value)) (b (Array Int value)))
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

(declare-fun compare ((Array Int value) Int Int (Array Int value) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
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
  (forall ((a (Array Int value)) (b (Array Int value)))
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

(declare-sort index 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1001)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (index index) Bool)

(declare-fun dummy1 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-fun to_rep1 (index) Int)

(declare-fun of_rep1 (Int) index)

;; inversion_axiom
  (assert
  (forall ((x index))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x index)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun dummy2 () (Array Int value))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int value)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int value)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int value)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int value))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int value))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int value))) (<= 0 (object__alignment a))))

(declare-fun user_eq2 ((Array Int value) (Array Int value)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__arrays_in_records__record_with_arrays__counter index)(rec__arrays_in_records__record_with_arrays__first_array (Array Int value))(rec__arrays_in_records__record_with_arrays__second_array (Array Int value))))))
(define-fun us_split_fields_Counter__projection ((a us_split_fields)) index 
  (rec__arrays_in_records__record_with_arrays__counter a))

(define-fun us_split_fields_First_Array__projection ((a us_split_fields)) (Array Int value) 
  (rec__arrays_in_records__record_with_arrays__first_array a))

(define-fun us_split_fields_Second_Array__projection ((a us_split_fields)) (Array Int value) 
  (rec__arrays_in_records__record_with_arrays__second_array a))

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
                        (and
                        (= (to_rep1
                           (rec__arrays_in_records__record_with_arrays__counter
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__arrays_in_records__record_with_arrays__counter
                                                  (us_split_fields1 b))))
                        (= (bool_eq1
                           (rec__arrays_in_records__record_with_arrays__first_array
                           (us_split_fields1 a)) 0 1001
                           (rec__arrays_in_records__record_with_arrays__first_array
                           (us_split_fields1 b)) 0 1001) true))
                        (= (bool_eq1
                           (rec__arrays_in_records__record_with_arrays__second_array
                           (us_split_fields1 a)) 0 1001
                           (rec__arrays_in_records__record_with_arrays__second_array
                           (us_split_fields1 b)) 0 1001) true))
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

(declare-fun arrays_in_records__record_with_arrays__counter__first__bit () Int)

(declare-fun arrays_in_records__record_with_arrays__counter__last__bit () Int)

(declare-fun arrays_in_records__record_with_arrays__counter__position () Int)

;; arrays_in_records__record_with_arrays__counter__first__bit_axiom
  (assert (<= 0 arrays_in_records__record_with_arrays__counter__first__bit))

;; arrays_in_records__record_with_arrays__counter__last__bit_axiom
  (assert
  (< arrays_in_records__record_with_arrays__counter__first__bit arrays_in_records__record_with_arrays__counter__last__bit))

;; arrays_in_records__record_with_arrays__counter__position_axiom
  (assert (<= 0 arrays_in_records__record_with_arrays__counter__position))

(declare-fun arrays_in_records__record_with_arrays__first_array__first__bit () Int)

(declare-fun arrays_in_records__record_with_arrays__first_array__last__bit () Int)

(declare-fun arrays_in_records__record_with_arrays__first_array__position () Int)

;; arrays_in_records__record_with_arrays__first_array__first__bit_axiom
  (assert
  (<= 0 arrays_in_records__record_with_arrays__first_array__first__bit))

;; arrays_in_records__record_with_arrays__first_array__last__bit_axiom
  (assert
  (< arrays_in_records__record_with_arrays__first_array__first__bit arrays_in_records__record_with_arrays__first_array__last__bit))

;; arrays_in_records__record_with_arrays__first_array__position_axiom
  (assert
  (<= 0 arrays_in_records__record_with_arrays__first_array__position))

(declare-fun arrays_in_records__record_with_arrays__second_array__first__bit () Int)

(declare-fun arrays_in_records__record_with_arrays__second_array__last__bit () Int)

(declare-fun arrays_in_records__record_with_arrays__second_array__position () Int)

;; arrays_in_records__record_with_arrays__second_array__first__bit_axiom
  (assert
  (<= 0 arrays_in_records__record_with_arrays__second_array__first__bit))

;; arrays_in_records__record_with_arrays__second_array__last__bit_axiom
  (assert
  (< arrays_in_records__record_with_arrays__second_array__first__bit 
  arrays_in_records__record_with_arrays__second_array__last__bit))

;; arrays_in_records__record_with_arrays__second_array__position_axiom
  (assert
  (<= 0 arrays_in_records__record_with_arrays__second_array__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((record_with_arrays__ref
 (mk_record_with_arrays__ref (record_with_arrays__content us_rep)))))
(define-fun record_with_arrays__ref___projection ((a record_with_arrays__ref)) us_rep 
  (record_with_arrays__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 0 1001)) (in_range1
                                      temp___expr_142)))

(declare-fun a__split_fields () index)

(declare-fun a__split_fields1 () (Array Int value))

(declare-fun a__split_fields2 () (Array Int value))

(declare-fun tmp () Int)

(declare-fun o () value)

(declare-fun o1 () (Array Int value))

(declare-fun o2 () index)

(declare-fun o3 () (Array Int value))

(declare-fun o4 () (Array Int value))

(declare-fun temp___321 () index)

(declare-fun temp___3211 () (Array Int value))

(declare-fun temp___3212 () (Array Int value))

(declare-fun o5 () value)

(declare-fun o6 () (Array Int value))

(declare-fun o7 () index)

(declare-fun o8 () (Array Int value))

(declare-fun o9 () (Array Int value))

(declare-fun temp___324 () index)

(declare-fun temp___3241 () (Array Int value))

(declare-fun temp___3242 () (Array Int value))

(declare-fun result () Int)

(declare-fun tmp1 () Int)

(declare-fun result1 () index)

(declare-fun result2 () (Array Int value))

(declare-fun result3 () (Array Int value))

(declare-fun a__split_fields3 () index)

(declare-fun a__split_fields4 () (Array Int value))

(declare-fun a__split_fields5 () (Array Int value))

(declare-fun result4 () index)

(declare-fun result5 () (Array Int value))

(declare-fun result6 () (Array Int value))

(declare-fun a__split_fields6 () index)

(declare-fun a__split_fields7 () (Array Int value))

(declare-fun a__split_fields8 () (Array Int value))

(declare-fun a__split_fields9 () index)

(declare-fun a__split_fields10 () (Array Int value))

(declare-fun a__split_fields11 () (Array Int value))

(declare-fun tmp2 () Int)

(declare-fun a__split_fields12 () index)

(declare-fun a__split_fields13 () (Array Int value))

(declare-fun a__split_fields14 () (Array Int value))

(declare-fun tmp3 () Int)

;; H
  (assert (=> (<= (- 23) 69) (in_range tmp)))

;; H
  (assert (= result tmp))

;; H
  (assert (= tmp1 (to_rep (select a__split_fields1 17))))

;; H
  (assert (= (to_rep o) (to_rep (select a__split_fields1 5))))

;; H
  (assert (= o1 (store a__split_fields1 17 o)))

;; H
  (assert (= a__split_fields o2))

;; H
  (assert (= o1 o3))

;; H
  (assert (= a__split_fields2 o4))

;; H
  (assert (= temp___321 o2))

;; H
  (assert (= temp___3211 o3))

;; H
  (assert (= temp___3212 o4))

;; H
  (assert (= result1 a__split_fields))

;; H
  (assert (= result2 a__split_fields1))

;; H
  (assert (= result3 a__split_fields2))

;; H
  (assert (= temp___321 a__split_fields3))

;; H
  (assert (= temp___3211 a__split_fields4))

;; H
  (assert (= temp___3212 a__split_fields5))

;; H
  (assert (= (to_rep o5) tmp1))

;; H
  (assert (= o6 (store a__split_fields4 5 o5)))

;; H
  (assert (= a__split_fields3 o7))

;; H
  (assert (= o6 o8))

;; H
  (assert (= a__split_fields5 o9))

;; H
  (assert (= temp___324 o7))

;; H
  (assert (= temp___3241 o8))

;; H
  (assert (= temp___3242 o9))

;; H
  (assert (= result4 a__split_fields3))

;; H
  (assert (= result5 a__split_fields4))

;; H
  (assert (= result6 a__split_fields5))

;; H
  (assert (= temp___324 a__split_fields6))

;; H
  (assert (= temp___3241 a__split_fields7))

;; H
  (assert (= temp___3242 a__split_fields8))

;; H
  (assert (= tmp2 tmp1))

;; H
  (assert (= a__split_fields9 a__split_fields6))

;; H
  (assert (= a__split_fields10 a__split_fields7))

;; H
  (assert (= a__split_fields11 a__split_fields8))

;; H
  (assert (= tmp3 tmp1))

;; H
  (assert (= a__split_fields12 a__split_fields6))

;; H
  (assert (= a__split_fields13 a__split_fields7))

;; H
  (assert (= a__split_fields14 a__split_fields8))

(assert
;; WP_parameter_def
 ;; File "arrays_in_records.adb", line 168, characters 0-0
  (not
  (not
  (= (bool_eq3
     (mk___rep
     (mk___split_fields a__split_fields9 a__split_fields10 a__split_fields11))
     (mk___rep
     (mk___split_fields a__split_fields a__split_fields1 a__split_fields2))) true))))
(check-sat)
