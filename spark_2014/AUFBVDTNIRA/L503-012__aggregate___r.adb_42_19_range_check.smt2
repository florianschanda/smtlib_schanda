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

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-sort int5 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 5)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (int5 int5) Bool)

(declare-fun dummy1 () int5)

(declare-datatypes () ((int5__ref (mk_int5__ref (int5__content int5)))))
(define-fun int5__ref___projection ((a int5__ref)) int5 (int5__content a))

(declare-fun to_rep (int5) Int)

(declare-fun of_rep (Int) int5)

;; inversion_axiom
  (assert
  (forall ((x int5)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x int5)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort int6 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 6)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (int6 int6) Bool)

(declare-fun dummy2 () int6)

(declare-datatypes () ((int6__ref (mk_int6__ref (int6__content int6)))))
(define-fun int6__ref___projection ((a int6__ref)) int6 (int6__content a))

(define-fun dynamic_invariant1 ((temp___expr_180 Int)
  (temp___is_init_177 Bool) (temp___skip_constant_178 Bool)
  (temp___do_toplevel_179 Bool)) Bool (=>
                                      (or (= temp___is_init_177 true)
                                      (<= 1 6)) (in_range3 temp___expr_180)))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int int5))))))
(declare-fun slide ((Array Int int5) Int Int) (Array Int int5))

;; slide_eq
  (assert
  (forall ((a (Array Int int5)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int int5)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int int5) Int Int (Array Int int5) Int
  Int) (Array Int int5))

;; concat_def
  (assert
  (forall ((a (Array Int int5)) (b (Array Int int5)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (int5 Int) (Array Int int5))

;; singleton_def
  (assert
  (forall ((v int5))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int int5)) (a__first Int) (a__last Int)
  (b (Array Int int5)) (b__first Int)
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
  (forall ((a (Array Int int5)) (b (Array Int int5)))
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

(declare-fun compare ((Array Int int5) Int Int (Array Int int5) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int int5)) (b (Array Int int5)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int int5)) (b (Array Int int5)))
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
  (forall ((a (Array Int int5)) (b (Array Int int5)))
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

(declare-sort ta26P1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 2 x) (<= x 6)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (ta26P1 ta26P1) Bool)

(declare-fun dummy3 () ta26P1)

(declare-datatypes ()
((ta26P1__ref (mk_ta26P1__ref (ta26P1__content ta26P1)))))
(define-fun ta26P1__ref___projection ((a ta26P1__ref)) ta26P1 (ta26P1__content
                                                              a))

(declare-fun dummy4 () (Array Int int5))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int int5)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int int5)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int int5)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int int5))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert (forall ((a (Array Int int5))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int int5))) (<= 0 (object__alignment a))))

(declare-fun user_eq4 ((Array Int int5) (Array Int int5)) Bool)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int int5)))))))
(declare-fun slide1 ((Array Int (Array Int int5)) Int
  Int) (Array Int (Array Int int5)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int int5))))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int int5))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int (Array Int int5)) Int Int
  (Array Int (Array Int int5)) Int Int) (Array Int (Array Int int5)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int int5))) (b (Array Int (Array Int int5))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 ((Array Int int5) Int) (Array Int (Array Int int5)))

;; singleton_def
  (assert
  (forall ((v (Array Int int5)))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq5 ((a (Array Int (Array Int int5))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int int5))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_134 Int))
                           (=>
                           (and (<= a__first temp___idx_134)
                           (<= temp___idx_134 a__last))
                           (= (bool_eq3 (select a temp___idx_134) 2 6
                              (select b (+ (- b__first a__first) temp___idx_134))
                              2 6) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int int5))) (b (Array Int (Array Int int5))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_134 Int))
  (=> (and (<= a__first temp___idx_134) (<= temp___idx_134 a__last))
  (= (bool_eq3 (select a temp___idx_134) 2 6
     (select b (+ (- b__first a__first) temp___idx_134)) 2 6) true))))))))

(declare-sort tar37P1 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 3 x) (<= x 7)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (tar37P1 tar37P1) Bool)

(declare-fun dummy5 () tar37P1)

(declare-datatypes ()
((tar37P1__ref (mk_tar37P1__ref (tar37P1__content tar37P1)))))
(define-fun tar37P1__ref___projection ((a tar37P1__ref)) tar37P1 (tar37P1__content
                                                                 a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort t20b 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 3 x) (<= x 7)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (t20b t20b) Bool)

(declare-fun dummy6 () t20b)

(declare-datatypes () ((t20b__ref (mk_t20b__ref (t20b__content t20b)))))
(define-fun t20b__ref___projection ((a t20b__ref)) t20b (t20b__content a))

(declare-sort t18b 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 2 x) (<= x 6)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq7 (t18b t18b) Bool)

(declare-fun dummy7 () t18b)

(declare-datatypes () ((t18b__ref (mk_t18b__ref (t18b__content t18b)))))
(define-fun t18b__ref___projection ((a t18b__ref)) t18b (t18b__content a))

(declare-fun temp___289 ((Array Int int5)) (Array Int (Array Int int5)))

;; def_axiom
  (assert
  (forall ((temp___291 (Array Int int5)))
  (forall ((temp___292 Int))
  (= (select (temp___289 temp___291) temp___292) temp___291))))

(declare-fun temp___293 (Int Int) (Array Int int5))

;; def_axiom
  (assert
  (forall ((temp___295 Int) (temp___296 Int))
  (let ((temp___294 (temp___293 temp___295 temp___296)))
  (forall ((temp___297 Int))
  (ite (= temp___297 3)
  (= (select temp___294 temp___297) (of_rep temp___295))
  (= (select temp___294 temp___297) (of_rep temp___296)))))))

(define-fun dynamic_invariant2 ((temp___expr_174 Int)
  (temp___is_init_171 Bool) (temp___skip_constant_172 Bool)
  (temp___do_toplevel_173 Bool)) Bool (=>
                                      (or (= temp___is_init_171 true)
                                      (<= 1 5)) (in_range2 temp___expr_174)))

(declare-fun a () (Array Int (Array Int int5)))

(declare-fun o () Int)

(declare-fun temp___288 () (Array Int int5))

(declare-fun o1 () Int)

(declare-fun o2 () int5)

(declare-fun o3 () Int)

;; H
  (assert (in_range1 n))

;; H
  (assert (and (<= 3 n) (<= n 4)))

;; H
  (assert (and (<= 3 n) (<= n 7)))

;; H
  (assert (= o n))

;; H
  (assert (= temp___288 (select a o)))

;; H
  (assert (and (<= 2 n) (<= n 6)))

;; H
  (assert (= o1 n))

;; H
  (assert (= o2 (select temp___288 o1)))

;; H
  (assert (= o3 (to_rep o2)))

(assert
;; WP_parameter_def
 ;; File "r.adb", line 29, characters 0-0
  (not (in_range3 o3)))
(check-sat)
