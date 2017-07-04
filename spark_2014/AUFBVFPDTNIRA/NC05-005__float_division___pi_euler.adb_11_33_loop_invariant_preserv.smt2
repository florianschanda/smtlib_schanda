;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
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

(declare-fun pow2 (Int) Int)

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float64)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float64)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float64)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float64)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float64)

(declare-fun to_int1 (RoundingMode Float64) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 9007199254740991.0 19958403095347198116563727130368385660674512604354575415025472424372118918689640657849579654926357010893424468441924952439724379883935936607391717982848314203200056729510856765175377214443629871826533567445439239933308104551208703888888552684480441575071209068757560416423584952303440099278848.0)) x)
                                     (<= x (* 9007199254740991.0 19958403095347198116563727130368385660674512604354575415025472424372118918689640657849579654926357010893424468441924952439724379883935936607391717982848314203200056729510856765175377214443629871826533567445439239933308104551208703888888552684480441575071209068757560416423584952303440099278848.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 9007199254740992) i)
                                             (<= i 9007199254740992)))

(define-fun same_sign ((x Float64)
  (y Float64)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float64)
  (y Float64)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float64) (x Float64)
  (y Float64)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float64)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float64) Bool)

(define-fun neq ((x Float64) (y Float64)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float64)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(declare-sort long_float 0)

(declare-fun user_eq2 (long_float long_float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float64)

(declare-fun dummy2 () long_float)

(declare-datatypes ()
((long_float__ref (mk_long_float__ref (long_float__content long_float)))))
(define-fun long_float__ref___projection ((a long_float__ref)) long_float 
  (long_float__content a))

(define-fun dynamic_invariant1 ((temp___expr_57 Float64)
  (temp___is_init_54 Bool) (temp___skip_constant_55 Bool)
  (temp___do_toplevel_56 Bool)) Bool (=>
                                     (or (= temp___is_init_54 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_57) (fp.isNaN temp___expr_57)))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(declare-fun index () Int)

(declare-fun pi1 () Float64)

(declare-fun erreur () Float64)

(declare-fun o () Float64)

(declare-fun o1 () Int)

(declare-fun result () Float64)

(declare-fun pi2 () Float64)

(declare-fun result1 () Int)

(declare-fun index1 () Int)

(declare-fun result2 () Float64)

(declare-fun erreur1 () Float64)

(declare-fun index2 () Int)

(declare-fun pi3 () Float64)

(declare-fun erreur2 () Float64)

(declare-fun result3 () Float64)

(declare-fun erreur3 () Float64)

(declare-fun result4 () Float64)

(declare-fun pi4 () Float64)

(declare-fun result5 () Int)

(declare-fun index3 () Int)

;; H
  (assert (=> (<= 1 2147483647) (in_range3 index)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite pi1) (fp.isNaN pi1)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite erreur) (fp.isNaN erreur)))))

;; H
  (assert (= result pi1))

;; H
  (assert
  (= pi2 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))

;; H
  (assert (= result1 index))

;; H
  (assert (= index1 1))

;; H
  (assert (= result2 erreur))

;; H
  (assert
  (= erreur1 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))

;; H
  (assert
  (not
  (fp.lt erreur1 (fp #b0 #b01111100111 #b0101011110011000111011100010001100001000110000111010))))

;; H
  (assert (<= 1 index2))

;; H
  (assert
  (and
  (and
  (and (=> (<= 1 2147483647) (in_range3 index2))
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite pi3) (fp.isNaN pi3)))))
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite erreur2) (fp.isNaN erreur2)))))
  (not
  (fp.lt erreur2 (fp #b0 #b01111100111 #b0101011110011000111011100010001100001000110000111010)))))

;; H
  (assert
  (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) 
  (of_int RNE index2)))

;; H
  (assert (= erreur2 result3))

;; H
  (assert
  (= erreur3 (fp.div RNE (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) 
  (of_int RNE index2))))

;; H
  (assert
  (and (= o (fp.add RNE pi3 erreur3))
  (not (or (fp.isInfinite (fp.add RNE pi3 erreur3)) (fp.isNaN (fp.add RNE 
  pi3 erreur3))))))

;; H
  (assert (= pi3 result4))

;; H
  (assert (= pi4 o))

;; H
  (assert (and (= o1 (+ index2 1)) (in_range2 (+ index2 1))))

;; H
  (assert (= result5 index2))

;; H
  (assert (= index3 o1))

;; H
  (assert
  (not
  (fp.lt erreur3 (fp #b0 #b01111100111 #b0101011110011000111011100010001100001000110000111010))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (<= 1 index3)))
(check-sat)
