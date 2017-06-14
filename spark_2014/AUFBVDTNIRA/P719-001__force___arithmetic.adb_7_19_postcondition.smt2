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

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort unsigned_byte 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (unsigned_byte unsigned_byte) Bool)

(declare-fun dummy () unsigned_byte)

(declare-datatypes ()
((unsigned_byte__ref
 (mk_unsigned_byte__ref (unsigned_byte__content unsigned_byte)))))
(define-fun unsigned_byte__ref___projection ((a unsigned_byte__ref)) unsigned_byte 
  (unsigned_byte__content a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 255)) (in_range1
                                      temp___expr_135)))

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort t2b 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 127)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (t2b t2b) Bool)

(declare-fun dummy1 () t2b)

(declare-datatypes () ((t2b__ref (mk_t2b__ref (t2b__content t2b)))))
(define-fun t2b__ref___projection ((a t2b__ref)) t2b (t2b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun r () Int)

(declare-fun i () Int)

(declare-fun arithmetic__halve_d__result () Int)

(declare-fun temp___145 () Int)

(declare-fun temp___144 () Int)

(declare-fun r1 () Int)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () Int)

(declare-fun r2 () Int)

(declare-fun r3 () Int)

(declare-fun i2 () Int)

(declare-fun result2 () Int)

(declare-fun i3 () Int)

(declare-fun result3 () Int)

(declare-fun r4 () Int)

(declare-fun r5 () Int)

(declare-fun i4 () Int)

(declare-fun r6 () Int)

(declare-fun i5 () Int)

(declare-fun r7 () Int)

(declare-fun i6 () Int)

(declare-fun r8 () Int)

(declare-fun i7 () Int)

(declare-fun r9 () Int)

(declare-fun i8 () Int)

(declare-fun r10 () Int)

(declare-fun i9 () Int)

(declare-fun r11 () Int)

(declare-fun i10 () Int)

(declare-fun r12 () Int)

(declare-fun i11 () Int)

(declare-fun result4 () Int)

(declare-fun arithmetic__halve_d__result1 () Int)

(declare-fun arithmetic__halve_d__result2 () Int)

(declare-fun arithmetic__halve_d__result3 () Int)

(declare-fun r13 () Int)

(declare-fun i12 () Int)

(declare-fun arithmetic__halve_d__result4 () int__ref)

(declare-fun r14 () Int)

(declare-fun i13 () Int)

(declare-fun arithmetic__halve_d__result5 () Int)

(define-fun i14 () int__ref (mk_int__ref i10))

(define-fun r15 () int__ref (mk_int__ref r11))

(define-fun i15 () int__ref (mk_int__ref i8))

(define-fun r16 () int__ref (mk_int__ref r9))

(define-fun i16 () int__ref (mk_int__ref i6))

(define-fun r17 () int__ref (mk_int__ref r7))

(define-fun r18 () int__ref (mk_int__ref r))

(declare-fun result5 () Int)

;; H
  (assert (in_range1 n))

;; H
  (assert (=> (<= 0 255) (in_range1 r)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i)))

;; H
  (assert (= i1 0))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= temp___145 r)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= temp___144 i1)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= (mk_int__ref result1) r18)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= r2 i1)))

;; H
  (assert
  (=> (and (<= 0 i1) (<= i1 127))
  (or
  (and (and (and (= i1 i6) (= r2 r7)) (and (= i7 i1) (= r8 r2)))
  (=> (not (= (+ r2 r2) n)) (= (+ (+ r2 r2) 1) n)))
  (and (not (=> (not (= (+ r2 r2) n)) (= (+ (+ r2 r2) 1) n)))
  (and
  (and (and (= i16 (mk_int__ref i4)) (= r17 (mk_int__ref r5)))
  (and (= i7 i5) (= r8 r6)))
  (and (and (and (= r3 i2) (< (+ (+ r3 r3) 1) n)) (in_range1 r3))
  (and
  (and (and (=> (<= 0 127) (in_range2 i2)) (=> (<= 0 255) (in_range1 r3)))
  (and (<= 0 i2) (<= i2 127)))
  (or
  (and (and (and (= i2 i4) (= r3 r5)) (and (= i5 i2) (= r6 r3))) (= i2 127))
  (and (not (= i2 127))
  (and (and (and (= i3 i4) (= r4 r5)) (and (= i5 i3) (= r6 r4)))
  (and (and (= i2 result2) (= i3 (+ i2 1)))
  (and (and (= r3 result3) (= r4 i3))
  (=> (not (= (+ r4 r4) n)) (= (+ (+ r4 r4) 1) n))))))))))))))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= i15 i16)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= r16 r17)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= i9 i7)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= r10 r8)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= i14 i15)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= r15 r16)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= i11 i9)))

;; H
  (assert (=> (and (<= 0 i1) (<= i1 127)) (= r12 r10)))

;; H
  (assert (=> (not (and (<= 0 i1) (<= i1 127))) (= i1 i10)))

;; H
  (assert (=> (not (and (<= 0 i1) (<= i1 127))) (= r15 r18)))

;; H
  (assert (=> (not (and (<= 0 i1) (<= i1 127))) (= i11 i1)))

;; H
  (assert (=> (not (and (<= 0 i1) (<= i1 127))) (= r12 r1)))

;; H
  (assert (= arithmetic__halve_d__result1 arithmetic__halve_d__result2))

;; H
  (assert (= arithmetic__halve_d__result3 arithmetic__halve_d__result1))

;; H
  (assert
  (= (mk_int__ref result4) (mk_int__ref arithmetic__halve_d__result)))

;; H
  (assert (= arithmetic__halve_d__result1 r11))

;; H
  (assert
  (= arithmetic__halve_d__result4 (mk_int__ref arithmetic__halve_d__result2)))

;; H
  (assert (= (mk_int__ref i12) i14))

;; H
  (assert (= (mk_int__ref r13) r15))

;; H
  (assert (= arithmetic__halve_d__result5 arithmetic__halve_d__result3))

;; H
  (assert (= i13 i11))

;; H
  (assert (= r14 r12))

;; H
  (assert (= result5 (int__content arithmetic__halve_d__result4)))

(assert
;; WP_parameter_def
 ;; File "arithmetic.adb", line 3, characters 0-0
  (not (= (int__content arithmetic__halve_d__result4) (div1 n 2))))
(check-sat)
