(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTLIRA)
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
(declare-sort unsigned_byte 0)
(declare-fun unsigned_byteqtint (unsigned_byte) Int)
(assert (forall ((i unsigned_byte)) (and (<= 0 (unsigned_byteqtint i)) (<= (unsigned_byteqtint i) 255))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (unsigned_byte unsigned_byte) Bool)
(declare-const dummy unsigned_byte)
(declare-datatypes () ((unsigned_byte__ref (mk_unsigned_byte__ref (unsigned_byte__content unsigned_byte)))))
(define-fun unsigned_byte__ref___projection ((a unsigned_byte__ref)) unsigned_byte (unsigned_byte__content a))
(define-fun dynamic_invariant ((temp___expr_158 Int) (temp___is_init_154 Bool) (temp___skip_constant_155 Bool) (temp___do_toplevel_156 Bool) (temp___do_typ_inv_157 Bool)) Bool (=> (or (= temp___is_init_154 true) (<= 0 255)) (in_range1 temp___expr_158)))
(declare-const n Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const half_range Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort t28b 0)
(declare-fun t28bqtint (t28b) Int)
(assert (forall ((i t28b)) (and (<= 0 (t28bqtint i)) (<= (t28bqtint i) 127))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 127)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (t28b t28b) Bool)
(declare-const dummy1 t28b)
(declare-datatypes () ((t28b__ref (mk_t28b__ref (t28b__content t28b)))))
(define-fun t28b__ref___projection ((a t28b__ref)) t28b (t28b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(assert (= half_range 127))
(declare-const r Int)
(declare-const i Int)
(declare-const arithmetic__halve_b__result Int)
(declare-const temp___204 Int)
(declare-const temp___203 Int)
(declare-const r1 Int)
(declare-const result Int)
(declare-const i1 Int)
(declare-const result1 Int)
(declare-const r2 Int)
(declare-const r3 Int)
(declare-const i2 Int)
(declare-const result2 Int)
(declare-const i3 Int)
(declare-const result3 Int)
(declare-const r4 Int)
(declare-const r5 Int)
(declare-const i4 Int)
(declare-const r6 Int)
(declare-const i5 Int)
(declare-const r7 Int)
(declare-const i6 Int)
(declare-const r8 Int)
(declare-const i7 Int)
(declare-const r9 Int)
(declare-const i8 Int)
(declare-const r10 Int)
(declare-const i9 Int)
(declare-const r11 Int)
(declare-const i10 Int)
(declare-const r12 Int)
(declare-const i11 Int)
(declare-const result4 Int)
(declare-const arithmetic__halve_b__result1 Int)
(declare-const arithmetic__halve_b__result2 Int)
(declare-const arithmetic__halve_b__result3 Int)
(declare-const r13 Int)
(declare-const i12 Int)
(declare-const arithmetic__halve_b__result4 int__ref)
(declare-const r14 Int)
(declare-const i13 Int)
(declare-const arithmetic__halve_b__result5 Int)
(define-fun r15 () int__ref (mk_int__ref r11))
(define-fun i14 () int__ref (mk_int__ref i8))
(define-fun r16 () int__ref (mk_int__ref r9))
(define-fun i15 () int__ref (mk_int__ref i6))
(define-fun r17 () int__ref (mk_int__ref r7))
(define-fun r18 () int__ref (mk_int__ref r))
(declare-const result5 Int)
(assert (in_range1 n))
(assert (in_range1 half_range))
(assert (=> (<= 0 255) (in_range1 r)))
(assert (= (mk_int__ref result) (mk_int__ref i)))
(assert (= i1 0))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= temp___204 i1)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= temp___203 r)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= (mk_int__ref result1) r18)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= r2 i1)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (or (and (and (and (= i1 i6) (= r2 r7)) (and (= i7 i1) (= r8 r2))) (=> (not (= (+ r2 r2) n)) (= (+ (+ r2 r2) 1) n))) (and (not (=> (not (= (+ r2 r2) n)) (= (+ (+ r2 r2) 1) n))) (and (and (and (= i15 (mk_int__ref i4)) (= r17 (mk_int__ref r5))) (and (= i7 i5) (= r8 r6))) (and (and (< (+ (+ r3 r3) 1) n) (in_range1 r3)) (and (and (and (=> (<= 0 255) (in_range1 r3)) (=> (<= 0 127) (in_range2 i2))) (and (<= 0 i2) (<= i2 127))) (or (and (and (and (= i2 i4) (= r3 r5)) (and (= i5 i2) (= r6 r3))) (= i2 127)) (and (not (= i2 127)) (and (and (and (= i3 i4) (= r4 r5)) (and (= i5 i3) (= r6 r4))) (and (and (= i2 result2) (= i3 (+ i2 1))) (and (and (= r3 result3) (= r4 i3)) (=> (not (= (+ r4 r4) n)) (= (+ (+ r4 r4) 1) n))))))))))))))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= i14 i15)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= r16 r17)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= i9 i7)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= r10 r8)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= (mk_int__ref i10) i14)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= r15 r16)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= i11 i9)))
(assert (=> (and (<= 0 i1) (<= i1 127)) (= r12 r10)))
(assert (=> (not (and (<= 0 i1) (<= i1 127))) (= i1 i10)))
(assert (=> (not (and (<= 0 i1) (<= i1 127))) (= r15 r18)))
(assert (=> (not (and (<= 0 i1) (<= i1 127))) (= i11 i1)))
(assert (=> (not (and (<= 0 i1) (<= i1 127))) (= r12 r1)))
(assert (= arithmetic__halve_b__result1 arithmetic__halve_b__result2))
(assert (= arithmetic__halve_b__result3 arithmetic__halve_b__result1))
(assert (= result4 arithmetic__halve_b__result))
(assert (= arithmetic__halve_b__result1 r11))
(assert (= arithmetic__halve_b__result4 (mk_int__ref arithmetic__halve_b__result2)))
(assert (= i12 i10))
(assert (= r13 r11))
(assert (= arithmetic__halve_b__result5 arithmetic__halve_b__result3))
(assert (= i13 i11))
(assert (= r14 r12))
(assert (= result5 (int__content arithmetic__halve_b__result4)))
(assert (not (or (= (+ (int__content arithmetic__halve_b__result4) (int__content arithmetic__halve_b__result4)) n) (= (+ (+ (int__content arithmetic__halve_b__result4) (int__content arithmetic__halve_b__result4)) 1) n))))
(check-sat)
(exit)
