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

(declare-sort unsigned_16 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 16))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 16)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 16))

(declare-fun user_eq (unsigned_16 unsigned_16) Bool)

(declare-fun dummy () unsigned_16)

(declare-datatypes ()
((unsigned_16__ref (mk_unsigned_16__ref (unsigned_16__content unsigned_16)))))
(define-fun unsigned_16__ref___projection ((a unsigned_16__ref)) unsigned_16 
  (unsigned_16__content a))

(define-fun dynamic_invariant ((temp___expr_165 (_ BitVec 16))
  (temp___is_init_162 Bool) (temp___skip_constant_163 Bool)
  (temp___do_toplevel_164 Bool)) Bool true)

(declare-sort tfloat64B 0)

(declare-fun user_eq1 (tfloat64B tfloat64B) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float64)

(declare-fun dummy1 () tfloat64B)

(declare-datatypes ()
((tfloat64B__ref (mk_tfloat64B__ref (tfloat64B__content tfloat64B)))))
(define-fun tfloat64B__ref___projection ((a tfloat64B__ref)) tfloat64B 
  (tfloat64B__content a))

(declare-sort float64 0)

(declare-fun user_eq2 (float64 float64) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float64)

(declare-fun dummy2 () float64)

(declare-datatypes ()
((float64__ref (mk_float64__ref (float64__content float64)))))
(define-fun float64__ref___projection ((a float64__ref)) float64 (float64__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_201 Float64)
  (temp___is_init_198 Bool) (temp___skip_constant_199 Bool)
  (temp___do_toplevel_200 Bool)) Bool (=>
                                      (or (= temp___is_init_198 true)
                                      (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)))
                                      (not (or (fp.isInfinite temp___expr_201) (fp.isNaN temp___expr_201)))))

(declare-sort frame 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 25000)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (frame frame) Bool)

(declare-fun dummy3 () frame)

(declare-datatypes () ((frame__ref (mk_frame__ref (frame__content frame)))))
(define-fun frame__ref___projection ((a frame__ref)) frame (frame__content a))

(define-fun dynamic_invariant2 ((temp___expr_207 Int)
  (temp___is_init_204 Bool) (temp___skip_constant_205 Bool)
  (temp___do_toplevel_206 Bool)) Bool (=>
                                      (or (= temp___is_init_204 true)
                                      (<= 0 25000)) (in_range2
                                      temp___expr_207)))

(declare-sort ratio_t 0)

(define-fun in_range3 ((x Float64)) Bool (and
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

(define-fun dynamic_invariant3 ((temp___expr_213 Float64)
  (temp___is_init_210 Bool) (temp___skip_constant_211 Bool)
  (temp___do_toplevel_212 Bool)) Bool (=>
                                      (or (= temp___is_init_210 true)
                                      (fp.leq (fp.neg (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))
                                      (in_range3 temp___expr_213)))

(declare-sort drag_t 0)

(define-fun in_range4 ((x Float64)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp.neg (fp #b0 #b10000000101 #b0000000000000000000000000000000000000000000000000000)) x)
                                         (fp.leq x (fp #b0 #b10000000101 #b0000000000000000000000000000000000000000000000000000)))))

(declare-fun user_eq5 (drag_t drag_t) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE6 (Float64) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Float64)

(declare-fun dummy5 () drag_t)

(declare-datatypes ()
((drag_t__ref (mk_drag_t__ref (drag_t__content drag_t)))))
(define-fun drag_t__ref___projection ((a drag_t__ref)) drag_t (drag_t__content
                                                              a))

(define-fun dynamic_invariant4 ((temp___expr_219 Float64)
  (temp___is_init_216 Bool) (temp___skip_constant_217 Bool)
  (temp___do_toplevel_218 Bool)) Bool (=>
                                      (or (= temp___is_init_216 true)
                                      (fp.leq (fp.neg (fp #b0 #b10000000101 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b10000000101 #b0000000000000000000000000000000000000000000000000000)))
                                      (in_range4 temp___expr_219)))

(declare-fun low_bound (Int) Float64)

(declare-fun low_bound__function_guard (Float64 Int) Bool)

;; low_bound__post_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant2 n true true true) (dynamic_invariant1
     (low_bound n) true false true)) :pattern ((low_bound n)) )))

;; low_bound__def_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant2 n true true true)
     (= (low_bound n) (fp.mul RNE (of_int RNE n) (fp.neg (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))))) :pattern (
  (low_bound n)) )))

(declare-fun high_bound (Int) Float64)

(declare-fun high_bound__function_guard (Float64 Int) Bool)

;; high_bound__post_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant2 n true true true) (dynamic_invariant1
     (high_bound n) true false true)) :pattern ((high_bound n)) )))

;; high_bound__def_axiom
  (assert
  (forall ((n Int))
  (! (=> (dynamic_invariant2 n true true true)
     (= (high_bound n) (fp.mul RNE (of_int RNE n) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)))) :pattern (
  (high_bound n)) )))

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

(declare-fun invariant__ (Int Float64 Float64) Bool)

(declare-fun invariant____function_guard (Bool Int Float64 Float64) Bool)

;; invariant____post_axiom
  (assert true)

;; invariant____def_axiom
  (assert
  (forall ((n Int))
  (forall ((speed Float64) (distance Float64))
  (! (= (= (invariant__ n speed distance) true)
     (and (and (fp.leq (low_bound n) speed) (fp.leq speed (high_bound n)))
     (and
     (fp.leq (fp.mul RNE (fp.mul RNE (fp.mul RNE (of_int RNE n) (of_int RNE
                                                                (+ n 1))) (fp.neg (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))) (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000)) distance)
     (fp.leq distance (fp.mul RNE (fp.mul RNE (fp.mul RNE (of_int RNE n) 
     (of_int RNE (+ n 1))) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) (fp #b0 #b01111111110 #b0000000000000000000000000000000000000000000000000000)))))) :pattern (
  (invariant__ n speed distance)) ))))

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun factor () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun drag () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun old_speed () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun delta_speed () Float64)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun t (Int) Float64)

(declare-fun t__function_guard (Float64 Int) Bool)

(declare-sort integer 0)

(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant5 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range5 temp___expr_15)))

;; t__post_axiom
  (assert
  (forall ((n1 Int))
  (! (=> (dynamic_invariant5 n1 true true true) (dynamic_invariant1 (t n1)
     true false true)) :pattern ((t n1)) )))

;; t__def_axiom
  (assert
  (forall ((n1 Int))
  (! (=> (dynamic_invariant5 n1 true true true) (= (t n1) (of_int RNE n1))) :pattern (
  (t n1)) )))

(declare-fun n_bv () (_ BitVec 16))

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

;; delta_speed__def_axiom
  (assert
  (= delta_speed (fp.add RNE drag (fp.mul RNE (fp.mul RNE factor (fp #b0 #b10000000010 #b0011100111010010111100011010100111111011111001110111)) (fp #b0 #b01111111001 #b0001000100010001000100010001000100010001000100010001)))))

;; n_bv__def_axiom
  (assert (= n_bv ((_ int2bv 16) n)))

(declare-fun speed () Float64)

(declare-fun distance () Float64)

(declare-fun average () Float64)

(declare-fun o () Float64)

(declare-fun result () Float64)

(declare-fun speed1 () Float64)

;; H
  (assert (in_range2 n))

;; H
  (assert (in_range3 factor))

;; H
  (assert (in_range4 drag))

;; H
  (assert (not (or (fp.isInfinite speed) (fp.isNaN speed))))

;; H
  (assert (not (or (fp.isInfinite distance) (fp.isNaN distance))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111)) (fp #b0 #b11111111110 #b1111111111111111111111111111111111111111111111111111))
  (not (or (fp.isInfinite average) (fp.isNaN average)))))

;; H
  (assert (and (< n 25000) (= (invariant__ n speed distance) true)))

;; H
  (assert (= speed old_speed))

;; H
  (assert (not (or (fp.isInfinite old_speed) (fp.isNaN old_speed))))

;; H
  (assert
  (= (fp.add RNE drag (fp.mul RNE (fp.mul RNE factor (fp #b0 #b10000000010 #b0011100111010010111100011010100111111011111001110111)) (fp #b0 #b01111111001 #b0001000100010001000100010001000100010001000100010001))) 
  delta_speed))

;; H
  (assert (not (or (fp.isInfinite delta_speed) (fp.isNaN delta_speed))))

;; H
  (assert (= ((_ int2bv 16) n) n_bv))

;; H
  (assert
  (and (= o (fp.add RNE speed delta_speed))
  (not (or (fp.isInfinite (fp.add RNE speed delta_speed)) (fp.isNaN (fp.add RNE 
  speed delta_speed))))))

;; H
  (assert (= (mk_t__ref1 result) (mk_t__ref1 speed)))

;; H
  (assert (= speed1 o))

;; H
  (assert
  (and
  (fp.leq (fp.neg (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) 
  delta_speed)
  (fp.leq delta_speed (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))))

;; H
  (assert (= (in_bounds (high_bound n)) true))

;; H
  (assert (= (in_bounds (low_bound n)) true))

;; H
  (assert
  (fp.eq (fp.add RNE (fp.mul RNE ((_ to_fp_unsigned 11 53) RNA n_bv) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) (fp.mul RNE (fp.add RNE ((_ to_fp_unsigned 11 53) RNA 
  n_bv) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))))

;; H
  (assert
  (fp.eq (fp.add RNE (fp.mul RNE (of_int RNE n) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) (fp.mul RNE (fp.add RNE 
  (of_int RNE n) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))))

;; H
  (assert
  (fp.eq (fp.sub RNE (fp.mul RNE (of_int RNE n) (fp.neg (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) (fp.mul RNE (fp.add RNE 
  (of_int RNE n) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) (fp.neg (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)))))

;; H
  (assert
  (fp.eq (t 1) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)))

;; H
  (assert
  (fp.eq (fp.add RNE (of_int RNE n) (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000)) 
  (of_int RNE (+ n 1))))

(assert
;; WP_parameter_def
 ;; File "complex_trajectory.ads", line 29, characters 0-0
  (not
  (fp.leq (fp.sub RNE (fp.mul RNE (of_int RNE n) (fp.neg (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000))) (fp #b0 #b10000000101 #b0000010000000000000000000000000000000000000000000000)) 
  speed1)))
(check-sat)
