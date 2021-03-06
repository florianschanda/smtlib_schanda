(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFDTLIRA)
(set-info :source |Benchmarks generated by Florian Schanda from the public SPARK 2014 testsuite and post-processed with a script to set more precise logics.|)
(set-info :category industrial)
(set-info :status unknown)

(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)
(declare-fun private__bool_eq (us_private us_private) Bool)
(declare-const us_null_ext__ us_private)
(declare-sort us_type_of_heap 0)
(declare-datatypes () ((us_type_of_heap__ref (mk___type_of_heap__ref (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)
(declare-datatypes () ((int__ref (mk_int__ref (int__content Int)))))
(declare-datatypes () ((bool__ref (mk_bool__ref (bool__content Bool)))))
(declare-datatypes () ((real__ref (mk_real__ref (real__content Real)))))
(declare-datatypes () ((us_private__ref (mk___private__ref (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))
(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))
(define-fun real__ref___projection ((a real__ref)) Real (real__content a))
(define-fun us_private__ref___projection ((a us_private__ref)) us_private (us_private__content a))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-sort d 0)
(declare-fun dqtint (d) Int)
(assert (forall ((i d)) (and (<= 1 (dqtint i)) (<= (dqtint i) 10))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (d d) Bool)
(declare-const dummy1 d)
(declare-datatypes () ((d__ref (mk_d__ref (d__content d)))))
(define-fun d__ref___projection ((a d__ref)) d (d__content a))
(define-fun dynamic_invariant ((temp___expr_162 Int) (temp___is_init_158 Bool) (temp___skip_constant_159 Bool) (temp___do_toplevel_160 Bool) (temp___do_typ_inv_161 Bool)) Bool (=> (or (= temp___is_init_158 true) (<= 1 10)) (in_range1 temp___expr_162)))
(define-fun to_rep ((x d)) Int (dqtint x))
(declare-fun of_rep (Int) d)
(assert (forall ((x d)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x d)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort tdB 0)
(declare-fun tdBqtint (tdB) Int)
(assert (forall ((i tdB)) (and (<= (- 2147483648) (tdBqtint i)) (<= (tdBqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (tdB tdB) Bool)
(declare-const dummy2 tdB)
(declare-datatypes () ((tdB__ref (mk_tdB__ref (tdB__content tdB)))))
(define-fun tdB__ref___projection ((a tdB__ref)) tdB (tdB__content a))
(define-fun to_rep2 ((x tdB)) Int (tdBqtint x))
(declare-fun of_rep2 (Int) tdB)
(assert (forall ((x tdB)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x tdB)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (tdB tdB) Bool)
(declare-const dummy3 tdB)
(declare-datatypes () ((t3s__ref (mk_t3s__ref (t3s__content tdB)))))
(define-fun t3s__ref___projection ((a t3s__ref)) tdB (t3s__content a))
(declare-sort t 0)
(declare-fun first (t) tdB)
(declare-fun last (t) tdB)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep2 (first (mk f l))) f) (= (to_rep2 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (dynamic_property range_first range_last low) (dynamic_property range_first range_last high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int integer)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int integer) (elts a))
(define-fun of_array ((a (Array Int integer)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep2 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep2 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int integer)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int integer)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int integer)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep2 (first (rt x))) (to_rep2 (last (rt x))) (elts y) (to_rep2 (first (rt y))) (to_rep2 (last (rt y)))))
(declare-fun user_eq4 (us_t us_t) Bool)
(declare-const dummy4 us_t)
(declare-datatypes () ((t4s__ref (mk_t4s__ref (t4s__content us_t)))))
(define-fun t4s__ref___projection ((a t4s__ref)) us_t (t4s__content a))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__mutable__t__k d)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) d (rec__mutable__t__k a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__mutable__t__som integer) (rec__mutable__t__arr us_t)))))
(define-fun us_split_fields_Som__projection ((a us_split_fields)) integer (rec__mutable__t__som a))
(define-fun us_split_fields_Arr__projection ((a us_split_fields)) us_t (rec__mutable__t__arr a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields) (attr__constrained Bool)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___3__projection ((a us_rep)) Bool (attr__constrained a))
(define-fun bool_eq2 ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__mutable__t__k (us_split_discrs1 a))) (to_rep (rec__mutable__t__k (us_split_discrs1 b)))) (and (= (to_rep1 (rec__mutable__t__som (us_split_fields1 a))) (to_rep1 (rec__mutable__t__som (us_split_fields1 b)))) (= (bool_eq1 (rec__mutable__t__arr (us_split_fields1 a)) (rec__mutable__t__arr (us_split_fields1 b))) true))) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const mutable__t__k__first__bit Int)
(declare-const mutable__t__k__last__bit Int)
(declare-const mutable__t__k__position Int)
(assert (<= 0 mutable__t__k__first__bit))
(assert (< mutable__t__k__first__bit mutable__t__k__last__bit))
(assert (<= 0 mutable__t__k__position))
(declare-const mutable__t__som__first__bit Int)
(declare-const mutable__t__som__last__bit Int)
(declare-const mutable__t__som__position Int)
(assert (<= 0 mutable__t__som__first__bit))
(assert (< mutable__t__som__first__bit mutable__t__som__last__bit))
(assert (<= 0 mutable__t__som__position))
(declare-const mutable__t__arr__first__bit Int)
(declare-const mutable__t__arr__last__bit Int)
(declare-const mutable__t__arr__position Int)
(assert (<= 0 mutable__t__arr__first__bit))
(assert (< mutable__t__arr__first__bit mutable__t__arr__last__bit))
(assert (<= 0 mutable__t__arr__position))
(declare-fun user_eq5 (us_rep us_rep) Bool)
(declare-const dummy5 us_rep)
(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))
(define-fun dynamic_invariant1 ((temp___expr_175 us_rep) (temp___is_init_171 Bool) (temp___skip_constant_172 Bool) (temp___do_toplevel_173 Bool) (temp___do_typ_inv_174 Bool)) Bool (let ((temp___176 (rec__mutable__t__k (us_split_discrs1 temp___expr_175)))) (and (dynamic_property1 1 (to_rep temp___176) (first1 (rec__mutable__t__arr (us_split_fields1 temp___expr_175))) (last1 (rec__mutable__t__arr (us_split_fields1 temp___expr_175)))) (and (= (first1 (rec__mutable__t__arr (us_split_fields1 temp___expr_175))) 1) (= (last1 (rec__mutable__t__arr (us_split_fields1 temp___expr_175))) (to_rep temp___176))))))
(define-fun default_initial_assumption ((temp___expr_178 us_rep) (temp___skip_top_level_179 Bool)) Bool (and (= (attr__constrained temp___expr_178) false) (= (to_rep (rec__mutable__t__k (us_split_discrs1 temp___expr_178))) 10)))
(declare-const x__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const r4b Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort tT7bP1 0)
(declare-fun tT7bP1qtint (tT7bP1) Int)
(assert (forall ((i tT7bP1)) (and (<= 1 (tT7bP1qtint i)) (<= (tT7bP1qtint i) 5))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 5)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq6 (tT7bP1 tT7bP1) Bool)
(declare-const dummy6 tT7bP1)
(declare-datatypes () ((tT7bP1__ref (mk_tT7bP1__ref (tT7bP1__content tT7bP1)))))
(define-fun tT7bP1__ref___projection ((a tT7bP1__ref)) tT7bP1 (tT7bP1__content a))
(declare-const dummy7 (Array Int integer))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int integer)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int integer)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int integer)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment2 a))))
(declare-fun user_eq7 ((Array Int integer) (Array Int integer)) Bool)
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__mutable__t__som1 integer) (rec__mutable__t__arr1 (Array Int integer))))))
(define-fun us_split_fields_Som__3__projection ((a us_split_fields2)) integer (rec__mutable__t__som1 a))
(define-fun us_split_fields_Arr__3__projection ((a us_split_fields2)) (Array Int integer) (rec__mutable__t__arr1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___3__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs2 us_split_discrs) (us_split_fields3 us_split_fields2) (attr__constrained1 Bool)))))
(define-fun us_rep___7__projection ((a us_rep1)) us_split_discrs (us_split_discrs2 a))
(define-fun us_rep___8__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun us_rep___9__projection ((a us_rep1)) Bool (attr__constrained1 a))
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (us_split_discrs2 a) (mk___split_fields (rec__mutable__t__som1 (us_split_fields3 a)) (of_array (rec__mutable__t__arr1 (us_split_fields3 a)) 1 5)) (attr__constrained1 a)))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (us_split_discrs1 r) (mk___split_fields1 (rec__mutable__t__som (us_split_fields1 r)) (let ((temp___157 (rec__mutable__t__arr (us_split_fields1 r)))) (to_array temp___157))) (attr__constrained r)))
(define-fun bool_eq3 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (to_rep (rec__mutable__t__k (us_split_discrs2 a))) (to_rep (rec__mutable__t__k (us_split_discrs2 b)))) (and (= (to_rep1 (rec__mutable__t__som1 (us_split_fields3 a))) (to_rep1 (rec__mutable__t__som1 (us_split_fields3 b)))) (= (bool_eq (rec__mutable__t__arr1 (us_split_fields3 a)) 1 5 (rec__mutable__t__arr1 (us_split_fields3 b)) 1 5) true))) true false))
(define-fun in_range4 ((rec__mutable__t__k1 Int) (a us_rep)) Bool (= rec__mutable__t__k1 (to_rep (rec__mutable__t__k (us_split_discrs1 a)))))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep1) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep1) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep1)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment3 a))))
(declare-const mutable__t__k__first__bit1 Int)
(declare-const mutable__t__k__last__bit1 Int)
(declare-const mutable__t__k__position1 Int)
(assert (<= 0 mutable__t__k__first__bit1))
(assert (< mutable__t__k__first__bit1 mutable__t__k__last__bit1))
(assert (<= 0 mutable__t__k__position1))
(declare-const mutable__t__som__first__bit1 Int)
(declare-const mutable__t__som__last__bit1 Int)
(declare-const mutable__t__som__position1 Int)
(assert (<= 0 mutable__t__som__first__bit1))
(assert (< mutable__t__som__first__bit1 mutable__t__som__last__bit1))
(assert (<= 0 mutable__t__som__position1))
(declare-const mutable__t__arr__first__bit1 Int)
(declare-const mutable__t__arr__last__bit1 Int)
(declare-const mutable__t__arr__position1 Int)
(assert (<= 0 mutable__t__arr__first__bit1))
(assert (< mutable__t__arr__first__bit1 mutable__t__arr__last__bit1))
(assert (<= 0 mutable__t__arr__position1))
(declare-fun user_eq8 (us_rep1 us_rep1) Bool)
(declare-const dummy8 us_rep1)
(declare-datatypes () ((t6b__ref (mk_t6b__ref (t6b__content us_rep1)))))
(define-fun t6b__ref___projection ((a t6b__ref)) us_rep1 (t6b__content a))
(declare-fun temp_____aggregate_def_216 (Int) (Array Int integer))
(define-fun dynamic_invariant2 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-const rliteral integer)
(assert (= (integerqtint rliteral) 0))
(assert (forall ((temp___218 Int)) (=> (dynamic_invariant2 temp___218 true true true true) (forall ((temp___219 Int)) (= (select (temp_____aggregate_def_216 temp___218) temp___219) rliteral)))))
(declare-const rliteral1 d)
(assert (= (dqtint rliteral1) 5))
(declare-const x__split_fields integer)
(declare-const x__split_fields1 (Array Int integer))
(declare-const x__split_fields2 t)
(declare-const x__split_discrs d)
(assert (dynamic_invariant1 (mk___rep (mk___split_discrs x__split_discrs) (mk___split_fields x__split_fields (mk___t x__split_fields1 x__split_fields2)) x__attr__constrained) true false true true))
(assert (= (to_rep x__split_discrs) r4b))
(assert (in_range1 r4b))
(assert (= x__attr__constrained true))
(assert (not (= rliteral1 x__split_discrs)))
(check-sat)
(exit)
