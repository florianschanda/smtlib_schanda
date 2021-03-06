;; produced by cvc4_16.drv ;;
(set-info :smt-lib-version 2.5)
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
(define-fun fp.isFinite32 ((x Float32)) Bool (not (or (fp.isInfinite x) (fp.isNaN x))))
(define-fun fp.isIntegral32 ((x Float32)) Bool (or (fp.isZero x) (and (fp.isNormal x) (= x (fp.roundToIntegral RNE x)))))
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-const us_null_ext__ us_private)

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

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                (fp.isPositive x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite x)
                                                 (fp.isNegative x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero x)
                                            (fp.isPositive x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero x)
                                             (fp.isNegative x)))

(declare-const max_int Int)

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isPositive y))
                    (and (fp.isNegative x) (fp.isNegative y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive x) (fp.isNegative y))
                    (and (fp.isNegative x) (fp.isPositive y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive z))
                    (=> (diff_sign x y) (fp.isNegative z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt1 (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive x) (< 0.0 r))
                 (and (fp.isNegative x) (< r 0.0))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort num 0)

(define-fun in_range ((x Float32)) Bool (and (fp.isFinite32 x)
                                        (and
                                        (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                        (fp.leq x (fp #b0 #b10000101 #b10010000000000000000000)))))

(declare-fun user_eq (num num) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Float32)

(declare-const dummy num)

(declare-datatypes () ((num__ref (mk_num__ref (num__content num)))))
(define-fun num__ref___projection ((a num__ref)) num (num__content a))

(define-fun dynamic_invariant ((temp___expr_587 Float32)
  (temp___is_init_583 Bool) (temp___skip_constant_584 Bool)
  (temp___do_toplevel_585 Bool)
  (temp___do_typ_inv_586 Bool)) Bool (=>
                                     (or (= temp___is_init_583 true)
                                     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000)))
                                     (in_range temp___expr_587)))

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(declare-sort num1 0)

(define-fun in_range1 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000010 #b10000000000000000000000)))))

(declare-fun user_eq1 (num1 num1) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-const dummy1 num1)

(declare-datatypes () ((num__ref1 (mk_num__ref1 (num__content1 num1)))))
(define-fun num__ref___2__projection ((a num__ref1)) num1 (num__content1 a))

(define-fun dynamic_invariant1 ((temp___expr_595 Float32)
  (temp___is_init_591 Bool) (temp___skip_constant_592 Bool)
  (temp___do_toplevel_593 Bool)
  (temp___do_typ_inv_594 Bool)) Bool (=>
                                     (or (= temp___is_init_591 true)
                                     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b10000000000000000000000)))
                                     (in_range1 temp___expr_595)))

(declare-sort field 0)

(declare-fun fieldqtint (field) Int)

;; field'axiom
  (assert
  (forall ((i field)) (and (<= 0 (fieldqtint i)) (<= (fieldqtint i) 255))))

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (field field) Bool)

(declare-const dummy2 field)

(declare-datatypes () ((field__ref (mk_field__ref (field__content field)))))
(define-fun field__ref___projection ((a field__ref)) field (field__content a))

(define-fun dynamic_invariant2 ((temp___expr_527 Int)
  (temp___is_init_523 Bool) (temp___skip_constant_524 Bool)
  (temp___do_toplevel_525 Bool)
  (temp___do_typ_inv_526 Bool)) Bool (=>
                                     (or (= temp___is_init_523 true)
                                     (<= 0 255)) (in_range2 temp___expr_527)))

(declare-sort feet 0)

(define-fun in_range3 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000101 #b10010000000000000000000)))))

(declare-fun user_eq3 (feet feet) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)

(declare-const dummy3 feet)

(declare-datatypes () ((feet__ref (mk_feet__ref (feet__content feet)))))
(define-fun feet__ref___projection ((a feet__ref)) feet (feet__content a))

(define-fun dynamic_invariant3 ((temp___expr_573 Float32)
  (temp___is_init_569 Bool) (temp___skip_constant_570 Bool)
  (temp___do_toplevel_571 Bool)
  (temp___do_typ_inv_572 Bool)) Bool (=>
                                     (or (= temp___is_init_569 true)
                                     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000)))
                                     (in_range3 temp___expr_573)))

(declare-sort inches 0)

(define-fun in_range4 ((x Float32)) Bool (and (fp.isFinite32 x)
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000010 #b10000000000000000000000)))))

(declare-fun user_eq4 (inches inches) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Float32)

(declare-const dummy4 inches)

(declare-datatypes ()
((inches__ref (mk_inches__ref (inches__content inches)))))
(define-fun inches__ref___projection ((a inches__ref)) inches (inches__content
                                                              a))

(define-fun dynamic_invariant4 ((temp___expr_580 Float32)
  (temp___is_init_576 Bool) (temp___skip_constant_577 Bool)
  (temp___do_toplevel_578 Bool)
  (temp___do_typ_inv_579 Bool)) Bool (=>
                                     (or (= temp___is_init_576 true)
                                     (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b10000000000000000000000)))
                                     (in_range4 temp___expr_580)))

(declare-const attr__ATTRIBUTE_ADDRESS3 Int)

(declare-const attr__ATTRIBUTE_ADDRESS4 Int)

(declare-const attr__ATTRIBUTE_ADDRESS5 Int)

(declare-const attr__ATTRIBUTE_ADDRESS6 Int)

(declare-const attr__ATTRIBUTE_ADDRESS7 Int)

(declare-const attr__ATTRIBUTE_ADDRESS8 Int)

(declare-const c3b Float32)

(declare-const attr__ATTRIBUTE_ADDRESS9 Int)

(declare-const default_fore Int)

(declare-const default_aft Int)

(declare-const default_exp Int)

(declare-const default_fore1 Int)

(declare-const default_aft1 Int)

(declare-const default_exp1 Int)

(declare-const room_length Float32)

(declare-const wall_thickness Float32)

(declare-const total Float32)

(declare-const good_types__feet_io__get__2__item Float32)

(declare-const room_length1 Float32)

(declare-const good_types__inch_io__get__2__item Float32)

(declare-const wall_thickness1 Float32)

;; H
  (assert (in_range2 default_fore))

;; H
  (assert (in_range2 default_aft))

;; H
  (assert (in_range2 default_exp))

;; H
  (assert (in_range2 default_fore1))

;; H
  (assert (in_range2 default_aft1))

;; H
  (assert (in_range2 default_exp1))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000))
  (in_range3 room_length)))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b10000000000000000000000))
  (in_range4 wall_thickness)))

;; H
  (assert
  (=>
  (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000101 #b10010000000000000000000))
  (in_range3 total)))

;; H
  (assert (in_range good_types__feet_io__get__2__item))

;; H
  (assert (= room_length1 good_types__feet_io__get__2__item))

;; H
  (assert (in_range1 good_types__inch_io__get__2__item))

;; H
  (assert (= wall_thickness1 good_types__inch_io__get__2__item))

;; H
  (assert (= wall_thickness1 c3b))

;; H
  (assert (in_range4 c3b))

(assert
;; WP_parameter_def
 ;; File "a-tiflio.ads", line 80, characters 0-0
  (not (in_range3
  (fp.add RNE room_length1 (fp.mul RNE (fp #b0 #b10000000 #b00000000000000000000000) (fp.div RNE
  c3b (fp #b0 #b10000010 #b10000000000000000000000)))))))
(check-sat)
(exit)
