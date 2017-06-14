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

(declare-fun nth ((_ BitVec 32) Int) Bool)

(declare-fun lsr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun pow2 (Int) Int)

(declare-fun to_int1 ((_ BitVec 32)) Int)

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 4294967296)) (= (bv2nat ((_ int2bv 32) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvlshr x n) (lsr x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvashr x n) (asr x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvshl x n) (lsl x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_left1 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_right1 v (bv2nat n)))))

(declare-fun nth_bv ((_ BitVec 32) (_ BitVec 32)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (= (nth_bv x i) true)
  (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (nth x (bv2nat i)) (nth_bv x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 32)) (i Int))
  (=> (and (<= 0 i) (< i 4294967296))
  (= (nth_bv x ((_ int2bv 32) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 32))))))
(declare-fun power ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun bv_min ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))

(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort u32 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 32))

(define-fun bool_eq ((x (_ BitVec 32))
  (y (_ BitVec 32))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 32))

(declare-fun user_eq (u32 u32) Bool)

(declare-fun dummy () u32)

(declare-datatypes () ((u32__ref (mk_u32__ref (u32__content u32)))))
(define-fun u32__ref___projection ((a u32__ref)) u32 (u32__content a))

(define-fun dynamic_invariant ((temp___expr_141 (_ BitVec 32))
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool true)

(declare-sort s1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 17)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (s1 s1) Bool)

(declare-fun dummy1 () s1)

(declare-datatypes () ((s1__ref (mk_s1__ref (s1__content s1)))))
(define-fun s1__ref___projection ((a s1__ref)) s1 (s1__content a))

(define-fun dynamic_invariant1 ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= 0 17)) (in_range1 temp___expr_153)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort source 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 32))

(define-fun bool_eq2 ((x (_ BitVec 32))
  (y (_ BitVec 32))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 32))

(declare-fun user_eq2 (source source) Bool)

(declare-fun dummy2 () source)

(declare-datatypes ()
((source__ref (mk_source__ref (source__content source)))))
(define-fun source__ref___projection ((a source__ref)) source (source__content
                                                              a))

(define-fun dynamic_invariant2 ((temp___expr_159 (_ BitVec 32))
  (temp___is_init_156 Bool) (temp___skip_constant_157 Bool)
  (temp___do_toplevel_158 Bool)) Bool true)

(declare-sort target 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (target target) Bool)

(declare-fun dummy3 () target)

(declare-datatypes ()
((target__ref (mk_target__ref (target__content target)))))
(define-fun target__ref___projection ((a target__ref)) target (target__content
                                                              a))

(define-fun dynamic_invariant3 ((temp___expr_165 Int)
  (temp___is_init_162 Bool) (temp___skip_constant_163 Bool)
  (temp___do_toplevel_164 Bool)) Bool (=>
                                      (or (= temp___is_init_162 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range2 temp___expr_165)))

(declare-fun c ((_ BitVec 32)) Int)

(declare-fun c__function_guard (Int (_ BitVec 32)) Bool)

;; c__post_axiom
  (assert
  (forall ((s (_ BitVec 32)))
  (! (=> (dynamic_invariant2 s true true true)
     (let ((result (c s)))
     (=> (c__function_guard result s) (dynamic_invariant3 result true false
     true)))) :pattern ((c s)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun x () Int)

(declare-fun t () Int)

(declare-fun tmp () (_ BitVec 32))

(declare-fun o () (_ BitVec 32))

(declare-fun o1 () Int)

(declare-fun v1raw () (_ BitVec 32))

(declare-fun result () (_ BitVec 32))

(declare-fun tmp1 () (_ BitVec 32))

;; H
  (assert (=> (<= 0 17) (in_range1 x)))

;; H
  (assert (=> (<= 0 17) (in_range1 t)))

;; H
  (assert (= o v1raw))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref tmp)))

;; H
  (assert (= tmp1 o))

;; H
  (assert
  (and (and (= o1 (c tmp1)) (c__function_guard o1 tmp1)) (in_range2 o1)))

(assert
;; WP_parameter_def
 ;; File "port.ads", line 21, characters 0-0
  (not (in_range1 o1)))
(check-sat)
