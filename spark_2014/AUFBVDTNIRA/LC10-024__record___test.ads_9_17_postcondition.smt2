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

(declare-sort length_type 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 5)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (length_type length_type) Bool)

(declare-fun dummy () length_type)

(declare-datatypes ()
((length_type__ref (mk_length_type__ref (length_type__content length_type)))))
(define-fun length_type__ref___projection ((a length_type__ref)) length_type 
  (length_type__content a))

(declare-fun to_rep (length_type) Int)

(declare-fun of_rep (Int) length_type)

;; inversion_axiom
  (assert
  (forall ((x length_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x length_type)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort entry_id 0)

(define-fun in_range1 ((x (_ BitVec 8))) Bool (and (bvule ((_ int2bv 8) 0) x)
                                              (bvule x ((_ int2bv 8) 4))))

(define-fun in_range_int ((x Int)) Bool (and (<= 0 x) (<= x 4)))

(define-fun bool_eq1 ((x (_ BitVec 8))
  (y (_ BitVec 8))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 8))

(declare-fun user_eq1 (entry_id entry_id) Bool)

(declare-fun dummy1 () entry_id)

(declare-datatypes ()
((entry_id__ref (mk_entry_id__ref (entry_id__content entry_id)))))
(define-fun entry_id__ref___projection ((a entry_id__ref)) entry_id (entry_id__content
                                                                    a))

(declare-fun to_rep1 (entry_id) (_ BitVec 8))

(declare-fun of_rep1 ((_ BitVec 8)) entry_id)

;; inversion_axiom
  (assert
  (forall ((x entry_id))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x entry_id)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (let ((y (bvurem x ((_ int2bv 8) 5))))
     (=> (in_range1 y) (= (to_rep1 (of_rep1 x)) y))) :pattern ((to_rep1
                                                               (of_rep1 x))) )))

(define-fun to_int2 ((x entry_id)) Int (bv2nat (to_rep1 x)))

;; range_int_axiom
  (assert
  (forall ((x entry_id)) (! (in_range_int
  (to_int2 x)) :pattern ((to_int2 x)) )))

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep2 (integer) Int)

(declare-fun of_rep2 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array (_ BitVec 8) integer))))))
(declare-fun slide ((Array (_ BitVec 8) integer) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) integer))

;; slide_eq
  (assert
  (forall ((a (Array (_ BitVec 8) integer)))
  (forall ((first (_ BitVec 8)))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array (_ BitVec 8) integer)))
  (forall ((old_first (_ BitVec 8)))
  (forall ((new_first (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (= (select (slide a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array (_ BitVec 8) integer) (_ BitVec 8) (_ BitVec 8)
  (Array (_ BitVec 8) integer) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) integer))

;; concat_def
  (assert
  (forall ((a (Array (_ BitVec 8) integer)) (b (Array (_ BitVec 8) integer)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (and
     (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (bvugt i a_last)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (bvadd (bvsub i a_last) (bvsub b_first #x01)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (integer (_ BitVec 8)) (Array (_ BitVec 8) integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i (_ BitVec 8)))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array (_ BitVec 8) integer))
  (a__first (_ BitVec 8)) (a__last (_ BitVec 8))
  (b (Array (_ BitVec 8) integer)) (b__first (_ BitVec 8))
  (b__last (_ BitVec 8))) Bool (ite (and
                                    (ite (bvule a__first a__last)
                                    (and (bvule b__first b__last)
                                    (= (bvsub a__last a__first) (bvsub b__last b__first)))
                                    (bvugt b__first b__last))
                                    (forall ((temp___idx_132 (_ BitVec 8)))
                                    (=>
                                    (and (bvule a__first temp___idx_132)
                                    (bvule temp___idx_132 a__last))
                                    (= (to_rep2 (select a temp___idx_132)) 
                                    (to_rep2
                                    (select b (bvadd (bvsub b__first a__first) temp___idx_132)))))))
                               true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array (_ BitVec 8) integer)) (b (Array (_ BitVec 8) integer)))
  (forall ((a__first (_ BitVec 8)) (a__last (_ BitVec 8))
  (b__first (_ BitVec 8)) (b__last (_ BitVec 8)))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (bvule a__first a__last)
  (and (bvule b__first b__last)
  (= (bvsub a__last a__first) (bvsub b__last b__first)))
  (bvugt b__first b__last))
  (forall ((temp___idx_132 (_ BitVec 8)))
  (=> (and (bvule a__first temp___idx_132) (bvule temp___idx_132 a__last))
  (= (to_rep2 (select a temp___idx_132)) (to_rep2
                                         (select b (bvadd (bvsub b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array (_ BitVec 8) integer) (_ BitVec 8) (_ BitVec 8)
  (Array (_ BitVec 8) integer) (_ BitVec 8) (_ BitVec 8)) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array (_ BitVec 8) integer)) (b (Array (_ BitVec 8) integer)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array (_ BitVec 8) integer)) (b (Array (_ BitVec 8) integer)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i (_ BitVec 8)) (j (_ BitVec 8)))
     (and (bvule i a_last)
     (and (bvult j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (bvult i a_last)
     (< (to_rep2 (select a (bvadd i #x01))) (to_rep2
                                            (select b (bvadd j #x01))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array (_ BitVec 8) integer)) (b (Array (_ BitVec 8) integer)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i (_ BitVec 8)) (j (_ BitVec 8)))
     (and (bvule i b_last)
     (and (bvult j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (bvult i b_last)
     (< (to_rep2 (select b (bvadd i #x01))) (to_rep2
                                            (select a (bvadd j #x01))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy3 () (Array (_ BitVec 8) integer))

(declare-fun value__size () Int)

(declare-fun object__size ((Array (_ BitVec 8) integer)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array (_ BitVec 8) integer)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array (_ BitVec 8) integer)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert
  (forall ((a (Array (_ BitVec 8) integer))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array (_ BitVec 8) integer)))
  (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert
  (forall ((a (Array (_ BitVec 8) integer))) (<= 0 (object__alignment a))))

(declare-fun user_eq3 ((Array (_ BitVec 8) integer)
  (Array (_ BitVec 8) integer)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__test__t__remaining length_type)(rec__test__t__index entry_id)(rec__test__t__cards (Array (_ BitVec 8) integer))))))
(define-fun us_split_fields_Remaining__projection ((a us_split_fields)) length_type 
  (rec__test__t__remaining a))

(define-fun us_split_fields_Index__projection ((a us_split_fields)) entry_id 
  (rec__test__t__index a))

(define-fun us_split_fields_Cards__projection ((a us_split_fields)) (Array (_ BitVec 8) integer) 
  (rec__test__t__cards a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq4 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep
                           (rec__test__t__remaining (us_split_fields1 a))) 
                        (to_rep
                        (rec__test__t__remaining (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__test__t__index (us_split_fields1 a))) 
                        (to_rep1 (rec__test__t__index (us_split_fields1 b)))))
                        (= (bool_eq3
                           (rec__test__t__cards (us_split_fields1 a))
                           ((_ int2bv 8) 0) ((_ int2bv 8) 4)
                           (rec__test__t__cards (us_split_fields1 b))
                           ((_ int2bv 8) 0) ((_ int2bv 8) 4)) true))
                   true false))

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun test__t__remaining__first__bit () Int)

(declare-fun test__t__remaining__last__bit () Int)

(declare-fun test__t__remaining__position () Int)

;; test__t__remaining__first__bit_axiom
  (assert (<= 0 test__t__remaining__first__bit))

;; test__t__remaining__last__bit_axiom
  (assert (< test__t__remaining__first__bit test__t__remaining__last__bit))

;; test__t__remaining__position_axiom
  (assert (<= 0 test__t__remaining__position))

(declare-fun test__t__index__first__bit () Int)

(declare-fun test__t__index__last__bit () Int)

(declare-fun test__t__index__position () Int)

;; test__t__index__first__bit_axiom
  (assert (<= 0 test__t__index__first__bit))

;; test__t__index__last__bit_axiom
  (assert (< test__t__index__first__bit test__t__index__last__bit))

;; test__t__index__position_axiom
  (assert (<= 0 test__t__index__position))

(declare-fun test__t__cards__first__bit () Int)

(declare-fun test__t__cards__last__bit () Int)

(declare-fun test__t__cards__position () Int)

;; test__t__cards__first__bit_axiom
  (assert (<= 0 test__t__cards__first__bit))

;; test__t__cards__last__bit_axiom
  (assert (< test__t__cards__first__bit test__t__cards__last__bit))

;; test__t__cards__position_axiom
  (assert (<= 0 test__t__cards__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 us_rep)))))
(define-fun t__ref___projection ((a t__ref1)) us_rep (t__content1 a))

(declare-fun get_remaining (us_rep) Int)

(declare-fun get_remaining__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

;; get_remaining__post_axiom
  (assert
  (forall ((s us_rep))
  (! (let ((result (get_remaining s)))
     (=> (get_remaining__function_guard result s) (dynamic_invariant result
     true false true))) :pattern ((get_remaining s)) )))

;; get_remaining__def_axiom
  (assert
  (forall ((s us_rep))
  (! (=> (get_remaining__function_guard (get_remaining s) s)
     (= (get_remaining s) (to_rep
                          (rec__test__t__remaining (us_split_fields1 s))))) :pattern (
  (get_remaining s)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant1 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 0 5)) (in_range temp___expr_136)))

(define-fun dynamic_invariant2 ((temp___expr_142 (_ BitVec 8))
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (bvule ((_ int2bv 8) 0) ((_ int2bv 8) 4)))
                                      (in_range1 temp___expr_142)))

(declare-fun s__split_fields () length_type)

(declare-fun s__split_fields1 () entry_id)

(declare-fun s__split_fields2 () (Array (_ BitVec 8) integer))

(declare-fun o () (_ BitVec 8))

(declare-fun o1 () entry_id)

(declare-fun o2 () length_type)

(declare-fun o3 () entry_id)

(declare-fun o4 () (Array (_ BitVec 8) integer))

(declare-fun temp___183 () length_type)

(declare-fun temp___1831 () entry_id)

(declare-fun temp___1832 () (Array (_ BitVec 8) integer))

(declare-fun o5 () Int)

(declare-fun o6 () (_ BitVec 8))

(declare-fun temp___184 () (_ BitVec 8))

(declare-fun o7 () Int)

(declare-fun o8 () (_ BitVec 8))

(declare-fun o9 () (_ BitVec 8))

(declare-fun result () length_type)

(declare-fun result1 () entry_id)

(declare-fun result2 () (Array (_ BitVec 8) integer))

(declare-fun s__split_fields3 () length_type)

(declare-fun s__split_fields4 () entry_id)

(declare-fun s__split_fields5 () (Array (_ BitVec 8) integer))

(declare-fun result3 () Bool)

(declare-fun s__split_fields6 () length_type)

(declare-fun s__split_fields7 () entry_id)

(declare-fun s__split_fields8 () (Array (_ BitVec 8) integer))

(declare-fun s__split_fields9 () length_type)

(declare-fun s__split_fields10 () entry_id)

(declare-fun s__split_fields11 () (Array (_ BitVec 8) integer))

(declare-fun s__split_fields12 () length_type)

(declare-fun s__split_fields13 () entry_id)

(declare-fun s__split_fields14 () (Array (_ BitVec 8) integer))

(define-fun s__split_fields15 () us_split_fields (mk___split_fields
                                                 s__split_fields6
                                                 s__split_fields7
                                                 s__split_fields8))

(define-fun s__split_fields16 () us_split_fields (mk___split_fields
                                                 s__split_fields3
                                                 s__split_fields4
                                                 s__split_fields5))

;; H
  (assert (get_remaining__function_guard
  (get_remaining (mk___rep s__split_fields15)) (mk___rep s__split_fields15)))

;; H
  (assert (get_remaining__function_guard
  (get_remaining (mk___rep s__split_fields16)) (mk___rep s__split_fields16)))

;; H
  (assert
  (=>
  (bvule (bvsub ((_ int2bv 8) 5) (to_rep1 s__split_fields1)) ((_ int2bv 8) 1))
  (= o (bvsub (bvadd (to_rep1 s__split_fields1) ((_ int2bv 8) 1)) ((_ int2bv 8) 5)))))

;; H
  (assert
  (=>
  (not
  (bvule (bvsub ((_ int2bv 8) 5) (to_rep1 s__split_fields1)) ((_ int2bv 8) 1)))
  (= o (bvadd (to_rep1 s__split_fields1) ((_ int2bv 8) 1)))))

;; H
  (assert (= (to_rep1 o1) o))

;; H
  (assert (= s__split_fields o2))

;; H
  (assert (= o1 o3))

;; H
  (assert (= s__split_fields2 o4))

;; H
  (assert (= temp___183 o2))

;; H
  (assert (= temp___1831 o3))

;; H
  (assert (= temp___1832 o4))

;; H
  (assert
  (= (mk___split_fields__ref (mk___split_fields result result1 result2)) 
  (mk___split_fields__ref
  (mk___split_fields s__split_fields s__split_fields1 s__split_fields2))))

;; H
  (assert (= temp___183 s__split_fields3))

;; H
  (assert (= temp___1831 s__split_fields4))

;; H
  (assert (= temp___1832 s__split_fields5))

;; H
  (assert
  (and (= o5 (mod1 (to_rep s__split_fields3) 5)) (in_range_int
  (mod1 (to_rep s__split_fields3) 5))))

;; H
  (assert (= o6 ((_ int2bv 8) o5)))

;; H
  (assert (= temp___184 (bvadd (to_rep1 s__split_fields4) o6)))

;; H
  (assert
  (and (= o7 (mod1 (to_rep s__split_fields3) 5)) (in_range_int
  (mod1 (to_rep s__split_fields3) 5))))

;; H
  (assert (= o8 ((_ int2bv 8) o7)))

;; H
  (assert
  (= result3 (ite (bvule (bvsub ((_ int2bv 8) 5) (to_rep1 s__split_fields4)) 
             o8) true false)))

;; H
  (assert (=> (= result3 true) (= o9 (bvsub temp___184 ((_ int2bv 8) 5)))))

;; H
  (assert (=> (not (= result3 true)) (= o9 temp___184)))

;; H
  (assert
  (= (get_remaining (mk___rep s__split_fields15)) (get_remaining
                                                  (mk___rep
                                                  s__split_fields16))))

;; H
  (assert (= s__split_fields9 s__split_fields6))

;; H
  (assert (= s__split_fields10 s__split_fields7))

;; H
  (assert (= s__split_fields11 s__split_fields8))

;; H
  (assert (= s__split_fields12 s__split_fields6))

;; H
  (assert (= s__split_fields13 s__split_fields7))

;; H
  (assert (= s__split_fields14 s__split_fields8))

;; H
  (assert (get_remaining__function_guard
  (get_remaining
  (mk___rep
  (mk___split_fields s__split_fields9 s__split_fields10 s__split_fields11)))
  (mk___rep
  (mk___split_fields s__split_fields9 s__split_fields10 s__split_fields11))))

;; H
  (assert (get_remaining__function_guard
  (get_remaining
  (mk___rep
  (mk___split_fields s__split_fields s__split_fields1 s__split_fields2)))
  (mk___rep
  (mk___split_fields s__split_fields s__split_fields1 s__split_fields2))))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (= (get_remaining
     (mk___rep
     (mk___split_fields s__split_fields9 s__split_fields10 s__split_fields11))) 
  (get_remaining
  (mk___rep
  (mk___split_fields s__split_fields s__split_fields1 s__split_fields2))))))
(check-sat)
