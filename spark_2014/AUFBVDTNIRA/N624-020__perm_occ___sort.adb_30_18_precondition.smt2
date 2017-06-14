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

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(declare-sort integer 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

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
  (forall ((x integer)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort index 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (index index) Bool)

(declare-fun dummy3 () index)

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

(define-fun bool_eq4 ((a (Array Int natural)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq4 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int natural)) (b (Array Int natural)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq4 a a_first i b b_first j) true)
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
     (and (= (bool_eq4 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range3 f)
     (=> (in_range3 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range3 low)
                   (and (in_range3 high)
                   (=> (<= low high) (and (in_range4 low) (in_range4 high))))))

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
  (y us_t)) Bool (bool_eq4 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq4 (us_t us_t) Bool)

(declare-fun dummy4 () us_t)

(declare-datatypes ()
((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content
                                                                  a))

(declare-fun occ (us_t Int) Int)

(declare-fun occ__function_guard (Int us_t Int) Bool)

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(define-fun dynamic_invariant2 ((temp___expr_142 us_t)
  (temp___is_init_139 Bool) (temp___skip_constant_140 Bool)
  (temp___do_toplevel_141 Bool)) Bool (=>
                                      (not (= temp___skip_constant_140 true))
                                      (dynamic_property 1 100
                                      (first1 temp___expr_142)
                                      (last1 temp___expr_142))))

(declare-sort nb_occ 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 100)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (nb_occ nb_occ) Bool)

(declare-fun dummy5 () nb_occ)

(declare-datatypes ()
((nb_occ__ref (mk_nb_occ__ref (nb_occ__content nb_occ)))))
(define-fun nb_occ__ref___projection ((a nb_occ__ref)) nb_occ (nb_occ__content
                                                              a))

(define-fun dynamic_invariant3 ((temp___expr_147 Int)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (<= 0 100)) (in_range5
                                      temp___expr_147)))

(declare-fun occ_def (us_t Int) Int)

(declare-fun occ_def__function_guard (Int us_t Int) Bool)

;; occ__post_axiom
  (assert
  (forall ((a us_t))
  (forall ((e Int))
  (! (=>
     (and (dynamic_invariant2 a true true true) (dynamic_invariant1 e true
     true true))
     (let ((result (occ a e)))
     (=> (occ__function_guard result a e)
     (and (<= result (length a)) (dynamic_invariant3 result true false true))))) :pattern (
  (occ a e)) ))))

;; occ__def_axiom
  (assert
  (forall ((a us_t))
  (forall ((e Int))
  (! (=>
     (and
     (and (dynamic_invariant2 a true true true) (dynamic_invariant1 e true
     true true)) (occ__function_guard (occ a e) a e))
     (and (occ_def__function_guard (occ_def a e) a e)
     (= (occ a e) (occ_def a e)))) :pattern ((occ a e)) ))))

(declare-fun is_set (us_t Int Int us_t) Bool)

(declare-fun is_set__function_guard (Bool us_t Int Int us_t) Bool)

(define-fun dynamic_invariant4 ((temp___expr_136 Int)
  (temp___is_init_133 Bool) (temp___skip_constant_134 Bool)
  (temp___do_toplevel_135 Bool)) Bool (=>
                                      (or (= temp___is_init_133 true)
                                      (<= 1 100)) (in_range4
                                      temp___expr_136)))

;; is_set__post_axiom
  (assert true)

;; is_set__def_axiom
  (assert
  (forall ((a us_t) (r us_t))
  (forall ((i Int) (v Int))
  (! (=> (is_set__function_guard (is_set a i v r) a i v r)
     (= (= (is_set a i v r) true)
     (and
     (and (and (= (first1 r) (first1 a)) (= (last1 r) (last1 a)))
     (= (to_rep (select (to_array r) i)) v))
     (forall ((j Int))
     (=> (and (<= (first1 a) j) (<= j (last1 a)))
     (=> (not (= i j))
     (= (to_rep (select (to_array r) j)) (to_rep (select (to_array a) j))))))))) :pattern (
  (is_set a i v r)) ))))

(declare-fun is_perm (us_t us_t) Bool)

(declare-fun is_perm__function_guard (Bool us_t us_t) Bool)

;; is_perm__post_axiom
  (assert true)

;; is_perm__def_axiom
  (assert
  (forall ((a us_t) (b us_t))
  (! (=> (is_perm__function_guard (is_perm a b) a b)
     (and (forall ((e Int)) (occ__function_guard (occ a e) a e))
     (and (forall ((e Int)) (occ__function_guard (occ b e) b e))
     (= (= (is_perm a b) true)
     (forall ((e Int))
     (=> (and (<= 0 e) (<= e 2147483647)) (= (occ a e) (occ b e)))))))) :pattern (
  (is_perm a b)) )))

(declare-fun values__first () integer)

(declare-fun values__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq7 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes ()
((tTinitSP1__ref (mk_tTinitSP1__ref (tTinitSP1__content integer)))))
(define-fun tTinitSP1__ref___projection ((a tTinitSP1__ref)) integer 
  (tTinitSP1__content a))

(declare-sort t1 0)

(declare-fun first3 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range3 f)
     (=> (in_range3 l)
     (and (= (to_rep1 (first3 (mk1 f l))) f)
     (= (to_rep1 (last3 (mk1 f l))) l)))) :pattern ((mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range3 low)
                   (and (in_range3 high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int natural))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int natural) (elts1 a))

(define-fun of_array1 ((a (Array Int natural)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first4 ((a us_t1)) Int (to_rep1 (first3 (rt1 a))))

(define-fun last4 ((a us_t1)) Int (to_rep1 (last3 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first4 a) (last4 a))
                                    (+ (- (last4 a) (first4 a)) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int natural)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int natural)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment1 a))))

(define-fun bool_eq8 ((x1 us_t1)
  (y1 us_t1)) Bool (bool_eq4 (elts1 x1) (to_rep1 (first3 (rt1 x1)))
                   (to_rep1 (last3 (rt1 x1))) (elts1 y1)
                   (to_rep1 (first3 (rt1 y1))) (to_rep1 (last3 (rt1 y1)))))

(declare-fun user_eq7 (us_t1 us_t1) Bool)

(declare-fun dummy7 () us_t1)

(declare-datatypes ()
((tinitS__ref (mk_tinitS__ref (tinitS__content us_t1)))))
(define-fun tinitS__ref___projection ((a tinitS__ref)) us_t1 (tinitS__content
                                                             a))

(define-fun dynamic_invariant5 ((temp___expr_217 us_t1)
  (temp___is_init_214 Bool) (temp___skip_constant_215 Bool)
  (temp___do_toplevel_216 Bool)) Bool (=>
                                      (not (= temp___skip_constant_215 true))
                                      (and (dynamic_property2
                                      (to_rep1 values__first)
                                      (to_rep1 values__last)
                                      (first4 temp___expr_217)
                                      (last4 temp___expr_217))
                                      (and
                                      (= (first4 temp___expr_217) (to_rep1
                                                                  values__first))
                                      (= (last4 temp___expr_217) (to_rep1
                                                                 values__last))))))

(declare-fun init () us_t1)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun first5 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq9 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes ()
((tTintermSP1__ref (mk_tTintermSP1__ref (tTintermSP1__content integer)))))
(define-fun tTintermSP1__ref___projection ((a tTintermSP1__ref)) integer 
  (tTintermSP1__content a))

(declare-sort t2 0)

(declare-fun first6 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range3 f)
     (=> (in_range3 l)
     (and (= (to_rep1 (first6 (mk2 f l))) f)
     (= (to_rep1 (last6 (mk2 f l))) l)))) :pattern ((mk2 f l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range3 low)
                   (and (in_range3 high)
                   (=> (<= low high)
                   (and (dynamic_property3 range_first range_last low)
                   (dynamic_property3 range_first range_last high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int natural))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int natural) (elts2 a))

(define-fun of_array2 ((a (Array Int natural)) (f Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f l)))

(define-fun first7 ((a us_t2)) Int (to_rep1 (first6 (rt2 a))))

(define-fun last7 ((a us_t2)) Int (to_rep1 (last6 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first7 a) (last7 a))
                                    (+ (- (last7 a) (first7 a)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int natural)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int natural)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment2 a))))

(define-fun bool_eq10 ((x1 us_t2)
  (y1 us_t2)) Bool (bool_eq4 (elts2 x1) (to_rep1 (first6 (rt2 x1)))
                   (to_rep1 (last6 (rt2 x1))) (elts2 y1)
                   (to_rep1 (first6 (rt2 y1))) (to_rep1 (last6 (rt2 y1)))))

(declare-fun user_eq9 (us_t2 us_t2) Bool)

(declare-fun dummy9 () us_t2)

(declare-datatypes ()
((tintermS__ref (mk_tintermS__ref (tintermS__content us_t2)))))
(define-fun tintermS__ref___projection ((a tintermS__ref)) us_t2 (tintermS__content
                                                                 a))

(declare-fun interm__first () integer)

(declare-fun interm__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant6 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range3 temp___expr_15)))

(declare-fun remove_last (us_t) us_t)

(declare-fun remove_last__function_guard (us_t us_t) Bool)

(declare-fun first8 () Int)

(declare-fun last8 () Int)

(define-fun dynamic_property5 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq11 ((x1 Int) (y1 Int)) Bool (ite (= x1 y1) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq10 (integer integer) Bool)

(declare-fun dummy10 () integer)

(declare-datatypes () ((t17s__ref (mk_t17s__ref (t17s__content integer)))))
(define-fun t17s__ref___projection ((a t17s__ref)) integer (t17s__content a))

(declare-sort t3 0)

(declare-fun first9 (t3) integer)

(declare-fun last9 (t3) integer)

(declare-fun mk3 (Int Int) t3)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range3 f)
     (=> (in_range3 l)
     (and (= (to_rep1 (first9 (mk3 f l))) f)
     (= (to_rep1 (last9 (mk3 f l))) l)))) :pattern ((mk3 f l)) )))

(define-fun dynamic_property6 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range3 low)
                   (and (in_range3 high)
                   (=> (<= low high)
                   (and (dynamic_property5 range_first range_last low)
                   (dynamic_property5 range_first range_last high))))))

(declare-datatypes ()
((us_t3 (mk___t3 (elts3 (Array Int natural))(rt3 t3)))))
(define-fun to_array3 ((a us_t3)) (Array Int natural) (elts3 a))

(define-fun of_array3 ((a (Array Int natural)) (f Int)
  (l Int)) us_t3 (mk___t3 a (mk3 f l)))

(define-fun first10 ((a us_t3)) Int (to_rep1 (first9 (rt3 a))))

(define-fun last10 ((a us_t3)) Int (to_rep1 (last9 (rt3 a))))

(define-fun length3 ((a us_t3)) Int (ite (<= (first10 a) (last10 a))
                                    (+ (- (last10 a) (first10 a)) 1) 0))

(declare-fun value__size3 () Int)

(declare-fun object__size3 ((Array Int natural)) Int)

(declare-fun value__component__size3 () Int)

(declare-fun object__component__size3 ((Array Int natural)) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 ((Array Int natural)) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__size3 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size3))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int natural))) (<= 0 (object__component__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a (Array Int natural))) (<= 0 (object__alignment3 a))))

(define-fun bool_eq12 ((x1 us_t3)
  (y1 us_t3)) Bool (bool_eq4 (elts3 x1) (to_rep1 (first9 (rt3 x1)))
                   (to_rep1 (last9 (rt3 x1))) (elts3 y1)
                   (to_rep1 (first9 (rt3 y1))) (to_rep1 (last9 (rt3 y1)))))

(declare-fun user_eq11 (us_t3 us_t3) Bool)

(declare-fun dummy11 () us_t3)

(declare-datatypes () ((t18s__ref (mk_t18s__ref (t18s__content us_t3)))))
(define-fun t18s__ref___projection ((a t18s__ref)) us_t3 (t18s__content a))

;; remove_last__post_axiom
  (assert
  (forall ((a us_t))
  (! (=> (and (dynamic_invariant2 a true true true) (< 0 (length a)))
     (let ((result (remove_last a)))
     (=> (remove_last__function_guard result a) (dynamic_invariant2 result
     true false true)))) :pattern ((remove_last a)) )))

;; remove_last__def_axiom
  (assert
  (forall ((a us_t))
  (! (=>
     (and (dynamic_invariant2 a true true true) (remove_last__function_guard
     (remove_last a) a))
     (= (remove_last a) (let ((temp___159 (let ((temp___158 (- (last1 a) 1)))
                                          (let ((temp___157 (first1 a)))
                                          (of_array3 (to_array a) temp___157
                                          temp___158)))))
                        (of_array (to_array3 temp___159) (first10 temp___159)
                        (last10 temp___159))))) :pattern ((remove_last a)) )))

;; occ_def__def_axiom
  (assert
  (forall ((a us_t))
  (forall ((e Int))
  (! (=>
     (and
     (and (dynamic_invariant2 a true true true) (dynamic_invariant1 e true
     true true)) (occ_def__function_guard (occ_def a e) a e))
     (and (remove_last__function_guard (remove_last a) a)
     (and (remove_last__function_guard (remove_last a) a)
     (and (occ_def__function_guard (occ_def (remove_last a) e)
     (remove_last a) e)
     (and (remove_last__function_guard (remove_last a) a)
     (and (remove_last__function_guard (remove_last a) a)
     (and (occ_def__function_guard (occ_def (remove_last a) e)
     (remove_last a) e)
     (= (occ_def a e) (ite (= (length a) 0) 0
                      (ite (= (to_rep (select (to_array a) (last1 a))) e)
                      (+ (occ_def (remove_last a) e) 1)
                      (occ_def (remove_last a) e))))))))))) :pattern (
  (occ_def a e)) ))))

(define-fun dynamic_invariant7 ((temp___expr_226 us_t2)
  (temp___is_init_223 Bool) (temp___skip_constant_224 Bool)
  (temp___do_toplevel_225 Bool)) Bool (=>
                                      (not (= temp___skip_constant_224 true))
                                      (and (dynamic_property4
                                      (to_rep1 values__first)
                                      (to_rep1 values__last)
                                      (first7 temp___expr_226)
                                      (last7 temp___expr_226))
                                      (and
                                      (= (first7 temp___expr_226) (to_rep1
                                                                  values__first))
                                      (= (last7 temp___expr_226) (to_rep1
                                                                 values__last))))))

(declare-fun interm () (Array Int natural))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () natural)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () natural)

(declare-fun o7 () Int)

(declare-fun result () Bool)

;; H
  (assert (dynamic_property 1 100 (to_rep1 values__first)
  (to_rep1 values__last)))

;; H
  (assert (in_range2 x))

;; H
  (assert (in_range2 y))

;; H
  (assert (dynamic_invariant5 init true false true))

;; H
  (assert
  (and (dynamic_property4 (to_rep1 values__first) (to_rep1 values__last)
  (to_rep1 interm__first) (to_rep1 interm__last))
  (and (= (to_rep1 interm__first) (to_rep1 values__first))
  (= (to_rep1 interm__last) (to_rep1 values__last)))))

;; H
  (assert (<= (to_rep1 values__first) x))

;; H
  (assert (<= x (to_rep1 values__last)))

;; H
  (assert (<= (to_rep1 values__first) y))

;; H
  (assert (<= y (to_rep1 values__last)))

;; H
  (assert
  (and (<= (to_rep1 (first3 (rt1 init))) y)
  (<= y (to_rep1 (last3 (rt1 init))))))

;; H
  (assert (= o5 y))

;; H
  (assert (= o6 (select (elts1 init) o5)))

;; H
  (assert (= o7 (to_rep o6)))

;; H
  (assert (and (= o4 x) (in_range4 x)))

;; H
  (assert
  (and
  (and
  (= result (is_set
            (mk___t (elts1 init)
            (mk (to_rep1 (first3 (rt1 init))) (to_rep1 (last3 (rt1 init)))))
            o4 o7
            (mk___t interm
            (mk (to_rep1 interm__first) (to_rep1 interm__last)))))
  (is_set__function_guard result
  (mk___t (elts1 init)
  (mk (to_rep1 (first3 (rt1 init))) (to_rep1 (last3 (rt1 init))))) o4 
  o7 (mk___t interm (mk (to_rep1 interm__first) (to_rep1 interm__last)))))
  (= (= result true)
  (and
  (and
  (and
  (= (to_rep1 (first (mk (to_rep1 interm__first) (to_rep1 interm__last)))) 
  (to_rep1
  (first (mk (to_rep1 (first3 (rt1 init))) (to_rep1 (last3 (rt1 init)))))))
  (= (to_rep1 (last (mk (to_rep1 interm__first) (to_rep1 interm__last)))) 
  (to_rep1
  (last (mk (to_rep1 (first3 (rt1 init))) (to_rep1 (last3 (rt1 init))))))))
  (= (to_rep (select interm o4)) o7))
  (forall ((j Int))
  (=>
  (and
  (<= (to_rep1
      (first (mk (to_rep1 (first3 (rt1 init))) (to_rep1 (last3 (rt1 init)))))) j)
  (<= j (to_rep1
        (last
        (mk (to_rep1 (first3 (rt1 init))) (to_rep1 (last3 (rt1 init))))))))
  (=> (not (= o4 j))
  (= (to_rep (select interm j)) (to_rep (select (elts1 init) j))))))))))

;; H
  (assert (= result true))

;; H
  (assert
  (and (<= (to_rep1 (first3 (rt1 init))) x)
  (<= x (to_rep1 (last3 (rt1 init))))))

;; H
  (assert (= o1 x))

;; H
  (assert (= o2 (select (elts1 init) o1)))

;; H
  (assert (= o3 (to_rep o2)))

;; H
  (assert (and (= o y) (in_range4 y)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (<= (to_rep1 (first (mk (to_rep1 interm__first) (to_rep1 interm__last)))) 
  o)))
(check-sat)
