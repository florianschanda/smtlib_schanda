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

(declare-sort positive 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (positive positive) Bool)

(declare-fun dummy2 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range3
                                     temp___expr_39)))

(declare-sort true_bool 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 1)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (true_bool true_bool) Bool)

(declare-fun dummy3 () true_bool)

(declare-datatypes ()
((true_bool__ref (mk_true_bool__ref (true_bool__content true_bool)))))
(define-fun true_bool__ref___projection ((a true_bool__ref)) true_bool 
  (true_bool__content a))

(define-fun dynamic_invariant2 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 1 1)) (in_range4 temp___expr_136)))

(declare-sort index 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (index index) Bool)

(declare-fun dummy4 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

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

(define-fun bool_eq5 ((a (Array Int natural)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq5 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq5 a a_first i b b_first j) true)
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
     (and (= (bool_eq5 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range5 low) (in_range5 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int natural))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int natural) (elts a))

(define-fun of_array ((a (Array Int natural)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

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

(define-fun bool_eq6 ((x us_t)
  (y us_t)) Bool (bool_eq5 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq5 (us_t us_t) Bool)

(declare-fun dummy5 () us_t)

(declare-datatypes ()
((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content
                                                                  a))

(declare-fun remove (us_t Int) us_t)

(declare-fun remove__function_guard (us_t us_t Int) Bool)

(define-fun dynamic_invariant3 ((temp___expr_142 Int)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (or (= temp___is_init_139 true)
                                      (<= 1 100)) (in_range5
                                      temp___expr_142)))

(define-fun dynamic_invariant4 ((temp___expr_148 us_t)
  (temp___is_init_145 Bool) (temp___skip_constant_146 Bool)
  (temp___do_toplevel_147 Bool)) Bool (=>
                                      (not (= temp___skip_constant_146 true))
                                      (dynamic_property 1 100
                                      (first1 temp___expr_148)
                                      (last1 temp___expr_148))))

(declare-fun invariant__ (us_t) Bool)

(declare-fun invariant____function_guard (Bool us_t) Bool)

;; remove__post_axiom
  (assert
  (forall ((a us_t))
  (forall ((i Int))
  (! (and (invariant____function_guard (invariant__ a) a)
     (=>
     (and
     (and (dynamic_invariant4 a true true true) (dynamic_invariant3 i true
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
     (dynamic_invariant4 result true false true))))))) :pattern ((remove a i)) ))))

(declare-fun remove_swap (us_t Int Int) Int)

(declare-fun remove_swap__function_guard (Int us_t Int Int) Bool)

;; remove_swap__post_axiom
  (assert
  (forall ((a us_t))
  (forall ((i1 Int) (i2 Int))
  (! (and (invariant____function_guard (invariant__ a) a)
     (=>
     (and
     (and
     (and (dynamic_invariant4 a true true true) (dynamic_invariant3 i1 true
     true true)) (dynamic_invariant3 i2 true true true))
     (and (= (invariant__ a) true)
     (and (and (<= (first1 a) i1) (<= i1 (last1 a)))
     (and (and (<= (first1 a) i2) (<= i2 (last1 a))) (< i1 i2)))))
     (let ((result (remove_swap a i1 i2)))
     (and (remove__function_guard (remove a i2) a i2)
     (and (remove__function_guard (remove a i2) a i2)
     (and (remove__function_guard (remove (remove a i2) i1) (remove a i2) i1)
     (and (remove__function_guard (remove a i1) a i1)
     (and (remove__function_guard (remove a i1) a i1)
     (and (remove__function_guard (remove (remove a i1) (- i2 1))
     (remove a i1) (- i2 1))
     (=> (remove_swap__function_guard result a i1 i2)
     (and
     (=> (= (of_int result) true)
     (= (let ((temp___174 (remove (remove a i2) i1)))
        (let ((temp___173 (remove (remove a i1) (- i2 1))))
        (bool_eq5 (to_array temp___173) (first1 temp___173)
        (last1 temp___173) (to_array temp___174) (first1 temp___174)
        (last1 temp___174)))) true))
     (dynamic_invariant2 result true false true)))))))))))) :pattern (
  (remove_swap a i1 i2)) ))))

(declare-fun remove_eq (us_t us_t Int) Int)

(declare-fun remove_eq__function_guard (Int us_t us_t Int) Bool)

;; remove_eq__post_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (forall ((i Int))
  (! (and (invariant____function_guard (invariant__ a) a)
     (and (invariant____function_guard (invariant__ b) b)
     (=>
     (and
     (and
     (and (dynamic_invariant4 a true true true) (dynamic_invariant4 b true
     true true)) (dynamic_invariant3 i true true true))
     (and (= (invariant__ a) true)
     (and (= (invariant__ b) true)
     (and (and (<= (first1 a) i) (<= i (last1 a)))
     (= (bool_eq5 (to_array a) (first1 a) (last1 a) (to_array b) (first1 b)
        (last1 b)) true)))))
     (let ((result (remove_eq a b i)))
     (and (remove__function_guard (remove b i) b i)
     (and (remove__function_guard (remove a i) a i)
     (=> (remove_eq__function_guard result a b i)
     (and
     (=> (= (of_int result) true)
     (= (let ((temp___189 (remove b i)))
        (let ((temp___188 (remove a i)))
        (bool_eq5 (to_array temp___188) (first1 temp___188)
        (last1 temp___188) (to_array temp___189) (first1 temp___189)
        (last1 temp___189)))) true))
     (dynamic_invariant2 result true false true))))))))) :pattern ((remove_eq
                                                                   a b i)) ))))

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

(declare-fun perm_reflexive (us_t us_t) Int)

(declare-fun perm_reflexive__function_guard (Int us_t us_t) Bool)

;; perm_reflexive__post_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (! (and (invariant____function_guard (invariant__ a) a)
     (and (invariant____function_guard (invariant__ b) b)
     (=>
     (and
     (and (dynamic_invariant4 a true true true) (dynamic_invariant4 b true
     true true))
     (and (= (invariant__ a) true)
     (and (= (invariant__ b) true)
     (= (bool_eq5 (to_array a) (first1 a) (last1 a) (to_array b) (first1 b)
        (last1 b)) true))))
     (let ((result (perm_reflexive a b)))
     (and (is_perm__function_guard (is_perm a b) a b)
     (=> (perm_reflexive__function_guard result a b)
     (and (=> (= (of_int result) true) (= (is_perm a b) true))
     (dynamic_invariant2 result true false true)))))))) :pattern ((perm_reflexive
                                                                  a b)) )))

(declare-fun perm_transitive (us_t us_t us_t) Int)

(declare-fun perm_transitive__function_guard (Int us_t us_t us_t) Bool)

;; perm_transitive__post_axiom
  (assert
  (forall ((a us_t) (b us_t) (c us_t))
  (! (and (invariant____function_guard (invariant__ a) a)
     (and (invariant____function_guard (invariant__ b) b)
     (and (invariant____function_guard (invariant__ c) c)
     (and (is_perm__function_guard (is_perm a b) a b)
     (and (is_perm__function_guard (is_perm b c) b c)
     (=>
     (and
     (and
     (and (dynamic_invariant4 a true true true) (dynamic_invariant4 b true
     true true)) (dynamic_invariant4 c true true true))
     (and (= (invariant__ a) true)
     (and (= (invariant__ b) true)
     (and (= (invariant__ c) true)
     (and (= (is_perm a b) true) (= (is_perm b c) true))))))
     (let ((result (perm_transitive a b c)))
     (and (is_perm__function_guard (is_perm a c) a c)
     (=> (perm_transitive__function_guard result a b c)
     (and (=> (= (of_int result) true) (= (is_perm a c) true))
     (dynamic_invariant2 result true false true))))))))))) :pattern (
  (perm_transitive a b c)) )))

(declare-sort tarray_typeP1 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (tarray_typeP1 tarray_typeP1) Bool)

(declare-fun dummy6 () tarray_typeP1)

(declare-datatypes ()
((tarray_typeP1__ref
 (mk_tarray_typeP1__ref (tarray_typeP1__content tarray_typeP1)))))
(define-fun tarray_typeP1__ref___projection ((a tarray_typeP1__ref)) tarray_typeP1 
  (tarray_typeP1__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun init () (Array Int natural))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(define-fun dynamic_invariant5 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

;; invariant____post_axiom
  (assert true)

;; invariant____def_axiom
  (assert
  (forall ((a us_t))
  (! (=> (invariant____function_guard (invariant__ a) a)
     (= (= (invariant__ a) true) (and (= (first1 a) 1) (<= 0 (last1 a))))) :pattern (
  (invariant__ a)) )))

(declare-fun values () (Array Int natural))

(declare-fun temp () Int)

(declare-fun interm () (Array Int natural))

(declare-fun hr () Int)

(declare-fun o () Int)

(declare-fun o1 () natural)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () natural)

(declare-fun o5 () Int)

(declare-fun o6 () natural)

(declare-fun o7 () Int)

(declare-fun o8 () (Array Int natural))

(declare-fun o9 () Int)

(declare-fun result () int__ref)

(declare-fun temp1 () Int)

(declare-fun result1 () map__ref)

(declare-fun values1 () (Array Int natural))

(declare-fun result2 () map__ref)

(declare-fun interm1 () (Array Int natural))

;; H
  (assert (in_range3 x))

;; H
  (assert (in_range3 y))

;; H
  (assert
  (and (and (<= 1 x) (<= x 100))
  (and (and (<= 1 y) (<= y 100)) (not (= x y)))))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 temp)))

;; H
  (assert (= values init))

;; H
  (assert (=> (<= 1 1) (in_range4 hr)))

;; H
  (assert (and (<= 1 x) (<= x 100)))

;; H
  (assert (= o x))

;; H
  (assert (= o1 (select values o)))

;; H
  (assert (= o2 (to_rep o1)))

;; H
  (assert (= result (mk_int__ref temp)))

;; H
  (assert (= temp1 o2))

;; H
  (assert (and (<= 1 y) (<= y 100)))

;; H
  (assert (= o3 y))

;; H
  (assert (= o4 (select values o3)))

;; H
  (assert (= o5 (to_rep o4)))

;; H
  (assert (= (to_rep o6) o5))

;; H
  (assert (and (<= 1 x) (<= x 100)))

;; H
  (assert (= o7 x))

;; H
  (assert (= o8 (store values o7 o6)))

;; H
  (assert (= result1 (mk_map__ref values)))

;; H
  (assert (= values1 o8))

;; H
  (assert (= result2 (mk_map__ref interm)))

;; H
  (assert (= interm1 values1))

;; H
  (assert (and (= o9 x) (in_range5 x)))

;; H
  (assert (invariant____function_guard
  (invariant__ (mk___t interm1 (mk 1 100))) (mk___t interm1 (mk 1 100))))

(assert
;; WP_parameter_def
 ;; File "sort.ads", line 4, characters 0-0
  (not (= (invariant__ (mk___t interm1 (mk 1 100))) true)))
(check-sat)
