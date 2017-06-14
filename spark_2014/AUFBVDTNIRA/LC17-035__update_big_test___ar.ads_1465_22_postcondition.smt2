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

(declare-sort it1 0)

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (it1 it1) Bool)

(declare-fun dummy () it1)

(declare-datatypes () ((it1__ref (mk_it1__ref (it1__content it1)))))
(define-fun it1__ref___projection ((a it1__ref)) it1 (it1__content a))

(define-fun dynamic_invariant ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= 1 10)) (in_range temp___expr_152)))

(declare-sort et1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (et1 et1) Bool)

(declare-fun dummy1 () et1)

(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))

(define-fun dynamic_invariant1 ((temp___expr_176 Int)
  (temp___is_init_173 Bool) (temp___skip_constant_174 Bool)
  (temp___do_toplevel_175 Bool)) Bool (=>
                                      (or (= temp___is_init_173 true)
                                      (<= 0 99)) (in_range1 temp___expr_176)))

(declare-fun to_rep (et1) Int)

(declare-fun of_rep (Int) et1)

;; inversion_axiom
  (assert
  (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x et1)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort enum2t 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 5)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (enum2t enum2t) Bool)

(declare-fun dummy2 () enum2t)

(declare-datatypes ()
((enum2t__ref (mk_enum2t__ref (enum2t__content enum2t)))))
(define-fun enum2t__ref___projection ((a enum2t__ref)) enum2t (enum2t__content
                                                              a))

(define-fun dynamic_invariant2 ((temp___expr_206 Int)
  (temp___is_init_203 Bool) (temp___skip_constant_204 Bool)
  (temp___do_toplevel_205 Bool)) Bool (=>
                                      (or (= temp___is_init_203 true)
                                      (<= 0 5)) (in_range2 temp___expr_206)))

(declare-fun to_rep1 (enum2t) Int)

(declare-fun of_rep1 (Int) enum2t)

;; inversion_axiom
  (assert
  (forall ((x enum2t))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x enum2t)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int et1))))))
(declare-fun slide ((Array Int et1) Int Int) (Array Int et1))

;; slide_eq
  (assert
  (forall ((a (Array Int et1)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int et1)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int et1) Int Int (Array Int et1) Int
  Int) (Array Int et1))

;; concat_def
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (et1 Int) (Array Int et1))

;; singleton_def
  (assert
  (forall ((v et1))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int et1)) (a__first Int) (a__last Int)
  (b (Array Int et1)) (b__first Int)
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
  (forall ((a (Array Int et1)) (b (Array Int et1)))
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

(declare-fun compare ((Array Int et1) Int Int (Array Int et1) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
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
  (forall ((a (Array Int et1)) (b (Array Int et1)))
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

(declare-fun dummy3 () (Array Int et1))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int et1)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int et1)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int et1)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int et1))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert (forall ((a (Array Int et1))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int et1))) (<= 0 (object__alignment a))))

(declare-fun user_eq3 ((Array Int et1) (Array Int et1)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__ar__rofa1__s1 (Array Int et1))(rec__ar__rofa1__t1 enum2t)))))
(define-fun us_split_fields_S1__projection ((a us_split_fields)) (Array Int et1) 
  (rec__ar__rofa1__s1 a))

(define-fun us_split_fields_T1__projection ((a us_split_fields)) enum2t 
  (rec__ar__rofa1__t1 a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_6__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_6__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq4 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (bool_eq3
                           (rec__ar__rofa1__s1 (us_split_fields1 a)) 1 10
                           (rec__ar__rofa1__s1 (us_split_fields1 b)) 1 10) true)
                        (= (to_rep1
                           (rec__ar__rofa1__t1 (us_split_fields1 a))) 
                        (to_rep1 (rec__ar__rofa1__t1 (us_split_fields1 b)))))
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

(declare-fun ar__rofa1__s1__first__bit () Int)

(declare-fun ar__rofa1__s1__last__bit () Int)

(declare-fun ar__rofa1__s1__position () Int)

;; ar__rofa1__s1__first__bit_axiom
  (assert (<= 0 ar__rofa1__s1__first__bit))

;; ar__rofa1__s1__last__bit_axiom
  (assert (< ar__rofa1__s1__first__bit ar__rofa1__s1__last__bit))

;; ar__rofa1__s1__position_axiom
  (assert (<= 0 ar__rofa1__s1__position))

(declare-fun ar__rofa1__t1__first__bit () Int)

(declare-fun ar__rofa1__t1__last__bit () Int)

(declare-fun ar__rofa1__t1__position () Int)

;; ar__rofa1__t1__first__bit_axiom
  (assert (<= 0 ar__rofa1__t1__first__bit))

;; ar__rofa1__t1__last__bit_axiom
  (assert (< ar__rofa1__t1__first__bit ar__rofa1__t1__last__bit))

;; ar__rofa1__t1__position_axiom
  (assert (<= 0 ar__rofa1__t1__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((rofa1__ref (mk_rofa1__ref (rofa1__content us_rep)))))
(define-fun rofa1__ref___projection ((a rofa1__ref)) us_rep (rofa1__content
                                                            a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun e () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun f () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun temp___3058 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___3060 (Array Int et1)))
  (forall ((temp___3061 Int) (temp___3062 Int))
  (let ((temp___3059 (temp___3058 temp___3060 temp___3061 temp___3062)))
  (forall ((temp___3063 Int))
  (ite (= temp___3063 temp___3061)
  (= (select temp___3059 temp___3063) (of_rep temp___3062))
  (= (select temp___3059 temp___3063) (select temp___3060 temp___3063))))))))

(declare-fun r__split_fields () (Array Int et1))

(declare-fun r__split_fields1 () enum2t)

(declare-fun o () enum2t)

(declare-fun o1 () (Array Int et1))

(declare-fun o2 () enum2t)

(declare-fun temp___7981 () (Array Int et1))

(declare-fun temp___79811 () enum2t)

(declare-fun o3 () et1)

(declare-fun o4 () (Array Int et1))

(declare-fun o5 () (Array Int et1))

(declare-fun o6 () enum2t)

(declare-fun temp___7984 () (Array Int et1))

(declare-fun temp___79841 () enum2t)

(declare-fun result () (Array Int et1))

(declare-fun result1 () enum2t)

(declare-fun r__split_fields2 () (Array Int et1))

(declare-fun r__split_fields3 () enum2t)

(declare-fun result2 () (Array Int et1))

(declare-fun result3 () enum2t)

(declare-fun r__split_fields4 () (Array Int et1))

(declare-fun r__split_fields5 () enum2t)

(declare-fun r__split_fields6 () (Array Int et1))

(declare-fun r__split_fields7 () enum2t)

(declare-fun r__split_fields8 () (Array Int et1))

(declare-fun r__split_fields9 () enum2t)

;; H
  (assert (in_range i))

;; H
  (assert (in_range1 e))

;; H
  (assert (in_range2 f))

;; H
  (assert (= (to_rep1 o) f))

;; H
  (assert (= r__split_fields o1))

;; H
  (assert (= o o2))

;; H
  (assert (= temp___7981 o1))

;; H
  (assert (= temp___79811 o2))

;; H
  (assert (= result r__split_fields))

;; H
  (assert (= result1 r__split_fields1))

;; H
  (assert (= temp___7981 r__split_fields2))

;; H
  (assert (= temp___79811 r__split_fields3))

;; H
  (assert (= (to_rep o3) e))

;; H
  (assert (= o4 (store r__split_fields2 i o3)))

;; H
  (assert (= o4 o5))

;; H
  (assert (= r__split_fields3 o6))

;; H
  (assert (= temp___7984 o5))

;; H
  (assert (= temp___79841 o6))

;; H
  (assert (= result2 r__split_fields2))

;; H
  (assert (= result3 r__split_fields3))

;; H
  (assert (= temp___7984 r__split_fields4))

;; H
  (assert (= temp___79841 r__split_fields5))

;; H
  (assert (= r__split_fields6 r__split_fields4))

;; H
  (assert (= r__split_fields7 r__split_fields5))

;; H
  (assert (= r__split_fields8 r__split_fields4))

;; H
  (assert (= r__split_fields9 r__split_fields5))

(assert
;; WP_parameter_def
 ;; File "ar.ads", line 1458, characters 0-0
  (not
  (= (bool_eq4
     (mk___rep (mk___split_fields r__split_fields6 r__split_fields7))
     (mk___rep
     (mk___split_fields (temp___3058 r__split_fields i e) (of_rep1 f)))) true)))
(check-sat)
