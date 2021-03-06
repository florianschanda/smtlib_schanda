(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTNIRA)
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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-const m Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const n Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const q Int)
(declare-const r Int)
(declare-const temp___155 Int)
(declare-const temp___154 Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const result Int)
(declare-const q1 Int)
(declare-const result1 Int)
(declare-const r1 Int)
(declare-const q2 Int)
(declare-const r2 Int)
(declare-const result2 Int)
(declare-const q3 Int)
(declare-const result3 Int)
(declare-const r3 Int)
(declare-const q4 Int)
(declare-const r4 Int)
(declare-const q5 Int)
(declare-const r5 Int)
(declare-const q6 Int)
(declare-const r6 Int)
(declare-const q7 Int)
(declare-const r7 Int)
(declare-const q8 Int)
(declare-const r8 Int)
(declare-const q9 Int)
(declare-const r9 Int)
(define-fun r10 () int__ref (mk_int__ref r6))
(define-fun q10 () int__ref (mk_int__ref q6))
(assert (in_range1 m))
(assert (in_range1 n))
(assert (=> (<= (- 2147483648) 2147483647) (in_range1 q)))
(assert (=> (<= (- 2147483648) 2147483647) (in_range1 r)))
(assert (and (<= 0 m) (< 0 n)))
(assert (= (mk_int__ref result) (mk_int__ref q)))
(assert (= q1 0))
(assert (= (mk_int__ref result1) (mk_int__ref r)))
(assert (= r1 m))
(assert (=> (<= n r1) (= temp___155 r1)))
(assert (=> (<= n r1) (= temp___154 q1)))
(assert (=> (<= n r1) (and (and (<= q2 (- m r2)) (= m (+ (* q2 n) r2))) (<= 0 r2))))
(assert (=> (<= n r1) (and (and (=> (<= (- 2147483648) 2147483647) (in_range1 q2)) (=> (<= (- 2147483648) 2147483647) (in_range1 r2))) (<= n r2))))
(assert (=> (<= n r1) (and (= o (+ q2 1)) (in_range1 (+ q2 1)))))
(assert (=> (<= n r1) (= q2 result2)))
(assert (=> (<= n r1) (= q3 o)))
(assert (=> (<= n r1) (and (= o1 (- r2 n)) (in_range1 (- r2 n)))))
(assert (=> (<= n r1) (= r2 result3)))
(assert (=> (<= n r1) (= r3 o1)))
(assert (=> (<= n r1) (not (<= n r3))))
(assert (=> (<= n r1) (= r3 r4)))
(assert (=> (<= n r1) (= q3 q4)))
(assert (=> (<= n r1) (= r5 r3)))
(assert (=> (<= n r1) (= q5 q3)))
(assert (=> (<= n r1) (= r10 (mk_int__ref r4))))
(assert (=> (<= n r1) (= q10 (mk_int__ref q4))))
(assert (=> (<= n r1) (= r7 r5)))
(assert (=> (<= n r1) (= q7 q5)))
(assert (=> (not (<= n r1)) (= r1 r6)))
(assert (=> (not (<= n r1)) (= q1 q6)))
(assert (=> (not (<= n r1)) (= r7 r1)))
(assert (=> (not (<= n r1)) (= q7 q1)))
(assert (= (mk_int__ref r8) r10))
(assert (= (mk_int__ref q8) q10))
(assert (= r9 r7))
(assert (= q9 q7))
(assert (not (in_range1 (* q8 n))))
(check-sat)
(exit)
