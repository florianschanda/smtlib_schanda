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

(declare-sort unsigned_byte 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (unsigned_byte unsigned_byte) Bool)

(declare-fun dummy () unsigned_byte)

(declare-datatypes ()
((unsigned_byte__ref
 (mk_unsigned_byte__ref (unsigned_byte__content unsigned_byte)))))
(define-fun unsigned_byte__ref___projection ((a unsigned_byte__ref)) unsigned_byte 
  (unsigned_byte__content a))

(declare-fun to_rep (unsigned_byte) Int)

(declare-fun of_rep (Int) unsigned_byte)

;; inversion_axiom
  (assert
  (forall ((x unsigned_byte))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x unsigned_byte)) (! (in_range1
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort small_index_t 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (small_index_t small_index_t) Bool)

(declare-fun dummy1 () small_index_t)

(declare-datatypes ()
((small_index_t__ref
 (mk_small_index_t__ref (small_index_t__content small_index_t)))))
(define-fun small_index_t__ref___projection ((a small_index_t__ref)) small_index_t 
  (small_index_t__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int unsigned_byte))))))
(declare-fun slide ((Array Int unsigned_byte) Int
  Int) (Array Int unsigned_byte))

;; slide_eq
  (assert
  (forall ((a (Array Int unsigned_byte)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int unsigned_byte)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int unsigned_byte) Int Int
  (Array Int unsigned_byte) Int Int) (Array Int unsigned_byte))

;; concat_def
  (assert
  (forall ((a (Array Int unsigned_byte)) (b (Array Int unsigned_byte)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (unsigned_byte Int) (Array Int unsigned_byte))

;; singleton_def
  (assert
  (forall ((v unsigned_byte))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int unsigned_byte)) (a__first Int)
  (a__last Int) (b (Array Int unsigned_byte)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_144 Int))
                           (=>
                           (and (<= a__first temp___idx_144)
                           (<= temp___idx_144 a__last))
                           (= (to_rep (select a temp___idx_144)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_144)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int unsigned_byte)) (b (Array Int unsigned_byte)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_144 Int))
  (=> (and (<= a__first temp___idx_144) (<= temp___idx_144 a__last))
  (= (to_rep (select a temp___idx_144)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_144)))))))))))

(declare-fun compare ((Array Int unsigned_byte) Int Int
  (Array Int unsigned_byte) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int unsigned_byte)) (b (Array Int unsigned_byte)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int unsigned_byte)) (b (Array Int unsigned_byte)))
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
  (forall ((a (Array Int unsigned_byte)) (b (Array Int unsigned_byte)))
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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t47b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t47b t47b) Bool)

(declare-fun dummy2 () t47b)

(declare-datatypes () ((t47b__ref (mk_t47b__ref (t47b__content t47b)))))
(define-fun t47b__ref___projection ((a t47b__ref)) t47b (t47b__content a))

(declare-fun temp___449 (Int Int) (Array Int unsigned_byte))

;; def_axiom
  (assert
  (forall ((temp___451 Int) (temp___452 Int))
  (let ((temp___450 (temp___449 temp___451 temp___452)))
  (forall ((temp___453 Int))
  (ite (or (= temp___453 2) (and (<= 4 temp___453) (<= temp___453 6)))
  (= (select temp___450 temp___453) (of_rep temp___451))
  (= (select temp___450 temp___453) (of_rep temp___452)))))))

(define-fun dynamic_invariant ((temp___expr_200 Int)
  (temp___is_init_197 Bool) (temp___skip_constant_198 Bool)
  (temp___do_toplevel_199 Bool)) Bool (=>
                                      (or (= temp___is_init_197 true)
                                      (<= 0 255)) (in_range1
                                      temp___expr_200)))

(define-fun dynamic_invariant1 ((temp___expr_275 Int)
  (temp___is_init_272 Bool) (temp___skip_constant_273 Bool)
  (temp___do_toplevel_274 Bool)) Bool (=>
                                      (or (= temp___is_init_272 true)
                                      (<= 1 1000)) (in_range2
                                      temp___expr_275)))

(declare-fun x () (Array Int unsigned_byte))

(declare-fun o () (Array Int unsigned_byte))

(declare-fun result () (Array Int unsigned_byte))

(declare-fun x1 () (Array Int unsigned_byte))

;; H
  (assert (= o (temp___449 2 8)))

;; H
  (assert (= result x))

;; H
  (assert (= x1 o))

(assert
;; WP_parameter_def
 ;; File "array_aggregates.adb", line 131, characters 0-0
  (not (= (to_rep (select x1 5)) 5)))
(check-sat)
