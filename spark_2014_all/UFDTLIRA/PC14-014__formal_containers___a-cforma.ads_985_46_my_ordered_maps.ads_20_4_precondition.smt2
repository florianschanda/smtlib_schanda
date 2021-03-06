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
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__my_ordered_maps__my_rec__f integer) (rec__my_ordered_maps__my_rec__g integer)))))
(define-fun us_split_fields_F__projection ((a us_split_fields)) integer (rec__my_ordered_maps__my_rec__f a))
(define-fun us_split_fields_G__projection ((a us_split_fields)) integer (rec__my_ordered_maps__my_rec__g a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___7__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___10__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__my_ordered_maps__my_rec__f (us_split_fields1 a))) (to_rep (rec__my_ordered_maps__my_rec__f (us_split_fields1 b)))) (= (to_rep (rec__my_ordered_maps__my_rec__g (us_split_fields1 a))) (to_rep (rec__my_ordered_maps__my_rec__g (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const my_ordered_maps__my_rec__f__first__bit Int)
(declare-const my_ordered_maps__my_rec__f__last__bit Int)
(declare-const my_ordered_maps__my_rec__f__position Int)
(assert (<= 0 my_ordered_maps__my_rec__f__first__bit))
(assert (< my_ordered_maps__my_rec__f__first__bit my_ordered_maps__my_rec__f__last__bit))
(assert (<= 0 my_ordered_maps__my_rec__f__position))
(declare-const my_ordered_maps__my_rec__g__first__bit Int)
(declare-const my_ordered_maps__my_rec__g__last__bit Int)
(declare-const my_ordered_maps__my_rec__g__position Int)
(assert (<= 0 my_ordered_maps__my_rec__g__first__bit))
(assert (< my_ordered_maps__my_rec__g__first__bit my_ordered_maps__my_rec__g__last__bit))
(assert (<= 0 my_ordered_maps__my_rec__g__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep (my_rec__content a))
(define-fun my_lt ((x us_rep) (y us_rep)) Bool (< (to_rep (rec__my_ordered_maps__my_rec__f (us_split_fields1 x))) (to_rep (rec__my_ordered_maps__my_rec__f (us_split_fields1 y)))))
(declare-fun my_lt__function_guard (Bool us_rep us_rep) Bool)
(declare-sort count_type 0)
(declare-fun count_typeqtint (count_type) Int)
(assert (forall ((i count_type)) (and (<= 0 (count_typeqtint i)) (<= (count_typeqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (count_type count_type) Bool)
(declare-const dummy2 count_type)
(declare-datatypes () ((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type (count_type__content a))
(define-fun to_rep1 ((x count_type)) Int (count_typeqtint x))
(declare-fun of_rep1 (Int) count_type)
(assert (forall ((x count_type)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x count_type)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__my_ordered_maps__n__map__capacity count_type)))))
(define-fun us_split_discrs___2__projection ((a us_split_discrs)) count_type (rec__my_ordered_maps__n__map__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___2__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__my_ordered_maps__n__map us_main_type)))))
(define-fun us_split_fields_Map__2__projection ((a us_split_fields2)) us_main_type (rec__my_ordered_maps__n__map a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___8__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs1 us_split_discrs) (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___11__projection ((a us_rep1)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___12__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (to_rep1 (rec__my_ordered_maps__n__map__capacity (us_split_discrs1 a))) (to_rep1 (rec__my_ordered_maps__n__map__capacity (us_split_discrs1 b)))) (= (us_main_eq (rec__my_ordered_maps__n__map (us_split_fields3 a)) (rec__my_ordered_maps__n__map (us_split_fields3 b))) true)) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const my_ordered_maps__n__map__capacity__first__bit Int)
(declare-const my_ordered_maps__n__map__capacity__last__bit Int)
(declare-const my_ordered_maps__n__map__capacity__position Int)
(assert (<= 0 my_ordered_maps__n__map__capacity__first__bit))
(assert (< my_ordered_maps__n__map__capacity__first__bit my_ordered_maps__n__map__capacity__last__bit))
(assert (<= 0 my_ordered_maps__n__map__capacity__position))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-const dummy3 us_rep1)
(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep1)))))
(define-fun map__ref___4__projection ((a map__ref)) us_rep1 (map__content a))
(declare-fun length (us_rep1) Int)
(declare-fun length__function_guard (Int us_rep1) Bool)
(define-fun dynamic_invariant ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 0 2147483647)) (in_range2 temp___expr_166)))
(declare-fun oeq (us_rep1 us_rep1) Bool)
(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)
(assert (forall ((a us_rep1) (b us_rep1)) (! (= (user_eq3 a b) (oeq a b)) :pattern ((user_eq3 a b)))))
(assert (forall ((container us_rep1)) (! (let ((result (length container))) (and (<= result (to_rep1 (rec__my_ordered_maps__n__map__capacity (us_split_discrs1 container)))) (dynamic_invariant result true false true true))) :pattern ((length container)))))
(declare-datatypes () ((key_type__ref (mk_key_type__ref (key_type__content us_rep)))))
(define-fun key_type__ref___4__projection ((a key_type__ref)) us_rep (key_type__content a))
(declare-fun first_key (us_rep1) us_rep)
(declare-fun first_key__function_guard (us_rep us_rep1) Bool)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content us_rep)))))
(define-fun element_type__ref___7__projection ((a element_type__ref)) us_rep (element_type__content a))
(declare-sort us_main_type1 0)
(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)
(declare-sort us_rep2 0)
(declare-fun bool_eq2 (us_rep2 us_rep2) Bool)
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep2) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep2) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))
(declare-fun user_eq4 (us_rep2 us_rep2) Bool)
(declare-const dummy4 us_rep2)
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep2)))))
(define-fun sequence__ref___2__projection ((a sequence__ref)) us_rep2 (sequence__content a))
(declare-fun get (us_rep2 Int) us_rep)
(declare-fun get__function_guard (us_rep us_rep2 Int) Bool)
(define-fun k_smaller_than_range ((container us_rep2) (fst Int) (lst Int) (key us_rep)) Bool (ite (forall ((i Int)) (=> (and (<= fst i) (<= i lst)) (= (my_lt key (get container i)) true))) true false))
(declare-fun k_smaller_than_range__function_guard (Bool us_rep2 Int Int us_rep) Bool)
(declare-fun keys (us_rep1) us_rep2)
(declare-fun keys__function_guard (us_rep2 us_rep1) Bool)
(declare-fun is_empty (us_rep1) Bool)
(declare-fun is_empty__function_guard (Bool us_rep1) Bool)
(assert (forall ((container us_rep1)) (! (=> (not (= (is_empty container) true)) (let ((result (first_key container))) (and (= (bool_eq result (get (keys container) 1)) true) (= (k_smaller_than_range (keys container) 2 (length container) result) true)))) :pattern ((first_key container)))))
(declare-const container us_rep1)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const key us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun equivalent_keys ((left us_rep) (right us_rep)) Bool (and (not (my_lt left right)) (not (my_lt right left))))
(declare-fun equivalent_keys__function_guard (Bool us_rep us_rep) Bool)
(declare-fun length1 (us_rep2) Int)
(declare-fun length__function_guard1 (Int us_rep2) Bool)
(define-fun k_bigger_than_range ((container1 us_rep2) (fst Int) (lst Int) (key1 us_rep)) Bool (ite (forall ((i Int)) (=> (and (<= fst i) (<= i lst)) (= (my_lt (get container1 i) key1) true))) true false))
(declare-fun k_bigger_than_range__function_guard (Bool us_rep2 Int Int us_rep) Bool)
(define-fun k_is_find ((container1 us_rep2) (key1 us_rep) (position Int)) Bool (and (ite (< 0 position) (k_bigger_than_range container1 1 (- position 1) key1) (distinct 1 0)) (ite (< position (length1 container1)) (k_smaller_than_range container1 (+ position 1) (length1 container1) key1) (distinct 1 0))))
(declare-fun k_is_find__function_guard (Bool us_rep2 us_rep Int) Bool)
(declare-fun find (us_rep2 us_rep) Int)
(declare-fun find__function_guard (Int us_rep2 us_rep) Bool)
(define-fun last ((container1 us_rep2)) Int (+ 0 (length1 container1)))
(declare-fun last__function_guard (Int us_rep2) Bool)
(define-fun oeq1 ((left us_rep2) (right us_rep2)) Bool (and (= (length1 left) (length1 right)) (ite (forall ((n Int)) (=> (and (<= 1 n) (<= n (last left))) (= (bool_eq (get left n) (get right n)) true))) true false)))
(declare-fun oeq__function_guard1 (Bool us_rep2 us_rep2) Bool)
(assert (forall ((a us_rep2) (b us_rep2)) (! (= (user_eq4 a b) (oeq1 a b)) :pattern ((user_eq4 a b)))))
(define-fun default_initial_assumption ((temp___expr_631 us_rep2) (temp___skip_top_level_632 Bool)) Bool (=> (not (= temp___skip_top_level_632 true)) (= (length1 temp___expr_631) 0)))
(assert (forall ((container1 us_rep2)) (forall ((key1 us_rep)) (! (let ((result (find container1 key1))) (and (=> (< 0 result) (and (<= result (length1 container1)) (= (equivalent_keys key1 (get container1 result)) true))) (dynamic_invariant result true false true true))) :pattern ((find container1 key1))))))
(declare-sort us_main_type2 0)
(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)
(declare-sort us_rep3 0)
(declare-fun bool_eq3 (us_rep3 us_rep3) Bool)
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep3) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep3) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep3)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep3)) (<= 0 (object__alignment3 a))))
(declare-fun user_eq5 (us_rep3 us_rep3) Bool)
(declare-const dummy5 us_rep3)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 us_rep3)))))
(define-fun map__ref___5__projection ((a map__ref1)) us_rep3 (map__content1 a))
(declare-fun model__ (us_rep1) us_rep3)
(declare-fun model____function_guard (us_rep3 us_rep1) Bool)
(declare-fun length2 (us_rep3) Int)
(declare-fun length__function_guard2 (Int us_rep3) Bool)
(declare-fun is_empty1 (us_rep3) Bool)
(declare-fun is_empty__function_guard1 (Bool us_rep3) Bool)
(define-fun default_initial_assumption1 ((temp___expr_593 us_rep3) (temp___skip_top_level_594 Bool)) Bool (=> (not (= temp___skip_top_level_594 true)) (and (= (is_empty1 temp___expr_593) true) (= (length2 temp___expr_593) 0))))
(assert true)
(declare-datatypes () ((key_type__ref1 (mk_key_type__ref1 (key_type__content1 us_rep)))))
(define-fun key_type__ref___5__projection ((a key_type__ref1)) us_rep (key_type__content1 a))
(declare-fun has_key (us_rep3 us_rep) Bool)
(declare-fun has_key__function_guard (Bool us_rep3 us_rep) Bool)
(define-fun iter_has_element ((container1 us_rep2) (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position (last container1)) true false)))
(declare-fun iter_has_element__function_guard (Bool us_rep2 Int) Bool)
(declare-sort extended_index 0)
(declare-fun extended_indexqtint (extended_index) Int)
(assert (forall ((i extended_index)) (and (<= 0 (extended_indexqtint i)) (<= (extended_indexqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq6 (extended_index extended_index) Bool)
(declare-const dummy6 extended_index)
(declare-datatypes () ((extended_index__ref (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___2__projection ((a extended_index__ref)) extended_index (extended_index__content a))
(assert (forall ((container1 us_rep1)) (! (let ((result (keys container1))) (and (and (and (= (length1 result) (length container1)) (forall ((temp___669 Int)) (=> (and (in_range3 temp___669) (= (iter_has_element result temp___669) true)) (= (has_key (model__ container1) (get result temp___669)) true)))) (forall ((key1 us_rep)) (=> (= (has_key (model__ container1) key1) true) (and (< 0 (find result key1)) (= (equivalent_keys (get result (find result key1)) key1) true))))) (forall ((i Int)) (=> (and (<= 1 i) (<= i (length container1))) (and (= (find result (get result i)) i) (= (k_is_find result (get result i) i) true)))))) :pattern ((keys container1)))))
(declare-fun oeq2 (us_rep3 us_rep3) Bool)
(declare-fun oeq__function_guard2 (Bool us_rep3 us_rep3) Bool)
(assert (forall ((left us_rep1) (right us_rep1)) (! (= (= (oeq left right) true) (= (oeq2 (model__ left) (model__ right)) true)) :pattern ((oeq left right)))))
(assert (forall ((container1 us_rep1)) (! (= (= (is_empty container1) true) (= (length container1) 0)) :pattern ((is_empty container1)))))
(assert (forall ((container1 us_rep3)) (forall ((key1 us_rep)) (! (=> (= (distinct 1 0) true) (=> (exists ((k us_rep)) (and (= (has_key container1 k) true) (= (equivalent_keys k key1) true))) (= (has_key container1 key1) true))) :pattern ((has_key container1 key1))))))
(declare-fun witness (us_rep3 us_rep) Int)
(declare-fun witness__function_guard (Int us_rep3 us_rep) Bool)
(declare-fun w_get (us_rep3 Int) Int)
(declare-fun w_get__function_guard (Int us_rep3 Int) Bool)
(declare-fun get1 (us_rep3 us_rep) Int)
(declare-fun get__function_guard1 (Int us_rep3 us_rep) Bool)
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= (- 2147483648) (element_typeqtint i)) (<= (element_typeqtint i) 2147483647))))
(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq7 (element_type element_type) Bool)
(declare-const dummy7 element_type)
(declare-datatypes () ((element_type__ref1 (mk_element_type__ref1 (element_type__content1 element_type)))))
(define-fun element_type__ref___6__projection ((a element_type__ref1)) element_type (element_type__content1 a))
(define-fun dynamic_invariant2 ((temp___expr_585 Int) (temp___is_init_581 Bool) (temp___skip_constant_582 Bool) (temp___do_toplevel_583 Bool) (temp___do_typ_inv_584 Bool)) Bool (=> (or (= temp___is_init_581 true) (<= (- 2147483648) 2147483647)) (in_range4 temp___expr_585)))
(assert (forall ((container1 us_rep3)) (forall ((key1 us_rep)) (! (=> (= (has_key container1 key1) true) (let ((result (get1 container1 key1))) (and (=> (= (distinct 1 0) true) (and (= result (w_get container1 (witness container1 key1))) (forall ((k us_rep)) (=> (= (has_key container1 k) true) (= (= (equivalent_keys k key1) true) (= (witness container1 key1) (witness container1 k))))))) (dynamic_invariant2 result true false true true)))) :pattern ((get1 container1 key1))))))
(assert (forall ((container1 us_rep3)) (! (dynamic_invariant (length2 container1) true false true true) :pattern ((length2 container1)))))
(assert (forall ((left us_rep3) (right us_rep3)) (! (= (= (oeq2 left right) true) (and (forall ((key1 us_rep)) (=> (= (has_key left key1) true) (and (= (has_key right key1) true) (= (get1 right key1) (get1 left key1))))) (forall ((key1 us_rep)) (=> (= (has_key right key1) true) (= (has_key left key1) true))))) :pattern ((oeq2 left right)))))
(assert (forall ((container1 us_rep3)) (! (= (= (is_empty1 container1) true) (forall ((key1 us_rep)) (not (= (has_key container1 key1) true)))) :pattern ((is_empty1 container1)))))
(declare-fun has_witness (us_rep3 Int) Bool)
(declare-fun has_witness__function_guard (Bool us_rep3 Int) Bool)
(assert true)
(assert (forall ((container1 us_rep3)) (forall ((key1 us_rep)) (! (=> (= (has_key container1 key1) true) (let ((result (witness container1 key1))) (and (= (has_witness container1 result) true) (dynamic_invariant result true false true true)))) :pattern ((witness container1 key1))))))
(assert (forall ((container1 us_rep3)) (forall ((witness1 Int)) (! (=> (and (dynamic_invariant witness1 true true true true) (= (has_witness container1 witness1) true)) (dynamic_invariant2 (w_get container1 witness1) true false true true)) :pattern ((w_get container1 witness1))))))
(define-fun dynamic_invariant3 ((temp___expr_623 Int) (temp___is_init_619 Bool) (temp___skip_constant_620 Bool) (temp___do_toplevel_621 Bool) (temp___do_typ_inv_622 Bool)) Bool (=> (or (= temp___is_init_619 true) (<= 0 2147483647)) (in_range3 temp___expr_623)))
(assert (forall ((container1 us_rep2)) (! (let ((result (length1 container1))) (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false true true))) :pattern ((length1 container1)))))
(assert true)
(declare-const o Int)
(declare-const result Bool)
(assert (and (= o (length container)) (and (in_range2 o) (<= o (to_rep1 (rec__my_ordered_maps__n__map__capacity (us_split_discrs1 container)))))))
(assert (= result (ite (= o 0) true false)))
(assert (not (= result true)))
(assert (not (not (= (is_empty container) true))))
(check-sat)
(exit)
