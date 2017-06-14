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

(declare-sort true_bool 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 1)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (true_bool true_bool) Bool)

(declare-fun dummy1 () true_bool)

(declare-datatypes ()
((true_bool__ref (mk_true_bool__ref (true_bool__content true_bool)))))
(define-fun true_bool__ref___projection ((a true_bool__ref)) true_bool 
  (true_bool__content a))

(define-fun dynamic_invariant ((temp___expr_166 Int)
  (temp___is_init_163 Bool) (temp___skip_constant_164 Bool)
  (temp___do_toplevel_165 Bool)) Bool (=>
                                      (or (= temp___is_init_163 true)
                                      (<= 1 1)) (in_range2 temp___expr_166)))

(declare-sort index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (index index) Bool)

(declare-fun dummy2 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant1 ((temp___expr_172 Int)
  (temp___is_init_169 Bool) (temp___skip_constant_170 Bool)
  (temp___do_toplevel_171 Bool)) Bool (=>
                                      (or (= temp___is_init_169 true)
                                      (<= 1 100)) (in_range3
                                      temp___expr_172)))

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

(define-fun bool_eq3 ((a (Array Int natural)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
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
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort integer 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range4 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range4 f)
     (=> (in_range4 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range4 low)
                   (and (in_range4 high)
                   (=> (<= low high) (and (in_range3 low) (in_range3 high))))))

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

(define-fun bool_eq5 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq4 (us_t us_t) Bool)

(declare-fun dummy4 () us_t)

(declare-datatypes ()
((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content
                                                                  a))

(define-fun dynamic_invariant2 ((temp___expr_178 us_t)
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

;; remove__post_axiom
  (assert
  (forall ((a us_t))
  (forall ((i Int))
  (! (and (invariant____function_guard (invariant__ a) a)
     (=>
     (and
     (and (dynamic_invariant2 a true true true) (dynamic_invariant1 i true
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
     (dynamic_invariant2 result true false true))))))) :pattern ((remove a i)) ))))

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
     (and (dynamic_invariant2 a true true true) (dynamic_invariant1 i1 true
     true true)) (dynamic_invariant1 i2 true true true))
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
     (= (let ((temp___204 (remove (remove a i2) i1)))
        (let ((temp___203 (remove (remove a i1) (- i2 1))))
        (bool_eq3 (to_array temp___203) (first1 temp___203)
        (last1 temp___203) (to_array temp___204) (first1 temp___204)
        (last1 temp___204)))) true))
     (dynamic_invariant result true false true)))))))))))) :pattern (
  (remove_swap a i1 i2)) ))))

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

(declare-fun perm_symmetric (us_t us_t) Int)

(declare-fun perm_symmetric__function_guard (Int us_t us_t) Bool)

;; perm_symmetric__post_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (! (and (invariant____function_guard (invariant__ a) a)
     (and (invariant____function_guard (invariant__ b) b)
     (and (is_perm__function_guard (is_perm a b) a b)
     (=>
     (and
     (and (dynamic_invariant2 a true true true) (dynamic_invariant2 b true
     true true))
     (and (= (invariant__ a) true)
     (and (= (invariant__ b) true) (= (is_perm a b) true))))
     (let ((result (perm_symmetric a b)))
     (and (is_perm__function_guard (is_perm b a) b a)
     (=> (perm_symmetric__function_guard result a b)
     (and (=> (= (of_int result) true) (= (is_perm b a) true))
     (dynamic_invariant result true false true))))))))) :pattern ((perm_symmetric
                                                                  a b)) )))

(declare-fun a () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun ia () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun ib () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun get_witness (us_t us_t Int) Int)

(declare-fun get_witness__function_guard (Int us_t us_t Int) Bool)

;; get_witness__post_axiom
  (assert
  (forall ((a1 us_t) (b1 us_t))
  (forall ((ia1 Int))
  (! (and (invariant____function_guard (invariant__ a1) a1)
     (and (invariant____function_guard (invariant__ b1) b1)
     (and (remove__function_guard (remove a1 ia1) a1 ia1)
     (and
     (forall ((ib1 Int)) (remove__function_guard (remove b1 ib1) b1 ib1))
     (and (remove__function_guard (remove a1 ia1) a1 ia1)
     (and
     (forall ((ib1 Int)) (remove__function_guard (remove b1 ib1) b1 ib1))
     (and
     (forall ((ib1 Int)) (is_perm__function_guard
     (is_perm (remove a1 ia1) (remove b1 ib1)) (remove a1 ia1)
     (remove b1 ib1)))
     (=>
     (and
     (and
     (and (dynamic_invariant2 a1 true true true) (dynamic_invariant2 b1 true
     true true)) (dynamic_invariant1 ia1 true true true))
     (and (= (invariant__ a1) true)
     (and (= (invariant__ b1) true)
     (and (and (<= (first1 a1) ia1) (<= ia1 (last1 a1)))
     (exists ((ib1 Int))
     (and (and (<= (first1 b1) ib1) (<= ib1 (last1 b1)))
     (and
     (= (to_rep (select (to_array a1) ia1)) (to_rep
                                            (select (to_array b1) ib1)))
     (= (is_perm (remove a1 ia1) (remove b1 ib1)) true))))))))
     (let ((result (get_witness a1 b1 ia1)))
     (and (remove__function_guard (remove a1 ia1) a1 ia1)
     (and (remove__function_guard (remove b1 result) b1 result)
     (and (remove__function_guard (remove a1 ia1) a1 ia1)
     (and (remove__function_guard (remove b1 result) b1 result)
     (and (is_perm__function_guard
     (is_perm (remove a1 ia1) (remove b1 result)) (remove a1 ia1)
     (remove b1 result))
     (=> (get_witness__function_guard result a1 b1 ia1)
     (and
     (and (and (<= (first1 b1) result) (<= result (last1 b1)))
     (and
     (= (to_rep (select (to_array a1) ia1)) (to_rep
                                            (select (to_array b1) result)))
     (= (is_perm (remove a1 ia1) (remove b1 result)) true)))
     (dynamic_invariant1 result true false true))))))))))))))))) :pattern (
  (get_witness a1 b1 ia1)) ))))

(declare-fun shift_perm_l (us_t us_t us_t) Int)

(declare-fun shift_perm_l__function_guard (Int us_t us_t us_t) Bool)

;; shift_perm_l__post_axiom
  (assert
  (forall ((a1 us_t) (b1 us_t) (c us_t))
  (! (and (invariant____function_guard (invariant__ a1) a1)
     (and (invariant____function_guard (invariant__ b1) b1)
     (and (invariant____function_guard (invariant__ c) c)
     (and (is_perm__function_guard (is_perm a1 b1) a1 b1)
     (=>
     (and
     (and
     (and (dynamic_invariant2 a1 true true true) (dynamic_invariant2 b1 true
     true true)) (dynamic_invariant2 c true true true))
     (and (= (invariant__ a1) true)
     (and (= (invariant__ b1) true)
     (and (= (invariant__ c) true)
     (and
     (= (bool_eq3 (to_array a1) (first1 a1) (last1 a1) (to_array c)
        (first1 c) (last1 c)) true)
     (= (is_perm a1 b1) true))))))
     (let ((result (shift_perm_l a1 b1 c)))
     (and (is_perm__function_guard (is_perm c b1) c b1)
     (=> (shift_perm_l__function_guard result a1 b1 c)
     (and (=> (= (of_int result) true) (= (is_perm c b1) true))
     (dynamic_invariant result true false true)))))))))) :pattern ((shift_perm_l
                                                                   a1 b1 c)) )))

(declare-fun extended_perm (us_t us_t) Int)

(declare-fun extended_perm__function_guard (Int us_t us_t) Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun ib2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun aa () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun bb () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun bb2 () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(define-fun dynamic_invariant3 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range4 temp___expr_15)))

;; ib2__def_axiom
  (assert
  (and (get_witness__function_guard (get_witness a b ia) a b ia)
  (= ib2 (get_witness a b ia))))

;; aa__def_axiom
  (assert
  (and (remove__function_guard (remove a ia) a ia) (= aa (remove a ia))))

;; bb__def_axiom
  (assert
  (and (remove__function_guard (remove b ib) b ib) (= bb (remove b ib))))

;; bb2__def_axiom
  (assert
  (and (remove__function_guard (remove b ib2) b ib2) (= bb2 (remove b ib2))))

(declare-fun h () Int)

(declare-fun ia2 () Int)

(declare-fun perm__remove_perm__result () Int)

(declare-fun o () Int)

(declare-fun perm__remove_perm__ib2__assume () Int)

(declare-fun perm__remove_perm__aa__assume () (Array Int natural))

(declare-fun perm__remove_perm__aa__assume1 () t)

(declare-fun perm__remove_perm__bb__assume () (Array Int natural))

(declare-fun perm__remove_perm__bb__assume1 () t)

(declare-fun perm__remove_perm__bb2__assume () (Array Int natural))

(declare-fun perm__remove_perm__bb2__assume1 () t)

(declare-fun o1 () Int)

(declare-fun perm__remove_perm__result1 () Int)

(declare-fun result () Int)

(declare-fun h1 () Int)

(declare-fun perm__remove_perm__result2 () Int)

(declare-fun result1 () Int)

(declare-fun h2 () Int)

(define-fun perm__remove_perm__bb2__assume2 () us_t (mk___t
                                                    perm__remove_perm__bb2__assume
                                                    perm__remove_perm__bb2__assume1))

(define-fun perm__remove_perm__bb__assume2 () us_t (mk___t
                                                   perm__remove_perm__bb__assume
                                                   perm__remove_perm__bb__assume1))

(define-fun perm__remove_perm__aa__assume2 () us_t (mk___t
                                                   perm__remove_perm__aa__assume
                                                   perm__remove_perm__aa__assume1))

;; H
  (assert (dynamic_invariant2 a true false true))

;; H
  (assert (dynamic_invariant2 b true false true))

;; H
  (assert (in_range3 ia))

;; H
  (assert (in_range3 ib))

;; H
  (assert (invariant____function_guard (invariant__ a) a))

;; H
  (assert (invariant____function_guard (invariant__ b) b))

;; H
  (assert (is_perm__function_guard (is_perm a b) a b))

;; H
  (assert
  (and (= (invariant__ a) true)
  (and (= (invariant__ b) true)
  (and (and (<= (to_rep1 (first (rt a))) ia) (<= ia (to_rep1 (last (rt a)))))
  (and (and (<= (to_rep1 (first (rt b))) ib) (<= ib (to_rep1 (last (rt b)))))
  (and (= (is_perm a b) true)
  (= (to_rep (select (elts a) ia)) (to_rep (select (elts b) ib)))))))))

;; H
  (assert (forall ((ia3 Int)) (remove__function_guard (remove a ia3) a ia3)))

;; H
  (assert (forall ((ib3 Int)) (remove__function_guard (remove b ib3) b ib3)))

;; H
  (assert (forall ((ia3 Int)) (remove__function_guard (remove a ia3) a ia3)))

;; H
  (assert (forall ((ib3 Int)) (remove__function_guard (remove b ib3) b ib3)))

;; H
  (assert
  (forall ((ia3 Int) (ib3 Int)) (is_perm__function_guard
  (is_perm (remove a ia3) (remove b ib3)) (remove a ia3) (remove b ib3))))

;; H
  (assert
  (and (and (= o (extended_perm a b)) (extended_perm__function_guard o a b))
  (and (in_range2 o)
  (=> (= (of_int o) true)
  (forall ((ia3 Int))
  (=>
  (and (<= (to_rep1 (first (rt a))) ia3) (<= ia3 (to_rep1 (last (rt a)))))
  (exists ((ib3 Int))
  (and
  (and (<= (to_rep1 (first (rt b))) ib3) (<= ib3 (to_rep1 (last (rt b)))))
  (and (= (to_rep (select (elts a) ia3)) (to_rep (select (elts b) ib3)))
  (= (is_perm (remove a ia3) (remove b ib3)) true))))))))))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref h)))

;; H
  (assert (= h1 o))

;; H
  (assert (in_range2 h1))

;; H
  (assert (remove__function_guard (remove a ia) a ia))

;; H
  (assert (remove__function_guard (remove b perm__remove_perm__ib2__assume) 
  b perm__remove_perm__ib2__assume))

;; H
  (assert (remove__function_guard (remove a ia) a ia))

;; H
  (assert (remove__function_guard (remove b perm__remove_perm__ib2__assume) 
  b perm__remove_perm__ib2__assume))

;; H
  (assert (is_perm__function_guard
  (is_perm (remove a ia) (remove b perm__remove_perm__ib2__assume))
  (remove a ia) (remove b perm__remove_perm__ib2__assume)))

;; H
  (assert
  (and
  (and (= perm__remove_perm__ib2__assume (get_witness a b ia))
  (get_witness__function_guard perm__remove_perm__ib2__assume a b ia))
  (and (in_range3 perm__remove_perm__ib2__assume)
  (and
  (and (<= (to_rep1 (first (rt b))) perm__remove_perm__ib2__assume)
  (<= perm__remove_perm__ib2__assume (to_rep1 (last (rt b)))))
  (and
  (= (to_rep (select (elts a) ia)) (to_rep
                                   (select (elts b) perm__remove_perm__ib2__assume)))
  (= (is_perm (remove a ia) (remove b perm__remove_perm__ib2__assume)) true))))))

;; H
  (assert (= perm__remove_perm__ib2__assume ib2))

;; H
  (assert (in_range3 ib2))

;; H
  (assert (invariant____function_guard
  (invariant__ perm__remove_perm__aa__assume2)
  perm__remove_perm__aa__assume2))

;; H
  (assert
  (and
  (and (= perm__remove_perm__aa__assume2 (remove a ia))
  (remove__function_guard perm__remove_perm__aa__assume2 a ia))
  (and (dynamic_invariant2 perm__remove_perm__aa__assume2 true false true)
  (and (= (invariant__ perm__remove_perm__aa__assume2) true)
  (and
  (= (to_rep1 (last perm__remove_perm__aa__assume1)) (- (to_rep1
                                                        (last (rt a))) 1))
  (and
  (forall ((k Int))
  (=> (and (<= 1 k) (<= k (- ia 1)))
  (= (to_rep (select (elts a) k)) (to_rep
                                  (select perm__remove_perm__aa__assume k)))))
  (and
  (forall ((k Int))
  (=> (and (<= (+ ia 1) k) (<= k (to_rep1 (last (rt a)))))
  (= (to_rep (select (elts a) k)) (to_rep
                                  (select perm__remove_perm__aa__assume (- k 1))))))
  (forall ((k Int))
  (=> (and (<= ia k) (<= k (- (to_rep1 (last (rt a))) 1)))
  (= (to_rep (select (elts a) (+ k 1))) (to_rep
                                        (select perm__remove_perm__aa__assume k))))))))))))

;; H
  (assert (= perm__remove_perm__aa__assume2 aa))

;; H
  (assert (dynamic_invariant2 aa true false true))

;; H
  (assert (invariant____function_guard
  (invariant__ perm__remove_perm__bb__assume2)
  perm__remove_perm__bb__assume2))

;; H
  (assert
  (and
  (and (= perm__remove_perm__bb__assume2 (remove b ib))
  (remove__function_guard perm__remove_perm__bb__assume2 b ib))
  (and (dynamic_invariant2 perm__remove_perm__bb__assume2 true false true)
  (and (= (invariant__ perm__remove_perm__bb__assume2) true)
  (and
  (= (to_rep1 (last perm__remove_perm__bb__assume1)) (- (to_rep1
                                                        (last (rt b))) 1))
  (and
  (forall ((k Int))
  (=> (and (<= 1 k) (<= k (- ib 1)))
  (= (to_rep (select (elts b) k)) (to_rep
                                  (select perm__remove_perm__bb__assume k)))))
  (and
  (forall ((k Int))
  (=> (and (<= (+ ib 1) k) (<= k (to_rep1 (last (rt b)))))
  (= (to_rep (select (elts b) k)) (to_rep
                                  (select perm__remove_perm__bb__assume (- k 1))))))
  (forall ((k Int))
  (=> (and (<= ib k) (<= k (- (to_rep1 (last (rt b))) 1)))
  (= (to_rep (select (elts b) (+ k 1))) (to_rep
                                        (select perm__remove_perm__bb__assume k))))))))))))

;; H
  (assert (= perm__remove_perm__bb__assume2 bb))

;; H
  (assert (dynamic_invariant2 bb true false true))

;; H
  (assert (invariant____function_guard
  (invariant__ perm__remove_perm__bb2__assume2)
  perm__remove_perm__bb2__assume2))

;; H
  (assert
  (and
  (and (= perm__remove_perm__bb2__assume2 (remove b ib2))
  (remove__function_guard perm__remove_perm__bb2__assume2 b ib2))
  (and (dynamic_invariant2 perm__remove_perm__bb2__assume2 true false true)
  (and (= (invariant__ perm__remove_perm__bb2__assume2) true)
  (and
  (= (to_rep1 (last perm__remove_perm__bb2__assume1)) (- (to_rep1
                                                         (last (rt b))) 1))
  (and
  (forall ((k Int))
  (=> (and (<= 1 k) (<= k (- ib2 1)))
  (= (to_rep (select (elts b) k)) (to_rep
                                  (select perm__remove_perm__bb2__assume k)))))
  (and
  (forall ((k Int))
  (=> (and (<= (+ ib2 1) k) (<= k (to_rep1 (last (rt b)))))
  (= (to_rep (select (elts b) k)) (to_rep
                                  (select perm__remove_perm__bb2__assume (- k 1))))))
  (forall ((k Int))
  (=> (and (<= ib2 k) (<= k (- (to_rep1 (last (rt b))) 1)))
  (= (to_rep (select (elts b) (+ k 1))) (to_rep
                                        (select perm__remove_perm__bb2__assume k))))))))))))

;; H
  (assert (= perm__remove_perm__bb2__assume2 bb2))

;; H
  (assert (dynamic_invariant2 bb2 true false true))

;; H
  (assert (=> (<= 1 100) (in_range3 ia2)))

;; H
  (assert (not (= ib ib2)))

;; H
  (assert (= perm__remove_perm__result2 perm__remove_perm__result))

;; H
  (assert (= perm__remove_perm__result2 perm__remove_perm__result1))

;; H
  (assert (is_perm__function_guard (is_perm bb2 aa) bb2 aa))

;; H
  (assert
  (and
  (and (= o1 (perm_symmetric aa bb2)) (perm_symmetric__function_guard 
  o1 aa bb2))
  (and (in_range2 o1) (=> (= (of_int o1) true) (= (is_perm bb2 aa) true)))))

;; H
  (assert (= h1 result1))

;; H
  (assert (= h2 o1))

;; H
  (assert (= (of_int h2) true))

;; H
  (assert (invariant____function_guard (invariant__ bb2) bb2))

(assert
;; WP_parameter_def
 ;; File "perm.ads", line 2, characters 0-0
  (not (= (invariant__ bb2) true)))
(check-sat)
