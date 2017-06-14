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

(declare-sort i 0)

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 5)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (i i) Bool)

(declare-fun dummy () i)

(declare-datatypes () ((i__ref (mk_i__ref (i__content i)))))
(define-fun i__ref___projection ((a i__ref)) i (i__content a))

(declare-sort t2 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 11 x) (<= x 20)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (t2 t2) Bool)

(declare-fun dummy1 () t2)

(declare-datatypes () ((t2__ref (mk_t2__ref (t2__content t2)))))
(define-fun t2__ref___projection ((a t2__ref)) t2 (t2__content a))

(declare-fun to_rep (t2) Int)

(declare-fun of_rep (Int) t2)

;; inversion_axiom
  (assert
  (forall ((x t2)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x t2)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int t2))))))
(declare-fun slide ((Array Int t2) Int Int) (Array Int t2))

;; slide_eq
  (assert
  (forall ((a (Array Int t2)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int t2)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i1 Int))
  (! (= (select (slide a old_first new_first) i1) (select a (- i1 (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i1)) ))))))

(declare-fun concat1 ((Array Int t2) Int Int (Array Int t2) Int
  Int) (Array Int t2))

;; concat_def
  (assert
  (forall ((a (Array Int t2)) (b (Array Int t2)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i1 Int))
  (! (and
     (=> (and (<= a_first i1) (<= i1 a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i1) (select a i1)))
     (=> (< a_last i1)
     (= (select (concat1 a a_first a_last b b_first b_last) i1) (select b (+ (- i1 a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i1)) )))))

(declare-fun singleton1 (t2 Int) (Array Int t2))

;; singleton_def
  (assert
  (forall ((v t2))
  (forall ((i1 Int))
  (! (= (select (singleton1 v i1) i1) v) :pattern ((select (singleton1 v i1) i1)) ))))

(define-fun bool_eq2 ((a (Array Int t2)) (a__first Int) (a__last Int)
  (b (Array Int t2)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (to_rep (select a temp___idx_133)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_133)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int t2)) (b (Array Int t2)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep (select a temp___idx_133)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_133)))))))))))

(declare-fun compare ((Array Int t2) Int Int (Array Int t2) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int t2)) (b (Array Int t2)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int t2)) (b (Array Int t2)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i1 Int) (j Int))
     (and (<= i1 a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i1 b b_first j) true)
     (or (= i1 a_last)
     (and (< i1 a_last)
     (< (to_rep (select a (+ i1 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int t2)) (b (Array Int t2)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i1 Int) (j Int))
     (and (<= i1 b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i1) true)
     (or (= i1 b_last)
     (and (< i1 b_last)
     (< (to_rep (select b (+ i1 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(define-fun default_initial_assumption ((temp___expr_173 (Array Int t2))
  (temp___skip_top_level_174 Bool)) Bool (forall ((temp___175 Int))
                                         (=>
                                         (and (<= 1 temp___175)
                                         (<= temp___175 5))
                                         (= (to_rep
                                            (select temp___expr_173 temp___175)) 20))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t3b 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 5)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (t3b t3b) Bool)

(declare-fun dummy2 () t3b)

(declare-datatypes () ((t3b__ref (mk_t3b__ref (t3b__content t3b)))))
(define-fun t3b__ref___projection ((a t3b__ref)) t3b (t3b__content a))

(declare-fun temp___194 () (Array Int t2))

;; def_axiom
  (assert true)

(define-fun dynamic_invariant ((temp___expr_138 Int)
  (temp___is_init_135 Bool) (temp___skip_constant_136 Bool)
  (temp___do_toplevel_137 Bool)) Bool (=>
                                      (or (= temp___is_init_135 true)
                                      (<= 1 5)) (in_range temp___expr_138)))

(define-fun dynamic_invariant1 ((temp___expr_156 Int)
  (temp___is_init_153 Bool) (temp___skip_constant_154 Bool)
  (temp___do_toplevel_155 Bool)) Bool (=>
                                      (or (= temp___is_init_153 true)
                                      (<= 11 20)) (in_range1
                                      temp___expr_156)))

(declare-fun x () (Array Int t2))

(declare-fun o () (Array Int t2))

(declare-fun result () (Array Int t2))

(declare-fun x1 () (Array Int t2))

(declare-fun x2 () (Array Int t2))

(declare-fun x3 () (Array Int t2))

;; H
  (assert (= o temp___194))

;; H
  (assert (= result x))

;; H
  (assert (= x1 o))

;; H
  (assert (= x1 x2))

;; H
  (assert (= x3 x1))

(assert
;; WP_parameter_def
 ;; File "aggs.ads", line 15, characters 0-0
  (not (= (to_rep (select x2 2)) 20)))
(check-sat)
