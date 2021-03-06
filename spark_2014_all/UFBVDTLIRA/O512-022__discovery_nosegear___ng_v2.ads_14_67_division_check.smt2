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
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-fun distancesincelastclickbeforelastupdate ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
(declare-fun distancesincelastclickbeforelastupdate__function_guard ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) Bool)
(declare-fun distancesincelastupdate ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
(declare-fun distancesincelastupdate__function_guard ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) Bool)
(declare-fun distancefromlastclicktolastupdate ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
(declare-fun distancefromlastclicktolastupdate__function_guard ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) Bool)
(declare-sort unsigned_16 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 16))
(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 16)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 16))
(declare-fun user_eq (unsigned_16 unsigned_16) Bool)
(declare-const dummy unsigned_16)
(declare-datatypes () ((unsigned_16__ref (mk_unsigned_16__ref (unsigned_16__content unsigned_16)))))
(define-fun unsigned_16__ref___projection ((a unsigned_16__ref)) unsigned_16 (unsigned_16__content a))
(define-fun dynamic_invariant ((temp___expr_193 (_ BitVec 16)) (temp___is_init_189 Bool) (temp___skip_constant_190 Bool) (temp___do_toplevel_191 Bool) (temp___do_typ_inv_192 Bool)) Bool true)
(assert (forall ((ng_v2__prevtime (_ BitVec 16)) (ng_v2__prevcount (_ BitVec 16)) (ng_v2__currtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16)) (ng_v2__thiscount (_ BitVec 16))) (! (=> (and (and (and (and (dynamic_invariant ng_v2__prevtime true true true true) (dynamic_invariant ng_v2__prevcount true true true true)) (dynamic_invariant ng_v2__currtime true true true true)) (dynamic_invariant ng_v2__thistime true true true true)) (dynamic_invariant ng_v2__thiscount true true true true)) (dynamic_invariant (distancesincelastclickbeforelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount) true false true true)) :pattern ((distancesincelastclickbeforelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount)))))
(assert (forall ((ng_v2__prevtime (_ BitVec 16)) (ng_v2__prevcount (_ BitVec 16)) (ng_v2__currtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16)) (ng_v2__thiscount (_ BitVec 16))) (! (=> (and (and (and (and (dynamic_invariant ng_v2__prevtime true true true true) (dynamic_invariant ng_v2__prevcount true true true true)) (dynamic_invariant ng_v2__currtime true true true true)) (dynamic_invariant ng_v2__thistime true true true true)) (dynamic_invariant ng_v2__thiscount true true true true)) (= (distancesincelastclickbeforelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount) (bvadd (distancefromlastclicktolastupdate ng_v2__prevcount ng_v2__thiscount) (distancesincelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount)))) :pattern ((distancesincelastclickbeforelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount)))))
(declare-fun timesincelastclickbeforelastupdate ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
(declare-fun timesincelastclickbeforelastupdate__function_guard ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) Bool)
(declare-fun timefromlastclicktolastupdate ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
(declare-fun timefromlastclicktolastupdate__function_guard ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) Bool)
(declare-fun timesincelastupdate ((_ BitVec 16) (_ BitVec 16)) (_ BitVec 16))
(declare-fun timesincelastupdate__function_guard ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)) Bool)
(assert (forall ((ng_v2__prevtime (_ BitVec 16)) (ng_v2__currtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16))) (! (=> (and (and (dynamic_invariant ng_v2__prevtime true true true true) (dynamic_invariant ng_v2__currtime true true true true)) (dynamic_invariant ng_v2__thistime true true true true)) (dynamic_invariant (timesincelastclickbeforelastupdate ng_v2__prevtime ng_v2__currtime ng_v2__thistime) true false true true)) :pattern ((timesincelastclickbeforelastupdate ng_v2__prevtime ng_v2__currtime ng_v2__thistime)))))
(assert (forall ((ng_v2__prevtime (_ BitVec 16)) (ng_v2__currtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16))) (! (=> (and (and (dynamic_invariant ng_v2__prevtime true true true true) (dynamic_invariant ng_v2__currtime true true true true)) (dynamic_invariant ng_v2__thistime true true true true)) (= (timesincelastclickbeforelastupdate ng_v2__prevtime ng_v2__currtime ng_v2__thistime) (bvadd (timefromlastclicktolastupdate ng_v2__prevtime ng_v2__thistime) (timesincelastupdate ng_v2__currtime ng_v2__thistime)))) :pattern ((timesincelastclickbeforelastupdate ng_v2__prevtime ng_v2__currtime ng_v2__thistime)))))
(assert (forall ((ng_v2__prevtime (_ BitVec 16)) (ng_v2__prevcount (_ BitVec 16)) (ng_v2__currtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16)) (ng_v2__thiscount (_ BitVec 16))) (! (=> (and (and (and (and (and (dynamic_invariant ng_v2__prevtime true true true true) (dynamic_invariant ng_v2__prevcount true true true true)) (dynamic_invariant ng_v2__currtime true true true true)) (dynamic_invariant ng_v2__thistime true true true true)) (dynamic_invariant ng_v2__thiscount true true true true)) (not (= ng_v2__thistime ng_v2__prevtime))) (dynamic_invariant (distancesincelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount) true false true true)) :pattern ((distancesincelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount)))))
(assert (forall ((ng_v2__prevtime (_ BitVec 16)) (ng_v2__prevcount (_ BitVec 16)) (ng_v2__currtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16)) (ng_v2__thiscount (_ BitVec 16))) (! (=> (and (and (and (and (dynamic_invariant ng_v2__prevtime true true true true) (dynamic_invariant ng_v2__prevcount true true true true)) (dynamic_invariant ng_v2__currtime true true true true)) (dynamic_invariant ng_v2__thistime true true true true)) (dynamic_invariant ng_v2__thiscount true true true true)) (= (distancesincelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount) (bvudiv (bvmul (distancefromlastclicktolastupdate ng_v2__prevcount ng_v2__thiscount) (timesincelastupdate ng_v2__currtime ng_v2__thistime)) (timefromlastclicktolastupdate ng_v2__prevtime ng_v2__thistime)))) :pattern ((distancesincelastupdate ng_v2__prevtime ng_v2__prevcount ng_v2__currtime ng_v2__thistime ng_v2__thiscount)))))
(assert (forall ((ng_v2__prevtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16))) (! (=> (and (dynamic_invariant ng_v2__prevtime true true true true) (dynamic_invariant ng_v2__thistime true true true true)) (dynamic_invariant (timefromlastclicktolastupdate ng_v2__prevtime ng_v2__thistime) true false true true)) :pattern ((timefromlastclicktolastupdate ng_v2__prevtime ng_v2__thistime)))))
(assert (forall ((ng_v2__prevtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16))) (! (=> (and (dynamic_invariant ng_v2__prevtime true true true true) (dynamic_invariant ng_v2__thistime true true true true)) (= (timefromlastclicktolastupdate ng_v2__prevtime ng_v2__thistime) (bvsub ng_v2__thistime ng_v2__prevtime))) :pattern ((timefromlastclicktolastupdate ng_v2__prevtime ng_v2__thistime)))))
(assert (forall ((ng_v2__currtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16))) (! (=> (and (dynamic_invariant ng_v2__currtime true true true true) (dynamic_invariant ng_v2__thistime true true true true)) (dynamic_invariant (timesincelastupdate ng_v2__currtime ng_v2__thistime) true false true true)) :pattern ((timesincelastupdate ng_v2__currtime ng_v2__thistime)))))
(assert (forall ((ng_v2__currtime (_ BitVec 16)) (ng_v2__thistime (_ BitVec 16))) (! (=> (and (dynamic_invariant ng_v2__currtime true true true true) (dynamic_invariant ng_v2__thistime true true true true)) (= (timesincelastupdate ng_v2__currtime ng_v2__thistime) (bvsub ng_v2__currtime ng_v2__thistime))) :pattern ((timesincelastupdate ng_v2__currtime ng_v2__thistime)))))
(assert (forall ((ng_v2__prevcount (_ BitVec 16)) (ng_v2__thiscount (_ BitVec 16))) (! (=> (and (dynamic_invariant ng_v2__prevcount true true true true) (dynamic_invariant ng_v2__thiscount true true true true)) (dynamic_invariant (distancefromlastclicktolastupdate ng_v2__prevcount ng_v2__thiscount) true false true true)) :pattern ((distancefromlastclicktolastupdate ng_v2__prevcount ng_v2__thiscount)))))
(assert (forall ((ng_v2__prevcount (_ BitVec 16)) (ng_v2__thiscount (_ BitVec 16))) (! (=> (and (dynamic_invariant ng_v2__prevcount true true true true) (dynamic_invariant ng_v2__thiscount true true true true)) (= (distancefromlastclicktolastupdate ng_v2__prevcount ng_v2__thiscount) (bvmul #x00CF (bvsub ng_v2__thiscount ng_v2__prevcount)))) :pattern ((distancefromlastclicktolastupdate ng_v2__prevcount ng_v2__thiscount)))))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const attr__ATTRIBUTE_ADDRESS9 Int)
(declare-const attr__ATTRIBUTE_ADDRESS10 Int)
(declare-const estimatedgroundvelocityisavailable Bool)
(declare-const estimatedgroundvelocity (_ BitVec 16))
(declare-const prevtime (_ BitVec 16))
(declare-const prevcount (_ BitVec 16))
(declare-const currtime (_ BitVec 16))
(declare-const thistime (_ BitVec 16))
(declare-const thiscount (_ BitVec 16))
(declare-const t1 (_ BitVec 16))
(declare-const t2 (_ BitVec 16))
(declare-const d1 (_ BitVec 16))
(declare-const d2 (_ BitVec 16))
(declare-const o (_ BitVec 16))
(declare-const o1 (_ BitVec 16))
(declare-const o2 (_ BitVec 16))
(declare-const o3 (_ BitVec 16))
(declare-const o4 (_ BitVec 16))
(declare-const o5 (_ BitVec 16))
(declare-const o6 (_ BitVec 16))
(declare-const estimatedgroundvelocityisavailable1 Bool)
(declare-const estimatedgroundvelocity1 (_ BitVec 16))
(declare-const t11 (_ BitVec 16))
(declare-const t21 (_ BitVec 16))
(declare-const d11 (_ BitVec 16))
(declare-const d21 (_ BitVec 16))
(declare-const result Bool)
(declare-const estimatedgroundvelocityisavailable2 Bool)
(declare-const result1 (_ BitVec 16))
(declare-const t12 (_ BitVec 16))
(declare-const result2 (_ BitVec 16))
(declare-const t22 (_ BitVec 16))
(declare-const result3 (_ BitVec 16))
(declare-const d12 (_ BitVec 16))
(declare-const result4 (_ BitVec 16))
(declare-const d22 (_ BitVec 16))
(declare-const result5 Bool)
(declare-const estimatedgroundvelocityisavailable3 Bool)
(declare-const result6 (_ BitVec 16))
(declare-const estimatedgroundvelocity2 (_ BitVec 16))
(declare-const estimatedgroundvelocityisavailable4 Bool)
(declare-const estimatedgroundvelocity3 (_ BitVec 16))
(declare-const t13 (_ BitVec 16))
(declare-const t23 t__ref)
(declare-const d13 t__ref)
(declare-const d23 t__ref)
(declare-const estimatedgroundvelocityisavailable5 Bool)
(declare-const estimatedgroundvelocity4 (_ BitVec 16))
(declare-const t14 (_ BitVec 16))
(declare-const t24 (_ BitVec 16))
(declare-const d14 (_ BitVec 16))
(declare-const d24 (_ BitVec 16))
(declare-const estimatedgroundvelocityisavailable6 bool__ref)
(declare-const estimatedgroundvelocity5 t__ref)
(declare-const t15 t__ref)
(declare-const t25 t__ref)
(declare-const d15 t__ref)
(declare-const d25 t__ref)
(declare-const estimatedgroundvelocityisavailable7 Bool)
(declare-const estimatedgroundvelocity6 (_ BitVec 16))
(declare-const t16 (_ BitVec 16))
(declare-const t26 (_ BitVec 16))
(declare-const d16 (_ BitVec 16))
(declare-const d26 (_ BitVec 16))
(define-fun t17 () t__ref (mk_t__ref t13))
(define-fun estimatedgroundvelocity7 () t__ref (mk_t__ref estimatedgroundvelocity3))
(define-fun d27 () t__ref (mk_t__ref d2))
(define-fun d17 () t__ref (mk_t__ref d1))
(define-fun t27 () t__ref (mk_t__ref t2))
(define-fun t18 () t__ref (mk_t__ref t1))
(define-fun estimatedgroundvelocity8 () t__ref (mk_t__ref estimatedgroundvelocity))
(assert (or (and (and (and (= d23 d27) (and (= d13 d17) (and (= t23 t27) (and (= t17 t18) (and (= estimatedgroundvelocity7 estimatedgroundvelocity8) (= estimatedgroundvelocityisavailable2 estimatedgroundvelocityisavailable4)))))) (and (= d24 d21) (and (= d14 d11) (and (= t24 t21) (and (= t14 t11) (and (= estimatedgroundvelocity4 estimatedgroundvelocity1) (= estimatedgroundvelocityisavailable5 estimatedgroundvelocityisavailable2))))))) (and (= thistime prevtime) (and (= (mk_bool__ref result) (mk_bool__ref estimatedgroundvelocityisavailable)) (= estimatedgroundvelocityisavailable2 (distinct 0 0))))) (and (and (not (= thistime prevtime)) (and (= estimatedgroundvelocityisavailable2 estimatedgroundvelocityisavailable) (= estimatedgroundvelocityisavailable2 estimatedgroundvelocityisavailable1))) (and (and (and (= d23 (mk_t__ref d22)) (and (= d13 (mk_t__ref d12)) (and (= t23 (mk_t__ref t22)) (and (= t12 t13) (and (= estimatedgroundvelocity2 estimatedgroundvelocity3) (= estimatedgroundvelocityisavailable3 estimatedgroundvelocityisavailable4)))))) (and (= d24 d22) (and (= d14 d12) (and (= t24 t22) (and (= t14 t12) (and (= estimatedgroundvelocity4 estimatedgroundvelocity2) (= estimatedgroundvelocityisavailable5 estimatedgroundvelocityisavailable3))))))) (and (and (and (= o (timefromlastclicktolastupdate prevtime thistime)) (= o (bvsub thistime prevtime))) (and (= (mk_t__ref result1) t18) (= t12 o))) (and (and (and (= o1 (timesincelastupdate currtime thistime)) (= o1 (bvsub currtime thistime))) (and (= (mk_t__ref result2) t27) (= t22 o1))) (and (and (and (= o2 (distancefromlastclicktolastupdate prevcount thiscount)) (= o2 (bvmul #x00CF (bvsub thiscount prevcount)))) (and (= (mk_t__ref result3) d17) (= d12 o2))) (and (and (and (= o3 (distancesincelastupdate prevtime prevcount currtime thistime thiscount)) (= o3 (bvudiv (bvmul (distancefromlastclicktolastupdate prevcount thiscount) (timesincelastupdate currtime thistime)) (timefromlastclicktolastupdate prevtime thistime)))) (and (= (mk_t__ref result4) d27) (= d22 o3))) (and (and (= estimatedgroundvelocityisavailable2 result5) (= estimatedgroundvelocityisavailable3 (distinct 1 0))) (and (= (mk_t__ref result6) estimatedgroundvelocity8) (= estimatedgroundvelocity2 (bvudiv (bvmul (bvadd d12 d22) #x0E10) (bvadd t12 t22)))))))))))))
(assert (= d25 d23))
(assert (= d15 d13))
(assert (= t25 t23))
(assert (= t15 t17))
(assert (= estimatedgroundvelocity5 estimatedgroundvelocity7))
(assert (= estimatedgroundvelocityisavailable6 (mk_bool__ref estimatedgroundvelocityisavailable4)))
(assert (= d26 d24))
(assert (= d16 d14))
(assert (= t26 t24))
(assert (= t16 t14))
(assert (= estimatedgroundvelocity6 estimatedgroundvelocity4))
(assert (= estimatedgroundvelocityisavailable7 estimatedgroundvelocityisavailable5))
(assert (= (bool__content estimatedgroundvelocityisavailable6) true))
(assert (and (= o6 (timesincelastclickbeforelastupdate prevtime currtime thistime)) (= o6 (bvadd (timefromlastclicktolastupdate prevtime thistime) (timesincelastupdate currtime thistime)))))
(assert (and (= o4 (distancesincelastclickbeforelastupdate prevtime prevcount currtime thistime thiscount)) (= o4 (bvadd (distancefromlastclicktolastupdate prevcount thiscount) (distancesincelastupdate prevtime prevcount currtime thistime thiscount)))))
(assert (= o5 (bvmul o4 #x0E10)))
(assert (not (not (= o6 #x0000))))
(check-sat)
(exit)
