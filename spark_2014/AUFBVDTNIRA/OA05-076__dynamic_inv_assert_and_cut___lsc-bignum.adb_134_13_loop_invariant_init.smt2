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
                           (forall ((temp___idx_134 Int))
                           (=>
                           (and (<= a__first temp___idx_134)
                           (<= temp___idx_134 a__last))
                           (= (to_rep1 (select a temp___idx_134)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_134)))))))
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
  (forall ((temp___idx_134 Int))
  (=> (and (<= a__first temp___idx_134) (<= temp___idx_134 a__last))
  (= (to_rep1 (select a temp___idx_134)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_134)))))))))))

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

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq4 (us_rep us_rep) Bool)

(declare-fun user_eq3 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((math_int__ref (mk_math_int__ref (math_int__content us_rep)))))
(define-fun math_int__ref___projection ((a math_int__ref)) us_rep (math_int__content
                                                                  a))

(declare-fun osubtract (us_rep us_rep) us_rep)

(declare-fun osubtract__function_guard (us_rep us_rep us_rep) Bool)

;; osubtract__post_axiom
  (assert true)

(declare-fun omultiply (us_rep us_rep) us_rep)

(declare-fun omultiply__function_guard (us_rep us_rep us_rep) Bool)

;; omultiply__post_axiom
  (assert true)

(declare-fun oexpon (us_rep Int) us_rep)

(declare-fun oexpon__function_guard (us_rep us_rep Int) Bool)

;; oexpon__post_axiom
  (assert true)

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

;; oeq__post_axiom
  (assert true)

(declare-fun base (tuple0) us_rep)

(declare-fun base__function_guard (us_rep tuple0) Bool)

(declare-fun from_word32 ((_ BitVec 32)) us_rep)

(declare-fun from_word32__function_guard (us_rep (_ BitVec 32)) Bool)

;; base__post_axiom
  (assert true)

;; base__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (base__function_guard (base us_void_param) us_void_param)
     (and (from_word32__function_guard (from_word32 ((_ int2bv 32) 2))
     ((_ int2bv 32) 2))
     (and (from_word32__function_guard (from_word32 ((_ int2bv 32) 2))
     ((_ int2bv 32) 2))
     (and (oexpon__function_guard (oexpon (from_word32 ((_ int2bv 32) 2)) 32)
     (from_word32 ((_ int2bv 32) 2)) 32)
     (= (base us_void_param) (oexpon (from_word32 ((_ int2bv 32) 2)) 32)))))) :pattern (
  (base us_void_param)) )))

(declare-sort big_int_range 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483646)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (big_int_range big_int_range) Bool)

(declare-fun dummy4 () big_int_range)

(declare-datatypes ()
((big_int_range__ref
 (mk_big_int_range__ref (big_int_range__content big_int_range)))))
(define-fun big_int_range__ref___projection ((a big_int_range__ref)) big_int_range 
  (big_int_range__content a))

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

(declare-datatypes () ((us_t (mk___t (elts (Array Int word32))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int word32) (elts a))

(define-fun of_array ((a (Array Int word32)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int word32)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int word32)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int word32)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int word32))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int word32))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int word32))) (<= 0 (object__alignment1 a))))

(define-fun bool_eq6 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq5 (us_t us_t) Bool)

(declare-fun dummy5 () us_t)

(declare-datatypes ()
((big_int__ref (mk_big_int__ref (big_int__content us_t)))))
(define-fun big_int__ref___projection ((a big_int__ref)) us_t (big_int__content
                                                              a))

(define-fun dynamic_invariant1 ((temp___expr_293 us_t)
  (temp___is_init_290 Bool) (temp___skip_constant_291 Bool)
  (temp___do_toplevel_292 Bool)) Bool (=>
                                      (not (= temp___skip_constant_291 true))
                                      (dynamic_property 0 2147483646
                                      (first1 temp___expr_293)
                                      (last1 temp___expr_293))))

(declare-fun num_of_big_int (us_t Int Int) us_rep)

(declare-fun num_of_big_int__function_guard (us_rep us_t Int Int) Bool)

;; num_of_big_int__post_axiom
  (assert true)

(declare-fun num_of_boolean (Bool) us_rep)

(declare-fun num_of_boolean__function_guard (us_rep Bool) Bool)

;; num_of_boolean__post_axiom
  (assert true)

(declare-fun a__first () integer)

(declare-fun a__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun a_first () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun a_last () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun b () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun b_first () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant2 ((temp___expr_217 (_ BitVec 32))
  (temp___is_init_214 Bool) (temp___skip_constant_215 Bool)
  (temp___do_toplevel_216 Bool)) Bool true)

(declare-fun word_of_boolean (Bool) (_ BitVec 32))

(declare-fun word_of_boolean__function_guard ((_ BitVec 32) Bool) Bool)

;; word_of_boolean__post_axiom
  (assert
  (forall ((b1 Bool))
  (! (let ((result (word_of_boolean b1)))
     (and (from_word32__function_guard (from_word32 result) result)
     (and (num_of_boolean__function_guard (num_of_boolean b1) b1)
     (and (from_word32__function_guard (from_word32 result) result)
     (and (num_of_boolean__function_guard (num_of_boolean b1) b1)
     (and (oeq__function_guard (oeq (from_word32 result) (num_of_boolean b1))
     (from_word32 result) (num_of_boolean b1))
     (=> (word_of_boolean__function_guard result b1)
     (and (= (oeq (from_word32 result) (num_of_boolean b1)) true)
     (dynamic_invariant2 result true false true))))))))) :pattern ((word_of_boolean
                                                                   b1)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes () ((t30b__ref (mk_t30b__ref (t30b__content integer)))))
(define-fun t30b__ref___projection ((a t30b__ref)) integer (t30b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant4 ((temp___expr_287 Int)
  (temp___is_init_284 Bool) (temp___skip_constant_285 Bool)
  (temp___do_toplevel_286 Bool)) Bool (=>
                                      (or (= temp___is_init_284 true)
                                      (<= 0 2147483646)) (in_range3
                                      temp___expr_287)))

;; from_word32__post_axiom
  (assert true)

(declare-fun a () (Array Int word32))

(declare-fun carry () Bool)

(declare-fun j () Int)

(declare-fun i () Int)

(declare-fun result () Bool)

(declare-fun carry1 () Bool)

(declare-fun result1 () Int)

(declare-fun i1 () Int)

;; H
  (assert (dynamic_property 0 2147483646 (to_rep a__first) (to_rep a__last)))

;; H
  (assert (in_range2 a_first))

;; H
  (assert (in_range2 a_last))

;; H
  (assert (dynamic_invariant1 b true false true))

;; H
  (assert (in_range2 b_first))

;; H
  (assert
  (and
  (and
  (and
  (and (and (<= (to_rep a__first) a_first) (<= a_first (to_rep a__last)))
  (and (<= (to_rep a__first) a_last) (<= a_last (to_rep a__last))))
  (and (<= (to_rep (first (rt b))) b_first)
  (<= b_first (to_rep (last (rt b))))))
  (and (<= (to_rep (first (rt b))) (+ b_first (- a_last a_first)))
  (<= (+ b_first (- a_last a_first)) (to_rep (last (rt b))))))
  (<= a_first a_last)))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 j)))

;; H
  (assert (= (mk_bool__ref result) (mk_bool__ref carry)))

;; H
  (assert (= carry1 (of_int 0)))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref i)))

;; H
  (assert (= i1 a_first))

;; H
  (assert (<= a_first i1))

;; H
  (assert (<= i1 a_last))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  a_first (- i1 a_first)))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int b b_first (- i1 a_first)) b b_first (- i1 a_first)))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  a_first (- i1 a_first)))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int b b_first (- i1 a_first)) b b_first (- i1 a_first)))

;; H
  (assert (osubtract__function_guard
  (osubtract
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (num_of_big_int b b_first (- i1 a_first)))
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (num_of_big_int b b_first (- i1 a_first))))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  a_first (- i1 a_first)))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (oexpon__function_guard (oexpon (base Tuple0) (- i1 a_first))
  (base Tuple0) (- i1 a_first)))

;; H
  (assert (num_of_boolean__function_guard (num_of_boolean carry1) carry1))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (oexpon__function_guard (oexpon (base Tuple0) (- i1 a_first))
  (base Tuple0) (- i1 a_first)))

;; H
  (assert (num_of_boolean__function_guard (num_of_boolean carry1) carry1))

;; H
  (assert (omultiply__function_guard
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1))
  (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1)))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  a_first (- i1 a_first)))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (oexpon__function_guard (oexpon (base Tuple0) (- i1 a_first))
  (base Tuple0) (- i1 a_first)))

;; H
  (assert (num_of_boolean__function_guard (num_of_boolean carry1) carry1))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (oexpon__function_guard (oexpon (base Tuple0) (- i1 a_first))
  (base Tuple0) (- i1 a_first)))

;; H
  (assert (num_of_boolean__function_guard (num_of_boolean carry1) carry1))

;; H
  (assert (omultiply__function_guard
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1))
  (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1)))

;; H
  (assert (osubtract__function_guard
  (osubtract
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first))
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1)))
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first))
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1))))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  a_first (- i1 a_first)))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int b b_first (- i1 a_first)) b b_first (- i1 a_first)))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  a_first (- i1 a_first)))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int b b_first (- i1 a_first)) b b_first (- i1 a_first)))

;; H
  (assert (osubtract__function_guard
  (osubtract
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (num_of_big_int b b_first (- i1 a_first)))
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (num_of_big_int b b_first (- i1 a_first))))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  a_first (- i1 a_first)))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (oexpon__function_guard (oexpon (base Tuple0) (- i1 a_first))
  (base Tuple0) (- i1 a_first)))

;; H
  (assert (num_of_boolean__function_guard (num_of_boolean carry1) carry1))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (oexpon__function_guard (oexpon (base Tuple0) (- i1 a_first))
  (base Tuple0) (- i1 a_first)))

;; H
  (assert (num_of_boolean__function_guard (num_of_boolean carry1) carry1))

;; H
  (assert (omultiply__function_guard
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1))
  (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1)))

;; H
  (assert (num_of_big_int__function_guard
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (mk___t a (mk (to_rep a__first) (to_rep a__last)))
  a_first (- i1 a_first)))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (oexpon__function_guard (oexpon (base Tuple0) (- i1 a_first))
  (base Tuple0) (- i1 a_first)))

;; H
  (assert (num_of_boolean__function_guard (num_of_boolean carry1) carry1))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (base__function_guard (base Tuple0) Tuple0))

;; H
  (assert (oexpon__function_guard (oexpon (base Tuple0) (- i1 a_first))
  (base Tuple0) (- i1 a_first)))

;; H
  (assert (num_of_boolean__function_guard (num_of_boolean carry1) carry1))

;; H
  (assert (omultiply__function_guard
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1))
  (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1)))

;; H
  (assert (osubtract__function_guard
  (osubtract
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first))
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1)))
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first))
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1))))

;; H
  (assert (oeq__function_guard
  (oeq
  (osubtract
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (num_of_big_int b b_first (- i1 a_first)))
  (osubtract
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first))
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1))))
  (osubtract
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first)) (num_of_big_int b b_first (- i1 a_first)))
  (osubtract
  (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last))) 
  a_first (- i1 a_first))
  (omultiply (oexpon (base Tuple0) (- i1 a_first)) (num_of_boolean carry1)))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (= (oeq
     (osubtract
     (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last)))
     a_first (- i1 a_first)) (num_of_big_int b b_first (- i1 a_first)))
     (osubtract
     (num_of_big_int (mk___t a (mk (to_rep a__first) (to_rep a__last)))
     a_first (- i1 a_first))
     (omultiply (oexpon (base Tuple0) (- i1 a_first))
     (num_of_boolean carry1)))) true)))
(check-sat)
