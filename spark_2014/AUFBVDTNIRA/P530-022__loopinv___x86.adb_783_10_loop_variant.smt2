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

(declare-fun nth2 ((_ BitVec 64) Int) Bool)

(declare-fun lsr2 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun asr2 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun lsl2 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_right3 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_left3 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun to_int3 ((_ BitVec 64)) Int)

(define-fun uint_in_range2 ((i Int)) Bool (and (<= 0 i)
                                          (<= i 18446744073709551615)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (bv2nat ((_ int2bv 64) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvlshr x n) (lsr2 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvashr x n) (asr2 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvshl x n) (lsl2 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_left3 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_right3 v (bv2nat n)))))

(declare-fun nth_bv2 ((_ BitVec 64) (_ BitVec 64)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (= (nth_bv2 x i) true)
  (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (nth2 x (bv2nat i)) (nth_bv2 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 64)) (i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (nth_bv2 x ((_ int2bv 64) i)) (nth2 x i)))))

(declare-fun eq_sub_bv2 ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)
  (_ BitVec 64)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i)))
  (= (eq_sub_bv2 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub2 ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth2 a j) (nth2 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (= (eq_sub2 a b (bv2nat i) (bv2nat n)) (eq_sub_bv2 a b i n))))

(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 (_ BitVec 64))))))
(declare-fun power2 ((_ BitVec 64) Int) (_ BitVec 64))

(define-fun bv_min2 ((x (_ BitVec 64))
  (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))

(define-fun bv_max2 ((x (_ BitVec 64))
  (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))

(define-fun to_int4 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort unsigned64 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 64))

(declare-fun user_eq (unsigned64 unsigned64) Bool)

(declare-fun dummy () unsigned64)

(declare-datatypes ()
((unsigned64__ref (mk_unsigned64__ref (unsigned64__content unsigned64)))))
(define-fun unsigned64__ref___projection ((a unsigned64__ref)) unsigned64 
  (unsigned64__content a))

(define-fun dynamic_invariant ((temp___expr_202 (_ BitVec 64))
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)) Bool true)

(declare-sort unsigned8 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 8))

(define-fun bool_eq1 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 8))

(declare-fun user_eq1 (unsigned8 unsigned8) Bool)

(declare-fun dummy1 () unsigned8)

(declare-datatypes ()
((unsigned8__ref (mk_unsigned8__ref (unsigned8__content unsigned8)))))
(define-fun unsigned8__ref___projection ((a unsigned8__ref)) unsigned8 
  (unsigned8__content a))

(define-fun dynamic_invariant1 ((temp___expr_220 (_ BitVec 8))
  (temp___is_init_217 Bool) (temp___skip_constant_218 Bool)
  (temp___do_toplevel_219 Bool)) Bool true)

(declare-fun to_rep (unsigned8) (_ BitVec 8))

(declare-fun of_rep ((_ BitVec 8)) unsigned8)

;; inversion_axiom
  (assert
  (forall ((x unsigned8))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (= (to_rep (of_rep x)) x) :pattern ((to_rep (of_rep x))) )))

(define-fun to_int5 ((x unsigned8)) Int (bv2nat (to_rep x)))

;; range_int_axiom
  (assert
  (forall ((x unsigned8)) (! (uint_in_range
  (to_int5 x)) :pattern ((to_int5 x)) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array (_ BitVec 64) unsigned8))))))
(declare-fun slide ((Array (_ BitVec 64) unsigned8) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) unsigned8))

;; slide_eq
  (assert
  (forall ((a (Array (_ BitVec 64) unsigned8)))
  (forall ((first (_ BitVec 64)))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array (_ BitVec 64) unsigned8)))
  (forall ((old_first (_ BitVec 64)))
  (forall ((new_first (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (= (select (slide a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array (_ BitVec 64) unsigned8) (_ BitVec 64)
  (_ BitVec 64) (Array (_ BitVec 64) unsigned8) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) unsigned8))

;; concat_def
  (assert
  (forall ((a (Array (_ BitVec 64) unsigned8))
  (b (Array (_ BitVec 64) unsigned8)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (and
     (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (bvugt i a_last)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (bvadd (bvsub i a_last) (bvsub b_first #x0000000000000001)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (unsigned8
  (_ BitVec 64)) (Array (_ BitVec 64) unsigned8))

;; singleton_def
  (assert
  (forall ((v unsigned8))
  (forall ((i (_ BitVec 64)))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array (_ BitVec 64) unsigned8))
  (a__first (_ BitVec 64)) (a__last (_ BitVec 64))
  (b (Array (_ BitVec 64) unsigned8)) (b__first (_ BitVec 64))
  (b__last (_ BitVec 64))) Bool (ite (and
                                     (ite (bvule a__first a__last)
                                     (and (bvule b__first b__last)
                                     (= (bvsub a__last a__first) (bvsub b__last b__first)))
                                     (bvugt b__first b__last))
                                     (forall ((temp___idx_132 (_ BitVec 64)))
                                     (=>
                                     (and (bvule a__first temp___idx_132)
                                     (bvule temp___idx_132 a__last))
                                     (= (to_rep (select a temp___idx_132)) 
                                     (to_rep
                                     (select b (bvadd (bvsub b__first a__first) temp___idx_132)))))))
                                true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array (_ BitVec 64) unsigned8))
  (b (Array (_ BitVec 64) unsigned8)))
  (forall ((a__first (_ BitVec 64)) (a__last (_ BitVec 64))
  (b__first (_ BitVec 64)) (b__last (_ BitVec 64)))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (bvule a__first a__last)
  (and (bvule b__first b__last)
  (= (bvsub a__last a__first) (bvsub b__last b__first)))
  (bvugt b__first b__last))
  (forall ((temp___idx_132 (_ BitVec 64)))
  (=> (and (bvule a__first temp___idx_132) (bvule temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (bvadd (bvsub b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array (_ BitVec 64) unsigned8) (_ BitVec 64)
  (_ BitVec 64) (Array (_ BitVec 64) unsigned8) (_ BitVec 64)
  (_ BitVec 64)) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array (_ BitVec 64) unsigned8))
  (b (Array (_ BitVec 64) unsigned8)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array (_ BitVec 64) unsigned8))
  (b (Array (_ BitVec 64) unsigned8)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i (_ BitVec 64)) (j (_ BitVec 64)))
     (and (bvule i a_last)
     (and (bvult j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (bvult i a_last)
     (bvult (to_rep (select a (bvadd i #x0000000000000001))) (to_rep
                                                             (select b (bvadd j #x0000000000000001))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array (_ BitVec 64) unsigned8))
  (b (Array (_ BitVec 64) unsigned8)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i (_ BitVec 64)) (j (_ BitVec 64)))
     (and (bvule i b_last)
     (and (bvult j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (bvult i b_last)
     (bvugt (to_rep (select a (bvadd j #x0000000000000001))) (to_rep
                                                             (select b (bvadd i #x0000000000000001))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun readmem8 ((_ BitVec 64)
  (Array (_ BitVec 64) unsigned8)) (_ BitVec 8))

(declare-fun readmem8__function_guard ((_ BitVec 8) (_ BitVec 64)
  (Array (_ BitVec 64) unsigned8)) Bool)

;; readmem8__post_axiom
  (assert
  (forall ((addr (_ BitVec 64)))
  (forall ((x86__memory (Array (_ BitVec 64) unsigned8)))
  (! (=> (dynamic_invariant addr true true true)
     (let ((result (readmem8 addr x86__memory)))
     (=> (readmem8__function_guard result addr x86__memory)
     (and (= result (to_rep (select x86__memory addr))) (dynamic_invariant1
     result true false true))))) :pattern ((readmem8 addr x86__memory)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun rcx () (_ BitVec 64))

(declare-fun memory () (Array (_ BitVec 64) unsigned8))

(declare-fun o () (_ BitVec 8))

(declare-fun o1 () (_ BitVec 8))

(declare-fun zeroflag () Bool)

(declare-fun carryflag () Bool)

(declare-fun rcx1 () (_ BitVec 64))

(declare-fun rsi () (_ BitVec 64))

(declare-fun rdi () (_ BitVec 64))

(declare-fun val1 () (_ BitVec 8))

(declare-fun val2 () (_ BitVec 8))

(declare-fun temp___621 () (_ BitVec 64))

(declare-fun result () (_ BitVec 64))

(declare-fun temp___6211 () (_ BitVec 64))

(declare-fun result1 () (_ BitVec 8))

(declare-fun val11 () (_ BitVec 8))

(declare-fun result2 () (_ BitVec 8))

(declare-fun val21 () (_ BitVec 8))

(declare-fun result3 () Bool)

(declare-fun zeroflag1 () Bool)

(declare-fun result4 () Bool)

(declare-fun carryflag1 () Bool)

(declare-fun result5 () (_ BitVec 64))

(declare-fun rcx2 () (_ BitVec 64))

(declare-fun result6 () (_ BitVec 64))

(declare-fun rsi1 () (_ BitVec 64))

(declare-fun result7 () (_ BitVec 64))

(declare-fun rdi1 () (_ BitVec 64))

;; H
  (assert (bvugt rcx ((_ int2bv 64) 0)))

;; H
  (assert (bvugt rcx1 ((_ int2bv 64) 0)))

;; H
  (assert (= result temp___621))

;; H
  (assert (= temp___6211 rcx1))

;; H
  (assert
  (and
  (and (= o (readmem8 rsi memory)) (readmem8__function_guard o rsi memory))
  (= o (to_rep (select memory rsi)))))

;; H
  (assert (= result1 val1))

;; H
  (assert (= val11 o))

;; H
  (assert
  (and
  (and (= o1 (readmem8 rdi memory)) (readmem8__function_guard o1 rdi memory))
  (= o1 (to_rep (select memory rdi)))))

;; H
  (assert (= result2 val2))

;; H
  (assert (= val21 o1))

;; H
  (assert (= result3 zeroflag))

;; H
  (assert
  (= zeroflag1 (ite (= (bvsub val11 val21) ((_ int2bv 8) 0)) true false)))

;; H
  (assert (= result4 carryflag))

;; H
  (assert
  (= carryflag1 (ite (bvugt (bvadd ((_ zero_extend 8) val11) ((_ zero_extend 8) 
                val21)) ((_ zero_extend 8) (bvadd val11 val21))) true false)))

;; H
  (assert (= result5 rcx1))

;; H
  (assert (= rcx2 (bvsub rcx1 ((_ int2bv 64) 1))))

;; H
  (assert (not (not (not (= rcx2 ((_ int2bv 64) 0))))))

;; H
  (assert (not (not (= zeroflag1 true))))

;; H
  (assert (= result6 rsi))

;; H
  (assert (= rsi1 (bvadd rsi ((_ int2bv 64) 1))))

;; H
  (assert (= result7 rdi))

;; H
  (assert (= rdi1 (bvadd rdi ((_ int2bv 64) 1))))

;; H
  (assert (bvugt rcx2 ((_ int2bv 64) 0)))

(assert
;; WP_parameter_def
 ;; File "x86.ads", line 731, characters 0-0
  (not (bvult rcx2 temp___6211)))
(check-sat)
