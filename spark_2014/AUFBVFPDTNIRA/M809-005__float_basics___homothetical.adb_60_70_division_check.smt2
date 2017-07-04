;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
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

(declare-fun pow2 (Int) Int)

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int1 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort float 0)

(declare-fun user_eq (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)

(declare-fun dummy () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(declare-fun to_rep (float) Float32)

(declare-fun of_rep (Float32) float)

;; inversion_axiom
  (assert
  (forall ((x float)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x float))
  (! (not (or (fp.isInfinite (to_rep x)) (fp.isNaN (to_rep x)))) :pattern (
  (to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (not (or (fp.isInfinite x) (fp.isNaN x))) (= (to_rep (of_rep x)) x)) :pattern (
  (to_rep (of_rep x))) )))

(declare-sort joint_index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (joint_index joint_index) Bool)

(declare-fun dummy1 () joint_index)

(declare-datatypes ()
((joint_index__ref (mk_joint_index__ref (joint_index__content joint_index)))))
(define-fun joint_index__ref___projection ((a joint_index__ref)) joint_index 
  (joint_index__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int float))))))
(declare-fun slide ((Array Int float) Int Int) (Array Int float))

;; slide_eq
  (assert
  (forall ((a (Array Int float)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int float)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int float) Int Int (Array Int float) Int
  Int) (Array Int float))

;; concat_def
  (assert
  (forall ((a (Array Int float)) (b (Array Int float)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (float Int) (Array Int float))

;; singleton_def
  (assert
  (forall ((v float))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq ((a (Array Int float)) (a__first Int) (a__last Int)
  (b (Array Int float)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int float)) (b (Array Int float)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun d () (Array Int float))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun kv () (Array Int float))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun ka () (Array Int float))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(define-fun dynamic_invariant ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-fun adjust2triangle (Float32 Float32 Float32) Float32)

(declare-fun adjust2triangle__function_guard (Float32 Float32 Float32
  Float32) Bool)

;; adjust2triangle__post_axiom
  (assert
  (forall ((d1 Float32) (kv1 Float32) (ka1 Float32))
  (! (=>
     (and
     (and
     (and (dynamic_invariant d1 true true true) (dynamic_invariant kv1 true
     true true)) (dynamic_invariant ka1 true true true))
     (and
     (and (not (fp.eq d1 (fp #b0 #b00000000 #b00000000000000000000000)))
     (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) kv1))
     (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) ka1)))
     (let ((result (adjust2triangle d1 kv1 ka1)))
     (and
     (and (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) result)
     (fp.leq result kv1)) (dynamic_invariant result true false true)))) :pattern (
  (adjust2triangle d1 kv1 ka1)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-sort t11b 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (t11b t11b) Bool)

(declare-fun dummy2 () t11b)

(declare-datatypes () ((t11b__ref (mk_t11b__ref (t11b__content t11b)))))
(define-fun t11b__ref___projection ((a t11b__ref)) t11b (t11b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun homothetical__homothetical__lambda__aggregate_def (Float32) (Array Int float))

;; def_axiom
  (assert
  (forall ((temp___160 Float32))
  (forall ((temp___161 Int))
  (= (select (homothetical__homothetical__lambda__aggregate_def temp___160) temp___161) 
  (of_rep temp___160)))))

(declare-fun homothetical__homothetical__upsilon__aggregate_def (Float32) (Array Int float))

;; def_axiom
  (assert
  (forall ((temp___163 Float32))
  (forall ((temp___164 Int))
  (= (select (homothetical__homothetical__upsilon__aggregate_def temp___163) temp___164) 
  (of_rep temp___163)))))

(declare-fun homothetical__homothetical__kvp__aggregate_def (Float32) (Array Int float))

;; def_axiom
  (assert
  (forall ((temp___166 Float32))
  (forall ((temp___167 Int))
  (= (select (homothetical__homothetical__kvp__aggregate_def temp___166) temp___167) 
  (of_rep temp___166)))))

(declare-fun temp___173 (Float32) (Array Int float))

;; def_axiom
  (assert
  (forall ((temp___175 Float32))
  (forall ((temp___176 Int))
  (= (select (temp___173 temp___175) temp___176) (of_rep temp___175)))))

(declare-fun temp___177 (Float32) (Array Int float))

;; def_axiom
  (assert
  (forall ((temp___179 Float32))
  (forall ((temp___180 Int))
  (= (select (temp___177 temp___179) temp___180) (of_rep temp___179)))))

(define-fun dynamic_invariant1 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 1 2)) (in_range2 temp___expr_142)))

(declare-fun lambda () (Array Int float))

(declare-fun upsilon () (Array Int float))

(declare-fun kvp () (Array Int float))

(declare-fun i () Int)

(declare-fun o () Float32)

(declare-fun o1 () Float32)

(declare-fun o2 () Float32)

(declare-fun o3 () Float32)

(declare-fun o4 () Float32)

(declare-fun o5 () float)

(declare-fun o6 () (Array Int float))

(declare-fun o7 () Float32)

(declare-fun o8 () Float32)

(declare-fun result () (Array Int float))

(declare-fun lambda1 () (Array Int float))

(declare-fun result1 () (Array Int float))

(declare-fun upsilon1 () (Array Int float))

(declare-fun result2 () (Array Int float))

(declare-fun kvp1 () (Array Int float))

(declare-fun kvp2 () (Array Int float))

(declare-fun kvmax () (Array Int float))

(declare-fun kamax () (Array Int float))

(declare-fun result3 () int__ref)

(declare-fun i1 () Int)

(declare-fun kvmax1 () (Array Int float))

(declare-fun kamax1 () (Array Int float))

(declare-fun lambda2 () (Array Int float))

(declare-fun upsilon2 () (Array Int float))

(declare-fun i2 () Int)

(declare-fun j () Int)

(declare-fun result4 () int__ref)

(declare-fun j1 () Int)

(declare-fun lambda3 () (Array Int float))

(declare-fun upsilon3 () (Array Int float))

(declare-fun j2 () Int)

(declare-fun result5 () map__ref)

(declare-fun lambda4 () (Array Int float))

;; H
  (assert
  (forall ((j3 Int))
  (=> (and (<= 1 j3) (<= j3 2))
  (and
  (and
  (not (fp.eq (to_rep (select d j3)) (fp #b0 #b00000000 #b00000000000000000000000)))
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) (to_rep
                                                       (select kv j3))))
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) (to_rep
                                                       (select ka j3)))))))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref lambda)))

;; H
  (assert
  (= lambda1 (homothetical__homothetical__lambda__aggregate_def
             (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert (= (mk_map__ref result1) (mk_map__ref upsilon)))

;; H
  (assert
  (= upsilon1 (homothetical__homothetical__upsilon__aggregate_def
              (fp #b0 #b01111111 #b00000000000000000000000))))

;; H
  (assert (= (mk_map__ref result2) (mk_map__ref kvp)))

;; H
  (assert
  (= kvp1 (homothetical__homothetical__kvp__aggregate_def
          (fp #b0 #b00000000 #b00000000000000000000000))))

;; H
  (assert
  (forall ((i3 Int))
  (=> (and (<= 1 i3) (<= i3 2))
  (and
  (and
  (fp.lt (fp #b0 #b00000000 #b00000000000000000000000) (to_rep
                                                       (select ka i3)))
  (not (fp.eq (to_rep (select kvp2 i3)) (fp #b0 #b00000000 #b00000000000000000000000))))
  (not (fp.eq (to_rep (select d i3)) (fp #b0 #b00000000 #b00000000000000000000000)))))))

;; H
  (assert (= result3 (mk_int__ref i)))

;; H
  (assert (= i1 1))

;; H
  (assert (<= 1 i1))

;; H
  (assert (<= i1 2))

;; H
  (assert
  (and
  (and
  (and
  (and
  (forall ((temp___188 Int))
  (=> (and (<= 1 temp___188) (<= temp___188 2))
  (=> (<= i2 temp___188)
  (= (select kvmax1 temp___188) (select kvmax temp___188)))))
  (forall ((temp___190 Int))
  (=> (and (<= 1 temp___190) (<= temp___190 2))
  (=> (<= i2 temp___190)
  (= (select lambda2 temp___190) (select lambda1 temp___190))))))
  (forall ((temp___192 Int))
  (=> (and (<= 1 temp___192) (<= temp___192 2))
  (=> (<= i2 temp___192)
  (= (select kamax1 temp___192) (select kamax temp___192))))))
  (forall ((temp___194 Int))
  (=> (and (<= 1 temp___194) (<= temp___194 2))
  (=> (<= i2 temp___194)
  (= (select upsilon2 temp___194) (select upsilon1 temp___194))))))
  (and (<= 1 i2) (<= i2 2))))

;; H
  (assert (= result4 (mk_int__ref j)))

;; H
  (assert (= j1 1))

;; H
  (assert (<= 1 j1))

;; H
  (assert (<= j1 2))

;; H
  (assert
  (and
  (and
  (forall ((temp___182 Int))
  (=> (and (<= 1 temp___182) (<= temp___182 2))
  (=> (not (= i2 temp___182))
  (= (select lambda3 temp___182) (select lambda2 temp___182)))))
  (forall ((temp___184 Int))
  (=> (and (<= 1 temp___184) (<= temp___184 2))
  (=> (not (= i2 temp___184))
  (= (select upsilon3 temp___184) (select upsilon2 temp___184))))))
  (and (<= 1 j2) (<= j2 2))))

;; H
  (assert (not (= i2 j2)))

;; H
  (assert
  (and
  (= o1 (fp.mul RNE (to_rep (select kvp2 i2)) (fp.abs (to_rep (select d j2)))))
  (not (or (fp.isInfinite (fp.mul RNE (to_rep (select kvp2 i2)) (fp.abs 
  (to_rep (select d j2))))) (fp.isNaN (fp.mul RNE (to_rep (select kvp2 i2)) (fp.abs 
  (to_rep (select d j2)))))))))

;; H
  (assert
  (and
  (= o (fp.mul RNE (to_rep (select kvp2 j2)) (fp.abs (to_rep (select d i2)))))
  (not (or (fp.isInfinite (fp.mul RNE (to_rep (select kvp2 j2)) (fp.abs 
  (to_rep (select d i2))))) (fp.isNaN (fp.mul RNE (to_rep (select kvp2 j2)) (fp.abs 
  (to_rep (select d i2)))))))))

;; H
  (assert (= o2 (fp.div RNE o o1)))

;; H
  (assert (and (= o3 o2) (not (or (fp.isInfinite o2) (fp.isNaN o2)))))

;; H
  (assert (= o4 (fp.min (to_rep (select lambda3 i2)) o3)))

;; H
  (assert (= (to_rep o5) o4))

;; H
  (assert (= o6 (store lambda3 i2 o5)))

;; H
  (assert (= result5 (mk_map__ref lambda3)))

;; H
  (assert (= lambda4 o6))

;; H
  (assert
  (and
  (= o8 (fp.mul RNE (to_rep (select ka i2)) (fp.abs (to_rep (select d j2)))))
  (not (or (fp.isInfinite (fp.mul RNE (to_rep (select ka i2)) (fp.abs 
  (to_rep (select d j2))))) (fp.isNaN (fp.mul RNE (to_rep (select ka i2)) (fp.abs 
  (to_rep (select d j2)))))))))

;; H
  (assert
  (and
  (= o7 (fp.mul RNE (to_rep (select ka j2)) (fp.abs (to_rep (select d i2)))))
  (not (or (fp.isInfinite (fp.mul RNE (to_rep (select ka j2)) (fp.abs 
  (to_rep (select d i2))))) (fp.isNaN (fp.mul RNE (to_rep (select ka j2)) (fp.abs 
  (to_rep (select d i2)))))))))

(assert
;; WP_parameter_def
 ;; File "homothetical.ads", line 5, characters 0-0
  (not (not (fp.eq o8 ((_ to_fp 8 24) #x00000000)))))
(check-sat)
