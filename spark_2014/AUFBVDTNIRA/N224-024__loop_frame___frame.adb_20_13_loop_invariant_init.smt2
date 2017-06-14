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

(declare-sort index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index index) Bool)

(declare-fun dummy1 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__frame__rec__c1 natural)(rec__frame__rec__c2 natural)))))
(define-fun us_split_fields_C1__projection ((a us_split_fields)) natural 
  (rec__frame__rec__c1 a))

(define-fun us_split_fields_C2__projection ((a us_split_fields)) natural 
  (rec__frame__rec__c2 a))

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
                        (= (to_rep
                           (rec__frame__rec__c1 (us_split_fields1 a))) 
                        (to_rep (rec__frame__rec__c1 (us_split_fields1 b))))
                        (= (to_rep
                           (rec__frame__rec__c2 (us_split_fields1 a))) 
                        (to_rep (rec__frame__rec__c2 (us_split_fields1 b)))))
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

(declare-fun frame__rec__c1__first__bit () Int)

(declare-fun frame__rec__c1__last__bit () Int)

(declare-fun frame__rec__c1__position () Int)

;; frame__rec__c1__first__bit_axiom
  (assert (<= 0 frame__rec__c1__first__bit))

;; frame__rec__c1__last__bit_axiom
  (assert (< frame__rec__c1__first__bit frame__rec__c1__last__bit))

;; frame__rec__c1__position_axiom
  (assert (<= 0 frame__rec__c1__position))

(declare-fun frame__rec__c2__first__bit () Int)

(declare-fun frame__rec__c2__last__bit () Int)

(declare-fun frame__rec__c2__position () Int)

;; frame__rec__c2__first__bit_axiom
  (assert (<= 0 frame__rec__c2__first__bit))

;; frame__rec__c2__last__bit_axiom
  (assert (< frame__rec__c2__first__bit frame__rec__c2__last__bit))

;; frame__rec__c2__position_axiom
  (assert (<= 0 frame__rec__c2__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((rec____ref (mk_rec____ref (rec____content us_rep)))))
(define-fun rec____ref___projection ((a rec____ref)) us_rep (rec____content
                                                            a))

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
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (bool_eq2 (select a temp___idx_133)
                              (select b (+ (- b__first a__first) temp___idx_133))) true))))
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
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq2 (select a temp___idx_133)
     (select b (+ (- b__first a__first) temp___idx_133))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(define-fun dynamic_invariant1 ((temp___expr_137 Int)
  (temp___is_init_134 Bool) (temp___skip_constant_135 Bool)
  (temp___do_toplevel_136 Bool)) Bool (=>
                                      (or (= temp___is_init_134 true)
                                      (<= 1 10)) (in_range2 temp___expr_137)))

(declare-fun a () (Array Int us_rep))

(declare-fun j () Int)

(declare-fun o () natural)

(declare-fun o1 () natural)

(declare-fun o2 () natural)

(declare-fun o3 () natural)

(declare-fun o4 () natural)

(declare-fun o5 () (Array Int us_rep))

(declare-fun result () Int)

(declare-fun j1 () Int)

(declare-fun result1 () (Array Int us_rep))

(declare-fun a1 () (Array Int us_rep))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref j)))

;; H
  (assert (= j1 1))

;; H
  (assert (<= 1 j1))

;; H
  (assert (<= j1 10))

;; H
  (assert
  (= (to_rep o) (to_rep
                (rec__frame__rec__c2 (us_split_fields1 (select a j1))))))

;; H
  (assert (= o o1))

;; H
  (assert (= (rec__frame__rec__c2 (us_split_fields1 (select a j1))) o2))

;; H
  (assert (= o3 o1))

;; H
  (assert (= o4 o2))

;; H
  (assert (= o5 (store a j1 (mk___rep (mk___split_fields o3 o4)))))

;; H
  (assert (= (mk_map__ref result1) (mk_map__ref a)))

;; H
  (assert (= a1 o5))

(declare-fun k () Int)

;; H
  (assert (<= 1 k))

;; H
  (assert (<= k j1))

(assert
;; WP_parameter_def
 ;; File "frame.ads", line 10, characters 0-0
  (not
  (= (to_rep (rec__frame__rec__c1 (us_split_fields1 (select a1 k)))) 
  (to_rep (rec__frame__rec__c2 (us_split_fields1 (select a k)))))))
(check-sat)
