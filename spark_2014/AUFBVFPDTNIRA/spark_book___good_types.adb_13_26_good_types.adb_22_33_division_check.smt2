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

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int1 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort field 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (field field) Bool)

(declare-fun dummy () field)

(declare-datatypes () ((field__ref (mk_field__ref (field__content field)))))
(define-fun field__ref___projection ((a field__ref)) field (field__content a))

(define-fun dynamic_invariant ((temp___expr_472 Int)
  (temp___is_init_469 Bool) (temp___skip_constant_470 Bool)
  (temp___do_toplevel_471 Bool)) Bool (=>
                                      (or (= temp___is_init_469 true)
                                      (<= 0 255)) (in_range1
                                      temp___expr_472)))

(declare-sort feet 0)

(define-fun in_range2 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000101 #b10010000000000000000000)))))

(declare-fun user_eq1 (feet feet) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy1 () feet)

(declare-datatypes () ((feet__ref (mk_feet__ref (feet__content feet)))))
(define-fun feet__ref___projection ((a feet__ref)) feet (feet__content a))

(define-fun dynamic_invariant1 ((temp___expr_515 Float32)
  (temp___is_init_512 Bool) (temp___skip_constant_513 Bool)
  (temp___do_toplevel_514 Bool)) Bool (=>
                                      (or (= temp___is_init_512 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000)))
                                      (in_range2 temp___expr_515)))

(declare-sort inches 0)

(define-fun in_range3 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000010 #b10000000000000000000000)))))

(declare-fun user_eq2 (inches inches) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy2 () inches)

(declare-datatypes ()
((inches__ref (mk_inches__ref (inches__content inches)))))
(define-fun inches__ref___projection ((a inches__ref)) inches (inches__content
                                                              a))

(define-fun dynamic_invariant2 ((temp___expr_521 Float32)
  (temp___is_init_518 Bool) (temp___skip_constant_519 Bool)
  (temp___do_toplevel_520 Bool)) Bool (=>
                                      (or (= temp___is_init_518 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b10000000000000000000000)))
                                      (in_range3 temp___expr_521)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort num 0)

(define-fun in_range4 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000101 #b10010000000000000000000)))))

(declare-fun user_eq3 (num num) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-fun dummy3 () num)

(declare-datatypes () ((num__ref (mk_num__ref (num__content num)))))
(define-fun num__ref___projection ((a num__ref)) num (num__content a))

(define-fun dynamic_invariant3 ((temp___expr_527 Float32)
  (temp___is_init_524 Bool) (temp___skip_constant_525 Bool)
  (temp___do_toplevel_526 Bool)) Bool (=>
                                      (or (= temp___is_init_524 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000)))
                                      (in_range4 temp___expr_527)))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-sort num1 0)

(define-fun in_range5 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000010 #b10000000000000000000000)))))

(declare-fun user_eq4 (num1 num1) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Float32)

(declare-fun dummy4 () num1)

(declare-datatypes () ((num__ref1 (mk_num__ref1 (num__content1 num1)))))
(define-fun num__ref_2__projection ((a num__ref1)) num1 (num__content1 a))

(define-fun dynamic_invariant4 ((temp___expr_536 Float32)
  (temp___is_init_533 Bool) (temp___skip_constant_534 Bool)
  (temp___do_toplevel_535 Bool)) Bool (=>
                                      (or (= temp___is_init_533 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b10000000000000000000000)))
                                      (in_range5 temp___expr_536)))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun c3b () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun default_fore () Int)

(declare-fun default_aft () Int)

(declare-fun default_exp () Int)

(declare-fun default_fore1 () Int)

(declare-fun default_aft1 () Int)

(declare-fun default_exp1 () Int)

(declare-fun room_length () Float32)

(declare-fun wall_thickness () Float32)

(declare-fun total () Float32)

(declare-fun good_types__feet_io__get__2__item () Float32)

(declare-fun result () Float32)

(declare-fun room_length1 () Float32)

(declare-fun good_types__inch_io__get__2__item () Float32)

(declare-fun result1 () Float32)

(declare-fun wall_thickness1 () Float32)

;; H
  (assert (in_range1 default_fore))

;; H
  (assert (in_range1 default_aft))

;; H
  (assert (in_range1 default_exp))

;; H
  (assert (in_range1 default_fore1))

;; H
  (assert (in_range1 default_aft1))

;; H
  (assert (in_range1 default_exp1))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000))
  (in_range2 room_length)))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b10000000000000000000000))
  (in_range3 wall_thickness)))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000))
  (in_range2 total)))

;; H
  (assert (in_range4 good_types__feet_io__get__2__item))

;; H
  (assert (= result room_length))

;; H
  (assert (= room_length1 good_types__feet_io__get__2__item))

;; H
  (assert (in_range5 good_types__inch_io__get__2__item))

;; H
  (assert (= result1 wall_thickness))

;; H
  (assert (= wall_thickness1 good_types__inch_io__get__2__item))

;; H
  (assert (= wall_thickness1 c3b))

;; H
  (assert (in_range3 c3b))

(assert
;; WP_parameter_def
 ;; File "a-tiflio.ads", line 80, characters 0-0
  (not
  (not
  (fp.eq (fp #b0 #b10000010 #b10000000000000000000000) ((_ to_fp 8 24) #x00000000)))))
(check-sat)
