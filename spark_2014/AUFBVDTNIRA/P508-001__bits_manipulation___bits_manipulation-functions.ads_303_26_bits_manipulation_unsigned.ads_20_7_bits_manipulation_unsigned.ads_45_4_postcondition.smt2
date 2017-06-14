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

(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort mask_size 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (mask_size mask_size) Bool)

(declare-fun dummy () mask_size)

(declare-datatypes ()
((mask_size__ref (mk_mask_size__ref (mask_size__content mask_size)))))
(define-fun mask_size__ref_7__projection ((a mask_size__ref)) mask_size 
  (mask_size__content a))

(declare-fun make_mask (Int) (_ BitVec 64))

(declare-fun make_mask__function_guard ((_ BitVec 64) Int) Bool)

(declare-sort modular 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq1 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 64))

(declare-fun user_eq1 (modular modular) Bool)

(declare-fun dummy1 () modular)

(declare-datatypes ()
((modular__ref (mk_modular__ref (modular__content modular)))))
(define-fun modular__ref_8__projection ((a modular__ref)) modular (modular__content
                                                                  a))

(define-fun dynamic_invariant ((temp___expr_793 (_ BitVec 64))
  (temp___is_init_790 Bool) (temp___skip_constant_791 Bool)
  (temp___do_toplevel_792 Bool)) Bool true)

(define-fun dynamic_invariant1 ((temp___expr_805 Int)
  (temp___is_init_802 Bool) (temp___skip_constant_803 Bool)
  (temp___do_toplevel_804 Bool)) Bool (=>
                                      (or (= temp___is_init_802 true)
                                      (<= 1 64)) (in_range1 temp___expr_805)))

(declare-fun shift_right ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun shift_right__function_guard ((_ BitVec 64) (_ BitVec 64)
  Int) Bool)

;; make_mask__post_axiom
  (assert
  (forall ((num_bits Int))
  (! (=> (dynamic_invariant1 num_bits true true true)
     (let ((result (make_mask num_bits)))
     (=> (make_mask__function_guard result num_bits) (dynamic_invariant
     result true false true)))) :pattern ((make_mask num_bits)) )))

;; make_mask__def_axiom
  (assert
  (forall ((num_bits Int))
  (! (=>
     (and (dynamic_invariant1 num_bits true true true)
     (make_mask__function_guard (make_mask num_bits) num_bits))
     (and (shift_right__function_guard
     (shift_right ((_ int2bv 64) 18446744073709551615) (- 64 num_bits))
     ((_ int2bv 64) 18446744073709551615) (- 64 num_bits))
     (= (make_mask num_bits) (shift_right
                             ((_ int2bv 64) 18446744073709551615)
                             (- 64 num_bits))))) :pattern ((make_mask
                                                           num_bits)) )))

(declare-fun lemma8 (tuple0) Bool)

(declare-fun lemma8__function_guard (Bool tuple0) Bool)

(declare-fun lemma81 (tuple0) Bool)

(declare-fun lemma8__function_guard1 (Bool tuple0) Bool)

;; lemma8__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (lemma8 us_void_param)))
     (and (lemma8__function_guard1 (lemma81 Tuple0) Tuple0)
     (=> (lemma8__function_guard result us_void_param)
     (=> (= result true) (= (lemma81 Tuple0) true))))) :pattern ((lemma8
                                                                 us_void_param)) )))

(declare-fun lemma2 (tuple0) Bool)

(declare-fun lemma2__function_guard (Bool tuple0) Bool)

;; lemma2__post_axiom
  (assert true)

;; lemma2__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (lemma2__function_guard (lemma2 us_void_param) us_void_param)
     (and
     (forall ((size Int)) (make_mask__function_guard (make_mask size) size))
     (= (= (lemma2 us_void_param) true)
     (forall ((size Int))
     (=> (and (<= 1 size) (<= size 63))
     (= (make_mask size) (bvsub (ite (< size 18446744073709551616)
                                (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) size))
                                ((_ int2bv 64) 0)) ((_ int2bv 64) 1)))))))) :pattern (
  (lemma2 us_void_param)) )))

(declare-fun lemma2_goal (tuple0) Bool)

(declare-fun lemma2_goal__function_guard (Bool tuple0) Bool)

;; lemma2_goal__post_axiom
  (assert (lemma2__function_guard (lemma2 Tuple0) Tuple0))

(declare-sort t686s 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 2 x) (<= x 63)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t686s t686s) Bool)

(declare-fun dummy2 () t686s)

(declare-datatypes () ((t686s__ref (mk_t686s__ref (t686s__content t686s)))))
(define-fun t686s__ref___projection ((a t686s__ref)) t686s (t686s__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort natural 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (natural natural) Bool)

(declare-fun dummy3 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant2 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range3
                                     temp___expr_33)))

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

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 8))))))
(declare-fun power1 ((_ BitVec 8) Int) (_ BitVec 8))

(define-fun bv_min1 ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))

(define-fun bv_max1 ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))

(declare-fun nth2 ((_ BitVec 16) Int) Bool)

(declare-fun lsr2 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun asr2 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun lsl2 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_right3 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_left3 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun to_int4 ((_ BitVec 16)) Int)

(define-fun uint_in_range2 ((i Int)) Bool (and (<= 0 i) (<= i 65535)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 65536)) (= (bv2nat ((_ int2bv 16) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvlshr x n) (lsr2 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvashr x n) (asr2 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvshl x n) (lsl2 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvshl v (bvurem n (_ bv16 16))) (bvlshr v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_left3 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvlshr v (bvurem n (_ bv16 16))) (bvshl v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_right3 v (bv2nat n)))))

(declare-fun nth_bv2 ((_ BitVec 16) (_ BitVec 16)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
  (= (= (nth_bv2 x i) true) (not (= (bvand (bvlshr x i) #x0001) #x0000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
  (= (nth2 x (bv2nat i)) (nth_bv2 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 16)) (i Int))
  (=> (and (<= 0 i) (< i 65536))
  (= (nth_bv2 x ((_ int2bv 16) i)) (nth2 x i)))))

(declare-fun eq_sub_bv2 ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)
  (_ BitVec 16)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (let ((mask (bvshl (bvsub (bvshl #x0001 n) #x0001) i)))
  (= (eq_sub_bv2 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub2 ((a (_ BitVec 16)) (b (_ BitVec 16)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth2 a j) (nth2 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (= (eq_sub2 a b (bv2nat i) (bv2nat n)) (eq_sub_bv2 a b i n))))

(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 (_ BitVec 16))))))
(declare-fun power2 ((_ BitVec 16) Int) (_ BitVec 16))

(define-fun bv_min2 ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) x y))

(define-fun bv_max2 ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) y x))

(declare-fun nth3 ((_ BitVec 32) Int) Bool)

(declare-fun lsr3 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr3 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl3 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right4 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left4 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun to_int5 ((_ BitVec 32)) Int)

(define-fun uint_in_range3 ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 4294967296)) (= (bv2nat ((_ int2bv 32) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvlshr x n) (lsr3 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvashr x n) (asr3 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvshl x n) (lsl3 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_left4 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_right4 v (bv2nat n)))))

(declare-fun nth_bv3 ((_ BitVec 32) (_ BitVec 32)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (= (nth_bv3 x i) true)
  (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (nth3 x (bv2nat i)) (nth_bv3 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 32)) (i Int))
  (=> (and (<= 0 i) (< i 4294967296))
  (= (nth_bv3 x ((_ int2bv 32) i)) (nth3 x i)))))

(declare-fun eq_sub_bv3 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i)))
  (= (eq_sub_bv3 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub3 ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth3 a j) (nth3 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (= (eq_sub3 a b (bv2nat i) (bv2nat n)) (eq_sub_bv3 a b i n))))

(declare-datatypes () ((t__ref3 (mk_t__ref3 (t__content3 (_ BitVec 32))))))
(declare-fun power3 ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun bv_min3 ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))

(define-fun bv_max3 ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))

;; shift_right__post_axiom
  (assert
  (forall ((v (_ BitVec 64)))
  (forall ((amount Int))
  (! (=>
     (and (dynamic_invariant v true true true) (dynamic_invariant2 amount
     true true true))
     (let ((result (shift_right v amount)))
     (=> (shift_right__function_guard result v amount) (dynamic_invariant
     result true false true)))) :pattern ((shift_right v amount)) ))))

;; shift_right__def_axiom
  (assert
  (forall ((v (_ BitVec 64)))
  (forall ((amount Int))
  (! (=>
     (and
     (and (dynamic_invariant v true true true) (dynamic_invariant2 amount
     true true true)) (shift_right__function_guard (shift_right v amount) v
     amount))
     (= (shift_right v amount) (ite (and (<= 1 64) (<= 64 8))
                               ((_ zero_extend 56) (ite (< amount 8)
                                                   (bvlshr ((_ extract 7 0) v) ((_ int2bv 8) amount))
                                                   ((_ int2bv 8) 0)))
                               (ite (and (<= 9 64) (<= 64 16))
                               ((_ zero_extend 48) (ite (< amount 16)
                                                   (bvlshr ((_ extract 15 0) v) ((_ int2bv 16) amount))
                                                   ((_ int2bv 16) 0)))
                               (ite (and (<= 17 64) (<= 64 32))
                               ((_ zero_extend 32) (bvlshr ((_ extract 31 0) v) ((_ int2bv 32) amount)))
                               (bvlshr v ((_ int2bv 64) amount))))))) :pattern (
  (shift_right v amount)) ))))

;; lemma8__post_axiom
  (assert true)

;; lemma8__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (lemma8__function_guard1 (lemma81 us_void_param) us_void_param)
     (and
     (forall ((val__ (_ BitVec 64)) (n Int)) (shift_right__function_guard
     (shift_right val__ (- 64 n)) val__ (- 64 n)))
     (= (= (lemma81 us_void_param) true)
     (forall ((val__ (_ BitVec 64)))
     (=>
     (and (bvule ((_ int2bv 64) 0) val__)
     (bvule val__ ((_ int2bv 64) 18446744073709551615)))
     (forall ((n Int))
     (=> (and (<= 1 n) (<= n 63))
     (bvult (shift_right val__ (- 64 n)) (ite (< n 18446744073709551616)
                                         (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) n))
                                         ((_ int2bv 64) 0)))))))))) :pattern (
  (lemma81 us_void_param)) )))

(declare-fun i () Int)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result () Bool)

(declare-fun temp___1395 () Int)

(declare-fun o () Bool)

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun i2 () Int)

(declare-fun i3 () Int)

(declare-fun i4 () Int)

(declare-fun i5 () Int)

(declare-fun i6 () Int)

(declare-fun result1 () Bool)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result1 () Bool)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result2 () Bool)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result3 () Bool)

(declare-fun i7 () Int)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result4 () Bool)

(declare-fun i8 () Int)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result5 () Bool)

(define-fun i9 () int__ref (mk_int__ref i5))

(declare-fun result2 () Bool)

;; H
  (assert (lemma8__function_guard (lemma8 Tuple0) Tuple0))

;; H
  (assert (make_mask__function_guard (make_mask 1) 1))

;; H
  (assert (make_mask__function_guard (make_mask i1) i1))

;; H
  (assert (forall ((j Int)) (make_mask__function_guard (make_mask j) j)))

;; H
  (assert (make_mask__function_guard (make_mask i1) i1))

;; H
  (assert (forall ((j Int)) (make_mask__function_guard (make_mask j) j)))

;; H
  (assert
  (forall ((size Int)) (make_mask__function_guard (make_mask size) size)))

;; H
  (assert (lemma8__function_guard (lemma8 Tuple0) Tuple0))

;; H
  (assert (make_mask__function_guard (make_mask 1) 1))

;; H
  (assert (make_mask__function_guard (make_mask i1) i1))

;; H
  (assert (forall ((j Int)) (make_mask__function_guard (make_mask j) j)))

;; H
  (assert (make_mask__function_guard (make_mask i1) i1))

;; H
  (assert (forall ((j Int)) (make_mask__function_guard (make_mask j) j)))

;; H
  (assert
  (forall ((size Int)) (make_mask__function_guard (make_mask size) size)))

;; H
  (assert (= (lemma8 Tuple0) true))

;; H
  (assert (= (make_mask 1) ((_ int2bv 64) 1)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i)))

;; H
  (assert (= i1 2))

;; H
  (assert (=> (and (<= 2 i1) (<= i1 63)) (= temp___1395 i1)))

;; H
  (assert
  (=> (and (<= 2 i1) (<= i1 63))
  (= (make_mask i1) (bvsub (ite (< i1 18446744073709551616)
                           (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) i1))
                           ((_ int2bv 64) 0)) ((_ int2bv 64) 1)))))

;; H
  (assert
  (=> (and (<= 2 i1) (<= i1 63))
  (forall ((j Int))
  (=> (and (<= 1 j) (<= j (- i2 1)))
  (= (make_mask j) (bvsub (ite (< j 18446744073709551616)
                          (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) j))
                          ((_ int2bv 64) 0)) ((_ int2bv 64) 1)))))))

;; H
  (assert
  (=> (and (<= 2 i1) (<= i1 63))
  (and (=> (<= 2 63) (in_range2 i2)) (and (<= 2 i2) (<= i2 63)))))

;; H
  (assert (=> (and (<= 2 i1) (<= i1 63)) (= i2 63)))

;; H
  (assert (=> (and (<= 2 i1) (<= i1 63)) (= i2 i3)))

;; H
  (assert (=> (and (<= 2 i1) (<= i1 63)) (= i4 i2)))

;; H
  (assert (=> (and (<= 2 i1) (<= i1 63)) (= i9 (mk_int__ref i3))))

;; H
  (assert (=> (and (<= 2 i1) (<= i1 63)) (= i6 i4)))

;; H
  (assert (=> (not (and (<= 2 i1) (<= i1 63))) (= i1 i5)))

;; H
  (assert (=> (not (and (<= 2 i1) (<= i1 63))) (= i6 i1)))

;; H
  (assert
  (forall ((size Int))
  (=> (and (<= 1 size) (<= size 63))
  (= (make_mask size) (bvsub (ite (< size 18446744073709551616)
                             (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) size))
                             ((_ int2bv 64) 0)) ((_ int2bv 64) 1))))))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result1 
  bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result2))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result3 
  bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result1))

;; H
  (assert
  (and (= o (lemma2_goal Tuple0)) (lemma2_goal__function_guard o Tuple0)))

;; H
  (assert
  (= result1 bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result1 
  o))

;; H
  (assert
  (= (mk_bool__ref
     bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result4) 
  (mk_bool__ref
  bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result2)))

;; H
  (assert (= (mk_int__ref i7) i9))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result5 
  bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result3))

;; H
  (assert (= i8 i6))

;; H
  (assert
  (= result2 bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result4))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__result4 true))

;; H
  (assert (lemma2__function_guard (lemma2 Tuple0) Tuple0))

(assert
;; WP_parameter_def
 ;; File "bits_manipulation-functions.ads", line 302, characters 0-0
  (not (= (lemma2 Tuple0) true)))
(check-sat)
