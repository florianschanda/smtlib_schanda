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
(declare-fun shift_right ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun shift_right__function_guard ((_ BitVec 32) (_ BitVec 32) Int) Bool)
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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range temp___expr_39)))
(declare-sort modular 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 32))
(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 32)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 32))
(declare-fun user_eq1 (modular modular) Bool)
(declare-const dummy1 modular)
(declare-datatypes () ((modular__ref (mk_modular__ref (modular__content modular)))))
(define-fun modular__ref___6__projection ((a modular__ref)) modular (modular__content a))
(define-fun dynamic_invariant1 ((temp___expr_359 (_ BitVec 32)) (temp___is_init_355 Bool) (temp___skip_constant_356 Bool) (temp___do_toplevel_357 Bool) (temp___do_typ_inv_358 Bool)) Bool true)
(assert (forall ((v (_ BitVec 32))) (forall ((amount Int)) (! (=> (and (dynamic_invariant1 v true true true true) (dynamic_invariant amount true true true true)) (dynamic_invariant1 (shift_right v amount) true false true true)) :pattern ((shift_right v amount))))))
(assert (forall ((v (_ BitVec 32))) (forall ((amount Int)) (! (=> (and (dynamic_invariant1 v true true true true) (dynamic_invariant amount true true true true)) (= (shift_right v amount) (ite (and (<= 1 32) (<= 32 8)) ((_ zero_extend 24) (ite (< amount 8) (bvlshr ((_ extract 7 0) v) ((_ int2bv 8) amount)) #x00)) (ite (and (<= 9 32) (<= 32 16)) ((_ zero_extend 16) (ite (< amount 16) (bvlshr ((_ extract 15 0) v) ((_ int2bv 16) amount)) #x0000)) (ite (and (<= 17 32) (<= 32 32)) (bvlshr v ((_ int2bv 32) amount)) ((_ extract 31 0) (bvlshr ((_ zero_extend 32) v) ((_ int2bv 64) amount)))))))) :pattern ((shift_right v amount))))))
(declare-fun shift_left ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun shift_left__function_guard ((_ BitVec 32) (_ BitVec 32) Int) Bool)
(assert (forall ((v (_ BitVec 32))) (forall ((amount Int)) (! (=> (and (dynamic_invariant1 v true true true true) (dynamic_invariant amount true true true true)) (dynamic_invariant1 (shift_left v amount) true false true true)) :pattern ((shift_left v amount))))))
(assert (forall ((v (_ BitVec 32))) (forall ((amount Int)) (! (=> (and (dynamic_invariant1 v true true true true) (dynamic_invariant amount true true true true)) (= (shift_left v amount) (ite (and (<= 1 32) (<= 32 8)) ((_ zero_extend 24) (ite (< amount 8) (bvshl ((_ extract 7 0) v) ((_ int2bv 8) amount)) #x00)) (ite (and (<= 9 32) (<= 32 16)) ((_ zero_extend 16) (ite (< amount 16) (bvshl ((_ extract 15 0) v) ((_ int2bv 16) amount)) #x0000)) (ite (and (<= 17 32) (<= 32 32)) (bvshl v ((_ int2bv 32) amount)) ((_ extract 31 0) (bvurem (bvshl ((_ zero_extend 32) v) ((_ int2bv 64) amount)) ((_ int2bv 64) 4294967296)))))))) :pattern ((shift_left v amount))))))
(declare-fun make_mask (Int) (_ BitVec 32))
(declare-fun make_mask__function_guard ((_ BitVec 32) Int) Bool)
(declare-sort mask_size 0)
(declare-fun mask_sizeqtint (mask_size) Int)
(assert (forall ((i mask_size)) (and (<= 1 (mask_sizeqtint i)) (<= (mask_sizeqtint i) 32))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 32)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (mask_size mask_size) Bool)
(declare-const dummy2 mask_size)
(declare-datatypes () ((mask_size__ref (mk_mask_size__ref (mask_size__content mask_size)))))
(define-fun mask_size__ref___5__projection ((a mask_size__ref)) mask_size (mask_size__content a))
(define-fun dynamic_invariant2 ((temp___expr_373 Int) (temp___is_init_369 Bool) (temp___skip_constant_370 Bool) (temp___do_toplevel_371 Bool) (temp___do_typ_inv_372 Bool)) Bool (=> (or (= temp___is_init_369 true) (<= 1 32)) (in_range1 temp___expr_373)))
(assert (forall ((num_bits Int)) (! (=> (dynamic_invariant2 num_bits true true true true) (dynamic_invariant1 (make_mask num_bits) true false true true)) :pattern ((make_mask num_bits)))))
(assert (forall ((num_bits Int)) (! (=> (dynamic_invariant2 num_bits true true true true) (= (make_mask num_bits) (shift_right #xFFFFFFFF (- 32 num_bits)))) :pattern ((make_mask num_bits)))))
(declare-fun extract_bits_inline_always ((_ BitVec 32) Int Int) (_ BitVec 32))
(declare-fun extract_bits_inline_always__function_guard ((_ BitVec 32) (_ BitVec 32) Int Int) Bool)
(declare-sort bit_position 0)
(declare-fun bit_positionqtint (bit_position) Int)
(assert (forall ((i bit_position)) (and (<= 0 (bit_positionqtint i)) (<= (bit_positionqtint i) 31))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 31)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (bit_position bit_position) Bool)
(declare-const dummy3 bit_position)
(declare-datatypes () ((bit_position__ref (mk_bit_position__ref (bit_position__content bit_position)))))
(define-fun bit_position__ref___5__projection ((a bit_position__ref)) bit_position (bit_position__content a))
(define-fun dynamic_invariant3 ((temp___expr_366 Int) (temp___is_init_362 Bool) (temp___skip_constant_363 Bool) (temp___do_toplevel_364 Bool) (temp___do_typ_inv_365 Bool)) Bool (=> (or (= temp___is_init_362 true) (<= 0 31)) (in_range2 temp___expr_366)))
(assert (forall ((value (_ BitVec 32))) (forall ((from Int) (to__ Int)) (! (=> (and (and (and (dynamic_invariant1 value true true true true) (dynamic_invariant3 from true true true true)) (dynamic_invariant3 to__ true true true true)) (<= from to__)) (let ((result (extract_bits_inline_always value from to__))) (and (and (= result (bvand (shift_right value from) (make_mask (+ (- to__ from) 1)))) (and (bvule result (make_mask (+ (- to__ from) 1))) (= (shift_left result from) (bvand value (shift_left (make_mask (+ (- to__ from) 1)) from))))) (dynamic_invariant1 result true false true true)))) :pattern ((extract_bits_inline_always value from to__))))))
(declare-fun extract_bits_inline ((_ BitVec 32) Int Int) (_ BitVec 32))
(declare-fun extract_bits_inline__function_guard ((_ BitVec 32) (_ BitVec 32) Int Int) Bool)
(assert (forall ((value (_ BitVec 32))) (forall ((from Int) (to__ Int)) (! (=> (and (and (and (dynamic_invariant1 value true true true true) (dynamic_invariant3 from true true true true)) (dynamic_invariant3 to__ true true true true)) (<= from to__)) (let ((result (extract_bits_inline value from to__))) (and (and (= result (bvand (shift_right value from) (make_mask (+ (- to__ from) 1)))) (and (bvule result (make_mask (+ (- to__ from) 1))) (= (shift_left result from) (bvand value (shift_left (make_mask (+ (- to__ from) 1)) from))))) (dynamic_invariant1 result true false true true)))) :pattern ((extract_bits_inline value from to__))))))
(assert (forall ((value (_ BitVec 32))) (forall ((from Int) (to__ Int)) (! (=> (and (and (dynamic_invariant1 value true true true true) (dynamic_invariant3 from true true true true)) (dynamic_invariant3 to__ true true true true)) (= (extract_bits_inline value from to__) (extract_bits_inline_always value from to__))) :pattern ((extract_bits_inline value from to__))))))
(declare-fun extract_bits_not_inline ((_ BitVec 32) Int Int) (_ BitVec 32))
(declare-fun extract_bits_not_inline__function_guard ((_ BitVec 32) (_ BitVec 32) Int Int) Bool)
(assert (forall ((value (_ BitVec 32))) (forall ((from Int) (to__ Int)) (! (=> (and (and (and (dynamic_invariant1 value true true true true) (dynamic_invariant3 from true true true true)) (dynamic_invariant3 to__ true true true true)) (<= from to__)) (let ((result (extract_bits_not_inline value from to__))) (and (and (= result (bvand (shift_right value from) (make_mask (+ (- to__ from) 1)))) (and (bvule result (make_mask (+ (- to__ from) 1))) (= (shift_left result from) (bvand value (shift_left (make_mask (+ (- to__ from) 1)) from))))) (dynamic_invariant1 result true false true true)))) :pattern ((extract_bits_not_inline value from to__))))))
(assert (forall ((value (_ BitVec 32))) (forall ((from Int) (to__ Int)) (! (=> (and (and (dynamic_invariant1 value true true true true) (dynamic_invariant3 from true true true true)) (dynamic_invariant3 to__ true true true true)) (= (extract_bits_not_inline value from to__) (extract_bits_inline_always value from to__))) :pattern ((extract_bits_not_inline value from to__))))))
(declare-const value (_ BitVec 32))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const from Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const to__ Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const result__ (_ BitVec 32))
(declare-const bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result (_ BitVec 32))
(declare-const o (_ BitVec 32))
(declare-const o1 (_ BitVec 32))
(declare-const o2 (_ BitVec 32))
(declare-const o3 Int)
(declare-const o4 (_ BitVec 32))
(declare-const o5 Int)
(declare-const o6 (_ BitVec 32))
(declare-const o7 (_ BitVec 32))
(declare-const o8 (_ BitVec 32))
(declare-const result (_ BitVec 32))
(declare-const result__1 (_ BitVec 32))
(declare-const result1 (_ BitVec 32))
(declare-const result__2 (_ BitVec 32))
(declare-const result2 (_ BitVec 32))
(declare-const result__3 (_ BitVec 32))
(declare-const result3 (_ BitVec 32))
(declare-const bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result1 (_ BitVec 32))
(declare-const result__4 (_ BitVec 32))
(declare-const bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result2 (_ BitVec 32))
(declare-const result__5 (_ BitVec 32))
(declare-const bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result3 (_ BitVec 32))
(declare-const result__6 (_ BitVec 32))
(declare-const bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result4 (_ BitVec 32))
(declare-const result__7 (_ BitVec 32))
(declare-const bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result5 (_ BitVec 32))
(declare-const result4 Bool)
(declare-const result5 Bool)
(define-fun result__8 () t__ref (mk_t__ref result__))
(assert (in_range2 from))
(assert (in_range2 to__))
(assert (<= from to__))
(assert (= bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result1 bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result2))
(assert (= result__1 result__4))
(assert (= bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result3 bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result1))
(assert (= result__5 result__1))
(assert (=> (= 2 0) (and (= o (extract_bits_not_inline value from to__)) (and (= o (extract_bits_inline_always value from to__)) (and (= o (bvand (shift_right value from) (make_mask (+ (- to__ from) 1)))) (and (bvule o (make_mask (+ (- to__ from) 1))) (= (shift_left o from) (bvand value (shift_left (make_mask (+ (- to__ from) 1)) from)))))))))
(assert (=> (= 2 0) (= (mk_t__ref result) result__8)))
(assert (=> (= 2 0) (= result__1 o)))
(assert (=> (not (= 2 0)) (=> (= 2 1) (and (= o1 (extract_bits_inline value from to__)) (and (= o1 (extract_bits_inline_always value from to__)) (and (= o1 (bvand (shift_right value from) (make_mask (+ (- to__ from) 1)))) (and (bvule o1 (make_mask (+ (- to__ from) 1))) (= (shift_left o1 from) (bvand value (shift_left (make_mask (+ (- to__ from) 1)) from))))))))))
(assert (=> (not (= 2 0)) (=> (= 2 1) (= (mk_t__ref result1) result__8))))
(assert (=> (not (= 2 0)) (=> (= 2 1) (= result__2 o1))))
(assert (=> (not (= 2 0)) (=> (not (= 2 1)) (and (= o2 (extract_bits_inline_always value from to__)) (and (= o2 (bvand (shift_right value from) (make_mask (+ (- to__ from) 1)))) (and (bvule o2 (make_mask (+ (- to__ from) 1))) (= (shift_left o2 from) (bvand value (shift_left (make_mask (+ (- to__ from) 1)) from)))))))))
(assert (=> (not (= 2 0)) (=> (not (= 2 1)) (= (mk_t__ref result2) result__8))))
(assert (=> (not (= 2 0)) (=> (not (= 2 1)) (= result__3 o2))))
(assert (=> (not (= 2 0)) (=> (not (= 2 1)) (= result__2 result__3))))
(assert (=> (not (= 2 0)) (= result__1 result__2)))
(assert (= (mk_t__ref result3) (mk_t__ref bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result)))
(assert (= bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result1 result__1))
(assert (= (mk_t__ref bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result4) (mk_t__ref bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result2)))
(assert (= (mk_t__ref result__6) (mk_t__ref result__4)))
(assert (= bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result5 bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result3))
(assert (= result__7 result__5))
(assert (and (= o5 (+ (- to__ from) 1)) (in_range1 (+ (- to__ from) 1))))
(assert (and (= o6 (make_mask o5)) (= o6 (shift_right #xFFFFFFFF (- 32 o5)))))
(assert (and (= o7 (shift_right value from)) (= o7 (ite (and (<= 1 32) (<= 32 8)) ((_ zero_extend 24) (ite (< from 8) (bvlshr ((_ extract 7 0) value) ((_ int2bv 8) from)) #x00)) (ite (and (<= 9 32) (<= 32 16)) ((_ zero_extend 16) (ite (< from 16) (bvlshr ((_ extract 15 0) value) ((_ int2bv 16) from)) #x0000)) (ite (and (<= 17 32) (<= 32 32)) (bvlshr value ((_ int2bv 32) from)) ((_ extract 31 0) (bvlshr ((_ zero_extend 32) value) ((_ int2bv 64) from)))))))))
(assert (= o8 (bvand o7 o6)))
(assert (= result4 (ite (= bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result4 o8) true false)))
(assert (= result4 true))
(assert (and (= o3 (+ (- to__ from) 1)) (in_range1 (+ (- to__ from) 1))))
(assert (and (= o4 (make_mask o3)) (= o4 (shift_right #xFFFFFFFF (- 32 o3)))))
(assert (= result5 (ite (bvule bits_manipulation_unsigned__unsigned_32__functions__extract_bits__result4 o4) true false)))
(assert (= result5 true))
(assert (not (in_range1 (+ (- to__ from) 1))))
(check-sat)
(exit)
