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

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

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

(declare-fun nth1 ((_ BitVec 16) Int) Bool)

(declare-fun lsr1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun asr1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun lsl1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_right2 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_left2 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun to_int2 ((_ BitVec 16)) Int)

(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 65535)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 65536)) (= (bv2nat ((_ int2bv 16) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvlshr x n) (lsr1 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvashr x n) (asr1 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvshl x n) (lsl1 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvshl v (bvurem n (_ bv16 16))) (bvlshr v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_left2 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvlshr v (bvurem n (_ bv16 16))) (bvshl v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_right2 v (bv2nat n)))))

(declare-fun nth_bv1 ((_ BitVec 16) (_ BitVec 16)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
  (= (= (nth_bv1 x i) true) (not (= (bvand (bvlshr x i) #x0001) #x0000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
  (= (nth1 x (bv2nat i)) (nth_bv1 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 16)) (i Int))
  (=> (and (<= 0 i) (< i 65536))
  (= (nth_bv1 x ((_ int2bv 16) i)) (nth1 x i)))))

(declare-fun eq_sub_bv1 ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)
  (_ BitVec 16)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (let ((mask (bvshl (bvsub (bvshl #x0001 n) #x0001) i)))
  (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub1 ((a (_ BitVec 16)) (b (_ BitVec 16)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 16))))))
(declare-fun power1 ((_ BitVec 16) Int) (_ BitVec 16))

(define-fun bv_min1 ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) x y))

(define-fun bv_max1 ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) y x))

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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(declare-sort bits_3 0)

(define-fun in_range2 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 7))))

(define-fun in_range_int ((x Int)) Bool (and (<= 0 x) (<= x 7)))

(define-fun bool_eq2 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 8))

(declare-fun user_eq2 (bits_3 bits_3) Bool)

(declare-fun dummy2 () bits_3)

(declare-datatypes ()
((bits_3__ref (mk_bits_3__ref (bits_3__content bits_3)))))
(define-fun bits_3__ref___projection ((a bits_3__ref)) bits_3 (bits_3__content
                                                              a))

(declare-fun to_rep (bits_3) (_ BitVec 8))

(declare-fun of_rep ((_ BitVec 8)) bits_3)

;; inversion_axiom
  (assert
  (forall ((x bits_3)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x bits_3)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (let ((y (bvurem x ((_ int2bv 8) 8))))
     (=> (in_range2 y) (= (to_rep (of_rep x)) y))) :pattern ((to_rep
                                                             (of_rep x))) )))

(define-fun to_int3 ((x bits_3)) Int (bv2nat (to_rep x)))

;; range_int_axiom
  (assert
  (forall ((x bits_3)) (! (in_range_int
  (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-sort bits_7 0)

(define-fun in_range3 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 127))))

(define-fun in_range_int1 ((x Int)) Bool (and (<= 0 x) (<= x 127)))

(define-fun bool_eq3 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 8))

(declare-fun user_eq3 (bits_7 bits_7) Bool)

(declare-fun dummy3 () bits_7)

(declare-datatypes ()
((bits_7__ref (mk_bits_7__ref (bits_7__content bits_7)))))
(define-fun bits_7__ref___projection ((a bits_7__ref)) bits_7 (bits_7__content
                                                              a))

(declare-fun to_rep1 (bits_7) (_ BitVec 8))

(declare-fun of_rep1 ((_ BitVec 8)) bits_7)

;; inversion_axiom
  (assert
  (forall ((x bits_7))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x bits_7)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (let ((y (bvurem x ((_ int2bv 8) 128))))
     (=> (in_range3 y) (= (to_rep1 (of_rep1 x)) y))) :pattern ((to_rep1
                                                               (of_rep1 x))) )))

(define-fun to_int4 ((x bits_7)) Int (bv2nat (to_rep1 x)))

;; range_int_axiom
  (assert
  (forall ((x bits_7)) (! (in_range_int1
  (to_int4 x)) :pattern ((to_int4 x)) )))

(declare-sort bits_10 0)

(define-fun in_range4 ((x (_ BitVec 16))) Bool (and
                                               (bvule ((_ int2bv 16) 0) x)
                                               (bvule x ((_ int2bv 16) 1023))))

(define-fun in_range_int2 ((x Int)) Bool (and (<= 0 x) (<= x 1023)))

(define-fun bool_eq4 ((x (_ BitVec 16))
  (y (_ BitVec 16))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 16)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 16))

(declare-fun user_eq4 (bits_10 bits_10) Bool)

(declare-fun dummy4 () bits_10)

(declare-datatypes ()
((bits_10__ref (mk_bits_10__ref (bits_10__content bits_10)))))
(define-fun bits_10__ref___projection ((a bits_10__ref)) bits_10 (bits_10__content
                                                                 a))

(declare-fun to_rep2 (bits_10) (_ BitVec 16))

(declare-fun of_rep2 ((_ BitVec 16)) bits_10)

;; inversion_axiom
  (assert
  (forall ((x bits_10))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x bits_10)) (! (in_range4 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 16)))
  (! (let ((y (bvurem x ((_ int2bv 16) 1024))))
     (=> (in_range4 y) (= (to_rep2 (of_rep2 x)) y))) :pattern ((to_rep2
                                                               (of_rep2 x))) )))

(define-fun to_int5 ((x bits_10)) Int (bv2nat (to_rep2 x)))

;; range_int_axiom
  (assert
  (forall ((x bits_10)) (! (in_range_int2
  (to_int5 x)) :pattern ((to_int5 x)) )))

(declare-sort bits_1 0)

(define-fun in_range5 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 1))))

(define-fun in_range_int3 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq5 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) (_ BitVec 8))

(declare-fun user_eq5 (bits_1 bits_1) Bool)

(declare-fun dummy5 () bits_1)

(declare-datatypes ()
((bits_1__ref (mk_bits_1__ref (bits_1__content bits_1)))))
(define-fun bits_1__ref___projection ((a bits_1__ref)) bits_1 (bits_1__content
                                                              a))

(declare-fun to_rep3 (bits_1) (_ BitVec 8))

(declare-fun of_rep3 ((_ BitVec 8)) bits_1)

;; inversion_axiom
  (assert
  (forall ((x bits_1))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x bits_1)) (! (in_range5 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (let ((y (bvurem x ((_ int2bv 8) 2))))
     (=> (in_range5 y) (= (to_rep3 (of_rep3 x)) y))) :pattern ((to_rep3
                                                               (of_rep3 x))) )))

(define-fun to_int6 ((x bits_1)) Int (bv2nat (to_rep3 x)))

;; range_int_axiom
  (assert
  (forall ((x bits_1)) (! (in_range_int3
  (to_int6 x)) :pattern ((to_int6 x)) )))

(declare-sort bits_2 0)

(define-fun in_range6 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 3))))

(define-fun in_range_int4 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq6 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) (_ BitVec 8))

(declare-fun user_eq6 (bits_2 bits_2) Bool)

(declare-fun dummy6 () bits_2)

(declare-datatypes ()
((bits_2__ref (mk_bits_2__ref (bits_2__content bits_2)))))
(define-fun bits_2__ref___projection ((a bits_2__ref)) bits_2 (bits_2__content
                                                              a))

(declare-fun to_rep4 (bits_2) (_ BitVec 8))

(declare-fun of_rep4 ((_ BitVec 8)) bits_2)

;; inversion_axiom
  (assert
  (forall ((x bits_2))
  (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)) )))

;; range_axiom
  (assert
  (forall ((x bits_2)) (! (in_range6 (to_rep4 x)) :pattern ((to_rep4 x)) )))

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (let ((y (bvurem x ((_ int2bv 8) 4))))
     (=> (in_range6 y) (= (to_rep4 (of_rep4 x)) y))) :pattern ((to_rep4
                                                               (of_rep4 x))) )))

(define-fun to_int7 ((x bits_2)) Int (bv2nat (to_rep4 x)))

;; range_int_axiom
  (assert
  (forall ((x bits_2)) (! (in_range_int4
  (to_int7 x)) :pattern ((to_int7 x)) )))

(declare-sort bits_8 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 8))

(define-fun bool_eq7 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) (_ BitVec 8))

(declare-fun user_eq7 (bits_8 bits_8) Bool)

(declare-fun dummy7 () bits_8)

(declare-datatypes ()
((bits_8__ref (mk_bits_8__ref (bits_8__content bits_8)))))
(define-fun bits_8__ref___projection ((a bits_8__ref)) bits_8 (bits_8__content
                                                              a))

(declare-fun to_rep5 (bits_8) (_ BitVec 8))

(declare-fun of_rep5 ((_ BitVec 8)) bits_8)

;; inversion_axiom
  (assert
  (forall ((x bits_8))
  (! (= (of_rep5 (to_rep5 x)) x) :pattern ((to_rep5 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (= (to_rep5 (of_rep5 x)) x) :pattern ((to_rep5 (of_rep5 x))) )))

(define-fun to_int8 ((x bits_8)) Int (bv2nat (to_rep5 x)))

;; range_int_axiom
  (assert
  (forall ((x bits_8)) (! (uint_in_range
  (to_int8 x)) :pattern ((to_int8 x)) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__dw1000__register_types__tx_fctrl_type__tflen bits_7)(rec__dw1000__register_types__tx_fctrl_type__tfle bits_3)(rec__dw1000__register_types__tx_fctrl_type__r bits_3)(rec__dw1000__register_types__tx_fctrl_type__txbr bits_2)(rec__dw1000__register_types__tx_fctrl_type__tr bits_1)(rec__dw1000__register_types__tx_fctrl_type__txprf bits_2)(rec__dw1000__register_types__tx_fctrl_type__txpsr bits_2)(rec__dw1000__register_types__tx_fctrl_type__pe bits_2)(rec__dw1000__register_types__tx_fctrl_type__txboffs bits_10)(rec__dw1000__register_types__tx_fctrl_type__ifsdelay bits_8)))))
(define-fun us_split_fields_TFLEN__projection ((a us_split_fields)) bits_7 
  (rec__dw1000__register_types__tx_fctrl_type__tflen a))

(define-fun us_split_fields_TFLE__projection ((a us_split_fields)) bits_3 
  (rec__dw1000__register_types__tx_fctrl_type__tfle a))

(define-fun us_split_fields_R__projection ((a us_split_fields)) bits_3 
  (rec__dw1000__register_types__tx_fctrl_type__r a))

(define-fun us_split_fields_TXBR__projection ((a us_split_fields)) bits_2 
  (rec__dw1000__register_types__tx_fctrl_type__txbr a))

(define-fun us_split_fields_TR__projection ((a us_split_fields)) bits_1 
  (rec__dw1000__register_types__tx_fctrl_type__tr a))

(define-fun us_split_fields_TXPRF__projection ((a us_split_fields)) bits_2 
  (rec__dw1000__register_types__tx_fctrl_type__txprf a))

(define-fun us_split_fields_TXPSR__projection ((a us_split_fields)) bits_2 
  (rec__dw1000__register_types__tx_fctrl_type__txpsr a))

(define-fun us_split_fields_PE__projection ((a us_split_fields)) bits_2 
  (rec__dw1000__register_types__tx_fctrl_type__pe a))

(define-fun us_split_fields_TXBOFFS__projection ((a us_split_fields)) bits_10 
  (rec__dw1000__register_types__tx_fctrl_type__txboffs a))

(define-fun us_split_fields_IFSDELAY__projection ((a us_split_fields)) bits_8 
  (rec__dw1000__register_types__tx_fctrl_type__ifsdelay a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_6__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_6__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq8 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (and
                        (= (to_rep1
                           (rec__dw1000__register_types__tx_fctrl_type__tflen
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__dw1000__register_types__tx_fctrl_type__tflen
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__dw1000__register_types__tx_fctrl_type__tfle
                           (us_split_fields1 a))) (to_rep
                                                  (rec__dw1000__register_types__tx_fctrl_type__tfle
                                                  (us_split_fields1 b)))))
                        (= (to_rep
                           (rec__dw1000__register_types__tx_fctrl_type__r
                           (us_split_fields1 a))) (to_rep
                                                  (rec__dw1000__register_types__tx_fctrl_type__r
                                                  (us_split_fields1 b)))))
                        (= (to_rep4
                           (rec__dw1000__register_types__tx_fctrl_type__txbr
                           (us_split_fields1 a))) (to_rep4
                                                  (rec__dw1000__register_types__tx_fctrl_type__txbr
                                                  (us_split_fields1 b)))))
                        (= (to_rep3
                           (rec__dw1000__register_types__tx_fctrl_type__tr
                           (us_split_fields1 a))) (to_rep3
                                                  (rec__dw1000__register_types__tx_fctrl_type__tr
                                                  (us_split_fields1 b)))))
                        (= (to_rep4
                           (rec__dw1000__register_types__tx_fctrl_type__txprf
                           (us_split_fields1 a))) (to_rep4
                                                  (rec__dw1000__register_types__tx_fctrl_type__txprf
                                                  (us_split_fields1 b)))))
                        (= (to_rep4
                           (rec__dw1000__register_types__tx_fctrl_type__txpsr
                           (us_split_fields1 a))) (to_rep4
                                                  (rec__dw1000__register_types__tx_fctrl_type__txpsr
                                                  (us_split_fields1 b)))))
                        (= (to_rep4
                           (rec__dw1000__register_types__tx_fctrl_type__pe
                           (us_split_fields1 a))) (to_rep4
                                                  (rec__dw1000__register_types__tx_fctrl_type__pe
                                                  (us_split_fields1 b)))))
                        (= (to_rep2
                           (rec__dw1000__register_types__tx_fctrl_type__txboffs
                           (us_split_fields1 a))) (to_rep2
                                                  (rec__dw1000__register_types__tx_fctrl_type__txboffs
                                                  (us_split_fields1 b)))))
                        (= (to_rep5
                           (rec__dw1000__register_types__tx_fctrl_type__ifsdelay
                           (us_split_fields1 a))) (to_rep5
                                                  (rec__dw1000__register_types__tx_fctrl_type__ifsdelay
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq8 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun dw1000__register_types__tx_fctrl_type__tflen__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__tflen__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__tflen__position () Int)

;; dw1000__register_types__tx_fctrl_type__tflen__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__tflen__first__bit))

;; dw1000__register_types__tx_fctrl_type__tflen__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__tflen__first__bit dw1000__register_types__tx_fctrl_type__tflen__last__bit))

;; dw1000__register_types__tx_fctrl_type__tflen__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__tflen__position))

(declare-fun dw1000__register_types__tx_fctrl_type__tfle__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__tfle__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__tfle__position () Int)

;; dw1000__register_types__tx_fctrl_type__tfle__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__tfle__first__bit))

;; dw1000__register_types__tx_fctrl_type__tfle__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__tfle__first__bit dw1000__register_types__tx_fctrl_type__tfle__last__bit))

;; dw1000__register_types__tx_fctrl_type__tfle__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__tfle__position))

(declare-fun dw1000__register_types__tx_fctrl_type__r__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__r__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__r__position () Int)

;; dw1000__register_types__tx_fctrl_type__r__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__r__first__bit))

;; dw1000__register_types__tx_fctrl_type__r__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__r__first__bit dw1000__register_types__tx_fctrl_type__r__last__bit))

;; dw1000__register_types__tx_fctrl_type__r__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__r__position))

(declare-fun dw1000__register_types__tx_fctrl_type__txbr__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__txbr__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__txbr__position () Int)

;; dw1000__register_types__tx_fctrl_type__txbr__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__txbr__first__bit))

;; dw1000__register_types__tx_fctrl_type__txbr__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__txbr__first__bit dw1000__register_types__tx_fctrl_type__txbr__last__bit))

;; dw1000__register_types__tx_fctrl_type__txbr__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__txbr__position))

(declare-fun dw1000__register_types__tx_fctrl_type__tr__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__tr__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__tr__position () Int)

;; dw1000__register_types__tx_fctrl_type__tr__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__tr__first__bit))

;; dw1000__register_types__tx_fctrl_type__tr__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__tr__first__bit dw1000__register_types__tx_fctrl_type__tr__last__bit))

;; dw1000__register_types__tx_fctrl_type__tr__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__tr__position))

(declare-fun dw1000__register_types__tx_fctrl_type__txprf__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__txprf__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__txprf__position () Int)

;; dw1000__register_types__tx_fctrl_type__txprf__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__txprf__first__bit))

;; dw1000__register_types__tx_fctrl_type__txprf__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__txprf__first__bit dw1000__register_types__tx_fctrl_type__txprf__last__bit))

;; dw1000__register_types__tx_fctrl_type__txprf__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__txprf__position))

(declare-fun dw1000__register_types__tx_fctrl_type__txpsr__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__txpsr__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__txpsr__position () Int)

;; dw1000__register_types__tx_fctrl_type__txpsr__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__txpsr__first__bit))

;; dw1000__register_types__tx_fctrl_type__txpsr__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__txpsr__first__bit dw1000__register_types__tx_fctrl_type__txpsr__last__bit))

;; dw1000__register_types__tx_fctrl_type__txpsr__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__txpsr__position))

(declare-fun dw1000__register_types__tx_fctrl_type__pe__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__pe__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__pe__position () Int)

;; dw1000__register_types__tx_fctrl_type__pe__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__pe__first__bit))

;; dw1000__register_types__tx_fctrl_type__pe__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__pe__first__bit dw1000__register_types__tx_fctrl_type__pe__last__bit))

;; dw1000__register_types__tx_fctrl_type__pe__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__pe__position))

(declare-fun dw1000__register_types__tx_fctrl_type__txboffs__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__txboffs__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__txboffs__position () Int)

;; dw1000__register_types__tx_fctrl_type__txboffs__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__txboffs__first__bit))

;; dw1000__register_types__tx_fctrl_type__txboffs__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__txboffs__first__bit dw1000__register_types__tx_fctrl_type__txboffs__last__bit))

;; dw1000__register_types__tx_fctrl_type__txboffs__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__txboffs__position))

(declare-fun dw1000__register_types__tx_fctrl_type__ifsdelay__first__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__ifsdelay__last__bit () Int)

(declare-fun dw1000__register_types__tx_fctrl_type__ifsdelay__position () Int)

;; dw1000__register_types__tx_fctrl_type__ifsdelay__first__bit_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__ifsdelay__first__bit))

;; dw1000__register_types__tx_fctrl_type__ifsdelay__last__bit_axiom
  (assert
  (< dw1000__register_types__tx_fctrl_type__ifsdelay__first__bit dw1000__register_types__tx_fctrl_type__ifsdelay__last__bit))

;; dw1000__register_types__tx_fctrl_type__ifsdelay__position_axiom
  (assert (<= 0 dw1000__register_types__tx_fctrl_type__ifsdelay__position))

(declare-fun dummy8 () us_rep)

(declare-datatypes ()
((tx_fctrl_type__ref (mk_tx_fctrl_type__ref (tx_fctrl_type__content us_rep)))))
(define-fun tx_fctrl_type__ref___projection ((a tx_fctrl_type__ref)) us_rep 
  (tx_fctrl_type__content a))

(declare-datatypes ()
((register_type__ref (mk_register_type__ref (register_type__content us_rep)))))
(define-fun register_type__ref_6__projection ((a register_type__ref)) us_rep 
  (register_type__content a))

(declare-fun length () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun offset () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant2 ((temp___expr_274 (_ BitVec 8))
  (temp___is_init_271 Bool) (temp___skip_constant_272 Bool)
  (temp___do_toplevel_273 Bool)) Bool (=>
                                      (or (= temp___is_init_271 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 1)))
                                      (in_range5 temp___expr_274)))

(define-fun dynamic_invariant3 ((temp___expr_280 (_ BitVec 8))
  (temp___is_init_277 Bool) (temp___skip_constant_278 Bool)
  (temp___do_toplevel_279 Bool)) Bool (=>
                                      (or (= temp___is_init_277 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 3)))
                                      (in_range6 temp___expr_280)))

(define-fun dynamic_invariant4 ((temp___expr_286 (_ BitVec 8))
  (temp___is_init_283 Bool) (temp___skip_constant_284 Bool)
  (temp___do_toplevel_285 Bool)) Bool (=>
                                      (or (= temp___is_init_283 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 7)))
                                      (in_range2 temp___expr_286)))

(define-fun dynamic_invariant5 ((temp___expr_310 (_ BitVec 8))
  (temp___is_init_307 Bool) (temp___skip_constant_308 Bool)
  (temp___do_toplevel_309 Bool)) Bool (=>
                                      (or (= temp___is_init_307 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 127)))
                                      (in_range3 temp___expr_310)))

(define-fun dynamic_invariant6 ((temp___expr_316 (_ BitVec 8))
  (temp___is_init_313 Bool) (temp___skip_constant_314 Bool)
  (temp___do_toplevel_315 Bool)) Bool true)

(define-fun dynamic_invariant7 ((temp___expr_328 (_ BitVec 16))
  (temp___is_init_325 Bool) (temp___skip_constant_326 Bool)
  (temp___do_toplevel_327 Bool)) Bool (=>
                                      (or (= temp___is_init_325 true)
                                      (bvule ((_ int2bv 16) 0) ((_ int2bv 16) 1023)))
                                      (in_range4 temp___expr_328)))

;; H
  (assert (in_range1 length))

;; H
  (assert (in_range1 offset))

;; H
  (assert (< length 1024))

;; H
  (assert (< offset 1024))

(assert
;; WP_parameter_def
 ;; File "dw1000-driver.adb", line 451, characters 0-0
  (not (in_range (+ length offset))))
(check-sat)
