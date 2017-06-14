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

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-fun nth ((_ BitVec 32) Int) Bool)

(declare-fun lsr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun pow2 (Int) Int)

(declare-fun to_int2 ((_ BitVec 32)) Int)

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

(declare-sort hash_type 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 32))

(define-fun bool_eq ((x (_ BitVec 32))
  (y (_ BitVec 32))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) (_ BitVec 32))

(declare-fun user_eq (hash_type hash_type) Bool)

(declare-fun dummy () hash_type)

(declare-datatypes ()
((hash_type__ref (mk_hash_type__ref (hash_type__content hash_type)))))
(define-fun hash_type__ref___projection ((a hash_type__ref)) hash_type 
  (hash_type__content a))

(declare-fun to_rep (hash_type) (_ BitVec 32))

(declare-fun of_rep ((_ BitVec 32)) hash_type)

;; inversion_axiom
  (assert
  (forall ((x hash_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 32)))
  (! (= (to_rep (of_rep x)) x) :pattern ((to_rep (of_rep x))) )))

(define-fun to_int3 ((x hash_type)) Int (bv2nat (to_rep x)))

;; range_int_axiom
  (assert
  (forall ((x hash_type)) (! (uint_in_range
  (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-sort count_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (count_type count_type) Bool)

(declare-fun dummy1 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(declare-fun to_rep1 (count_type) Int)

(declare-fun of_rep1 (Int) count_type)

;; inversion_axiom
  (assert
  (forall ((x count_type))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x count_type)) (! (in_range1
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__use_sets__my_sets__set__capacity count_type)(rec__use_sets__my_sets__set__modulus hash_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type 
  (rec__use_sets__my_sets__set__capacity a))

(define-fun us_split_discrs_2__projection ((a us_split_discrs)) hash_type 
  (rec__use_sets__my_sets__set__modulus a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__use_sets__my_sets__set us_main_type)))))
(define-fun us_split_fields_Set__projection ((a us_split_fields)) us_main_type 
  (rec__use_sets__my_sets__set a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_5__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep_7__projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                              a))

(define-fun us_rep_8__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep1
                           (rec__use_sets__my_sets__set__capacity
                           (us_split_discrs1 a))) (to_rep1
                                                  (rec__use_sets__my_sets__set__capacity
                                                  (us_split_discrs1 b))))
                        (= (to_rep
                           (rec__use_sets__my_sets__set__modulus
                           (us_split_discrs1 a))) (to_rep
                                                  (rec__use_sets__my_sets__set__modulus
                                                  (us_split_discrs1 b)))))
                        (= (us_main_eq
                           (rec__use_sets__my_sets__set (us_split_fields1 a))
                           (rec__use_sets__my_sets__set (us_split_fields1 b))) true))
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

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

(declare-fun use_sets__my_sets__set__capacity__first__bit () Int)

(declare-fun use_sets__my_sets__set__capacity__last__bit () Int)

(declare-fun use_sets__my_sets__set__capacity__position () Int)

;; use_sets__my_sets__set__capacity__first__bit_axiom
  (assert (<= 0 use_sets__my_sets__set__capacity__first__bit))

;; use_sets__my_sets__set__capacity__last__bit_axiom
  (assert
  (< use_sets__my_sets__set__capacity__first__bit use_sets__my_sets__set__capacity__last__bit))

;; use_sets__my_sets__set__capacity__position_axiom
  (assert (<= 0 use_sets__my_sets__set__capacity__position))

(declare-fun use_sets__my_sets__set__modulus__first__bit () Int)

(declare-fun use_sets__my_sets__set__modulus__last__bit () Int)

(declare-fun use_sets__my_sets__set__modulus__position () Int)

;; use_sets__my_sets__set__modulus__first__bit_axiom
  (assert (<= 0 use_sets__my_sets__set__modulus__first__bit))

;; use_sets__my_sets__set__modulus__last__bit_axiom
  (assert
  (< use_sets__my_sets__set__modulus__first__bit use_sets__my_sets__set__modulus__last__bit))

;; use_sets__my_sets__set__modulus__position_axiom
  (assert (<= 0 use_sets__my_sets__set__modulus__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep)))))
(define-fun set__ref___projection ((a set__ref)) us_rep (set__content a))

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

(declare-fun oeq1 (Int us_rep us_rep) Bool)

(declare-fun oeq__function_guard1 (Bool Int us_rep us_rep) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (= (user_eq2 a b) (oeq a b)) :pattern ((user_eq2 a b)) )))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__use_sets__my_sets__cursor__node count_type)))))
(define-fun us_split_fields_Node__projection ((a us_split_fields2)) count_type 
  (rec__use_sets__my_sets__cursor__node a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_6__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_9__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq3 ((a us_rep1)
  (b us_rep1)) Bool (ite (= (to_rep1
                            (rec__use_sets__my_sets__cursor__node
                            (us_split_fields3 a))) (to_rep1
                                                   (rec__use_sets__my_sets__cursor__node
                                                   (us_split_fields3 b))))
                    true false))

(declare-fun user_eq3 (us_rep1 us_rep1) Bool)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep1) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))

(declare-fun use_sets__my_sets__cursor__node__first__bit () Int)

(declare-fun use_sets__my_sets__cursor__node__last__bit () Int)

(declare-fun use_sets__my_sets__cursor__node__position () Int)

;; use_sets__my_sets__cursor__node__first__bit_axiom
  (assert (<= 0 use_sets__my_sets__cursor__node__first__bit))

;; use_sets__my_sets__cursor__node__last__bit_axiom
  (assert
  (< use_sets__my_sets__cursor__node__first__bit use_sets__my_sets__cursor__node__last__bit))

;; use_sets__my_sets__cursor__node__position_axiom
  (assert (<= 0 use_sets__my_sets__cursor__node__position))

(declare-fun dummy3 () us_rep1)

(declare-datatypes ()
((cursor__ref (mk_cursor__ref (cursor__content us_rep1)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep1 (cursor__content
                                                               a))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(declare-fun length1 (Int us_rep) Int)

(declare-fun length__function_guard1 (Int Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_173 Int)
  (temp___is_init_170 Bool) (temp___skip_constant_171 Bool)
  (temp___do_toplevel_172 Bool)) Bool (=>
                                      (or (= temp___is_init_170 true)
                                      (<= 0 2147483647)) (in_range1
                                      temp___expr_173)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and
     (<= result (to_rep1
                (rec__use_sets__my_sets__set__capacity
                (us_split_discrs1 container))))
     (dynamic_invariant result true false true))) :pattern ((length
                                                            container)) )))

;; length__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep)) (! (dynamic_invariant
  (length1 attr__tag container) true false
  true) :pattern ((length1 attr__tag container)) ))))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep2 0)

(declare-fun bool_eq4 (us_rep2 us_rep2) Bool)

(declare-fun user_eq4 (us_rep2 us_rep2) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep2) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))

(declare-fun dummy4 () us_rep2)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep2)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep2 (sequence__content
                                                                   a))

(declare-fun get (us_rep2 Int) Int)

(declare-fun get__function_guard (Int us_rep2 Int) Bool)

(declare-sort element_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq5 (element_type element_type) Bool)

(declare-fun dummy5 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_4__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_379 Int)
  (temp___is_init_376 Bool) (temp___skip_constant_377 Bool)
  (temp___do_toplevel_378 Bool)) Bool (=>
                                      (or (= temp___is_init_376 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_379)))

(declare-sort extended_index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq6 (extended_index extended_index) Bool)

(declare-fun dummy6 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant2 ((temp___expr_385 Int)
  (temp___is_init_382 Bool) (temp___skip_constant_383 Bool)
  (temp___do_toplevel_384 Bool)) Bool (=>
                                      (or (= temp___is_init_382 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_385)))

(declare-fun length2 (us_rep2) Int)

(declare-fun length__function_guard2 (Int us_rep2) Bool)

(define-fun last ((container us_rep2)) Int (+ 0 (length2 container)))

(declare-fun last__function_guard (Int us_rep2) Bool)

(define-fun oeq2 ((left us_rep2)
  (right us_rep2)) Bool (and (= (length2 left) (length2 right)) (ite 
                                                                (forall
                                                                ((n Int))
                                                                (=>
                                                                (and (<= 1 n)
                                                                (<= n 
                                                                (last left)))
                                                                (= (get left
                                                                   n) 
                                                                (get right n))))
                                                                true false)))

(declare-fun oeq__function_guard2 (Bool us_rep2 us_rep2) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep2) (b us_rep2))
  (! (= (user_eq4 a b) (oeq2 a b)) :pattern ((user_eq4 a b)) )))

(define-fun default_initial_assumption ((temp___expr_392 us_rep2)
  (temp___skip_top_level_393 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_393 true))
                                         (= (length2 temp___expr_392) 0)))

;; get__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant2 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant1 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun elements (us_rep) us_rep2)

(declare-fun elements__function_guard (us_rep2 us_rep) Bool)

(declare-sort element_type1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq7 (element_type1 element_type1) Bool)

(declare-fun dummy7 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_3__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(declare-sort us_main_type2 0)

(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)

(declare-sort us_rep3 0)

(declare-fun bool_eq8 (us_rep3 us_rep3) Bool)

(declare-fun user_eq8 (us_rep3 us_rep3) Bool)

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep3) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep3) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep3)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep3)) (<= 0 (object__alignment3 a))))

(declare-fun dummy8 () us_rep3)

(declare-datatypes () ((set__ref1 (mk_set__ref1 (set__content1 us_rep3)))))
(define-fun set__ref_2__projection ((a set__ref1)) us_rep3 (set__content1 a))

(declare-fun contains (us_rep3 Int) Bool)

(declare-fun contains__function_guard (Bool us_rep3 Int) Bool)

(define-fun iter_has_element ((container us_rep2)
  (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position 
                                                             (last container))
                                                             true false)))

(declare-fun iter_has_element__function_guard (Bool us_rep2 Int) Bool)

(declare-fun find (us_rep2 Int) Int)

(declare-fun find__function_guard (Int us_rep2 Int) Bool)

(declare-fun model__ (us_rep) us_rep3)

(declare-fun model____function_guard (us_rep3 us_rep) Bool)

;; elements__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (elements container)))
     (and
     (and
     (and
     (and (= (length2 result) (length container))
     (forall ((temp___429 Int))
     (=>
     (and (in_range3 temp___429)
     (= (iter_has_element result temp___429) true))
     (= (contains (model__ container) (get result temp___429)) true))))
     (forall ((item Int))
     (=> (and (in_range4 item) (= (contains (model__ container) item) true))
     (and (< 0 (find result item)) (= (get result (find result item)) item)))))
     (forall ((i Int))
     (=> (and (<= 1 i) (<= i (length container)))
     (= (find result (get result i)) i))))
     (forall ((i Int))
     (=> (and (<= 1 i) (<= i (length container)))
     (forall ((j Int))
     (=> (and (<= 1 j) (<= j (length container)))
     (=> (= (get result i) (get result j)) (= i j)))))))) :pattern ((elements
                                                                    container)) )))

(declare-sort us_main_type3 0)

(declare-fun us_main_eq3 (us_main_type3 us_main_type3) Bool)

(declare-sort us_rep4 0)

(declare-fun bool_eq9 (us_rep4 us_rep4) Bool)

(declare-fun user_eq9 (us_rep4 us_rep4) Bool)

(declare-fun value__size4 () Int)

(declare-fun object__size4 (us_rep4) Int)

(declare-fun value__alignment4 () Int)

(declare-fun object__alignment4 (us_rep4) Int)

;; value__size_axiom
  (assert (<= 0 value__size4))

;; object__size_axiom
  (assert (forall ((a us_rep4)) (<= 0 (object__size4 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment4))

;; object__alignment_axiom
  (assert (forall ((a us_rep4)) (<= 0 (object__alignment4 a))))

(declare-fun dummy9 () us_rep4)

(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep4)))))
(define-fun map__ref___projection ((a map__ref)) us_rep4 (map__content a))

(declare-datatypes ()
((key_type__ref (mk_key_type__ref (key_type__content us_rep1)))))
(define-fun key_type__ref___projection ((a key_type__ref)) us_rep1 (key_type__content
                                                                   a))

(declare-fun has_key (us_rep4 us_rep1) Bool)

(declare-fun has_key__function_guard (Bool us_rep4 us_rep1) Bool)

(declare-fun positions (us_rep) us_rep4)

(declare-fun positions__function_guard (us_rep4 us_rep) Bool)

(define-fun has_element ((container us_rep)
  (position us_rep1)) Bool (has_key (positions container) position))

(declare-fun has_element__function_guard (Bool us_rep us_rep1) Bool)

(declare-fun has_element1 (Int us_rep us_rep1) Bool)

(declare-fun has_element__function_guard1 (Bool Int us_rep us_rep1) Bool)

;; has_element__post__dispatch_axiom
  (assert true)

(declare-fun get1 (us_rep4 us_rep1) Int)

(declare-fun get__function_guard1 (Int us_rep4 us_rep1) Bool)

(define-fun element ((container us_rep)
  (position us_rep1)) Int (get (elements container)
                          (get1 (positions container) position)))

(declare-fun element__function_guard (Int us_rep us_rep1) Bool)

(declare-fun element1 (Int us_rep us_rep1) Int)

(declare-fun element__function_guard1 (Int Int us_rep us_rep1) Bool)

(declare-sort element_type2 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq10 (element_type2 element_type2) Bool)

(declare-fun dummy10 () element_type2)

(declare-datatypes ()
((element_type__ref2
 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref_2__projection ((a element_type__ref2)) element_type2 
  (element_type__content2 a))

(define-fun dynamic_invariant3 ((temp___expr_325 Int)
  (temp___is_init_322 Bool) (temp___skip_constant_323 Bool)
  (temp___do_toplevel_324 Bool)) Bool (=>
                                      (or (= temp___is_init_322 true)
                                      (<= 0 2147483647)) (in_range5
                                      temp___expr_325)))

;; element__post__dispatch_axiom
  (assert
  (forall ((attr__tag Int))
  (forall ((container us_rep))
  (forall ((position us_rep1)) (! (dynamic_invariant3
  (element1 attr__tag container position) true false
  true) :pattern ((element1 attr__tag container position)) )))))

(declare-fun q (Int) Bool)

(declare-fun q__function_guard (Bool Int) Bool)

(declare-sort element_type3 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq11 (element_type3 element_type3) Bool)

(declare-fun dummy11 () element_type3)

(declare-datatypes ()
((element_type__ref3
 (mk_element_type__ref3 (element_type__content3 element_type3)))))
(define-fun element_type__ref___projection ((a element_type__ref3)) element_type3 
  (element_type__content3 a))

(define-fun dynamic_invariant4 ((temp___expr_319 Int)
  (temp___is_init_316 Bool) (temp___skip_constant_317 Bool)
  (temp___do_toplevel_318 Bool)) Bool (=>
                                      (or (= temp___is_init_316 true)
                                      (<= 0 2147483647)) (in_range6
                                      temp___expr_319)))

;; q__post_axiom
  (assert true)

(declare-fun s () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant5 ((temp___expr_167 (_ BitVec 32))
  (temp___is_init_164 Bool) (temp___skip_constant_165 Bool)
  (temp___do_toplevel_166 Bool)) Bool true)

(declare-fun no_element () us_rep1)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

;; no_element__def_axiom
  (assert (= no_element (mk___rep1 (mk___split_fields1 (of_rep1 0)))))

;; find__post_axiom
  (assert
  (forall ((container us_rep2))
  (forall ((item Int))
  (! (=> (dynamic_invariant3 item true true true)
     (let ((result (find container item)))
     (and
     (=> (< 0 result)
     (and (<= result (length2 container)) (= item (get container result))))
     (dynamic_invariant result true false true)))) :pattern ((find container
                                                             item)) ))))

(define-fun e_elements_included ((left us_rep2)
  (right us_rep2)) Bool (ite (forall ((i Int))
                             (=> (and (<= 1 i) (<= i (length2 left)))
                             (and (< 0 (find right (get left i)))
                             (= (get right (find right (get left i))) 
                             (get left i)))))
                        true false))

(declare-fun e_elements_included__function_guard (Bool us_rep2 us_rep2) Bool)

(declare-fun is_empty (us_rep3) Bool)

(declare-fun is_empty__function_guard (Bool us_rep3) Bool)

(define-fun default_initial_assumption1 ((temp___expr_361 us_rep3)
  (temp___skip_top_level_362 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_362 true))
                                         (= (is_empty temp___expr_361) true)))

(declare-fun length3 (us_rep3) Int)

(declare-fun length__function_guard3 (Int us_rep3) Bool)

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length3 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

(declare-fun length4 (us_rep4) Int)

(declare-fun length__function_guard4 (Int us_rep4) Bool)

(declare-fun is_empty1 (us_rep4) Bool)

(declare-fun is_empty__function_guard1 (Bool us_rep4) Bool)

(define-fun default_initial_assumption2 ((temp___expr_412 us_rep4)
  (temp___skip_top_level_413 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_413 true))
                                         (and
                                         (= (is_empty1 temp___expr_412) true)
                                         (= (length4 temp___expr_412) 0))))

;; positions__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (positions container)))
     (and (not (= (has_key result no_element) true))
     (forall ((i us_rep1))
     (=> (= (has_key result i) true)
     (and
     (and (<= 1 (get1 result i)) (<= (get1 result i) (length container)))
     (forall ((j us_rep1))
     (=> (= (has_key result j) true)
     (=> (= (get1 result i) (get1 result j)) (= (bool_eq3 i j) true))))))))) :pattern (
  (positions container)) )))

;; oeq__post_axiom
  (assert
  (forall ((left us_rep) (right us_rep))
  (! (let ((result (oeq left right)))
     (and
     (= (= result true)
     (and (= (length left) (length right))
     (= (e_elements_included (elements left) (elements right)) true)))
     (= (= result true)
     (and (= (e_elements_included (elements left) (elements right)) true)
     (= (e_elements_included (elements right) (elements left)) true))))) :pattern (
  (oeq left right)) )))

;; oeq__post__dispatch_axiom
  (assert true)

(define-fun dynamic_invariant6 ((temp___expr_354 Int)
  (temp___is_init_351 Bool) (temp___skip_constant_352 Bool)
  (temp___do_toplevel_353 Bool)) Bool (=>
                                      (or (= temp___is_init_351 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_354)))

;; contains__post_axiom
  (assert
  (forall ((container us_rep3))
  (forall ((item Int))
  (! (=> (dynamic_invariant6 item true true true)
     (=> (= (of_int 1) true)
     (=>
     (exists ((e Int))
     (and (and (in_range4 e) (= (contains container e) true)) (= e item)))
     (= (contains container item) true)))) :pattern ((contains container
                                                     item)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep3)) (! (dynamic_invariant (length3 container)
  true false true) :pattern ((length3 container)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep3))
  (! (let ((result (is_empty container)))
     (and
     (= (= result true)
     (forall ((item Int))
     (not (and (in_range4 item) (= (contains container item) true)))))
     (= (= result true) (= (length3 container) 0)))) :pattern ((is_empty
                                                               container)) )))

;; length__post_axiom
  (assert
  (forall ((container us_rep2))
  (! (let ((result (length2 container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false
     true))) :pattern ((length2 container)) )))

;; has_key__post_axiom
  (assert
  (forall ((container us_rep4))
  (forall ((key us_rep1))
  (! (=> (= (of_int 0) true)
     (=>
     (exists ((k us_rep1))
     (and (= (has_key container k) true) (= (bool_eq3 k key) true)))
     (= (has_key container key) true))) :pattern ((has_key container key)) ))))

(declare-sort element_type4 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq12 (element_type4 element_type4) Bool)

(declare-fun dummy12 () element_type4)

(declare-datatypes ()
((element_type__ref4
 (mk_element_type__ref4 (element_type__content4 element_type4)))))
(define-fun element_type__ref_5__projection ((a element_type__ref4)) element_type4 
  (element_type__content4 a))

(define-fun dynamic_invariant7 ((temp___expr_405 Int)
  (temp___is_init_402 Bool) (temp___skip_constant_403 Bool)
  (temp___do_toplevel_404 Bool)) Bool (=>
                                      (or (= temp___is_init_402 true)
                                      (<= 1 2147483647)) (in_range7
                                      temp___expr_405)))

(declare-fun witness (us_rep4 us_rep1) Int)

(declare-fun witness__function_guard (Int us_rep4 us_rep1) Bool)

(declare-fun w_get (us_rep4 Int) Int)

(declare-fun w_get__function_guard (Int us_rep4 Int) Bool)

;; get__post_axiom
  (assert
  (forall ((container us_rep4))
  (forall ((key us_rep1))
  (! (=> (= (has_key container key) true)
     (let ((result (get1 container key)))
     (and
     (=> (= (of_int 0) true)
     (and (= result (w_get container (witness container key)))
     (forall ((k us_rep1))
     (=> (= (has_key container k) true)
     (= (= (bool_eq3 k key) true)
     (= (witness container key) (witness container k)))))))
     (dynamic_invariant7 result true false true)))) :pattern ((get1 container
                                                              key)) ))))

;; length__post_axiom
  (assert
  (forall ((container us_rep4)) (! (dynamic_invariant (length4 container)
  true false true) :pattern ((length4 container)) )))

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep4))
  (! (= (= (is_empty1 container) true)
     (forall ((key us_rep1)) (not (= (has_key container key) true)))) :pattern (
  (is_empty1 container)) )))

(declare-fun has_witness (us_rep4 Int) Bool)

(declare-fun has_witness__function_guard (Bool us_rep4 Int) Bool)

;; has_witness__post_axiom
  (assert true)

;; witness__post_axiom
  (assert
  (forall ((container us_rep4))
  (forall ((key us_rep1))
  (! (=> (= (has_key container key) true)
     (let ((result (witness container key)))
     (and (= (has_witness container result) true) (dynamic_invariant result
     true false true)))) :pattern ((witness container key)) ))))

;; w_get__post_axiom
  (assert
  (forall ((container us_rep4))
  (forall ((witness1 Int))
  (! (=>
     (and (dynamic_invariant witness1 true true true)
     (= (has_witness container witness1) true)) (dynamic_invariant7
     (w_get container witness1) true false true)) :pattern ((w_get container
                                                            witness1)) ))))

;; H
  (assert
  (forall ((i Int)) (q__function_guard (q (get (elements s) i))
  (get (elements s) i))))

;; H
  (assert
  (forall ((i Int))
  (=> (and (<= 1 i) (<= i (length s))) (= (q (get (elements s) i)) true))))

(declare-fun cu () us_rep1)

;; H
  (assert (= (has_key (positions s) cu) true))

;; H
  (assert (q__function_guard (q (element s cu)) (element s cu)))

(assert
;; WP_parameter_def
 ;; File "use_sets.ads", line 92, characters 0-0
  (not (= (q (element s cu)) true)))
(check-sat)
