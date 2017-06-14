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

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

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
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(declare-sort unsigned_64 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq2 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 64))

(declare-fun user_eq2 (unsigned_64 unsigned_64) Bool)

(declare-fun dummy2 () unsigned_64)

(declare-datatypes ()
((unsigned_64__ref (mk_unsigned_64__ref (unsigned_64__content unsigned_64)))))
(define-fun unsigned_64__ref___projection ((a unsigned_64__ref)) unsigned_64 
  (unsigned_64__content a))

(define-fun dynamic_invariant1 ((temp___expr_184 (_ BitVec 64))
  (temp___is_init_181 Bool) (temp___skip_constant_182 Bool)
  (temp___do_toplevel_183 Bool)) Bool true)

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

(declare-fun nth1 ((_ BitVec 8) Int) Bool)

(declare-fun lsr1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun asr1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun lsl1 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun rotate_right2 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun rotate_left2 ((_ BitVec 8) Int) (_ BitVec 8))

(declare-fun to_int3 ((_ BitVec 8)) Int)

(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 255)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 256)) (= (bv2nat ((_ int2bv 8) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvlshr x n) (lsr1 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvashr x n) (asr1 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvshl x n) (lsl1 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvor (bvshl v (bvurem n (_ bv8 8))) (bvlshr v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) 
  (rotate_left2 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 8)) (n (_ BitVec 8)))
  (= (bvor (bvlshr v (bvurem n (_ bv8 8))) (bvshl v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) 
  (rotate_right2 v (bv2nat n)))))

(declare-fun nth_bv1 ((_ BitVec 8) (_ BitVec 8)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
  (= (= (nth_bv1 x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
  (= (nth1 x (bv2nat i)) (nth_bv1 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 8)) (i Int))
  (=> (and (<= 0 i) (< i 256)) (= (nth_bv1 x ((_ int2bv 8) i)) (nth1 x i)))))

(declare-fun eq_sub_bv1 ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8)
  (_ BitVec 8)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8))
  (n (_ BitVec 8)))
  (let ((mask (bvshl (bvsub (bvshl #x01 n) #x01) i)))
  (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub1 ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8))
  (n (_ BitVec 8)))
  (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 8))))))
(declare-fun power1 ((_ BitVec 8) Int) (_ BitVec 8))

(define-fun bv_min1 ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))

(define-fun bv_max1 ((x (_ BitVec 8))
  (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))

(declare-sort unsigned_8 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 8))

(define-fun bool_eq3 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 8))

(declare-fun user_eq3 (unsigned_8 unsigned_8) Bool)

(declare-fun dummy3 () unsigned_8)

(declare-datatypes ()
((unsigned_8__ref (mk_unsigned_8__ref (unsigned_8__content unsigned_8)))))
(define-fun unsigned_8__ref___projection ((a unsigned_8__ref)) unsigned_8 
  (unsigned_8__content a))

(declare-sort my_index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483646)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (my_index my_index) Bool)

(declare-fun dummy4 () my_index)

(declare-datatypes ()
((my_index__ref (mk_my_index__ref (my_index__content my_index)))))
(define-fun my_index__ref___projection ((a my_index__ref)) my_index (my_index__content
                                                                    a))

(declare-fun to_rep1 (unsigned_8) (_ BitVec 8))

(declare-fun of_rep1 ((_ BitVec 8)) unsigned_8)

;; inversion_axiom
  (assert
  (forall ((x unsigned_8))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))) )))

(define-fun to_int4 ((x unsigned_8)) Int (bv2nat (to_rep1 x)))

;; range_int_axiom
  (assert
  (forall ((x unsigned_8)) (! (uint_in_range1
  (to_int4 x)) :pattern ((to_int4 x)) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int unsigned_8))))))
(declare-fun slide ((Array Int unsigned_8) Int Int) (Array Int unsigned_8))

;; slide_eq
  (assert
  (forall ((a (Array Int unsigned_8)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int unsigned_8)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int unsigned_8) Int Int (Array Int unsigned_8)
  Int Int) (Array Int unsigned_8))

;; concat_def
  (assert
  (forall ((a (Array Int unsigned_8)) (b (Array Int unsigned_8)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (unsigned_8 Int) (Array Int unsigned_8))

;; singleton_def
  (assert
  (forall ((v unsigned_8))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq5 ((a (Array Int unsigned_8)) (a__first Int) (a__last Int)
  (b (Array Int unsigned_8)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep1 (select a temp___idx_132)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int unsigned_8)) (b (Array Int unsigned_8)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep1 (select a temp___idx_132)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int unsigned_8) Int Int (Array Int unsigned_8)
  Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int unsigned_8)) (b (Array Int unsigned_8)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq5 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int unsigned_8)) (b (Array Int unsigned_8)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq5 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (bvult (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int unsigned_8)) (b (Array Int unsigned_8)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq5 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (bvugt (to_rep1 (select a (+ j 1))) (to_rep1 (select b (+ i 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range3 low) (in_range3 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int unsigned_8))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int unsigned_8) (elts a))

(define-fun of_array ((a (Array Int unsigned_8)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int unsigned_8)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int unsigned_8)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int unsigned_8)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int unsigned_8))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int unsigned_8))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int unsigned_8))) (<= 0 (object__alignment a))))

(define-fun bool_eq6 ((x us_t)
  (y us_t)) Bool (bool_eq5 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq5 (us_t us_t) Bool)

(declare-fun dummy5 () us_t)

(declare-datatypes ()
((byte_sequence__ref (mk_byte_sequence__ref (byte_sequence__content us_t)))))
(define-fun byte_sequence__ref___projection ((a byte_sequence__ref)) us_t 
  (byte_sequence__content a))

(define-fun dynamic_invariant2 ((temp___expr_208 us_t)
  (temp___is_init_205 Bool) (temp___skip_constant_206 Bool)
  (temp___do_toplevel_207 Bool)) Bool (=>
                                      (not (= temp___skip_constant_206 true))
                                      (dynamic_property 0 2147483646
                                      (first1 temp___expr_208)
                                      (last1 temp___expr_208))))

(declare-fun nth8_stream (us_t Int) Bool)

(declare-fun nth8_stream__function_guard (Bool us_t Int) Bool)

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

;; nth8_stream__post_axiom
  (assert true)

;; nth8_stream__def_axiom
  (assert
  (forall ((stream us_t))
  (forall ((pos Int))
  (! (=> (nth8_stream__function_guard (nth8_stream stream pos) stream pos)
     (= (= (nth8_stream stream pos) true)
     (= (nth1 (to_rep1 (select (to_array stream) (div1 pos 8)))
        (- 7 (mod1 pos 8))) true))) :pattern ((nth8_stream stream pos)) ))))

(declare-fun peekbit8 ((_ BitVec 8) Int) Bool)

(declare-fun peekbit8__function_guard (Bool (_ BitVec 8) Int) Bool)

(declare-fun peekbit8array (us_t Int) Bool)

(declare-fun peekbit8array__function_guard (Bool us_t Int) Bool)

;; peekbit8array__post_axiom
  (assert
  (forall ((addr us_t))
  (forall ((left Int))
  (! (=>
     (and
     (and (dynamic_invariant2 addr true true true) (dynamic_invariant left
     true true true)) (and (= (first1 addr) 0) (< left (* 8 (length addr)))))
     (let ((result (peekbit8array addr left)))
     (and (nth8_stream__function_guard (nth8_stream addr left) addr left)
     (=> (peekbit8array__function_guard result addr left)
     (= (= result true) (= (nth8_stream addr left) true)))))) :pattern (
  (peekbit8array addr left)) ))))

;; peekbit8array__def_axiom
  (assert
  (forall ((addr us_t))
  (forall ((left Int))
  (! (=> (peekbit8array__function_guard (peekbit8array addr left) addr left)
     (and (peekbit8__function_guard
     (peekbit8 (to_rep1 (select (to_array addr) (div1 left 8)))
     (mod1 left 8)) (to_rep1 (select (to_array addr) (div1 left 8)))
     (mod1 left 8))
     (= (= (peekbit8array addr left) true)
     (= (peekbit8 (to_rep1 (select (to_array addr) (div1 left 8)))
        (mod1 left 8)) true)))) :pattern ((peekbit8array addr left)) ))))

(declare-fun pokebit64 ((_ BitVec 64) Int Bool) (_ BitVec 64))

(declare-fun pokebit64__function_guard ((_ BitVec 64) (_ BitVec 64) Int
  Bool) Bool)

;; pokebit64__post_axiom
  (assert
  (forall ((value (_ BitVec 64)))
  (forall ((left Int))
  (forall ((flag Bool))
  (! (=>
     (and
     (and (dynamic_invariant1 value true true true) (dynamic_invariant left
     true true true)) (< left 64))
     (let ((result (pokebit64 value left flag)))
     (=> (pokebit64__function_guard result value left flag)
     (and
     (and
     (forall ((i Int))
     (=> (and (<= 0 i) (<= i 63))
     (=> (not (= i (- 63 left)))
     (= (= (nth result i) true) (= (nth value i) true)))))
     (= (= flag true) (= (nth result (- 63 left)) true))) (dynamic_invariant1
     result true false true))))) :pattern ((pokebit64 value left flag)) )))))

(declare-fun start () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun length1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun addr () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t9b__ref (mk_t9b__ref (t9b__content integer)))))
(define-fun t9b__ref___projection ((a t9b__ref)) integer (t9b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_160 (_ BitVec 8))
  (temp___is_init_157 Bool) (temp___skip_constant_158 Bool)
  (temp___do_toplevel_159 Bool)) Bool true)

;; peekbit8__post_axiom
  (assert
  (forall ((byte (_ BitVec 8)))
  (forall ((left Int))
  (! (=>
     (and
     (and (dynamic_invariant4 byte true true true) (dynamic_invariant left
     true true true)) (< left 8))
     (let ((result (peekbit8 byte left)))
     (=> (peekbit8__function_guard result byte left)
     (= (= result true) (= (nth1 byte (- 7 left)) true))))) :pattern (
  (peekbit8 byte left)) ))))

(define-fun dynamic_invariant5 ((temp___expr_202 Int)
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)) Bool (=>
                                      (or (= temp___is_init_199 true)
                                      (<= 0 2147483646)) (in_range3
                                      temp___expr_202)))

(declare-fun retval () (_ BitVec 64))

(declare-fun i () Int)

(declare-fun bitwalker__peek__result () (_ BitVec 64))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Bool)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () (_ BitVec 64))

(declare-fun bitwalker__peek__result1 () (_ BitVec 64))

(declare-fun result () Bool)

(declare-fun bitwalker__peek__result2 () (_ BitVec 64))

(declare-fun result1 () (_ BitVec 64))

(declare-fun retval1 () (_ BitVec 64))

(declare-fun result2 () Int)

(declare-fun i1 () Int)

(declare-fun retval2 () (_ BitVec 64))

(declare-fun flag () Bool)

(declare-fun i2 () Int)

(declare-fun result3 () Bool)

(declare-fun flag1 () Bool)

(declare-fun result4 () (_ BitVec 64))

(declare-fun retval3 () (_ BitVec 64))

(declare-fun result5 () Int)

(declare-fun i3 () Int)

;; H
  (assert (in_range2 start))

;; H
  (assert (in_range2 length1))

;; H
  (assert (dynamic_invariant2 addr true false true))

;; H
  (assert
  (and (= (to_rep (first (rt addr))) 0)
  (and (<= length1 64)
  (and (<= (+ start length1) 2147483647) (<= (* 8 (length addr)) 2147483647)))))

;; H
  (assert (and (= o (length addr)) (in_range1 (length addr))))

;; H
  (assert (= o1 (* 8 o)))

;; H
  (assert (and (= o2 o1) (in_range1 o1)))

;; H
  (assert (and (= o3 (+ start length1)) (in_range1 (+ start length1))))

;; H
  (assert (= result (ite (< o2 o3) true false)))

;; H
  (assert (not (= result true)))

;; H
  (assert (= bitwalker__peek__result2 bitwalker__peek__result))

;; H
  (assert (= bitwalker__peek__result2 bitwalker__peek__result1))

;; H
  (assert (= (mk_t__ref result1) (mk_t__ref retval)))

;; H
  (assert (= retval1 ((_ int2bv 64) 0)))

;; H
  (assert (= (mk_int__ref result2) (mk_int__ref i)))

;; H
  (assert (= i1 0))

;; H
  (assert (<= 0 i1))

;; H
  (assert (<= i1 (- length1 1)))

;; H
  (assert
  (forall ((j Int)) (nth8_stream__function_guard
  (nth8_stream addr (- (- (+ start length1) j) 1)) addr
  (- (- (+ start length1) j) 1))))

;; H
  (assert
  (forall ((j Int))
  (=> (and (<= (- length1 i2) j) (<= j (- length1 1)))
  (= (= (nth8_stream addr (- (- (+ start length1) j) 1)) true)
  (= (nth retval2 j) true)))))

;; H
  (assert
  (forall ((j Int))
  (=> (and (<= length1 j) (<= j 63)) (not (= (nth retval2 j) true)))))

;; H
  (assert (peekbit8__function_guard
  (peekbit8 (to_rep1 (select (elts addr) (div1 o4 8))) (mod1 o4 8))
  (to_rep1 (select (elts addr) (div1 o4 8))) (mod1 o4 8)))

;; H
  (assert (nth8_stream__function_guard (nth8_stream addr o4) addr o4))

;; H
  (assert
  (and (=> (<= 0 (- length1 1)) (dynamic_property1 0 (- length1 1) i2))
  (and (<= 0 i2) (<= i2 (- length1 1)))))

;; H
  (assert (and (= o4 (+ start i2)) (in_range1 (+ start i2))))

;; H
  (assert
  (and
  (and (= o5 (peekbit8array addr o4)) (peekbit8array__function_guard 
  o5 addr o4))
  (and
  (= (= o5 true)
  (= (peekbit8 (to_rep1 (select (elts addr) (div1 o4 8))) (mod1 o4 8)) true))
  (= (= o5 true) (= (nth8_stream addr o4) true)))))

;; H
  (assert (= flag result3))

;; H
  (assert (= flag1 o5))

;; H
  (assert
  (and (= o6 (+ (- 64 length1) i2)) (in_range1 (+ (- 64 length1) i2))))

;; H
  (assert (and (= o7 o6) (in_range2 o6)))

;; H
  (assert
  (and
  (and (= o8 (pokebit64 retval2 o7 flag1)) (pokebit64__function_guard 
  o8 retval2 o7 flag1))
  (and
  (forall ((i4 Int))
  (=> (and (<= 0 i4) (<= i4 63))
  (=> (not (= i4 (- 63 o7)))
  (= (= (nth o8 i4) true) (= (nth retval2 i4) true)))))
  (= (= flag1 true) (= (nth o8 (- 63 o7)) true)))))

;; H
  (assert (= retval2 result4))

;; H
  (assert (= retval3 o8))

;; H
  (assert (not (= i2 (- length1 1))))

;; H
  (assert (= result5 i2))

;; H
  (assert (= i3 (+ i2 1)))

(declare-fun j () Int)

;; H
  (assert (<= length1 j))

;; H
  (assert (<= j 63))

(assert
;; WP_parameter_def
 ;; File "interfac.ads", line 77, characters 0-0
  (not (not (= (nth retval3 j) true))))
(check-sat)
