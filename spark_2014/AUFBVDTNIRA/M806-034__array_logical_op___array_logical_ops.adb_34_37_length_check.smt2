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

(declare-sort my_boolean 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (my_boolean my_boolean) Bool)

(declare-fun dummy () my_boolean)

(declare-datatypes ()
((my_boolean__ref (mk_my_boolean__ref (my_boolean__content my_boolean)))))
(define-fun my_boolean__ref___projection ((a my_boolean__ref)) my_boolean 
  (my_boolean__content a))

(declare-fun to_rep (my_boolean) Int)

(declare-fun of_rep (Int) my_boolean)

;; inversion_axiom
  (assert
  (forall ((x my_boolean))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x my_boolean)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int my_boolean))))))
(declare-fun slide ((Array Int my_boolean) Int Int) (Array Int my_boolean))

;; slide_eq
  (assert
  (forall ((a (Array Int my_boolean)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int my_boolean)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int my_boolean) Int Int (Array Int my_boolean)
  Int Int) (Array Int my_boolean))

;; concat_def
  (assert
  (forall ((a (Array Int my_boolean)) (b (Array Int my_boolean)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (my_boolean Int) (Array Int my_boolean))

;; singleton_def
  (assert
  (forall ((v my_boolean))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int my_boolean)) (a__first Int) (a__last Int)
  (b (Array Int my_boolean)) (b__first Int)
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
  (forall ((a (Array Int my_boolean)) (b (Array Int my_boolean)))
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

(declare-fun compare ((Array Int my_boolean) Int Int (Array Int my_boolean)
  Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int my_boolean)) (b (Array Int my_boolean)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int my_boolean)) (b (Array Int my_boolean)))
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
  (forall ((a (Array Int my_boolean)) (b (Array Int my_boolean)))
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

(define-fun to_bool ((x my_boolean)) Bool (of_int (to_rep x)))

(define-fun of_bool ((x Bool)) my_boolean (of_rep (to_int1 x)))

(declare-fun xorb ((Array Int my_boolean) Int Int (Array Int my_boolean) Int
  Int) (Array Int my_boolean))

(declare-fun andb ((Array Int my_boolean) Int Int (Array Int my_boolean) Int
  Int) (Array Int my_boolean))

(declare-fun orb ((Array Int my_boolean) Int Int (Array Int my_boolean) Int
  Int) (Array Int my_boolean))

(declare-fun notb ((Array Int my_boolean) Int Int) (Array Int my_boolean))

;; op_def
  (assert
  (forall ((a (Array Int my_boolean)) (b (Array Int my_boolean)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (orb a a_first a_last b b_first b_last) i) (of_bool
                                                           (or (to_bool
                                                               (select a i)) 
                                                           (to_bool
                                                           (select b (+ (- i a_first) b_first))))))) :pattern ((select 
  (orb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array Int my_boolean)) (b (Array Int my_boolean)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (andb a a_first a_last b b_first b_last) i) (of_bool
                                                            (and (to_bool
                                                                 (select a i)) 
                                                            (to_bool
                                                            (select b (+ (- i a_first) b_first))))))) :pattern ((select 
  (andb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array Int my_boolean)) (b (Array Int my_boolean)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (xorb a a_first a_last b b_first b_last) i) (of_bool
                                                            (xor (to_bool
                                                                 (select a i)) 
                                                            (to_bool
                                                            (select b (+ (- i a_first) b_first))))))) :pattern ((select 
  (xorb a a_first a_last b b_first b_last) i)) )))))

;; notb_def
  (assert
  (forall ((a (Array Int my_boolean)))
  (forall ((a_first Int) (a_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (notb a a_first a_last) i) (of_bool
                                           (not (to_bool (select a i)))))) :pattern ((select 
  (notb a a_first a_last) i)) )))))

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range2 f)
     (=> (in_range2 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range2 low)
                   (and (in_range2 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int my_boolean))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int my_boolean) (elts a))

(define-fun of_array ((a (Array Int my_boolean)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int my_boolean)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int my_boolean)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int my_boolean)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int my_boolean))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int my_boolean))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int my_boolean))) (<= 0 (object__alignment a))))

(define-fun bool_eq3 ((x us_t)
  (y us_t)) Bool (bool_eq1 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes ()
((bool_array__ref (mk_bool_array__ref (bool_array__content us_t)))))
(define-fun bool_array__ref___projection ((a bool_array__ref)) us_t (bool_array__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_197 us_t)
  (temp___is_init_194 Bool) (temp___skip_constant_195 Bool)
  (temp___do_toplevel_196 Bool)) Bool (=>
                                      (not (= temp___skip_constant_195 true))
                                      (dynamic_property (- 2147483648)
                                      2147483647 (first1 temp___expr_197)
                                      (last1 temp___expr_197))))

(declare-sort t19b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 6 x) (<= x 45)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (t19b t19b) Bool)

(declare-fun dummy3 () t19b)

(declare-datatypes () ((t19b__ref (mk_t19b__ref (t19b__content t19b)))))
(define-fun t19b__ref___projection ((a t19b__ref)) t19b (t19b__content a))

(declare-fun v () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun array_logical_ops__test_ok3__v__aggregate_def (Int Int
  Int) (Array Int my_boolean))

;; def_axiom
  (assert
  (forall ((temp___157 Int) (temp___158 Int) (temp___159 Int))
  (let ((temp___156 (array_logical_ops__test_ok3__v__aggregate_def temp___157
                    temp___158 temp___159)))
  (forall ((temp___160 Int))
  (ite (and (<= 36 temp___160) (<= temp___160 45))
  (= (select temp___156 temp___160) (of_rep temp___159))
  (ite (and (<= 16 temp___160) (<= temp___160 35))
  (= (select temp___156 temp___160) (of_rep temp___158))
  (=> (and (<= 6 temp___160) (<= temp___160 15))
  (= (select temp___156 temp___160) (of_rep temp___157)))))))))

(declare-sort t21b 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 40)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (t21b t21b) Bool)

(declare-fun dummy4 () t21b)

(declare-datatypes () ((t21b__ref (mk_t21b__ref (t21b__content t21b)))))
(define-fun t21b__ref___projection ((a t21b__ref)) t21b (t21b__content a))

(declare-fun x () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun array_logical_ops__test_ok3__x__aggregate_def (Int Int Int
  Int) (Array Int my_boolean))

;; def_axiom
  (assert
  (forall ((temp___162 Int) (temp___163 Int) (temp___164 Int)
  (temp___165 Int))
  (let ((temp___161 (array_logical_ops__test_ok3__x__aggregate_def temp___162
                    temp___163 temp___164 temp___165)))
  (forall ((temp___166 Int))
  (ite (and (<= 31 temp___166) (<= temp___166 40))
  (= (select temp___161 temp___166) (of_rep temp___165))
  (ite (and (<= 21 temp___166) (<= temp___166 30))
  (= (select temp___161 temp___166) (of_rep temp___164))
  (ite (and (<= 11 temp___166) (<= temp___166 20))
  (= (select temp___161 temp___166) (of_rep temp___163))
  (=> (and (<= 1 temp___166) (<= temp___166 10))
  (= (select temp___161 temp___166) (of_rep temp___162))))))))))

(declare-fun r3 () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

;; v__def_axiom
  (assert
  (= v (of_array (array_logical_ops__test_ok3__v__aggregate_def 0 1 0) 6 45)))

;; x__def_axiom
  (assert
  (= x (of_array (array_logical_ops__test_ok3__x__aggregate_def 1 0 1 0) 1
       40)))

;; r3__def_axiom
  (assert
  (= r3 (of_array
        (xorb (to_array v) (first1 v) (last1 v) (to_array x) (first1 x)
        (last1 x)) (first1 v) (last1 v))))

(define-fun dynamic_invariant2 ((temp___expr_191 Int)
  (temp___is_init_188 Bool) (temp___skip_constant_189 Bool)
  (temp___do_toplevel_190 Bool)) Bool (=>
                                      (or (= temp___is_init_188 true)
                                      (<= 0 1)) (in_range1 temp___expr_191)))

;; H
  (assert
  (= (mk___t (array_logical_ops__test_ok3__v__aggregate_def 0 1 0) (mk 6 45)) 
  v))

;; H
  (assert (dynamic_invariant v true false true))

;; H
  (assert
  (= (mk___t (array_logical_ops__test_ok3__x__aggregate_def 1 0 1 0)
     (mk 1 40)) x))

;; H
  (assert (dynamic_invariant x true false true))

(assert
;; WP_parameter_def
 ;; File "array_logical_ops.adb", line 17, characters 0-0
  (not
  (= (ite (<= (to_rep1 (first (rt v))) (to_rep1 (last (rt v))))
     (+ (- (to_rep1 (last (rt v))) (to_rep1 (first (rt v)))) 1) 0) (ite (<= 
                                                                   (to_rep1
                                                                   (first
                                                                   (rt x))) 
                                                                   (to_rep1
                                                                   (last
                                                                   (rt x))))
                                                                   (+ (- 
                                                                   (to_rep1
                                                                   (last
                                                                   (rt x))) 
                                                                   (to_rep1
                                                                   (first
                                                                   (rt x)))) 1)
                                                                   0))))
(check-sat)
