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
(declare-sort index_type 0)
(declare-fun index_typeqtint (index_type) Int)
(assert (forall ((i index_type)) (and (<= 0 (index_typeqtint i)) (<= (index_typeqtint i) 128))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 128)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (index_type index_type) Bool)
(declare-const dummy index_type)
(declare-datatypes () ((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type (index_type__content a))
(define-fun to_rep ((x index_type)) Int (index_typeqtint x))
(declare-fun of_rep (Int) index_type)
(assert (forall ((x index_type)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x index_type)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__list_handler__integer_list__iterator__pointer index_type)))))
(define-fun us_split_fields_Pointer__projection ((a us_split_fields)) index_type (rec__list_handler__integer_list__iterator__pointer a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (= (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 a))) (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 b)))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const list_handler__integer_list__iterator__pointer__first__bit Int)
(declare-const list_handler__integer_list__iterator__pointer__last__bit Int)
(declare-const list_handler__integer_list__iterator__pointer__position Int)
(assert (<= 0 list_handler__integer_list__iterator__pointer__first__bit))
(assert (< list_handler__integer_list__iterator__pointer__first__bit list_handler__integer_list__iterator__pointer__last__bit))
(assert (<= 0 list_handler__integer_list__iterator__pointer__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((iterator__ref (mk_iterator__ref (iterator__content us_rep)))))
(define-fun iterator__ref___projection ((a iterator__ref)) us_rep (iterator__content a))
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= (- 2147483648) (element_typeqtint i)) (<= (element_typeqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq2 (element_type element_type) Bool)
(declare-const dummy2 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun to_rep1 ((x element_type)) Int (element_typeqtint x))
(declare-fun of_rep1 (Int) element_type)
(assert (forall ((x element_type)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x element_type)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__list_handler__integer_list__list_node__value element_type) (rec__list_handler__integer_list__list_node__next index_type) (rec__list_handler__integer_list__list_node__previous index_type)))))
(define-fun us_split_fields_Value__projection ((a us_split_fields2)) element_type (rec__list_handler__integer_list__list_node__value a))
(define-fun us_split_fields_Next__projection ((a us_split_fields2)) index_type (rec__list_handler__integer_list__list_node__next a))
(define-fun us_split_fields_Previous__projection ((a us_split_fields2)) index_type (rec__list_handler__integer_list__list_node__previous a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (and (and (= (to_rep1 (rec__list_handler__integer_list__list_node__value (us_split_fields3 a))) (to_rep1 (rec__list_handler__integer_list__list_node__value (us_split_fields3 b)))) (= (to_rep (rec__list_handler__integer_list__list_node__next (us_split_fields3 a))) (to_rep (rec__list_handler__integer_list__list_node__next (us_split_fields3 b))))) (= (to_rep (rec__list_handler__integer_list__list_node__previous (us_split_fields3 a))) (to_rep (rec__list_handler__integer_list__list_node__previous (us_split_fields3 b))))) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const list_handler__integer_list__list_node__value__first__bit Int)
(declare-const list_handler__integer_list__list_node__value__last__bit Int)
(declare-const list_handler__integer_list__list_node__value__position Int)
(assert (<= 0 list_handler__integer_list__list_node__value__first__bit))
(assert (< list_handler__integer_list__list_node__value__first__bit list_handler__integer_list__list_node__value__last__bit))
(assert (<= 0 list_handler__integer_list__list_node__value__position))
(declare-const list_handler__integer_list__list_node__next__first__bit Int)
(declare-const list_handler__integer_list__list_node__next__last__bit Int)
(declare-const list_handler__integer_list__list_node__next__position Int)
(assert (<= 0 list_handler__integer_list__list_node__next__first__bit))
(assert (< list_handler__integer_list__list_node__next__first__bit list_handler__integer_list__list_node__next__last__bit))
(assert (<= 0 list_handler__integer_list__list_node__next__position))
(declare-const list_handler__integer_list__list_node__previous__first__bit Int)
(declare-const list_handler__integer_list__list_node__previous__last__bit Int)
(declare-const list_handler__integer_list__list_node__previous__position Int)
(assert (<= 0 list_handler__integer_list__list_node__previous__first__bit))
(assert (< list_handler__integer_list__list_node__previous__first__bit list_handler__integer_list__list_node__previous__last__bit))
(assert (<= 0 list_handler__integer_list__list_node__previous__position))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-const dummy3 us_rep1)
(declare-datatypes () ((list_node__ref (mk_list_node__ref (list_node__content us_rep1)))))
(define-fun list_node__ref___projection ((a list_node__ref)) us_rep1 (list_node__content a))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int us_rep1))))))
(declare-fun slide ((Array Int us_rep1) Int Int) (Array Int us_rep1))
(assert (forall ((a (Array Int us_rep1))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int us_rep1))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int us_rep1)) (a__first Int) (a__last Int) (b (Array Int us_rep1)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (bool_eq1 (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))) true)))) true false))
(assert (forall ((a (Array Int us_rep1)) (b (Array Int us_rep1))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (bool_eq1 (select a temp___idx_154) (select b (+ (- b__first a__first) temp___idx_154))) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int index_type))))))
(declare-fun slide1 ((Array Int index_type) Int Int) (Array Int index_type))
(assert (forall ((a (Array Int index_type))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int index_type))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq3 ((a (Array Int index_type)) (a__first Int) (a__last Int) (b (Array Int index_type)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155))))))) true false))
(assert (forall ((a (Array Int index_type)) (b (Array Int index_type))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq3 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant ((temp___expr_164 Int) (temp___is_init_160 Bool) (temp___skip_constant_161 Bool) (temp___do_toplevel_162 Bool) (temp___do_typ_inv_163 Bool)) Bool (=> (or (= temp___is_init_160 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_164)))
(declare-sort status_type 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq4 (status_type status_type) Bool)
(declare-const dummy4 status_type)
(declare-datatypes () ((status_type__ref (mk_status_type__ref (status_type__content status_type)))))
(define-fun status_type__ref___projection ((a status_type__ref)) status_type (status_type__content a))
(define-fun dynamic_invariant1 ((temp___expr_171 Int) (temp___is_init_167 Bool) (temp___skip_constant_168 Bool) (temp___do_toplevel_169 Bool) (temp___do_typ_inv_170 Bool)) Bool (=> (or (= temp___is_init_167 true) (<= 0 3)) (in_range2 temp___expr_171)))
(define-fun dynamic_invariant2 ((temp___expr_178 Int) (temp___is_init_174 Bool) (temp___skip_constant_175 Bool) (temp___do_toplevel_176 Bool) (temp___do_typ_inv_177 Bool)) Bool (=> (or (= temp___is_init_174 true) (<= 0 128)) (in_range temp___expr_178)))
(declare-const it us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const item Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const status Int)
(declare-const memory (Array Int us_rep1))
(declare-const count Int)
(declare-const free_list (Array Int index_type))
(declare-const free Int)
(declare-const new_pointer Int)
(declare-const o element_type)
(declare-const o1 element_type)
(declare-const o2 index_type)
(declare-const o3 index_type)
(declare-const o4 element_type)
(declare-const o5 index_type)
(declare-const o6 index_type)
(declare-const o7 (Array Int us_rep1))
(declare-const o8 index_type)
(declare-const o9 element_type)
(declare-const o10 index_type)
(declare-const o11 index_type)
(declare-const o12 element_type)
(declare-const o13 index_type)
(declare-const o14 index_type)
(declare-const o15 (Array Int us_rep1))
(declare-const o16 index_type)
(declare-const o17 element_type)
(declare-const o18 index_type)
(declare-const o19 index_type)
(declare-const o20 element_type)
(declare-const o21 index_type)
(declare-const o22 index_type)
(declare-const o23 (Array Int us_rep1))
(declare-const result Int)
(declare-const status1 Int)
(declare-const result1 Int)
(declare-const new_pointer1 Int)
(declare-const result2 Int)
(declare-const free1 Int)
(declare-const result3 (Array Int us_rep1))
(declare-const memory1 (Array Int us_rep1))
(declare-const result4 (Array Int us_rep1))
(declare-const memory2 (Array Int us_rep1))
(declare-const result5 (Array Int us_rep1))
(declare-const memory3 (Array Int us_rep1))
(assert (in_range1 item))
(assert (=> (<= 0 3) (in_range2 status)))
(assert (in_range count))
(assert (in_range free))
(assert (=> (<= 0 128) (in_range new_pointer)))
(assert (not (= count 128)))
(assert (= result status))
(assert (= status1 0))
(assert (= result1 new_pointer))
(assert (= new_pointer1 free))
(assert (= result2 free))
(assert (= free1 (to_rep (select free_list free))))
(assert (= (to_rep1 o) item))
(assert (= o o1))
(assert (= (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 it)) o2))
(assert (= (rec__list_handler__integer_list__list_node__previous (us_split_fields3 (select memory (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 it)))))) o3))
(assert (= o4 o1))
(assert (= o5 o2))
(assert (= o6 o3))
(assert (= o7 (store memory new_pointer1 (mk___rep1 (mk___split_fields1 o4 o5 o6)))))
(assert (= result3 memory))
(assert (= memory1 o7))
(assert (= (to_rep o8) new_pointer1))
(assert (= (rec__list_handler__integer_list__list_node__value (us_split_fields3 (select memory1 (to_rep (rec__list_handler__integer_list__list_node__previous (us_split_fields3 (select memory1 (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 it)))))))))) o9))
(assert (= o8 o10))
(assert (= (rec__list_handler__integer_list__list_node__previous (us_split_fields3 (select memory1 (to_rep (rec__list_handler__integer_list__list_node__previous (us_split_fields3 (select memory1 (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 it)))))))))) o11))
(assert (= o12 o9))
(assert (= o13 o10))
(assert (= o14 o11))
(assert (= o15 (store memory1 (to_rep (rec__list_handler__integer_list__list_node__previous (us_split_fields3 (select memory1 (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 it))))))) (mk___rep1 (mk___split_fields1 o12 o13 o14)))))
(assert (= result4 memory1))
(assert (= memory2 o15))
(assert (= (to_rep o16) new_pointer1))
(assert (= (rec__list_handler__integer_list__list_node__value (us_split_fields3 (select memory2 (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 it)))))) o17))
(assert (= (rec__list_handler__integer_list__list_node__next (us_split_fields3 (select memory2 (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 it)))))) o18))
(assert (= o16 o19))
(assert (= o20 o17))
(assert (= o21 o18))
(assert (= o22 o19))
(assert (= o23 (store memory2 (to_rep (rec__list_handler__integer_list__iterator__pointer (us_split_fields1 it))) (mk___rep1 (mk___split_fields1 o20 o21 o22)))))
(assert (= result5 memory2))
(assert (= memory3 o23))
(assert (not (in_range (+ count 1))))
(check-sat)
(exit)
