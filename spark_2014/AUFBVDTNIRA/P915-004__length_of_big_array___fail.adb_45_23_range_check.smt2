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

(declare-sort long_long_integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 9223372036854775808) x)
                                     (<= x 9223372036854775807)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (long_long_integer long_long_integer) Bool)

(declare-fun dummy () long_long_integer)

(declare-datatypes ()
((long_long_integer__ref
 (mk_long_long_integer__ref (long_long_integer__content long_long_integer)))))
(define-fun long_long_integer__ref___projection ((a long_long_integer__ref)) long_long_integer 
  (long_long_integer__content a))

(declare-sort my_index 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq1 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 64))

(declare-fun user_eq1 (my_index my_index) Bool)

(declare-fun dummy1 () my_index)

(declare-datatypes ()
((my_index__ref (mk_my_index__ref (my_index__content my_index)))))
(define-fun my_index__ref___projection ((a my_index__ref)) my_index (my_index__content
                                                                    a))

(declare-fun to_rep (my_index) (_ BitVec 64))

(declare-fun of_rep ((_ BitVec 64)) my_index)

;; inversion_axiom
  (assert
  (forall ((x my_index))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 64)))
  (! (= (to_rep (of_rep x)) x) :pattern ((to_rep (of_rep x))) )))

(define-fun to_int3 ((x my_index)) Int (bv2nat (to_rep x)))

;; range_int_axiom
  (assert
  (forall ((x my_index)) (! (uint_in_range
  (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array (_ BitVec 64) Bool))))))
(declare-fun slide ((Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

;; slide_eq
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)))
  (forall ((first (_ BitVec 64)))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)))
  (forall ((old_first (_ BitVec 64)))
  (forall ((new_first (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (= (select (slide a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

;; concat_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (and
     (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (bvugt i a_last)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (bvadd (bvsub i a_last) (bvsub b_first #x0000000000000001)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (Bool (_ BitVec 64)) (Array (_ BitVec 64) Bool))

;; singleton_def
  (assert
  (forall ((v Bool))
  (forall ((i (_ BitVec 64)))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array (_ BitVec 64) Bool)) (a__first (_ BitVec 64))
  (a__last (_ BitVec 64)) (b (Array (_ BitVec 64) Bool))
  (b__first (_ BitVec 64))
  (b__last (_ BitVec 64))) Bool (ite (and
                                     (ite (bvule a__first a__last)
                                     (and (bvule b__first b__last)
                                     (= (bvsub a__last a__first) (bvsub b__last b__first)))
                                     (bvugt b__first b__last))
                                     (forall ((temp___idx_133 (_ BitVec 64)))
                                     (=>
                                     (and (bvule a__first temp___idx_133)
                                     (bvule temp___idx_133 a__last))
                                     (= (select a temp___idx_133) (select b (bvadd (bvsub b__first a__first) temp___idx_133))))))
                                true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a__first (_ BitVec 64)) (a__last (_ BitVec 64))
  (b__first (_ BitVec 64)) (b__last (_ BitVec 64)))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (bvule a__first a__last)
  (and (bvule b__first b__last)
  (= (bvsub a__last a__first) (bvsub b__last b__first)))
  (bvugt b__first b__last))
  (forall ((temp___idx_133 (_ BitVec 64)))
  (=> (and (bvule a__first temp___idx_133) (bvule temp___idx_133 a__last))
  (= (select a temp___idx_133) (select b (bvadd (bvsub b__first a__first) temp___idx_133))))))))))

(declare-fun compare ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i (_ BitVec 64)) (j (_ BitVec 64)))
     (and (bvule i a_last)
     (and (bvult j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (bvult i a_last)
     (< (to_int2 (select a (bvadd i #x0000000000000001))) (to_int2
                                                          (select b (bvadd j #x0000000000000001))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i (_ BitVec 64)) (j (_ BitVec 64)))
     (and (bvule i b_last)
     (and (bvult j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (bvult i b_last)
     (< (to_int2 (select b (bvadd i #x0000000000000001))) (to_int2
                                                          (select a (bvadd j #x0000000000000001))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun xorb ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

(declare-fun andb ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

(declare-fun orb ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

(declare-fun notb ((Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (orb a a_first a_last b b_first b_last) i) (or (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (orb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (andb a a_first a_last b b_first b_last) i) (and (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (andb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (xorb a a_first a_last b b_first b_last) i) (xor (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (xorb a a_first a_last b b_first b_last) i)) )))))

;; notb_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (notb a a_first a_last) i) (not (select a i)))) :pattern ((select 
  (notb a a_first a_last) i)) )))))

(declare-sort t 0)

(declare-fun first (t) my_index)

(declare-fun last (t) my_index)

(declare-fun mk ((_ BitVec 64) (_ BitVec 64)) t)

;; mk_def
  (assert
  (forall ((f (_ BitVec 64)) (l (_ BitVec 64)))
  (! (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first (_ BitVec 64))
  (range_last (_ BitVec 64)) (low (_ BitVec 64))
  (high (_ BitVec 64))) Bool true)

(declare-datatypes ()
((us_t (mk___t (elts (Array (_ BitVec 64) Bool))(rt t)))))
(define-fun to_array ((a us_t)) (Array (_ BitVec 64) Bool) (elts a))

(define-fun of_array ((a (Array (_ BitVec 64) Bool)) (f (_ BitVec 64))
  (l (_ BitVec 64))) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) (_ BitVec 64) (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) (_ BitVec 64) (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (bvule (first1 a) (last1 a))
                                  (+ (- (bv2nat (last1 a)) (bv2nat (first1 a))) 1)
                                  0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array (_ BitVec 64) Bool)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array (_ BitVec 64) Bool)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array (_ BitVec 64) Bool)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array (_ BitVec 64) Bool))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)))
  (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert
  (forall ((a (Array (_ BitVec 64) Bool))) (<= 0 (object__alignment a))))

(define-fun bool_eq3 ((x us_t)
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq2 (us_t us_t) Bool)

(declare-fun dummy2 () us_t)

(declare-datatypes () ((a__ref (mk_a__ref (a__content us_t)))))
(define-fun a__ref___projection ((a a__ref)) us_t (a__content a))

(define-fun dynamic_invariant ((temp___expr_293 us_t)
  (temp___is_init_290 Bool) (temp___skip_constant_291 Bool)
  (temp___do_toplevel_292 Bool)) Bool (=>
                                      (not (= temp___skip_constant_291 true))
                                      (dynamic_property ((_ int2bv 64) 0)
                                      ((_ int2bv 64) 18446744073709551615)
                                      (first1 temp___expr_293)
                                      (last1 temp___expr_293))))

(declare-fun create ((_ BitVec 64)) us_t)

(declare-fun create__function_guard (us_t (_ BitVec 64)) Bool)

(declare-fun c () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant1 ((temp___expr_27 Int) (temp___is_init_24 Bool)
  (temp___skip_constant_25 Bool)
  (temp___do_toplevel_26 Bool)) Bool (=>
                                     (or (= temp___is_init_24 true)
                                     (<= (- 9223372036854775808) 9223372036854775807))
                                     (in_range1 temp___expr_27)))

(define-fun dynamic_invariant2 ((temp___expr_287 (_ BitVec 64))
  (temp___is_init_284 Bool) (temp___skip_constant_285 Bool)
  (temp___do_toplevel_286 Bool)) Bool true)

;; create__post_axiom
  (assert
  (forall ((last2 (_ BitVec 64)))
  (! (=> (dynamic_invariant2 last2 true true true)
     (let ((result (create last2)))
     (=> (create__function_guard result last2)
     (and
     (and (= (last1 result) last2) (= (first1 result) ((_ int2bv 64) 0)))
     (dynamic_invariant result true false true))))) :pattern ((create last2)) )))

;; c__def_axiom
  (assert
  (and (create__function_guard (create ((_ int2bv 64) 18446744073709551615))
  ((_ int2bv 64) 18446744073709551615))
  (= c (create ((_ int2bv 64) 18446744073709551615)))))

;; H
  (assert (dynamic_invariant c true false true))

;; H
  (assert (= (create ((_ int2bv 64) 18446744073709551615)) c))

;; H
  (assert
  (and (= (to_rep (first (rt c))) ((_ int2bv 64) 0))
  (= (to_rep (last (rt c))) ((_ int2bv 64) 18446744073709551615))))

(assert
;; WP_parameter_def
 ;; File "fail.adb", line 32, characters 0-0
  (not (in_range1 (length c))))
(check-sat)
