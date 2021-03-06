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
(declare-sort count_type 0)
(declare-fun count_typeqtint (count_type) Int)
(assert (forall ((i count_type)) (and (<= 0 (count_typeqtint i)) (<= (count_typeqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (count_type count_type) Bool)
(declare-const dummy count_type)
(declare-datatypes () ((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type (count_type__content a))
(define-fun to_rep ((x count_type)) Int (count_typeqtint x))
(declare-fun of_rep (Int) count_type)
(assert (forall ((x count_type)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x count_type)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__my_ordered_sets__n__set__capacity count_type)))))
(define-fun us_split_discrs___2__projection ((a us_split_discrs)) count_type (rec__my_ordered_sets__n__set__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___2__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__my_ordered_sets__n__set us_main_type)))))
(define-fun us_split_fields_Set__2__projection ((a us_split_fields)) us_main_type (rec__my_ordered_sets__n__set a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___8__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___11__projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___12__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__my_ordered_sets__n__set__capacity (us_split_discrs1 a))) (to_rep (rec__my_ordered_sets__n__set__capacity (us_split_discrs1 b)))) (= (us_main_eq (rec__my_ordered_sets__n__set (us_split_fields1 a)) (rec__my_ordered_sets__n__set (us_split_fields1 b))) true)) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const my_ordered_sets__n__set__capacity__first__bit Int)
(declare-const my_ordered_sets__n__set__capacity__last__bit Int)
(declare-const my_ordered_sets__n__set__capacity__position Int)
(assert (<= 0 my_ordered_sets__n__set__capacity__first__bit))
(assert (< my_ordered_sets__n__set__capacity__first__bit my_ordered_sets__n__set__capacity__last__bit))
(assert (<= 0 my_ordered_sets__n__set__capacity__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep)))))
(define-fun set__ref___3__projection ((a set__ref)) us_rep (set__content a))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(define-fun dynamic_invariant ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 0 2147483647)) (in_range temp___expr_166)))
(declare-fun oeq (us_rep us_rep) Bool)
(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)
(assert (forall ((a us_rep) (b us_rep)) (! (= (user_eq1 a b) (oeq a b)) :pattern ((user_eq1 a b)))))
(assert (forall ((container us_rep)) (! (let ((result (length container))) (and (<= result (to_rep (rec__my_ordered_sets__n__set__capacity (us_split_discrs1 container)))) (dynamic_invariant result true false true true))) :pattern ((length container)))))
(declare-fun intersection__2 (us_rep us_rep) us_rep)
(declare-fun intersection__2__function_guard (us_rep us_rep us_rep) Bool)
(declare-sort us_main_type1 0)
(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)
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
(declare-datatypes () ((set__ref1 (mk_set__ref1 (set__content1 us_rep1)))))
(define-fun set__ref___4__projection ((a set__ref1)) us_rep1 (set__content1 a))
(declare-fun ole (us_rep1 us_rep1) Bool)
(declare-fun ole__function_guard (Bool us_rep1 us_rep1) Bool)
(declare-fun includes_intersection (us_rep1 us_rep1 us_rep1) Bool)
(declare-fun includes_intersection__function_guard (Bool us_rep1 us_rep1 us_rep1) Bool)
(declare-fun num_overlaps (us_rep1 us_rep1) Int)
(declare-fun num_overlaps__function_guard (Int us_rep1 us_rep1) Bool)
(declare-sort us_main_type2 0)
(declare-fun us_main_eq2 (us_main_type2 us_main_type2) Bool)
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
(declare-fun user_eq3 (us_rep2 us_rep2) Bool)
(declare-const dummy3 us_rep2)
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep2)))))
(define-fun sequence__ref___2__projection ((a sequence__ref)) us_rep2 (sequence__content a))
(declare-fun length1 (us_rep2) Int)
(declare-fun length__function_guard1 (Int us_rep2) Bool)
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq4 (integer integer) Bool)
(declare-const dummy4 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq5 (natural natural) Bool)
(declare-const dummy5 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun to_rep2 ((x natural)) Int (naturalqtint x))
(declare-fun of_rep2 (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x natural)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__my_ordered_sets__my_rec__f natural) (rec__my_ordered_sets__my_rec__g integer)))))
(define-fun us_split_fields_F__projection ((a us_split_fields2)) natural (rec__my_ordered_sets__my_rec__f a))
(define-fun us_split_fields_G__projection ((a us_split_fields2)) integer (rec__my_ordered_sets__my_rec__g a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___7__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep3 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___10__projection ((a us_rep3)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq3 ((a us_rep3) (b us_rep3)) Bool (ite (and (= (to_rep2 (rec__my_ordered_sets__my_rec__f (us_split_fields3 a))) (to_rep2 (rec__my_ordered_sets__my_rec__f (us_split_fields3 b)))) (= (to_rep1 (rec__my_ordered_sets__my_rec__g (us_split_fields3 a))) (to_rep1 (rec__my_ordered_sets__my_rec__g (us_split_fields3 b))))) true false))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep3) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep3) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep3)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep3)) (<= 0 (object__alignment3 a))))
(declare-const my_ordered_sets__my_rec__f__first__bit Int)
(declare-const my_ordered_sets__my_rec__f__last__bit Int)
(declare-const my_ordered_sets__my_rec__f__position Int)
(assert (<= 0 my_ordered_sets__my_rec__f__first__bit))
(assert (< my_ordered_sets__my_rec__f__first__bit my_ordered_sets__my_rec__f__last__bit))
(assert (<= 0 my_ordered_sets__my_rec__f__position))
(declare-const my_ordered_sets__my_rec__g__first__bit Int)
(declare-const my_ordered_sets__my_rec__g__last__bit Int)
(declare-const my_ordered_sets__my_rec__g__position Int)
(assert (<= 0 my_ordered_sets__my_rec__g__first__bit))
(assert (< my_ordered_sets__my_rec__g__first__bit my_ordered_sets__my_rec__g__last__bit))
(assert (<= 0 my_ordered_sets__my_rec__g__position))
(declare-fun user_eq6 (us_rep3 us_rep3) Bool)
(declare-const dummy6 us_rep3)
(declare-datatypes () ((my_rec__ref (mk_my_rec__ref (my_rec__content us_rep3)))))
(define-fun my_rec__ref___projection ((a my_rec__ref)) us_rep3 (my_rec__content a))
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content us_rep3)))))
(define-fun element_type__ref___7__projection ((a element_type__ref)) us_rep3 (element_type__content a))
(declare-fun get (us_rep2 Int) us_rep3)
(declare-fun get__function_guard (us_rep3 us_rep2 Int) Bool)
(declare-datatypes () ((element_type__ref1 (mk_element_type__ref1 (element_type__content1 us_rep3)))))
(define-fun element_type__ref___5__projection ((a element_type__ref1)) us_rep3 (element_type__content1 a))
(declare-fun find (us_rep2 us_rep3) Int)
(declare-fun find__function_guard (Int us_rep2 us_rep3) Bool)
(define-fun e_elements_included ((left us_rep2) (right us_rep2)) Bool (ite (forall ((i Int)) (=> (and (<= 1 i) (<= i (length1 left))) (and (< 0 (find right (get left i))) (= (bool_eq3 (get right (find right (get left i))) (get left i)) true)))) true false))
(declare-fun e_elements_included__function_guard (Bool us_rep2 us_rep2) Bool)
(declare-datatypes () ((element_type__ref2 (mk_element_type__ref2 (element_type__content2 us_rep3)))))
(define-fun element_type__ref___6__projection ((a element_type__ref2)) us_rep3 (element_type__content2 a))
(declare-fun contains (us_rep1 us_rep3) Bool)
(declare-fun contains__function_guard (Bool us_rep1 us_rep3) Bool)
(define-fun e_elements_included__2 ((left us_rep2) (model__ us_rep1) (right us_rep2)) Bool (ite (forall ((i Int)) (=> (and (<= 1 i) (<= i (length1 left))) (=> (= (contains model__ (get left i)) true) (and (< 0 (find right (get left i))) (= (bool_eq3 (get right (find right (get left i))) (get left i)) true))))) true false))
(declare-fun e_elements_included__2__function_guard (Bool us_rep2 us_rep1 us_rep2) Bool)
(declare-fun model__ (us_rep) us_rep1)
(declare-fun model____function_guard (us_rep1 us_rep) Bool)
(declare-fun elements (us_rep) us_rep2)
(declare-fun elements__function_guard (us_rep2 us_rep) Bool)
(assert (forall ((left us_rep) (right us_rep)) (! (let ((result (intersection__2 left right))) (and (and (and (and (and (= (length result) (num_overlaps (model__ left) (model__ right))) (= (ole (model__ result) (model__ left)) true)) (= (ole (model__ result) (model__ right)) true)) (= (includes_intersection (model__ result) (model__ left) (model__ right)) true)) (= (e_elements_included (elements result) (elements left)) true)) (= (e_elements_included__2 (elements left) (model__ right) (elements result)) true))) :pattern ((intersection__2 left right)))))
(declare-sort tcount_typeB 0)
(declare-fun tcount_typeBqtint (tcount_typeB) Int)
(assert (forall ((i tcount_typeB)) (and (<= (- 2147483648) (tcount_typeBqtint i)) (<= (tcount_typeBqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq7 (tcount_typeB tcount_typeB) Bool)
(declare-const dummy7 tcount_typeB)
(declare-datatypes () ((tcount_typeB__ref (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB (tcount_typeB__content a))
(declare-const target__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const source us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant2 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(define-fun my_lt ((x us_rep3) (y us_rep3)) Bool (< (to_rep2 (rec__my_ordered_sets__my_rec__f (us_split_fields3 x))) (to_rep2 (rec__my_ordered_sets__my_rec__f (us_split_fields3 y)))))
(declare-fun my_lt__function_guard (Bool us_rep3 us_rep3) Bool)
(define-fun in_range4 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Bool)
(define-fun equivalent_elements ((left us_rep3) (right us_rep3)) Bool (and (not (my_lt left right)) (not (my_lt right left))))
(declare-fun equivalent_elements__function_guard (Bool us_rep3 us_rep3) Bool)
(define-fun e_bigger_than_range ((container us_rep2) (fst Int) (lst Int) (item us_rep3)) Bool (ite (forall ((i Int)) (=> (and (<= fst i) (<= i lst)) (= (my_lt (get container i) item) true))) true false))
(declare-fun e_bigger_than_range__function_guard (Bool us_rep2 Int Int us_rep3) Bool)
(define-fun e_smaller_than_range ((container us_rep2) (fst Int) (lst Int) (item us_rep3)) Bool (ite (forall ((i Int)) (=> (and (<= fst i) (<= i lst)) (= (my_lt item (get container i)) true))) true false))
(declare-fun e_smaller_than_range__function_guard (Bool us_rep2 Int Int us_rep3) Bool)
(define-fun e_is_find ((container us_rep2) (item us_rep3) (position Int)) Bool (and (ite (< 0 position) (e_bigger_than_range container 1 (- position 1) item) (distinct 1 0)) (ite (< position (length1 container)) (e_smaller_than_range container (+ position 1) (length1 container) item) (distinct 1 0))))
(declare-fun e_is_find__function_guard (Bool us_rep2 us_rep3 Int) Bool)
(define-fun last ((container us_rep2)) Int (+ 0 (length1 container)))
(declare-fun last__function_guard (Int us_rep2) Bool)
(define-fun oeq1 ((left us_rep2) (right us_rep2)) Bool (and (= (length1 left) (length1 right)) (ite (forall ((n Int)) (=> (and (<= 1 n) (<= n (last left))) (= (bool_eq3 (get left n) (get right n)) true))) true false)))
(declare-fun oeq__function_guard1 (Bool us_rep2 us_rep2) Bool)
(assert (forall ((a us_rep2) (b us_rep2)) (! (= (user_eq3 a b) (oeq1 a b)) :pattern ((user_eq3 a b)))))
(define-fun default_initial_assumption ((temp___expr_645 us_rep2) (temp___skip_top_level_646 Bool)) Bool (=> (not (= temp___skip_top_level_646 true)) (= (length1 temp___expr_645) 0)))
(assert (forall ((container us_rep2)) (forall ((item us_rep3)) (! (let ((result (find container item))) (and (=> (< 0 result) (and (<= result (length1 container)) (= (equivalent_elements item (get container result)) true))) (dynamic_invariant result true false true true))) :pattern ((find container item))))))
(declare-fun length2 (us_rep1) Int)
(declare-fun length__function_guard2 (Int us_rep1) Bool)
(declare-fun is_empty (us_rep1) Bool)
(declare-fun is_empty__function_guard (Bool us_rep1) Bool)
(define-fun default_initial_assumption1 ((temp___expr_607 us_rep1) (temp___skip_top_level_608 Bool)) Bool (=> (not (= temp___skip_top_level_608 true)) (= (is_empty temp___expr_607) true)))
(assert (forall ((container us_rep)) (! (= (length2 (model__ container)) (length container)) :pattern ((model__ container)))))
(define-fun iter_has_element ((container us_rep2) (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position (last container)) true false)))
(declare-fun iter_has_element__function_guard (Bool us_rep2 Int) Bool)
(declare-sort extended_index 0)
(declare-fun extended_indexqtint (extended_index) Int)
(assert (forall ((i extended_index)) (and (<= 0 (extended_indexqtint i)) (<= (extended_indexqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq8 (extended_index extended_index) Bool)
(declare-const dummy8 extended_index)
(declare-datatypes () ((extended_index__ref (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___2__projection ((a extended_index__ref)) extended_index (extended_index__content a))
(assert (forall ((container us_rep)) (! (let ((result (elements container))) (and (and (and (= (length1 result) (length container)) (forall ((temp___683 Int)) (=> (and (in_range5 temp___683) (= (iter_has_element result temp___683) true)) (= (contains (model__ container) (get result temp___683)) true)))) (forall ((item us_rep3)) (=> (= (contains (model__ container) item) true) (and (< 0 (find result item)) (= (equivalent_elements (get result (find result item)) item) true))))) (forall ((i Int)) (=> (and (<= 1 i) (<= i (length container))) (and (= (find result (get result i)) i) (= (e_is_find result (get result i) i) true)))))) :pattern ((elements container)))))
(assert (forall ((left us_rep) (right us_rep)) (! (ite (= (oeq left right) true) (= (oeq1 (elements left) (elements right)) true) (or (not (= (e_elements_included (elements left) (elements right)) true)) (not (= (e_elements_included (elements right) (elements left)) true)))) :pattern ((oeq left right)))))
(assert (forall ((container us_rep1)) (forall ((item us_rep3)) (! (=> (= (distinct 1 0) true) (=> (exists ((e us_rep3)) (and (= (contains container e) true) (= (equivalent_elements e item) true))) (= (contains container item) true))) :pattern ((contains container item))))))
(assert (forall ((container us_rep1)) (! (dynamic_invariant (length2 container) true false true true) :pattern ((length2 container)))))
(assert (forall ((left us_rep1) (right us_rep1)) (! (= (= (ole left right) true) (forall ((item us_rep3)) (=> (= (contains left item) true) (= (contains right item) true)))) :pattern ((ole left right)))))
(assert (forall ((container us_rep1)) (! (let ((result (is_empty container))) (and (= (= result true) (forall ((item us_rep3)) (not (= (contains container item) true)))) (= (= result true) (= (length2 container) 0)))) :pattern ((is_empty container)))))
(assert (forall ((container us_rep1) (left us_rep1) (right us_rep1)) (! (= (= (includes_intersection container left right) true) (forall ((item us_rep3)) (=> (= (contains left item) true) (=> (= (contains right item) true) (= (contains container item) true))))) :pattern ((includes_intersection container left right)))))
(declare-fun no_overlap (us_rep1 us_rep1) Bool)
(declare-fun no_overlap__function_guard (Bool us_rep1 us_rep1) Bool)
(assert (forall ((left us_rep1) (right us_rep1)) (! (= (= (no_overlap left right) true) (forall ((item us_rep3)) (=> (= (contains left item) true) (not (= (contains right item) true))))) :pattern ((no_overlap left right)))))
(declare-fun intersection1 (us_rep1 us_rep1) us_rep1)
(declare-fun intersection__function_guard (us_rep1 us_rep1 us_rep1) Bool)
(assert (forall ((left us_rep1) (right us_rep1)) (! (let ((result (num_overlaps left right))) (and (and (and (and (= result (length2 (intersection1 left right))) (ite (= (ole left right) true) (= result (length2 left)) (< result (length2 left)))) (ite (= (ole right left) true) (= result (length2 right)) (< result (length2 right)))) (= (= result 0) (= (no_overlap left right) true))) (dynamic_invariant result true false true true))) :pattern ((num_overlaps left right)))))
(assert (forall ((left us_rep1) (right us_rep1)) (! (let ((result (intersection1 left right))) (and (and (= (ole result left) true) (= (ole result right) true)) (= (includes_intersection result left right) true))) :pattern ((intersection1 left right)))))
(define-fun dynamic_invariant3 ((temp___expr_637 Int) (temp___is_init_633 Bool) (temp___skip_constant_634 Bool) (temp___do_toplevel_635 Bool) (temp___do_typ_inv_636 Bool)) Bool (=> (or (= temp___is_init_633 true) (<= 0 2147483647)) (in_range5 temp___expr_637)))
(assert (forall ((container us_rep2)) (! (let ((result (length1 container))) (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false true true))) :pattern ((length1 container)))))
(assert true)
(declare-const target__split_fields us_main_type)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 count_type)
(declare-const o3 us_main_type)
(declare-const o4 Int)
(define-fun o5 () us_rep (mk___rep (mk___split_discrs o2) (mk___split_fields o3)))
(assert (and (= o5 (intersection__2 (mk___rep target__split_discrs (mk___split_fields target__split_fields)) source)) (and (and (and (and (and (= (length o5) (num_overlaps (model__ (mk___rep target__split_discrs (mk___split_fields target__split_fields))) (model__ source))) (= (ole (model__ o5) (model__ (mk___rep target__split_discrs (mk___split_fields target__split_fields)))) true)) (= (ole (model__ o5) (model__ source)) true)) (= (includes_intersection (model__ o5) (model__ (mk___rep target__split_discrs (mk___split_fields target__split_fields))) (model__ source)) true)) (= (e_elements_included (elements o5) (elements (mk___rep target__split_discrs (mk___split_fields target__split_fields)))) true)) (= (e_elements_included__2 (elements (mk___rep target__split_discrs (mk___split_fields target__split_fields))) (model__ source) (elements o5)) true))))
(assert (and (= o4 (length o5)) (and (in_range o4) (<= o4 (to_rep o2)))))
(assert (and (= o (length (mk___rep target__split_discrs (mk___split_fields target__split_fields)))) (and (in_range o) (<= o (to_rep (rec__my_ordered_sets__n__set__capacity target__split_discrs))))))
(assert (= o1 (- (to_rep (rec__my_ordered_sets__n__set__capacity target__split_discrs)) o)))
(assert (not (in_range3 o1)))
(check-sat)
(exit)
