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
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (positive positive) Bool)
(declare-const dummy positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (integer integer) Bool)
(declare-const dummy1 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (natural natural) Bool)
(declare-const dummy2 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort index 0)
(declare-fun indexqtint (index) Int)
(assert (forall ((i index)) (and (<= 1 (indexqtint i)) (<= (indexqtint i) 100))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (index index) Bool)
(declare-const dummy3 index)
(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))
(define-fun to_rep1 ((x natural)) Int (naturalqtint x))
(declare-fun of_rep1 (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x natural)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int natural))))))
(declare-fun slide ((Array Int natural) Int Int) (Array Int natural))
(assert (forall ((a (Array Int natural))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int natural))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int natural)) (a__first Int) (a__last Int) (b (Array Int natural)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int natural)) (b (Array Int natural))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range4 low) (in_range4 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int natural)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int natural) (elts a))
(define-fun of_array ((a (Array Int natural)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int natural)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int natural)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int natural)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int natural))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int natural))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int natural))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep (first (rt x))) (to_rep (last (rt x))) (elts y) (to_rep (first (rt y))) (to_rep (last (rt y)))))
(declare-fun user_eq4 (us_t us_t) Bool)
(declare-const dummy4 us_t)
(declare-datatypes () ((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content a))
(declare-fun is_perm (us_t us_t) Bool)
(declare-fun is_perm__function_guard (Bool us_t us_t) Bool)
(declare-fun invariant__ (us_t) Bool)
(declare-fun invariant____function_guard (Bool us_t) Bool)
(declare-fun remove (us_t Int) us_t)
(declare-fun remove__function_guard (us_t us_t Int) Bool)
(assert (forall ((a us_t) (b us_t)) (! (= (= (is_perm a b) true) (or (and (= (length a) 0) (= (length b) 0)) (exists ((ia Int)) (and (and (<= (first1 a) ia) (<= ia (last1 a))) (exists ((ib Int)) (and (and (<= (first1 b) ib) (<= ib (last1 b))) (and (= (to_rep1 (select (to_array a) ia)) (to_rep1 (select (to_array b) ib))) (= (is_perm (remove a ia) (remove b ib)) true)))))))) :pattern ((is_perm a b)))))
(declare-fun perm_reflexive (us_t us_t) Int)
(declare-fun perm_reflexive__function_guard (Int us_t us_t) Bool)
(declare-sort true_bool 0)
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (true_bool true_bool) Bool)
(declare-const dummy5 true_bool)
(declare-datatypes () ((true_bool__ref (mk_true_bool__ref (true_bool__content true_bool)))))
(define-fun true_bool__ref___projection ((a true_bool__ref)) true_bool (true_bool__content a))
(define-fun dynamic_invariant1 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 1 1)) (in_range5 temp___expr_159)))
(define-fun dynamic_invariant2 ((temp___expr_173 us_t) (temp___is_init_169 Bool) (temp___skip_constant_170 Bool) (temp___do_toplevel_171 Bool) (temp___do_typ_inv_172 Bool)) Bool (=> (not (= temp___skip_constant_170 true)) (dynamic_property 1 100 (first1 temp___expr_173) (last1 temp___expr_173))))
(assert (forall ((a us_t) (b us_t)) (! (=> (and (and (dynamic_invariant2 a true true true true) (dynamic_invariant2 b true true true true)) (and (= (invariant__ a) true) (and (= (invariant__ b) true) (= (bool_eq (to_array a) (first1 a) (last1 a) (to_array b) (first1 b) (last1 b)) true)))) (let ((result (perm_reflexive a b))) (and (=> (= (distinct result 0) true) (= (is_perm a b) true)) (dynamic_invariant1 result true false true true)))) :pattern ((perm_reflexive a b)))))
(declare-fun perm_transitive (us_t us_t us_t) Int)
(declare-fun perm_transitive__function_guard (Int us_t us_t us_t) Bool)
(assert (forall ((a us_t) (b us_t) (c us_t)) (! (=> (and (and (and (dynamic_invariant2 a true true true true) (dynamic_invariant2 b true true true true)) (dynamic_invariant2 c true true true true)) (and (= (invariant__ a) true) (and (= (invariant__ b) true) (and (= (invariant__ c) true) (and (= (is_perm a b) true) (= (is_perm b c) true)))))) (let ((result (perm_transitive a b c))) (and (=> (= (distinct result 0) true) (= (is_perm a c) true)) (dynamic_invariant1 result true false true true)))) :pattern ((perm_transitive a b c)))))
(declare-sort tarray_typeP1 0)
(declare-fun tarray_typeP1qtint (tarray_typeP1) Int)
(assert (forall ((i tarray_typeP1)) (and (<= 1 (tarray_typeP1qtint i)) (<= (tarray_typeP1qtint i) 100))))
(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq6 (tarray_typeP1 tarray_typeP1) Bool)
(declare-const dummy6 tarray_typeP1)
(declare-datatypes () ((tarray_typeP1__ref (mk_tarray_typeP1__ref (tarray_typeP1__content tarray_typeP1)))))
(define-fun tarray_typeP1__ref___projection ((a tarray_typeP1__ref)) tarray_typeP1 (tarray_typeP1__content a))
(declare-fun index_of_minimum ((Array Int natural) Int Int) Int)
(declare-fun index_of_minimum__function_guard (Int (Array Int natural) Int Int) Bool)
(define-fun dynamic_invariant3 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 1 100)) (in_range4 temp___expr_166)))
(assert (forall ((values (Array Int natural))) (forall ((first2 Int) (last2 Int)) (! (=> (and (and (dynamic_invariant3 first2 true true true true) (dynamic_invariant3 last2 true true true true)) (and (<= first2 last2) (and (and (<= 1 first2) (<= first2 100)) (and (<= 1 last2) (<= last2 100))))) (let ((result (index_of_minimum values first2 last2))) (and (and (<= first2 result) (<= result last2)) (dynamic_invariant result true false true true)))) :pattern ((index_of_minimum values first2 last2))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const init (Array Int natural))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-sort t11b 0)
(declare-fun t11bqtint (t11b) Int)
(assert (forall ((i t11b)) (and (<= 1 (t11bqtint i)) (<= (t11bqtint i) 99))))
(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 99)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq7 (t11b t11b) Bool)
(declare-const dummy7 t11b)
(declare-datatypes () ((t11b__ref (mk_t11b__ref (t11b__content t11b)))))
(define-fun t11b__ref___projection ((a t11b__ref)) t11b (t11b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(define-fun dynamic_invariant4 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range3 temp___expr_39)))
(define-fun dynamic_invariant5 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_18)))
(assert true)
(assert (forall ((a us_t)) (! (= (= (invariant__ a) true) (and (= (first1 a) 1) (<= 0 (last1 a)))) :pattern ((invariant__ a)))))
(assert (forall ((a us_t)) (forall ((i Int)) (! (=> (and (and (dynamic_invariant2 a true true true true) (dynamic_invariant3 i true true true true)) (and (= (invariant__ a) true) (and (<= (first1 a) i) (<= i (last1 a))))) (let ((result (remove a i))) (and (and (= (invariant__ result) true) (and (= (last1 result) (- (last1 a) 1)) (and (forall ((k Int)) (=> (and (<= 1 k) (<= k (- i 1))) (= (to_rep1 (select (to_array a) k)) (to_rep1 (select (to_array result) k))))) (and (forall ((k Int)) (=> (and (<= (+ i 1) k) (<= k (last1 a))) (= (to_rep1 (select (to_array a) k)) (to_rep1 (select (to_array result) (- k 1)))))) (forall ((k Int)) (=> (and (<= i k) (<= k (- (last1 a) 1))) (= (to_rep1 (select (to_array a) (+ k 1))) (to_rep1 (select (to_array result) k))))))))) (dynamic_invariant2 result true false true true)))) :pattern ((remove a i))))))
(declare-const values (Array Int natural))
(declare-const smallest Int)
(declare-const prec (Array Int natural))
(declare-const hr Int)
(declare-const current Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const values1 (Array Int natural))
(declare-const result (Array Int natural))
(declare-const prec1 (Array Int natural))
(declare-const result1 Int)
(declare-const hr1 Int)
(declare-const result2 Int)
(declare-const current1 Int)
(declare-const result3 Int)
(declare-const smallest1 Int)
(declare-const result4 (Array Int natural))
(declare-const prec2 (Array Int natural))
(declare-const values2 (Array Int natural))
(declare-const result5 Int)
(declare-const hr2 Int)
(declare-const values3 (Array Int natural))
(declare-const smallest2 Int)
(declare-const prec3 (Array Int natural))
(declare-const hr3 Int)
(declare-const current2 Int)
(declare-const result6 Int)
(declare-const current3 Int)
(declare-const result7 Int)
(declare-const smallest3 Int)
(declare-const result8 (Array Int natural))
(declare-const prec4 (Array Int natural))
(assert (=> (<= 1 2147483647) (in_range1 smallest)))
(assert (= values init))
(assert (= (mk_map__ref result) (mk_map__ref prec)))
(assert (= prec1 values))
(assert (=> (<= 1 1) (in_range5 hr)))
(assert (and (= o (perm_reflexive (mk___t values (mk 1 100)) (mk___t values (mk 1 100)))) (and (in_range5 o) (=> (= (distinct o 0) true) (= (is_perm (mk___t values (mk 1 100)) (mk___t values (mk 1 100))) true)))))
(assert (= (mk_int__ref result1) (mk_int__ref hr)))
(assert (= hr1 o))
(assert (= (mk_int__ref result2) (mk_int__ref current)))
(assert (= current1 1))
(assert (<= 1 current1))
(assert (<= current1 99))
(assert (and (= o1 (index_of_minimum values current1 100)) (and (in_range1 o1) (and (<= current1 o1) (<= o1 100)))))
(assert (= (mk_int__ref result3) (mk_int__ref smallest)))
(assert (= smallest1 o1))
(assert (=> (not (= smallest1 current1)) (= prec1 result4)))
(assert (=> (not (= smallest1 current1)) (= prec2 values)))
(assert (=> (not (= smallest1 current1)) (= (is_perm (mk___t values (mk 1 100)) (mk___t values2 (mk 1 100))) true)))
(assert (=> (not (= smallest1 current1)) (and (= o2 (perm_transitive (mk___t init (mk 1 100)) (mk___t prec2 (mk 1 100)) (mk___t values2 (mk 1 100)))) (and (in_range5 o2) (=> (= (distinct o2 0) true) (= (is_perm (mk___t init (mk 1 100)) (mk___t values2 (mk 1 100))) true))))))
(assert (=> (not (= smallest1 current1)) (= hr1 result5)))
(assert (=> (not (= smallest1 current1)) (= hr2 o2)))
(assert (=> (not (not (= smallest1 current1))) (= hr2 hr1)))
(assert (=> (not (not (= smallest1 current1))) (= prec2 prec1)))
(assert (=> (not (not (= smallest1 current1))) (= values2 values)))
(assert (=> (not (not (= smallest1 current1))) (= hr2 hr1)))
(assert (=> (not (not (= smallest1 current1))) (= prec2 prec1)))
(assert (=> (not (not (= smallest1 current1))) (= values2 values1)))
(assert (= (is_perm (mk___t values (mk 1 100)) (mk___t values3 (mk 1 100))) true))
(assert (and (and (and (=> (<= 1 1) (in_range5 hr3)) (=> (<= 1 2147483647) (in_range1 smallest2))) (=> (<= 1 99) (in_range7 current2))) (and (<= 1 current2) (<= current2 99))))
(assert (not (= current2 99)))
(assert (= current2 result6))
(assert (= current3 (+ current2 1)))
(assert (and (= o3 (index_of_minimum values3 current3 100)) (and (in_range1 o3) (and (<= current3 o3) (<= o3 100)))))
(assert (= smallest2 result7))
(assert (= smallest3 o3))
(assert (not (= smallest3 current3)))
(assert (= prec3 result8))
(assert (= prec4 values3))
(assert (not (<= 1 current3)))
(check-sat)
(exit)
