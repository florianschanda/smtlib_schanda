(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTLIRA)
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
(declare-sort tcount_typeB 0)
(declare-fun tcount_typeBqtint (tcount_typeB) Int)
(assert (forall ((i tcount_typeB)) (and (<= (- 2147483648) (tcount_typeBqtint i)) (<= (tcount_typeBqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (tcount_typeB tcount_typeB) Bool)
(declare-const dummy tcount_typeB)
(declare-datatypes () ((tcount_typeB__ref (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB (tcount_typeB__content a))
(define-fun to_rep ((x tcount_typeB)) Int (tcount_typeBqtint x))
(declare-fun of_rep (Int) tcount_typeB)
(assert (forall ((x tcount_typeB)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x tcount_typeB)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-const last Int)
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (tcount_typeB tcount_typeB) Bool)
(declare-const dummy1 tcount_typeB)
(declare-datatypes () ((capacity_range__ref (mk_capacity_range__ref (capacity_range__content tcount_typeB)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) tcount_typeB (capacity_range__content a))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__use_vectors__my_vectors__vector__capacity tcount_typeB)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) tcount_typeB (rec__use_vectors__my_vectors__vector__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__use_vectors__my_vectors__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type (rec__use_vectors__my_vectors__vector a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const use_vectors__my_vectors__vector__capacity__first__bit Int)
(declare-const use_vectors__my_vectors__vector__capacity__last__bit Int)
(declare-const use_vectors__my_vectors__vector__capacity__position Int)
(assert (<= 0 use_vectors__my_vectors__vector__capacity__first__bit))
(assert (< use_vectors__my_vectors__vector__capacity__first__bit use_vectors__my_vectors__vector__capacity__last__bit))
(assert (<= 0 use_vectors__my_vectors__vector__capacity__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content a))
(define-fun capacity ((container us_rep)) Int (ite (= (distinct 0 0) true) (to_rep (rec__use_vectors__my_vectors__vector__capacity (us_split_discrs1 container))) last))
(declare-fun capacity__function_guard (Int us_rep) Bool)
(declare-const last_count Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant ((temp___expr_263 Int) (temp___is_init_259 Bool) (temp___skip_constant_260 Bool) (temp___do_toplevel_261 Bool) (temp___do_typ_inv_262 Bool)) Bool (=> (or (= temp___is_init_259 true) (<= 0 last)) (dynamic_property 0 last temp___expr_263)))
(assert (= last last_count))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(define-fun dynamic_invariant1 ((temp___expr_270 us_rep) (temp___is_init_266 Bool) (temp___skip_constant_267 Bool) (temp___do_toplevel_268 Bool) (temp___do_typ_inv_269 Bool)) Bool (dynamic_property 0 last (to_rep (rec__use_vectors__my_vectors__vector__capacity (us_split_discrs1 temp___expr_270)))))
(assert (forall ((container us_rep)) (! (=> (dynamic_invariant1 container true true true true) (let ((result (length container))) (and (<= result (capacity container)) (dynamic_invariant result true false true true)))) :pattern ((length container)))))
(declare-const container__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const new_item us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (integer integer) Bool)
(declare-const dummy3 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun dynamic_invariant2 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_18)))
(declare-fun id (Int Int Int) Int)
(declare-fun id__function_guard (Int Int Int Int) Bool)
(assert (forall ((x Int) (f Int) (l Int)) (! (=> (and (and (dynamic_invariant2 x true true true true) (dynamic_invariant2 f true true true true)) (dynamic_invariant2 l true true true true)) (let ((result (id x f l))) (and (=> (and (<= f x) (<= x l)) (and (<= f result) (<= result l))) (dynamic_invariant2 result true false true true)))) :pattern ((id x f l)))))
(declare-const fst Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(assert (= fst (id 1 (- 2147483647) 2147483647)))
(declare-const lst Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(assert (= lst (id 2147483647 fst 2147483647)))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-const first Int)
(declare-const last1 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (integer integer) Bool)
(declare-const dummy4 integer)
(declare-datatypes () ((index_type__ref (mk_index_type__ref (index_type__content integer)))))
(define-fun index_type__ref___2__projection ((a index_type__ref)) integer (index_type__content a))
(assert (= last_count (ite (< last1 first) 0 (ite (or (< last1 (- 1)) (< (- last1 2147483647) first)) (+ (- last1 first) 1) 2147483647))))
(define-fun dynamic_invariant3 ((temp___expr_242 Int) (temp___is_init_238 Bool) (temp___skip_constant_239 Bool) (temp___do_toplevel_240 Bool) (temp___do_typ_inv_241 Bool)) Bool (=> (or (= temp___is_init_238 true) (<= first last1)) (dynamic_property1 first last1 temp___expr_242)))
(assert (= first fst))
(assert (= last1 lst))
(declare-const container__split_fields us_main_type)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(assert (dynamic_property 0 last (to_rep (rec__use_vectors__my_vectors__vector__capacity container__split_discrs))))
(assert (dynamic_property 0 last (to_rep (rec__use_vectors__my_vectors__vector__capacity (us_split_discrs1 new_item)))))
(assert (and (= o (length new_item)) (and (dynamic_property 0 last o) (<= o (capacity new_item)))))
(assert (and (= o1 (capacity (mk___rep container__split_discrs (mk___split_fields container__split_fields)))) (and (dynamic_property 0 last o1) (= o1 (ite (= (distinct 0 0) true) (to_rep (rec__use_vectors__my_vectors__vector__capacity container__split_discrs)) last)))))
(assert (= o2 (- o1 o)))
(assert (not (in_range1 o2)))
(check-sat)
(exit)
