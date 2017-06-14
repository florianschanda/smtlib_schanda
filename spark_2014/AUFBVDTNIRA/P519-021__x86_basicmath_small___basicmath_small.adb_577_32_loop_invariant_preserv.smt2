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

(declare-fun nth1 ((_ BitVec 32) Int) Bool)

(declare-fun lsr1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun to_int2 ((_ BitVec 32)) Int)

(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 4294967296)) (= (bv2nat ((_ int2bv 32) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvlshr x n) (lsr1 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvashr x n) (asr1 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvshl x n) (lsl1 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_left2 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_right2 v (bv2nat n)))))

(declare-fun nth_bv1 ((_ BitVec 32) (_ BitVec 32)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (= (nth_bv1 x i) true)
  (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (nth1 x (bv2nat i)) (nth_bv1 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 32)) (i Int))
  (=> (and (<= 0 i) (< i 4294967296))
  (= (nth_bv1 x ((_ int2bv 32) i)) (nth1 x i)))))

(declare-fun eq_sub_bv1 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i)))
  (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub1 ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 32))))))
(declare-fun power1 ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun bv_min1 ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))

(define-fun bv_max1 ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))

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

(declare-fun safedivision64 ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))

(declare-fun safedivision64__function_guard ((_ BitVec 64) (_ BitVec 64)
  (_ BitVec 64)) Bool)

;; safedivision64__post_axiom
  (assert
  (forall ((dividend (_ BitVec 64)) (divisor (_ BitVec 64)))
  (! (=>
     (and (dynamic_invariant dividend true true true) (dynamic_invariant
     divisor true true true))
     (let ((result (safedivision64 dividend divisor)))
     (=> (safedivision64__function_guard result dividend divisor)
     (and (= result (bvudiv dividend divisor)) (dynamic_invariant result true
     false true))))) :pattern ((safedivision64 dividend divisor)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun writereg32post ((_ BitVec 64) (_ BitVec 32)) Bool)

(declare-fun writereg32post__function_guard (Bool (_ BitVec 64)
  (_ BitVec 32)) Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-sort unsigned32 0)

(declare-fun attr__ATTRIBUTE_MODULUS2 () (_ BitVec 32))

(define-fun bool_eq3 ((x (_ BitVec 32))
  (y (_ BitVec 32))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 32))

(declare-fun user_eq2 (unsigned32 unsigned32) Bool)

(declare-fun dummy2 () unsigned32)

(declare-datatypes ()
((unsigned32__ref (mk_unsigned32__ref (unsigned32__content unsigned32)))))
(define-fun unsigned32__ref___projection ((a unsigned32__ref)) unsigned32 
  (unsigned32__content a))

(define-fun dynamic_invariant1 ((temp___expr_208 (_ BitVec 32))
  (temp___is_init_205 Bool) (temp___skip_constant_206 Bool)
  (temp___do_toplevel_207 Bool)) Bool true)

(declare-fun readreg32 ((_ BitVec 64)) (_ BitVec 32))

(declare-fun readreg32__function_guard ((_ BitVec 32) (_ BitVec 64)) Bool)

(declare-fun ebx ((_ BitVec 64)) (_ BitVec 32))

(declare-fun ebx__function_guard ((_ BitVec 32) (_ BitVec 64)) Bool)

;; ebx__post_axiom
  (assert
  (forall ((x86__rbx (_ BitVec 64)))
  (! (=> (dynamic_invariant x86__rbx true true true)
     (let ((result (ebx x86__rbx)))
     (and (readreg32__function_guard (readreg32 x86__rbx) x86__rbx)
     (=> (ebx__function_guard result x86__rbx)
     (and (= result (readreg32 x86__rbx)) (dynamic_invariant1 result true
     false true)))))) :pattern ((ebx x86__rbx)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun readmem64 ((_ BitVec 64)
  (Array (_ BitVec 64) unsigned8)) (_ BitVec 64))

(declare-fun readmem64__function_guard ((_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) unsigned8)) Bool)

;; readmem64__post_axiom
  (assert
  (forall ((addr (_ BitVec 64)))
  (forall ((x86__memory (Array (_ BitVec 64) unsigned8)))
  (! (=> (dynamic_invariant addr true true true)
     (let ((result (readmem64 addr x86__memory)))
     (=> (readmem64__function_guard result addr x86__memory)
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (bvand result ((_ int2bv 64) 255)) ((_ zero_extend 56) (to_rep
                                                               (select x86__memory addr))))
     (= (bvand result ((_ int2bv 64) 65280)) (bvmul ((_ zero_extend 56) 
     (to_rep (select x86__memory (bvadd addr ((_ int2bv 64) 1))))) ((_ int2bv 64) 256))))
     (= (bvand result ((_ int2bv 64) 16711680)) (bvmul ((_ zero_extend 56) 
     (to_rep (select x86__memory (bvadd addr ((_ int2bv 64) 2))))) ((_ int2bv 64) 65536))))
     (= (bvand result ((_ int2bv 64) 4278190080)) (bvmul ((_ zero_extend 56) 
     (to_rep (select x86__memory (bvadd addr ((_ int2bv 64) 3))))) ((_ int2bv 64) 16777216))))
     (= (bvand result ((_ int2bv 64) 1095216660480)) (bvmul ((_ zero_extend 56) 
     (to_rep (select x86__memory (bvadd addr ((_ int2bv 64) 4))))) ((_ int2bv 64) 4294967296))))
     (= (bvand result ((_ int2bv 64) 280375465082880)) (bvmul ((_ zero_extend 56) 
     (to_rep (select x86__memory (bvadd addr ((_ int2bv 64) 5))))) ((_ int2bv 64) 1099511627776))))
     (= (bvand result ((_ int2bv 64) 71776119061217280)) (bvmul ((_ zero_extend 56) 
     (to_rep (select x86__memory (bvadd addr ((_ int2bv 64) 6))))) ((_ int2bv 64) 281474976710656))))
     (= (bvand result ((_ int2bv 64) 18374686479671623680)) (bvmul ((_ zero_extend 56) 
     (to_rep (select x86__memory (bvadd addr ((_ int2bv 64) 7))))) ((_ int2bv 64) 72057594037927936))))
     (dynamic_invariant result true false true))))) :pattern ((readmem64 addr
                                                              x86__memory)) ))))

(define-fun dynamic_invariant2 ((temp___expr_220 (_ BitVec 8))
  (temp___is_init_217 Bool) (temp___skip_constant_218 Bool)
  (temp___do_toplevel_219 Bool)) Bool true)

;; readreg32__post_axiom
  (assert
  (forall ((reg (_ BitVec 64)))
  (! (=> (dynamic_invariant reg true true true)
     (let ((result (readreg32 reg)))
     (=> (readreg32__function_guard result reg)
     (and
     (= result ((_ extract 31 0) (bvand reg ((_ int2bv 64) 4294967295))))
     (dynamic_invariant1 result true false true))))) :pattern ((readreg32
                                                               reg)) )))

;; writereg32post__post_axiom
  (assert
  (forall ((regnew (_ BitVec 64)))
  (forall ((val__ (_ BitVec 32)))
  (! (=>
     (and (dynamic_invariant regnew true true true) (dynamic_invariant1 val__
     true true true))
     (let ((result (writereg32post regnew val__)))
     (and (readreg32__function_guard (readreg32 regnew) regnew)
     (=> (writereg32post__function_guard result regnew val__)
     (= (= result true)
     (and (= (readreg32 regnew) val__)
     (= (bvand regnew ((_ int2bv 64) 18446744069414584320)) ((_ int2bv 64) 0)))))))) :pattern (
  (writereg32post regnew val__)) ))))

(declare-fun rsp () (_ BitVec 64))

(declare-fun memory () (Array (_ BitVec 64) unsigned8))

(declare-fun o () (_ BitVec 64))

(declare-fun o1 () (_ BitVec 64))

(declare-fun o2 () (_ BitVec 64))

(declare-fun o3 () (_ BitVec 64))

(declare-fun o4 () (_ BitVec 32))

(declare-fun o5 () (_ BitVec 32))

(declare-fun o6 () (_ BitVec 32))

(declare-fun o7 () Bool)

(declare-fun o8 () (_ BitVec 64))

(declare-fun o9 () (_ BitVec 64))

(declare-fun zeroflag () Bool)

(declare-fun xmm0 () (_ BitVec 64))

(declare-fun xmm1 () (_ BitVec 64))

(declare-fun xmm2 () (_ BitVec 64))

(declare-fun rbx () (_ BitVec 64))

(declare-fun rsp1 () (_ BitVec 64))

(declare-fun memory1 () (Array (_ BitVec 64) unsigned8))

(declare-fun result () (_ BitVec 64))

(declare-fun xmm11 () (_ BitVec 64))

(declare-fun result1 () (_ BitVec 64))

(declare-fun xmm01 () (_ BitVec 64))

(declare-fun rdi () (_ BitVec 64))

(declare-fun rax () (_ BitVec 64))

(declare-fun memory2 () (Array (_ BitVec 64) unsigned8))

(declare-fun result2 () (_ BitVec 64))

(declare-fun xmm12 () (_ BitVec 64))

(declare-fun result3 () (_ BitVec 64))

(declare-fun xmm13 () (_ BitVec 64))

(declare-fun result4 () (_ BitVec 64))

(declare-fun rsp2 () (_ BitVec 64))

(declare-fun rsp3 () (_ BitVec 64))

(declare-fun result5 () (_ BitVec 64))

(declare-fun xmm21 () (_ BitVec 64))

(declare-fun rbx1 () (_ BitVec 64))

(declare-fun result6 () Bool)

(declare-fun zeroflag1 () Bool)

(declare-fun result7 () (_ BitVec 64))

(declare-fun xmm22 () (_ BitVec 64))

;; H
  (assert (= rsp1 rsp))

;; H
  (assert
  (forall ((i (_ BitVec 64)))
  (=>
  (and (bvule ((_ int2bv 64) 0) i)
  (bvule i ((_ int2bv 64) 18446744073709551615)))
  (=>
  (and
  (and
  (and
  (and
  (and
  (and (and (not (= i rsp1)) (not (= i (bvadd rsp1 ((_ int2bv 64) 1)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 2)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 3)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 4)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 5)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 6)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 7)))))
  (= (to_rep (select memory1 i)) (to_rep (select memory i)))))))

;; H
  (assert (writereg32post__function_guard
  (writereg32post rdi ((_ int2bv 32) 4198656)) rdi ((_ int2bv 32) 4198656)))

;; H
  (assert (writereg32post__function_guard
  (writereg32post rax ((_ int2bv 32) 2)) rax ((_ int2bv 32) 2)))

;; H
  (assert (readreg32__function_guard (readreg32 rbx) rbx))

;; H
  (assert (writereg32post__function_guard (writereg32post rbx1 o5) rbx1 
  o5))

;; H
  (assert (readreg32__function_guard (readreg32 rbx1) rbx1))

;; H
  (assert
  (and
  (and (= o (readmem64 ((_ int2bv 64) 4198872) memory1))
  (readmem64__function_guard o ((_ int2bv 64) 4198872) memory1))
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (= (bvand o ((_ int2bv 64) 255)) ((_ zero_extend 56) (to_rep
                                                       (select memory1 ((_ int2bv 64) 4198872)))))
  (= (bvand o ((_ int2bv 64) 65280)) (bvmul ((_ zero_extend 56) (to_rep
                                                                (select 
                                                                memory1 (bvadd ((_ int2bv 64) 4198872) ((_ int2bv 64) 1))))) ((_ int2bv 64) 256))))
  (= (bvand o ((_ int2bv 64) 16711680)) (bvmul ((_ zero_extend 56) (to_rep
                                                                   (select 
                                                                   memory1 (bvadd ((_ int2bv 64) 4198872) ((_ int2bv 64) 2))))) ((_ int2bv 64) 65536))))
  (= (bvand o ((_ int2bv 64) 4278190080)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory1 (bvadd ((_ int2bv 64) 4198872) ((_ int2bv 64) 3))))) ((_ int2bv 64) 16777216))))
  (= (bvand o ((_ int2bv 64) 1095216660480)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory1 (bvadd ((_ int2bv 64) 4198872) ((_ int2bv 64) 4))))) ((_ int2bv 64) 4294967296))))
  (= (bvand o ((_ int2bv 64) 280375465082880)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory1 (bvadd ((_ int2bv 64) 4198872) ((_ int2bv 64) 5))))) ((_ int2bv 64) 1099511627776))))
  (= (bvand o ((_ int2bv 64) 71776119061217280)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory1 (bvadd ((_ int2bv 64) 4198872) ((_ int2bv 64) 6))))) ((_ int2bv 64) 281474976710656))))
  (= (bvand o ((_ int2bv 64) 18374686479671623680)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory1 (bvadd ((_ int2bv 64) 4198872) ((_ int2bv 64) 7))))) ((_ int2bv 64) 72057594037927936))))))

;; H
  (assert (= xmm1 result))

;; H
  (assert (= xmm11 o))

;; H
  (assert (= xmm0 result1))

;; H
  (assert (= xmm01 xmm2))

;; H
  (assert (= (writereg32post rdi ((_ int2bv 32) 4198656)) true))

;; H
  (assert (= (writereg32post rax ((_ int2bv 32) 2)) true))

;; H
  (assert
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (= (bvand xmm2 ((_ int2bv 64) 255)) ((_ zero_extend 56) (to_rep
                                                          (select memory2 
                                                          rsp1))))
  (= (bvand xmm2 ((_ int2bv 64) 65280)) (bvmul ((_ zero_extend 56) (to_rep
                                                                   (select 
                                                                   memory2 (bvadd 
                                                                   rsp1 ((_ int2bv 64) 1))))) ((_ int2bv 64) 256))))
  (= (bvand xmm2 ((_ int2bv 64) 16711680)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp1 ((_ int2bv 64) 2))))) ((_ int2bv 64) 65536))))
  (= (bvand xmm2 ((_ int2bv 64) 4278190080)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp1 ((_ int2bv 64) 3))))) ((_ int2bv 64) 16777216))))
  (= (bvand xmm2 ((_ int2bv 64) 1095216660480)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp1 ((_ int2bv 64) 4))))) ((_ int2bv 64) 4294967296))))
  (= (bvand xmm2 ((_ int2bv 64) 280375465082880)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp1 ((_ int2bv 64) 5))))) ((_ int2bv 64) 1099511627776))))
  (= (bvand xmm2 ((_ int2bv 64) 71776119061217280)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp1 ((_ int2bv 64) 6))))) ((_ int2bv 64) 281474976710656))))
  (= (bvand xmm2 ((_ int2bv 64) 18374686479671623680)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp1 ((_ int2bv 64) 7))))) ((_ int2bv 64) 72057594037927936))))
  (forall ((i (_ BitVec 64)))
  (=>
  (and (bvule ((_ int2bv 64) 0) i)
  (bvule i ((_ int2bv 64) 18446744073709551615)))
  (=>
  (and
  (and
  (and
  (and
  (and
  (and (and (not (= i rsp1)) (not (= i (bvadd rsp1 ((_ int2bv 64) 1)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 2)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 3)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 4)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 5)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 6)))))
  (not (= i (bvadd rsp1 ((_ int2bv 64) 7)))))
  (= (to_rep (select memory2 i)) (to_rep (select memory1 i))))))))

;; H
  (assert (= xmm11 result2))

;; H
  (assert (= xmm12 (bvmul xmm11 xmm2)))

;; H
  (assert
  (and
  (and (= o1 (readmem64 ((_ int2bv 64) 4198864) memory2))
  (readmem64__function_guard o1 ((_ int2bv 64) 4198864) memory2))
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (= (bvand o1 ((_ int2bv 64) 255)) ((_ zero_extend 56) (to_rep
                                                        (select memory2 ((_ int2bv 64) 4198864)))))
  (= (bvand o1 ((_ int2bv 64) 65280)) (bvmul ((_ zero_extend 56) (to_rep
                                                                 (select 
                                                                 memory2 (bvadd ((_ int2bv 64) 4198864) ((_ int2bv 64) 1))))) ((_ int2bv 64) 256))))
  (= (bvand o1 ((_ int2bv 64) 16711680)) (bvmul ((_ zero_extend 56) (to_rep
                                                                    (select 
                                                                    memory2 (bvadd ((_ int2bv 64) 4198864) ((_ int2bv 64) 2))))) ((_ int2bv 64) 65536))))
  (= (bvand o1 ((_ int2bv 64) 4278190080)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198864) ((_ int2bv 64) 3))))) ((_ int2bv 64) 16777216))))
  (= (bvand o1 ((_ int2bv 64) 1095216660480)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198864) ((_ int2bv 64) 4))))) ((_ int2bv 64) 4294967296))))
  (= (bvand o1 ((_ int2bv 64) 280375465082880)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198864) ((_ int2bv 64) 5))))) ((_ int2bv 64) 1099511627776))))
  (= (bvand o1 ((_ int2bv 64) 71776119061217280)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198864) ((_ int2bv 64) 6))))) ((_ int2bv 64) 281474976710656))))
  (= (bvand o1 ((_ int2bv 64) 18374686479671623680)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198864) ((_ int2bv 64) 7))))) ((_ int2bv 64) 72057594037927936))))))

;; H
  (assert
  (and
  (and (= o2 (safedivision64 xmm12 o1)) (safedivision64__function_guard 
  o2 xmm12 o1)) (= o2 (bvudiv xmm12 o1))))

;; H
  (assert (= xmm12 result3))

;; H
  (assert (= xmm13 o2))

;; H
  (assert (= rsp1 result4))

;; H
  (assert (= rsp2 (bvsub rsp1 ((_ int2bv 64) 8))))

;; H
  (assert (= rsp3 (bvadd rsp2 ((_ int2bv 64) 8))))

;; H
  (assert
  (and
  (and (= o3 (readmem64 rsp3 memory2)) (readmem64__function_guard o3 
  rsp3 memory2))
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (= (bvand o3 ((_ int2bv 64) 255)) ((_ zero_extend 56) (to_rep
                                                        (select memory2 
                                                        rsp3))))
  (= (bvand o3 ((_ int2bv 64) 65280)) (bvmul ((_ zero_extend 56) (to_rep
                                                                 (select 
                                                                 memory2 (bvadd 
                                                                 rsp3 ((_ int2bv 64) 1))))) ((_ int2bv 64) 256))))
  (= (bvand o3 ((_ int2bv 64) 16711680)) (bvmul ((_ zero_extend 56) (to_rep
                                                                    (select 
                                                                    memory2 (bvadd 
                                                                    rsp3 ((_ int2bv 64) 2))))) ((_ int2bv 64) 65536))))
  (= (bvand o3 ((_ int2bv 64) 4278190080)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp3 ((_ int2bv 64) 3))))) ((_ int2bv 64) 16777216))))
  (= (bvand o3 ((_ int2bv 64) 1095216660480)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp3 ((_ int2bv 64) 4))))) ((_ int2bv 64) 4294967296))))
  (= (bvand o3 ((_ int2bv 64) 280375465082880)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp3 ((_ int2bv 64) 5))))) ((_ int2bv 64) 1099511627776))))
  (= (bvand o3 ((_ int2bv 64) 71776119061217280)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp3 ((_ int2bv 64) 6))))) ((_ int2bv 64) 281474976710656))))
  (= (bvand o3 ((_ int2bv 64) 18374686479671623680)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd rsp3 ((_ int2bv 64) 7))))) ((_ int2bv 64) 72057594037927936))))))

;; H
  (assert (= xmm2 result5))

;; H
  (assert (= xmm21 o3))

;; H
  (assert
  (and (and (= o4 (ebx rbx)) (ebx__function_guard o4 rbx))
  (= o4 (readreg32 rbx))))

;; H
  (assert (= o5 (bvsub o4 ((_ int2bv 32) 1))))

;; H
  (assert (= (writereg32post rbx1 o5) true))

;; H
  (assert
  (and (and (= o6 (ebx rbx1)) (ebx__function_guard o6 rbx1))
  (= o6 (readreg32 rbx1))))

;; H
  (assert (= o7 (ite (= o6 ((_ int2bv 32) 0)) true false)))

;; H
  (assert (= zeroflag result6))

;; H
  (assert (= zeroflag1 o7))

;; H
  (assert
  (and
  (and (= o8 (readmem64 ((_ int2bv 64) 4198880) memory2))
  (readmem64__function_guard o8 ((_ int2bv 64) 4198880) memory2))
  (and
  (and
  (and
  (and
  (and
  (and
  (and
  (= (bvand o8 ((_ int2bv 64) 255)) ((_ zero_extend 56) (to_rep
                                                        (select memory2 ((_ int2bv 64) 4198880)))))
  (= (bvand o8 ((_ int2bv 64) 65280)) (bvmul ((_ zero_extend 56) (to_rep
                                                                 (select 
                                                                 memory2 (bvadd ((_ int2bv 64) 4198880) ((_ int2bv 64) 1))))) ((_ int2bv 64) 256))))
  (= (bvand o8 ((_ int2bv 64) 16711680)) (bvmul ((_ zero_extend 56) (to_rep
                                                                    (select 
                                                                    memory2 (bvadd ((_ int2bv 64) 4198880) ((_ int2bv 64) 2))))) ((_ int2bv 64) 65536))))
  (= (bvand o8 ((_ int2bv 64) 4278190080)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198880) ((_ int2bv 64) 3))))) ((_ int2bv 64) 16777216))))
  (= (bvand o8 ((_ int2bv 64) 1095216660480)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198880) ((_ int2bv 64) 4))))) ((_ int2bv 64) 4294967296))))
  (= (bvand o8 ((_ int2bv 64) 280375465082880)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198880) ((_ int2bv 64) 5))))) ((_ int2bv 64) 1099511627776))))
  (= (bvand o8 ((_ int2bv 64) 71776119061217280)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198880) ((_ int2bv 64) 6))))) ((_ int2bv 64) 281474976710656))))
  (= (bvand o8 ((_ int2bv 64) 18374686479671623680)) (bvmul ((_ zero_extend 56) 
  (to_rep (select memory2 (bvadd ((_ int2bv 64) 4198880) ((_ int2bv 64) 7))))) ((_ int2bv 64) 72057594037927936))))))

;; H
  (assert (= o9 (bvadd xmm21 o8)))

;; H
  (assert (= xmm21 result7))

;; H
  (assert (= xmm22 o9))

;; H
  (assert (not (= zeroflag1 true)))

(declare-fun i () (_ BitVec 64))

;; H
  (assert (bvule ((_ int2bv 64) 0) i))

;; H
  (assert (bvule i ((_ int2bv 64) 18446744073709551615)))

;; H
  (assert (not (= i rsp3)))

;; H
  (assert (not (= i (bvadd rsp3 ((_ int2bv 64) 1)))))

;; H
  (assert (not (= i (bvadd rsp3 ((_ int2bv 64) 2)))))

;; H
  (assert (not (= i (bvadd rsp3 ((_ int2bv 64) 3)))))

;; H
  (assert (not (= i (bvadd rsp3 ((_ int2bv 64) 4)))))

;; H
  (assert (not (= i (bvadd rsp3 ((_ int2bv 64) 5)))))

;; H
  (assert (not (= i (bvadd rsp3 ((_ int2bv 64) 6)))))

;; H
  (assert (not (= i (bvadd rsp3 ((_ int2bv 64) 7)))))

(assert
;; WP_parameter_def
 ;; File "x86.ads", line 334, characters 0-0
  (not (= (to_rep (select memory2 i)) (to_rep (select memory i)))))
(check-sat)
