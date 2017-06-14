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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

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

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort my_integer 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 200)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (my_integer my_integer) Bool)

(declare-fun dummy2 () my_integer)

(declare-datatypes ()
((my_integer__ref (mk_my_integer__ref (my_integer__content my_integer)))))
(define-fun my_integer__ref___projection ((a my_integer__ref)) my_integer 
  (my_integer__content a))

(define-fun dynamic_invariant1 ((temp___expr_515 Int)
  (temp___is_init_512 Bool) (temp___skip_constant_513 Bool)
  (temp___do_toplevel_514 Bool)) Bool (=>
                                      (or (= temp___is_init_512 true)
                                      (<= 1 200)) (in_range3
                                      temp___expr_515)))

(declare-sort small_int 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (small_int small_int) Bool)

(declare-fun dummy3 () small_int)

(declare-datatypes ()
((small_int__ref (mk_small_int__ref (small_int__content small_int)))))
(define-fun small_int__ref___projection ((a small_int__ref)) small_int 
  (small_int__content a))

(define-fun dynamic_invariant2 ((temp___expr_521 Int)
  (temp___is_init_518 Bool) (temp___skip_constant_519 Bool)
  (temp___do_toplevel_520 Bool)) Bool (=>
                                      (or (= temp___is_init_518 true)
                                      (<= 1 10)) (in_range4 temp___expr_521)))

(declare-sort positive 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (positive positive) Bool)

(declare-fun dummy4 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-fun to_rep1 (positive) Int)

(declare-fun of_rep1 (Int) positive)

;; inversion_axiom
  (assert
  (forall ((x positive))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x positive)) (! (in_range5 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int positive))))))
(declare-fun slide ((Array Int positive) Int Int) (Array Int positive))

;; slide_eq
  (assert
  (forall ((a (Array Int positive)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int positive)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int positive) Int Int (Array Int positive) Int
  Int) (Array Int positive))

;; concat_def
  (assert
  (forall ((a (Array Int positive)) (b (Array Int positive)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (positive Int) (Array Int positive))

;; singleton_def
  (assert
  (forall ((v positive))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq5 ((a (Array Int positive)) (a__first Int) (a__last Int)
  (b (Array Int positive)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_151 Int))
                           (=>
                           (and (<= a__first temp___idx_151)
                           (<= temp___idx_151 a__last))
                           (= (to_rep1 (select a temp___idx_151)) (to_rep1
                                                                  (select b (+ (- b__first a__first) temp___idx_151)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int positive)) (b (Array Int positive)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_151 Int))
  (=> (and (<= a__first temp___idx_151) (<= temp___idx_151 a__last))
  (= (to_rep1 (select a temp___idx_151)) (to_rep1
                                         (select b (+ (- b__first a__first) temp___idx_151)))))))))))

(declare-fun compare ((Array Int positive) Int Int (Array Int positive) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int positive)) (b (Array Int positive)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq5 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int positive)) (b (Array Int positive)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq5 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep1 (select a (+ i 1))) (to_rep1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int positive)) (b (Array Int positive)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq5 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep1 (select b (+ i 1))) (to_rep1 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy5 () (Array Int positive))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int positive)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int positive)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int positive)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int positive))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int positive))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int positive))) (<= 0 (object__alignment a))))

(declare-fun user_eq5 ((Array Int positive) (Array Int positive)) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__container__container__a (Array Int positive))))))
(define-fun us_split_fields_A__projection ((a us_split_fields)) (Array Int positive) 
  (rec__container__container__a a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_3__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq6 ((a us_rep)
  (b us_rep)) Bool (ite (= (bool_eq5
                           (rec__container__container__a
                           (us_split_fields1 a)) 1 200
                           (rec__container__container__a
                           (us_split_fields1 b)) 1 200) true)
                   true false))

(declare-fun user_eq6 (us_rep us_rep) Bool)

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

(declare-fun container__container__a__first__bit () Int)

(declare-fun container__container__a__last__bit () Int)

(declare-fun container__container__a__position () Int)

;; container__container__a__first__bit_axiom
  (assert (<= 0 container__container__a__first__bit))

;; container__container__a__last__bit_axiom
  (assert
  (< container__container__a__first__bit container__container__a__last__bit))

;; container__container__a__position_axiom
  (assert (<= 0 container__container__a__position))

(declare-fun dummy6 () us_rep)

(declare-datatypes ()
((container__ref (mk_container__ref (container__content us_rep)))))
(define-fun container__ref___projection ((a container__ref)) us_rep (container__content
                                                                    a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1 (rec__container__cursor__index natural)))))
(define-fun us_split_fields_Index__projection ((a us_split_fields2)) natural 
  (rec__container__cursor__index a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_4__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq7 ((a us_rep1)
  (b us_rep1)) Bool (ite (= (to_rep
                            (rec__container__cursor__index
                            (us_split_fields3 a))) (to_rep
                                                   (rec__container__cursor__index
                                                   (us_split_fields3 b))))
                    true false))

(declare-fun user_eq7 (us_rep1 us_rep1) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep1) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))

(declare-fun container__cursor__index__first__bit () Int)

(declare-fun container__cursor__index__last__bit () Int)

(declare-fun container__cursor__index__position () Int)

;; container__cursor__index__first__bit_axiom
  (assert (<= 0 container__cursor__index__first__bit))

;; container__cursor__index__last__bit_axiom
  (assert
  (< container__cursor__index__first__bit container__cursor__index__last__bit))

;; container__cursor__index__position_axiom
  (assert (<= 0 container__cursor__index__position))

(declare-fun dummy7 () us_rep1)

(declare-datatypes ()
((cursor__ref (mk_cursor__ref (cursor__content us_rep1)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep1 (cursor__content
                                                               a))

(declare-fun first (us_rep) us_rep1)

(declare-fun first__function_guard (us_rep1 us_rep) Bool)

;; first__post_axiom
  (assert true)

;; first__def_axiom
  (assert
  (forall ((c us_rep))
  (! (=> (first__function_guard (first c) c)
     (= (first c) (mk___rep1 (mk___split_fields1 (of_rep 1))))) :pattern (
  (first c)) )))

(declare-fun has_element (us_rep us_rep1) Bool)

(declare-fun has_element__function_guard (Bool us_rep us_rep1) Bool)

;; has_element__post_axiom
  (assert true)

;; has_element__def_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p us_rep1))
  (! (=> (has_element__function_guard (has_element c p) c p)
     (= (= (has_element c p) true)
     (and
     (<= 1 (to_rep (rec__container__cursor__index (us_split_fields3 p))))
     (<= (to_rep (rec__container__cursor__index (us_split_fields3 p))) 200)))) :pattern (
  (has_element c p)) ))))

(declare-fun next (us_rep us_rep1) us_rep1)

(declare-fun next__function_guard (us_rep1 us_rep us_rep1) Bool)

;; next__post_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p us_rep1)) (! (has_element__function_guard (has_element c p) c
  p) :pattern ((next c p)) ))))

;; next__def_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p us_rep1))
  (! (=> (next__function_guard (next c p) c p)
     (= (next c p) (ite (< (to_rep
                           (rec__container__cursor__index
                           (us_split_fields3 p))) 200)
                   (mk___rep1
                   (mk___split_fields1
                   (of_rep
                   (+ (to_rep
                      (rec__container__cursor__index (us_split_fields3 p))) 1))))
                   (mk___rep1 (mk___split_fields1 (of_rep 0)))))) :pattern (
  (next c p)) ))))

(declare-fun element (us_rep us_rep1) Int)

(declare-fun element__function_guard (Int us_rep us_rep1) Bool)

;; element__post_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p us_rep1))
  (! (and (has_element__function_guard (has_element c p) c p)
     (=> (= (has_element c p) true)
     (let ((result (element c p)))
     (=> (element__function_guard result c p) (dynamic_invariant result true
     false true))))) :pattern ((element c p)) ))))

;; element__def_axiom
  (assert
  (forall ((c us_rep))
  (forall ((p us_rep1))
  (! (=> (element__function_guard (element c p) c p)
     (= (element c p) (to_rep1
                      (let ((temp___563 (rec__container__container__a
                                        (us_split_fields1 c))))
                      (select temp___563 (to_rep
                                         (rec__container__cursor__index
                                         (us_split_fields3 p)))))))) :pattern (
  (element c p)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-sort t1b 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 200)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq8 (t1b t1b) Bool)

(declare-fun dummy8 () t1b)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun container__arr__aggregate_def (Int) (Array Int positive))

;; def_axiom
  (assert
  (forall ((temp___605 Int))
  (forall ((temp___606 Int))
  (= (select (container__arr__aggregate_def temp___605) temp___606) (of_rep1
                                                                    temp___605)))))

(define-fun dynamic_invariant3 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(define-fun dynamic_invariant4 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range5
                                     temp___expr_39)))

(declare-fun x () Int)

(declare-fun r () Int)

(declare-fun i () Int)

(declare-fun b () Bool)

(declare-fun arr () (Array Int positive))

(declare-fun my_container__split_fields () (Array Int positive))

(declare-fun position__split_fields () natural)

(declare-fun o () (Array Int positive))

(declare-fun o1 () natural)

(declare-fun o2 () natural)

(declare-fun container__position__assume () natural)

(declare-fun temp___565 () Int)

(declare-fun temp___564 () Bool)

(declare-fun o3 () Int)

(declare-fun b1 () Bool)

(declare-fun result () int__ref)

(declare-fun x1 () Int)

(declare-fun result1 () int__ref)

(declare-fun r1 () Int)

(declare-fun result2 () int__ref)

(declare-fun i1 () Int)

(declare-fun result3 () map__ref)

(declare-fun arr1 () (Array Int positive))

(declare-fun result4 () us_split_fields__ref)

(declare-fun my_container__split_fields1 () us_split_fields)

(declare-fun result5 () us_split_fields__ref1)

(declare-fun position__split_fields1 () us_split_fields2)

(declare-fun x2 () Int)

(declare-fun b2 () Bool)

(declare-fun result6 () bool__ref)

(declare-fun b3 () Bool)

(declare-fun result7 () int__ref)

(declare-fun x3 () Int)

(declare-fun x4 () int__ref)

(declare-fun b4 () bool__ref)

(declare-fun x5 () Int)

(declare-fun b5 () Bool)

(declare-fun x6 () int__ref)

(declare-fun b6 () bool__ref)

(declare-fun x7 () Int)

(declare-fun b7 () Bool)

(declare-fun r2 () Int)

(declare-fun i2 () Int)

(declare-fun temp___569 () Int)

(declare-fun temp___568 () Int)

(declare-fun result8 () int__ref)

(declare-fun temp___5691 () Int)

(declare-fun result9 () int__ref)

(declare-fun temp___5681 () Int)

;; H
  (assert (= result (mk_int__ref x)))

;; H
  (assert (= x1 1))

;; H
  (assert (in_range3 x1))

;; H
  (assert (= result1 (mk_int__ref r)))

;; H
  (assert (= r1 100))

;; H
  (assert (in_range3 r1))

;; H
  (assert (= result2 (mk_int__ref i)))

;; H
  (assert (= i1 1))

;; H
  (assert (in_range4 i1))

;; H
  (assert (= o (container__arr__aggregate_def 3)))

;; H
  (assert (= result3 (mk_map__ref arr)))

;; H
  (assert (= arr1 o))

;; H
  (assert
  (= result4 (mk___split_fields__ref
             (mk___split_fields my_container__split_fields))))

;; H
  (assert (= my_container__split_fields1 (mk___split_fields arr1)))

;; H
  (assert (= (to_rep o1) 0))

;; H
  (assert (= o1 o2))

;; H
  (assert (= container__position__assume o2))

;; H
  (assert
  (= result5 (mk___split_fields__ref1
             (mk___split_fields1 position__split_fields))))

;; H
  (assert
  (= position__split_fields1 (mk___split_fields1 container__position__assume)))

;; H
  (assert (=> (< 0 x1) (= temp___565 x1)))

;; H
  (assert (=> (< 0 x1) (= temp___564 b)))

;; H
  (assert (=> (< 0 x1) (and (=> (<= 1 200) (in_range3 x2)) (< 0 x2))))

;; H
  (assert (=> (< 0 x1) (= result6 (mk_bool__ref b2))))

;; H
  (assert (=> (< 0 x1) (= b3 (of_int 1))))

;; H
  (assert
  (=> (< 0 x1) (=> (< x2 200) (and (= o3 (+ x2 1)) (in_range3 (+ x2 1))))))

;; H
  (assert (=> (< 0 x1) (=> (< x2 200) (= result7 (mk_int__ref x2)))))

;; H
  (assert (=> (< 0 x1) (=> (< x2 200) (= x3 o3))))

;; H
  (assert (=> (< 0 x1) (=> (not (< x2 200)) (= x3 x2))))

;; H
  (assert (=> (< 0 x1) (not (< 0 x3))))

;; H
  (assert (=> (< 0 x1) (= b4 (mk_bool__ref b3))))

;; H
  (assert (=> (< 0 x1) (= x4 (mk_int__ref x3))))

;; H
  (assert (=> (< 0 x1) (= b5 b3)))

;; H
  (assert (=> (< 0 x1) (= x5 x3)))

;; H
  (assert (=> (< 0 x1) (= b6 b4)))

;; H
  (assert (=> (< 0 x1) (= x6 x4)))

;; H
  (assert (=> (< 0 x1) (= b7 b5)))

;; H
  (assert (=> (< 0 x1) (= x7 x5)))

;; H
  (assert (=> (not (< 0 x1)) (= b6 (mk_bool__ref b))))

;; H
  (assert (=> (not (< 0 x1)) (= x6 (mk_int__ref x1))))

;; H
  (assert (=> (not (< 0 x1)) (= b7 b1)))

;; H
  (assert (=> (not (< 0 x1)) (= x7 x1)))

;; H
  (assert (< i1 10))

;; H
  (assert (<= (- 100 (* 10 i2)) r2))

;; H
  (assert
  (and (and (=> (<= 1 200) (in_range3 r2)) (=> (<= 1 10) (in_range4 i2)))
  (< i2 10)))

;; H
  (assert (= result8 (mk_int__ref temp___569)))

;; H
  (assert (= temp___5691 i2))

;; H
  (assert (= result9 (mk_int__ref temp___568)))

;; H
  (assert (= temp___5681 r2))

(assert
;; WP_parameter_def
 ;; File "container.ads", line 33, characters 0-0
  (not (in_range3 (- r2 i2))))
(check-sat)
