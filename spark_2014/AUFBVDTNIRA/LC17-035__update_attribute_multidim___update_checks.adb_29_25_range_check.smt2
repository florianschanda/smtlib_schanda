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

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (it1 it1) Bool)

(declare-fun dummy () it1)

(declare-datatypes () ((it1__ref (mk_it1__ref (it1__content it1)))))
(define-fun it1__ref___projection ((a it1__ref)) it1 (it1__content a))

(define-fun dynamic_invariant ((temp___expr_144 Int)
  (temp___is_init_141 Bool) (temp___skip_constant_142 Bool)
  (temp___do_toplevel_143 Bool)) Bool (=>
                                      (or (= temp___is_init_141 true)
                                      (<= 1 3)) (in_range temp___expr_144)))

(declare-sort it2 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 5)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (it2 it2) Bool)

(declare-fun dummy1 () it2)

(declare-datatypes () ((it2__ref (mk_it2__ref (it2__content it2)))))
(define-fun it2__ref___projection ((a it2__ref)) it2 (it2__content a))

(define-fun dynamic_invariant1 ((temp___expr_150 Int)
  (temp___is_init_147 Bool) (temp___skip_constant_148 Bool)
  (temp___do_toplevel_149 Bool)) Bool (=>
                                      (or (= temp___is_init_147 true)
                                      (<= 1 5)) (in_range1 temp___expr_150)))

(declare-sort it3 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (it3 it3) Bool)

(declare-fun dummy2 () it3)

(declare-datatypes () ((it3__ref (mk_it3__ref (it3__content it3)))))
(define-fun it3__ref___projection ((a it3__ref)) it3 (it3__content a))

(define-fun dynamic_invariant2 ((temp___expr_156 Int)
  (temp___is_init_153 Bool) (temp___skip_constant_154 Bool)
  (temp___do_toplevel_155 Bool)) Bool (=>
                                      (or (= temp___is_init_153 true)
                                      (<= 1 10)) (in_range2 temp___expr_156)))

(declare-sort et1 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (et1 et1) Bool)

(declare-fun dummy3 () et1)

(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))

(define-fun dynamic_invariant3 ((temp___expr_162 Int)
  (temp___is_init_159 Bool) (temp___skip_constant_160 Bool)
  (temp___do_toplevel_161 Bool)) Bool (=>
                                      (or (= temp___is_init_159 true)
                                      (<= 0 99)) (in_range3 temp___expr_162)))

(declare-fun to_rep (et1) Int)

(declare-fun of_rep (Int) et1)

;; inversion_axiom
  (assert
  (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x et1)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort map1 0)

(declare-datatypes () ((map__ref (mk_map__ref (map__content map1)))))
(declare-fun get (map1 Int Int Int) et1)

(declare-fun set (map1 Int Int Int et1) map1)

;; Select_eq
  (assert
  (forall ((m map1))
  (forall ((i Int))
  (forall ((j Int))
  (forall ((k Int))
  (forall ((a et1))
  (! (= (get (set m i j k a) i j k) a) :pattern ((set m i j k a)) )))))))

;; Select_neq
  (assert
  (forall ((m map1))
  (forall ((i Int) (i2 Int))
  (forall ((j Int) (j2 Int))
  (forall ((k Int) (k2 Int))
  (forall ((a et1))
  (! (=> (not (and (= i i2) (and (= j j2) (= k k2))))
     (= (get (set m i j k a) i2 j2 k2) (get m i2 j2 k2))) :pattern ((get
                                                                    (set m i
                                                                    j k a) i2
                                                                    j2 k2)) :pattern (
  (set m i j k a) (get m i2 j2 k2)) )))))))

(declare-fun slide (map1 Int Int Int Int Int Int) map1)

;; slide_def
  (assert
  (forall ((a map1))
  (forall ((old_first Int) (new_first Int))
  (forall ((old_first_2 Int) (new_first_2 Int))
  (forall ((old_first_3 Int) (new_first_3 Int))
  (forall ((i Int))
  (forall ((j Int))
  (forall ((k Int))
  (! (= (get
        (slide a old_first new_first old_first_2 new_first_2 old_first_3
        new_first_3) i j k) (get a (- i (- new_first old_first))
                            (- j (- new_first_2 old_first_2))
                            (- k (- new_first_3 old_first_3)))) :pattern (
  (get
  (slide a old_first new_first old_first_2 new_first_2 old_first_3
  new_first_3) i j k)) )))))))))

(define-fun bool_eq4 ((a map1) (a__first Int) (a__last Int) (a__first_2 Int)
  (a__last_2 Int) (a__first_3 Int) (a__last_3 Int) (b map1) (b__first Int)
  (b__last Int) (b__first_2 Int) (b__last_2 Int) (b__first_3 Int)
  (b__last_3 Int)) Bool (ite (and
                             (and
                             (and
                             (ite (<= a__first a__last)
                             (and (<= b__first b__last)
                             (= (- a__last a__first) (- b__last b__first)))
                             (< b__last b__first))
                             (ite (<= a__first_2 a__last_2)
                             (and (<= b__first_2 b__last_2)
                             (= (- a__last_2 a__first_2) (- b__last_2 b__first_2)))
                             (< b__last_2 b__first_2)))
                             (ite (<= a__first_3 a__last_3)
                             (and (<= b__first_3 b__last_3)
                             (= (- a__last_3 a__first_3) (- b__last_3 b__first_3)))
                             (< b__last_3 b__first_3)))
                             (forall ((temp___idx_132 Int)
                             (temp___idx_133 Int) (temp___idx_134 Int))
                             (=>
                             (and
                             (and
                             (and (<= a__first temp___idx_132)
                             (<= temp___idx_132 a__last))
                             (and (<= a__first_2 temp___idx_133)
                             (<= temp___idx_133 a__last_2)))
                             (and (<= a__first_3 temp___idx_134)
                             (<= temp___idx_134 a__last_3)))
                             (= (to_rep
                                (get a temp___idx_132 temp___idx_133
                                temp___idx_134)) (to_rep
                                                 (get b
                                                 (+ (- b__first a__first) temp___idx_132)
                                                 (+ (- b__first_2 a__first_2) temp___idx_133)
                                                 (+ (- b__first_3 a__first_3) temp___idx_134)))))))
                        true false))

;; bool_eq_rev
  (assert
  (forall ((a map1) (b map1))
  (forall ((a__first Int) (a__last Int) (a__first_2 Int) (a__last_2 Int)
  (a__first_3 Int) (a__last_3 Int) (b__first Int) (b__last Int)
  (b__first_2 Int) (b__last_2 Int) (b__first_3 Int) (b__last_3 Int))
  (=>
  (= (bool_eq4 b b__first b__last b__first_2 b__last_2 b__first_3 b__last_3 a
     a__first a__last a__first_2 a__last_2 a__first_3 a__last_3) true)
  (and
  (and
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (ite (<= a__first_2 a__last_2)
  (and (<= b__first_2 b__last_2)
  (= (- a__last_2 a__first_2) (- b__last_2 b__first_2)))
  (< b__last_2 b__first_2)))
  (ite (<= a__first_3 a__last_3)
  (and (<= b__first_3 b__last_3)
  (= (- a__last_3 a__first_3) (- b__last_3 b__first_3)))
  (< b__last_3 b__first_3)))
  (forall ((temp___idx_132 Int) (temp___idx_133 Int) (temp___idx_134 Int))
  (=>
  (and
  (and (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (and (<= a__first_2 temp___idx_133) (<= temp___idx_133 a__last_2)))
  (and (<= a__first_3 temp___idx_134) (<= temp___idx_134 a__last_3)))
  (= (to_rep (get a temp___idx_132 temp___idx_133 temp___idx_134)) (to_rep
                                                                   (get b
                                                                   (+ (- b__first a__first) temp___idx_132)
                                                                   (+ (- b__first_2 a__first_2) temp___idx_133)
                                                                   (+ (- b__first_3 a__first_3) temp___idx_134)))))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun z () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun new_val () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun temp___238 (map1 Int Int Int Int) map1)

;; def_axiom
  (assert
  (forall ((temp___240 map1))
  (forall ((temp___241 Int) (temp___242 Int) (temp___243 Int)
  (temp___244 Int))
  (let ((temp___239 (temp___238 temp___240 temp___241 temp___242 temp___243
                    temp___244)))
  (forall ((temp___245 Int) (temp___246 Int) (temp___247 Int))
  (ite (and (and (= temp___245 temp___241) (= temp___246 temp___242))
       (= temp___247 temp___243))
  (= (get temp___239 temp___245 temp___246 temp___247) (of_rep temp___244))
  (= (get temp___239 temp___245 temp___246 temp___247) (get temp___240
                                                       temp___245 temp___246
                                                       temp___247))))))))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

;; H
  (assert (in_range x))

;; H
  (assert (in_range1 y))

;; H
  (assert (in_range2 z))

;; H
  (assert (in_range3 new_val))

;; H
  (assert (and (= o (+ new_val 1)) (in_range3 (+ new_val 1))))

;; H
  (assert (and (= o1 (+ z 1)) (in_range2 (+ z 1))))

;; H
  (assert (and (= o2 (- y 1)) (in_range1 (- y 1))))

(assert
;; WP_parameter_def
 ;; File "update_checks.adb", line 10, characters 0-0
  (not (in_range (- x 1))))
(check-sat)
