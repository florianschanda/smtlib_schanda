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

(declare-fun nth1 ((_ BitVec 64) Int) Bool)

(declare-fun lsr1 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun asr1 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun lsl1 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_right2 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_left2 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun to_int2 ((_ BitVec 64)) Int)

(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i)
                                          (<= i 18446744073709551615)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (bv2nat ((_ int2bv 64) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvlshr x n) (lsr1 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvashr x n) (asr1 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvshl x n) (lsl1 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_left2 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_right2 v (bv2nat n)))))

(declare-fun nth_bv1 ((_ BitVec 64) (_ BitVec 64)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (= (nth_bv1 x i) true)
  (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (nth1 x (bv2nat i)) (nth_bv1 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 64)) (i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (nth_bv1 x ((_ int2bv 64) i)) (nth1 x i)))))

(declare-fun eq_sub_bv1 ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)
  (_ BitVec 64)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i)))
  (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub1 ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 64))))))
(declare-fun power1 ((_ BitVec 64) Int) (_ BitVec 64))

(define-fun bv_min1 ((x (_ BitVec 64))
  (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))

(define-fun bv_max1 ((x (_ BitVec 64))
  (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))

(define-fun to_int3 ((b Bool)) Int (ite (= b true) 1 0))

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

(define-fun to_int4 ((x unsigned8)) Int (bv2nat (to_rep x)))

;; range_int_axiom
  (assert
  (forall ((x unsigned8)) (! (uint_in_range
  (to_int4 x)) :pattern ((to_int4 x)) )))

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
     (and (not (= range_size ((_ int2bv 64) 0)))
     (ite (bvule bottom (bvsub ((_ int2bv 64) 18446744073709551615) (bvsub range_size ((_ int2bv 64) 1))))
     (and (bvule bottom var)
     (bvule var (bvadd bottom (bvsub range_size ((_ int2bv 64) 1)))))
     (or
     (and (bvule bottom var)
     (bvule var ((_ int2bv 64) 18446744073709551615)))
     (bvule var (bvsub (bvsub range_size (bvsub ((_ int2bv 64) 18446744073709551615) bottom)) ((_ int2bv 64) 2)))))))))) :pattern (
  (inrange64 var bottom range_size)) )))

;; inrange64__def_axiom
  (assert
  (forall ((var (_ BitVec 64)) (bottom (_ BitVec 64))
  (range_size (_ BitVec 64)))
  (! (=> (inrange64__function_guard (inrange64 var bottom range_size) var
     bottom range_size)
     (= (= (inrange64 var bottom range_size) true)
     (and (not (= range_size ((_ int2bv 64) 0)))
     (ite (bvule bottom (bvsub ((_ int2bv 64) 18446744073709551615) (bvsub range_size ((_ int2bv 64) 1))))
     (and (bvule bottom var)
     (bvule var (bvadd bottom (bvsub range_size ((_ int2bv 64) 1)))))
     (or (bvule bottom var)
     (bvule var (bvsub (bvsub range_size (bvsub ((_ int2bv 64) 18446744073709551615) bottom)) ((_ int2bv 64) 2)))))))) :pattern (
  (inrange64 var bottom range_size)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun hasmem64 ((Array (_ BitVec 64) unsigned8) (_ BitVec 64)
  (_ BitVec 64)) Bool)

(declare-fun hasmem64__function_guard (Bool (Array (_ BitVec 64) unsigned8)
  (_ BitVec 64) (_ BitVec 64)) Bool)

;; hasmem64__post_axiom
  (assert true)

;; hasmem64__def_axiom
  (assert
  (forall ((mem (Array (_ BitVec 64) unsigned8)))
  (forall ((addr (_ BitVec 64)) (val__ (_ BitVec 64)))
  (! (=> (hasmem64__function_guard (hasmem64 mem addr val__) mem addr val__)
     (= (= (hasmem64 mem addr val__) true)
     (and
     (and
     (and
     (and
     (and
     (and
     (and
     (= (bvand val__ ((_ int2bv 64) 255)) ((_ zero_extend 56) (to_rep
                                                              (select mem addr))))
     (= (bvand val__ ((_ int2bv 64) 65280)) (bvmul ((_ zero_extend 56) 
     (to_rep (select mem (bvadd addr ((_ int2bv 64) 1))))) ((_ int2bv 64) 256))))
     (= (bvand val__ ((_ int2bv 64) 16711680)) (bvmul ((_ zero_extend 56) 
     (to_rep (select mem (bvadd addr ((_ int2bv 64) 2))))) ((_ int2bv 64) 65536))))
     (= (bvand val__ ((_ int2bv 64) 4278190080)) (bvmul ((_ zero_extend 56) 
     (to_rep (select mem (bvadd addr ((_ int2bv 64) 3))))) ((_ int2bv 64) 16777216))))
     (= (bvand val__ ((_ int2bv 64) 1095216660480)) (bvmul ((_ zero_extend 56) 
     (to_rep (select mem (bvadd addr ((_ int2bv 64) 4))))) ((_ int2bv 64) 4294967296))))
     (= (bvand val__ ((_ int2bv 64) 280375465082880)) (bvmul ((_ zero_extend 56) 
     (to_rep (select mem (bvadd addr ((_ int2bv 64) 5))))) ((_ int2bv 64) 1099511627776))))
     (= (bvand val__ ((_ int2bv 64) 71776119061217280)) (bvmul ((_ zero_extend 56) 
     (to_rep (select mem (bvadd addr ((_ int2bv 64) 6))))) ((_ int2bv 64) 281474976710656))))
     (= (bvand val__ ((_ int2bv 64) 18374686479671623680)) (bvmul ((_ zero_extend 56) 
     (to_rep (select mem (bvadd addr ((_ int2bv 64) 7))))) ((_ int2bv 64) 72057594037927936)))))) :pattern (
  (hasmem64 mem addr val__)) ))))

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
     (and (hasmem64__function_guard (hasmem64 x86__memory addr result)
     x86__memory addr result)
     (=> (readmem64__function_guard result addr x86__memory)
     (and (= (hasmem64 x86__memory addr result) true) (dynamic_invariant
     result true false true)))))) :pattern ((readmem64 addr x86__memory)) ))))

(declare-fun nooverlap8equal ((Array (_ BitVec 64) unsigned8)
  (Array (_ BitVec 64) unsigned8) (_ BitVec 64)) Bool)

(declare-fun nooverlap8equal__function_guard (Bool
  (Array (_ BitVec 64) unsigned8) (Array (_ BitVec 64) unsigned8)
  (_ BitVec 64)) Bool)

(declare-fun all_equal_rax ((_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) unsigned8) (_ BitVec 64)) Bool)

(declare-fun all_equal_rax__function_guard (Bool (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) unsigned8) (_ BitVec 64)) Bool)

;; all_equal_rax__post_axiom
  (assert true)

;; all_equal_rax__def_axiom
  (assert
  (forall ((start (_ BitVec 64)) (last (_ BitVec 64))
  (x86__rax (_ BitVec 64)))
  (forall ((x86__memory (Array (_ BitVec 64) unsigned8)))
  (! (=> (all_equal_rax__function_guard
     (all_equal_rax start last x86__memory x86__rax) start last x86__memory
     x86__rax)
     (and
     (forall ((i (_ BitVec 64))) (readmem64__function_guard
     (readmem64 (bvadd start (bvmul i ((_ int2bv 64) 8))) x86__memory)
     (bvadd start (bvmul i ((_ int2bv 64) 8))) x86__memory))
     (= (= (all_equal_rax start last x86__memory x86__rax) true)
     (forall ((i (_ BitVec 64)))
     (=> (and (bvule ((_ int2bv 64) 0) i) (bvule i last))
     (= (readmem64 (bvadd start (bvmul i ((_ int2bv 64) 8))) x86__memory) x86__rax)))))) :pattern (
  (all_equal_rax start last x86__memory x86__rax)) ))))

(declare-fun rcx_start () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun rdi_start () (_ BitVec 64))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun nooverlap8 ((_ BitVec 64) (_ BitVec 64)) Bool)

(declare-fun nooverlap8__function_guard (Bool (_ BitVec 64)
  (_ BitVec 64)) Bool)

(define-fun dynamic_invariant1 ((temp___expr_220 (_ BitVec 8))
  (temp___is_init_217 Bool) (temp___skip_constant_218 Bool)
  (temp___do_toplevel_219 Bool)) Bool true)

;; nooverlap8__post_axiom
  (assert true)

;; nooverlap8__def_axiom
  (assert
  (forall ((addr1 (_ BitVec 64)) (addr2 (_ BitVec 64)))
  (! (=> (nooverlap8__function_guard (nooverlap8 addr1 addr2) addr1 addr2)
     (= (= (nooverlap8 addr1 addr2) true)
     (and
     (and
     (and
     (and
     (and
     (and
     (and (not (= addr1 addr2))
     (not (= addr1 (bvadd addr2 ((_ int2bv 64) 1)))))
     (not (= addr1 (bvadd addr2 ((_ int2bv 64) 2)))))
     (not (= addr1 (bvadd addr2 ((_ int2bv 64) 3)))))
     (not (= addr1 (bvadd addr2 ((_ int2bv 64) 4)))))
     (not (= addr1 (bvadd addr2 ((_ int2bv 64) 5)))))
     (not (= addr1 (bvadd addr2 ((_ int2bv 64) 6)))))
     (not (= addr1 (bvadd addr2 ((_ int2bv 64) 7))))))) :pattern ((nooverlap8
                                                                  addr1
                                                                  addr2)) )))

;; nooverlap8equal__post_axiom
  (assert true)

;; nooverlap8equal__def_axiom
  (assert
  (forall ((mem1 (Array (_ BitVec 64) unsigned8))
  (mem2 (Array (_ BitVec 64) unsigned8)))
  (forall ((addr (_ BitVec 64)))
  (! (=> (nooverlap8equal__function_guard (nooverlap8equal mem1 mem2 addr)
     mem1 mem2 addr)
     (and
     (forall ((i (_ BitVec 64))) (nooverlap8__function_guard
     (nooverlap8 i addr) i addr))
     (= (= (nooverlap8equal mem1 mem2 addr) true)
     (forall ((i (_ BitVec 64)))
     (=>
     (and (bvule ((_ int2bv 64) 0) i)
     (bvule i ((_ int2bv 64) 18446744073709551615)))
     (=> (= (nooverlap8 i addr) true)
     (= (to_rep (select mem1 i)) (to_rep (select mem2 i))))))))) :pattern (
  (nooverlap8equal mem1 mem2 addr)) ))))

(declare-fun rax () (_ BitVec 64))

(declare-fun rcx () (_ BitVec 64))

(declare-fun rdi () (_ BitVec 64))

(declare-fun memory () (Array (_ BitVec 64) unsigned8))

(declare-fun mem () (Array (_ BitVec 64) unsigned8))

(declare-fun result () (Array (_ BitVec 64) unsigned8))

(declare-fun mem1 () (Array (_ BitVec 64) unsigned8))

(declare-fun memory1 () (Array (_ BitVec 64) unsigned8))

;; H
  (assert (bvult rcx ((_ int2bv 64) 2305843009213693951)))

;; H
  (assert (= rcx rcx_start))

;; H
  (assert (= rdi rdi_start))

;; H
  (assert (not (= rcx ((_ int2bv 64) 0))))

;; H
  (assert
  (forall ((i (_ BitVec 64))) (readmem64__function_guard
  (readmem64 (bvadd rdi (bvmul i ((_ int2bv 64) 8))) memory)
  (bvadd rdi (bvmul i ((_ int2bv 64) 8))) memory)))

;; H
  (assert
  (forall ((i (_ BitVec 64)))
  (=> (and (bvule ((_ int2bv 64) 0) i) (bvule i (bvsub rcx rcx)))
  (=> (not (= i (bvsub rcx rcx)))
  (= (readmem64 (bvadd rdi (bvmul i ((_ int2bv 64) 8))) memory) rax)))))

;; H
  (assert (= (mk_map__ref result) (mk_map__ref mem)))

;; H
  (assert (= mem1 memory))

;; H
  (assert (hasmem64__function_guard (hasmem64 memory1 rdi rax) memory1 
  rdi rax))

;; H
  (assert (nooverlap8equal__function_guard
  (nooverlap8equal memory1 memory rdi) memory1 memory rdi))

;; H
  (assert
  (and (= (hasmem64 memory1 rdi rax) true)
  (= (nooverlap8equal memory1 memory rdi) true)))

;; H
  (assert
  (forall ((i (_ BitVec 64))) (hasmem64__function_guard
  (hasmem64 mem1 (bvadd rdi_start (bvmul i ((_ int2bv 64) 8))) rax) mem1
  (bvadd rdi_start (bvmul i ((_ int2bv 64) 8))) rax)))

;; H
  (assert
  (forall ((i (_ BitVec 64)))
  (=> (and (bvule ((_ int2bv 64) 0) i) (bvule i (bvsub rcx_start rcx)))
  (=> (not (= i (bvsub rcx_start rcx)))
  (= (hasmem64 mem1 (bvadd rdi_start (bvmul i ((_ int2bv 64) 8))) rax) true)))))

;; H
  (assert
  (forall ((i (_ BitVec 64))) (readmem64__function_guard
  (readmem64 (bvadd rdi_start (bvmul i ((_ int2bv 64) 8))) memory1)
  (bvadd rdi_start (bvmul i ((_ int2bv 64) 8))) memory1)))

;; H
  (assert
  (forall ((i (_ BitVec 64)))
  (=> (and (bvule ((_ int2bv 64) 0) i) (bvule i (bvsub rcx_start rcx)))
  (=> (not (= i (bvsub rcx_start rcx)))
  (= (readmem64 (bvadd rdi_start (bvmul i ((_ int2bv 64) 8))) memory1) 
  rax)))))

;; H
  (assert (readmem64__function_guard
  (readmem64
  (bvadd rdi_start (bvmul (bvsub rcx_start rcx) ((_ int2bv 64) 8))) memory1)
  (bvadd rdi_start (bvmul (bvsub rcx_start rcx) ((_ int2bv 64) 8))) memory1))

;; H
  (assert
  (= (readmem64
     (bvadd rdi_start (bvmul (bvsub rcx_start rcx) ((_ int2bv 64) 8)))
     memory1) rax))

(declare-fun i () (_ BitVec 64))

;; H
  (assert (bvule ((_ int2bv 64) 0) i))

;; H
  (assert (bvule i ((_ int2bv 64) 18446744073709551615)))

;; H
  (assert (inrange64__function_guard
  (inrange64 i rdi (bvmul rcx ((_ int2bv 64) 8))) i rdi
  (bvmul rcx ((_ int2bv 64) 8))))

;; H
  (assert (not (= (inrange64 i rdi (bvmul rcx ((_ int2bv 64) 8))) true)))

(assert
;; WP_parameter_def
 ;; File "x86.ads", line 714, characters 0-0
  (not (= (to_rep (select memory i)) (to_rep (select memory1 i)))))
(check-sat)
