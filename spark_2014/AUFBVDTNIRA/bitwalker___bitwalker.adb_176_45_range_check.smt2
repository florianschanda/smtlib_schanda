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

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-sort unsigned_64 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq2 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 64))

(declare-fun user_eq2 (unsigned_64 unsigned_64) Bool)

(declare-fun dummy2 () unsigned_64)

(declare-datatypes ()
((unsigned_64__ref (mk_unsigned_64__ref (unsigned_64__content unsigned_64)))))
(define-fun unsigned_64__ref___projection ((a unsigned_64__ref)) unsigned_64 
  (unsigned_64__content a))

(define-fun dynamic_invariant1 ((temp___expr_184 (_ BitVec 64))
  (temp___is_init_181 Bool) (temp___skip_constant_182 Bool)
  (temp___do_toplevel_183 Bool)) Bool true)

(define-fun eq_sub__logic ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int)
  (n Int)) Bool (ite (eq_sub a b i n) true false))

(define-fun eq_sub_bv__logic ((a (_ BitVec 64)) (b (_ BitVec 64))
  (i (_ BitVec 64))
  (n (_ BitVec 64))) Bool (ite (eq_sub_bv a b i n) true false))

(declare-fun maxvalue (Int) (_ BitVec 64))

(declare-fun maxvalue__function_guard ((_ BitVec 64) Int) Bool)

(define-fun dynamic_invariant2 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

;; maxvalue__post_axiom
  (assert
  (forall ((len Int))
  (! (=> (dynamic_invariant2 len true true true)
     (let ((result (maxvalue len)))
     (=> (maxvalue__function_guard result len) (dynamic_invariant1 result
     true false true)))) :pattern ((maxvalue len)) )))

;; maxvalue__def_axiom
  (assert
  (forall ((len Int))
  (! (=>
     (and (dynamic_invariant2 len true true true) (maxvalue__function_guard
     (maxvalue len) len))
     (= (maxvalue len) (bvshl ((_ int2bv 64) 1) ((_ int2bv 64) len)))) :pattern (
  (maxvalue len)) )))

(declare-fun x () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun len () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun len_bv () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

;; len_bv__def_axiom
  (assert (= len_bv ((_ int2bv 64) len)))

(declare-fun o () Int)

(declare-fun bitwalker__lemmafunction2__len_bv__assume () (_ BitVec 64))

(declare-fun o1 () Int)

;; H
  (assert (in_range1 len))

;; H
  (assert (maxvalue__function_guard (maxvalue len) len))

;; H
  (assert (and (and (<= 0 len) (<= len 63)) (bvult x (maxvalue len))))

;; H
  (assert (and (= o len) (uint_in_range len)))

;; H
  (assert (= bitwalker__lemmafunction2__len_bv__assume ((_ int2bv 64) o)))

;; H
  (assert (= bitwalker__lemmafunction2__len_bv__assume len_bv))

;; H
  (assert (maxvalue__function_guard (maxvalue len) len))

;; H
  (assert (= (bvand x (bvsub (maxvalue len) ((_ int2bv 64) 1))) x))

;; H
  (assert
  (= (eq_sub_bv__logic x ((_ int2bv 64) 0) len_bv
     (bvsub ((_ int2bv 64) 64) len_bv)) true))

;; H
  (assert
  (and (= o1 (bv2nat (bvsub ((_ int2bv 64) 64) len_bv))) (in_range2
  (bv2nat (bvsub ((_ int2bv 64) 64) len_bv)))))

(assert
;; WP_parameter_def
 ;; File "bitspec.ads", line 16, characters 0-0
  (not (in_range2 (bv2nat len_bv))))
(check-sat)
