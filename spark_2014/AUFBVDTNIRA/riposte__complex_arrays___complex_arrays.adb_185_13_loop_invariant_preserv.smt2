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

(declare-sort counter 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1002)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (counter counter) Bool)

(declare-fun dummy () counter)

(declare-datatypes ()
((counter__ref (mk_counter__ref (counter__content counter)))))
(define-fun counter__ref___projection ((a counter__ref)) counter (counter__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_137 Int)
  (temp___is_init_134 Bool) (temp___skip_constant_135 Bool)
  (temp___do_toplevel_136 Bool)) Bool (=>
                                      (or (= temp___is_init_134 true)
                                      (<= 0 1002)) (in_range1
                                      temp___expr_137)))

(declare-sort index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1001)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index index) Bool)

(declare-fun dummy1 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant1 ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 0 1001)) (in_range2
                                      temp___expr_143)))

(declare-sort value 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 23) x) (<= x 69)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (value value) Bool)

(declare-fun dummy2 () value)

(declare-datatypes () ((value__ref (mk_value__ref (value__content value)))))
(define-fun value__ref___projection ((a value__ref)) value (value__content a))

(declare-fun to_rep (value) Int)

(declare-fun of_rep (Int) value)

;; inversion_axiom
  (assert
  (forall ((x value)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x value)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
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

(define-fun bool_eq3 ((a (Array Int value)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int value)) (b (Array Int value)))
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
  (forall ((a (Array Int value)) (b (Array Int value)))
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

(declare-fun create_step_array (Int) (Array Int value))

(declare-fun create_step_array__function_guard ((Array Int value) Int) Bool)

;; create_step_array__post_axiom
  (assert
  (forall ((i Int))
  (! (=> (dynamic_invariant1 i true true true)
     (let ((result (create_step_array i)))
     (=> (create_step_array__function_guard result i)
     (forall ((j Int))
     (=> (and (<= 0 j) (<= j 1001))
     (and (=> (< j i) (= (to_rep (select result j)) (- 23)))
     (=> (<= i j) (= (to_rep (select result j)) 69)))))))) :pattern (
  (create_step_array i)) )))

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant2 ((temp___expr_149 Int)
  (temp___is_init_146 Bool) (temp___skip_constant_147 Bool)
  (temp___do_toplevel_148 Bool)) Bool (=>
                                      (or (= temp___is_init_146 true)
                                      (<= (- 23) 69)) (in_range3
                                      temp___expr_149)))

(declare-fun step () (Array Int value))

(declare-fun c () Int)

(declare-fun j () Int)

(declare-fun o () (Array Int value))

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun result () Int)

(declare-fun c1 () Int)

(declare-fun result1 () (Array Int value))

(declare-fun step1 () (Array Int value))

(declare-fun result2 () Int)

(declare-fun j1 () Int)

(declare-fun result3 () Int)

(declare-fun c2 () Int)

(declare-fun c3 () Int)

(declare-fun j2 () Int)

(declare-fun result4 () Int)

(declare-fun j3 () Int)

(declare-fun result5 () Int)

(declare-fun c4 () Int)

;; H
  (assert (in_range2 i))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref c)))

;; H
  (assert (= c1 0))

;; H
  (assert (in_range1 c1))

;; H
  (assert
  (and
  (and (= o (create_step_array i)) (create_step_array__function_guard o i))
  (forall ((j4 Int))
  (=> (and (<= 0 j4) (<= j4 1001))
  (and (=> (< j4 i) (= (to_rep (select o j4)) (- 23)))
  (=> (<= i j4) (= (to_rep (select o j4)) 69)))))))

;; H
  (assert (= (mk_map__ref result1) (mk_map__ref step)))

;; H
  (assert (= step1 o))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref j)))

;; H
  (assert (= j1 0))

;; H
  (assert (<= 0 j1))

;; H
  (assert (<= j1 1001))

;; H
  (assert
  (=> (= (to_rep (select step1 j1)) (- 23))
  (and (= o1 (+ c1 1)) (in_range1 (+ c1 1)))))

;; H
  (assert (=> (= (to_rep (select step1 j1)) (- 23)) (= c1 result3)))

;; H
  (assert (=> (= (to_rep (select step1 j1)) (- 23)) (= c2 o1)))

;; H
  (assert (=> (not (= (to_rep (select step1 j1)) (- 23))) (= c2 c1)))

;; H
  (assert
  (and
  (and
  (forall ((k Int))
  (=> (and (<= 0 k) (<= k 1001))
  (and (=> (< k i) (= (to_rep (select step1 k)) (- 23)))
  (=> (<= i k) (= (to_rep (select step1 k)) 69)))))
  (=> (< j2 i) (= c3 (+ j2 1)))) (=> (<= i j2) (= c3 i))))

;; H
  (assert
  (and (and (=> (<= 0 1002) (in_range1 c3)) (=> (<= 0 1001) (in_range2 j2)))
  (and (<= 0 j2) (<= j2 1001))))

;; H
  (assert (not (= j2 1001)))

;; H
  (assert (= j2 result4))

;; H
  (assert (= j3 (+ j2 1)))

;; H
  (assert
  (=> (= (to_rep (select step1 j3)) (- 23))
  (and (= o2 (+ c3 1)) (in_range1 (+ c3 1)))))

;; H
  (assert (=> (= (to_rep (select step1 j3)) (- 23)) (= result5 c3)))

;; H
  (assert (=> (= (to_rep (select step1 j3)) (- 23)) (= c4 o2)))

;; H
  (assert (=> (not (= (to_rep (select step1 j3)) (- 23))) (= c4 c3)))

(declare-fun k () Int)

;; H
  (assert (<= 0 k))

;; H
  (assert (<= k 1001))

;; H
  (assert (< k i))

(assert
;; WP_parameter_def
 ;; File "complex_arrays.adb", line 5, characters 0-0
  (not (= (to_rep (select step1 k)) (- 23))))
(check-sat)
