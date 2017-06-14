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

(declare-sort it1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (it1 it1) Bool)

(declare-fun dummy () it1)

(declare-datatypes () ((it1__ref (mk_it1__ref (it1__content it1)))))
(define-fun it1__ref___projection ((a it1__ref)) it1 (it1__content a))

(define-fun dynamic_invariant ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= 1 10)) (in_range1 temp___expr_152)))

(declare-sort it2 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 5 x) (<= x 50)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (it2 it2) Bool)

(declare-fun dummy1 () it2)

(declare-datatypes () ((it2__ref (mk_it2__ref (it2__content it2)))))
(define-fun it2__ref___projection ((a it2__ref)) it2 (it2__content a))

(define-fun dynamic_invariant1 ((temp___expr_158 Int)
  (temp___is_init_155 Bool) (temp___skip_constant_156 Bool)
  (temp___do_toplevel_157 Bool)) Bool (=>
                                      (or (= temp___is_init_155 true)
                                      (<= 5 50)) (in_range2 temp___expr_158)))

(declare-sort it3 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 16)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (it3 it3) Bool)

(declare-fun dummy2 () it3)

(declare-datatypes () ((it3__ref (mk_it3__ref (it3__content it3)))))
(define-fun it3__ref___projection ((a it3__ref)) it3 (it3__content a))

(define-fun dynamic_invariant2 ((temp___expr_164 Int)
  (temp___is_init_161 Bool) (temp___skip_constant_162 Bool)
  (temp___do_toplevel_163 Bool)) Bool (=>
                                      (or (= temp___is_init_161 true)
                                      (<= 1 16)) (in_range3 temp___expr_164)))

(declare-sort et1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (et1 et1) Bool)

(declare-fun dummy3 () et1)

(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))

(define-fun dynamic_invariant3 ((temp___expr_176 Int)
  (temp___is_init_173 Bool) (temp___skip_constant_174 Bool)
  (temp___do_toplevel_175 Bool)) Bool (=>
                                      (or (= temp___is_init_173 true)
                                      (<= 0 99)) (in_range4 temp___expr_176)))

(declare-fun to_rep (et1) Int)

(declare-fun of_rep (Int) et1)

;; inversion_axiom
  (assert
  (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x et1)) (! (in_range4 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

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

(define-fun bool_eq4 ((a (Array Int et1)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq4 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq4 a a_first i b b_first j) true)
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
     (and (= (bool_eq4 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy4 () (Array Int et1))

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

(declare-fun user_eq4 ((Array Int et1) (Array Int et1)) Bool)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int et1)))))))
(declare-fun slide1 ((Array Int (Array Int et1)) Int
  Int) (Array Int (Array Int et1)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int et1))))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int et1))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int (Array Int et1)) Int Int
  (Array Int (Array Int et1)) Int Int) (Array Int (Array Int et1)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int et1))) (b (Array Int (Array Int et1))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 ((Array Int et1) Int) (Array Int (Array Int et1)))

;; singleton_def
  (assert
  (forall ((v (Array Int et1)))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq5 ((a (Array Int (Array Int et1))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int et1))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (bool_eq4 (select a temp___idx_133) 1 10
                              (select b (+ (- b__first a__first) temp___idx_133))
                              1 10) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int et1))) (b (Array Int (Array Int et1))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq4 (select a temp___idx_133) 1 10
     (select b (+ (- b__first a__first) temp___idx_133)) 1 10) true))))))))

(declare-fun dummy5 () (Array Int (Array Int et1)))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int (Array Int et1))) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int (Array Int et1))) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int (Array Int et1))) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert
  (forall ((a (Array Int (Array Int et1)))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int (Array Int et1))))
  (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert
  (forall ((a (Array Int (Array Int et1)))) (<= 0 (object__alignment1 a))))

(declare-fun user_eq5 ((Array Int (Array Int et1))
  (Array Int (Array Int et1))) Bool)

(declare-datatypes ()
((map__ref2
 (mk_map__ref2 (map__content2 (Array Int (Array Int (Array Int et1))))))))
(declare-fun slide2 ((Array Int (Array Int (Array Int et1))) Int
  Int) (Array Int (Array Int (Array Int et1))))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1)))))
  (forall ((first Int))
  (! (= (slide2 a first first) a) :pattern ((slide2 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1)))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide2 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide2 a old_first new_first) i)) ))))))

(declare-fun concat3 ((Array Int (Array Int (Array Int et1))) Int Int
  (Array Int (Array Int (Array Int et1))) Int
  Int) (Array Int (Array Int (Array Int et1))))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1))))
  (b (Array Int (Array Int (Array Int et1)))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat3 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton3 ((Array Int (Array Int et1))
  Int) (Array Int (Array Int (Array Int et1))))

;; singleton_def
  (assert
  (forall ((v (Array Int (Array Int et1))))
  (forall ((i Int))
  (! (= (select (singleton3 v i) i) v) :pattern ((select (singleton3 v i) i)) ))))

(define-fun bool_eq6 ((a (Array Int (Array Int (Array Int et1))))
  (a__first Int) (a__last Int) (b (Array Int (Array Int (Array Int et1))))
  (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_134 Int))
                           (=>
                           (and (<= a__first temp___idx_134)
                           (<= temp___idx_134 a__last))
                           (= (bool_eq5 (select a temp___idx_134) 5 50
                              (select b (+ (- b__first a__first) temp___idx_134))
                              5 50) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1))))
  (b (Array Int (Array Int (Array Int et1)))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_134 Int))
  (=> (and (<= a__first temp___idx_134) (<= temp___idx_134 a__last))
  (= (bool_eq5 (select a temp___idx_134) 5 50
     (select b (+ (- b__first a__first) temp___idx_134)) 5 50) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun j () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun k () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun e () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun temp___5423 ((Array Int (Array Int (Array Int et1))) Int
  (Array Int (Array Int et1))) (Array Int (Array Int (Array Int et1))))

;; def_axiom
  (assert
  (forall ((temp___5425 (Array Int (Array Int (Array Int et1)))))
  (forall ((temp___5426 Int))
  (forall ((temp___5427 (Array Int (Array Int et1))))
  (let ((temp___5424 (temp___5423 temp___5425 temp___5426 temp___5427)))
  (forall ((temp___5428 Int))
  (ite (= temp___5428 temp___5426)
  (= (select temp___5424 temp___5428) temp___5427)
  (= (select temp___5424 temp___5428) (select temp___5425 temp___5428)))))))))

(declare-fun temp___5429 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___5431 (Array Int (Array Int et1))))
  (forall ((temp___5432 Int))
  (forall ((temp___5433 (Array Int et1)))
  (let ((temp___5430 (temp___5429 temp___5431 temp___5432 temp___5433)))
  (forall ((temp___5434 Int))
  (ite (= temp___5434 temp___5432)
  (= (select temp___5430 temp___5434) temp___5433)
  (= (select temp___5430 temp___5434) (select temp___5431 temp___5434)))))))))

(declare-fun temp___5435 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___5437 (Array Int et1)))
  (forall ((temp___5438 Int) (temp___5439 Int))
  (let ((temp___5436 (temp___5435 temp___5437 temp___5438 temp___5439)))
  (forall ((temp___5440 Int))
  (ite (= temp___5440 temp___5438)
  (= (select temp___5436 temp___5440) (of_rep temp___5439))
  (= (select temp___5436 temp___5440) (select temp___5437 temp___5440))))))))

(declare-fun a () (Array Int (Array Int (Array Int et1))))

(declare-fun k_next () Int)

(declare-fun f () Int)

(declare-fun t () (Array Int (Array Int (Array Int et1))))

(declare-fun o () et1)

(declare-fun o1 () (Array Int et1))

(declare-fun o2 () (Array Int (Array Int et1)))

(declare-fun o3 () (Array Int (Array Int (Array Int et1))))

(declare-fun result () (Array Int (Array Int (Array Int et1))))

(declare-fun t1 () (Array Int (Array Int (Array Int et1))))

(declare-fun result1 () (Array Int (Array Int (Array Int et1))))

(declare-fun a1 () (Array Int (Array Int (Array Int et1))))

;; H
  (assert (in_range1 i))

;; H
  (assert (in_range2 j))

;; H
  (assert (in_range3 k))

;; H
  (assert (in_range4 e))

;; H
  (assert (=> (<= 1 16) (in_range3 k_next)))

;; H
  (assert (=> (<= 0 99) (in_range4 f)))

;; H
  (assert (= (mk_map__ref2 result) (mk_map__ref2 t)))

;; H
  (assert (= t1 a))

;; H
  (assert (= (to_rep o) e))

;; H
  (assert (= o1 (store (select (select a k) j) i o)))

;; H
  (assert (= o2 (store (select a k) j o1)))

;; H
  (assert (= o3 (store a k o2)))

;; H
  (assert (= (mk_map__ref2 result1) (mk_map__ref2 a)))

;; H
  (assert (= a1 o3))

;; H
  (assert (not (= k 16)))

(assert
;; WP_parameter_def
 ;; File "ar.ads", line 481, characters 0-0
  (not (in_range3 (+ k 1))))
(check-sat)
