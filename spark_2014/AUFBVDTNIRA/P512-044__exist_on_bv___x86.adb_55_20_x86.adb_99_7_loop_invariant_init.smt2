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

(declare-fun inrange64 ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) Bool)

(declare-fun inrange64__function_guard (Bool (_ BitVec 64) (_ BitVec 64)
  (_ BitVec 64)) Bool)

;; inrange64__post_axiom
  (assert
  (forall ((var (_ BitVec 64)) (bottom (_ BitVec 64))
  (range_size (_ BitVec 64)))
  (! (=>
     (and
     (and (dynamic_invariant var true true true) (dynamic_invariant bottom
     true true true)) (dynamic_invariant range_size true true true))
     (let ((result (inrange64 var bottom range_size)))
     (=> (inrange64__function_guard result var bottom range_size)
     (= (= result true)
     (exists ((n (_ BitVec 64)))
     (and (and (bvule ((_ int2bv 64) 0) n) (bvule n range_size))
     (= var (bvadd bottom n)))))))) :pattern ((inrange64 var bottom
                                              range_size)) )))

(declare-fun var1 () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun var1_range_size () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun var2 () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun var2_range_size () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun res () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-sort unsigned_64 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 64))

(define-fun bool_eq1 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 64))

(declare-fun user_eq1 (unsigned_64 unsigned_64) Bool)

(declare-fun dummy1 () unsigned_64)

(declare-datatypes ()
((unsigned_64__ref (mk_unsigned_64__ref (unsigned_64__content unsigned_64)))))
(define-fun unsigned_64__ref___projection ((a unsigned_64__ref)) unsigned_64 
  (unsigned_64__content a))

(declare-fun to_rep (unsigned_64) (_ BitVec 64))

(declare-fun of_rep ((_ BitVec 64)) unsigned_64)

;; inversion_axiom
  (assert
  (forall ((x unsigned_64))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 64)))
  (! (= (to_rep (of_rep x)) x) :pattern ((to_rep (of_rep x))) )))

(define-fun to_int3 ((x unsigned_64)) Int (bv2nat (to_rep x)))

;; range_int_axiom
  (assert
  (forall ((x unsigned_64)) (! (uint_in_range
  (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-fun attr__ATTRIBUTE_MODULUS2 () (_ BitVec 64))

(declare-fun last () (_ BitVec 64))

(define-fun dynamic_property ((first_int (_ BitVec 64))
  (last_int (_ BitVec 64))
  (x (_ BitVec 64))) Bool (and (bvule first_int x) (bvule x last_int)))

(define-fun dynamic_property_int ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq2 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 64))

(declare-fun user_eq2 (unsigned_64 unsigned_64) Bool)

(declare-fun dummy2 () unsigned_64)

(declare-datatypes ()
((t101b__ref (mk_t101b__ref (t101b__content unsigned_64)))))
(define-fun t101b__ref___projection ((a t101b__ref)) unsigned_64 (t101b__content
                                                                 a))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_MODULUS3 () (_ BitVec 64))

(declare-fun last1 () (_ BitVec 64))

(define-fun dynamic_property1 ((first_int (_ BitVec 64))
  (last_int (_ BitVec 64))
  (x (_ BitVec 64))) Bool (and (bvule first_int x) (bvule x last_int)))

(define-fun dynamic_property_int1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq3 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 64))

(declare-fun user_eq3 (unsigned_64 unsigned_64) Bool)

(declare-fun dummy3 () unsigned_64)

(declare-datatypes ()
((t122b__ref (mk_t122b__ref (t122b__content unsigned_64)))))
(define-fun t122b__ref___projection ((a t122b__ref)) unsigned_64 (t122b__content
                                                                 a))

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_MODULUS4 () (_ BitVec 64))

(declare-fun last2 () (_ BitVec 64))

(define-fun dynamic_property2 ((first_int (_ BitVec 64))
  (last_int (_ BitVec 64))
  (x (_ BitVec 64))) Bool (and (bvule first_int x) (bvule x last_int)))

(define-fun dynamic_property_int2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) (_ BitVec 64))

(declare-fun user_eq4 (unsigned_64 unsigned_64) Bool)

(declare-fun dummy4 () unsigned_64)

(declare-datatypes ()
((t131b__ref (mk_t131b__ref (t131b__content unsigned_64)))))
(define-fun t131b__ref___projection ((a t131b__ref)) unsigned_64 (t131b__content
                                                                 a))

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(define-fun dynamic_invariant1 ((temp___expr_184 (_ BitVec 64))
  (temp___is_init_181 Bool) (temp___skip_constant_182 Bool)
  (temp___do_toplevel_183 Bool)) Bool true)

(declare-fun n () (_ BitVec 64))

(declare-fun n1 () (_ BitVec 64))

(declare-fun n2 () (_ BitVec 64))

(declare-fun x86__rangesintersect__B100b__res__assume () Bool)

(declare-fun n11 () (_ BitVec 64))

(declare-fun n21 () (_ BitVec 64))

(declare-fun result () (_ BitVec 64))

(declare-fun n3 () (_ BitVec 64))

(declare-fun result1 () (_ BitVec 64))

(declare-fun n12 () (_ BitVec 64))

(declare-fun result2 () (_ BitVec 64))

(declare-fun n22 () (_ BitVec 64))

(declare-fun result3 () (_ BitVec 64))

(declare-fun n13 () (_ BitVec 64))

(declare-fun result4 () (_ BitVec 64))

(declare-fun n23 () (_ BitVec 64))

(declare-fun result5 () (_ BitVec 64))

(declare-fun n14 () (_ BitVec 64))

(declare-fun result6 () (_ BitVec 64))

(declare-fun n24 () (_ BitVec 64))

(define-fun n25 () t__ref (mk_t__ref n2))

(define-fun n15 () t__ref (mk_t__ref n1))

;; H
  (assert
  (bvule var1_range_size (bvsub ((_ int2bv 64) 18446744073709551615) 
  var2_range_size)))

;; H
  (assert
  (and
  (and
  (= x86__rangesintersect__B100b__res__assume (inrange64 var1
                                              (bvsub var2 var1_range_size)
                                              (bvadd var1_range_size 
                                              var2_range_size)))
  (inrange64__function_guard x86__rangesintersect__B100b__res__assume 
  var1 (bvsub var2 var1_range_size) (bvadd var1_range_size var2_range_size)))
  (= (= x86__rangesintersect__B100b__res__assume true)
  (exists ((n4 (_ BitVec 64)))
  (and
  (and (bvule ((_ int2bv 64) 0) n4)
  (bvule n4 (bvadd var1_range_size var2_range_size)))
  (= var1 (bvadd (bvsub var2 var1_range_size) n4)))))))

;; H
  (assert (= x86__rangesintersect__B100b__res__assume res))

;; H
  (assert (= res true))

;; H
  (assert (= (mk_t__ref result) (mk_t__ref n)))

;; H
  (assert (= n3 ((_ int2bv 64) 0)))

;; H
  (assert (bvule ((_ int2bv 64) 0) n3))

;; H
  (assert (bvule n3 (bvadd var1_range_size var2_range_size)))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (bvugt n3 var1_range_size) (= (mk_t__ref result1) n15))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (bvugt n3 var1_range_size) (= n12 ((_ int2bv 64) 0)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (bvugt n3 var1_range_size) (= (mk_t__ref result2) n25))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (bvugt n3 var1_range_size) (= n22 (bvsub n3 var1_range_size)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (bvugt n3 var1_range_size) (bvule n22 var2_range_size))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (bvult n3 var2_range_size) (= (mk_t__ref result3) n15)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (bvult n3 var2_range_size) (= n13 var1_range_size)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (bvult n3 var2_range_size) (= (mk_t__ref result4) n25)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (bvult n3 var2_range_size) (= n23 n3)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (not (bvult n3 var2_range_size)) (= (mk_t__ref result5) n15)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (not (bvult n3 var2_range_size)) (= n14 (bvsub var1_range_size n3))))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (not (bvult n3 var2_range_size)) (= (mk_t__ref result6) n25)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (not (bvult n3 var2_range_size)) (= n24 ((_ int2bv 64) 0))))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (not (bvult n3 var2_range_size)) (= n23 n24)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size))
  (=> (not (bvult n3 var2_range_size)) (= n13 n14)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size)) (= n22 n23))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (=> (not (bvugt n3 var1_range_size)) (= n12 n13))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (and
  (and (and (bvule ((_ int2bv 64) 0) n12) (bvule n12 var1_range_size))
  (and (bvule ((_ int2bv 64) 0) n22) (bvule n22 var2_range_size)))
  (= (bvadd var1 n12) (bvadd var2 n22)))))

;; H
  (assert
  (=> (= var1 (bvadd (bvsub var2 var1_range_size) n3))
  (exists ((i (_ BitVec 64)))
  (and (and (bvule ((_ int2bv 64) 0) i) (bvule i var1_range_size))
  (exists ((j (_ BitVec 64)))
  (and (and (bvule ((_ int2bv 64) 0) j) (bvule j var2_range_size))
  (= (bvadd var1 i) (bvadd var2 j))))))))

;; H
  (assert
  (=> (not (= var1 (bvadd (bvsub var2 var1_range_size) n3))) (= n22 n2)))

;; H
  (assert
  (=> (not (= var1 (bvadd (bvsub var2 var1_range_size) n3))) (= n12 n1)))

;; H
  (assert
  (=> (not (= var1 (bvadd (bvsub var2 var1_range_size) n3))) (= n22 n21)))

;; H
  (assert
  (=> (not (= var1 (bvadd (bvsub var2 var1_range_size) n3))) (= n12 n11)))

(assert
;; WP_parameter_def
 ;; File "x86.ads", line 19, characters 0-0
  (not
  (or
  (forall ((m (_ BitVec 64)))
  (=> (and (bvule ((_ int2bv 64) 0) m) (bvule m n3))
  (not (= var1 (bvadd (bvsub var2 var1_range_size) m)))))
  (exists ((i (_ BitVec 64)))
  (and (and (bvule ((_ int2bv 64) 0) i) (bvule i var1_range_size))
  (exists ((j (_ BitVec 64)))
  (and (and (bvule ((_ int2bv 64) 0) j) (bvule j var2_range_size))
  (= (bvadd var1 i) (bvadd var2 j)))))))))
(check-sat)
