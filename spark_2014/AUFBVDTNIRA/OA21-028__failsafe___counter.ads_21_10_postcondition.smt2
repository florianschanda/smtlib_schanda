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

(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort time_slot_length 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 8))

(define-fun in_range1 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 10))))

(define-fun in_range_int ((x Int)) Bool (and (<= 0 x) (<= x 10)))

(define-fun bool_eq ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 8))

(declare-fun user_eq (time_slot_length time_slot_length) Bool)

(declare-fun dummy () time_slot_length)

(declare-datatypes ()
((time_slot_length__ref
 (mk_time_slot_length__ref (time_slot_length__content time_slot_length)))))
(define-fun time_slot_length__ref___projection ((a time_slot_length__ref)) time_slot_length 
  (time_slot_length__content a))

(define-fun dynamic_invariant ((temp___expr_203 (_ BitVec 8))
  (temp___is_init_200 Bool) (temp___skip_constant_201 Bool)
  (temp___do_toplevel_202 Bool)) Bool (=>
                                      (or (= temp___is_init_200 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 10)))
                                      (in_range1 temp___expr_203)))

(declare-sort time_slot 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 8))

(define-fun in_range2 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 1) x)
                                              (bvule x ((_ int2bv 8) 10))))

(define-fun in_range_int1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 8))

(declare-fun user_eq1 (time_slot time_slot) Bool)

(declare-fun dummy1 () time_slot)

(declare-datatypes ()
((time_slot__ref (mk_time_slot__ref (time_slot__content time_slot)))))
(define-fun time_slot__ref___projection ((a time_slot__ref)) time_slot 
  (time_slot__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array (_ BitVec 8) Bool))))))
(declare-fun slide ((Array (_ BitVec 8) Bool) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) Bool))

;; slide_eq
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)))
  (forall ((first (_ BitVec 8)))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)))
  (forall ((old_first (_ BitVec 8)))
  (forall ((new_first (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (= (select (slide a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array (_ BitVec 8) Bool) (_ BitVec 8) (_ BitVec 8)
  (Array (_ BitVec 8) Bool) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) Bool))

;; concat_def
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)) (b (Array (_ BitVec 8) Bool)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (and
     (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (bvugt i a_last)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (bvadd (bvsub i a_last) (bvsub b_first #x01)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (Bool (_ BitVec 8)) (Array (_ BitVec 8) Bool))

;; singleton_def
  (assert
  (forall ((v Bool))
  (forall ((i (_ BitVec 8)))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array (_ BitVec 8) Bool)) (a__first (_ BitVec 8))
  (a__last (_ BitVec 8)) (b (Array (_ BitVec 8) Bool))
  (b__first (_ BitVec 8))
  (b__last (_ BitVec 8))) Bool (ite (and
                                    (ite (bvule a__first a__last)
                                    (and (bvule b__first b__last)
                                    (= (bvsub a__last a__first) (bvsub b__last b__first)))
                                    (bvugt b__first b__last))
                                    (forall ((temp___idx_132 (_ BitVec 8)))
                                    (=>
                                    (and (bvule a__first temp___idx_132)
                                    (bvule temp___idx_132 a__last))
                                    (= (select a temp___idx_132) (select b (bvadd (bvsub b__first a__first) temp___idx_132))))))
                               true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)) (b (Array (_ BitVec 8) Bool)))
  (forall ((a__first (_ BitVec 8)) (a__last (_ BitVec 8))
  (b__first (_ BitVec 8)) (b__last (_ BitVec 8)))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (bvule a__first a__last)
  (and (bvule b__first b__last)
  (= (bvsub a__last a__first) (bvsub b__last b__first)))
  (bvugt b__first b__last))
  (forall ((temp___idx_132 (_ BitVec 8)))
  (=> (and (bvule a__first temp___idx_132) (bvule temp___idx_132 a__last))
  (= (select a temp___idx_132) (select b (bvadd (bvsub b__first a__first) temp___idx_132))))))))))

(declare-fun compare ((Array (_ BitVec 8) Bool) (_ BitVec 8) (_ BitVec 8)
  (Array (_ BitVec 8) Bool) (_ BitVec 8) (_ BitVec 8)) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)) (b (Array (_ BitVec 8) Bool)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)) (b (Array (_ BitVec 8) Bool)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i (_ BitVec 8)) (j (_ BitVec 8)))
     (and (bvule i a_last)
     (and (bvult j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (bvult i a_last)
     (< (to_int2 (select a (bvadd i #x01))) (to_int2
                                            (select b (bvadd j #x01))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)) (b (Array (_ BitVec 8) Bool)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i (_ BitVec 8)) (j (_ BitVec 8)))
     (and (bvule i b_last)
     (and (bvult j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (bvult i b_last)
     (< (to_int2 (select b (bvadd i #x01))) (to_int2
                                            (select a (bvadd j #x01))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun xorb ((Array (_ BitVec 8) Bool) (_ BitVec 8) (_ BitVec 8)
  (Array (_ BitVec 8) Bool) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) Bool))

(declare-fun andb ((Array (_ BitVec 8) Bool) (_ BitVec 8) (_ BitVec 8)
  (Array (_ BitVec 8) Bool) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) Bool))

(declare-fun orb ((Array (_ BitVec 8) Bool) (_ BitVec 8) (_ BitVec 8)
  (Array (_ BitVec 8) Bool) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) Bool))

(declare-fun notb ((Array (_ BitVec 8) Bool) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) Bool))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)) (b (Array (_ BitVec 8) Bool)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (orb a a_first a_last b b_first b_last) i) (or (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (orb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)) (b (Array (_ BitVec 8) Bool)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (andb a a_first a_last b b_first b_last) i) (and (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (andb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)) (b (Array (_ BitVec 8) Bool)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (xorb a a_first a_last b b_first b_last) i) (xor (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (xorb a a_first a_last b b_first b_last) i)) )))))

;; notb_def
  (assert
  (forall ((a (Array (_ BitVec 8) Bool)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (notb a a_first a_last) i) (not (select a i)))) :pattern ((select 
  (notb a a_first a_last) i)) )))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_209 (_ BitVec 8))
  (temp___is_init_206 Bool) (temp___skip_constant_207 Bool)
  (temp___do_toplevel_208 Bool)) Bool (=>
                                      (or (= temp___is_init_206 true)
                                      (bvule ((_ int2bv 8) 1) ((_ int2bv 8) 10)))
                                      (in_range2 temp___expr_209)))

(declare-fun inputs () (Array (_ BitVec 8) Bool))

(declare-fun res () (_ BitVec 8))

(declare-fun counter__model__current_chain_length__result () (_ BitVec 8))

(declare-fun o () (_ BitVec 8))

(declare-fun temp___233 () (_ BitVec 8))

(declare-fun temp___234 () (_ BitVec 8))

(declare-fun o1 () (_ BitVec 8))

(declare-fun o2 () (_ BitVec 8))

(declare-fun o3 () Bool)

(declare-fun result () (_ BitVec 8))

(declare-fun res1 () (_ BitVec 8))

(declare-fun result1 () Bool)

(declare-fun res2 () (_ BitVec 8))

(declare-fun temp___2341 () (_ BitVec 8))

(declare-fun result2 () (_ BitVec 8))

(declare-fun temp___2342 () (_ BitVec 8))

(declare-fun result3 () (_ BitVec 8))

(declare-fun res3 () (_ BitVec 8))

(declare-fun result4 () Bool)

(declare-fun res4 () (_ BitVec 8))

(declare-fun res5 () (_ BitVec 8))

(declare-fun res6 () (_ BitVec 8))

(declare-fun res7 () (_ BitVec 8))

(declare-fun result5 () (_ BitVec 8))

(declare-fun counter__model__current_chain_length__result1 () (_ BitVec 8))

(declare-fun counter__model__current_chain_length__result2 () (_ BitVec 8))

(declare-fun counter__model__current_chain_length__result3 () (_ BitVec 8))

(declare-fun res8 () (_ BitVec 8))

(declare-fun counter__model__current_chain_length__result4 () (_ BitVec 8))

(declare-fun res9 () (_ BitVec 8))

(declare-fun counter__model__current_chain_length__result5 () (_ BitVec 8))

(define-fun res10 () t__ref (mk_t__ref res6))

(declare-fun result6 () (_ BitVec 8))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref res)))

;; H
  (assert (= res1 ((_ int2bv 8) 0)))

;; H
  (assert (in_range1 res1))

;; H
  (assert
  (=> (bvult res1 ((_ int2bv 8) 10))
  (and (bvule ((_ int2bv 8) 1) (bvsub ((_ int2bv 8) 10) res1))
  (bvule (bvsub ((_ int2bv 8) 10) res1) ((_ int2bv 8) 10)))))

;; H
  (assert
  (=> (bvult res1 ((_ int2bv 8) 10)) (= o (bvsub ((_ int2bv 8) 10) res1))))

;; H
  (assert (=> (bvult res1 ((_ int2bv 8) 10)) (= result1 (select inputs o))))

;; H
  (assert (=> (not (bvult res1 ((_ int2bv 8) 10))) (= result1 false)))

;; H
  (assert (=> (= result1 true) (= temp___233 res1)))

;; H
  (assert (=> (= result1 true) (= ((_ int2bv 8) 0) temp___234)))

;; H
  (assert
  (=> (= result1 true)
  (forall ((i (_ BitVec 8)))
  (=>
  (and (bvule (bvsub ((_ int2bv 8) 10) res2) i) (bvule i ((_ int2bv 8) 10)))
  (= (select inputs i) true)))))

;; H
  (assert
  (=> (= result1 true)
  (and (=> (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 10)) (in_range1 res2))
  (and (bvult res2 ((_ int2bv 8) 10))
  (= (select inputs (bvsub ((_ int2bv 8) 10) res2)) true)))))

;; H
  (assert (=> (= result1 true) (= temp___2341 result2)))

;; H
  (assert (=> (= result1 true) (= temp___2342 res2)))

;; H
  (assert
  (=> (= result1 true)
  (and (= o1 (bvadd res2 ((_ int2bv 8) 1))) (in_range1
  (bvadd res2 ((_ int2bv 8) 1))))))

;; H
  (assert (=> (= result1 true) (= res2 result3)))

;; H
  (assert (=> (= result1 true) (= res3 o1)))

;; H
  (assert
  (=> (= result1 true)
  (=> (bvult res3 ((_ int2bv 8) 10))
  (and (bvule ((_ int2bv 8) 1) (bvsub ((_ int2bv 8) 10) res3))
  (bvule (bvsub ((_ int2bv 8) 10) res3) ((_ int2bv 8) 10))))))

;; H
  (assert
  (=> (= result1 true)
  (=> (bvult res3 ((_ int2bv 8) 10)) (= o2 (bvsub ((_ int2bv 8) 10) res3)))))

;; H
  (assert
  (=> (= result1 true)
  (=> (bvult res3 ((_ int2bv 8) 10)) (= o3 (select inputs o2)))))

;; H
  (assert
  (=> (= result1 true)
  (=> (not (bvult res3 ((_ int2bv 8) 10))) (= o3 false))))

;; H
  (assert
  (=> (= result1 true) (= result4 (ite (not (= o3 true)) true false))))

;; H
  (assert (=> (= result1 true) (= result4 true)))

;; H
  (assert (=> (= result1 true) (= res3 res4)))

;; H
  (assert (=> (= result1 true) (= res5 res3)))

;; H
  (assert (=> (= result1 true) (= res10 (mk_t__ref res4))))

;; H
  (assert (=> (= result1 true) (= res7 res5)))

;; H
  (assert (=> (not (= result1 true)) (= res1 res6)))

;; H
  (assert (=> (not (= result1 true)) (= res7 res1)))

;; H
  (assert
  (= counter__model__current_chain_length__result1 counter__model__current_chain_length__result2))

;; H
  (assert
  (= counter__model__current_chain_length__result3 counter__model__current_chain_length__result1))

;; H
  (assert
  (= (mk_t__ref result5) (mk_t__ref
                         counter__model__current_chain_length__result)))

;; H
  (assert (= counter__model__current_chain_length__result1 res6))

;; H
  (assert
  (= (mk_t__ref counter__model__current_chain_length__result4) (mk_t__ref
                                                               counter__model__current_chain_length__result2)))

;; H
  (assert (= (mk_t__ref res8) res10))

;; H
  (assert
  (= counter__model__current_chain_length__result5 counter__model__current_chain_length__result3))

;; H
  (assert (= res9 res7))

;; H
  (assert (= result6 counter__model__current_chain_length__result4))

;; H
  (assert (not (= (select inputs ((_ int2bv 8) 10)) true)))

(assert
;; WP_parameter_def
 ;; File "counter.ads", line 9, characters 0-0
  (not (= counter__model__current_chain_length__result4 ((_ int2bv 8) 0))))
(check-sat)
