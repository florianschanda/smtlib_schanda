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
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-sort us_rep 0)
(declare-fun bool_eq (us_rep us_rep) Bool)
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-fun user_eq (us_rep us_rep) Bool)
(declare-const dummy us_rep)
(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep)))))
(define-fun set__ref___projection ((a set__ref)) us_rep (set__content a))
(declare-fun contains (us_rep Int) Bool)
(declare-fun contains__function_guard (Bool us_rep Int) Bool)
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= 0 (element_typeqtint i)) (<= (element_typeqtint i) 10000))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 10000)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (element_type element_type) Bool)
(declare-const dummy1 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun dynamic_invariant ((temp___expr_193 Int) (temp___is_init_189 Bool) (temp___skip_constant_190 Bool) (temp___do_toplevel_191 Bool) (temp___do_typ_inv_192 Bool)) Bool (=> (or (= temp___is_init_189 true) (<= 0 10000)) (in_range1 temp___expr_193)))
(declare-fun is_empty (us_rep) Bool)
(declare-fun is_empty__function_guard (Bool us_rep) Bool)
(define-fun default_initial_assumption ((temp___expr_201 us_rep) (temp___skip_top_level_202 Bool)) Bool (=> (not (= temp___skip_top_level_202 true)) (= (is_empty temp___expr_201) true)))
(assert (forall ((container us_rep)) (forall ((item Int)) (! (=> (dynamic_invariant item true true true true) (=> (= (distinct 1 0) true) (=> (exists ((e Int)) (and (and (in_range1 e) (= (contains container e) true)) (= e item))) (= (contains container item) true)))) :pattern ((contains container item))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__simple_allocator__m__t__available us_rep) (rec__simple_allocator__m__t__allocated us_rep)))))
(define-fun us_split_fields_Available__projection ((a us_split_fields)) us_rep (rec__simple_allocator__m__t__available a))
(define-fun us_split_fields_Allocated__projection ((a us_split_fields)) us_rep (rec__simple_allocator__m__t__allocated a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep1 (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep1)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (bool_eq (rec__simple_allocator__m__t__available (us_split_fields1 a)) (rec__simple_allocator__m__t__available (us_split_fields1 b))) true) (= (bool_eq (rec__simple_allocator__m__t__allocated (us_split_fields1 a)) (rec__simple_allocator__m__t__allocated (us_split_fields1 b))) true)) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const simple_allocator__m__t__available__first__bit Int)
(declare-const simple_allocator__m__t__available__last__bit Int)
(declare-const simple_allocator__m__t__available__position Int)
(assert (<= 0 simple_allocator__m__t__available__first__bit))
(assert (< simple_allocator__m__t__available__first__bit simple_allocator__m__t__available__last__bit))
(assert (<= 0 simple_allocator__m__t__available__position))
(declare-const simple_allocator__m__t__allocated__first__bit Int)
(declare-const simple_allocator__m__t__allocated__last__bit Int)
(declare-const simple_allocator__m__t__allocated__position Int)
(assert (<= 0 simple_allocator__m__t__allocated__first__bit))
(assert (< simple_allocator__m__t__allocated__first__bit simple_allocator__m__t__allocated__last__bit))
(assert (<= 0 simple_allocator__m__t__allocated__position))
(declare-fun user_eq2 (us_rep1 us_rep1) Bool)
(declare-const dummy2 us_rep1)
(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep1)))))
(define-fun t__ref___projection ((a t__ref)) us_rep1 (t__content a))
(declare-fun oeq (us_rep1 us_rep1) Bool)
(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)
(declare-fun oeq1 (us_rep us_rep) Bool)
(declare-fun oeq__function_guard1 (Bool us_rep us_rep) Bool)
(assert (forall ((a us_rep1) (b us_rep1)) (! (= (user_eq2 a b) (oeq a b)) :pattern ((user_eq2 a b)))))
(define-fun default_initial_assumption1 ((temp___expr_216 us_rep1) (temp___skip_top_level_217 Bool)) Bool (and (= (is_empty (rec__simple_allocator__m__t__available (us_split_fields1 temp___expr_216))) true) (= (is_empty (rec__simple_allocator__m__t__allocated (us_split_fields1 temp___expr_216))) true)))
(assert true)
(assert (forall ((x us_rep1) (y us_rep1)) (! (= (= (oeq x y) true) (and (= (oeq1 (rec__simple_allocator__m__t__available (us_split_fields1 x)) (rec__simple_allocator__m__t__available (us_split_fields1 y))) true) (= (oeq1 (rec__simple_allocator__m__t__allocated (us_split_fields1 x)) (rec__simple_allocator__m__t__allocated (us_split_fields1 y))) true))) :pattern ((oeq x y)))))
(declare-fun is_add (us_rep Int us_rep) Bool)
(declare-fun is_add__function_guard (Bool us_rep Int us_rep) Bool)
(declare-fun ole (us_rep us_rep) Bool)
(declare-fun ole__function_guard (Bool us_rep us_rep) Bool)
(declare-fun included_except (us_rep us_rep Int) Bool)
(declare-fun included_except__function_guard (Bool us_rep us_rep Int) Bool)
(declare-sort resource 0)
(declare-fun resourceqtint (resource) Int)
(assert (forall ((i resource)) (and (<= 0 (resourceqtint i)) (<= (resourceqtint i) 10000))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 10000)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq3 (resource resource) Bool)
(declare-const dummy3 resource)
(declare-datatypes () ((resource__ref (mk_resource__ref (resource__content resource)))))
(define-fun resource__ref___projection ((a resource__ref)) resource (resource__content a))
(define-fun dynamic_invariant1 ((temp___expr_173 Int) (temp___is_init_169 Bool) (temp___skip_constant_170 Bool) (temp___do_toplevel_171 Bool) (temp___do_typ_inv_172 Bool)) Bool (=> (or (= temp___is_init_169 true) (<= 0 10000)) (in_range2 temp___expr_173)))
(assert true)
(assert (forall ((s us_rep) (result__ us_rep)) (forall ((e Int)) (! (= (= (is_add s e result__) true) (and (and (and (not (= (contains s e) true)) (= (contains result__ e) true)) (= (included_except result__ s e) true)) (= (ole s result__) true))) :pattern ((is_add s e result__))))))
(declare-sort status 0)
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (status status) Bool)
(declare-const dummy4 status)
(declare-datatypes () ((status__ref (mk_status__ref (status__content status)))))
(define-fun status__ref___projection ((a status__ref)) status (status__content a))
(declare-fun to_rep (status) Int)
(declare-fun of_rep (Int) status)
(assert (forall ((x status)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x status)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int status))))))
(declare-fun slide ((Array Int status) Int Int) (Array Int status))
(assert (forall ((a (Array Int status))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int status))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int status)) (a__first Int) (a__last Int) (b (Array Int status)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int status)) (b (Array Int status))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun model__ ((Array Int status)) us_rep1)
(declare-fun model____function_guard (us_rep1 (Array Int status)) Bool)
(declare-fun is_valid (us_rep1 (Array Int status)) Bool)
(declare-fun is_valid__function_guard (Bool us_rep1 (Array Int status)) Bool)
(assert (forall ((simple_allocator__data (Array Int status))) (! (= (is_valid (model__ simple_allocator__data) simple_allocator__data) true) :pattern ((model__ simple_allocator__data)))))
(declare-sort valid_resource 0)
(declare-fun valid_resourceqtint (valid_resource) Int)
(assert (forall ((i valid_resource)) (and (<= 1 (valid_resourceqtint i)) (<= (valid_resourceqtint i) 10000))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 10000)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (valid_resource valid_resource) Bool)
(declare-const dummy5 valid_resource)
(declare-datatypes () ((valid_resource__ref (mk_valid_resource__ref (valid_resource__content valid_resource)))))
(define-fun valid_resource__ref___projection ((a valid_resource__ref)) valid_resource (valid_resource__content a))
(declare-const res Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant2 ((temp___expr_238 Int) (temp___is_init_234 Bool) (temp___skip_constant_235 Bool) (temp___do_toplevel_236 Bool) (temp___do_typ_inv_237 Bool)) Bool (=> (or (= temp___is_init_234 true) (<= 0 1)) (in_range3 temp___expr_238)))
(define-fun dynamic_invariant3 ((temp___expr_180 Int) (temp___is_init_176 Bool) (temp___skip_constant_177 Bool) (temp___do_toplevel_178 Bool) (temp___do_typ_inv_179 Bool)) Bool (=> (or (= temp___is_init_176 true) (<= 1 10000)) (in_range4 temp___expr_180)))
(assert true)
(assert (forall ((m us_rep1)) (forall ((simple_allocator__data (Array Int status))) (! (= (= (is_valid m simple_allocator__data) true) (and (and (forall ((e Int)) (=> (and (in_range1 e) (= (contains (rec__simple_allocator__m__t__available (us_split_fields1 m)) e) true)) (in_range4 e))) (forall ((e Int)) (=> (and (in_range1 e) (= (contains (rec__simple_allocator__m__t__allocated (us_split_fields1 m)) e) true)) (in_range4 e)))) (forall ((r Int)) (=> (and (<= 1 r) (<= r 10000)) (ite (= (to_rep (select simple_allocator__data r)) 0) (and (= (contains (rec__simple_allocator__m__t__available (us_split_fields1 m)) r) true) (not (= (contains (rec__simple_allocator__m__t__allocated (us_split_fields1 m)) r) true))) (and (not (= (contains (rec__simple_allocator__m__t__available (us_split_fields1 m)) r) true)) (= (contains (rec__simple_allocator__m__t__allocated (us_split_fields1 m)) r) true))))))) :pattern ((is_valid m simple_allocator__data))))))
(declare-sort count_type 0)
(declare-fun count_typeqtint (count_type) Int)
(assert (forall ((i count_type)) (and (<= 0 (count_typeqtint i)) (<= (count_typeqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (count_type count_type) Bool)
(declare-const dummy6 count_type)
(declare-datatypes () ((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type (count_type__content a))
(define-fun dynamic_invariant4 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 0 2147483647)) (in_range5 temp___expr_166)))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(assert (forall ((container us_rep)) (! (dynamic_invariant4 (length container) true false true true) :pattern ((length container)))))
(assert (forall ((left us_rep) (right us_rep)) (! (= (= (ole left right) true) (forall ((item Int)) (=> (and (in_range1 item) (= (contains left item) true)) (= (contains right item) true)))) :pattern ((ole left right)))))
(assert (forall ((left us_rep) (right us_rep)) (! (= (= (oeq1 left right) true) (and (= (ole left right) true) (= (ole right left) true))) :pattern ((oeq1 left right)))))
(assert (forall ((container us_rep)) (! (let ((result (is_empty container))) (and (= (= result true) (forall ((item Int)) (not (and (in_range1 item) (= (contains container item) true))))) (= (= result true) (= (length container) 0)))) :pattern ((is_empty container)))))
(assert (forall ((left us_rep) (right us_rep)) (forall ((item Int)) (! (=> (dynamic_invariant item true true true true) (= (= (included_except left right item) true) (forall ((e Int)) (=> (and (in_range1 e) (= (contains left e) true)) (or (= (contains right e) true) (= e item)))))) :pattern ((included_except left right item))))))
(assert (in_range2 res))
(assert (not (= res 0)))
(assert (not (<= 1 res)))
(check-sat)
(exit)
