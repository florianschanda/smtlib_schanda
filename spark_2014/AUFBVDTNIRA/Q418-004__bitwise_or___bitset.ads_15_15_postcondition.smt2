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

(declare-sort word64 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 64))

(declare-fun user_eq (word64 word64) Bool)

(declare-fun dummy () word64)

(declare-datatypes ()
((word64__ref (mk_word64__ref (word64__content word64)))))
(define-fun word64__ref___projection ((a word64__ref)) word64 (word64__content
                                                              a))

(define-fun dynamic_invariant ((temp___expr_135 (_ BitVec 64))
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool true)

(declare-sort word64_pos 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 64))

(define-fun in_range1 ((x (_ BitVec 64))) Bool (and
                                               (bvule ((_ int2bv 64) 0) x)
                                               (bvule x ((_ int2bv 64) 63))))

(define-fun in_range_int ((x Int)) Bool (and (<= 0 x) (<= x 63)))

(define-fun bool_eq1 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 64))

(declare-fun user_eq1 (word64_pos word64_pos) Bool)

(declare-fun dummy1 () word64_pos)

(declare-datatypes ()
((word64_pos__ref (mk_word64_pos__ref (word64_pos__content word64_pos)))))
(define-fun word64_pos__ref___projection ((a word64_pos__ref)) word64_pos 
  (word64_pos__content a))

(define-fun dynamic_invariant1 ((temp___expr_141 (_ BitVec 64))
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (bvule ((_ int2bv 64) 0) ((_ int2bv 64) 63)))
                                      (in_range1 temp___expr_141)))

(declare-fun value () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun pos () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun mask () (_ BitVec 64))

(declare-fun bitset__bit_test__result () Bool)

(declare-fun o () (_ BitVec 64))

(declare-fun result () (_ BitVec 64))

(declare-fun mask1 () (_ BitVec 64))

(declare-fun result1 () Bool)

(declare-fun bitset__bit_test__result1 () Bool)

(declare-fun bitset__bit_test__result2 () Bool)

(declare-fun bitset__bit_test__result3 () Bool)

(declare-fun mask2 () (_ BitVec 64))

(declare-fun bitset__bit_test__result4 () Bool)

(declare-fun mask3 () (_ BitVec 64))

(declare-fun bitset__bit_test__result5 () Bool)

(declare-fun result2 () Bool)

;; H
  (assert (in_range1 pos))

;; H
  (assert
  (=> (< (bv2nat pos) 18446744073709551616)
  (= o (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) (bv2nat pos))))))

;; H
  (assert
  (=> (not (< (bv2nat pos) 18446744073709551616)) (= o ((_ int2bv 64) 0))))

;; H
  (assert (= result mask))

;; H
  (assert (= mask1 o))

;; H
  (assert (= bitset__bit_test__result1 bitset__bit_test__result2))

;; H
  (assert (= bitset__bit_test__result3 bitset__bit_test__result1))

;; H
  (assert (= result1 bitset__bit_test__result))

;; H
  (assert
  (= bitset__bit_test__result1 (ite (not
                                    (= (bvand value mask1) ((_ int2bv 64) 0)))
                               true false)))

;; H
  (assert
  (= (mk_bool__ref bitset__bit_test__result4) (mk_bool__ref
                                              bitset__bit_test__result2)))

;; H
  (assert (= mask2 mask1))

;; H
  (assert (= bitset__bit_test__result5 bitset__bit_test__result3))

;; H
  (assert (= mask3 mask1))

;; H
  (assert (= result2 bitset__bit_test__result4))

;; H
  (assert (= bitset__bit_test__result4 true))

(assert
;; WP_parameter_def
 ;; File "bitset.ads", line 10, characters 0-0
  (not
  (not
  (= (bvand value (let ((temp___152 (bv2nat pos)))
                  (ite (< temp___152 18446744073709551616)
                  (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) temp___152))
                  ((_ int2bv 64) 0)))) ((_ int2bv 64) 0)))))
(check-sat)
