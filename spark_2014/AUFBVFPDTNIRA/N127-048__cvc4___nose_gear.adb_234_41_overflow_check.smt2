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

(declare-fun nth ((_ BitVec 16) Int) Bool)

(declare-fun lsr ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun asr ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun lsl ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_right1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_left1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun pow2 (Int) Int)

(declare-fun to_int1 ((_ BitVec 16)) Int)

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 65535)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 65536)) (= (bv2nat ((_ int2bv 16) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvlshr x n) (lsr x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvashr x n) (asr x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvshl x n) (lsl x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvshl v (bvurem n (_ bv16 16))) (bvlshr v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_left1 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvlshr v (bvurem n (_ bv16 16))) (bvshl v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_right1 v (bv2nat n)))))

(declare-fun nth_bv ((_ BitVec 16) (_ BitVec 16)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
  (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x0001) #x0000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
  (= (nth x (bv2nat i)) (nth_bv x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 16)) (i Int))
  (=> (and (<= 0 i) (< i 65536)) (= (nth_bv x ((_ int2bv 16) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)
  (_ BitVec 16)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (let ((mask (bvshl (bvsub (bvshl #x0001 n) #x0001) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 16)) (b (_ BitVec 16)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 16))))))
(declare-fun power ((_ BitVec 16) Int) (_ BitVec 16))

(define-fun bv_min ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) y x))

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

(declare-fun to_int2 (RoundingMode Float64) Int)

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

(declare-fun nth1 ((_ BitVec 8) Int) Bool)

(declare-fun lsr1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun asr1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun lsl1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun rotate_right2 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun rotate_left2 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun to_int3 ((_ BitVec 8)) Int)

(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 255)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 256)) (= (bv2nat ((_ int2bv 8) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvlshr x n) (lsr1 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvashr x n) (asr1 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvshl x n) (lsl1 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvor (bvshl v (bvurem n (_ bv8 8))) (bvlshr v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) 
  (rotate_left2 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvor (bvlshr v (bvurem n (_ bv8 8))) (bvshl v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) 
  (rotate_right2 v (bv2nat n)))))

(declare-fun nth_bv1 ((_ BitVec 8) (_ BitVec 8)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
  (= (= (nth_bv1 x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
  (= (nth1 x (bv2nat i)) (nth_bv1 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 8)) (i Int))
  (=> (and (<= 0 i) (< i 256)) (= (nth_bv1 x ((_ int2bv 8) i)) (nth1 x i)))))

(declare-fun eq_sub_bv1 ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8)
  (_ BitVec 8)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8))
  (n (_ BitVec 8)))
  (let ((mask (bvshl (bvsub (bvshl #x01 n) #x01) i)))
  (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub1 ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8))
  (n (_ BitVec 8)))
  (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))

(declare-fun nth2 ((_ BitVec 32) Int) Bool)

(declare-fun lsr2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right3 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left3 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun to_int4 ((_ BitVec 32)) Int)

(define-fun uint_in_range2 ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 4294967296)) (= (bv2nat ((_ int2bv 32) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvlshr x n) (lsr2 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvashr x n) (asr2 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvshl x n) (lsl2 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_left3 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_right3 v (bv2nat n)))))

(declare-fun nth_bv2 ((_ BitVec 32) (_ BitVec 32)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (= (nth_bv2 x i) true)
  (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (nth2 x (bv2nat i)) (nth_bv2 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 32)) (i Int))
  (=> (and (<= 0 i) (< i 4294967296))
  (= (nth_bv2 x ((_ int2bv 32) i)) (nth2 x i)))))

(declare-fun eq_sub_bv2 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i)))
  (= (eq_sub_bv2 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub2 ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth2 a j) (nth2 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (= (eq_sub2 a b (bv2nat i) (bv2nat n)) (eq_sub_bv2 a b i n))))

(declare-fun nth3 ((_ BitVec 64) Int) Bool)

(declare-fun lsr3 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun asr3 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun lsl3 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_right4 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_left4 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun to_int5 ((_ BitVec 64)) Int)

(define-fun uint_in_range3 ((i Int)) Bool (and (<= 0 i)
                                          (<= i 18446744073709551615)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (bv2nat ((_ int2bv 64) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvlshr x n) (lsr3 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvashr x n) (asr3 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvshl x n) (lsl3 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_left4 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_right4 v (bv2nat n)))))

(declare-fun nth_bv3 ((_ BitVec 64) (_ BitVec 64)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (= (nth_bv3 x i) true)
  (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (nth3 x (bv2nat i)) (nth_bv3 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 64)) (i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (nth_bv3 x ((_ int2bv 64) i)) (nth3 x i)))))

(declare-fun eq_sub_bv3 ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)
  (_ BitVec 64)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i)))
  (= (eq_sub_bv3 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub3 ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth3 a j) (nth3 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (= (eq_sub3 a b (bv2nat i) (bv2nat n)) (eq_sub_bv3 a b i n))))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 Float64)))))
(define-fun to_int6 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort long_float 0)

(declare-fun user_eq (long_float long_float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float64)

(declare-fun dummy () long_float)

(declare-datatypes ()
((long_float__ref (mk_long_float__ref (long_float__content long_float)))))
(define-fun long_float__ref___projection ((a long_float__ref)) long_float 
  (long_float__content a))

(define-fun dynamic_invariant ((temp___expr_57 Float64)
  (temp___is_init_54 Bool) (temp___skip_constant_55 Bool)
  (temp___do_toplevel_56 Bool)) Bool (=>
                                     (or (= temp___is_init_54 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_57) (fp.isNaN temp___expr_57)))))

(declare-sort tinteger_32B 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (tinteger_32B tinteger_32B) Bool)

(declare-fun dummy1 () tinteger_32B)

(declare-datatypes ()
((tinteger_32B__ref
 (mk_tinteger_32B__ref (tinteger_32B__content tinteger_32B)))))
(define-fun tinteger_32B__ref___projection ((a tinteger_32B__ref)) tinteger_32B 
  (tinteger_32B__content a))

(declare-sort integer_32 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer_32 integer_32) Bool)

(declare-fun dummy2 () integer_32)

(declare-datatypes ()
((integer_32__ref (mk_integer_32__ref (integer_32__content integer_32)))))
(define-fun integer_32__ref_2__projection ((a integer_32__ref)) integer_32 
  (integer_32__content a))

(define-fun dynamic_invariant1 ((temp___expr_147 Int)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_147)))

(declare-sort unsigned_16 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 16))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 16)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 16))

(declare-fun user_eq3 (unsigned_16 unsigned_16) Bool)

(declare-fun dummy3 () unsigned_16)

(declare-datatypes ()
((unsigned_16__ref (mk_unsigned_16__ref (unsigned_16__content unsigned_16)))))
(define-fun unsigned_16__ref___projection ((a unsigned_16__ref)) unsigned_16 
  (unsigned_16__content a))

(define-fun dynamic_invariant2 ((temp___expr_165 (_ BitVec 16))
  (temp___is_init_162 Bool) (temp___skip_constant_163 Bool)
  (temp___do_toplevel_164 Bool)) Bool true)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun ngrotations () (_ BitVec 16))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun ngclicktime () (_ BitVec 16))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun millisecs () (_ BitVec 16))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS12 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS13 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS14 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS15 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS16 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS17 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS18 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS19 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS20 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS21 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS22 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS23 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS24 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS25 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS26 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS27 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS28 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS29 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS30 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS31 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS32 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS33 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS34 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS35 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS36 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS37 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS38 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS39 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS40 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS41 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS42 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS43 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS44 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS45 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS46 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS47 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS48 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS49 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS50 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS51 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS52 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS53 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS54 () Int)

(declare-fun estimatedgroundvelocity () Float64)

(declare-fun old_ngclicktime_memory () (_ BitVec 16))

(declare-fun old_ngrotations_memory () (_ BitVec 16))

(declare-fun old_estimatedgroundvelocity_memory () Float64)

(declare-fun old_ngclicktime_out1 () (_ BitVec 16))

(declare-fun old_ngrotations_out1 () (_ BitVec 16))

(declare-fun old_estimatedgroundvelocity_out1 () Float64)

(declare-fun max_uint16_out1 () Int)

(declare-fun max_uint16_1_out1 () Int)

(declare-fun max_uint16_2_out1 () Int)

(declare-fun millisecs_out1 () (_ BitVec 16))

(declare-fun ngclicktime_out1 () (_ BitVec 16))

(declare-fun ngrotations_out1 () (_ BitVec 16))

(declare-fun wheel_circunference_out1 () Float64)

(declare-fun ms_in_hour_out1 () Float64)

(declare-fun ms_in_our1_out1 () Float64)

(declare-fun update_period_os_interrupt_out1 () (_ BitVec 16))

(declare-fun validity_period_out1 () (_ BitVec 16))

(declare-fun to_int32_left_out1 () Int)

(declare-fun to_int32_left_1_out1 () Int)

(declare-fun to_int32_left_2_out1 () int__ref)

(declare-fun to_int32_right_out1 () int__ref)

(declare-fun to_int32_right_1_out1 () int__ref)

(declare-fun to_int32_right_2_out1 () int__ref)

(declare-fun data_type_conversion1_out1 () int__ref)

(declare-fun data_type_conversion_out1 () int__ref)

(declare-fun sum1_2_out1 () t__ref)

(declare-fun sum1_out1 () int__ref)

(declare-fun sum1_1_out1 () int__ref)

(declare-fun sum2_out1 () int__ref)

(declare-fun sum2_1_out1 () int__ref)

(declare-fun sum1_1_1_out1 () int__ref)

(declare-fun sum_out1 () int__ref)

(declare-fun sum2_2_out1 () int__ref)

(declare-fun compare_to_constant_out1 () bool__ref)

(declare-fun sum_1_out1 () int__ref)

(declare-fun sum_2_out1 () int__ref)

(declare-fun sum_3_out1 () int__ref)

(declare-fun left_out1 () int__ref)

(declare-fun left_1_out1 () int__ref)

(declare-fun left_2_out1 () int__ref)

(declare-fun distance_km_out1 () t__ref1)

(declare-fun elapsed_time_h_out1 () t__ref1)

(declare-fun avoid_div_by_zero_out1 () t__ref1)

(declare-fun speed_out1 () t__ref1)

(declare-fun old_output_if_new_invalid_out1 () t__ref1)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun result () t__ref)

(declare-fun old_ngclicktime_out11 () (_ BitVec 16))

(declare-fun result1 () t__ref)

(declare-fun old_ngrotations_out11 () (_ BitVec 16))

(declare-fun result2 () t__ref1)

(declare-fun old_estimatedgroundvelocity_out11 () Float64)

(declare-fun result3 () int__ref)

(declare-fun max_uint16_out11 () Int)

(declare-fun result4 () int__ref)

(declare-fun max_uint16_1_out11 () Int)

(declare-fun result5 () int__ref)

(declare-fun max_uint16_2_out11 () Int)

(declare-fun result6 () t__ref)

(declare-fun millisecs_out11 () (_ BitVec 16))

(declare-fun result7 () t__ref)

(declare-fun ngclicktime_out11 () (_ BitVec 16))

(declare-fun result8 () t__ref)

(declare-fun ngrotations_out11 () (_ BitVec 16))

(declare-fun result9 () t__ref1)

(declare-fun wheel_circunference_out11 () Float64)

(declare-fun result10 () t__ref1)

(declare-fun ms_in_hour_out11 () Float64)

(declare-fun result11 () t__ref1)

(declare-fun ms_in_our1_out11 () Float64)

(declare-fun result12 () t__ref)

(declare-fun update_period_os_interrupt_out11 () (_ BitVec 16))

(declare-fun result13 () t__ref)

(declare-fun validity_period_out11 () (_ BitVec 16))

(declare-fun result14 () int__ref)

(declare-fun to_int32_left_out11 () Int)

(declare-fun result15 () int__ref)

(declare-fun to_int32_left_1_out11 () Int)

(declare-fun result16 () int__ref)

(declare-fun to_int32_left_2_out11 () Int)

(declare-fun result17 () int__ref)

(declare-fun to_int32_right_out11 () Int)

(declare-fun result18 () int__ref)

(declare-fun to_int32_right_1_out11 () Int)

(declare-fun result19 () int__ref)

(declare-fun to_int32_right_2_out11 () Int)

(declare-fun result20 () int__ref)

(declare-fun data_type_conversion1_out11 () Int)

(declare-fun result21 () int__ref)

(declare-fun data_type_conversion_out11 () Int)

(declare-fun result22 () t__ref)

(declare-fun sum1_2_out11 () (_ BitVec 16))

(declare-fun result23 () int__ref)

(declare-fun sum1_out11 () Int)

(declare-fun result24 () int__ref)

(declare-fun sum1_1_out11 () Int)

(declare-fun result25 () int__ref)

(declare-fun sum2_out11 () Int)

(declare-fun result26 () int__ref)

(declare-fun sum2_1_out11 () Int)

(declare-fun result27 () int__ref)

(declare-fun sum1_1_1_out11 () Int)

(declare-fun result28 () int__ref)

(declare-fun sum_out11 () Int)

(declare-fun result29 () int__ref)

(declare-fun sum2_2_out11 () Int)

(declare-fun result30 () bool__ref)

(declare-fun compare_to_constant_out11 () Bool)

(declare-fun result31 () int__ref)

(declare-fun sum_1_out11 () Int)

(declare-fun result32 () int__ref)

(declare-fun sum_2_out11 () Int)

;; H
  (assert
  (not (or (fp.isInfinite old_estimatedgroundvelocity_memory) (fp.isNaN 
  old_estimatedgroundvelocity_memory))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite estimatedgroundvelocity) (fp.isNaN estimatedgroundvelocity)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite old_estimatedgroundvelocity_out1) (fp.isNaN 
  old_estimatedgroundvelocity_out1)))))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 max_uint16_out1)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 max_uint16_1_out1)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 max_uint16_2_out1)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite wheel_circunference_out1) (fp.isNaN wheel_circunference_out1)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite ms_in_hour_out1) (fp.isNaN ms_in_hour_out1)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite ms_in_our1_out1) (fp.isNaN ms_in_our1_out1)))))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 to_int32_left_out1)))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 to_int32_left_1_out1)))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3
  (int__content to_int32_left_2_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3
  (int__content to_int32_right_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3
  (int__content to_int32_right_1_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3
  (int__content to_int32_right_2_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3
  (int__content data_type_conversion1_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3
  (int__content data_type_conversion_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum1_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum1_1_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum2_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum2_1_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3
  (int__content sum1_1_1_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum2_2_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum_1_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum_2_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content sum_3_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content left_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content left_1_out1))))

;; H
  (assert
  (=> (<= (- 2147483648) 2147483647) (in_range3 (int__content left_2_out1))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite (t__content1 distance_km_out1)) (fp.isNaN (t__content1
                                                                    distance_km_out1))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite (t__content1 elapsed_time_h_out1)) (fp.isNaN 
  (t__content1 elapsed_time_h_out1))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite (t__content1 avoid_div_by_zero_out1)) (fp.isNaN 
  (t__content1 avoid_div_by_zero_out1))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite (t__content1 speed_out1)) (fp.isNaN (t__content1
                                                              speed_out1))))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite (t__content1 old_output_if_new_invalid_out1)) (fp.isNaN 
  (t__content1 old_output_if_new_invalid_out1))))))

;; H
  (assert (= result (mk_t__ref old_ngclicktime_out1)))

;; H
  (assert (= old_ngclicktime_out11 old_ngclicktime_memory))

;; H
  (assert (= result1 (mk_t__ref old_ngrotations_out1)))

;; H
  (assert (= old_ngrotations_out11 old_ngrotations_memory))

;; H
  (assert (= result2 (mk_t__ref1 old_estimatedgroundvelocity_out1)))

;; H
  (assert
  (= old_estimatedgroundvelocity_out11 old_estimatedgroundvelocity_memory))

;; H
  (assert (= result3 (mk_int__ref max_uint16_out1)))

;; H
  (assert (= max_uint16_out11 65535))

;; H
  (assert (= result4 (mk_int__ref max_uint16_1_out1)))

;; H
  (assert (= max_uint16_1_out11 65535))

;; H
  (assert (= result5 (mk_int__ref max_uint16_2_out1)))

;; H
  (assert (= max_uint16_2_out11 65535))

;; H
  (assert (= result6 (mk_t__ref millisecs_out1)))

;; H
  (assert (= millisecs_out11 millisecs))

;; H
  (assert (= result7 (mk_t__ref ngclicktime_out1)))

;; H
  (assert (= ngclicktime_out11 ngclicktime))

;; H
  (assert (= result8 (mk_t__ref ngrotations_out1)))

;; H
  (assert (= ngrotations_out11 ngrotations))

;; H
  (assert (= result9 (mk_t__ref1 wheel_circunference_out1)))

;; H
  (assert
  (= wheel_circunference_out11 (fp #b0 #b01111110101 #b1100101111110111010111000011100111011111000101100101)))

;; H
  (assert (= result10 (mk_t__ref1 ms_in_hour_out1)))

;; H
  (assert
  (= ms_in_hour_out11 (fp #b0 #b10000010100 #b1011011101110100000000000000000000000000000000000000)))

;; H
  (assert (= result11 (mk_t__ref1 ms_in_our1_out1)))

;; H
  (assert
  (= ms_in_our1_out11 (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))

;; H
  (assert (= result12 (mk_t__ref update_period_os_interrupt_out1)))

;; H
  (assert (= update_period_os_interrupt_out11 ((_ int2bv 16) 500)))

;; H
  (assert (= result13 (mk_t__ref validity_period_out1)))

;; H
  (assert (= validity_period_out11 ((_ int2bv 16) 3000)))

;; H
  (assert (= result14 (mk_int__ref to_int32_left_out1)))

;; H
  (assert (= to_int32_left_out11 (bv2nat ngrotations_out11)))

;; H
  (assert (= result15 (mk_int__ref to_int32_left_1_out1)))

;; H
  (assert (= to_int32_left_1_out11 (bv2nat ngclicktime_out11)))

;; H
  (assert (= result16 to_int32_left_2_out1))

;; H
  (assert
  (= (let ((subject to_int32_left_2_out1)) to_int32_left_2_out11) (bv2nat 
  millisecs_out11)))

;; H
  (assert (= result17 to_int32_right_out1))

;; H
  (assert
  (= (let ((subject to_int32_right_out1)) to_int32_right_out11) (bv2nat 
  old_ngrotations_out11)))

;; H
  (assert (= result18 to_int32_right_1_out1))

;; H
  (assert
  (= (let ((subject to_int32_right_1_out1)) to_int32_right_1_out11) (bv2nat 
  old_ngclicktime_out11)))

;; H
  (assert (= result19 to_int32_right_2_out1))

;; H
  (assert
  (= (let ((subject to_int32_right_2_out1)) to_int32_right_2_out11) (bv2nat 
  old_ngclicktime_out11)))

;; H
  (assert (= result20 data_type_conversion1_out1))

;; H
  (assert
  (= (let ((subject data_type_conversion1_out1)) data_type_conversion1_out11) (bv2nat 
  millisecs_out11)))

;; H
  (assert (= result21 data_type_conversion_out1))

;; H
  (assert
  (= (let ((subject data_type_conversion_out1)) data_type_conversion_out11) (bv2nat 
  old_ngclicktime_out11)))

;; H
  (assert (= result22 sum1_2_out1))

;; H
  (assert
  (= (let ((subject sum1_2_out1)) sum1_2_out11) (bvsub validity_period_out11 
  update_period_os_interrupt_out11)))

;; H
  (assert
  (and
  (= o (- (let ((subject to_int32_right_out1)) to_int32_right_out11) 
  to_int32_left_out11)) (in_range2
  (- (let ((subject to_int32_right_out1)) to_int32_right_out11) to_int32_left_out11))))

;; H
  (assert (= result23 sum1_out1))

;; H
  (assert (= (let ((subject sum1_out1)) sum1_out11) o))

;; H
  (assert
  (and
  (= o1 (- (let ((subject to_int32_right_1_out1)) to_int32_right_1_out11) 
  to_int32_left_1_out11)) (in_range2
  (- (let ((subject to_int32_right_1_out1)) to_int32_right_1_out11) to_int32_left_1_out11))))

;; H
  (assert (= result24 sum1_1_out1))

;; H
  (assert (= (let ((subject sum1_1_out1)) sum1_1_out11) o1))

;; H
  (assert
  (and
  (= o2 (- to_int32_left_out11 (let ((subject to_int32_right_out1))
                               to_int32_right_out11)))
  (in_range2
  (- to_int32_left_out11 (let ((subject to_int32_right_out1))
                         to_int32_right_out11)))))

;; H
  (assert (= result25 sum2_out1))

;; H
  (assert (= (let ((subject sum2_out1)) sum2_out11) o2))

;; H
  (assert
  (and
  (= o3 (- to_int32_left_1_out11 (let ((subject to_int32_right_1_out1))
                                 to_int32_right_1_out11)))
  (in_range2
  (- to_int32_left_1_out11 (let ((subject to_int32_right_1_out1))
                           to_int32_right_1_out11)))))

;; H
  (assert (= result26 sum2_1_out1))

;; H
  (assert (= (let ((subject sum2_1_out1)) sum2_1_out11) o3))

;; H
  (assert
  (and
  (= o4 (- (let ((subject to_int32_right_2_out1)) to_int32_right_2_out11) 
  (let ((subject to_int32_left_2_out1)) to_int32_left_2_out11))) (in_range2
  (- (let ((subject to_int32_right_2_out1)) to_int32_right_2_out11) (let ((subject 
                                                                    to_int32_left_2_out1))
                                                                    to_int32_left_2_out11)))))

;; H
  (assert (= result27 sum1_1_1_out1))

;; H
  (assert (= (let ((subject sum1_1_1_out1)) sum1_1_1_out11) o4))

;; H
  (assert
  (and
  (= o5 (- (let ((subject data_type_conversion1_out1))
           data_type_conversion1_out11) (let ((subject data_type_conversion_out1))
                                        data_type_conversion_out11)))
  (in_range2
  (- (let ((subject data_type_conversion1_out1)) data_type_conversion1_out11) 
  (let ((subject data_type_conversion_out1)) data_type_conversion_out11)))))

;; H
  (assert (= result28 sum_out1))

;; H
  (assert (= (let ((subject sum_out1)) sum_out11) o5))

;; H
  (assert
  (and
  (= o6 (- (let ((subject to_int32_left_2_out1)) to_int32_left_2_out11) 
  (let ((subject to_int32_right_2_out1)) to_int32_right_2_out11))) (in_range2
  (- (let ((subject to_int32_left_2_out1)) to_int32_left_2_out11) (let ((subject 
                                                                  to_int32_right_2_out1))
                                                                  to_int32_right_2_out11)))))

;; H
  (assert (= result29 sum2_2_out1))

;; H
  (assert (= (let ((subject sum2_2_out1)) sum2_2_out11) o6))

;; H
  (assert (= result30 compare_to_constant_out1))

;; H
  (assert
  (= (let ((subject compare_to_constant_out1)) compare_to_constant_out11) 
  (ite (fp.leq (of_int RNE (let ((subject sum_out1)) sum_out11)) (fp #b0 #b10000001010 #b0111011100000000000000000000000000000000000000000000))
  true false)))

;; H
  (assert
  (and (= o7 (- max_uint16_out11 (let ((subject sum1_out1)) sum1_out11)))
  (in_range2 (- max_uint16_out11 (let ((subject sum1_out1)) sum1_out11)))))

;; H
  (assert (= result31 sum_1_out1))

;; H
  (assert (= (let ((subject sum_1_out1)) sum_1_out11) o7))

;; H
  (assert
  (and
  (= o8 (- max_uint16_1_out11 (let ((subject sum1_1_out1)) sum1_1_out11)))
  (in_range2
  (- max_uint16_1_out11 (let ((subject sum1_1_out1)) sum1_1_out11)))))

;; H
  (assert (= result32 sum_2_out1))

;; H
  (assert (= (let ((subject sum_2_out1)) sum_2_out11) o8))

(assert
;; WP_parameter_def
 ;; File "nose_gear.adb", line 24, characters 0-0
  (not (in_range2
  (- max_uint16_2_out11 (let ((subject sum1_1_1_out1)) sum1_1_1_out11)))))
(check-sat)
