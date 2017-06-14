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

(declare-fun nth ((_ BitVec 64) Int) Bool)

(declare-fun lsr ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun asr ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun lsl ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_right1 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_left1 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun pow2 (Int) Int)

(declare-fun to_int1 ((_ BitVec 64)) Int)

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i)
                                         (<= i 18446744073709551615)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (bv2nat ((_ int2bv 64) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvlshr x n) (lsr x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvashr x n) (asr x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvshl x n) (lsl x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_left1 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_right1 v (bv2nat n)))))

(declare-fun nth_bv ((_ BitVec 64) (_ BitVec 64)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (= (nth_bv x i) true)
  (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (nth x (bv2nat i)) (nth_bv x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 64)) (i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (nth_bv x ((_ int2bv 64) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)
  (_ BitVec 64)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 64))))))
(declare-fun power ((_ BitVec 64) Int) (_ BitVec 64))

(define-fun bv_min ((x (_ BitVec 64))
  (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 64))
  (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))

(declare-fun nth1 ((_ BitVec 16) Int) Bool)

(declare-fun lsr1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun asr1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun lsl1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_right2 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_left2 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun to_int2 ((_ BitVec 16)) Int)

(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 65535)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 65536)) (= (bv2nat ((_ int2bv 16) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvlshr x n) (lsr1 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvashr x n) (asr1 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvshl x n) (lsl1 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvshl v (bvurem n (_ bv16 16))) (bvlshr v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_left2 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvlshr v (bvurem n (_ bv16 16))) (bvshl v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_right2 v (bv2nat n)))))

(declare-fun nth_bv1 ((_ BitVec 16) (_ BitVec 16)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
  (= (= (nth_bv1 x i) true) (not (= (bvand (bvlshr x i) #x0001) #x0000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
  (= (nth1 x (bv2nat i)) (nth_bv1 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 16)) (i Int))
  (=> (and (<= 0 i) (< i 65536))
  (= (nth_bv1 x ((_ int2bv 16) i)) (nth1 x i)))))

(declare-fun eq_sub_bv1 ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)
  (_ BitVec 16)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (let ((mask (bvshl (bvsub (bvshl #x0001 n) #x0001) i)))
  (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub1 ((a (_ BitVec 16)) (b (_ BitVec 16)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))

(declare-sort unsigned64 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) (_ BitVec 64))

(declare-fun user_eq (unsigned64 unsigned64) Bool)

(declare-fun dummy () unsigned64)

(declare-datatypes ()
((unsigned64__ref (mk_unsigned64__ref (unsigned64__content unsigned64)))))
(define-fun unsigned64__ref___projection ((a unsigned64__ref)) unsigned64 
  (unsigned64__content a))

(define-fun dynamic_invariant ((temp___expr_202 (_ BitVec 64))
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)) Bool true)

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 16))))))
(declare-fun power1 ((_ BitVec 16) Int) (_ BitVec 16))

(define-fun bv_min1 ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) x y))

(define-fun bv_max1 ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) y x))

(declare-sort unsigned16 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 16))

(define-fun bool_eq1 ((x (_ BitVec 16))
  (y (_ BitVec 16))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 16)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 16))

(declare-fun user_eq1 (unsigned16 unsigned16) Bool)

(declare-fun dummy1 () unsigned16)

(declare-datatypes ()
((unsigned16__ref (mk_unsigned16__ref (unsigned16__content unsigned16)))))
(define-fun unsigned16__ref___projection ((a unsigned16__ref)) unsigned16 
  (unsigned16__content a))

(define-fun dynamic_invariant1 ((temp___expr_214 (_ BitVec 16))
  (temp___is_init_211 Bool) (temp___skip_constant_212 Bool)
  (temp___do_toplevel_213 Bool)) Bool true)

(declare-fun writereg16post ((_ BitVec 64) (_ BitVec 64) (_ BitVec 16)) Bool)

(declare-fun writereg16post__function_guard (Bool (_ BitVec 64) (_ BitVec 64)
  (_ BitVec 16)) Bool)

(declare-fun readreg16 ((_ BitVec 64)) (_ BitVec 16))

(declare-fun readreg16__function_guard ((_ BitVec 16) (_ BitVec 64)) Bool)

;; writereg16post__post_axiom
  (assert
  (forall ((regold (_ BitVec 64)) (regnew (_ BitVec 64)))
  (forall ((val__ (_ BitVec 16)))
  (! (=>
     (and
     (and (dynamic_invariant regold true true true) (dynamic_invariant regnew
     true true true)) (dynamic_invariant1 val__ true true true))
     (let ((result (writereg16post regold regnew val__)))
     (and (readreg16__function_guard (readreg16 regnew) regnew)
     (=> (writereg16post__function_guard result regold regnew val__)
     (= (= result true)
     (and (= (readreg16 regnew) val__)
     (= (bvand regnew ((_ int2bv 64) 18446744073709486080)) (bvand regold ((_ int2bv 64) 18446744073709486080))))))))) :pattern (
  (writereg16post regold regnew val__)) ))))

;; writereg16post__def_axiom
  (assert
  (forall ((regold (_ BitVec 64)) (regnew (_ BitVec 64)))
  (forall ((val__ (_ BitVec 16)))
  (! (=> (writereg16post__function_guard (writereg16post regold regnew val__)
     regold regnew val__)
     (and (readreg16__function_guard (readreg16 regnew) regnew)
     (= (= (writereg16post regold regnew val__) true)
     (and (= (readreg16 regnew) val__)
     (= (bvand regnew ((_ int2bv 64) 18446744073709486080)) (bvand regold ((_ int2bv 64) 18446744073709486080))))))) :pattern (
  (writereg16post regold regnew val__)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun val__ () (_ BitVec 16))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

;; readreg16__post_axiom
  (assert
  (forall ((reg (_ BitVec 64)))
  (! (=> (dynamic_invariant reg true true true)
     (let ((result (readreg16 reg)))
     (=> (readreg16__function_guard result reg)
     (and (= result ((_ extract 15 0) (bvand reg ((_ int2bv 64) 65535))))
     (dynamic_invariant1 result true false true))))) :pattern ((readreg16
                                                               reg)) )))

(declare-fun rsi () (_ BitVec 64))

(declare-fun result () (_ BitVec 64))

(declare-fun rsi1 () (_ BitVec 64))

(declare-fun rsi2 () (_ BitVec 64))

(declare-fun rsi3 () (_ BitVec 64))

;; H
  (assert (= result rsi))

;; H
  (assert
  (= rsi1 (bvor (bvand rsi ((_ int2bv 64) 18446744073709486080)) ((_ zero_extend 48) 
  val__))))

;; H
  (assert (= rsi1 rsi2))

;; H
  (assert (= rsi3 rsi1))

;; H
  (assert (writereg16post__function_guard (writereg16post rsi rsi2 val__) 
  rsi rsi2 val__))

(assert
;; WP_parameter_def
 ;; File "x86.ads", line 9, characters 0-0
  (not (= (writereg16post rsi rsi2 val__) true)))
(check-sat)
