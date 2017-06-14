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

(declare-sort index 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 1001)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (index index) Bool)

(declare-fun dummy () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant ((temp___expr_171 Int)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)) Bool (=>
                                      (or (= temp___is_init_168 true)
                                      (<= 0 1001)) (in_range
                                      temp___expr_171)))

(declare-sort value 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 23) x) (<= x 69)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (value value) Bool)

(declare-fun dummy1 () value)

(declare-datatypes () ((value__ref (mk_value__ref (value__content value)))))
(define-fun value__ref___projection ((a value__ref)) value (value__content a))

(define-fun dynamic_invariant1 ((temp___expr_177 Int)
  (temp___is_init_174 Bool) (temp___skip_constant_175 Bool)
  (temp___do_toplevel_176 Bool)) Bool (=>
                                      (or (= temp___is_init_174 true)
                                      (<= (- 23) 69)) (in_range1
                                      temp___expr_177)))

(declare-fun to_rep (value) Int)

(declare-fun of_rep (Int) value)

;; inversion_axiom
  (assert
  (forall ((x value)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x value)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort map1 0)

(declare-datatypes () ((map__ref (mk_map__ref (map__content map1)))))
(declare-fun get (map1 Int Int Int) value)

(declare-fun set (map1 Int Int Int value) map1)

;; Select_eq
  (assert
  (forall ((m map1))
  (forall ((i Int))
  (forall ((j Int))
  (forall ((k Int))
  (forall ((a value))
  (! (= (get (set m i j k a) i j k) a) :pattern ((set m i j k a)) )))))))

;; Select_neq
  (assert
  (forall ((m map1))
  (forall ((i Int) (i2 Int))
  (forall ((j Int) (j2 Int))
  (forall ((k Int) (k2 Int))
  (forall ((a value))
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

(define-fun bool_eq2 ((a map1) (a__first Int) (a__last Int) (a__first_2 Int)
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
                             (forall ((temp___idx_136 Int)
                             (temp___idx_137 Int) (temp___idx_138 Int))
                             (=>
                             (and
                             (and
                             (and (<= a__first temp___idx_136)
                             (<= temp___idx_136 a__last))
                             (and (<= a__first_2 temp___idx_137)
                             (<= temp___idx_137 a__last_2)))
                             (and (<= a__first_3 temp___idx_138)
                             (<= temp___idx_138 a__last_3)))
                             (= (to_rep
                                (get a temp___idx_136 temp___idx_137
                                temp___idx_138)) (to_rep
                                                 (get b
                                                 (+ (- b__first a__first) temp___idx_136)
                                                 (+ (- b__first_2 a__first_2) temp___idx_137)
                                                 (+ (- b__first_3 a__first_3) temp___idx_138)))))))
                        true false))

;; bool_eq_rev
  (assert
  (forall ((a map1) (b map1))
  (forall ((a__first Int) (a__last Int) (a__first_2 Int) (a__last_2 Int)
  (a__first_3 Int) (a__last_3 Int) (b__first Int) (b__last Int)
  (b__first_2 Int) (b__last_2 Int) (b__first_3 Int) (b__last_3 Int))
  (=>
  (= (bool_eq2 b b__first b__last b__first_2 b__last_2 b__first_3 b__last_3 a
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
  (forall ((temp___idx_136 Int) (temp___idx_137 Int) (temp___idx_138 Int))
  (=>
  (and
  (and (and (<= a__first temp___idx_136) (<= temp___idx_136 a__last))
  (and (<= a__first_2 temp___idx_137) (<= temp___idx_137 a__last_2)))
  (and (<= a__first_3 temp___idx_138) (<= temp___idx_138 a__last_3)))
  (= (to_rep (get a temp___idx_136 temp___idx_137 temp___idx_138)) (to_rep
                                                                   (get b
                                                                   (+ (- b__first a__first) temp___idx_136)
                                                                   (+ (- b__first_2 a__first_2) temp___idx_137)
                                                                   (+ (- b__first_3 a__first_3) temp___idx_138)))))))))))

(declare-fun a () map1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun j () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun k () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun v () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

;; H
  (assert (in_range i))

;; H
  (assert (in_range j))

;; H
  (assert (in_range k))

;; H
  (assert (in_range1 v))

(assert
;; WP_parameter_def
 ;; File "arrays_multidim.adb", line 132, characters 0-0
  (not (= (to_rep (get a i j k)) v)))
(check-sat)
