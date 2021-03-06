(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFBVDTNIRA)
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
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-fun sqrt_von_neumann_aux16 ((_ BitVec 16)) (_ BitVec 16))
(declare-fun sqrt_von_neumann_aux16__function_guard ((_ BitVec 16) (_ BitVec 16)) Bool)
(declare-sort u16 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 16))
(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 16)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 16))
(declare-fun user_eq1 (u16 u16) Bool)
(declare-const dummy1 u16)
(declare-datatypes () ((u16__ref (mk_u16__ref (u16__content u16)))))
(define-fun u16__ref___projection ((a u16__ref)) u16 (u16__content a))
(define-fun dynamic_invariant ((temp___expr_263 (_ BitVec 16)) (temp___is_init_259 Bool) (temp___skip_constant_260 Bool) (temp___do_toplevel_261 Bool) (temp___do_typ_inv_262 Bool)) Bool true)
(assert (forall ((x (_ BitVec 16))) (! (=> (dynamic_invariant x true true true true) (let ((result (sqrt_von_neumann_aux16 x))) (and (and (and (bvule (bvmul result result) x) (bvuge (bvsub (bvmul (bvadd result #x0001) (bvadd result #x0001)) #x0001) x)) (=> (bvule x #x7FFF) (bvule result #x00B5))) (dynamic_invariant result true false true true)))) :pattern ((sqrt_von_neumann_aux16 x)))))
(declare-sort sqrt_domain16 0)
(declare-fun sqrt_domain16qtint (sqrt_domain16) Int)
(assert (forall ((i sqrt_domain16)) (and (<= 0 (sqrt_domain16qtint i)) (<= (sqrt_domain16qtint i) 32767))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 32767)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (sqrt_domain16 sqrt_domain16) Bool)
(declare-const dummy2 sqrt_domain16)
(declare-datatypes () ((sqrt_domain16__ref (mk_sqrt_domain16__ref (sqrt_domain16__content sqrt_domain16)))))
(define-fun sqrt_domain16__ref___projection ((a sqrt_domain16__ref)) sqrt_domain16 (sqrt_domain16__content a))
(define-fun dynamic_invariant1 ((temp___expr_249 Int) (temp___is_init_245 Bool) (temp___skip_constant_246 Bool) (temp___do_toplevel_247 Bool) (temp___do_typ_inv_248 Bool)) Bool (=> (or (= temp___is_init_245 true) (<= 0 32767)) (in_range2 temp___expr_249)))
(declare-sort sqrt_range16 0)
(declare-fun sqrt_range16qtint (sqrt_range16) Int)
(assert (forall ((i sqrt_range16)) (and (<= 0 (sqrt_range16qtint i)) (<= (sqrt_range16qtint i) 181))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 181)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (sqrt_range16 sqrt_range16) Bool)
(declare-const dummy3 sqrt_range16)
(declare-datatypes () ((sqrt_range16__ref (mk_sqrt_range16__ref (sqrt_range16__content sqrt_range16)))))
(define-fun sqrt_range16__ref___projection ((a sqrt_range16__ref)) sqrt_range16 (sqrt_range16__content a))
(declare-const x Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant2 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant3 ((temp___expr_256 Int) (temp___is_init_252 Bool) (temp___skip_constant_253 Bool) (temp___do_toplevel_254 Bool) (temp___do_typ_inv_255 Bool)) Bool (=> (or (= temp___is_init_252 true) (<= 0 181)) (in_range3 temp___expr_256)))
(declare-const p__sqrt_von_neumann16__result Int)
(declare-const o (_ BitVec 16))
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 Bool)
(declare-const result Int)
(declare-const p__sqrt_von_neumann16__result1 Int)
(declare-const p__sqrt_von_neumann16__result2 Int)
(declare-const p__sqrt_von_neumann16__result3 Int)
(declare-const p__sqrt_von_neumann16__result4 Int)
(declare-const p__sqrt_von_neumann16__result5 Int)
(assert (in_range2 x))
(assert (= p__sqrt_von_neumann16__result1 p__sqrt_von_neumann16__result2))
(assert (= p__sqrt_von_neumann16__result3 p__sqrt_von_neumann16__result1))
(assert (and (= o (sqrt_von_neumann_aux16 ((_ int2bv 16) x))) (and (and (bvule (bvmul o o) ((_ int2bv 16) x)) (bvuge (bvsub (bvmul (bvadd o #x0001) (bvadd o #x0001)) #x0001) ((_ int2bv 16) x))) (=> (bvule ((_ int2bv 16) x) #x7FFF) (bvule o #x00B5)))))
(assert (= o1 (bv2nat o)))
(assert (and (= o2 o1) (in_range3 o1)))
(assert (= (mk_int__ref result) (mk_int__ref p__sqrt_von_neumann16__result)))
(assert (= p__sqrt_von_neumann16__result1 o2))
(assert (= (mk_int__ref p__sqrt_von_neumann16__result4) (mk_int__ref p__sqrt_von_neumann16__result2)))
(assert (= p__sqrt_von_neumann16__result5 p__sqrt_von_neumann16__result3))
(assert (=> (< p__sqrt_von_neumann16__result4 181) (and (= o3 (* (+ p__sqrt_von_neumann16__result4 1) (+ p__sqrt_von_neumann16__result4 1))) (in_range1 (* (+ p__sqrt_von_neumann16__result4 1) (+ p__sqrt_von_neumann16__result4 1))))))
(assert (=> (< p__sqrt_von_neumann16__result4 181) (= o4 (ite (< x o3) true false))))
(assert (=> (not (< p__sqrt_von_neumann16__result4 181)) (= o4 (distinct 1 0))))
(assert (not (in_range1 (* p__sqrt_von_neumann16__result4 p__sqrt_von_neumann16__result4))))
(check-sat)
(exit)
