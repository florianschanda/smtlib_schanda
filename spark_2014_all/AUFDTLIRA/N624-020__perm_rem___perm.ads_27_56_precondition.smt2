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
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort index 0)
(declare-fun indexqtint (index) Int)
(assert (forall ((i index)) (and (<= 1 (indexqtint i)) (<= (indexqtint i) 100))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (index index) Bool)
(declare-const dummy2 index)
(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int natural))))))
(declare-fun slide ((Array Int natural) Int Int) (Array Int natural))
(assert (forall ((a (Array Int natural))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int natural))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int natural)) (a__first Int) (a__last Int) (b (Array Int natural)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int natural)) (b (Array Int natural))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int natural)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int natural) (elts a))
(define-fun of_array ((a (Array Int natural)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))
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
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y)))))
(declare-fun user_eq3 (us_t us_t) Bool)
(declare-const dummy3 us_t)
(declare-datatypes () ((nat_array__ref (mk_nat_array__ref (nat_array__content us_t)))))
(define-fun nat_array__ref___projection ((a nat_array__ref)) us_t (nat_array__content a))
(declare-fun invariant__ (us_t) Bool)
(declare-fun invariant____function_guard (Bool us_t) Bool)
(define-fun dynamic_invariant ((temp___expr_173 us_t) (temp___is_init_169 Bool) (temp___skip_constant_170 Bool) (temp___do_toplevel_171 Bool) (temp___do_typ_inv_172 Bool)) Bool (=> (not (= temp___skip_constant_170 true)) (dynamic_property 1 100 (first1 temp___expr_173) (last1 temp___expr_173))))
(assert true)
(assert (forall ((a us_t)) (! (= (= (invariant__ a) true) (and (= (first1 a) 1) (<= 0 (last1 a)))) :pattern ((invariant__ a)))))
(declare-fun remove (us_t Int) us_t)
(declare-fun remove__function_guard (us_t us_t Int) Bool)
(define-fun dynamic_invariant1 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 1 100)) (in_range3 temp___expr_166)))
(assert (forall ((a us_t)) (forall ((i Int)) (! (=> (and (and (dynamic_invariant a true true true true) (dynamic_invariant1 i true true true true)) (and (= (invariant__ a) true) (and (<= (first1 a) i) (<= i (last1 a))))) (let ((result (remove a i))) (and (and (= (invariant__ result) true) (and (= (last1 result) (- (last1 a) 1)) (and (forall ((k Int)) (=> (and (<= 1 k) (<= k (- i 1))) (= (to_rep (select (to_array a) k)) (to_rep (select (to_array result) k))))) (and (forall ((k Int)) (=> (and (<= (+ i 1) k) (<= k (last1 a))) (= (to_rep (select (to_array a) k)) (to_rep (select (to_array result) (- k 1)))))) (forall ((k Int)) (=> (and (<= i k) (<= k (- (last1 a) 1))) (= (to_rep (select (to_array a) (+ k 1))) (to_rep (select (to_array result) k))))))))) (dynamic_invariant result true false true true)))) :pattern ((remove a i))))))
(declare-const a us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const b us_t)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const aa us_t)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const bb us_t)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(assert (= aa (remove a i)))
(assert (= bb (remove b i)))
(declare-const perm__remove_eq__result Int)
(declare-const perm__remove_eq__aa__assume (Array Int natural))
(declare-const perm__remove_eq__aa__assume1 t)
(declare-const perm__remove_eq__bb__assume (Array Int natural))
(declare-const perm__remove_eq__bb__assume1 t)
(declare-const result Int)
(declare-const perm__remove_eq__result1 Int)
(declare-const perm__remove_eq__result2 Int)
(declare-const perm__remove_eq__result3 Int)
(declare-const perm__remove_eq__result4 Int)
(declare-const perm__remove_eq__result5 Int)
(define-fun perm__remove_eq__bb__assume2 () us_t (mk___t perm__remove_eq__bb__assume perm__remove_eq__bb__assume1))
(define-fun perm__remove_eq__aa__assume2 () us_t (mk___t perm__remove_eq__aa__assume perm__remove_eq__aa__assume1))
(assert (dynamic_invariant a true false true true))
(assert (dynamic_invariant b true false true true))
(assert (in_range3 i))
(assert (and (= (invariant__ a) true) (and (= (invariant__ b) true) (and (and (<= (to_rep1 (first (rt a))) i) (<= i (to_rep1 (last (rt a))))) (= (bool_eq (elts a) (to_rep1 (first (rt a))) (to_rep1 (last (rt a))) (elts b) (to_rep1 (first (rt b))) (to_rep1 (last (rt b)))) true)))))
(assert (and (= perm__remove_eq__aa__assume2 (remove a i)) (and (dynamic_invariant perm__remove_eq__aa__assume2 true false true true) (and (= (invariant__ perm__remove_eq__aa__assume2) true) (and (= (to_rep1 (last perm__remove_eq__aa__assume1)) (- (to_rep1 (last (rt a))) 1)) (and (forall ((k Int)) (=> (and (<= 1 k) (<= k (- i 1))) (= (to_rep (select (elts a) k)) (to_rep (select perm__remove_eq__aa__assume k))))) (and (forall ((k Int)) (=> (and (<= (+ i 1) k) (<= k (to_rep1 (last (rt a))))) (= (to_rep (select (elts a) k)) (to_rep (select perm__remove_eq__aa__assume (- k 1)))))) (forall ((k Int)) (=> (and (<= i k) (<= k (- (to_rep1 (last (rt a))) 1))) (= (to_rep (select (elts a) (+ k 1))) (to_rep (select perm__remove_eq__aa__assume k))))))))))))
(assert (= perm__remove_eq__aa__assume2 aa))
(assert (dynamic_invariant aa true false true true))
(assert (and (= perm__remove_eq__bb__assume2 (remove b i)) (and (dynamic_invariant perm__remove_eq__bb__assume2 true false true true) (and (= (invariant__ perm__remove_eq__bb__assume2) true) (and (= (to_rep1 (last perm__remove_eq__bb__assume1)) (- (to_rep1 (last (rt b))) 1)) (and (forall ((k Int)) (=> (and (<= 1 k) (<= k (- i 1))) (= (to_rep (select (elts b) k)) (to_rep (select perm__remove_eq__bb__assume k))))) (and (forall ((k Int)) (=> (and (<= (+ i 1) k) (<= k (to_rep1 (last (rt b))))) (= (to_rep (select (elts b) k)) (to_rep (select perm__remove_eq__bb__assume (- k 1)))))) (forall ((k Int)) (=> (and (<= i k) (<= k (- (to_rep1 (last (rt b))) 1))) (= (to_rep (select (elts b) (+ k 1))) (to_rep (select perm__remove_eq__bb__assume k))))))))))))
(assert (= perm__remove_eq__bb__assume2 bb))
(assert (dynamic_invariant bb true false true true))
(assert (forall ((j Int)) (=> (and (<= (to_rep1 (first (rt a))) j) (<= j (to_rep1 (last (rt a))))) (= (to_rep (select (elts a) j)) (to_rep (select (elts b) j))))))
(assert (forall ((j Int)) (=> (and (<= (to_rep1 (first (rt aa))) j) (<= j (to_rep1 (last (rt aa))))) (ite (< j i) (and (= (to_rep (select (elts aa) j)) (to_rep (select (elts a) j))) (= (to_rep (select (elts aa) j)) (to_rep (select (elts b) j)))) (and (= (to_rep (select (elts aa) j)) (to_rep (select (elts a) (+ j 1)))) (= (to_rep (select (elts aa) j)) (to_rep (select (elts b) (+ j 1)))))))))
(assert (= perm__remove_eq__result1 perm__remove_eq__result2))
(assert (= perm__remove_eq__result3 perm__remove_eq__result1))
(assert (= (mk_int__ref result) (mk_int__ref perm__remove_eq__result)))
(assert (= perm__remove_eq__result1 1))
(assert (= (mk_int__ref perm__remove_eq__result4) (mk_int__ref perm__remove_eq__result2)))
(assert (= perm__remove_eq__result5 perm__remove_eq__result3))
(assert (= (distinct perm__remove_eq__result4 0) true))
(assert (not (<= (to_rep1 (first (rt b))) i)))
(check-sat)
(exit)
