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

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float64)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort tfloat64B 0)

(declare-fun user_eq (tfloat64B tfloat64B) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float64)

(declare-fun dummy () tfloat64B)

(declare-datatypes ()
((tfloat64B__ref (mk_tfloat64B__ref (tfloat64B__content tfloat64B)))))
(define-fun tfloat64B__ref___projection ((a tfloat64B__ref)) tfloat64B 
  (tfloat64B__content a))

(declare-sort float64 0)

(declare-fun user_eq1 (float64 float64) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float64)

(declare-fun dummy1 () float64)

(declare-datatypes ()
((float64__ref (mk_float64__ref (float64__content float64)))))
(define-fun float64__ref___projection ((a float64__ref)) float64 (float64__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_135 Float64)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_135) (fp.isNaN temp___expr_135)))))

(declare-sort tframeB 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 32768) x) (<= x 32767)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (tframeB tframeB) Bool)

(declare-fun dummy2 () tframeB)

(declare-datatypes ()
((tframeB__ref (mk_tframeB__ref (tframeB__content tframeB)))))
(define-fun tframeB__ref___projection ((a tframeB__ref)) tframeB (tframeB__content
                                                                 a))

(declare-sort frame 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 25000)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (frame frame) Bool)

(declare-fun dummy3 () frame)

(declare-datatypes () ((frame__ref (mk_frame__ref (frame__content frame)))))
(define-fun frame__ref___projection ((a frame__ref)) frame (frame__content a))

(define-fun dynamic_invariant1 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 25000)) (in_range3
                                      temp___expr_141)))

(declare-sort ratio_t 0)

(define-fun in_range4 ((x Float64)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun user_eq4 (ratio_t ratio_t) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE5 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Float64)

(declare-fun dummy4 () ratio_t)

(declare-datatypes ()
((ratio_t__ref (mk_ratio_t__ref (ratio_t__content ratio_t)))))
(define-fun ratio_t__ref___projection ((a ratio_t__ref)) ratio_t (ratio_t__content
                                                                 a))

(define-fun dynamic_invariant2 ((temp___expr_147 Float64)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
                                      (in_range4 temp___expr_147)))

(declare-fun low_bound (Int) Float64)

(declare-fun low_bound__function_guard (Float64 Int) Bool)

;; low_bound__post_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant1 n true true true) (dynamic_invariant
     (low_bound n) true false true)) :pattern ((low_bound n)) )))

;; low_bound__def_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant1 n true true true)
     (= (low_bound n) (fp.mul RNE (of_int RNE n) (fp.neg (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))))) :pattern (
  (low_bound n)) )))

(declare-fun high_bound (Int) Float64)

(declare-fun high_bound__function_guard (Float64 Int) Bool)

;; high_bound__post_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant1 n true true true) (dynamic_invariant
     (high_bound n) true false true)) :pattern ((high_bound n)) )))

;; high_bound__def_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant1 n true true true)
     (= (high_bound n) (fp.mul RNE (of_int RNE n) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)))) :pattern (
  (high_bound n)) )))

(declare-fun invariant__ (Int Float64) Bool)

(declare-fun invariant____function_guard (Bool Int Float64) Bool)

;; invariant____post_axiom
  (assert true)

;; invariant____def_axiom
  (assert
  (forall ((n Int))
  (forall ((speed Float64))
  (! (= (= (invariant__ n speed) true)
     (and (fp.leq (low_bound n) speed) (fp.leq speed (high_bound n)))) :pattern (
  (invariant__ n speed)) ))))

(declare-fun in_bounds (Float64) Bool)

(declare-fun in_bounds__function_guard (Bool Float64) Bool)

;; in_bounds__post_axiom
  (assert true)

;; in_bounds__def_axiom
  (assert
  (forall ((v Float64))
  (! (= (= (in_bounds v) true)
     (and
     (fp.leq (fp.neg (fp #b0 #b10000010011 #b1000110010111010100000000000000000000000000000000000)) v)
     (fp.leq v (fp #b0 #b10000010011 #b1000110010111010100000000000000000000000000000000000)))) :pattern (
  (in_bounds v)) )))

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun factor () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun old_speed () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun delta_speed () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun fnt65 () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun fnp1t65 () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

;; delta_speed__def_axiom
  (assert
  (= delta_speed (fp.mul RNE (fp.mul RNE factor (fp #b0 #b10000000000 #b1101101100000010000011000100100110111010010111100011)) (fp #b0 #b01111111001 #b0001000100010001000100010001000100010001000100010001))))

;; fnt65__def_axiom
  (assert
  (= fnt65 (fp.mul RNE (of_int RNE n) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))))

;; fnp1t65__def_axiom
  (assert
  (= fnp1t65 (fp.mul RNE (of_int RNE (+ n 1)) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))))

(declare-fun new_speed () Float64)

(declare-fun average () Float64)

(declare-fun distance () Float64)

(declare-fun o () Float64)

(declare-fun result () Float64)

(declare-fun new_speed1 () Float64)

;; H
  (assert (in_range3 n))

;; H
  (assert (in_range4 factor))

;; H
  (assert (not (or (fp.isInfinite old_speed) (fp.isNaN old_speed))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite new_speed) (fp.isNaN new_speed)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite average) (fp.isNaN average)))))

;; H
  (assert (not (or (fp.isInfinite distance) (fp.isNaN distance))))

;; H
  (assert (and (< n 25000) (= (invariant__ n old_speed) true)))

;; H
  (assert
  (= (fp.mul RNE (fp.mul RNE factor (fp #b0 #b10000000000 #b1101101100000010000011000100100110111010010111100011)) (fp #b0 #b01111111001 #b0001000100010001000100010001000100010001000100010001)) 
  delta_speed))

;; H
  (assert (not (or (fp.isInfinite delta_speed) (fp.isNaN delta_speed))))

;; H
  (assert
  (and (= o (fp.add RNE old_speed delta_speed))
  (not (or (fp.isInfinite (fp.add RNE old_speed delta_speed)) (fp.isNaN (fp.add RNE 
  old_speed delta_speed))))))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref new_speed)))

;; H
  (assert (= new_speed1 o))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) 
  delta_speed)
  (fp.leq delta_speed (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))

;; H
  (assert (= (in_bounds old_speed) true))

;; H
  (assert (= (in_bounds (high_bound n)) true))

;; H
  (assert (= (in_bounds (low_bound n)) true))

;; H
  (assert
  (fp.leq new_speed1 (fp.add RNE old_speed (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))

;; H
  (assert (fp.leq old_speed (high_bound n)))

;; H
  (assert
  (fp.leq (fp.add RNE old_speed (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.add RNE 
  (high_bound n) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))

;; H
  (assert
  (fp.leq new_speed1 (fp.add RNE (high_bound n) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000))))

;; H
  (assert
  (= (fp.mul RNE (of_int RNE n) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) 
  fnt65))

;; H
  (assert (not (or (fp.isInfinite fnt65) (fp.isNaN fnt65))))

;; H
  (assert
  (= (fp.mul RNE (of_int RNE (+ n 1)) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) 
  fnp1t65))

;; H
  (assert (not (or (fp.isInfinite fnp1t65) (fp.isNaN fnp1t65))))

;; H
  (assert (<= (+ (* n 65) 1) (* (+ n 1) 65)))

(assert
;; WP_parameter_def
 ;; File "attempt_3.adb", line 25, characters 0-0
  (not (in_range2 (* (+ n 1) 65))))
(check-sat)
