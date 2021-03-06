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
(declare-fun nth ((_ BitVec 64) Int) Bool)
(declare-fun lsr ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun asr ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun lsl ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_right1 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_left1 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun pow2 (Int) Int)
(define-fun to_int1 ((x (_ BitVec 64))) Int (ite (bvsge x (_ bv0 64)) (bv2nat x) (- (- 18446744073709551616 (bv2nat x)))))
(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 18446744073709551615)))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvlshr x n) (lsr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvashr x n) (asr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvshl x n) (lsl x (bv2nat n)))))
(assert (forall ((v (_ BitVec 64)) (n (_ BitVec 64))) (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) (rotate_left1 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 64)) (n (_ BitVec 64))) (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) (rotate_right1 v (bv2nat n)))))
(declare-fun nth_bv ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (forall ((x (_ BitVec 64)) (i (_ BitVec 64))) (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))
(assert (forall ((x (_ BitVec 64)) (i (_ BitVec 64))) (= (nth x (bv2nat i)) (nth_bv x i))))
(assert (forall ((x (_ BitVec 64)) (i Int)) (=> (and (<= 0 i) (< i 18446744073709551616)) (= (nth_bv x ((_ int2bv 64) i)) (nth x i)))))
(declare-fun eq_sub_bv ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) Bool)
(assert (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64)) (n (_ BitVec 64))) (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i))) (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))
(assert (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64)) (n (_ BitVec 64))) (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 64))))))
(declare-fun power ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun bv_min ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))
(define-fun bv_max ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range1 temp___expr_39)))
(declare-sort unsigned_64 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 64))
(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 64)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 64))
(declare-fun user_eq1 (unsigned_64 unsigned_64) Bool)
(declare-const dummy1 unsigned_64)
(declare-datatypes () ((unsigned_64__ref (mk_unsigned_64__ref (unsigned_64__content unsigned_64)))))
(define-fun unsigned_64__ref___projection ((a unsigned_64__ref)) unsigned_64 (unsigned_64__content a))
(define-fun dynamic_invariant1 ((temp___expr_215 (_ BitVec 64)) (temp___is_init_211 Bool) (temp___skip_constant_212 Bool) (temp___do_toplevel_213 Bool) (temp___do_typ_inv_214 Bool)) Bool true)
(declare-const value (_ BitVec 64))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const left Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const flag Bool)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const left_bv (_ BitVec 64))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const mask (_ BitVec 64))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const r (_ BitVec 64))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(assert (= left_bv ((_ int2bv 64) left)))
(assert (= mask (bvshl #x0000000000000001 ((_ int2bv 64) (- 63 left)))))
(assert (= r (ite (= flag true) (bvor value mask) (bvand value (bvnot mask)))))
(assert (not true))
(check-sat)
(exit)
