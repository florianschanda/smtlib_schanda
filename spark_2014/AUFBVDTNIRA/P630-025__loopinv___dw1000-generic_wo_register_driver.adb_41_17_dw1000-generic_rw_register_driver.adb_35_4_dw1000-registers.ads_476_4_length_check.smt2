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

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

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

(declare-sort bits_8 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 8))

(define-fun bool_eq2 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 8))

(declare-fun user_eq2 (bits_8 bits_8) Bool)

(declare-fun dummy2 () bits_8)

(declare-datatypes ()
((bits_8__ref (mk_bits_8__ref (bits_8__content bits_8)))))
(define-fun bits_8__ref___projection ((a bits_8__ref)) bits_8 (bits_8__content
                                                              a))

(declare-fun to_rep1 (bits_8) (_ BitVec 8))

(declare-fun of_rep1 ((_ BitVec 8)) bits_8)

;; inversion_axiom
  (assert
  (forall ((x bits_8))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))) )))

(define-fun to_int3 ((x bits_8)) Int (bv2nat (to_rep1 x)))

;; range_int_axiom
  (assert
  (forall ((x bits_8)) (! (uint_in_range
  (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int bits_8))))))
(declare-fun slide ((Array Int bits_8) Int Int) (Array Int bits_8))

;; slide_eq
  (assert
  (forall ((a (Array Int bits_8)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int bits_8)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int bits_8) Int Int (Array Int bits_8) Int
  Int) (Array Int bits_8))

;; concat_def
  (assert
  (forall ((a (Array Int bits_8)) (b (Array Int bits_8)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (bits_8 Int) (Array Int bits_8))

;; singleton_def
  (assert
  (forall ((v bits_8))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int bits_8)) (a__first Int) (a__last Int)
  (b (Array Int bits_8)) (b__first Int)
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
  (forall ((a (Array Int bits_8)) (b (Array Int bits_8)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep1 (select a temp___idx_132)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int bits_8) Int Int (Array Int bits_8) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int bits_8)) (b (Array Int bits_8)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int bits_8)) (b (Array Int bits_8)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (bvult (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int bits_8)) (b (Array Int bits_8)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
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
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high) (and (in_range1 low) (in_range1 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int bits_8))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int bits_8) (elts a))

(define-fun of_array ((a (Array Int bits_8)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int bits_8)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int bits_8)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int bits_8)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int bits_8))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int bits_8))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int bits_8))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes ()
((byte_array__ref (mk_byte_array__ref (byte_array__content us_t)))))
(define-fun byte_array__ref___projection ((a byte_array__ref)) us_t (byte_array__content
                                                                    a))

(declare-fun nth2 ((_ BitVec 32) Int) Bool)

(declare-fun lsr2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right3 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left3 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun to_int4 ((_ BitVec 32)) Int)

(define-fun uint_in_range2 ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 4294967296)) (= (bv2nat ((_ int2bv 32) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvlshr x n) (lsr2 x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvashr x n) (asr2 x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvshl x n) (lsl2 x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_left3 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_right3 v (bv2nat n)))))

(declare-fun nth_bv2 ((_ BitVec 32) (_ BitVec 32)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (= (nth_bv2 x i) true)
  (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (nth2 x (bv2nat i)) (nth_bv2 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 32)) (i Int))
  (=> (and (<= 0 i) (< i 4294967296))
  (= (nth_bv2 x ((_ int2bv 32) i)) (nth2 x i)))))

(declare-fun eq_sub_bv2 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i)))
  (= (eq_sub_bv2 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub2 ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth2 a j) (nth2 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (= (eq_sub2 a b (bv2nat i) (bv2nat n)) (eq_sub_bv2 a b i n))))

(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 (_ BitVec 32))))))
(declare-fun power2 ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun bv_min2 ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))

(define-fun bv_max2 ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))

(declare-sort bits_32 0)

(declare-fun attr__ATTRIBUTE_MODULUS1 () (_ BitVec 32))

(define-fun bool_eq5 ((x (_ BitVec 32))
  (y (_ BitVec 32))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 32))

(declare-fun user_eq4 (bits_32 bits_32) Bool)

(declare-fun dummy4 () bits_32)

(declare-datatypes ()
((bits_32__ref (mk_bits_32__ref (bits_32__content bits_32)))))
(define-fun bits_32__ref___projection ((a bits_32__ref)) bits_32 (bits_32__content
                                                                 a))

(declare-fun to_rep2 (bits_32) (_ BitVec 32))

(declare-fun of_rep2 ((_ BitVec 32)) bits_32)

;; inversion_axiom
  (assert
  (forall ((x bits_32))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 32)))
  (! (= (to_rep2 (of_rep2 x)) x) :pattern ((to_rep2 (of_rep2 x))) )))

(define-fun to_int5 ((x bits_32)) Int (bv2nat (to_rep2 x)))

;; range_int_axiom
  (assert
  (forall ((x bits_32)) (! (uint_in_range2
  (to_int5 x)) :pattern ((to_int5 x)) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__dw1000__register_types__fs_pllcfg_type__fs_pllcfg bits_32)))))
(define-fun us_split_fields_FS_PLLCFG__projection ((a us_split_fields)) bits_32 
  (rec__dw1000__register_types__fs_pllcfg_type__fs_pllcfg a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_64__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_64__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                               a))

(define-fun bool_eq6 ((a us_rep)
  (b us_rep)) Bool (ite (= (to_rep2
                           (rec__dw1000__register_types__fs_pllcfg_type__fs_pllcfg
                           (us_split_fields1 a))) (to_rep2
                                                  (rec__dw1000__register_types__fs_pllcfg_type__fs_pllcfg
                                                  (us_split_fields1 b))))
                   true false))

(declare-fun user_eq5 (us_rep us_rep) Bool)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))

(declare-fun dw1000__register_types__fs_pllcfg_type__fs_pllcfg__first__bit () Int)

(declare-fun dw1000__register_types__fs_pllcfg_type__fs_pllcfg__last__bit () Int)

(declare-fun dw1000__register_types__fs_pllcfg_type__fs_pllcfg__position () Int)

;; dw1000__register_types__fs_pllcfg_type__fs_pllcfg__first__bit_axiom
  (assert
  (<= 0 dw1000__register_types__fs_pllcfg_type__fs_pllcfg__first__bit))

;; dw1000__register_types__fs_pllcfg_type__fs_pllcfg__last__bit_axiom
  (assert
  (< dw1000__register_types__fs_pllcfg_type__fs_pllcfg__first__bit dw1000__register_types__fs_pllcfg_type__fs_pllcfg__last__bit))

;; dw1000__register_types__fs_pllcfg_type__fs_pllcfg__position_axiom
  (assert (<= 0 dw1000__register_types__fs_pllcfg_type__fs_pllcfg__position))

(declare-fun dummy5 () us_rep)

(declare-datatypes ()
((fs_pllcfg_type__ref
 (mk_fs_pllcfg_type__ref (fs_pllcfg_type__content us_rep)))))
(define-fun fs_pllcfg_type__ref___projection ((a fs_pllcfg_type__ref)) us_rep 
  (fs_pllcfg_type__content a))

(declare-datatypes ()
((register_type__ref (mk_register_type__ref (register_type__content us_rep)))))
(define-fun register_type__ref_151__projection ((a register_type__ref)) us_rep 
  (register_type__content a))

(declare-fun reg () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes ()
((tregister_byte_arrayP1__ref
 (mk_tregister_byte_arrayP1__ref (tregister_byte_arrayP1__content integer)))))
(define-fun tregister_byte_arrayP1__ref_107__projection ((a tregister_byte_arrayP1__ref)) integer 
  (tregister_byte_arrayP1__content a))

(declare-sort t1 0)

(declare-fun first2 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep (first2 (mk1 f l))) f) (= (to_rep (last3 (mk1 f l))) l)))) :pattern (
  (mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int bits_8))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int bits_8) (elts1 a))

(define-fun of_array1 ((a (Array Int bits_8)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first3 ((a us_t1)) Int (to_rep (first2 (rt1 a))))

(define-fun last4 ((a us_t1)) Int (to_rep (last3 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last4 a))
                                    (+ (- (last4 a) (first3 a)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int bits_8)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int bits_8)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int bits_8)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int bits_8))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int bits_8))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a (Array Int bits_8))) (<= 0 (object__alignment2 a))))

(define-fun bool_eq8 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep (first2 (rt1 x)))
                  (to_rep (last3 (rt1 x))) (elts1 y)
                  (to_rep (first2 (rt1 y))) (to_rep (last3 (rt1 y)))))

(declare-fun user_eq7 (us_t1 us_t1) Bool)

(declare-fun dummy7 () us_t1)

(declare-datatypes ()
((register_byte_array__ref
 (mk_register_byte_array__ref (register_byte_array__content us_t1)))))
(define-fun register_byte_array__ref_107__projection ((a register_byte_array__ref)) us_t1 
  (register_byte_array__content a))

(define-fun dynamic_invariant ((temp___expr_5567 us_t1)
  (temp___is_init_5564 Bool) (temp___skip_constant_5565 Bool)
  (temp___do_toplevel_5566 Bool)) Bool (=>
                                       (not
                                       (= temp___skip_constant_5565 true))
                                       (and (dynamic_property2 1 4
                                       (first3 temp___expr_5567)
                                       (last4 temp___expr_5567))
                                       (and (= (first3 temp___expr_5567) 1)
                                       (= (last4 temp___expr_5567) 4)))))

(declare-sort t2 0)

(declare-fun first4 (t2) integer)

(declare-fun last5 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range f)
     (=> (in_range l)
     (and (= (to_rep (first4 (mk2 f l))) f) (= (to_rep (last5 (mk2 f l))) l)))) :pattern (
  (mk2 f l)) )))

(define-fun dynamic_property3 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range low)
                   (and (in_range high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int bits_8))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int bits_8) (elts2 a))

(define-fun of_array2 ((a (Array Int bits_8)) (f Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f l)))

(define-fun first5 ((a us_t2)) Int (to_rep (first4 (rt2 a))))

(define-fun last6 ((a us_t2)) Int (to_rep (last5 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last6 a))
                                    (+ (- (last6 a) (first5 a)) 1) 0))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int bits_8)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int bits_8)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int bits_8)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a (Array Int bits_8))) (<= 0 (object__size3 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int bits_8))) (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a (Array Int bits_8))) (<= 0 (object__alignment3 a))))

(define-fun bool_eq9 ((x us_t2)
  (y us_t2)) Bool (bool_eq3 (elts2 x) (to_rep (first4 (rt2 x)))
                  (to_rep (last5 (rt2 x))) (elts2 y)
                  (to_rep (first4 (rt2 y))) (to_rep (last5 (rt2 y)))))

(declare-fun user_eq8 (us_t2 us_t2) Bool)

(declare-fun dummy8 () us_t2)

(declare-datatypes ()
((target__ref (mk_target__ref (target__content us_t2)))))
(define-fun target__ref_45__projection ((a target__ref)) us_t2 (target__content
                                                               a))

(declare-datatypes ()
((source__ref (mk_source__ref (source__content us_rep)))))
(define-fun source__ref_45__projection ((a source__ref)) us_rep (source__content
                                                                a))

(define-fun dynamic_invariant1 ((temp___expr_5583 us_t2)
  (temp___is_init_5580 Bool) (temp___skip_constant_5581 Bool)
  (temp___do_toplevel_5582 Bool)) Bool (=>
                                       (not
                                       (= temp___skip_constant_5581 true))
                                       (and (dynamic_property3 1 4
                                       (first5 temp___expr_5583)
                                       (last6 temp___expr_5583))
                                       (and (= (first5 temp___expr_5583) 1)
                                       (= (last6 temp___expr_5583) 4)))))

(declare-fun register_to_bytes (us_rep) us_t2)

(declare-fun register_to_bytes__function_guard (us_t2 us_rep) Bool)

;; register_to_bytes__post_axiom
  (assert
  (forall ((s us_rep))
  (! (let ((result (register_to_bytes s)))
     (=> (register_to_bytes__function_guard result s) (dynamic_invariant1
     result true false true))) :pattern ((register_to_bytes s)) )))

(declare-fun reg_bytes__first () integer)

(declare-fun reg_bytes__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant2 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_245 (_ BitVec 8))
  (temp___is_init_242 Bool) (temp___skip_constant_243 Bool)
  (temp___do_toplevel_244 Bool)) Bool true)

(define-fun dynamic_invariant5 ((temp___expr_587 us_t)
  (temp___is_init_584 Bool) (temp___skip_constant_585 Bool)
  (temp___do_toplevel_586 Bool)) Bool (=>
                                      (not (= temp___skip_constant_585 true))
                                      (dynamic_property 0 2147483647
                                      (first1 temp___expr_587)
                                      (last1 temp___expr_587))))

(declare-fun temp___7891 () (Array Int bits_8))

(declare-fun temp___78911 () t2)

(declare-fun temp___7892 () (Array Int bits_8))

(declare-fun temp___78921 () t1)

(define-fun temp___78912 () us_t2 (mk___t2 temp___7891 temp___78911))

;; H
  (assert
  (and (dynamic_property2 1 4 (to_rep reg_bytes__first)
  (to_rep reg_bytes__last))
  (and (= (to_rep reg_bytes__first) 1) (= (to_rep reg_bytes__last) 4))))

;; H
  (assert
  (and
  (and (= temp___78912 (register_to_bytes reg))
  (register_to_bytes__function_guard temp___78912 reg)) (dynamic_invariant1
  temp___78912 true false true)))

;; H
  (assert
  (= (ite (<= (to_rep (first4 temp___78911)) (to_rep (last5 temp___78911)))
     (+ (- (to_rep (last5 temp___78911)) (to_rep (first4 temp___78911))) 1)
     0) (ite (<= 1 4) (+ (- 4 1) 1) 0)))

;; H
  (assert (= temp___7891 temp___7892))

;; H
  (assert
  (= (mk1 (to_rep (first4 temp___78911)) (to_rep (last5 temp___78911))) 
  temp___78921))

(assert
;; WP_parameter_def
 ;; File "dw1000-generic_wo_register_driver.adb", line 28, characters 0-0
  (not
  (= (ite (<= (to_rep (first2 temp___78921)) (to_rep (last3 temp___78921)))
     (+ (- (to_rep (last3 temp___78921)) (to_rep (first2 temp___78921))) 1)
     0) (ite (<= (to_rep reg_bytes__first) (to_rep reg_bytes__last))
        (+ (- (to_rep reg_bytes__last) (to_rep reg_bytes__first)) 1) 0))))
(check-sat)
