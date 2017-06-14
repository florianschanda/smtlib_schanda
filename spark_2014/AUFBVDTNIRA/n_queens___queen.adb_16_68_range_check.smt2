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

(declare-sort index 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 8)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (index index) Bool)

(declare-fun dummy () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 1 8)) (in_range1 temp___expr_136)))

(declare-fun to_rep (index) Int)

(declare-fun of_rep (Int) index)

;; inversion_axiom
  (assert
  (forall ((x index)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x index)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int index))))))
(declare-fun slide ((Array Int index) Int Int) (Array Int index))

;; slide_eq
  (assert
  (forall ((a (Array Int index)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int index)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int index) Int Int (Array Int index) Int
  Int) (Array Int index))

;; concat_def
  (assert
  (forall ((a (Array Int index)) (b (Array Int index)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (index Int) (Array Int index))

;; singleton_def
  (assert
  (forall ((v index))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int index)) (a__first Int) (a__last Int)
  (b (Array Int index)) (b__first Int)
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
  (forall ((a (Array Int index)) (b (Array Int index)))
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

(declare-fun compare ((Array Int index) Int Int (Array Int index) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int index)) (b (Array Int index)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int index)) (b (Array Int index)))
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
  (forall ((a (Array Int index)) (b (Array Int index)))
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

(declare-fun consistent ((Array Int index) Int) Bool)

(declare-fun consistent__function_guard (Bool (Array Int index) Int) Bool)

;; consistent__post_axiom
  (assert true)

;; consistent__def_axiom
  (assert
  (forall ((b (Array Int index)))
  (forall ((k Int))
  (! (=> (consistent__function_guard (consistent b k) b k)
     (= (= (consistent b k) true)
     (forall ((i Int))
     (=> (and (<= 1 i) (<= i k))
     (forall ((j Int))
     (=> (and (<= 1 j) (<= j (- i 1)))
     (and
     (and (not (= (to_rep (select b i)) (to_rep (select b j))))
     (not (= (- i j) (- (to_rep (select b i)) (to_rep (select b j))))))
     (not (= (- i j) (- (to_rep (select b j)) (to_rep (select b i)))))))))))) :pattern (
  (consistent b k)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun c () (Array Int index))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun b () (Array Int index))

(declare-fun done__ () Bool)

(declare-fun j () Int)

(declare-fun result () Bool)

;; H
  (assert (in_range1 i))

;; H
  (assert (consistent__function_guard (consistent b (- i 1)) b (- i 1)))

;; H
  (assert
  (and
  (and (not (= done__ true))
  (forall ((j1 Int))
  (=> (and (<= 1 j1) (<= j1 i))
  (= (to_rep (select c j1)) (to_rep (select b j1))))))
  (=> (< 1 i) (= (consistent b (- i 1)) true))))

;; H
  (assert
  (and
  (and (= result (consistent b i)) (consistent__function_guard result b i))
  (= (= result true)
  (forall ((i1 Int))
  (=> (and (<= 1 i1) (<= i1 i))
  (forall ((j1 Int))
  (=> (and (<= 1 j1) (<= j1 (- i1 1)))
  (and
  (and (not (= (to_rep (select b i1)) (to_rep (select b j1))))
  (not (= (- i1 j1) (- (to_rep (select b i1)) (to_rep (select b j1))))))
  (not (= (- i1 j1) (- (to_rep (select b j1)) (to_rep (select b i1)))))))))))))

;; H
  (assert (not (= result true)))

;; H
  (assert (consistent__function_guard (consistent c i) c i))

;; H
  (assert (not (= (consistent c i) true)))

;; H
  (assert (<= i j))

;; H
  (assert (<= j 8))

(assert
;; WP_parameter_def
 ;; File "queen.ads", line 27, characters 0-0
  (not (in_range1 j)))
(check-sat)
