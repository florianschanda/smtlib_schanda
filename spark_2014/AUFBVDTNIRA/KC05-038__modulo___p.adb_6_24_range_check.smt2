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

(declare-fun nth ((_ BitVec 8) Int) Bool)

(declare-fun lsr ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun asr ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun lsl ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun rotate_right1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun rotate_left1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun pow2 (Int) Int)

(declare-fun to_int1 ((_ BitVec 8)) Int)

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 255)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 256)) (= (bv2nat ((_ int2bv 8) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvlshr x n) (lsr x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvashr x n) (asr x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvshl x n) (lsl x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvor (bvshl v (bvurem n (_ bv8 8))) (bvlshr v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) 
  (rotate_left1 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvor (bvlshr v (bvurem n (_ bv8 8))) (bvshl v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) 
  (rotate_right1 v (bv2nat n)))))

(declare-fun nth_bv ((_ BitVec 8) (_ BitVec 8)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
  (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
  (= (nth x (bv2nat i)) (nth_bv x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 8)) (i Int))
  (=> (and (<= 0 i) (< i 256)) (= (nth_bv x ((_ int2bv 8) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8)
  (_ BitVec 8)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8))
  (n (_ BitVec 8)))
  (let ((mask (bvshl (bvsub (bvshl #x01 n) #x01) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8))
  (n (_ BitVec 8)))
  (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 8))))))
(declare-fun power ((_ BitVec 8) Int) (_ BitVec 8))

(define-fun bv_min ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

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
                                     (in_range temp___expr_15)))

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort m 0)

(define-fun in_range1 ((x1 (_ BitVec 8))) Bool (and
                                               (bvule ((_ int2bv 8) 0) x1)
                                               (bvule x1 ((_ int2bv 8) 15))))

(define-fun in_range_int ((x1 Int)) Bool (and (<= 0 x1) (<= x1 15)))

(define-fun bool_eq1 ((x1 (_ BitVec 8))
  (y1 (_ BitVec 8))) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 8))

(declare-fun user_eq1 (m m) Bool)

(declare-fun dummy1 () m)

(declare-datatypes () ((m__ref (mk_m__ref (m__content m)))))
(define-fun m__ref___projection ((a m__ref)) m (m__content a))

(define-fun dynamic_invariant1 ((temp___expr_135 (_ BitVec 8))
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 15)))
                                      (in_range1 temp___expr_135)))

(declare-sort n 0)

(define-fun in_range2 ((x1 Int)) Bool (and (<= 0 x1) (<= x1 32)))

(define-fun bool_eq2 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (n n) Bool)

(declare-fun dummy2 () n)

(declare-datatypes () ((n__ref (mk_n__ref (n__content n)))))
(define-fun n__ref___projection ((a n__ref)) n (n__content a))

(define-fun dynamic_invariant2 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 32)) (in_range2 temp___expr_141)))

(declare-sort s 0)

(define-fun in_range3 ((x1 (_ BitVec 8))) Bool (and
                                               (bvule ((_ int2bv 8) 0) x1)
                                               (bvule x1 ((_ int2bv 8) 15))))

(define-fun in_range_int1 ((x1 Int)) Bool (and (<= 0 x1) (<= x1 15)))

(define-fun bool_eq3 ((x1 (_ BitVec 8))
  (y1 (_ BitVec 8))) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 8))

(declare-fun user_eq3 (s s) Bool)

(declare-fun dummy3 () s)

(declare-datatypes () ((s__ref (mk_s__ref (s__content s)))))
(define-fun s__ref___projection ((a s__ref)) s (s__content a))

(define-fun dynamic_invariant3 ((temp___expr_147 (_ BitVec 8))
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 15)))
                                      (in_range3 temp___expr_147)))

(declare-fun u () (_ BitVec 8))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun v () (_ BitVec 8))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun w () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun xs () (_ BitVec 8))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun a () (_ BitVec 8))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun b () (_ BitVec 8))

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun zs () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

;; u__def_axiom
  (assert (= u ((_ int2bv 8) x)))

;; v__def_axiom
  (assert (= v ((_ int2bv 8) y)))

;; w__def_axiom
  (assert (= w (bv2nat (bvurem (bvsub u v) ((_ int2bv 8) 16)))))

;; xs__def_axiom
  (assert (= xs (bvurem (bvsub u v) ((_ int2bv 8) 16))))

;; a__def_axiom
  (assert (= a u))

;; b__def_axiom
  (assert (= b v))

;; zs__def_axiom
  (assert (= zs (bv2nat (bvurem (bvsub a b) ((_ int2bv 8) 16)))))

;; H
  (assert (in_range x))

;; H
  (assert (in_range y))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range_int x)))
(check-sat)
