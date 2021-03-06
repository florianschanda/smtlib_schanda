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
(declare-fun nth ((_ BitVec 32) Int) Bool)
(declare-fun lsr ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun asr ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun lsl ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun rotate_right1 ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun rotate_left1 ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun pow2 (Int) Int)
(define-fun to_int1 ((x (_ BitVec 32))) Int (ite (bvsge x (_ bv0 32)) (bv2nat x) (- (- 4294967296 (bv2nat x)))))
(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvlshr x n) (lsr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvashr x n) (asr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvshl x n) (lsl x (bv2nat n)))))
(assert (forall ((v (_ BitVec 32)) (n (_ BitVec 32))) (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) (rotate_left1 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 32)) (n (_ BitVec 32))) (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) (rotate_right1 v (bv2nat n)))))
(declare-fun nth_bv ((_ BitVec 32) (_ BitVec 32)) Bool)
(assert (forall ((x (_ BitVec 32)) (i (_ BitVec 32))) (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))
(assert (forall ((x (_ BitVec 32)) (i (_ BitVec 32))) (= (nth x (bv2nat i)) (nth_bv x i))))
(assert (forall ((x (_ BitVec 32)) (i Int)) (=> (and (<= 0 i) (< i 4294967296)) (= (nth_bv x ((_ int2bv 32) i)) (nth x i)))))
(declare-fun eq_sub_bv ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)
(assert (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32)) (n (_ BitVec 32))) (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i))) (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))
(assert (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32)) (n (_ BitVec 32))) (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 32))))))
(declare-fun power ((_ BitVec 32) Int) (_ BitVec 32))
(define-fun bv_min ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))
(define-fun bv_max ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-fun make_mask (Int) (_ BitVec 32))
(declare-fun make_mask__function_guard ((_ BitVec 32) Int) Bool)
(declare-fun shift_right ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun shift_right__function_guard ((_ BitVec 32) (_ BitVec 32) Int) Bool)
(declare-sort modular 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 32))
(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 32)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 32))
(declare-fun user_eq (modular modular) Bool)
(declare-const dummy modular)
(declare-datatypes () ((modular__ref (mk_modular__ref (modular__content modular)))))
(define-fun modular__ref___6__projection ((a modular__ref)) modular (modular__content a))
(define-fun dynamic_invariant ((temp___expr_359 (_ BitVec 32)) (temp___is_init_355 Bool) (temp___skip_constant_356 Bool) (temp___do_toplevel_357 Bool) (temp___do_typ_inv_358 Bool)) Bool true)
(declare-sort mask_size 0)
(declare-fun mask_sizeqtint (mask_size) Int)
(assert (forall ((i mask_size)) (and (<= 1 (mask_sizeqtint i)) (<= (mask_sizeqtint i) 32))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 32)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (mask_size mask_size) Bool)
(declare-const dummy1 mask_size)
(declare-datatypes () ((mask_size__ref (mk_mask_size__ref (mask_size__content mask_size)))))
(define-fun mask_size__ref___5__projection ((a mask_size__ref)) mask_size (mask_size__content a))
(define-fun dynamic_invariant1 ((temp___expr_373 Int) (temp___is_init_369 Bool) (temp___skip_constant_370 Bool) (temp___do_toplevel_371 Bool) (temp___do_typ_inv_372 Bool)) Bool (=> (or (= temp___is_init_369 true) (<= 1 32)) (in_range1 temp___expr_373)))
(assert (forall ((num_bits Int)) (! (=> (dynamic_invariant1 num_bits true true true true) (dynamic_invariant (make_mask num_bits) true false true true)) :pattern ((make_mask num_bits)))))
(assert (forall ((num_bits Int)) (! (=> (dynamic_invariant1 num_bits true true true true) (= (make_mask num_bits) (shift_right #xFFFFFFFF (- 32 num_bits)))) :pattern ((make_mask num_bits)))))
(declare-fun lemma8 (tuple0) Bool)
(declare-fun lemma8__function_guard (Bool tuple0) Bool)
(declare-fun lemma81 (tuple0) Bool)
(declare-fun lemma8__function_guard1 (Bool tuple0) Bool)
(assert (forall ((us_void_param tuple0)) (! (=> (= (lemma8 us_void_param) true) (= (lemma81 Tuple0) true)) :pattern ((lemma8 us_void_param)))))
(declare-fun lemma2 (tuple0) Bool)
(declare-fun lemma2__function_guard (Bool tuple0) Bool)
(assert true)
(assert (forall ((us_void_param tuple0)) (! (= (= (lemma2 us_void_param) true) (forall ((size Int)) (=> (and (<= 1 size) (<= size 31)) (= (make_mask size) (bvsub (ite (< size 4294967296) (bvshl #x00000001 ((_ int2bv 32) size)) #x00000000) #x00000001))))) :pattern ((lemma2 us_void_param)))))
(declare-fun lemma2_goal (tuple0) Bool)
(declare-fun lemma2_goal__function_guard (Bool tuple0) Bool)
(assert true)
(declare-sort t710s 0)
(declare-fun t710sqtint (t710s) Int)
(assert (forall ((i t710s)) (and (<= 2 (t710sqtint i)) (<= (t710sqtint i) 31))))
(define-fun in_range2 ((x Int)) Bool (and (<= 2 x) (<= x 31)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (t710s t710s) Bool)
(declare-const dummy2 t710s)
(declare-datatypes () ((t710s__ref (mk_t710s__ref (t710s__content t710s)))))
(define-fun t710s__ref___projection ((a t710s__ref)) t710s (t710s__content a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (natural natural) Bool)
(declare-const dummy3 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range3 temp___expr_39)))
(declare-fun nth1 ((_ BitVec 8) Int) Bool)
(declare-fun lsr1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun asr1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun lsl1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun rotate_right2 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun rotate_left2 ((_ BitVec 8) Int) (_ BitVec 8))
(define-fun to_int2 ((x (_ BitVec 8))) Int (ite (bvsge x (_ bv0 8)) (bv2nat x) (- (- 256 (bv2nat x)))))
(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 255)))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvlshr x n) (lsr1 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvashr x n) (asr1 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvshl x n) (lsl1 x (bv2nat n)))))
(assert (forall ((v (_ BitVec 8)) (n (_ BitVec 8))) (= (bvor (bvshl v (bvurem n (_ bv8 8))) (bvlshr v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) (rotate_left2 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 8)) (n (_ BitVec 8))) (= (bvor (bvlshr v (bvurem n (_ bv8 8))) (bvshl v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) (rotate_right2 v (bv2nat n)))))
(declare-fun nth_bv1 ((_ BitVec 8) (_ BitVec 8)) Bool)
(assert (forall ((x (_ BitVec 8)) (i (_ BitVec 8))) (= (= (nth_bv1 x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))
(assert (forall ((x (_ BitVec 8)) (i (_ BitVec 8))) (= (nth1 x (bv2nat i)) (nth_bv1 x i))))
(assert (forall ((x (_ BitVec 8)) (i Int)) (=> (and (<= 0 i) (< i 256)) (= (nth_bv1 x ((_ int2bv 8) i)) (nth1 x i)))))
(declare-fun eq_sub_bv1 ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8) (_ BitVec 8)) Bool)
(assert (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8)) (n (_ BitVec 8))) (let ((mask (bvshl (bvsub (bvshl #x01 n) #x01) i))) (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub1 ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))
(assert (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8)) (n (_ BitVec 8))) (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))
(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 8))))))
(declare-fun power1 ((_ BitVec 8) Int) (_ BitVec 8))
(define-fun bv_min1 ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))
(define-fun bv_max1 ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))
(declare-fun nth2 ((_ BitVec 16) Int) Bool)
(declare-fun lsr2 ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun asr2 ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun lsl2 ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun rotate_right3 ((_ BitVec 16) Int) (_ BitVec 16))
(declare-fun rotate_left3 ((_ BitVec 16) Int) (_ BitVec 16))
(define-fun to_int3 ((x (_ BitVec 16))) Int (ite (bvsge x (_ bv0 16)) (bv2nat x) (- (- 65536 (bv2nat x)))))
(define-fun uint_in_range2 ((i Int)) Bool (and (<= 0 i) (<= i 65535)))
(assert (forall ((x (_ BitVec 16)) (n (_ BitVec 16))) (= (bvlshr x n) (lsr2 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 16)) (n (_ BitVec 16))) (= (bvashr x n) (asr2 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 16)) (n (_ BitVec 16))) (= (bvshl x n) (lsl2 x (bv2nat n)))))
(assert (forall ((v (_ BitVec 16)) (n (_ BitVec 16))) (= (bvor (bvshl v (bvurem n (_ bv16 16))) (bvlshr v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) (rotate_left3 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 16)) (n (_ BitVec 16))) (= (bvor (bvlshr v (bvurem n (_ bv16 16))) (bvshl v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) (rotate_right3 v (bv2nat n)))))
(declare-fun nth_bv2 ((_ BitVec 16) (_ BitVec 16)) Bool)
(assert (forall ((x (_ BitVec 16)) (i (_ BitVec 16))) (= (= (nth_bv2 x i) true) (not (= (bvand (bvlshr x i) #x0001) #x0000)))))
(assert (forall ((x (_ BitVec 16)) (i (_ BitVec 16))) (= (nth2 x (bv2nat i)) (nth_bv2 x i))))
(assert (forall ((x (_ BitVec 16)) (i Int)) (=> (and (<= 0 i) (< i 65536)) (= (nth_bv2 x ((_ int2bv 16) i)) (nth2 x i)))))
(declare-fun eq_sub_bv2 ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) Bool)
(assert (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16)) (n (_ BitVec 16))) (let ((mask (bvshl (bvsub (bvshl #x0001 n) #x0001) i))) (= (eq_sub_bv2 a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub2 ((a (_ BitVec 16)) (b (_ BitVec 16)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth2 a j) (nth2 b j)))))
(assert (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16)) (n (_ BitVec 16))) (= (eq_sub2 a b (bv2nat i) (bv2nat n)) (eq_sub_bv2 a b i n))))
(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 (_ BitVec 16))))))
(declare-fun power2 ((_ BitVec 16) Int) (_ BitVec 16))
(define-fun bv_min2 ((x (_ BitVec 16)) (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) x y))
(define-fun bv_max2 ((x (_ BitVec 16)) (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) y x))
(declare-fun nth3 ((_ BitVec 64) Int) Bool)
(declare-fun lsr3 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun asr3 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun lsl3 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_right4 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_left4 ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun to_int4 ((x (_ BitVec 64))) Int (ite (bvsge x (_ bv0 64)) (bv2nat x) (- (- 18446744073709551616 (bv2nat x)))))
(define-fun uint_in_range3 ((i Int)) Bool (and (<= 0 i) (<= i 18446744073709551615)))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvlshr x n) (lsr3 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvashr x n) (asr3 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvshl x n) (lsl3 x (bv2nat n)))))
(assert (forall ((v (_ BitVec 64)) (n (_ BitVec 64))) (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) (rotate_left4 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 64)) (n (_ BitVec 64))) (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) (rotate_right4 v (bv2nat n)))))
(declare-fun nth_bv3 ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (forall ((x (_ BitVec 64)) (i (_ BitVec 64))) (= (= (nth_bv3 x i) true) (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))
(assert (forall ((x (_ BitVec 64)) (i (_ BitVec 64))) (= (nth3 x (bv2nat i)) (nth_bv3 x i))))
(assert (forall ((x (_ BitVec 64)) (i Int)) (=> (and (<= 0 i) (< i 18446744073709551616)) (= (nth_bv3 x ((_ int2bv 64) i)) (nth3 x i)))))
(declare-fun eq_sub_bv3 ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) Bool)
(assert (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64)) (n (_ BitVec 64))) (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i))) (= (eq_sub_bv3 a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub3 ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth3 a j) (nth3 b j)))))
(assert (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64)) (n (_ BitVec 64))) (= (eq_sub3 a b (bv2nat i) (bv2nat n)) (eq_sub_bv3 a b i n))))
(declare-datatypes () ((t__ref3 (mk_t__ref3 (t__content3 (_ BitVec 64))))))
(declare-fun power3 ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun bv_min3 ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))
(define-fun bv_max3 ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))
(assert (forall ((v (_ BitVec 32))) (forall ((amount Int)) (! (=> (and (dynamic_invariant v true true true true) (dynamic_invariant2 amount true true true true)) (dynamic_invariant (shift_right v amount) true false true true)) :pattern ((shift_right v amount))))))
(assert (forall ((v (_ BitVec 32))) (forall ((amount Int)) (! (=> (and (dynamic_invariant v true true true true) (dynamic_invariant2 amount true true true true)) (= (shift_right v amount) (ite (and (<= 1 32) (<= 32 8)) ((_ zero_extend 24) (ite (< amount 8) (bvlshr ((_ extract 7 0) v) ((_ int2bv 8) amount)) #x00)) (ite (and (<= 9 32) (<= 32 16)) ((_ zero_extend 16) (ite (< amount 16) (bvlshr ((_ extract 15 0) v) ((_ int2bv 16) amount)) #x0000)) (ite (and (<= 17 32) (<= 32 32)) (bvlshr v ((_ int2bv 32) amount)) ((_ extract 31 0) (bvlshr ((_ zero_extend 32) v) ((_ int2bv 64) amount)))))))) :pattern ((shift_right v amount))))))
(assert true)
(assert (forall ((us_void_param tuple0)) (! (= (= (lemma81 us_void_param) true) (forall ((val__ (_ BitVec 32))) (=> (and (bvule #x00000000 val__) (bvule val__ #xFFFFFFFF)) (forall ((n Int)) (=> (and (<= 1 n) (<= n 31)) (bvult (shift_right val__ (- 32 n)) (ite (< n 4294967296) (bvshl #x00000001 ((_ int2bv 32) n)) #x00000000))))))) :pattern ((lemma81 us_void_param)))))
(assert (= (lemma8 Tuple0) true))
(assert (not (= (make_mask 1) #x00000001)))
(check-sat)
(exit)
