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
(declare-sort count_type 0)
(declare-fun count_typeqtint (count_type) Int)
(assert (forall ((i count_type)) (and (<= 0 (count_typeqtint i)) (<= (count_typeqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (count_type count_type) Bool)
(declare-const dummy count_type)
(declare-datatypes () ((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type (count_type__content a))
(define-fun to_rep ((x count_type)) Int (count_typeqtint x))
(declare-fun of_rep (Int) count_type)
(assert (forall ((x count_type)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x count_type)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__my_ordered_sets__m__cursor__node count_type)))))
(define-fun us_split_fields_Node__projection ((a us_split_fields)) count_type (rec__my_ordered_sets__m__cursor__node a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___6__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___9__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (= (to_rep (rec__my_ordered_sets__m__cursor__node (us_split_fields1 a))) (to_rep (rec__my_ordered_sets__m__cursor__node (us_split_fields1 b)))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const my_ordered_sets__m__cursor__node__first__bit Int)
(declare-const my_ordered_sets__m__cursor__node__last__bit Int)
(declare-const my_ordered_sets__m__cursor__node__position Int)
(assert (<= 0 my_ordered_sets__m__cursor__node__first__bit))
(assert (< my_ordered_sets__m__cursor__node__first__bit my_ordered_sets__m__cursor__node__last__bit))
(assert (<= 0 my_ordered_sets__m__cursor__node__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((cursor__ref (mk_cursor__ref (cursor__content us_rep)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep (cursor__content a))
(declare-datatypes () ((key_type__ref (mk_key_type__ref (key_type__content us_rep)))))
(define-fun key_type__ref___projection ((a key_type__ref)) us_rep (key_type__content a))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-sort us_rep1 0)
(declare-fun bool_eq1 (us_rep1 us_rep1) Bool)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-fun user_eq2 (us_rep1 us_rep1) Bool)
(declare-const dummy2 us_rep1)
(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep1)))))
(define-fun map__ref___projection ((a map__ref)) us_rep1 (map__content a))
(declare-fun get (us_rep1 us_rep) Int)
(declare-fun get__function_guard (Int us_rep1 us_rep) Bool)
(declare-fun has_key (us_rep1 us_rep) Bool)
(declare-fun has_key__function_guard (Bool us_rep1 us_rep) Bool)
(declare-fun witness (us_rep1 us_rep) Int)
(declare-fun witness__function_guard (Int us_rep1 us_rep) Bool)
(declare-fun w_get (us_rep1 Int) Int)
(declare-fun w_get__function_guard (Int us_rep1 Int) Bool)
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= 1 (element_typeqtint i)) (<= (element_typeqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq3 (element_type element_type) Bool)
(declare-const dummy3 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___4__projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun dynamic_invariant ((temp___expr_405 Int) (temp___is_init_401 Bool) (temp___skip_constant_402 Bool) (temp___do_toplevel_403 Bool) (temp___do_typ_inv_404 Bool)) Bool (=> (or (= temp___is_init_401 true) (<= 1 2147483647)) (in_range2 temp___expr_405)))
(declare-fun length (us_rep1) Int)
(declare-fun length__function_guard (Int us_rep1) Bool)
(declare-fun is_empty (us_rep1) Bool)
(declare-fun is_empty__function_guard (Bool us_rep1) Bool)
(define-fun default_initial_assumption ((temp___expr_413 us_rep1) (temp___skip_top_level_414 Bool)) Bool (=> (not (= temp___skip_top_level_414 true)) (and (= (is_empty temp___expr_413) true) (= (length temp___expr_413) 0))))
(assert (forall ((container us_rep1)) (forall ((key us_rep)) (! (=> (= (has_key container key) true) (let ((result (get container key))) (and (=> (= (distinct 0 0) true) (and (= result (w_get container (witness container key))) (forall ((k us_rep)) (=> (= (has_key container k) true) (= (= (bool_eq k key) true) (= (witness container key) (witness container k))))))) (dynamic_invariant result true false true true)))) :pattern ((get container key))))))
(declare-sort us_main_type1 0)
(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__my_ordered_sets__m__set__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type (rec__my_ordered_sets__m__set__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__my_ordered_sets__m__set us_main_type1)))))
(define-fun us_split_fields_Set__projection ((a us_split_fields2)) us_main_type1 (rec__my_ordered_sets__m__set a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___5__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep2 (mk___rep1 (us_split_discrs1 us_split_discrs) (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___7__projection ((a us_rep2)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___8__projection ((a us_rep2)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq2 ((a us_rep2) (b us_rep2)) Bool (ite (and (= (to_rep (rec__my_ordered_sets__m__set__capacity (us_split_discrs1 a))) (to_rep (rec__my_ordered_sets__m__set__capacity (us_split_discrs1 b)))) (= (us_main_eq1 (rec__my_ordered_sets__m__set (us_split_fields3 a)) (rec__my_ordered_sets__m__set (us_split_fields3 b))) true)) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep2) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep2) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))
(declare-const my_ordered_sets__m__set__capacity__first__bit Int)
(declare-const my_ordered_sets__m__set__capacity__last__bit Int)
(declare-const my_ordered_sets__m__set__capacity__position Int)
(assert (<= 0 my_ordered_sets__m__set__capacity__first__bit))
(assert (< my_ordered_sets__m__set__capacity__first__bit my_ordered_sets__m__set__capacity__last__bit))
(assert (<= 0 my_ordered_sets__m__set__capacity__position))
(declare-fun user_eq4 (us_rep2 us_rep2) Bool)
(declare-const dummy4 us_rep2)
(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep2)))))
(define-fun set__ref___projection ((a set__ref)) us_rep2 (set__content a))
(declare-fun positions (us_rep2) us_rep1)
(declare-fun positions__function_guard (us_rep1 us_rep2) Bool)
(declare-fun length1 (us_rep2) Int)
(declare-fun length__function_guard1 (Int us_rep2) Bool)
(declare-fun oeq (us_rep2 us_rep2) Bool)
(declare-fun oeq__function_guard (Bool us_rep2 us_rep2) Bool)
(assert (forall ((a us_rep2) (b us_rep2)) (! (= (user_eq4 a b) (oeq a b)) :pattern ((user_eq4 a b)))))
(declare-const no_element us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(assert (forall ((container us_rep2)) (! (let ((result (positions container))) (and (not (= (has_key result no_element) true)) (forall ((i us_rep)) (=> (= (has_key result i) true) (and (and (<= 1 (get result i)) (<= (get result i) (length1 container))) (forall ((j us_rep)) (=> (= (has_key result j) true) (=> (= (get result i) (get result j)) (= (bool_eq i j) true))))))))) :pattern ((positions container)))))
(define-fun has_element ((container us_rep2) (position us_rep)) Bool (has_key (positions container) position))
(declare-fun has_element__function_guard (Bool us_rep2 us_rep) Bool)
(declare-const container us_rep2)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant1 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 0 2147483647)) (in_range1 temp___expr_166)))
(define-fun equivalent_elements ((left Int) (right Int)) Bool (and (not (< left right)) (not (< right left))))
(declare-fun equivalent_elements__function_guard (Bool Int Int) Bool)
(declare-const rliteral count_type)
(assert (= (count_typeqtint rliteral) 0))
(assert (= no_element (mk___rep (mk___split_fields rliteral))))
(assert (forall ((container1 us_rep2)) (! (let ((result (length1 container1))) (and (<= result (to_rep (rec__my_ordered_sets__m__set__capacity (us_split_discrs1 container1)))) (dynamic_invariant1 result true false true true))) :pattern ((length1 container1)))))
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
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep3)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep3 (sequence__content a))
(declare-fun length2 (us_rep3) Int)
(declare-fun length__function_guard2 (Int us_rep3) Bool)
(declare-fun get1 (us_rep3 Int) Int)
(declare-fun get__function_guard1 (Int us_rep3 Int) Bool)
(define-fun e_bigger_than_range ((container1 us_rep3) (fst Int) (lst Int) (item Int)) Bool (ite (forall ((i Int)) (=> (and (<= fst i) (<= i lst)) (< (get1 container1 i) item))) true false))
(declare-fun e_bigger_than_range__function_guard (Bool us_rep3 Int Int Int) Bool)
(define-fun e_smaller_than_range ((container1 us_rep3) (fst Int) (lst Int) (item Int)) Bool (ite (forall ((i Int)) (=> (and (<= fst i) (<= i lst)) (< item (get1 container1 i)))) true false))
(declare-fun e_smaller_than_range__function_guard (Bool us_rep3 Int Int Int) Bool)
(define-fun e_is_find ((container1 us_rep3) (item Int) (position Int)) Bool (and (ite (< 0 position) (e_bigger_than_range container1 1 (- position 1) item) (distinct 1 0)) (ite (< position (length2 container1)) (e_smaller_than_range container1 (+ position 1) (length2 container1) item) (distinct 1 0))))
(declare-fun e_is_find__function_guard (Bool us_rep3 Int Int) Bool)
(declare-fun find (us_rep3 Int) Int)
(declare-fun find__function_guard (Int us_rep3 Int) Bool)
(declare-sort element_type1 0)
(declare-fun element_typeqtint1 (element_type1) Int)
(assert (forall ((i element_type1)) (and (<= 0 (element_typeqtint1 i)) (<= (element_typeqtint1 i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq6 (element_type1 element_type1) Bool)
(declare-const dummy6 element_type1)
(declare-datatypes () ((element_type__ref1 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref___projection ((a element_type__ref1)) element_type1 (element_type__content1 a))
(define-fun dynamic_invariant2 ((temp___expr_316 Int) (temp___is_init_312 Bool) (temp___skip_constant_313 Bool) (temp___do_toplevel_314 Bool) (temp___do_typ_inv_315 Bool)) Bool (=> (or (= temp___is_init_312 true) (<= 0 2147483647)) (in_range3 temp___expr_316)))
(define-fun last ((container1 us_rep3)) Int (+ 0 (length2 container1)))
(declare-fun last__function_guard (Int us_rep3) Bool)
(define-fun oeq1 ((left us_rep3) (right us_rep3)) Bool (and (= (length2 left) (length2 right)) (ite (forall ((n Int)) (=> (and (<= 1 n) (<= n (last left))) (= (get1 left n) (get1 right n)))) true false)))
(declare-fun oeq__function_guard1 (Bool us_rep3 us_rep3) Bool)
(assert (forall ((a us_rep3) (b us_rep3)) (! (= (user_eq5 a b) (oeq1 a b)) :pattern ((user_eq5 a b)))))
(define-fun default_initial_assumption1 ((temp___expr_390 us_rep3) (temp___skip_top_level_391 Bool)) Bool (=> (not (= temp___skip_top_level_391 true)) (= (length2 temp___expr_390) 0)))
(assert (forall ((container1 us_rep3)) (forall ((item Int)) (! (=> (dynamic_invariant2 item true true true true) (let ((result (find container1 item))) (and (=> (< 0 result) (and (<= result (length2 container1)) (= (equivalent_elements item (get1 container1 result)) true))) (dynamic_invariant1 result true false true true)))) :pattern ((find container1 item))))))
(define-fun e_elements_included ((left us_rep3) (right us_rep3)) Bool (ite (forall ((i Int)) (=> (and (<= 1 i) (<= i (length2 left))) (and (< 0 (find right (get1 left i))) (= (get1 right (find right (get1 left i))) (get1 left i))))) true false))
(declare-fun e_elements_included__function_guard (Bool us_rep3 us_rep3) Bool)
(declare-sort us_main_type3 0)
(declare-fun us_main_eq3 (us_main_type3 us_main_type3) Bool)
(declare-sort us_rep4 0)
(declare-fun bool_eq4 (us_rep4 us_rep4) Bool)
(declare-const value__size4 Int)
(declare-fun object__size4 (us_rep4) Int)
(declare-const value__alignment4 Int)
(declare-fun object__alignment4 (us_rep4) Int)
(assert (<= 0 value__size4))
(assert (forall ((a us_rep4)) (<= 0 (object__size4 a))))
(assert (<= 0 value__alignment4))
(assert (forall ((a us_rep4)) (<= 0 (object__alignment4 a))))
(declare-fun user_eq7 (us_rep4 us_rep4) Bool)
(declare-const dummy7 us_rep4)
(declare-datatypes () ((set__ref1 (mk_set__ref1 (set__content1 us_rep4)))))
(define-fun set__ref___2__projection ((a set__ref1)) us_rep4 (set__content1 a))
(declare-fun length3 (us_rep4) Int)
(declare-fun length__function_guard3 (Int us_rep4) Bool)
(declare-fun model__ (us_rep2) us_rep4)
(declare-fun model____function_guard (us_rep4 us_rep2) Bool)
(declare-fun is_empty1 (us_rep4) Bool)
(declare-fun is_empty__function_guard1 (Bool us_rep4) Bool)
(define-fun default_initial_assumption2 ((temp___expr_354 us_rep4) (temp___skip_top_level_355 Bool)) Bool (=> (not (= temp___skip_top_level_355 true)) (= (is_empty1 temp___expr_354) true)))
(assert (forall ((container1 us_rep2)) (! (= (length3 (model__ container1)) (length1 container1)) :pattern ((model__ container1)))))
(declare-fun contains (us_rep4 Int) Bool)
(declare-fun contains__function_guard (Bool us_rep4 Int) Bool)
(define-fun iter_has_element ((container1 us_rep3) (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position (last container1)) true false)))
(declare-fun iter_has_element__function_guard (Bool us_rep3 Int) Bool)
(declare-fun elements (us_rep2) us_rep3)
(declare-fun elements__function_guard (us_rep3 us_rep2) Bool)
(declare-sort element_type2 0)
(declare-fun element_typeqtint2 (element_type2) Int)
(assert (forall ((i element_type2)) (and (<= 0 (element_typeqtint2 i)) (<= (element_typeqtint2 i) 2147483647))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq8 (element_type2 element_type2) Bool)
(declare-const dummy8 element_type2)
(declare-datatypes () ((element_type__ref2 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref___2__projection ((a element_type__ref2)) element_type2 (element_type__content2 a))
(declare-sort extended_index 0)
(declare-fun extended_indexqtint (extended_index) Int)
(assert (forall ((i extended_index)) (and (<= 0 (extended_indexqtint i)) (<= (extended_indexqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq9 (extended_index extended_index) Bool)
(declare-const dummy9 extended_index)
(declare-datatypes () ((extended_index__ref (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index (extended_index__content a))
(assert (forall ((container1 us_rep2)) (! (let ((result (elements container1))) (and (and (and (= (length2 result) (length1 container1)) (forall ((temp___428 Int)) (=> (and (in_range5 temp___428) (= (iter_has_element result temp___428) true)) (= (contains (model__ container1) (get1 result temp___428)) true)))) (forall ((item Int)) (=> (and (in_range4 item) (= (contains (model__ container1) item) true)) (and (< 0 (find result item)) (= (equivalent_elements (get1 result (find result item)) item) true))))) (forall ((i Int)) (=> (and (<= 1 i) (<= i (length1 container1))) (and (= (find result (get1 result i)) i) (= (e_is_find result (get1 result i) i) true)))))) :pattern ((elements container1)))))
(assert (forall ((left us_rep2) (right us_rep2)) (! (ite (= (oeq left right) true) (= (oeq1 (elements left) (elements right)) true) (or (not (= (e_elements_included (elements left) (elements right)) true)) (not (= (e_elements_included (elements right) (elements left)) true)))) :pattern ((oeq left right)))))
(define-fun dynamic_invariant3 ((temp___expr_346 Int) (temp___is_init_342 Bool) (temp___skip_constant_343 Bool) (temp___do_toplevel_344 Bool) (temp___do_typ_inv_345 Bool)) Bool (=> (or (= temp___is_init_342 true) (<= 0 2147483647)) (in_range4 temp___expr_346)))
(assert (forall ((container1 us_rep4)) (forall ((item Int)) (! (=> (dynamic_invariant3 item true true true true) (=> (= (distinct 1 0) true) (=> (exists ((e Int)) (and (and (in_range4 e) (= (contains container1 e) true)) (= (equivalent_elements e item) true))) (= (contains container1 item) true)))) :pattern ((contains container1 item))))))
(assert (forall ((container1 us_rep4)) (! (dynamic_invariant1 (length3 container1) true false true true) :pattern ((length3 container1)))))
(assert (forall ((container1 us_rep4)) (! (let ((result (is_empty1 container1))) (and (= (= result true) (forall ((item Int)) (not (and (in_range4 item) (= (contains container1 item) true))))) (= (= result true) (= (length3 container1) 0)))) :pattern ((is_empty1 container1)))))
(define-fun dynamic_invariant4 ((temp___expr_382 Int) (temp___is_init_378 Bool) (temp___skip_constant_379 Bool) (temp___do_toplevel_380 Bool) (temp___do_typ_inv_381 Bool)) Bool (=> (or (= temp___is_init_378 true) (<= 0 2147483647)) (in_range5 temp___expr_382)))
(assert (forall ((container1 us_rep3)) (! (let ((result (length2 container1))) (and (<= (+ 0 result) 2147483647) (dynamic_invariant1 result true false true true))) :pattern ((length2 container1)))))
(declare-sort element_type3 0)
(declare-fun element_typeqtint3 (element_type3) Int)
(assert (forall ((i element_type3)) (and (<= 0 (element_typeqtint3 i)) (<= (element_typeqtint3 i) 2147483647))))
(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq10 (element_type3 element_type3) Bool)
(declare-const dummy10 element_type3)
(declare-datatypes () ((element_type__ref3 (mk_element_type__ref3 (element_type__content3 element_type3)))))
(define-fun element_type__ref___3__projection ((a element_type__ref3)) element_type3 (element_type__content3 a))
(define-fun dynamic_invariant5 ((temp___expr_375 Int) (temp___is_init_371 Bool) (temp___skip_constant_372 Bool) (temp___do_toplevel_373 Bool) (temp___do_typ_inv_374 Bool)) Bool (=> (or (= temp___is_init_371 true) (<= 0 2147483647)) (in_range6 temp___expr_375)))
(assert (forall ((container1 us_rep3)) (forall ((position Int)) (! (=> (and (dynamic_invariant4 position true true true true) (and (<= 1 position) (<= position (last container1)))) (dynamic_invariant5 (get1 container1 position) true false true true)) :pattern ((get1 container1 position))))))
(assert (forall ((container1 us_rep1)) (forall ((key us_rep)) (! (=> (= (distinct 0 0) true) (=> (exists ((k us_rep)) (and (= (has_key container1 k) true) (= (bool_eq k key) true))) (= (has_key container1 key) true))) :pattern ((has_key container1 key))))))
(assert (forall ((container1 us_rep1)) (! (dynamic_invariant1 (length container1) true false true true) :pattern ((length container1)))))
(assert (forall ((container1 us_rep1)) (! (= (= (is_empty container1) true) (forall ((key us_rep)) (not (= (has_key container1 key) true)))) :pattern ((is_empty container1)))))
(declare-fun has_witness (us_rep1 Int) Bool)
(declare-fun has_witness__function_guard (Bool us_rep1 Int) Bool)
(assert true)
(assert (forall ((container1 us_rep1)) (forall ((key us_rep)) (! (=> (= (has_key container1 key) true) (let ((result (witness container1 key))) (and (= (has_witness container1 result) true) (dynamic_invariant1 result true false true true)))) :pattern ((witness container1 key))))))
(assert (forall ((container1 us_rep1)) (forall ((witness1 Int)) (! (=> (and (dynamic_invariant1 witness1 true true true true) (= (has_witness container1 witness1) true)) (dynamic_invariant (w_get container1 witness1) true false true true)) :pattern ((w_get container1 witness1))))))
(declare-const position__split_fields count_type)
(declare-const o us_rep1)
(assert (= (mk___rep (mk___split_fields rliteral)) no_element))
(assert (or (= (has_key (positions container) (mk___rep (mk___split_fields position__split_fields))) true) (= (bool_eq (mk___rep (mk___split_fields position__split_fields)) no_element) true)))
(assert (not (= (bool_eq (mk___rep (mk___split_fields position__split_fields)) no_element) true)))
(assert (and (= o (positions container)) (and (not (= (has_key o no_element) true)) (forall ((i us_rep)) (=> (= (has_key o i) true) (and (and (<= 1 (get o i)) (<= (get o i) (length1 container))) (forall ((j us_rep)) (=> (= (has_key o j) true) (=> (= (get o i) (get o j)) (= (bool_eq i j) true))))))))))
(assert (not (= (has_key o (mk___rep (mk___split_fields position__split_fields))) true)))
(check-sat)
(exit)
