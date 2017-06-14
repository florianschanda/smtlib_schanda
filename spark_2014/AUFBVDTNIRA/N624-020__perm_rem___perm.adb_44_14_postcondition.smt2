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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

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
  (forall ((x natural)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index index) Bool)

(declare-fun dummy1 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(declare-fun to_rep1 (index) Int)

(declare-fun of_rep1 (Int) index)

;; inversion_axiom
  (assert
  (forall ((x index))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x index)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int natural))))))
(declare-fun slide ((Array Int natural) Int Int) (Array Int natural))

;; slide_eq
  (assert
  (forall ((a (Array Int natural)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int natural)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int natural) Int Int (Array Int natural) Int
  Int) (Array Int natural))

;; concat_def
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (natural Int) (Array Int natural))

;; singleton_def
  (assert
  (forall ((v natural))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int natural)) (a__first Int) (a__last Int)
  (b (Array Int natural)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int natural) Int Int (Array Int natural) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort integer 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

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
  (forall ((x integer)) (! (in_range3 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range3 f)
     (=> (in_range3 l)
     (and (= (to_rep2 (first (mk f l))) f) (= (to_rep2 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range3 low)
                   (and (in_range3 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int natural))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int natural) (elts a))

(define-fun of_array ((a (Array Int natural)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep2 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep2 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int natural)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int natural)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq2 (elts x) (to_rep2 (first (rt x)))
                 (to_rep2 (last (rt x))) (elts y) (to_rep2 (first (rt y)))
                 (to_rep2 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-datatypes ()
((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content
                                                                  a))

(define-fun dynamic_invariant ((temp___expr_178 us_t)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (=>
                                      (not (= temp___skip_constant_176 true))
                                      (dynamic_property 1 100
                                      (first1 temp___expr_178)
                                      (last1 temp___expr_178))))

(declare-fun invariant__ (us_t) Bool)

(declare-fun invariant____function_guard (Bool us_t) Bool)

;; invariant____post_axiom
  (assert true)

;; invariant____def_axiom
  (assert
  (forall ((a us_t))
  (! (=> (invariant____function_guard (invariant__ a) a)
     (= (= (invariant__ a) true) (and (= (first1 a) 1) (<= 0 (last1 a))))) :pattern (
  (invariant__ a)) )))

(declare-fun remove (us_t Int) us_t)

(declare-fun remove__function_guard (us_t us_t Int) Bool)

(define-fun dynamic_invariant1 ((temp___expr_172 Int)
  (temp___is_init_169 Bool) (temp___skip_constant_170 Bool)
  (temp___do_toplevel_171 Bool)) Bool (=>
                                      (or (= temp___is_init_169 true)
                                      (<= 1 100)) (in_range2
                                      temp___expr_172)))

;; remove__post_axiom
  (assert
  (forall ((a us_t))
  (forall ((i Int))
  (! (and (invariant____function_guard (invariant__ a) a)
     (=>
     (and
     (and (dynamic_invariant a true true true) (dynamic_invariant1 i true
     true true))
     (and (= (invariant__ a) true) (and (<= (first1 a) i) (<= i (last1 a)))))
     (let ((result (remove a i)))
     (and (invariant____function_guard (invariant__ result) result)
     (=> (remove__function_guard result a i)
     (and
     (and (= (invariant__ result) true)
     (and (= (last1 result) (- (last1 a) 1))
     (and
     (forall ((k Int))
     (=> (and (<= 1 k) (<= k (- i 1)))
     (= (to_rep (select (to_array a) k)) (to_rep
                                         (select (to_array result) k)))))
     (and
     (forall ((k Int))
     (=> (and (<= (+ i 1) k) (<= k (last1 a)))
     (= (to_rep (select (to_array a) k)) (to_rep
                                         (select (to_array result) (- k 1))))))
     (forall ((k Int))
     (=> (and (<= i k) (<= k (- (last1 a) 1)))
     (= (to_rep (select (to_array a) (+ k 1))) (to_rep
                                               (select (to_array result) k)))))))))
     (dynamic_invariant result true false true))))))) :pattern ((remove a i)) ))))

(declare-fun is_perm (us_t us_t) Bool)

(declare-fun is_perm__function_guard (Bool us_t us_t) Bool)

;; is_perm__def_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (! (=> (is_perm__function_guard (is_perm a b) a b)
     (and (forall ((ia Int)) (remove__function_guard (remove a ia) a ia))
     (and (forall ((ib Int)) (remove__function_guard (remove b ib) b ib))
     (and (forall ((ia Int)) (remove__function_guard (remove a ia) a ia))
     (and (forall ((ib Int)) (remove__function_guard (remove b ib) b ib))
     (and
     (forall ((ia Int) (ib Int)) (is_perm__function_guard
     (is_perm (remove a ia) (remove b ib)) (remove a ia) (remove b ib)))
     (= (= (is_perm a b) true)
     (or (and (= (length a) 0) (= (length b) 0))
     (exists ((ia Int))
     (and (and (<= (first1 a) ia) (<= ia (last1 a)))
     (exists ((ib Int))
     (and (and (<= (first1 b) ib) (<= ib (last1 b)))
     (and
     (= (to_rep (select (to_array a) ia)) (to_rep (select (to_array b) ib)))
     (= (is_perm (remove a ia) (remove b ib)) true)))))))))))))) :pattern (
  (is_perm a b)) )))

(declare-fun get_witness (us_t us_t Int) Int)

(declare-fun get_witness__function_guard (Int us_t us_t Int) Bool)

;; get_witness__post_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (forall ((ia Int))
  (! (and (invariant____function_guard (invariant__ a) a)
     (and (invariant____function_guard (invariant__ b) b)
     (and (remove__function_guard (remove a ia) a ia)
     (and (forall ((ib Int)) (remove__function_guard (remove b ib) b ib))
     (and (remove__function_guard (remove a ia) a ia)
     (and (forall ((ib Int)) (remove__function_guard (remove b ib) b ib))
     (and
     (forall ((ib Int)) (is_perm__function_guard
     (is_perm (remove a ia) (remove b ib)) (remove a ia) (remove b ib)))
     (=>
     (and
     (and
     (and (dynamic_invariant a true true true) (dynamic_invariant b true true
     true)) (dynamic_invariant1 ia true true true))
     (and (= (invariant__ a) true)
     (and (= (invariant__ b) true)
     (and (and (<= (first1 a) ia) (<= ia (last1 a)))
     (exists ((ib Int))
     (and (and (<= (first1 b) ib) (<= ib (last1 b)))
     (and
     (= (to_rep (select (to_array a) ia)) (to_rep (select (to_array b) ib)))
     (= (is_perm (remove a ia) (remove b ib)) true))))))))
     (let ((result (get_witness a b ia)))
     (and (remove__function_guard (remove a ia) a ia)
     (and (remove__function_guard (remove b result) b result)
     (and (remove__function_guard (remove a ia) a ia)
     (and (remove__function_guard (remove b result) b result)
     (and (is_perm__function_guard (is_perm (remove a ia) (remove b result))
     (remove a ia) (remove b result))
     (=> (get_witness__function_guard result a b ia)
     (and
     (and (and (<= (first1 b) result) (<= result (last1 b)))
     (and
     (= (to_rep (select (to_array a) ia)) (to_rep
                                          (select (to_array b) result)))
     (= (is_perm (remove a ia) (remove b result)) true))) (dynamic_invariant1
     result true false true))))))))))))))))) :pattern ((get_witness a b ia)) ))))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__perm__witnesses__ia index)(rec__perm__witnesses__ib index)))))
(define-fun us_split_fields_Ia__projection ((a us_split_fields)) index 
  (rec__perm__witnesses__ia a))

(define-fun us_split_fields_Ib__projection ((a us_split_fields)) index 
  (rec__perm__witnesses__ib a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq5 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep1
                           (rec__perm__witnesses__ia (us_split_fields1 a))) 
                        (to_rep1
                        (rec__perm__witnesses__ia (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__perm__witnesses__ib (us_split_fields1 a))) 
                        (to_rep1
                        (rec__perm__witnesses__ib (us_split_fields1 b)))))
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

(declare-fun perm__witnesses__ia__first__bit () Int)

(declare-fun perm__witnesses__ia__last__bit () Int)

(declare-fun perm__witnesses__ia__position () Int)

;; perm__witnesses__ia__first__bit_axiom
  (assert (<= 0 perm__witnesses__ia__first__bit))

;; perm__witnesses__ia__last__bit_axiom
  (assert (< perm__witnesses__ia__first__bit perm__witnesses__ia__last__bit))

;; perm__witnesses__ia__position_axiom
  (assert (<= 0 perm__witnesses__ia__position))

(declare-fun perm__witnesses__ib__first__bit () Int)

(declare-fun perm__witnesses__ib__last__bit () Int)

(declare-fun perm__witnesses__ib__position () Int)

;; perm__witnesses__ib__first__bit_axiom
  (assert (<= 0 perm__witnesses__ib__first__bit))

;; perm__witnesses__ib__last__bit_axiom
  (assert (< perm__witnesses__ib__first__bit perm__witnesses__ib__last__bit))

;; perm__witnesses__ib__position_axiom
  (assert (<= 0 perm__witnesses__ib__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((witnesses__ref (mk_witnesses__ref (witnesses__content us_rep)))))
(define-fun witnesses__ref___projection ((a witnesses__ref)) us_rep (witnesses__content
                                                                    a))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes () ((t35b__ref (mk_t35b__ref (t35b__content integer)))))
(define-fun t35b__ref___projection ((a1 t35b__ref)) integer (t35b__content
                                                            a1))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

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
                                     (in_range3 temp___expr_15)))

(declare-fun ia () Int)

(declare-fun perm__get_witnesses__result () index)

(declare-fun perm__get_witnesses__result1 () index)

(declare-fun temp___824 () Int)

(declare-fun temp___825 () Int)

(declare-fun temp___814 () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () index)

(declare-fun o4 () index)

(declare-fun o5 () index)

(declare-fun o6 () index)

(declare-fun o7 () index)

(declare-fun o8 () index)

(declare-fun o9 () Int)

(declare-fun o10 () Int)

(declare-fun o11 () Int)

(declare-fun o12 () index)

(declare-fun o13 () index)

(declare-fun o14 () index)

(declare-fun o15 () index)

(declare-fun o16 () index)

(declare-fun o17 () index)

(declare-fun perm__get_witnesses__result2 () index)

(declare-fun perm__get_witnesses__result3 () index)

(declare-fun result () Int)

(declare-fun ia1 () Int)

(declare-fun result1 () Bool)

(declare-fun result2 () witnesses__ref)

(declare-fun perm__get_witnesses__result4 () us_rep)

(declare-fun ia2 () Int)

(declare-fun perm__get_witnesses__result5 () us_rep)

(declare-fun result3 () int__ref)

(declare-fun ia3 () Int)

(declare-fun result4 () Bool)

(declare-fun result5 () witnesses__ref)

(declare-fun perm__get_witnesses__result6 () us_rep)

(declare-fun ia4 () int__ref)

(declare-fun perm__get_witnesses__result7 () witnesses__ref)

(declare-fun ia5 () Int)

(declare-fun perm__get_witnesses__result8 () us_rep)

(declare-fun ia6 () int__ref)

(declare-fun perm__get_witnesses__result9 () witnesses__ref)

(declare-fun ia7 () Int)

(declare-fun perm__get_witnesses__result10 () us_rep)

(declare-fun ia8 () int__ref)

(declare-fun perm__get_witnesses__result11 () witnesses__ref)

(declare-fun ia9 () Int)

(declare-fun perm__get_witnesses__result12 () us_rep)

(declare-fun result6 () index)

(declare-fun result7 () index)

;; H
  (assert (invariant____function_guard (invariant__ a) a))

;; H
  (assert (invariant____function_guard (invariant__ b) b))

;; H
  (assert (is_perm__function_guard (is_perm a b) a b))

;; H
  (assert (remove__function_guard (remove a ia1) a ia1))

;; H
  (assert (forall ((ib Int)) (remove__function_guard (remove b ib) b ib)))

;; H
  (assert (remove__function_guard (remove a ia1) a ia1))

;; H
  (assert (forall ((ib Int)) (remove__function_guard (remove b ib) b ib)))

;; H
  (assert
  (forall ((ib Int)) (is_perm__function_guard
  (is_perm (remove a ia1) (remove b ib)) (remove a ia1) (remove b ib))))

;; H
  (assert (remove__function_guard (remove a o1) a o1))

;; H
  (assert (remove__function_guard (remove b o2) b o2))

;; H
  (assert (remove__function_guard (remove a o1) a o1))

;; H
  (assert (remove__function_guard (remove b o2) b o2))

;; H
  (assert (is_perm__function_guard (is_perm (remove a o1) (remove b o2))
  (remove a o1) (remove b o2)))

;; H
  (assert (remove__function_guard (remove a ia1) a ia1))

;; H
  (assert (forall ((ib Int)) (remove__function_guard (remove b ib) b ib)))

;; H
  (assert (remove__function_guard (remove a ia1) a ia1))

;; H
  (assert (forall ((ib Int)) (remove__function_guard (remove b ib) b ib)))

;; H
  (assert
  (forall ((ib Int)) (is_perm__function_guard
  (is_perm (remove a ia1) (remove b ib)) (remove a ia1) (remove b ib))))

;; H
  (assert (forall ((ka Int)) (remove__function_guard (remove a ka) a ka)))

;; H
  (assert (forall ((kb Int)) (remove__function_guard (remove b kb) b kb)))

;; H
  (assert (forall ((ka Int)) (remove__function_guard (remove a ka) a ka)))

;; H
  (assert (forall ((kb Int)) (remove__function_guard (remove b kb) b kb)))

;; H
  (assert
  (forall ((ka Int) (kb Int)) (is_perm__function_guard
  (is_perm (remove a ka) (remove b kb)) (remove a ka) (remove b kb))))

;; H
  (assert (remove__function_guard (remove a ia3) a ia3))

;; H
  (assert (forall ((ib Int)) (remove__function_guard (remove b ib) b ib)))

;; H
  (assert (remove__function_guard (remove a ia3) a ia3))

;; H
  (assert (forall ((ib Int)) (remove__function_guard (remove b ib) b ib)))

;; H
  (assert
  (forall ((ib Int)) (is_perm__function_guard
  (is_perm (remove a ia3) (remove b ib)) (remove a ia3) (remove b ib))))

;; H
  (assert (remove__function_guard (remove a o10) a o10))

;; H
  (assert (remove__function_guard (remove b o11) b o11))

;; H
  (assert (remove__function_guard (remove a o10) a o10))

;; H
  (assert (remove__function_guard (remove b o11) b o11))

;; H
  (assert (is_perm__function_guard (is_perm (remove a o10) (remove b o11))
  (remove a o10) (remove b o11)))

;; H
  (assert (dynamic_invariant a true false true))

;; H
  (assert (dynamic_invariant b true false true))

;; H
  (assert
  (and (= (invariant__ a) true)
  (and (= (invariant__ b) true)
  (and (= (is_perm a b) true) (< 0 (length a))))))

;; H
  (assert (= perm__get_witnesses__result9 perm__get_witnesses__result7))

;; H
  (assert (= ia6 ia4))

;; H
  (assert (= perm__get_witnesses__result10 perm__get_witnesses__result8))

;; H
  (assert (= ia7 ia5))

;; H
  (assert (= temp___824 (to_rep2 (first (rt a)))))

;; H
  (assert (= temp___825 (to_rep2 (last (rt a)))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref ia)))

;; H
  (assert (= ia1 temp___824))

;; H
  (assert (<= temp___824 ia1))

;; H
  (assert (<= ia1 temp___825))

;; H
  (assert (= temp___814 ia1))

;; H
  (assert
  (or
  (and
  (and
  (and
  (= perm__get_witnesses__result7 (mk_witnesses__ref
                                  perm__get_witnesses__result4))
  (= ia4 (mk_int__ref ia1)))
  (and (= perm__get_witnesses__result8 perm__get_witnesses__result4)
  (= ia5 ia1)))
  (and
  (= (= result1 true)
  (exists ((ib Int))
  (and (and (<= (to_rep2 (first (rt b))) ib) (<= ib (to_rep2 (last (rt b)))))
  (and (= (to_rep (select (elts a) ia1)) (to_rep (select (elts b) ib)))
  (= (is_perm (remove a ia1) (remove b ib)) true)))))
  (and (= result1 true)
  (and
  (and
  (and
  (and
  (and (and (= o1 ia1) (in_range2 ia1))
  (and
  (and (= o2 (get_witness a b o1)) (get_witness__function_guard o2 a b o1))
  (and (in_range2 o2)
  (and (and (<= (to_rep2 (first (rt b))) o2) (<= o2 (to_rep2 (last (rt b)))))
  (and (= (to_rep (select (elts a) o1)) (to_rep (select (elts b) o2)))
  (= (is_perm (remove a o1) (remove b o2)) true)))))) (= (to_rep1 o3) 
  o2))
  (and (and (and (= o ia1) (in_range2 ia1)) (= (to_rep1 o4) o))
  (and (= o4 o5) (= o3 o6)))) (and (= o7 o5) (= o8 o6)))
  (and
  (= result2 (mk_witnesses__ref
             (mk___rep
             (mk___split_fields perm__get_witnesses__result
             perm__get_witnesses__result1))))
  (= perm__get_witnesses__result4 (mk___rep (mk___split_fields o7 o8))))))))
  (and
  (and
  (= (= result1 true)
  (exists ((ib Int))
  (and (and (<= (to_rep2 (first (rt b))) ib) (<= ib (to_rep2 (last (rt b)))))
  (and (= (to_rep (select (elts a) ia1)) (to_rep (select (elts b) ib)))
  (= (is_perm (remove a ia1) (remove b ib)) true)))))
  (and (not (= result1 true))
  (and
  (= perm__get_witnesses__result4 (mk___rep
                                  (mk___split_fields
                                  perm__get_witnesses__result
                                  perm__get_witnesses__result1)))
  (= perm__get_witnesses__result4 (mk___rep
                                  (mk___split_fields
                                  perm__get_witnesses__result2
                                  perm__get_witnesses__result3))))))
  (and
  (and
  (and
  (= perm__get_witnesses__result7 (mk_witnesses__ref
                                  perm__get_witnesses__result6))
  (= ia4 (mk_int__ref ia3)))
  (and (= perm__get_witnesses__result8 perm__get_witnesses__result6)
  (= ia5 ia3)))
  (and
  (forall ((ka Int))
  (=> (and (<= 1 ka) (<= ka ia2))
  (forall ((kb Int))
  (=> (and (<= (to_rep2 (first (rt b))) kb) (<= kb (to_rep2 (last (rt b)))))
  (not
  (and (= (to_rep (select (elts a) ka)) (to_rep (select (elts b) kb)))
  (= (is_perm (remove a ka) (remove b kb)) true)))))))
  (and
  (and
  (=> (<= (to_rep2 (first (rt a))) (to_rep2 (last (rt a))))
  (dynamic_property1 (to_rep2 (first (rt a))) (to_rep2 (last (rt a))) 
  ia2))
  (and (<= (to_rep2 (first (rt a))) ia2) (<= ia2 (to_rep2 (last (rt a))))))
  (and (not (= ia2 temp___825))
  (and (and (= result3 (mk_int__ref ia2)) (= ia3 (+ ia2 1)))
  (and
  (= (= result4 true)
  (exists ((ib Int))
  (and (and (<= (to_rep2 (first (rt b))) ib) (<= ib (to_rep2 (last (rt b)))))
  (and (= (to_rep (select (elts a) ia3)) (to_rep (select (elts b) ib)))
  (= (is_perm (remove a ia3) (remove b ib)) true)))))
  (and (= result4 true)
  (and
  (and
  (and
  (and
  (and (and (= o10 ia3) (in_range2 ia3))
  (and
  (and (= o11 (get_witness a b o10)) (get_witness__function_guard o11 
  a b o10))
  (and (in_range2 o11)
  (and
  (and (<= (to_rep2 (first (rt b))) o11) (<= o11 (to_rep2 (last (rt b)))))
  (and (= (to_rep (select (elts a) o10)) (to_rep (select (elts b) o11)))
  (= (is_perm (remove a o10) (remove b o11)) true))))))
  (= (to_rep1 o12) o11))
  (and (and (and (= o9 ia3) (in_range2 ia3)) (= (to_rep1 o13) o9))
  (and (= o13 o14) (= o12 o15)))) (and (= o16 o14) (= o17 o15)))
  (and (= result5 (mk_witnesses__ref perm__get_witnesses__result5))
  (= perm__get_witnesses__result6 (mk___rep (mk___split_fields o16 o17)))))))))))))))

;; H
  (assert (= perm__get_witnesses__result11 perm__get_witnesses__result9))

;; H
  (assert (= ia8 ia6))

;; H
  (assert (= perm__get_witnesses__result12 perm__get_witnesses__result10))

;; H
  (assert (= ia9 ia7))

;; H
  (assert
  (= (mk___rep (mk___split_fields result6 result7)) (witnesses__content
                                                    perm__get_witnesses__result11)))

(assert
;; WP_parameter_def
 ;; File "perm.adb", line 37, characters 0-0
  (not
  (<= (to_rep2 (first (rt a))) (to_rep1
                               (rec__perm__witnesses__ia
                               (us_split_fields1
                               (witnesses__content
                               perm__get_witnesses__result11)))))))
(check-sat)
