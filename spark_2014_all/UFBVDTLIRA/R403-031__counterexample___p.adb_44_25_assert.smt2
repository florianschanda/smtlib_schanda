(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFBVDTLIRA)
(set-info :source |Benchmarks generated by Florian Schanda from the public SPARK 2014 testsuite and post-processed with a script to set more precise logics.|)
(set-info :category industrial)
(set-info :status unknown)

(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)
(declare-fun private__bool_eq (us_private us_private) Bool)
(declare-const us_null_ext__ us_private)
(declare-sort us_type_of_heap 0)
(declare-datatypes () ((us_type_of_heap__ref (mk___type_of_heap__ref (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)
(declare-datatypes () ((int__ref (mk_int__ref (int__content Int)))))
(declare-datatypes () ((bool__ref (mk_bool__ref (bool__content Bool)))))
(declare-datatypes () ((real__ref (mk_real__ref (real__content Real)))))
(declare-datatypes () ((us_private__ref (mk___private__ref (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))
(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))
(define-fun real__ref___projection ((a real__ref)) Real (real__content a))
(define-fun us_private__ref___projection ((a us_private__ref)) us_private (us_private__content a))
(declare-fun nth ((_ BitVec 16) Int) Bool)
(declare-fun lsr ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun asr ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun lsl ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun rotate_right1 ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun rotate_left1 ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun pow2 (Int) Int)
(define-fun to_int1 ((x (_ BitVec 16))) Int (ite (bvsge x (_ bv0 16)) (bv2nat x) (- (- 65536 (bv2nat x)))))
(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 65535)))
(assert (forall ((x (_ BitVec 16)) (n (_ BitVec 16))) (= (bvlshr x n) (lsr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 16)) (n (_ BitVec 16))) (= (bvashr x n) (asr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 16)) (n (_ BitVec 16))) (= (bvshl x n) (lsl x (bv2nat n)))))
(assert (forall ((v (_ BitVec 16)) (n (_ BitVec 16))) (= (bvor (bvshl v (bvurem n (_ bv16 16))) (bvlshr v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) (rotate_left1 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 16)) (n (_ BitVec 16))) (= (bvor (bvlshr v (bvurem n (_ bv16 16))) (bvshl v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) (rotate_right1 v (bv2nat n)))))
(declare-fun nth_bv ((_ BitVec 16) (_ BitVec 16)) Bool)
(assert (forall ((x (_ BitVec 16)) (i (_ BitVec 16))) (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x0001) #x0000)))))
(assert (forall ((x (_ BitVec 16)) (i (_ BitVec 16))) (= (nth x (bv2nat i)) (nth_bv x i))))
(assert (forall ((x (_ BitVec 16)) (i Int)) (=> (and (<= 0 i) (< i 65536)) (= (nth_bv x ((_ int2bv 16) i)) (nth x i)))))
(declare-fun eq_sub_bv ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) Bool)
(assert (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16)) (n (_ BitVec 16))) (let ((mask (bvshl (bvsub (bvshl #x0001 n) #x0001) i))) (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub ((a (_ BitVec 16)) (b (_ BitVec 16)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))
(assert (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16)) (n (_ BitVec 16))) (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 16))))))
(declare-fun power ((_ BitVec 16) Int) (_ BitVec 16))
(define-fun bv_min ((x (_ BitVec 16)) (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) x y))
(define-fun bv_max ((x (_ BitVec 16)) (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) y x))
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-fun pow21 ((_ BitVec 16)) (_ BitVec 16))
(declare-fun pow2__function_guard ((_ BitVec 16) (_ BitVec 16)) Bool)
(declare-sort u16 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 16))
(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 16)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 16))
(declare-fun user_eq (u16 u16) Bool)
(declare-const dummy u16)
(declare-datatypes () ((u16__ref (mk_u16__ref (u16__content u16)))))
(define-fun u16__ref___projection ((a u16__ref)) u16 (u16__content a))
(define-fun dynamic_invariant ((temp___expr_263 (_ BitVec 16)) (temp___is_init_259 Bool) (temp___skip_constant_260 Bool) (temp___do_toplevel_261 Bool) (temp___do_typ_inv_262 Bool)) Bool true)
(assert (forall ((x (_ BitVec 16))) (! (=> (dynamic_invariant x true true true true) (dynamic_invariant (pow21 x) true false true true)) :pattern ((pow21 x)))))
(assert (forall ((x (_ BitVec 16))) (! (=> (dynamic_invariant x true true true true) (= (pow21 x) (ite (< (bv2nat x) 16) (bvshl #x0001 ((_ int2bv 16) (bv2nat x))) #x0000))) :pattern ((pow21 x)))))
(declare-const x (_ BitVec 16))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const num (_ BitVec 16))
(declare-const bits (_ BitVec 16))
(declare-const res (_ BitVec 16))
(declare-const i (_ BitVec 16))
(declare-const m (_ BitVec 16))
(declare-const bits_g (_ BitVec 16))
(declare-const res_g (_ BitVec 16))
(declare-const result (_ BitVec 16))
(declare-const i1 (_ BitVec 16))
(declare-const result1 (_ BitVec 16))
(declare-const num1 (_ BitVec 16))
(declare-const result2 (_ BitVec 16))
(declare-const bits1 (_ BitVec 16))
(declare-const result3 (_ BitVec 16))
(declare-const res1 (_ BitVec 16))
(declare-const result4 (_ BitVec 16))
(declare-const m1 (_ BitVec 16))
(declare-const result5 (_ BitVec 16))
(declare-const bits_g1 (_ BitVec 16))
(declare-const result6 (_ BitVec 16))
(declare-const res_g1 (_ BitVec 16))
(declare-const bits2 (_ BitVec 16))
(declare-const res2 (_ BitVec 16))
(declare-const b (_ BitVec 16))
(declare-const i2 (_ BitVec 16))
(declare-const m2 (_ BitVec 16))
(declare-const bits_g2 (_ BitVec 16))
(declare-const res_g2 (_ BitVec 16))
(declare-const result7 (_ BitVec 16))
(declare-const i3 (_ BitVec 16))
(declare-const result8 (_ BitVec 16))
(declare-const m3 (_ BitVec 16))
(declare-const result9 (_ BitVec 16))
(declare-const b1 (_ BitVec 16))
(assert (= result i))
(assert (= i1 #x0000))
(assert (= result1 num))
(assert (= num1 x))
(assert (bvule num1 #xFFFF))
(assert (= result2 bits))
(assert (= bits1 #x4000))
(assert (= result3 res))
(assert (= res1 #x0000))
(assert (= result4 m))
(assert (= m1 #x0008))
(assert (= result5 bits_g))
(assert (= bits_g1 #x0080))
(assert (= result6 res_g))
(assert (= res_g1 #x0000))
(assert (not (= bits1 #x0000)))
(assert (not (= bits2 #x0000)))
(assert (= result7 i2))
(assert (= i3 (bvadd i2 #x0001)))
(assert (= result8 m2))
(assert (= m3 (bvsub m2 #x0001)))
(assert (= res2 (bvmul res_g2 (pow21 (bvadd m3 #x0001)))))
(assert (= bits_g2 (pow21 m3)))
(assert (= result9 b))
(assert (= b1 (bvor res2 bits2)))
(assert (not (= b1 (bvadd res2 bits2))))
(check-sat)
(exit)
