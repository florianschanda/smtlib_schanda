(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFBVDTLIRA)
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
(declare-fun nth ((_ BitVec 8) Int) Bool)
(declare-fun lsr ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun asr ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun lsl ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun rotate_right1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun rotate_left1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun pow2 (Int) Int)
(define-fun to_int1 ((x (_ BitVec 8))) Int (ite (bvsge x (_ bv0 8)) (bv2nat x) (- (- 256 (bv2nat x)))))
(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 255)))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvlshr x n) (lsr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvashr x n) (asr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvshl x n) (lsl x (bv2nat n)))))
(assert (forall ((v (_ BitVec 8)) (n (_ BitVec 8))) (= (bvor (bvshl v (bvurem n (_ bv8 8))) (bvlshr v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) (rotate_left1 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 8)) (n (_ BitVec 8))) (= (bvor (bvlshr v (bvurem n (_ bv8 8))) (bvshl v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) (rotate_right1 v (bv2nat n)))))
(declare-fun nth_bv ((_ BitVec 8) (_ BitVec 8)) Bool)
(assert (forall ((x (_ BitVec 8)) (i (_ BitVec 8))) (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))
(assert (forall ((x (_ BitVec 8)) (i (_ BitVec 8))) (= (nth x (bv2nat i)) (nth_bv x i))))
(assert (forall ((x (_ BitVec 8)) (i Int)) (=> (and (<= 0 i) (< i 256)) (= (nth_bv x ((_ int2bv 8) i)) (nth x i)))))
(declare-fun eq_sub_bv ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8) (_ BitVec 8)) Bool)
(assert (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8)) (n (_ BitVec 8))) (let ((mask (bvshl (bvsub (bvshl #x01 n) #x01) i))) (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))
(assert (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8)) (n (_ BitVec 8))) (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 8))))))
(declare-fun power ((_ BitVec 8) Int) (_ BitVec 8))
(define-fun bv_min ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))
(define-fun bv_max ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))
(declare-fun nth1 ((_ BitVec 32) Int) Bool)
(declare-fun lsr1 ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun asr1 ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun lsl1 ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun rotate_right2 ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun rotate_left2 ((_ BitVec 32) Int) (_ BitVec 32))
(define-fun to_int2 ((x (_ BitVec 32))) Int (ite (bvsge x (_ bv0 32)) (bv2nat x) (- (- 4294967296 (bv2nat x)))))
(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvlshr x n) (lsr1 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvashr x n) (asr1 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvshl x n) (lsl1 x (bv2nat n)))))
(assert (forall ((v (_ BitVec 32)) (n (_ BitVec 32))) (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) (rotate_left2 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 32)) (n (_ BitVec 32))) (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) (rotate_right2 v (bv2nat n)))))
(declare-fun nth_bv1 ((_ BitVec 32) (_ BitVec 32)) Bool)
(assert (forall ((x (_ BitVec 32)) (i (_ BitVec 32))) (= (= (nth_bv1 x i) true) (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))
(assert (forall ((x (_ BitVec 32)) (i (_ BitVec 32))) (= (nth1 x (bv2nat i)) (nth_bv1 x i))))
(assert (forall ((x (_ BitVec 32)) (i Int)) (=> (and (<= 0 i) (< i 4294967296)) (= (nth_bv1 x ((_ int2bv 32) i)) (nth1 x i)))))
(declare-fun eq_sub_bv1 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)
(assert (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32)) (n (_ BitVec 32))) (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i))) (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub1 ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))
(assert (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32)) (n (_ BitVec 32))) (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))
(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 32))))))
(declare-fun power1 ((_ BitVec 32) Int) (_ BitVec 32))
(define-fun bv_min1 ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))
(define-fun bv_max1 ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))
(declare-fun nth2 ((_ BitVec 64) Int) Bool)
(declare-fun lsr2 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun asr2 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun lsl2 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_right3 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_left3 ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun to_int3 ((x (_ BitVec 64))) Int (ite (bvsge x (_ bv0 64)) (bv2nat x) (- (- 18446744073709551616 (bv2nat x)))))
(define-fun uint_in_range2 ((i Int)) Bool (and (<= 0 i) (<= i 18446744073709551615)))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvlshr x n) (lsr2 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvashr x n) (asr2 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvshl x n) (lsl2 x (bv2nat n)))))
(assert (forall ((v (_ BitVec 64)) (n (_ BitVec 64))) (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) (rotate_left3 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 64)) (n (_ BitVec 64))) (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) (rotate_right3 v (bv2nat n)))))
(declare-fun nth_bv2 ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (forall ((x (_ BitVec 64)) (i (_ BitVec 64))) (= (= (nth_bv2 x i) true) (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))
(assert (forall ((x (_ BitVec 64)) (i (_ BitVec 64))) (= (nth2 x (bv2nat i)) (nth_bv2 x i))))
(assert (forall ((x (_ BitVec 64)) (i Int)) (=> (and (<= 0 i) (< i 18446744073709551616)) (= (nth_bv2 x ((_ int2bv 64) i)) (nth2 x i)))))
(declare-fun eq_sub_bv2 ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) Bool)
(assert (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64)) (n (_ BitVec 64))) (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i))) (= (eq_sub_bv2 a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub2 ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth2 a j) (nth2 b j)))))
(assert (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64)) (n (_ BitVec 64))) (= (eq_sub2 a b (bv2nat i) (bv2nat n)) (eq_sub_bv2 a b i n))))
(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 (_ BitVec 64))))))
(declare-fun power2 ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun bv_min2 ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))
(define-fun bv_max2 ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort unsigned_64 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 64))
(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 64)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 64))
(declare-fun user_eq (unsigned_64 unsigned_64) Bool)
(declare-const dummy unsigned_64)
(declare-datatypes () ((unsigned_64__ref (mk_unsigned_64__ref (unsigned_64__content unsigned_64)))))
(define-fun unsigned_64__ref___projection ((a unsigned_64__ref)) unsigned_64 (unsigned_64__content a))
(define-fun dynamic_invariant ((temp___expr_160 (_ BitVec 64)) (temp___is_init_156 Bool) (temp___skip_constant_157 Bool) (temp___do_toplevel_158 Bool) (temp___do_typ_inv_159 Bool)) Bool true)
(declare-sort unsigned_32 0)
(declare-const attr__ATTRIBUTE_MODULUS1 (_ BitVec 32))
(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 32)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 32))
(declare-fun user_eq1 (unsigned_32 unsigned_32) Bool)
(declare-const dummy1 unsigned_32)
(declare-datatypes () ((unsigned_32__ref (mk_unsigned_32__ref (unsigned_32__content unsigned_32)))))
(define-fun unsigned_32__ref___projection ((a unsigned_32__ref)) unsigned_32 (unsigned_32__content a))
(define-fun dynamic_invariant1 ((temp___expr_167 (_ BitVec 32)) (temp___is_init_163 Bool) (temp___skip_constant_164 Bool) (temp___do_toplevel_165 Bool) (temp___do_typ_inv_166 Bool)) Bool true)
(declare-sort unsigned_8 0)
(declare-const attr__ATTRIBUTE_MODULUS2 (_ BitVec 8))
(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 8)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 8))
(declare-fun user_eq2 (unsigned_8 unsigned_8) Bool)
(declare-const dummy2 unsigned_8)
(declare-datatypes () ((unsigned_8__ref (mk_unsigned_8__ref (unsigned_8__content unsigned_8)))))
(define-fun unsigned_8__ref___projection ((a unsigned_8__ref)) unsigned_8 (unsigned_8__content a))
(declare-fun to_rep (unsigned_8) (_ BitVec 8))
(declare-fun of_rep ((_ BitVec 8)) unsigned_8)
(assert (forall ((x unsigned_8)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert true)
(assert (forall ((x (_ BitVec 8))) (! (= (to_rep (of_rep x)) x) :pattern ((to_rep (of_rep x))))))
(define-fun to_int4 ((x unsigned_8)) Int (bv2nat (to_rep x)))
(assert (forall ((x unsigned_8)) (! (uint_in_range (to_int4 x)) :pattern ((to_int4 x)))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array (_ BitVec 64) unsigned_8))))))
(declare-fun slide ((Array (_ BitVec 64) unsigned_8) (_ BitVec 64) (_ BitVec 64)) (Array (_ BitVec 64) unsigned_8))
(assert (forall ((a (Array (_ BitVec 64) unsigned_8))) (forall ((first (_ BitVec 64))) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array (_ BitVec 64) unsigned_8))) (forall ((old_first (_ BitVec 64))) (forall ((new_first (_ BitVec 64))) (forall ((i (_ BitVec 64))) (! (= (select (slide a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array (_ BitVec 64) unsigned_8)) (a__first (_ BitVec 64)) (a__last (_ BitVec 64)) (b (Array (_ BitVec 64) unsigned_8)) (b__first (_ BitVec 64)) (b__last (_ BitVec 64))) Bool (ite (and (ite (bvule a__first a__last) (and (bvule b__first b__last) (= (bvsub a__last a__first) (bvsub b__last b__first))) (bvugt b__first b__last)) (forall ((temp___idx_154 (_ BitVec 64))) (=> (and (bvule a__first temp___idx_154) (bvule temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (bvadd (bvsub b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array (_ BitVec 64) unsigned_8)) (b (Array (_ BitVec 64) unsigned_8))) (forall ((a__first (_ BitVec 64)) (a__last (_ BitVec 64)) (b__first (_ BitVec 64)) (b__last (_ BitVec 64))) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (bvule a__first a__last) (and (bvule b__first b__last) (= (bvsub a__last a__first) (bvsub b__last b__first))) (bvugt b__first b__last)) (forall ((temp___idx_154 (_ BitVec 64))) (=> (and (bvule a__first temp___idx_154) (bvule temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (bvadd (bvsub b__first a__first) temp___idx_154)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const addr (_ BitVec 64))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const val__ (_ BitVec 32))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant2 ((temp___expr_181 (_ BitVec 8)) (temp___is_init_177 Bool) (temp___skip_constant_178 Bool) (temp___do_toplevel_179 Bool) (temp___do_typ_inv_180 Bool)) Bool true)
(declare-const memory (Array (_ BitVec 64) unsigned_8))
(declare-const o unsigned_8)
(declare-const o1 (Array (_ BitVec 64) unsigned_8))
(declare-const o2 unsigned_8)
(declare-const o3 (Array (_ BitVec 64) unsigned_8))
(declare-const o4 unsigned_8)
(declare-const o5 (Array (_ BitVec 64) unsigned_8))
(declare-const result (Array (_ BitVec 64) unsigned_8))
(declare-const memory1 (Array (_ BitVec 64) unsigned_8))
(declare-const result1 (Array (_ BitVec 64) unsigned_8))
(declare-const memory2 (Array (_ BitVec 64) unsigned_8))
(declare-const result2 (Array (_ BitVec 64) unsigned_8))
(declare-const memory3 (Array (_ BitVec 64) unsigned_8))
(assert (= (to_rep o) ((_ extract 7 0) (bvurem val__ #x00000100))))
(assert (= o1 (store memory addr o)))
(assert (= (mk_map__ref result) (mk_map__ref memory)))
(assert (= memory1 o1))
(assert (= (to_rep o2) ((_ extract 7 0) (bvurem (bvudiv val__ #x00000100) #x00000100))))
(assert (= o3 (store memory1 (bvadd addr #x0000000000000001) o2)))
(assert (= memory1 result1))
(assert (= memory2 o3))
(assert (= (to_rep o4) ((_ extract 7 0) (bvurem (bvudiv val__ #x00010000) #x00000100))))
(assert (= o5 (store memory2 (bvadd addr #x0000000000000002) o4)))
(assert (= memory2 result2))
(assert (= memory3 o5))
(assert (not (not (= #x00000100 #x00000000))))
(check-sat)
(exit)
