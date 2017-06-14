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

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
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
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep (select a temp___idx_133)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_133)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
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
  (forall ((a (Array Int integer)) (b (Array Int integer)))
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

(declare-sort keytableentries 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (keytableentries keytableentries) Bool)

(declare-fun dummy1 () keytableentries)

(declare-datatypes ()
((keytableentries__ref
 (mk_keytableentries__ref (keytableentries__content keytableentries)))))
(define-fun keytableentries__ref___projection ((a keytableentries__ref)) keytableentries 
  (keytableentries__content a))

(define-fun dynamic_invariant ((temp___expr_183 Int)
  (temp___is_init_180 Bool) (temp___skip_constant_181 Bool)
  (temp___do_toplevel_182 Bool)) Bool (=>
                                      (or (= temp___is_init_180 true)
                                      (<= 1 10)) (in_range2 temp___expr_183)))

(declare-fun inkeys_v1 () (Array Int integer))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun inkeys_v2 () (Array Int integer))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun j () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun outkeys_v1 () (Array Int integer))

(declare-fun outkeys_v2 () (Array Int integer))

(declare-fun i () Int)

(declare-fun i1 () Int)

(declare-fun temp___364 () Int)

(declare-fun temp___362 () (Array Int integer))

(declare-fun o () integer)

(declare-fun o1 () (Array Int integer))

(declare-fun temp___368 () (Array Int integer))

(declare-fun temp___367 () Int)

(declare-fun o2 () integer)

(declare-fun o3 () (Array Int integer))

(declare-fun outkeys_v11 () (Array Int integer))

(declare-fun outkeys_v21 () (Array Int integer))

(declare-fun result () Int)

(declare-fun i2 () Int)

(declare-fun result1 () (Array Int integer))

(declare-fun outkeys_v12 () (Array Int integer))

(declare-fun outkeys_v13 () (Array Int integer))

(declare-fun i3 () Int)

(declare-fun outkeys_v14 () (Array Int integer))

(declare-fun i4 () Int)

(declare-fun outkeys_v15 () (Array Int integer))

(declare-fun i5 () Int)

(declare-fun outkeys_v16 () (Array Int integer))

(declare-fun i6 () Int)

(declare-fun outkeys_v17 () (Array Int integer))

(declare-fun i7 () Int)

(declare-fun result2 () Int)

(declare-fun i8 () Int)

(declare-fun result3 () (Array Int integer))

(declare-fun outkeys_v22 () (Array Int integer))

(declare-fun outkeys_v23 () (Array Int integer))

(declare-fun i9 () Int)

(declare-fun outkeys_v24 () map__ref)

(declare-fun i10 () int__ref)

(declare-fun outkeys_v25 () (Array Int integer))

(declare-fun i11 () Int)

(declare-fun outkeys_v26 () map__ref)

(declare-fun i12 () int__ref)

(declare-fun outkeys_v27 () (Array Int integer))

(declare-fun i13 () Int)

(declare-fun outkeys_v18 () map__ref)

(declare-fun outkeys_v28 () map__ref)

(declare-fun i14 () int__ref)

(declare-fun i15 () int__ref)

(declare-fun outkeys_v19 () (Array Int integer))

(declare-fun outkeys_v29 () (Array Int integer))

(declare-fun i16 () Int)

(declare-fun i17 () Int)

(define-fun i18 () int__ref (mk_int__ref i6))

(define-fun outkeys_v110 () map__ref (mk_map__ref outkeys_v16))

(define-fun outkeys_v210 () map__ref (mk_map__ref outkeys_v2))

(define-fun outkeys_v111 () map__ref (mk_map__ref outkeys_v1))

;; H
  (assert (in_range2 j))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i)))

;; H
  (assert (= i2 1))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= temp___364 i2)))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= temp___362 outkeys_v1)))

;; H
  (assert
  (=> (and (<= 1 i2) (<= i2 10))
  (= (to_rep o) (to_rep (select inkeys_v1 i2)))))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= o1 (store outkeys_v1 i2 o))))

;; H
  (assert
  (=> (and (<= 1 i2) (<= i2 10)) (= (mk_map__ref result1) outkeys_v111)))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= outkeys_v12 o1)))

;; H
  (assert
  (=> (and (<= 1 i2) (<= i2 10))
  (forall ((k Int))
  (=> (and (<= 1 k) (<= k 10))
  (=> (<= k i3)
  (= (to_rep (select outkeys_v13 k)) (to_rep (select inkeys_v1 k))))))))

;; H
  (assert
  (=> (and (<= 1 i2) (<= i2 10))
  (and
  (and
  (forall ((temp___363 Int))
  (=> (and (<= 1 temp___363) (<= temp___363 10))
  (=> (< i3 temp___363)
  (= (select outkeys_v13 temp___363) (select temp___362 temp___363)))))
  (=> (<= 1 10) (in_range2 i3))) (and (<= 1 i3) (<= i3 10)))))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= i3 10)))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= i3 i4)))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= outkeys_v13 outkeys_v14)))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= i5 i3)))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= outkeys_v15 outkeys_v13)))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= i18 (mk_int__ref i4))))

;; H
  (assert
  (=> (and (<= 1 i2) (<= i2 10)) (= outkeys_v110 (mk_map__ref outkeys_v14))))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= i7 i5)))

;; H
  (assert (=> (and (<= 1 i2) (<= i2 10)) (= outkeys_v17 outkeys_v15)))

;; H
  (assert (=> (not (and (<= 1 i2) (<= i2 10))) (= i2 i6)))

;; H
  (assert
  (=> (not (and (<= 1 i2) (<= i2 10))) (= outkeys_v110 outkeys_v111)))

;; H
  (assert (=> (not (and (<= 1 i2) (<= i2 10))) (= i7 i2)))

;; H
  (assert (=> (not (and (<= 1 i2) (<= i2 10))) (= outkeys_v17 outkeys_v11)))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref i1)))

;; H
  (assert (= i8 1))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= temp___368 outkeys_v2)))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= temp___367 i8)))

;; H
  (assert
  (=> (and (<= 1 i8) (<= i8 10))
  (= (to_rep o2) (to_rep (select inkeys_v2 i8)))))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= o3 (store outkeys_v2 i8 o2))))

;; H
  (assert
  (=> (and (<= 1 i8) (<= i8 10)) (= (mk_map__ref result3) outkeys_v210)))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= outkeys_v22 o3)))

;; H
  (assert
  (=> (and (<= 1 i8) (<= i8 10))
  (forall ((k Int))
  (=> (and (<= 1 k) (<= k 10))
  (=> (<= k i9)
  (= (to_rep (select outkeys_v23 k)) (to_rep (select inkeys_v2 k))))))))

;; H
  (assert
  (=> (and (<= 1 i8) (<= i8 10))
  (and
  (and (=> (<= 1 10) (in_range2 i9))
  (forall ((temp___369 Int))
  (=> (and (<= 1 temp___369) (<= temp___369 10))
  (=> (< i9 temp___369)
  (= (select outkeys_v23 temp___369) (select temp___368 temp___369))))))
  (and (<= 1 i9) (<= i9 10)))))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= i9 10)))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= i10 (mk_int__ref i9))))

;; H
  (assert
  (=> (and (<= 1 i8) (<= i8 10)) (= outkeys_v24 (mk_map__ref outkeys_v23))))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= i11 i9)))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= outkeys_v25 outkeys_v23)))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= i12 i10)))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= outkeys_v26 outkeys_v24)))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= i13 i11)))

;; H
  (assert (=> (and (<= 1 i8) (<= i8 10)) (= outkeys_v27 outkeys_v25)))

;; H
  (assert (=> (not (and (<= 1 i8) (<= i8 10))) (= i12 (mk_int__ref i8))))

;; H
  (assert (=> (not (and (<= 1 i8) (<= i8 10))) (= outkeys_v26 outkeys_v210)))

;; H
  (assert (=> (not (and (<= 1 i8) (<= i8 10))) (= i13 i8)))

;; H
  (assert (=> (not (and (<= 1 i8) (<= i8 10))) (= outkeys_v27 outkeys_v21)))

;; H
  (assert (= i15 i12))

;; H
  (assert (= i14 i18))

;; H
  (assert (= outkeys_v28 outkeys_v26))

;; H
  (assert (= outkeys_v18 outkeys_v110))

;; H
  (assert (= i17 i13))

;; H
  (assert (= i16 i7))

;; H
  (assert (= outkeys_v29 outkeys_v27))

;; H
  (assert (= outkeys_v19 outkeys_v17))

;; H
  (assert
  (= (= (to_rep (select inkeys_v1 j)) (to_rep (select inkeys_v2 j))) true))

(assert
;; WP_parameter_def
 ;; File "infoflow.ads", line 43, characters 0-0
  (not
  (= (to_rep (select (map__content outkeys_v18) j)) (to_rep
                                                    (select (map__content
                                                            outkeys_v28) 
                                                    j)))))
(check-sat)
