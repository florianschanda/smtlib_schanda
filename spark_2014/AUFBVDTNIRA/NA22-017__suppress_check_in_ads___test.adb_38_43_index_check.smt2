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

(declare-fun nth ((_ BitVec 32) Int) Bool)

(declare-fun lsr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun pow2 (Int) Int)

(declare-fun to_int1 ((_ BitVec 32)) Int)

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 4294967296)) (= (bv2nat ((_ int2bv 32) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvlshr x n) (lsr x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvashr x n) (asr x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvshl x n) (lsl x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_left1 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_right1 v (bv2nat n)))))

(declare-fun nth_bv ((_ BitVec 32) (_ BitVec 32)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (= (nth_bv x i) true)
  (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (nth x (bv2nat i)) (nth_bv x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 32)) (i Int))
  (=> (and (<= 0 i) (< i 4294967296))
  (= (nth_bv x ((_ int2bv 32) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 32))))))
(declare-fun power ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun bv_min ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))

(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort tindexB 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 128) x) (<= x 127)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (tindexB tindexB) Bool)

(declare-fun dummy () tindexB)

(declare-datatypes ()
((tindexB__ref (mk_tindexB__ref (tindexB__content tindexB)))))
(define-fun tindexB__ref___projection ((a tindexB__ref)) tindexB (tindexB__content
                                                                 a))

(declare-fun to_rep (tindexB) Int)

(declare-fun of_rep (Int) tindexB)

;; inversion_axiom
  (assert
  (forall ((x tindexB)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x tindexB)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 79)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index index) Bool)

(declare-fun dummy1 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-sort word32 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 32))

(define-fun bool_eq2 ((x (_ BitVec 32))
  (y (_ BitVec 32))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 32))

(declare-fun user_eq2 (word32 word32) Bool)

(declare-fun dummy2 () word32)

(declare-datatypes ()
((word32__ref (mk_word32__ref (word32__content word32)))))
(define-fun word32__ref___projection ((a word32__ref)) word32 (word32__content
                                                              a))

(declare-fun to_rep1 (word32) (_ BitVec 32))

(declare-fun of_rep1 ((_ BitVec 32)) word32)

;; inversion_axiom
  (assert
  (forall ((x word32))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 32)))
  (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))) )))

(define-fun to_int3 ((x word32)) Int (bv2nat (to_rep1 x)))

;; range_int_axiom
  (assert
  (forall ((x word32)) (! (uint_in_range
  (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int word32))))))
(declare-fun slide ((Array Int word32) Int Int) (Array Int word32))

;; slide_eq
  (assert
  (forall ((a (Array Int word32)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int word32)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int word32) Int Int (Array Int word32) Int
  Int) (Array Int word32))

;; concat_def
  (assert
  (forall ((a (Array Int word32)) (b (Array Int word32)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (word32 Int) (Array Int word32))

;; singleton_def
  (assert
  (forall ((v word32))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int word32)) (a__first Int) (a__last Int)
  (b (Array Int word32)) (b__first Int)
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
  (forall ((a (Array Int word32)) (b (Array Int word32)))
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

(declare-fun compare ((Array Int word32) Int Int (Array Int word32) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int word32)) (b (Array Int word32)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int word32)) (b (Array Int word32)))
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
  (forall ((a (Array Int word32)) (b (Array Int word32)))
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

(declare-fun first (t) tindexB)

(declare-fun last (t) tindexB)

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
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int word32))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int word32) (elts a))

(define-fun of_array ((a (Array Int word32)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int word32)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int word32)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int word32)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int word32))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int word32))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int word32))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes ()
((word32_array_type__ref
 (mk_word32_array_type__ref (word32_array_type__content us_t)))))
(define-fun word32_array_type__ref___projection ((a word32_array_type__ref)) us_t 
  (word32_array_type__content a))

(define-fun dynamic_invariant ((temp___expr_214 us_t)
  (temp___is_init_211 Bool) (temp___skip_constant_212 Bool)
  (temp___do_toplevel_213 Bool)) Bool (=>
                                      (not (= temp___skip_constant_212 true))
                                      (dynamic_property 0 79
                                      (first1 temp___expr_214)
                                      (last1 temp___expr_214))))

(declare-fun xor2 ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(declare-fun xor2__function_guard ((_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

(define-fun dynamic_invariant1 ((temp___expr_208 (_ BitVec 32))
  (temp___is_init_205 Bool) (temp___skip_constant_206 Bool)
  (temp___do_toplevel_207 Bool)) Bool true)

;; xor2__post_axiom
  (assert
  (forall ((v0 (_ BitVec 32)) (v1 (_ BitVec 32)))
  (! (=>
     (and (dynamic_invariant1 v0 true true true) (dynamic_invariant1 v1 true
     true true))
     (let ((result (xor2 v0 v1)))
     (=> (xor2__function_guard result v0 v1)
     (and (= result (bvxor v0 v1)) (dynamic_invariant1 result true false
     true))))) :pattern ((xor2 v0 v1)) )))

(declare-fun left () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun right () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun result____first () tindexB)

(declare-fun result____last () tindexB)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (tindexB tindexB) Bool)

(declare-fun dummy4 () tindexB)

(declare-datatypes () ((t13b__ref (mk_t13b__ref (t13b__content tindexB)))))
(define-fun t13b__ref___projection ((a t13b__ref)) tindexB (t13b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant2 ((temp___expr_202 Int)
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)) Bool (=>
                                      (or (= temp___is_init_199 true)
                                      (<= 0 79)) (in_range2 temp___expr_202)))

(declare-fun result__ () (Array Int word32))

(declare-fun i () Int)

(declare-fun o () Int)

(declare-fun o1 () word32)

(declare-fun o2 () (_ BitVec 32))

(declare-fun o3 () Int)

(declare-fun o4 () word32)

(declare-fun o5 () (_ BitVec 32))

(declare-fun o6 () (_ BitVec 32))

(declare-fun o7 () word32)

(declare-fun o8 () (Array Int word32))

(declare-fun pos () Int)

(declare-fun o9 () Int)

(declare-fun o10 () word32)

(declare-fun o11 () (_ BitVec 32))

(declare-fun result () Int)

(declare-fun i1 () Int)

(declare-fun result1 () (Array Int word32))

(declare-fun result__1 () (Array Int word32))

(declare-fun result__2 () (Array Int word32))

(declare-fun i2 () Int)

;; H
  (assert (dynamic_invariant left true false true))

;; H
  (assert (dynamic_invariant right true false true))

;; H
  (assert (dynamic_property 0 79 (to_rep result____first)
  (to_rep result____last)))

;; H
  (assert
  (and
  (and
  (and (= (to_rep (first (rt left))) (to_rep (first (rt right))))
  (= (to_rep (last (rt left))) (to_rep (last (rt right)))))
  (= (to_rep (first (rt right))) (to_rep result____first)))
  (= (to_rep (last (rt right))) (to_rep result____last))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref i)))

;; H
  (assert (= i1 (to_rep result____first)))

;; H
  (assert (<= (to_rep result____first) i1))

;; H
  (assert (<= i1 (to_rep result____last)))

;; H
  (assert
  (and (<= (to_rep (first (rt right))) i1)
  (<= i1 (to_rep (last (rt right))))))

;; H
  (assert (= o3 i1))

;; H
  (assert (= o4 (select (elts right) o3)))

;; H
  (assert (= o5 (to_rep1 o4)))

;; H
  (assert
  (and (<= (to_rep (first (rt left))) i1) (<= i1 (to_rep (last (rt left))))))

;; H
  (assert (= o i1))

;; H
  (assert (= o1 (select (elts left) o)))

;; H
  (assert (= o2 (to_rep1 o1)))

;; H
  (assert
  (and (and (= o6 (xor2 o2 o5)) (xor2__function_guard o6 o2 o5))
  (= o6 (bvxor o2 o5))))

;; H
  (assert (= (to_rep1 o7) o6))

;; H
  (assert (= o8 (store result__ i1 o7)))

;; H
  (assert (= (mk_map__ref result1) (mk_map__ref result__)))

;; H
  (assert (= result__1 o8))

;; H
  (assert
  (forall ((pos1 Int)) (xor2__function_guard
  (xor2 (to_rep1 (select (elts left) pos1))
  (to_rep1 (select (elts right) pos1))) (to_rep1 (select (elts left) pos1))
  (to_rep1 (select (elts right) pos1)))))

;; H
  (assert
  (forall ((pos1 Int))
  (=> (and (<= (to_rep result____first) pos1) (<= pos1 i2))
  (= (to_rep1 (select result__2 pos1)) (xor2
                                       (to_rep1 (select (elts left) pos1))
                                       (to_rep1 (select (elts right) pos1)))))))

;; H
  (assert
  (and
  (and
  (=> (<= (to_rep result____first) (to_rep result____last))
  (dynamic_property1 (to_rep result____first) (to_rep result____last) 
  i2))
  (forall ((temp___297 Int))
  (=>
  (and (<= (to_rep result____first) temp___297)
  (<= temp___297 (to_rep result____last)))
  (=> (< i2 temp___297)
  (= (select result__2 temp___297) (select result__ temp___297))))))
  (and (<= (to_rep result____first) i2) (<= i2 (to_rep result____last)))))

;; H
  (assert (<= (to_rep result____first) pos))

;; H
  (assert (<= pos i2))

;; H
  (assert
  (and (<= (to_rep (first (rt right))) pos)
  (<= pos (to_rep (last (rt right))))))

;; H
  (assert (= o9 pos))

;; H
  (assert (= o10 (select (elts right) o9)))

;; H
  (assert (= o11 (to_rep1 o10)))

(assert
;; WP_parameter_def
 ;; File "test.ads", line 19, characters 0-0
  (not (<= (to_rep (first (rt left))) pos)))
(check-sat)
