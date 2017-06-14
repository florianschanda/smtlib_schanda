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

(declare-sort index_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (index_type index_type) Bool)

(declare-fun dummy () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 1 100)) (in_range1
                                      temp___expr_142)))

(declare-sort contents_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 1000) x) (<= x 1000)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (contents_type contents_type) Bool)

(declare-fun dummy1 () contents_type)

(declare-datatypes ()
((contents_type__ref
 (mk_contents_type__ref (contents_type__content contents_type)))))
(define-fun contents_type__ref___projection ((a contents_type__ref)) contents_type 
  (contents_type__content a))

(declare-fun to_rep (contents_type) Int)

(declare-fun of_rep (Int) contents_type)

;; inversion_axiom
  (assert
  (forall ((x contents_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x contents_type)) (! (in_range2
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int contents_type))))))
(declare-fun slide ((Array Int contents_type) Int
  Int) (Array Int contents_type))

;; slide_eq
  (assert
  (forall ((a (Array Int contents_type)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int contents_type)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int contents_type) Int Int
  (Array Int contents_type) Int Int) (Array Int contents_type))

;; concat_def
  (assert
  (forall ((a (Array Int contents_type)) (b (Array Int contents_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (contents_type Int) (Array Int contents_type))

;; singleton_def
  (assert
  (forall ((v contents_type))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int contents_type)) (a__first Int)
  (a__last Int) (b (Array Int contents_type)) (b__first Int)
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
  (forall ((a (Array Int contents_type)) (b (Array Int contents_type)))
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

(declare-fun compare ((Array Int contents_type) Int Int
  (Array Int contents_type) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int contents_type)) (b (Array Int contents_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int contents_type)) (b (Array Int contents_type)))
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
  (forall ((a (Array Int contents_type)) (b (Array Int contents_type)))
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

(declare-fun arr () (Array Int contents_type))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun l () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun u () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-sort tbase_index_typeB 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 128) x) (<= x 127)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (tbase_index_typeB tbase_index_typeB) Bool)

(declare-fun dummy2 () tbase_index_typeB)

(declare-datatypes ()
((tbase_index_typeB__ref
 (mk_tbase_index_typeB__ref (tbase_index_typeB__content tbase_index_typeB)))))
(define-fun tbase_index_typeB__ref___projection ((a tbase_index_typeB__ref)) tbase_index_typeB 
  (tbase_index_typeB__content a))

(declare-fun to_rep1 (tbase_index_typeB) Int)

(declare-fun of_rep1 (Int) tbase_index_typeB)

;; inversion_axiom
  (assert
  (forall ((x tbase_index_typeB))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x tbase_index_typeB)) (! (in_range3
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun first () Int)

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (tbase_index_typeB tbase_index_typeB) Bool)

(declare-fun dummy3 () tbase_index_typeB)

(declare-datatypes ()
((t7b__ref (mk_t7b__ref (t7b__content tbase_index_typeB)))))
(define-fun t7b__ref___projection ((a t7b__ref)) tbase_index_typeB (t7b__content
                                                                   a))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant1 ((temp___expr_148 Int)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (or (= temp___is_init_145 true)
                                      (<= (- 1000) 1000)) (in_range2
                                      temp___expr_148)))

(declare-fun k () Int)

(declare-fun i () Int)

(declare-fun x () Int)

(declare-fun k1 () Int)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () Int)

(declare-fun k2 () Int)

(declare-fun k3 () Int)

(declare-fun i2 () Int)

;; H
  (assert (in_range1 l))

;; H
  (assert (in_range1 u))

;; H
  (assert (and (and (<= 1 l) (< l u)) (<= u 100)))

;; H
  (assert (=> (<= 1 100) (in_range1 k)))

;; H
  (assert
  (and (= k1 l)
  (forall ((x1 Int))
  (=> (and (<= l x1) (<= x1 l))
  (<= (to_rep (select arr k1)) (to_rep (select arr x1)))))))

;; H
  (assert (=> (<= 1 100) (in_range1 k1)))

;; H
  (assert (< l u))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i)))

;; H
  (assert (= i1 (+ l 1)))

;; H
  (assert (<= (+ l 1) i1))

;; H
  (assert (<= i1 u))

;; H
  (assert
  (=> (< (to_rep (select arr i1)) (to_rep (select arr k1))) (= k1 result1)))

;; H
  (assert
  (=> (< (to_rep (select arr i1)) (to_rep (select arr k1))) (= k2 i1)))

;; H
  (assert
  (=> (not (< (to_rep (select arr i1)) (to_rep (select arr k1)))) (= k2 k1)))

;; H
  (assert
  (and
  (and (and (and (<= (+ l 1) i2) (<= i2 u)) (< l u))
  (forall ((x1 Int))
  (=> (and (<= l x1) (<= x1 i2))
  (<= (to_rep (select arr k3)) (to_rep (select arr x1))))))
  (and (<= l k3) (<= k3 u))))

;; H
  (assert
  (and
  (and (=> (<= (+ l 1) u) (dynamic_property (+ l 1) u i2))
  (=> (<= 1 100) (in_range1 k3))) (and (<= (+ l 1) i2) (<= i2 u))))

;; H
  (assert (<= l x))

;; H
  (assert (<= x i2))

(assert
;; WP_parameter_def
 ;; File "t3q5.ads", line 6, characters 0-0
  (not (<= 1 x)))
(check-sat)
