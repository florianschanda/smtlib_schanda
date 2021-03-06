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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
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
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
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
(assert (forall ((f Int) (l Int)) (! (=> (in_range2 f) (=> (in_range2 l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range2 low) (and (in_range2 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
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
(declare-fun is_perm (us_t us_t) Bool)
(declare-fun is_perm__function_guard (Bool us_t us_t) Bool)
(assert (forall ((a us_t) (b us_t)) (! (= (= (is_perm a b) true) (or (and (= (length a) 0) (= (length b) 0)) (exists ((ia Int)) (and (and (<= (first1 a) ia) (<= ia (last1 a))) (exists ((ib Int)) (and (and (<= (first1 b) ib) (<= ib (last1 b))) (and (= (to_rep (select (to_array a) ia)) (to_rep (select (to_array b) ib))) (= (is_perm (remove a ia) (remove b ib)) true)))))))) :pattern ((is_perm a b)))))
(declare-const a us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const b us_t)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const ia Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (integer integer) Bool)
(declare-const dummy4 integer)
(declare-datatypes () ((t18b__ref (mk_t18b__ref (t18b__content integer)))))
(define-fun t18b__ref___projection ((a1 t18b__ref)) integer (t18b__content a1))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range1 temp___expr_39)))
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_18)))
(declare-const ib Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 natural)
(declare-const o3 Int)
(declare-const result Int)
(declare-const ib1 Int)
(declare-const result1 Bool)
(assert (dynamic_invariant a true false true true))
(assert (dynamic_invariant b true false true true))
(assert (in_range3 ia))
(assert (and (= (invariant__ a) true) (and (= (invariant__ b) true) (and (and (<= (to_rep1 (first (rt a))) ia) (<= ia (to_rep1 (last (rt a))))) (exists ((ib2 Int)) (and (and (<= (to_rep1 (first (rt b))) ib2) (<= ib2 (to_rep1 (last (rt b))))) (and (= (to_rep (select (elts a) ia)) (to_rep (select (elts b) ib2))) (= (is_perm (remove a ia) (remove b ib2)) true))))))))
(assert (= (mk_int__ref result) (mk_int__ref ib)))
(assert (= ib1 (to_rep1 (first (rt b)))))
(assert (<= (to_rep1 (first (rt b))) ib1))
(assert (<= ib1 (to_rep1 (last (rt b)))))
(assert (and (<= (to_rep1 (first (rt a))) ia) (<= ia (to_rep1 (last (rt a))))))
(assert (= o1 ia))
(assert (= o2 (select (elts a) o1)))
(assert (= o3 (to_rep o2)))
(assert (= result1 (ite (= o3 (to_rep (select (elts b) ib1))) true false)))
(assert (= result1 true))
(assert (and (= o ib1) (in_range3 ib1)))
(assert (not (= (invariant__ b) true)))
(check-sat)
(exit)
