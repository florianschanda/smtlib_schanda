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

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun region_checks__in_unit_square__result () Int)

(declare-fun result () Int)

(declare-fun region_checks__in_unit_square__result1 () Int)

(declare-fun result1 () Int)

(declare-fun region_checks__in_unit_square__result2 () Int)

(declare-fun result2 () Int)

(declare-fun region_checks__in_unit_square__result3 () Int)

(declare-fun result3 () Int)

(declare-fun region_checks__in_unit_square__result4 () Int)

(declare-fun result4 () Int)

(declare-fun region_checks__in_unit_square__result5 () Int)

(declare-fun region_checks__in_unit_square__result6 () Int)

(declare-fun region_checks__in_unit_square__result7 () Int)

(declare-fun region_checks__in_unit_square__result8 () Int)

(declare-fun region_checks__in_unit_square__result9 () Int)

(declare-fun region_checks__in_unit_square__result10 () Int)

(declare-fun region_checks__in_unit_square__result11 () Int)

(declare-fun region_checks__in_unit_square__result12 () Int)

(declare-fun region_checks__in_unit_square__result13 () Int)

(declare-fun region_checks__in_unit_square__result14 () Int)

(declare-fun region_checks__in_unit_square__result15 () Int)

(declare-fun region_checks__in_unit_square__result16 () Int)

(declare-fun region_checks__in_unit_square__result17 () Int)

(define-fun region_checks__in_unit_square__result18 () int__ref (mk_int__ref
                                                                region_checks__in_unit_square__result14))

(define-fun region_checks__in_unit_square__result19 () int__ref (mk_int__ref
                                                                region_checks__in_unit_square__result12))

(define-fun region_checks__in_unit_square__result20 () int__ref (mk_int__ref
                                                                region_checks__in_unit_square__result10))

(define-fun region_checks__in_unit_square__result21 () int__ref (mk_int__ref
                                                                region_checks__in_unit_square__result8))

;; H
  (assert (in_range1 x))

;; H
  (assert (in_range1 y))

;; H
  (assert
  (= region_checks__in_unit_square__result18 region_checks__in_unit_square__result19))

;; H
  (assert
  (= region_checks__in_unit_square__result15 region_checks__in_unit_square__result13))

;; H
  (assert
  (=> (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1))))
  (= region_checks__in_unit_square__result1 region_checks__in_unit_square__result12)))

;; H
  (assert
  (=> (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1))))
  (= region_checks__in_unit_square__result13 region_checks__in_unit_square__result1)))

;; H
  (assert
  (=> (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1))))
  (= result region_checks__in_unit_square__result)))

;; H
  (assert
  (=> (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1))))
  (= region_checks__in_unit_square__result1 1)))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (= region_checks__in_unit_square__result19 region_checks__in_unit_square__result20)))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (= region_checks__in_unit_square__result13 region_checks__in_unit_square__result11)))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (and (<= 0 x) (<= 0 y))
  (= region_checks__in_unit_square__result2 region_checks__in_unit_square__result10))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (and (<= 0 x) (<= 0 y))
  (= region_checks__in_unit_square__result11 region_checks__in_unit_square__result2))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (and (<= 0 x) (<= 0 y))
  (= result1 region_checks__in_unit_square__result))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (and (<= 0 x) (<= 0 y)) (= region_checks__in_unit_square__result2 0))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (= region_checks__in_unit_square__result20 region_checks__in_unit_square__result21))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (= region_checks__in_unit_square__result11 region_checks__in_unit_square__result9))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (and (< x 0) (<= 0 y))
  (= region_checks__in_unit_square__result3 region_checks__in_unit_square__result8)))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (and (< x 0) (<= 0 y))
  (= region_checks__in_unit_square__result9 region_checks__in_unit_square__result3)))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (and (< x 0) (<= 0 y))
  (= result2 region_checks__in_unit_square__result)))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (and (< x 0) (<= 0 y))
  (= region_checks__in_unit_square__result3 (- 1))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (= region_checks__in_unit_square__result21 (mk_int__ref
                                             region_checks__in_unit_square__result6))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (= region_checks__in_unit_square__result9 region_checks__in_unit_square__result7)))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (=> (and (< x 0) (< y 0))
  (= region_checks__in_unit_square__result4 region_checks__in_unit_square__result6))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (=> (and (< x 0) (< y 0))
  (= region_checks__in_unit_square__result7 region_checks__in_unit_square__result4))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (=> (and (< x 0) (< y 0))
  (= result3 region_checks__in_unit_square__result))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (=> (and (< x 0) (< y 0)) (= region_checks__in_unit_square__result4 0))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (=> (not (and (< x 0) (< y 0)))
  (= region_checks__in_unit_square__result5 region_checks__in_unit_square__result6))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (=> (not (and (< x 0) (< y 0)))
  (= region_checks__in_unit_square__result7 region_checks__in_unit_square__result5))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (=> (not (and (< x 0) (< y 0)))
  (= result4 region_checks__in_unit_square__result))))))

;; H
  (assert
  (=> (not (and (<= (- 1) x) (and (<= x 1) (and (<= (- 1) y) (<= y 1)))))
  (=> (not (and (<= 0 x) (<= 0 y)))
  (=> (not (and (< x 0) (<= 0 y)))
  (=> (not (and (< x 0) (< y 0)))
  (= region_checks__in_unit_square__result5 (- 1)))))))

;; H
  (assert
  (= (mk_int__ref region_checks__in_unit_square__result16) region_checks__in_unit_square__result18))

;; H
  (assert
  (= region_checks__in_unit_square__result17 region_checks__in_unit_square__result15))

;; H
  (assert
  (ite (= (ite (= (>= x 0) true) (>= y 0) false) true) (ite (= (ite (= (<= 
                                                               x 1) true) (<= 
                                                               y 1) false) false) true false) true))

;; H
  (assert (ite (= (ite (= (>= x 0) true) (>= y 0) false) true) true false))

(assert
;; WP_parameter_def
 ;; File "region_checks.ads", line 4, characters 0-0
  (not (= region_checks__in_unit_square__result16 0)))
(check-sat)
