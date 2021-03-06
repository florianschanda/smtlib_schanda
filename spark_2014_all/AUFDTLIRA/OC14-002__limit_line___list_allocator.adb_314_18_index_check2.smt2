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
(declare-sort resource 0)
(declare-fun resourceqtint (resource) Int)
(assert (forall ((i resource)) (and (<= 0 (resourceqtint i)) (<= (resourceqtint i) 3))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (resource resource) Bool)
(declare-const dummy resource)
(declare-datatypes () ((resource__ref (mk_resource__ref (resource__content resource)))))
(define-fun resource__ref___projection ((a resource__ref)) resource (resource__content a))
(define-fun to_rep ((x resource)) Int (resourceqtint x))
(declare-fun of_rep (Int) resource)
(assert (forall ((x resource)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x resource)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort status 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (status status) Bool)
(declare-const dummy1 status)
(declare-datatypes () ((status__ref (mk_status__ref (status__content status)))))
(define-fun status__ref___projection ((a status__ref)) status (status__content a))
(declare-fun to_rep1 (status) Int)
(declare-fun of_rep1 (Int) status)
(assert (forall ((x status)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x status)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__list_allocator__cell__stat status) (rec__list_allocator__cell__prev resource) (rec__list_allocator__cell__next resource)))))
(define-fun us_split_fields_Stat__projection ((a us_split_fields)) status (rec__list_allocator__cell__stat a))
(define-fun us_split_fields_Prev__projection ((a us_split_fields)) resource (rec__list_allocator__cell__prev a))
(define-fun us_split_fields_Next__projection ((a us_split_fields)) resource (rec__list_allocator__cell__next a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___6__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___8__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (and (= (to_rep1 (rec__list_allocator__cell__stat (us_split_fields1 a))) (to_rep1 (rec__list_allocator__cell__stat (us_split_fields1 b)))) (= (to_rep (rec__list_allocator__cell__prev (us_split_fields1 a))) (to_rep (rec__list_allocator__cell__prev (us_split_fields1 b))))) (= (to_rep (rec__list_allocator__cell__next (us_split_fields1 a))) (to_rep (rec__list_allocator__cell__next (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const list_allocator__cell__stat__first__bit Int)
(declare-const list_allocator__cell__stat__last__bit Int)
(declare-const list_allocator__cell__stat__position Int)
(assert (<= 0 list_allocator__cell__stat__first__bit))
(assert (< list_allocator__cell__stat__first__bit list_allocator__cell__stat__last__bit))
(assert (<= 0 list_allocator__cell__stat__position))
(declare-const list_allocator__cell__prev__first__bit Int)
(declare-const list_allocator__cell__prev__last__bit Int)
(declare-const list_allocator__cell__prev__position Int)
(assert (<= 0 list_allocator__cell__prev__first__bit))
(assert (< list_allocator__cell__prev__first__bit list_allocator__cell__prev__last__bit))
(assert (<= 0 list_allocator__cell__prev__position))
(declare-const list_allocator__cell__next__first__bit Int)
(declare-const list_allocator__cell__next__last__bit Int)
(declare-const list_allocator__cell__next__position Int)
(assert (<= 0 list_allocator__cell__next__first__bit))
(assert (< list_allocator__cell__next__first__bit list_allocator__cell__next__last__bit))
(assert (<= 0 list_allocator__cell__next__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((cell__ref (mk_cell__ref (cell__content us_rep)))))
(define-fun cell__ref___projection ((a cell__ref)) us_rep (cell__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))
(assert (forall ((a (Array Int us_rep))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int us_rep))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int us_rep)) (a__first Int) (a__last Int) (b (Array Int us_rep)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) (select b (+ (- b__first a__first) temp___idx_155))) true)))) true false))
(assert (forall ((a (Array Int us_rep)) (b (Array Int us_rep))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) (select b (+ (- b__first a__first) temp___idx_155))) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun all_available ((Array Int us_rep)) Bool)
(declare-fun all_available__function_guard (Bool (Array Int us_rep)) Bool)
(assert true)
(assert (forall ((list_allocator__data (Array Int us_rep))) (! (= (= (all_available list_allocator__data) true) (forall ((r Int)) (=> (and (<= 1 r) (<= r 3)) (= (to_rep1 (rec__list_allocator__cell__stat (us_split_fields1 (select list_allocator__data r)))) 0)))) :pattern ((all_available list_allocator__data)))))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-sort us_rep1 0)
(declare-fun bool_eq2 (us_rep1 us_rep1) Bool)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-const dummy3 us_rep1)
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content a))
(declare-fun length (us_rep1) Int)
(declare-fun length__function_guard (Int us_rep1) Bool)
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (natural natural) Bool)
(declare-const dummy4 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range3 temp___expr_39)))
(declare-fun oeq (us_rep1 us_rep1) Bool)
(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)
(assert (forall ((a us_rep1) (b us_rep1)) (! (= (user_eq3 a b) (oeq a b)) :pattern ((user_eq3 a b)))))
(define-fun default_initial_assumption ((temp___expr_338 us_rep1) (temp___skip_top_level_339 Bool)) Bool (=> (not (= temp___skip_top_level_339 true)) (= (length temp___expr_338) 0)))
(assert (forall ((s us_rep1)) (! (dynamic_invariant (length s) true false true true) :pattern ((length s)))))
(declare-fun is_add (us_rep1 Int us_rep1) Bool)
(declare-fun is_add__function_guard (Bool us_rep1 Int us_rep1) Bool)
(declare-fun add (us_rep1 Int) us_rep1)
(declare-fun add__function_guard (us_rep1 us_rep1 Int) Bool)
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= 0 (element_typeqtint i)) (<= (element_typeqtint i) 3))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (element_type element_type) Bool)
(declare-const dummy5 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun dynamic_invariant1 ((temp___expr_330 Int) (temp___is_init_326 Bool) (temp___skip_constant_327 Bool) (temp___do_toplevel_328 Bool) (temp___do_typ_inv_329 Bool)) Bool (=> (or (= temp___is_init_326 true) (<= 0 3)) (in_range4 temp___expr_330)))
(assert (forall ((s us_rep1)) (forall ((e Int)) (! (=> (dynamic_invariant1 e true true true true) (= (is_add s e (add s e)) true)) :pattern ((add s e))))))
(declare-fun mem (us_rep1 Int) Bool)
(declare-fun mem__function_guard (Bool us_rep1 Int) Bool)
(declare-fun get (us_rep1 Int) Int)
(declare-fun get__function_guard (Int us_rep1 Int) Bool)
(define-fun dynamic_invariant2 ((temp___expr_310 Int) (temp___is_init_306 Bool) (temp___skip_constant_307 Bool) (temp___do_toplevel_308 Bool) (temp___do_typ_inv_309 Bool)) Bool (=> (or (= temp___is_init_306 true) (<= 0 3)) (in_range1 temp___expr_310)))
(assert true)
(assert (forall ((s us_rep1)) (forall ((r Int)) (! (= (= (mem s r) true) (exists ((j Int)) (and (and (<= 1 j) (<= j (length s))) (= (get s j) r)))) :pattern ((mem s r))))))
(declare-sort tresourceB 0)
(declare-fun tresourceBqtint (tresourceB) Int)
(assert (forall ((i tresourceB)) (and (<= (- 2147483648) (tresourceBqtint i)) (<= (tresourceBqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (tresourceB tresourceB) Bool)
(declare-const dummy6 tresourceB)
(declare-datatypes () ((tresourceB__ref (mk_tresourceB__ref (tresourceB__content tresourceB)))))
(define-fun tresourceB__ref___projection ((a tresourceB__ref)) tresourceB (tresourceB__content a))
(declare-sort valid_resource 0)
(declare-fun valid_resourceqtint (valid_resource) Int)
(assert (forall ((i valid_resource)) (and (<= 1 (valid_resourceqtint i)) (<= (valid_resourceqtint i) 3))))
(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq7 (valid_resource valid_resource) Bool)
(declare-const dummy7 valid_resource)
(declare-datatypes () ((valid_resource__ref (mk_valid_resource__ref (valid_resource__content valid_resource)))))
(define-fun valid_resource__ref___projection ((a valid_resource__ref)) valid_resource (valid_resource__content a))
(declare-const no_resource Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__list_allocator__m__t__available us_rep1) (rec__list_allocator__m__t__allocated us_rep1)))))
(define-fun us_split_fields_Available__projection ((a us_split_fields2)) us_rep1 (rec__list_allocator__m__t__available a))
(define-fun us_split_fields_Allocated__projection ((a us_split_fields2)) us_rep1 (rec__list_allocator__m__t__allocated a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___5__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep2 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___7__projection ((a us_rep2)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq3 ((a us_rep2) (b us_rep2)) Bool (ite (and (= (user_eq3 (rec__list_allocator__m__t__available (us_split_fields3 a)) (rec__list_allocator__m__t__available (us_split_fields3 b))) true) (= (user_eq3 (rec__list_allocator__m__t__allocated (us_split_fields3 a)) (rec__list_allocator__m__t__allocated (us_split_fields3 b))) true)) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep2) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep2) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))
(declare-const list_allocator__m__t__available__first__bit Int)
(declare-const list_allocator__m__t__available__last__bit Int)
(declare-const list_allocator__m__t__available__position Int)
(assert (<= 0 list_allocator__m__t__available__first__bit))
(assert (< list_allocator__m__t__available__first__bit list_allocator__m__t__available__last__bit))
(assert (<= 0 list_allocator__m__t__available__position))
(declare-const list_allocator__m__t__allocated__first__bit Int)
(declare-const list_allocator__m__t__allocated__last__bit Int)
(declare-const list_allocator__m__t__allocated__position Int)
(assert (<= 0 list_allocator__m__t__allocated__first__bit))
(assert (< list_allocator__m__t__allocated__first__bit list_allocator__m__t__allocated__last__bit))
(assert (<= 0 list_allocator__m__t__allocated__position))
(declare-fun user_eq8 (us_rep2 us_rep2) Bool)
(declare-const dummy8 us_rep2)
(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep2)))))
(define-fun t__ref___projection ((a t__ref)) us_rep2 (t__content a))
(declare-fun oeq1 (us_rep2 us_rep2) Bool)
(declare-fun oeq__function_guard1 (Bool us_rep2 us_rep2) Bool)
(assert (forall ((a us_rep2) (b us_rep2)) (! (= (user_eq8 a b) (oeq1 a b)) :pattern ((user_eq8 a b)))))
(define-fun default_initial_assumption1 ((temp___expr_346 us_rep2) (temp___skip_top_level_347 Bool)) Bool (and (= (length (rec__list_allocator__m__t__available (us_split_fields3 temp___expr_346))) 0) (= (length (rec__list_allocator__m__t__allocated (us_split_fields3 temp___expr_346))) 0)))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-fun list_allocator__data__aggregate_def (us_rep) (Array Int us_rep))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq9 (positive positive) Bool)
(declare-const dummy9 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant3 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range7 temp___expr_46)))
(define-fun dynamic_invariant4 ((temp___expr_362 Int) (temp___is_init_358 Bool) (temp___skip_constant_359 Bool) (temp___do_toplevel_360 Bool) (temp___do_typ_inv_361 Bool)) Bool (=> (or (= temp___is_init_358 true) (<= 0 1)) (in_range2 temp___expr_362)))
(assert (forall ((temp___402 us_rep)) (forall ((temp___403 Int)) (= (select (list_allocator__data__aggregate_def temp___402) temp___403) temp___402))))
(define-fun dynamic_invariant5 ((temp___expr_317 Int) (temp___is_init_313 Bool) (temp___skip_constant_314 Bool) (temp___do_toplevel_315 Bool) (temp___do_typ_inv_316 Bool)) Bool (=> (or (= temp___is_init_313 true) (<= 1 3)) (in_range6 temp___expr_317)))
(assert (= no_resource 0))
(assert true)
(assert (forall ((x us_rep2) (y us_rep2)) (! (= (= (oeq1 x y) true) (and (= (oeq (rec__list_allocator__m__t__available (us_split_fields3 x)) (rec__list_allocator__m__t__available (us_split_fields3 y))) true) (= (oeq (rec__list_allocator__m__t__allocated (us_split_fields3 x)) (rec__list_allocator__m__t__allocated (us_split_fields3 y))) true))) :pattern ((oeq1 x y)))))
(assert (forall ((s us_rep1)) (forall ((n Int)) (! (=> (and (dynamic_invariant3 n true true true true) (and (<= 1 n) (<= n (length s)))) (dynamic_invariant1 (get s n) true false true true)) :pattern ((get s n))))))
(assert (forall ((s1 us_rep1) (s2 us_rep1)) (! (= (= (oeq s1 s2) true) (and (= (length s1) (length s2)) (forall ((n Int)) (=> (and (<= 1 n) (<= n (length s1))) (= (get s1 n) (get s2 n)))))) :pattern ((oeq s1 s2)))))
(assert (forall ((s us_rep1) (result__ us_rep1)) (forall ((e Int)) (! (=> (dynamic_invariant1 e true true true true) (= (= (is_add s e result__) true) (and (and (= (length result__) (+ (length s) 1)) (= (get result__ (length result__)) e)) (forall ((m Int)) (=> (and (<= 1 m) (<= m (length s))) (= (get result__ m) (get s m))))))) :pattern ((is_add s e result__))))))
(declare-const rliteral resource)
(assert (= (resourceqtint rliteral) 0))
(declare-const data (Array Int us_rep))
(declare-const first_available Int)
(declare-const first_allocated Int)
(declare-const r Int)
(declare-const o status)
(declare-const o1 status)
(declare-const o2 resource)
(declare-const o3 resource)
(declare-const o4 status)
(declare-const o5 resource)
(declare-const o6 resource)
(declare-const o7 (Array Int us_rep))
(declare-const o8 resource)
(declare-const o9 status)
(declare-const o10 resource)
(declare-const o11 resource)
(declare-const o12 status)
(declare-const o13 resource)
(declare-const o14 resource)
(declare-const o15 (Array Int us_rep))
(declare-const o16 Int)
(declare-const o17 resource)
(declare-const o18 status)
(declare-const o19 resource)
(declare-const o20 resource)
(declare-const o21 status)
(declare-const o22 resource)
(declare-const o23 resource)
(declare-const o24 (Array Int us_rep))
(declare-const rr Int)
(declare-const o25 Int)
(declare-const result map__ref)
(declare-const data1 (Array Int us_rep))
(declare-const result1 int__ref)
(declare-const first_available1 Int)
(declare-const result2 int__ref)
(declare-const first_allocated1 Int)
(declare-const result3 int__ref)
(declare-const r1 Int)
(declare-const result4 map__ref)
(declare-const data2 (Array Int us_rep))
(declare-const result5 map__ref)
(declare-const data3 (Array Int us_rep))
(declare-const data4 (Array Int us_rep))
(declare-const r2 Int)
(assert (in_range1 no_resource))
(assert (= (to_rep1 o) 0))
(assert (= o o1))
(assert (= rliteral o2))
(assert (= rliteral o3))
(assert (= o4 o1))
(assert (= o5 o2))
(assert (= o6 o3))
(assert (= o7 (list_allocator__data__aggregate_def (mk___rep (mk___split_fields o4 o5 o6)))))
(assert (= result (mk_map__ref data)))
(assert (= data1 o7))
(assert (= result1 (mk_int__ref first_available)))
(assert (= first_available1 1))
(assert (in_range1 first_available1))
(assert (= result2 (mk_int__ref first_allocated)))
(assert (= first_allocated1 0))
(assert (in_range1 first_allocated1))
(assert (= result3 (mk_int__ref r)))
(assert (= r1 1))
(assert (<= 1 r1))
(assert (<= r1 3))
(assert (=> (< 1 r1) (= (to_rep o8) (- r1 1))))
(assert (=> (< 1 r1) (= (rec__list_allocator__cell__stat (us_split_fields1 (select data1 r1))) o9)))
(assert (=> (< 1 r1) (= o8 o10)))
(assert (=> (< 1 r1) (= (rec__list_allocator__cell__next (us_split_fields1 (select data1 r1))) o11)))
(assert (=> (< 1 r1) (= o12 o9)))
(assert (=> (< 1 r1) (= o13 o10)))
(assert (=> (< 1 r1) (= o14 o11)))
(assert (=> (< 1 r1) (= o15 (store data1 r1 (mk___rep (mk___split_fields o12 o13 o14))))))
(assert (=> (< 1 r1) (= result4 (mk_map__ref data1))))
(assert (=> (< 1 r1) (= data2 o15)))
(assert (=> (not (< 1 r1)) (= data2 data1)))
(assert (=> (< r1 3) (and (= o16 (+ r1 1)) (in_range1 (+ r1 1)))))
(assert (=> (< r1 3) (= (to_rep o17) o16)))
(assert (=> (< r1 3) (= (rec__list_allocator__cell__stat (us_split_fields1 (select data2 r1))) o18)))
(assert (=> (< r1 3) (= (rec__list_allocator__cell__prev (us_split_fields1 (select data2 r1))) o19)))
(assert (=> (< r1 3) (= o17 o20)))
(assert (=> (< r1 3) (= o21 o18)))
(assert (=> (< r1 3) (= o22 o19)))
(assert (=> (< r1 3) (= o23 o20)))
(assert (=> (< r1 3) (= o24 (store data2 r1 (mk___rep (mk___split_fields o21 o22 o23))))))
(assert (=> (< r1 3) (= result5 (mk_map__ref data2))))
(assert (=> (< r1 3) (= data3 o24)))
(assert (=> (not (< r1 3)) (= data3 data2)))
(assert (forall ((rr1 Int)) (=> (and (<= 1 rr1) (<= rr1 r2)) (= (to_rep (rec__list_allocator__cell__prev (us_split_fields1 (select data4 rr1)))) (ite (= rr1 1) 0 (- rr1 1))))))
(assert (forall ((rr1 Int)) (=> (and (<= 1 rr1) (<= rr1 r2)) (= (to_rep (rec__list_allocator__cell__next (us_split_fields1 (select data4 rr1)))) (ite (= rr1 3) 0 (+ rr1 1))))))
(assert (forall ((rr1 Int)) (=> (and (<= 1 rr1) (<= rr1 3)) (= (to_rep1 (rec__list_allocator__cell__stat (us_split_fields1 (select data4 rr1)))) 0))))
(assert (and (and (forall ((temp___393 Int)) (=> (and (<= 1 temp___393) (<= temp___393 3)) (ite (or (< 3 temp___393) (or (< temp___393 1) (< r2 temp___393))) (= (select data4 temp___393) (select data1 temp___393)) (= (rec__list_allocator__cell__stat (us_split_fields1 (select data4 temp___393))) (rec__list_allocator__cell__stat (us_split_fields1 (select data1 temp___393))))))) (=> (<= 1 3) (in_range6 r2))) (and (<= 1 r2) (<= r2 3))))
(assert (<= 1 rr))
(assert (<= rr r2))
(assert (=> (= rr 1) (= o25 0)))
(assert (=> (not (= rr 1)) (= o25 (- rr 1))))
(assert (not (<= 1 rr)))
(check-sat)
(exit)
