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

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(declare-fun to_rep1 (natural) Int)

(declare-fun of_rep1 (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort index_type 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 8))

(declare-fun attr__ATTRIBUTE_IMAGE2 ((_ BitVec 8)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) (_ BitVec 8))

(declare-fun user_eq2 (index_type index_type) Bool)

(declare-fun dummy2 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(declare-fun to_rep2 (index_type) (_ BitVec 8))

(declare-fun of_rep2 ((_ BitVec 8)) index_type)

;; inversion_axiom
  (assert
  (forall ((x index_type))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 8)))
  (! (= (to_rep2 (of_rep2 x)) x) :pattern ((to_rep2 (of_rep2 x))) )))

(define-fun to_int2 ((x index_type)) Int (bv2nat (to_rep2 x)))

;; range_int_axiom
  (assert
  (forall ((x index_type)) (! (uint_in_range
  (to_int2 x)) :pattern ((to_int2 x)) )))

(declare-sort mode_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (mode_type mode_type) Bool)

(declare-fun dummy3 () mode_type)

(declare-datatypes ()
((mode_type__ref (mk_mode_type__ref (mode_type__content mode_type)))))
(define-fun mode_type__ref___projection ((a mode_type__ref)) mode_type 
  (mode_type__content a))

(declare-fun to_rep3 (mode_type) Int)

(declare-fun of_rep3 (Int) mode_type)

;; inversion_axiom
  (assert
  (forall ((x mode_type))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x mode_type)) (! (in_range2
  (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

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

(declare-fun to_int3 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range3 ((x Real)) Bool (and
                                      (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                      (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range3
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

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 Float32)))))
(declare-sort element_type 0)

(define-fun in_range4 ((x Float32)) Bool (and
                                         (not (or (fp.isInfinite x) (fp.isNaN x)))
                                         (and
                                         (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x)
                                         (fp.leq x (fp #b0 #b10000010 #b01000000000000000000000)))))

(declare-fun user_eq4 (element_type element_type) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Float32)

(declare-fun dummy4 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(declare-fun to_rep4 (element_type) Float32)

(declare-fun of_rep4 (Float32) element_type)

;; inversion_axiom
  (assert
  (forall ((x element_type))
  (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)) )))

;; range_axiom
  (assert
  (forall ((x element_type)) (! (in_range4
  (to_rep4 x)) :pattern ((to_rep4 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Float32))
  (! (=> (in_range4 x) (= (to_rep4 (of_rep4 x)) x)) :pattern ((to_rep4
                                                              (of_rep4 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array (_ BitVec 8) element_type))))))
(declare-fun slide ((Array (_ BitVec 8) element_type) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) element_type))

;; slide_eq
  (assert
  (forall ((a (Array (_ BitVec 8) element_type)))
  (forall ((first (_ BitVec 8)))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array (_ BitVec 8) element_type)))
  (forall ((old_first (_ BitVec 8)))
  (forall ((new_first (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (= (select (slide a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array (_ BitVec 8) element_type) (_ BitVec 8)
  (_ BitVec 8) (Array (_ BitVec 8) element_type) (_ BitVec 8)
  (_ BitVec 8)) (Array (_ BitVec 8) element_type))

;; concat_def
  (assert
  (forall ((a (Array (_ BitVec 8) element_type))
  (b (Array (_ BitVec 8) element_type)))
  (forall ((a_first (_ BitVec 8)) (a_last (_ BitVec 8))
  (b_first (_ BitVec 8)) (b_last (_ BitVec 8)))
  (forall ((i (_ BitVec 8)))
  (! (and
     (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (bvugt i a_last)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (bvadd (bvsub i a_last) (bvsub b_first #x01)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (element_type
  (_ BitVec 8)) (Array (_ BitVec 8) element_type))

;; singleton_def
  (assert
  (forall ((v element_type))
  (forall ((i (_ BitVec 8)))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq ((a (Array (_ BitVec 8) element_type))
  (a__first (_ BitVec 8)) (a__last (_ BitVec 8))
  (b (Array (_ BitVec 8) element_type)) (b__first (_ BitVec 8))
  (b__last (_ BitVec 8))) Bool (ite (and
                                    (ite (bvule a__first a__last)
                                    (and (bvule b__first b__last)
                                    (= (bvsub a__last a__first) (bvsub b__last b__first)))
                                    (bvugt b__first b__last))
                                    (forall ((temp___idx_133 (_ BitVec 8)))
                                    (=>
                                    (and (bvule a__first temp___idx_133)
                                    (bvule temp___idx_133 a__last))
                                    (= (to_rep4 (select a temp___idx_133)) 
                                    (to_rep4
                                    (select b (bvadd (bvsub b__first a__first) temp___idx_133)))))))
                               true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array (_ BitVec 8) element_type))
  (b (Array (_ BitVec 8) element_type)))
  (forall ((a__first (_ BitVec 8)) (a__last (_ BitVec 8))
  (b__first (_ BitVec 8)) (b__last (_ BitVec 8)))
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
  (and
  (ite (bvule a__first a__last)
  (and (bvule b__first b__last)
  (= (bvsub a__last a__first) (bvsub b__last b__first)))
  (bvugt b__first b__last))
  (forall ((temp___idx_133 (_ BitVec 8)))
  (=> (and (bvule a__first temp___idx_133) (bvule temp___idx_133 a__last))
  (= (to_rep4 (select a temp___idx_133)) (to_rep4
                                         (select b (bvadd (bvsub b__first a__first) temp___idx_133)))))))))))

(declare-fun dummy5 () (Array (_ BitVec 8) element_type))

(declare-fun value__size () Int)

(declare-fun object__size ((Array (_ BitVec 8) element_type)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array (_ BitVec 8) element_type)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array (_ BitVec 8) element_type)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert
  (forall ((a (Array (_ BitVec 8) element_type))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array (_ BitVec 8) element_type)))
  (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert
  (forall ((a (Array (_ BitVec 8) element_type)))
  (<= 0 (object__alignment a))))

(declare-fun user_eq5 ((Array (_ BitVec 8) element_type)
  (Array (_ BitVec 8) element_type)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__some_package__float_buffer__buffer_tag__mode mode_type)(rec__some_package__float_buffer__buffer_tag__buffer (Array (_ BitVec 8) element_type))(rec__some_package__float_buffer__buffer_tag__index_head index_type)(rec__some_package__float_buffer__buffer_tag__index_tail index_type)(rec__some_package__float_buffer__buffer_tag__haselements Bool)(rec__some_package__float_buffer__buffer_tag__num_overflows natural)(rec__ext__ us_private)))))
(define-fun us_split_fields_mode__projection ((a us_split_fields)) mode_type 
  (rec__some_package__float_buffer__buffer_tag__mode a))

(define-fun us_split_fields_buffer__projection ((a us_split_fields)) (Array (_ BitVec 8) element_type) 
  (rec__some_package__float_buffer__buffer_tag__buffer a))

(define-fun us_split_fields_index_head__projection ((a us_split_fields)) index_type 
  (rec__some_package__float_buffer__buffer_tag__index_head a))

(define-fun us_split_fields_index_tail__projection ((a us_split_fields)) index_type 
  (rec__some_package__float_buffer__buffer_tag__index_tail a))

(define-fun us_split_fields_hasElements__projection ((a us_split_fields)) Bool 
  (rec__some_package__float_buffer__buffer_tag__haselements a))

(define-fun us_split_fields_Num_Overflows__projection ((a us_split_fields)) natural 
  (rec__some_package__float_buffer__buffer_tag__num_overflows a))

(define-fun us_split_fields___projection ((a us_split_fields)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)(attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) Int (attr__tag a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (and
                        (= (to_rep3
                           (rec__some_package__float_buffer__buffer_tag__mode
                           (us_split_fields1 a))) (to_rep3
                                                  (rec__some_package__float_buffer__buffer_tag__mode
                                                  (us_split_fields1 b))))
                        (= (bool_eq
                           (rec__some_package__float_buffer__buffer_tag__buffer
                           (us_split_fields1 a)) ((_ int2bv 8) 0)
                           ((_ int2bv 8) 255)
                           (rec__some_package__float_buffer__buffer_tag__buffer
                           (us_split_fields1 b)) ((_ int2bv 8) 0)
                           ((_ int2bv 8) 255)) true))
                        (= (to_rep2
                           (rec__some_package__float_buffer__buffer_tag__index_head
                           (us_split_fields1 a))) (to_rep2
                                                  (rec__some_package__float_buffer__buffer_tag__index_head
                                                  (us_split_fields1 b)))))
                        (= (to_rep2
                           (rec__some_package__float_buffer__buffer_tag__index_tail
                           (us_split_fields1 a))) (to_rep2
                                                  (rec__some_package__float_buffer__buffer_tag__index_tail
                                                  (us_split_fields1 b)))))
                        (= (rec__some_package__float_buffer__buffer_tag__haselements
                           (us_split_fields1 a)) (rec__some_package__float_buffer__buffer_tag__haselements
                                                 (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__some_package__float_buffer__buffer_tag__num_overflows
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__some_package__float_buffer__buffer_tag__num_overflows
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq6 (us_rep us_rep) Bool)

(declare-fun us_dispatch_eq (us_rep us_rep) Bool)

(declare-fun us_tag () Int)

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

(declare-fun some_package__float_buffer__buffer_tag__mode__first__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__mode__last__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__mode__position () Int)

;; some_package__float_buffer__buffer_tag__mode__first__bit_axiom
  (assert (<= 0 some_package__float_buffer__buffer_tag__mode__first__bit))

;; some_package__float_buffer__buffer_tag__mode__last__bit_axiom
  (assert
  (< some_package__float_buffer__buffer_tag__mode__first__bit some_package__float_buffer__buffer_tag__mode__last__bit))

;; some_package__float_buffer__buffer_tag__mode__position_axiom
  (assert (<= 0 some_package__float_buffer__buffer_tag__mode__position))

(declare-fun some_package__float_buffer__buffer_tag__buffer__first__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__buffer__last__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__buffer__position () Int)

;; some_package__float_buffer__buffer_tag__buffer__first__bit_axiom
  (assert (<= 0 some_package__float_buffer__buffer_tag__buffer__first__bit))

;; some_package__float_buffer__buffer_tag__buffer__last__bit_axiom
  (assert
  (< some_package__float_buffer__buffer_tag__buffer__first__bit some_package__float_buffer__buffer_tag__buffer__last__bit))

;; some_package__float_buffer__buffer_tag__buffer__position_axiom
  (assert (<= 0 some_package__float_buffer__buffer_tag__buffer__position))

(declare-fun some_package__float_buffer__buffer_tag__index_head__first__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__index_head__last__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__index_head__position () Int)

;; some_package__float_buffer__buffer_tag__index_head__first__bit_axiom
  (assert
  (<= 0 some_package__float_buffer__buffer_tag__index_head__first__bit))

;; some_package__float_buffer__buffer_tag__index_head__last__bit_axiom
  (assert
  (< some_package__float_buffer__buffer_tag__index_head__first__bit some_package__float_buffer__buffer_tag__index_head__last__bit))

;; some_package__float_buffer__buffer_tag__index_head__position_axiom
  (assert
  (<= 0 some_package__float_buffer__buffer_tag__index_head__position))

(declare-fun some_package__float_buffer__buffer_tag__index_tail__first__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__index_tail__last__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__index_tail__position () Int)

;; some_package__float_buffer__buffer_tag__index_tail__first__bit_axiom
  (assert
  (<= 0 some_package__float_buffer__buffer_tag__index_tail__first__bit))

;; some_package__float_buffer__buffer_tag__index_tail__last__bit_axiom
  (assert
  (< some_package__float_buffer__buffer_tag__index_tail__first__bit some_package__float_buffer__buffer_tag__index_tail__last__bit))

;; some_package__float_buffer__buffer_tag__index_tail__position_axiom
  (assert
  (<= 0 some_package__float_buffer__buffer_tag__index_tail__position))

(declare-fun some_package__float_buffer__buffer_tag__haselements__first__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__haselements__last__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__haselements__position () Int)

;; some_package__float_buffer__buffer_tag__haselements__first__bit_axiom
  (assert
  (<= 0 some_package__float_buffer__buffer_tag__haselements__first__bit))

;; some_package__float_buffer__buffer_tag__haselements__last__bit_axiom
  (assert
  (< some_package__float_buffer__buffer_tag__haselements__first__bit 
  some_package__float_buffer__buffer_tag__haselements__last__bit))

;; some_package__float_buffer__buffer_tag__haselements__position_axiom
  (assert
  (<= 0 some_package__float_buffer__buffer_tag__haselements__position))

(declare-fun some_package__float_buffer__buffer_tag__num_overflows__first__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__num_overflows__last__bit () Int)

(declare-fun some_package__float_buffer__buffer_tag__num_overflows__position () Int)

;; some_package__float_buffer__buffer_tag__num_overflows__first__bit_axiom
  (assert
  (<= 0 some_package__float_buffer__buffer_tag__num_overflows__first__bit))

;; some_package__float_buffer__buffer_tag__num_overflows__last__bit_axiom
  (assert
  (< some_package__float_buffer__buffer_tag__num_overflows__first__bit 
  some_package__float_buffer__buffer_tag__num_overflows__last__bit))

;; some_package__float_buffer__buffer_tag__num_overflows__position_axiom
  (assert
  (<= 0 some_package__float_buffer__buffer_tag__num_overflows__position))

(declare-fun dummy6 () us_rep)

(declare-datatypes ()
((buffer_tag__ref (mk_buffer_tag__ref (buffer_tag__content us_rep)))))
(define-fun buffer_tag__ref___projection ((a buffer_tag__ref)) us_rep 
  (buffer_tag__content a))

(define-fun to_int4 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range5 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Bool)

(define-fun default_initial_assumption ((temp___expr_251 us_rep)
  (temp___skip_top_level_252 Bool)) Bool (and
                                         (= (attr__tag temp___expr_251) 
                                         us_tag)
                                         (and
                                         (and
                                         (and
                                         (and
                                         (and
                                         (= (to_rep3
                                            (rec__some_package__float_buffer__buffer_tag__mode
                                            (us_split_fields1
                                            temp___expr_251))) 0)
                                         (forall ((temp___254 (_ BitVec 8)))
                                         (=>
                                         (and
                                         (bvule ((_ int2bv 8) 0) temp___254)
                                         (bvule temp___254 ((_ int2bv 8) 255)))
                                         (fp.eq (to_rep4
                                                (select (rec__some_package__float_buffer__buffer_tag__buffer
                                                        (us_split_fields1
                                                        temp___expr_251)) temp___254)) (fp #b0 #b00000000 #b00000000000000000000000)))))
                                         (= (to_rep2
                                            (rec__some_package__float_buffer__buffer_tag__index_head
                                            (us_split_fields1
                                            temp___expr_251))) ((_ int2bv 8) 0)))
                                         (= (to_rep2
                                            (rec__some_package__float_buffer__buffer_tag__index_tail
                                            (us_split_fields1
                                            temp___expr_251))) ((_ int2bv 8) 0)))
                                         (= (rec__some_package__float_buffer__buffer_tag__haselements
                                            (us_split_fields1
                                            temp___expr_251)) (of_int1 0)))
                                         (= (to_rep1
                                            (rec__some_package__float_buffer__buffer_tag__num_overflows
                                            (us_split_fields1
                                            temp___expr_251))) 0))))

(declare-sort length_type 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 256)))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (length_type length_type) Bool)

(declare-fun dummy7 () length_type)

(declare-datatypes ()
((length_type__ref (mk_length_type__ref (length_type__content length_type)))))
(define-fun length_type__ref___projection ((a length_type__ref)) length_type 
  (length_type__content a))

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int element_type))))))
(declare-fun slide1 ((Array Int element_type) Int
  Int) (Array Int element_type))

;; slide_eq
  (assert
  (forall ((a (Array Int element_type)))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int element_type)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int element_type) Int Int
  (Array Int element_type) Int Int) (Array Int element_type))

;; concat_def
  (assert
  (forall ((a (Array Int element_type)) (b (Array Int element_type)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (element_type Int) (Array Int element_type))

;; singleton_def
  (assert
  (forall ((v element_type))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int element_type)) (a__first Int)
  (a__last Int) (b (Array Int element_type)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep4 (select a temp___idx_132)) (to_rep4
                                                                  (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int element_type)) (b (Array Int element_type)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep4 (select a temp___idx_132)) (to_rep4
                                         (select b (+ (- b__first a__first) temp___idx_132)))))))))))

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
                   (=> (<= low high) (and (in_range6 low) (in_range6 high))))))

(declare-datatypes ()
((us_t (mk___t (elts (Array Int element_type))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int element_type) (elts a))

(define-fun of_array ((a (Array Int element_type)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int element_type)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int element_type)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int element_type)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int element_type))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int element_type))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert
  (forall ((a (Array Int element_type))) (<= 0 (object__alignment2 a))))

(define-fun bool_eq3 ((x us_t)
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep (first (rt x)))
                 (to_rep (last (rt x))) (elts y) (to_rep (first (rt y)))
                 (to_rep (last (rt y)))))

(declare-fun user_eq8 (us_t us_t) Bool)

(declare-fun dummy8 () us_t)

(declare-datatypes ()
((element_array__ref (mk_element_array__ref (element_array__content us_t)))))
(define-fun element_array__ref___projection ((a element_array__ref)) us_t 
  (element_array__content a))

(declare-fun self__attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun elements__first () integer)

(declare-fun elements__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant ((temp___expr_223 Int)
  (temp___is_init_220 Bool) (temp___skip_constant_221 Bool)
  (temp___do_toplevel_222 Bool)) Bool (=>
                                      (or (= temp___is_init_220 true)
                                      (<= 0 256)) (in_range6
                                      temp___expr_223)))

(declare-fun length1 (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(declare-fun length2 (Int us_rep) Int)

(declare-fun length__function_guard1 (Int Int us_rep) Bool)

;; some_package__float_buffer__buffer_tag__compat_axiom
  (assert
  (forall ((self us_rep))
  (! (= (length1 self) (length2 us_tag self)) :pattern ((length2 us_tag self)) )))

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(define-fun dynamic_invariant3 ((temp___expr_229 us_t)
  (temp___is_init_226 Bool) (temp___skip_constant_227 Bool)
  (temp___do_toplevel_228 Bool)) Bool (=>
                                      (not (= temp___skip_constant_227 true))
                                      (dynamic_property 0 256
                                      (first1 temp___expr_229)
                                      (last1 temp___expr_229))))

(define-fun dynamic_invariant4 ((temp___expr_234 Int)
  (temp___is_init_231 Bool) (temp___skip_constant_232 Bool)
  (temp___do_toplevel_233 Bool)) Bool (=>
                                      (or (= temp___is_init_231 true)
                                      (<= 0 1)) (in_range2 temp___expr_234)))

(define-fun default_initial_assumption1 ((temp___expr_242 (Array (_ BitVec 8) element_type))
  (temp___skip_top_level_243 Bool)) Bool (forall ((temp___244 (_ BitVec 8)))
                                         (=>
                                         (and
                                         (bvule ((_ int2bv 8) 0) temp___244)
                                         (bvule temp___244 ((_ int2bv 8) 255)))
                                         (fp.eq (to_rep4
                                                (select temp___expr_242 temp___244)) (fp #b0 #b00000000 #b00000000000000000000000)))))

(define-fun dynamic_invariant5 ((temp___expr_211 (_ BitVec 8))
  (temp___is_init_208 Bool) (temp___skip_constant_209 Bool)
  (temp___do_toplevel_210 Bool)) Bool true)

(define-fun dynamic_invariant6 ((temp___expr_217 Float32)
  (temp___is_init_214 Bool) (temp___skip_constant_215 Bool)
  (temp___do_toplevel_216 Bool)) Bool (=>
                                      (or (= temp___is_init_214 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b01000000000000000000000)))
                                      (in_range4 temp___expr_217)))

(declare-fun self__split_fields () mode_type)

(declare-fun self__split_fields1 () (Array (_ BitVec 8) element_type))

(declare-fun self__split_fields2 () index_type)

(declare-fun self__split_fields3 () index_type)

(declare-fun self__split_fields4 () Bool)

(declare-fun self__split_fields5 () natural)

(declare-fun self__split_fields6 () us_private)

(declare-fun o () Int)

(declare-fun o1 () Int)

;; H
  (assert (dynamic_property 0 256 (to_rep elements__first)
  (to_rep elements__last)))

;; H
  (assert
  (and
  (= o1 (length1
        (mk___rep
        (mk___split_fields self__split_fields self__split_fields1
        self__split_fields2 self__split_fields3 self__split_fields4
        self__split_fields5 self__split_fields6) self__attr__tag)))
  (in_range6 o1)))

;; H
  (assert
  (=> (<= (to_rep elements__first) (to_rep elements__last))
  (= o (+ (- (to_rep elements__last) (to_rep elements__first)) 1))))

;; H
  (assert
  (=> (not (<= (to_rep elements__first) (to_rep elements__last))) (= o 0)))

(assert
;; WP_parameter_def
 ;; File "generic_queue.ads", line 45, characters 0-0
  (not (in_range o)))
(check-sat)
