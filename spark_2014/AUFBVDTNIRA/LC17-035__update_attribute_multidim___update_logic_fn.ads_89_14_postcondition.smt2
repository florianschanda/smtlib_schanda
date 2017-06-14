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

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort i 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (i i) Bool)

(declare-fun dummy1 () i)

(declare-datatypes () ((i__ref (mk_i__ref (i__content i)))))
(define-fun i__ref___projection ((a i__ref)) i (i__content a))

(define-fun dynamic_invariant1 ((temp___expr_149 Int)
  (temp___is_init_146 Bool) (temp___skip_constant_147 Bool)
  (temp___do_toplevel_148 Bool)) Bool (=>
                                      (or (= temp___is_init_146 true)
                                      (<= 1 10)) (in_range2 temp___expr_149)))

(declare-sort m 0)

(define-fun in_range3 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 7))))

(define-fun in_range_int ((x Int)) Bool (and (<= 0 x) (<= x 7)))

(define-fun bool_eq2 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 8))

(declare-fun user_eq2 (m m) Bool)

(declare-fun dummy2 () m)

(declare-datatypes () ((m__ref (mk_m__ref (m__content m)))))
(define-fun m__ref___projection ((a m__ref)) m (m__content a))

(define-fun dynamic_invariant2 ((temp___expr_155 (_ BitVec 8))
  (temp___is_init_152 Bool) (temp___skip_constant_153 Bool)
  (temp___do_toplevel_154 Bool)) Bool (=>
                                      (or (= temp___is_init_152 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 7)))
                                      (in_range3 temp___expr_155)))

(declare-sort map1 0)

(declare-datatypes () ((map__ref (mk_map__ref (map__content map1)))))
(declare-fun get (map1 Int (_ BitVec 8)) integer)

(declare-fun set (map1 Int (_ BitVec 8) integer) map1)

;; Select_eq
  (assert
  (forall ((m1 map1))
  (forall ((i1 Int))
  (forall ((j (_ BitVec 8)))
  (forall ((a integer))
  (! (= (get (set m1 i1 j a) i1 j) a) :pattern ((set m1 i1 j a)) ))))))

;; Select_neq
  (assert
  (forall ((m1 map1))
  (forall ((i1 Int) (i2 Int))
  (forall ((j (_ BitVec 8)) (j2 (_ BitVec 8)))
  (forall ((a integer))
  (! (=> (not (and (= i1 i2) (= j j2)))
     (= (get (set m1 i1 j a) i2 j2) (get m1 i2 j2))) :pattern ((get
                                                               (set m1 i1 j
                                                               a) i2 j2)) :pattern (
  (set m1 i1 j a) (get m1 i2 j2)) ))))))

(declare-fun slide (map1 Int Int (_ BitVec 8) (_ BitVec 8)) map1)

;; slide_def
  (assert
  (forall ((a map1))
  (forall ((new_first Int) (old_first Int))
  (forall ((new_first_2 (_ BitVec 8)) (old_first_2 (_ BitVec 8)))
  (forall ((i1 Int))
  (forall ((j (_ BitVec 8)))
  (! (= (get (slide a old_first new_first old_first_2 new_first_2) i1 j) 
  (get a (- i1 (- new_first old_first))
  (bvsub j (bvsub new_first_2 old_first_2)))) :pattern ((get
                                                        (slide a old_first
                                                        new_first old_first_2
                                                        new_first_2) i1 j)) )))))))

(define-fun bool_eq3 ((a map1) (a__first Int) (a__last Int)
  (a__first_2 (_ BitVec 8)) (a__last_2 (_ BitVec 8)) (b map1) (b__first Int)
  (b__last Int) (b__first_2 (_ BitVec 8))
  (b__last_2 (_ BitVec 8))) Bool (ite (and
                                      (and
                                      (ite (<= a__first a__last)
                                      (and (<= b__first b__last)
                                      (= (- a__last a__first) (- b__last b__first)))
                                      (< b__last b__first))
                                      (ite (bvule a__first_2 a__last_2)
                                      (and (bvule b__first_2 b__last_2)
                                      (= (bvsub a__last_2 a__first_2) (bvsub b__last_2 b__first_2)))
                                      (bvugt b__first_2 b__last_2)))
                                      (forall ((temp___idx_132 Int))
                                      (forall ((temp___idx_133 (_ BitVec 8)))
                                      (=>
                                      (and
                                      (and (<= a__first temp___idx_132)
                                      (<= temp___idx_132 a__last))
                                      (and (bvule a__first_2 temp___idx_133)
                                      (bvule temp___idx_133 a__last_2)))
                                      (= (to_rep
                                         (get a temp___idx_132
                                         temp___idx_133)) (to_rep
                                                          (get b
                                                          (+ (- b__first a__first) temp___idx_132)
                                                          (bvadd (bvsub b__first_2 a__first_2) temp___idx_133))))))))
                                 true false))

;; bool_eq_rev
  (assert
  (forall ((a map1) (b map1))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (forall ((a__first_2 (_ BitVec 8)) (a__last_2 (_ BitVec 8))
  (b__first_2 (_ BitVec 8)) (b__last_2 (_ BitVec 8)))
  (=>
  (= (bool_eq3 b b__first b__last b__first_2 b__last_2 a a__first a__last
     a__first_2 a__last_2) true)
  (and
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (ite (bvule a__first_2 a__last_2)
  (and (bvule b__first_2 b__last_2)
  (= (bvsub a__last_2 a__first_2) (bvsub b__last_2 b__first_2)))
  (bvugt b__first_2 b__last_2)))
  (forall ((temp___idx_132 Int))
  (forall ((temp___idx_133 (_ BitVec 8)))
  (=>
  (and (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (and (bvule a__first_2 temp___idx_133) (bvule temp___idx_133 a__last_2)))
  (= (to_rep (get a temp___idx_132 temp___idx_133)) (to_rep
                                                    (get b
                                                    (+ (- b__first a__first) temp___idx_132)
                                                    (bvadd (bvsub b__first_2 a__first_2) temp___idx_133)))))))))))))

(declare-fun a_2d_arr () map1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun update_logic_fn__a_2d_arr__aggregate_def (Int) map1)

;; def_axiom
  (assert
  (forall ((temp___138 Int))
  (forall ((temp___139 Int))
  (forall ((temp___140 (_ BitVec 8)))
  (= (get (update_logic_fn__a_2d_arr__aggregate_def temp___138) temp___139
     temp___140) (of_rep temp___138))))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun y () (_ BitVec 8))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun v1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun v2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-sort t26s 0)

(define-fun in_range4 ((x1 Int)) Bool (and (<= 1 x1) (<= x1 10)))

(define-fun bool_eq4 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (t26s t26s) Bool)

(declare-fun dummy3 () t26s)

(declare-datatypes () ((t26s__ref (mk_t26s__ref (t26s__content t26s)))))
(define-fun t26s__ref___projection ((a t26s__ref)) t26s (t26s__content a))

(declare-sort t27s 0)

(define-fun in_range5 ((x1 (_ BitVec 8))) Bool (and
                                               (bvule ((_ int2bv 8) 0) x1)
                                               (bvule x1 ((_ int2bv 8) 7))))

(define-fun in_range_int1 ((x1 Int)) Bool (and (<= 0 x1) (<= x1 7)))

(define-fun bool_eq5 ((x1 (_ BitVec 8))
  (y1 (_ BitVec 8))) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) (_ BitVec 8))

(declare-fun user_eq4 (t27s t27s) Bool)

(declare-fun dummy4 () t27s)

(declare-datatypes () ((t27s__ref (mk_t27s__ref (t27s__content t27s)))))
(define-fun t27s__ref___projection ((a t27s__ref)) t27s (t27s__content a))

(declare-fun temp___278 (Int Int Int) map1)

;; def_axiom
  (assert
  (forall ((temp___280 Int) (temp___281 Int) (temp___282 Int))
  (let ((temp___279 (temp___278 temp___280 temp___281 temp___282)))
  (forall ((temp___283 Int))
  (forall ((temp___284 (_ BitVec 8)))
  (ite (= temp___283 5)
  (ite (= temp___284 ((_ int2bv 8) 7))
  (= (get temp___279 temp___283 temp___284) (of_rep temp___280))
  (= (get temp___279 temp___283 temp___284) (of_rep temp___281)))
  (= (get temp___279 temp___283 temp___284) (of_rep temp___282))))))))

;; a_2d_arr__def_axiom
  (assert (= a_2d_arr (update_logic_fn__a_2d_arr__aggregate_def 100)))

(declare-fun a () map1)

(declare-fun o () integer)

(declare-fun o1 () map1)

(declare-fun o2 () integer)

(declare-fun o3 () map1)

(declare-fun result () map1)

(declare-fun a1 () map1)

(declare-fun result1 () map1)

(declare-fun a2 () map1)

(declare-fun result2 () map1)

(declare-fun a3 () map1)

(declare-fun a4 () map1)

(declare-fun a5 () map1)

;; H
  (assert (= (update_logic_fn__a_2d_arr__aggregate_def 100) a_2d_arr))

;; H
  (assert (in_range2 x))

;; H
  (assert (in_range3 y))

;; H
  (assert (in_range1 v1))

;; H
  (assert (in_range1 v2))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref a)))

;; H
  (assert (= a1 a_2d_arr))

;; H
  (assert (= (to_rep o) v1))

;; H
  (assert (= o1 (set a1 5 ((_ int2bv 8) 7) o)))

;; H
  (assert (= a1 result1))

;; H
  (assert (= a2 o1))

;; H
  (assert (= (to_rep o2) v2))

;; H
  (assert (= o3 (set a2 x y o2)))

;; H
  (assert (= a2 result2))

;; H
  (assert (= a3 o3))

;; H
  (assert (= a3 a4))

;; H
  (assert (= a5 a3))

;; H
  (assert (= x 5))

;; H
  (assert (= y ((_ int2bv 8) 7)))

(assert
;; WP_parameter_def
 ;; File "update_logic_fn.ads", line 76, characters 0-0
  (not
  (= (bool_eq3 a4 1 10 ((_ int2bv 8) 0) ((_ int2bv 8) 7)
     (temp___278 v2 1000 1000) 1 10 ((_ int2bv 8) 0) ((_ int2bv 8) 7)) true)))
(check-sat)
