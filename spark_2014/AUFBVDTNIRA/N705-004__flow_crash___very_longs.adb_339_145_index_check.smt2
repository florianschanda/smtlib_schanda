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

(declare-sort tdigit_index_typeB 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (tdigit_index_typeB tdigit_index_typeB) Bool)

(declare-fun dummy () tdigit_index_typeB)

(declare-datatypes ()
((tdigit_index_typeB__ref
 (mk_tdigit_index_typeB__ref
 (tdigit_index_typeB__content tdigit_index_typeB)))))
(define-fun tdigit_index_typeB__ref___projection ((a tdigit_index_typeB__ref)) tdigit_index_typeB 
  (tdigit_index_typeB__content a))

(declare-sort digit_index_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (digit_index_type digit_index_type) Bool)

(declare-fun dummy1 () digit_index_type)

(declare-datatypes ()
((digit_index_type__ref
 (mk_digit_index_type__ref (digit_index_type__content digit_index_type)))))
(define-fun digit_index_type__ref___projection ((a digit_index_type__ref)) digit_index_type 
  (digit_index_type__content a))

(define-fun dynamic_invariant ((temp___expr_200 Int)
  (temp___is_init_197 Bool) (temp___skip_constant_198 Bool)
  (temp___do_toplevel_199 Bool)) Bool (=>
                                      (or (= temp___is_init_197 true)
                                      (<= 1 2147483647)) (in_range2
                                      temp___expr_200)))

(declare-fun to_rep (digit_index_type) Int)

(declare-fun of_rep (Int) digit_index_type)

;; inversion_axiom
  (assert
  (forall ((x digit_index_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x digit_index_type)) (! (in_range2
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort octet 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 8))

(define-fun bool_eq2 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 8))

(declare-fun user_eq2 (octet octet) Bool)

(declare-fun dummy2 () octet)

(declare-datatypes () ((octet__ref (mk_octet__ref (octet__content octet)))))
(define-fun octet__ref___projection ((a octet__ref)) octet (octet__content a))

(declare-fun to_rep1 (octet) (_ BitVec 8))

(declare-fun of_rep1 ((_ BitVec 8)) octet)

;; inversion_axiom
  (assert
  (forall ((x octet))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))) )))

(define-fun to_int3 ((x octet)) Int (bv2nat (to_rep1 x)))

;; range_int_axiom
  (assert
  (forall ((x octet)) (! (uint_in_range
  (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int octet))))))
(declare-fun slide ((Array Int octet) Int Int) (Array Int octet))

;; slide_eq
  (assert
  (forall ((a (Array Int octet)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int octet)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int octet) Int Int (Array Int octet) Int
  Int) (Array Int octet))

;; concat_def
  (assert
  (forall ((a (Array Int octet)) (b (Array Int octet)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (octet Int) (Array Int octet))

;; singleton_def
  (assert
  (forall ((v octet))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int octet)) (a__first Int) (a__last Int)
  (b (Array Int octet)) (b__first Int)
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
  (forall ((a (Array Int octet)) (b (Array Int octet)))
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

(declare-fun compare ((Array Int octet) Int Int (Array Int octet) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int octet)) (b (Array Int octet)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int octet)) (b (Array Int octet)))
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
  (forall ((a (Array Int octet)) (b (Array Int octet)))
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

(declare-fun to_rep2 (tdigit_index_typeB) Int)

(declare-fun of_rep2 (Int) tdigit_index_typeB)

;; inversion_axiom
  (assert
  (forall ((x tdigit_index_typeB))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x tdigit_index_typeB)) (! (in_range1
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (tdigit_index_typeB tdigit_index_typeB) Bool)

(declare-fun dummy3 () tdigit_index_typeB)

(declare-datatypes ()
((t17s__ref (mk_t17s__ref (t17s__content tdigit_index_typeB)))))
(define-fun t17s__ref___projection ((a t17s__ref)) tdigit_index_typeB 
  (t17s__content a))

(declare-sort t 0)

(declare-fun first (t) tdigit_index_typeB)

(declare-fun last1 (t) tdigit_index_typeB)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep2 (first (mk f l))) f) (= (to_rep2 (last1 (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property range_first range_last low)
                   (dynamic_property range_first range_last high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int octet))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int octet) (elts a))

(define-fun of_array ((a (Array Int octet)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep2 (first (rt a))))

(define-fun last2 ((a us_t)) Int (to_rep2 (last1 (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last2 a))
                                  (+ (- (last2 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int octet)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int octet)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int octet)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int octet))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int octet))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int octet))) (<= 0 (object__alignment a))))

(define-fun bool_eq5 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep2 (first (rt x)))
                 (to_rep2 (last1 (rt x))) (elts y) (to_rep2 (first (rt y)))
                 (to_rep2 (last1 (rt y)))))

(declare-fun user_eq4 (us_t us_t) Bool)

(declare-fun dummy4 () us_t)

(declare-datatypes () ((t18s__ref (mk_t18s__ref (t18s__content us_t)))))
(define-fun t18s__ref___projection ((a t18s__ref)) us_t (t18s__content a))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__very_longs__very_long__octet_length digit_index_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) digit_index_type 
  (rec__very_longs__very_long__octet_length a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__very_longs__very_long__long_digits us_t)))))
(define-fun us_split_fields_Long_Digits__projection ((a us_split_fields)) us_t 
  (rec__very_longs__very_long__long_digits a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq6 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__very_longs__very_long__octet_length
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__very_longs__very_long__octet_length
                                                  (us_split_discrs1 b))))
                        (= (bool_eq5
                           (rec__very_longs__very_long__long_digits
                           (us_split_fields1 a))
                           (rec__very_longs__very_long__long_digits
                           (us_split_fields1 b))) true))
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

(declare-fun very_longs__very_long__octet_length__first__bit () Int)

(declare-fun very_longs__very_long__octet_length__last__bit () Int)

(declare-fun very_longs__very_long__octet_length__position () Int)

;; very_longs__very_long__octet_length__first__bit_axiom
  (assert (<= 0 very_longs__very_long__octet_length__first__bit))

;; very_longs__very_long__octet_length__last__bit_axiom
  (assert
  (< very_longs__very_long__octet_length__first__bit very_longs__very_long__octet_length__last__bit))

;; very_longs__very_long__octet_length__position_axiom
  (assert (<= 0 very_longs__very_long__octet_length__position))

(declare-fun very_longs__very_long__long_digits__first__bit () Int)

(declare-fun very_longs__very_long__long_digits__last__bit () Int)

(declare-fun very_longs__very_long__long_digits__position () Int)

;; very_longs__very_long__long_digits__first__bit_axiom
  (assert (<= 0 very_longs__very_long__long_digits__first__bit))

;; very_longs__very_long__long_digits__last__bit_axiom
  (assert
  (< very_longs__very_long__long_digits__first__bit very_longs__very_long__long_digits__last__bit))

;; very_longs__very_long__long_digits__position_axiom
  (assert (<= 0 very_longs__very_long__long_digits__position))

(declare-fun dummy5 () us_rep)

(declare-datatypes ()
((very_long__ref (mk_very_long__ref (very_long__content us_rep)))))
(define-fun very_long__ref___projection ((a very_long__ref)) us_rep (very_long__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_217 us_rep)
  (temp___is_init_214 Bool) (temp___skip_constant_215 Bool)
  (temp___do_toplevel_216 Bool)) Bool (let ((temp___218 (rec__very_longs__very_long__octet_length
                                                        (us_split_discrs1
                                                        temp___expr_217))))
                                      (and (dynamic_property1 1
                                      (to_rep temp___218)
                                      (first1
                                      (rec__very_longs__very_long__long_digits
                                      (us_split_fields1 temp___expr_217)))
                                      (last2
                                      (rec__very_longs__very_long__long_digits
                                      (us_split_fields1 temp___expr_217))))
                                      (and
                                      (= (first1
                                         (rec__very_longs__very_long__long_digits
                                         (us_split_fields1 temp___expr_217))) 1)
                                      (= (last2
                                         (rec__very_longs__very_long__long_digits
                                         (us_split_fields1 temp___expr_217))) 
                                      (to_rep temp___218))))))

(declare-fun is_zero (us_rep) Bool)

(declare-fun is_zero__function_guard (Bool us_rep) Bool)

;; is_zero__post_axiom
  (assert true)

;; is_zero__def_axiom
  (assert
  (forall ((number us_rep))
  (! (=> (is_zero__function_guard (is_zero number) number)
     (= (= (is_zero number) true)
     (forall ((i Int))
     (=>
     (and (<= 1 i)
     (<= i (last2
           (rec__very_longs__very_long__long_digits
           (us_split_fields1 number)))))
     (= (to_rep1
        (let ((temp___276 (rec__very_longs__very_long__long_digits
                          (us_split_fields1 number))))
        (select (to_array temp___276) i))) ((_ int2bv 8) 0)))))) :pattern (
  (is_zero number)) )))

(declare-fun number () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun first2 () Int)

(declare-fun last3 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (tdigit_index_typeB tdigit_index_typeB) Bool)

(declare-fun dummy6 () tdigit_index_typeB)

(declare-datatypes ()
((t108b__ref (mk_t108b__ref (t108b__content tdigit_index_typeB)))))
(define-fun t108b__ref___projection ((a t108b__ref)) tdigit_index_typeB 
  (t108b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant2 ((temp___expr_206 (_ BitVec 8))
  (temp___is_init_203 Bool) (temp___skip_constant_204 Bool)
  (temp___do_toplevel_205 Bool)) Bool true)

(declare-fun digit_index () Int)

(declare-fun i () Int)

(declare-fun us () Int)

(declare-fun o () Int)

(declare-fun o1 () octet)

(declare-fun o2 () (_ BitVec 8))

(declare-fun o3 () Bool)

(declare-fun j () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Bool)

(declare-fun result () Int)

(declare-fun digit_index1 () Int)

(declare-fun result1 () Int)

(declare-fun i1 () Int)

(declare-fun result2 () Bool)

(declare-fun result3 () Int)

(declare-fun digit_index2 () Int)

(declare-fun digit_index3 () Int)

(declare-fun i2 () Int)

(declare-fun result4 () Bool)

;; H
  (assert (dynamic_invariant1 number true false true))

;; H
  (assert (is_zero__function_guard (is_zero number) number))

;; H
  (assert (not (= (is_zero number) true)))

;; H
  (assert
  (and
  (= us (to_rep
        (rec__very_longs__very_long__octet_length (us_split_discrs1 number))))
  (in_range2
  (to_rep
  (rec__very_longs__very_long__octet_length (us_split_discrs1 number))))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref digit_index)))

;; H
  (assert (= digit_index1 1))

;; H
  (assert (in_range2 digit_index1))

;; H
  (assert (= (mk_int__ref result1) (mk_int__ref i)))

;; H
  (assert (= i1 1))

;; H
  (assert (<= 1 i1))

;; H
  (assert
  (<= i1 (to_rep2
         (last1
         (rt
         (rec__very_longs__very_long__long_digits (us_split_fields1 number)))))))

;; H
  (assert
  (and
  (<= (to_rep2
      (first
      (rt
      (rec__very_longs__very_long__long_digits (us_split_fields1 number))))) 
  i1)
  (<= i1 (to_rep2
         (last1
         (rt
         (rec__very_longs__very_long__long_digits (us_split_fields1 number))))))))

;; H
  (assert (= o i1))

;; H
  (assert
  (= o1 (select (elts
                (rec__very_longs__very_long__long_digits
                (us_split_fields1 number))) o)))

;; H
  (assert (= o2 (to_rep1 o1)))

;; H
  (assert (= o3 (ite (= o2 ((_ int2bv 8) 0)) true false)))

;; H
  (assert (= result2 (ite (not (= o3 true)) true false)))

;; H
  (assert (=> (= result2 true) (= digit_index1 result3)))

;; H
  (assert (=> (= result2 true) (= digit_index2 i1)))

;; H
  (assert (=> (not (= result2 true)) (= digit_index2 digit_index1)))

;; H
  (assert
  (or
  (not
  (= (to_rep1
     (select (elts
             (rec__very_longs__very_long__long_digits
             (us_split_fields1 number))) digit_index3)) ((_ int2bv 8) 0)))
  (exists ((j1 Int))
  (and
  (and (<= (+ i2 1) j1)
  (<= j1 (to_rep2
         (last1
         (rt
         (rec__very_longs__very_long__long_digits (us_split_fields1 number)))))))
  (not
  (= (to_rep1
     (select (elts
             (rec__very_longs__very_long__long_digits
             (us_split_fields1 number))) j1)) ((_ int2bv 8) 0)))))))

;; H
  (assert
  (=> (< digit_index3 i2)
  (forall ((j1 Int))
  (=> (and (<= (+ digit_index3 1) j1) (<= j1 i2))
  (= (to_rep1
     (select (elts
             (rec__very_longs__very_long__long_digits
             (us_split_fields1 number))) j1)) ((_ int2bv 8) 0))))))

;; H
  (assert
  (and
  (and (=> (<= 1 2147483647) (in_range2 digit_index3))
  (=>
  (<= 1 (to_rep2
        (last1
        (rt
        (rec__very_longs__very_long__long_digits (us_split_fields1 number))))))
  (dynamic_property2 1
  (to_rep2
  (last1
  (rt (rec__very_longs__very_long__long_digits (us_split_fields1 number)))))
  i2)))
  (and (<= 1 i2)
  (<= i2 (to_rep2
         (last1
         (rt
         (rec__very_longs__very_long__long_digits (us_split_fields1 number)))))))))

;; H
  (assert (and (= o4 (+ i2 1)) (in_range1 (+ i2 1))))

;; H
  (assert (= o5 (ite (<= o4 j) true false)))

;; H
  (assert
  (= result4 (ite (= o5 true) (ite (<= j (to_rep2
                                         (last1
                                         (rt
                                         (rec__very_longs__very_long__long_digits
                                         (us_split_fields1 number))))))
                              true false) false)))

;; H
  (assert (= result4 true))

(assert
;; WP_parameter_def
 ;; File "very_longs.ads", line 5, characters 0-0
  (not
  (<= (to_rep2
      (first
      (rt
      (rec__very_longs__very_long__long_digits (us_split_fields1 number))))) 
  j)))
(check-sat)
