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

(declare-sort modular 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 64))

(declare-fun user_eq (modular modular) Bool)

(declare-fun dummy () modular)

(declare-datatypes ()
((modular__ref (mk_modular__ref (modular__content modular)))))
(define-fun modular__ref_8__projection ((a modular__ref)) modular (modular__content
                                                                  a))

(define-fun dynamic_invariant ((temp___expr_793 (_ BitVec 64))
  (temp___is_init_790 Bool) (temp___skip_constant_791 Bool)
  (temp___do_toplevel_792 Bool)) Bool true)

(declare-sort mask_size 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 64)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (mask_size mask_size) Bool)

(declare-fun dummy1 () mask_size)

(declare-datatypes ()
((mask_size__ref (mk_mask_size__ref (mask_size__content mask_size)))))
(define-fun mask_size__ref_7__projection ((a mask_size__ref)) mask_size 
  (mask_size__content a))

(define-fun dynamic_invariant1 ((temp___expr_805 Int)
  (temp___is_init_802 Bool) (temp___skip_constant_803 Bool)
  (temp___do_toplevel_804 Bool)) Bool (=>
                                      (or (= temp___is_init_802 true)
                                      (<= 1 64)) (in_range1 temp___expr_805)))

(declare-fun axiom__ (tuple0) Bool)

(declare-fun axiom____function_guard (Bool tuple0) Bool)

;; axiom____post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (axiom__ us_void_param)))
     (=> (axiom____function_guard result us_void_param)
     (=> (= result true)
     (forall ((v (_ BitVec 64)))
     (=>
     (and (bvule ((_ int2bv 64) 0) v)
     (bvule v ((_ int2bv 64) 18446744073709551615)))
     (forall ((n Int))
     (=> (and (<= 0 n) (<= n 63))
     (=>
     (= (bvand v (ite (< n 18446744073709551616)
                 (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) n))
                 ((_ int2bv 64) 0))) ((_ int2bv 64) 0))
     (= (bvand (bvadd v (ite (< n 18446744073709551616)
                        (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) n))
                        ((_ int2bv 64) 0))) (ite (< n 18446744073709551616)
                                            (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) n))
                                            ((_ int2bv 64) 0))) (ite (< n 18446744073709551616)
                                                                (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) n))
                                                                ((_ int2bv 64) 0))))))))))) :pattern (
  (axiom__ us_void_param)) )))

(declare-fun amount () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes ()
((t684s__ref (mk_t684s__ref (t684s__content integer)))))
(define-fun t684s__ref___projection ((a t684s__ref)) integer (t684s__content
                                                             a))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(declare-fun result__ () (_ BitVec 64))

(declare-fun i () Int)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result () (_ BitVec 64))

(declare-fun temp___1443 () (_ BitVec 64))

(declare-fun temp___1442 () Int)

(declare-fun o () (_ BitVec 64))

(declare-fun o1 () (_ BitVec 64))

(declare-fun result () (_ BitVec 64))

(declare-fun result__1 () (_ BitVec 64))

(declare-fun result1 () Int)

(declare-fun i1 () Int)

(declare-fun result2 () (_ BitVec 64))

(declare-fun result__2 () (_ BitVec 64))

(declare-fun result__3 () (_ BitVec 64))

(declare-fun i2 () Int)

(declare-fun result__4 () (_ BitVec 64))

(declare-fun i3 () Int)

(declare-fun result__5 () (_ BitVec 64))

(declare-fun i4 () Int)

(declare-fun result__6 () (_ BitVec 64))

(declare-fun i5 () Int)

(declare-fun result__7 () (_ BitVec 64))

(declare-fun i6 () Int)

(declare-fun result3 () (_ BitVec 64))

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result1 () (_ BitVec 64))

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result2 () (_ BitVec 64))

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result3 () (_ BitVec 64))

(declare-fun result__8 () (_ BitVec 64))

(declare-fun i7 () Int)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result4 () (_ BitVec 64))

(declare-fun result__9 () (_ BitVec 64))

(declare-fun i8 () Int)

(declare-fun bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result5 () (_ BitVec 64))

(declare-fun result4 () (_ BitVec 64))

;; H
  (assert (axiom____function_guard (axiom__ Tuple0) Tuple0))

;; H
  (assert (in_range1 amount))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref result__)))

;; H
  (assert (= result__1 ((_ int2bv 64) 0)))

;; H
  (assert (= (axiom__ Tuple0) true))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref i)))

;; H
  (assert (= i1 1))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= temp___1443 result__1)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= temp___1442 i1)))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 amount))
  (=> (< (- i1 1) 18446744073709551616)
  (= o (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) (- i1 1)))))))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 amount))
  (=> (not (< (- i1 1) 18446744073709551616)) (= o ((_ int2bv 64) 0)))))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= o1 (bvadd result__1 o))))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= result__1 result2)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= result__2 o1)))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 amount))
  (= (bvand result__3 (let ((temp___1446 (- i2 1)))
                      (ite (< temp___1446 18446744073709551616)
                      (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) temp___1446))
                      ((_ int2bv 64) 0)))) (let ((temp___1447 (- i2 1)))
                                           (ite (< temp___1447 18446744073709551616)
                                           (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) temp___1447))
                                           ((_ int2bv 64) 0))))))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 amount))
  (and (=> (<= 1 amount) (dynamic_property 1 amount i2))
  (and (<= 1 i2) (<= i2 amount)))))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= i2 amount)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= i2 i3)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= result__3 result__4)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= i4 i2)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= result__5 result__3)))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 amount)) (= (mk_int__ref i5) (mk_int__ref i3))))

;; H
  (assert
  (=> (and (<= 1 i1) (<= i1 amount))
  (= (mk_t__ref result__6) (mk_t__ref result__4))))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= i6 i4)))

;; H
  (assert (=> (and (<= 1 i1) (<= i1 amount)) (= result__7 result__5)))

;; H
  (assert (=> (not (and (<= 1 i1) (<= i1 amount))) (= i1 i5)))

;; H
  (assert (=> (not (and (<= 1 i1) (<= i1 amount))) (= result__1 result__6)))

;; H
  (assert (=> (not (and (<= 1 i1) (<= i1 amount))) (= i6 i1)))

;; H
  (assert (=> (not (and (<= 1 i1) (<= i1 amount))) (= result__7 result__1)))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result1 
  bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result2))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result3 
  bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result1))

;; H
  (assert
  (= result3 bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result1 
  result__6))

;; H
  (assert
  (= (mk_t__ref
     bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result4) 
  (mk_t__ref
  bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result2)))

;; H
  (assert (= i7 i5))

;; H
  (assert (= result__8 result__6))

;; H
  (assert
  (= bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result5 
  bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result3))

;; H
  (assert (= i8 i6))

;; H
  (assert (= result__9 result__7))

;; H
  (assert
  (= result4 bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result4))

(declare-fun i9 () Int)

;; H
  (assert (<= 1 i9))

;; H
  (assert (<= i9 amount))

(assert
;; WP_parameter_def
 ;; File "bits_manipulation.ads", line 3, characters 0-0
  (not
  (= (bvand bits_manipulation_unsigned__unsigned_64__functions__proofs__make_mask__lemma2__ones__result4 
  (let ((temp___1454 (- i9 1)))
  (ite (< temp___1454 18446744073709551616)
  (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) temp___1454)) ((_ int2bv 64) 0)))) 
  (let ((temp___1455 (- i9 1)))
  (ite (< temp___1455 18446744073709551616)
  (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) temp___1455)) ((_ int2bv 64) 0))))))
(check-sat)
