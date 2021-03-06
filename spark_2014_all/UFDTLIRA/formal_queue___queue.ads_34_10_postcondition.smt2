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
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__queue__mylists__list__capacity count_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) count_type (rec__queue__mylists__list__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__queue__mylists__list us_main_type)))))
(define-fun us_split_fields_List__projection ((a us_split_fields)) us_main_type (rec__queue__mylists__list a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 a))) (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 b)))) (= (us_main_eq (rec__queue__mylists__list (us_split_fields1 a)) (rec__queue__mylists__list (us_split_fields1 b))) true)) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const queue__mylists__list__capacity__first__bit Int)
(declare-const queue__mylists__list__capacity__last__bit Int)
(declare-const queue__mylists__list__capacity__position Int)
(assert (<= 0 queue__mylists__list__capacity__first__bit))
(assert (< queue__mylists__list__capacity__first__bit queue__mylists__list__capacity__last__bit))
(assert (<= 0 queue__mylists__list__capacity__position))
(declare-fun user_eq1 (us_rep us_rep) Bool)
(declare-const dummy1 us_rep)
(declare-datatypes () ((list__ref (mk_list__ref (list__content us_rep)))))
(define-fun list__ref___projection ((a list__ref)) us_rep (list__content a))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(define-fun dynamic_invariant ((temp___expr_165 Int) (temp___is_init_161 Bool) (temp___skip_constant_162 Bool) (temp___do_toplevel_163 Bool) (temp___do_typ_inv_164 Bool)) Bool (=> (or (= temp___is_init_161 true) (<= 0 2147483647)) (in_range1 temp___expr_165)))
(assert (forall ((container us_rep)) (! (let ((result (length container))) (and (<= result (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 container)))) (dynamic_invariant result true false true true))) :pattern ((length container)))))
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
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content a))
(declare-fun get (us_rep1 Int) Int)
(declare-fun get__function_guard (Int us_rep1 Int) Bool)
(declare-fun length1 (us_rep1) Int)
(declare-fun length__function_guard1 (Int us_rep1) Bool)
(define-fun last ((container us_rep1)) Int (+ 0 (length1 container)))
(declare-fun last__function_guard (Int us_rep1) Bool)
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= (- 2147483648) (element_typeqtint i)) (<= (element_typeqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq3 (element_type element_type) Bool)
(declare-const dummy3 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___2__projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun dynamic_invariant1 ((temp___expr_257 Int) (temp___is_init_253 Bool) (temp___skip_constant_254 Bool) (temp___do_toplevel_255 Bool) (temp___do_typ_inv_256 Bool)) Bool (=> (or (= temp___is_init_253 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_257)))
(declare-sort extended_index 0)
(declare-fun extended_indexqtint (extended_index) Int)
(assert (forall ((i extended_index)) (and (<= 0 (extended_indexqtint i)) (<= (extended_indexqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (extended_index extended_index) Bool)
(declare-const dummy4 extended_index)
(declare-datatypes () ((extended_index__ref (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index (extended_index__content a))
(define-fun dynamic_invariant2 ((temp___expr_264 Int) (temp___is_init_260 Bool) (temp___skip_constant_261 Bool) (temp___do_toplevel_262 Bool) (temp___do_typ_inv_263 Bool)) Bool (=> (or (= temp___is_init_260 true) (<= 0 2147483647)) (in_range3 temp___expr_264)))
(define-fun oeq ((left us_rep1) (right us_rep1)) Bool (and (= (length1 left) (length1 right)) (ite (forall ((n Int)) (=> (and (<= 1 n) (<= n (last left))) (= (get left n) (get right n)))) true false)))
(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)
(assert (forall ((a us_rep1) (b us_rep1)) (! (= (user_eq2 a b) (oeq a b)) :pattern ((user_eq2 a b)))))
(define-fun default_initial_assumption ((temp___expr_272 us_rep1) (temp___skip_top_level_273 Bool)) Bool (=> (not (= temp___skip_top_level_273 true)) (= (length1 temp___expr_272) 0)))
(assert (forall ((container us_rep1)) (forall ((position Int)) (! (=> (and (dynamic_invariant2 position true true true true) (and (<= 1 position) (<= position (last container)))) (dynamic_invariant1 (get container position) true false true true)) :pattern ((get container position))))))
(declare-fun model__ (us_rep) us_rep1)
(declare-fun model____function_guard (us_rep1 us_rep) Bool)
(assert (forall ((container us_rep)) (! (= (length1 (model__ container)) (length container)) :pattern ((model__ container)))))
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
(declare-fun user_eq5 (us_rep2 us_rep2) Bool)
(declare-const dummy5 us_rep2)
(declare-datatypes () ((map__ref (mk_map__ref (map__content us_rep2)))))
(define-fun map__ref___projection ((a map__ref)) us_rep2 (map__content a))
(declare-fun oeq1 (us_rep2 us_rep2) Bool)
(declare-fun oeq__function_guard1 (Bool us_rep2 us_rep2) Bool)
(declare-fun positions (us_rep) us_rep2)
(declare-fun positions__function_guard (us_rep2 us_rep) Bool)
(declare-fun copy (us_rep Int) us_rep)
(declare-fun copy__function_guard (us_rep us_rep Int) Bool)
(assert (forall ((source us_rep)) (forall ((capacity Int)) (! (=> (and (dynamic_invariant capacity true true true true) (or (= capacity 0) (<= (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 source))) capacity))) (let ((result (copy source capacity))) (and (and (= (oeq (model__ result) (model__ source)) true) (= (oeq1 (positions result) (positions source)) true)) (ite (= capacity 0) (= (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 result))) (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 source)))) (= (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 result))) capacity))))) :pattern ((copy source capacity))))))
(define-fun range_shifted ((left us_rep1) (right us_rep1) (fst Int) (lst Int) (offset Int)) Bool (and (ite (forall ((i Int)) (=> (and (<= fst i) (<= i lst)) (= (get left i) (get right (+ i offset))))) true false) (ite (forall ((i Int)) (=> (and (<= (+ fst offset) i) (<= i (+ lst offset))) (= (get left (- i offset)) (get right i)))) true false)))
(declare-fun range_shifted__function_guard (Bool us_rep1 us_rep1 Int Int Int) Bool)
(declare-fun p_positions_shifted (us_rep2 us_rep2 Int Int) Bool)
(declare-fun p_positions_shifted__function_guard (Bool us_rep2 us_rep2 Int Int) Bool)
(declare-fun first_element (us_rep) Int)
(declare-fun first_element__function_guard (Int us_rep) Bool)
(declare-fun is_empty (us_rep) Bool)
(declare-fun is_empty__function_guard (Bool us_rep) Bool)
(declare-sort element_type1 0)
(declare-fun element_typeqtint1 (element_type1) Int)
(assert (forall ((i element_type1)) (and (<= (- 2147483648) (element_typeqtint1 i)) (<= (element_typeqtint1 i) 2147483647))))
(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq6 (element_type1 element_type1) Bool)
(declare-const dummy6 element_type1)
(declare-datatypes () ((element_type__ref1 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref___projection ((a element_type__ref1)) element_type1 (element_type__content1 a))
(define-fun dynamic_invariant3 ((temp___expr_221 Int) (temp___is_init_217 Bool) (temp___skip_constant_218 Bool) (temp___do_toplevel_219 Bool) (temp___do_typ_inv_220 Bool)) Bool (=> (or (= temp___is_init_217 true) (<= (- 2147483648) 2147483647)) (in_range4 temp___expr_221)))
(assert (forall ((container us_rep)) (! (=> (not (= (is_empty container) true)) (let ((result (first_element container))) (and (= result (get (model__ container) 1)) (dynamic_invariant3 result true false true true)))) :pattern ((first_element container)))))
(declare-sort tcount_typeB 0)
(declare-fun tcount_typeBqtint (tcount_typeB) Int)
(assert (forall ((i tcount_typeB)) (and (<= (- 2147483648) (tcount_typeBqtint i)) (<= (tcount_typeBqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq7 (tcount_typeB tcount_typeB) Bool)
(declare-const dummy7 tcount_typeB)
(declare-datatypes () ((tcount_typeB__ref (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB (tcount_typeB__content a))
(declare-sort val__ 0)
(declare-fun val__qtint (val__) Int)
(assert (forall ((i val__)) (and (<= (- 2147483648) (val__qtint i)) (<= (val__qtint i) 2147483647))))
(define-fun in_range6 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq8 (val__ val__) Bool)
(declare-const dummy8 val__)
(declare-datatypes () ((val____ref (mk_val____ref (val____content val__)))))
(define-fun val____ref___projection ((a val____ref)) val__ (val____content a))
(define-fun dynamic_invariant4 ((temp___expr_214 Int) (temp___is_init_210 Bool) (temp___skip_constant_211 Bool) (temp___do_toplevel_212 Bool) (temp___do_typ_inv_213 Bool)) Bool (=> (or (= temp___is_init_210 true) (<= (- 2147483648) 2147483647)) (in_range6 temp___expr_214)))
(declare-const q us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const v Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const r__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__queue__mylists__cursor__node count_type)))))
(define-fun us_split_fields_Node__projection ((a us_split_fields2)) count_type (rec__queue__mylists__cursor__node a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep3 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___3__projection ((a us_rep3)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq3 ((a us_rep3) (b us_rep3)) Bool (ite (= (to_rep (rec__queue__mylists__cursor__node (us_split_fields3 a))) (to_rep (rec__queue__mylists__cursor__node (us_split_fields3 b)))) true false))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep3) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep3) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep3)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep3)) (<= 0 (object__alignment3 a))))
(declare-const queue__mylists__cursor__node__first__bit Int)
(declare-const queue__mylists__cursor__node__last__bit Int)
(declare-const queue__mylists__cursor__node__position Int)
(assert (<= 0 queue__mylists__cursor__node__first__bit))
(assert (< queue__mylists__cursor__node__first__bit queue__mylists__cursor__node__last__bit))
(assert (<= 0 queue__mylists__cursor__node__position))
(declare-fun user_eq9 (us_rep3 us_rep3) Bool)
(declare-const dummy9 us_rep3)
(declare-datatypes () ((cursor__ref (mk_cursor__ref (cursor__content us_rep3)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep3 (cursor__content a))
(define-fun default_initial_assumption1 ((temp___expr_235 us_rep3) (temp___skip_top_level_236 Bool)) Bool (= (to_rep (rec__queue__mylists__cursor__node (us_split_fields3 temp___expr_235))) 0))
(declare-const no_element us_rep3)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const rliteral count_type)
(assert (= (count_typeqtint rliteral) 0))
(assert (= no_element (mk___rep1 (mk___split_fields1 rliteral))))
(declare-sort positive_count_type 0)
(declare-fun positive_count_typeqtint (positive_count_type) Int)
(assert (forall ((i positive_count_type)) (and (<= 1 (positive_count_typeqtint i)) (<= (positive_count_typeqtint i) 2147483647))))
(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq10 (positive_count_type positive_count_type) Bool)
(declare-const dummy10 positive_count_type)
(declare-datatypes () ((positive_count_type__ref (mk_positive_count_type__ref (positive_count_type__content positive_count_type)))))
(define-fun positive_count_type__ref___projection ((a positive_count_type__ref)) positive_count_type (positive_count_type__content a))
(define-fun dynamic_invariant5 ((temp___expr_243 Int) (temp___is_init_239 Bool) (temp___skip_constant_240 Bool) (temp___do_toplevel_241 Bool) (temp___do_typ_inv_242 Bool)) Bool (=> (or (= temp___is_init_239 true) (<= 1 2147483647)) (in_range7 temp___expr_243)))
(declare-datatypes () ((key_type__ref (mk_key_type__ref (key_type__content us_rep3)))))
(define-fun key_type__ref___projection ((a key_type__ref)) us_rep3 (key_type__content a))
(declare-fun has_key (us_rep2 us_rep3) Bool)
(declare-fun has_key__function_guard (Bool us_rep2 us_rep3) Bool)
(declare-fun get1 (us_rep2 us_rep3) Int)
(declare-fun get__function_guard1 (Int us_rep2 us_rep3) Bool)
(declare-fun keys_included (us_rep2 us_rep2) Bool)
(declare-fun keys_included__function_guard (Bool us_rep2 us_rep2) Bool)
(declare-fun length2 (us_rep2) Int)
(declare-fun length__function_guard2 (Int us_rep2) Bool)
(declare-fun is_empty1 (us_rep2) Bool)
(declare-fun is_empty__function_guard1 (Bool us_rep2) Bool)
(define-fun default_initial_assumption2 ((temp___expr_294 us_rep2) (temp___skip_top_level_295 Bool)) Bool (=> (not (= temp___skip_top_level_295 true)) (and (= (is_empty1 temp___expr_294) true) (= (length2 temp___expr_294) 0))))
(define-fun default_initial_assumption3 ((temp___expr_280 us_rep3) (temp___skip_top_level_281 Bool)) Bool (= (to_rep (rec__queue__mylists__cursor__node (us_split_fields3 temp___expr_280))) 0))
(assert (forall ((small us_rep2) (big us_rep2)) (forall ((cut Int) (count Int)) (! (=> (and (dynamic_invariant5 cut true true true true) (dynamic_invariant count true true true true)) (= (= (p_positions_shifted small big cut count) true) (and (and (= (keys_included small big) true) (forall ((i us_rep3)) (=> (= (has_key small i) true) (ite (< (get1 small i) cut) (= (get1 big i) (get1 small i)) (= (- (get1 big i) count) (get1 small i)))))) (forall ((i us_rep3)) (=> (= (has_key big i) true) (or (= (has_key small i) true) (and (<= (- cut count) (- (get1 big i) count)) (<= (- (get1 big i) count) (- cut 1))))))))) :pattern ((p_positions_shifted small big cut count))))))
(assert (forall ((container us_rep)) (! (let ((result (positions container))) (and (not (= (has_key result no_element) true)) (forall ((i us_rep3)) (=> (= (has_key result i) true) (and (and (<= 1 (get1 result i)) (<= (get1 result i) (length container))) (forall ((j us_rep3)) (=> (= (has_key result j) true) (=> (= (get1 result i) (get1 result j)) (= (bool_eq3 i j) true))))))))) :pattern ((positions container)))))
(assert (forall ((container us_rep)) (! (= (= (is_empty container) true) (= (length container) 0)) :pattern ((is_empty container)))))
(assert (forall ((container us_rep1)) (! (let ((result (length1 container))) (and (<= (+ 0 result) 2147483647) (dynamic_invariant result true false true true))) :pattern ((length1 container)))))
(assert (forall ((container us_rep2)) (forall ((key us_rep3)) (! (=> (= (distinct 0 0) true) (=> (exists ((k us_rep3)) (and (= (has_key container k) true) (= (bool_eq3 k key) true))) (= (has_key container key) true))) :pattern ((has_key container key))))))
(declare-fun witness (us_rep2 us_rep3) Int)
(declare-fun witness__function_guard (Int us_rep2 us_rep3) Bool)
(declare-fun w_get (us_rep2 Int) Int)
(declare-fun w_get__function_guard (Int us_rep2 Int) Bool)
(declare-sort element_type2 0)
(declare-fun element_typeqtint2 (element_type2) Int)
(assert (forall ((i element_type2)) (and (<= 1 (element_typeqtint2 i)) (<= (element_typeqtint2 i) 2147483647))))
(define-fun in_range8 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)
(declare-fun user_eq11 (element_type2 element_type2) Bool)
(declare-const dummy11 element_type2)
(declare-datatypes () ((element_type__ref2 (mk_element_type__ref2 (element_type__content2 element_type2)))))
(define-fun element_type__ref___3__projection ((a element_type__ref2)) element_type2 (element_type__content2 a))
(define-fun dynamic_invariant6 ((temp___expr_286 Int) (temp___is_init_282 Bool) (temp___skip_constant_283 Bool) (temp___do_toplevel_284 Bool) (temp___do_typ_inv_285 Bool)) Bool (=> (or (= temp___is_init_282 true) (<= 1 2147483647)) (in_range8 temp___expr_286)))
(assert (forall ((container us_rep2)) (forall ((key us_rep3)) (! (=> (= (has_key container key) true) (let ((result (get1 container key))) (and (=> (= (distinct 0 0) true) (and (= result (w_get container (witness container key))) (forall ((k us_rep3)) (=> (= (has_key container k) true) (= (= (bool_eq3 k key) true) (= (witness container key) (witness container k))))))) (dynamic_invariant6 result true false true true)))) :pattern ((get1 container key))))))
(assert (forall ((container us_rep2)) (! (dynamic_invariant (length2 container) true false true true) :pattern ((length2 container)))))
(assert (forall ((left us_rep2) (right us_rep2)) (! (= (= (oeq1 left right) true) (and (forall ((key us_rep3)) (=> (= (has_key left key) true) (and (= (has_key right key) true) (= (get1 right key) (get1 left key))))) (forall ((key us_rep3)) (=> (= (has_key right key) true) (= (has_key left key) true))))) :pattern ((oeq1 left right)))))
(assert (forall ((container us_rep2)) (! (= (= (is_empty1 container) true) (forall ((key us_rep3)) (not (= (has_key container key) true)))) :pattern ((is_empty1 container)))))
(assert (forall ((left us_rep2) (right us_rep2)) (! (= (= (keys_included left right) true) (forall ((key us_rep3)) (=> (= (has_key left key) true) (= (has_key right key) true)))) :pattern ((keys_included left right)))))
(declare-fun has_witness (us_rep2 Int) Bool)
(declare-fun has_witness__function_guard (Bool us_rep2 Int) Bool)
(assert true)
(assert (forall ((container us_rep2)) (forall ((key us_rep3)) (! (=> (= (has_key container key) true) (let ((result (witness container key))) (and (= (has_witness container result) true) (dynamic_invariant result true false true true)))) :pattern ((witness container key))))))
(assert (forall ((container us_rep2)) (forall ((witness1 Int)) (! (=> (and (dynamic_invariant witness1 true true true true) (= (has_witness container witness1) true)) (dynamic_invariant6 (w_get container witness1) true false true true)) :pattern ((w_get container witness1))))))
(declare-const r__split_fields us_main_type)
(declare-const queue__enqueue__result count_type)
(declare-const queue__enqueue__result1 us_main_type)
(declare-const queue__enqueue__r__assume count_type)
(declare-const queue__enqueue__r__assume1 us_main_type)
(declare-const result us_main_type)
(declare-const r__split_fields1 us_main_type)
(declare-const r__split_fields2 us_main_type)
(declare-const result1 count_type)
(declare-const result2 us_main_type)
(declare-const queue__enqueue__result2 count_type)
(declare-const queue__enqueue__result3 us_main_type)
(declare-const queue__enqueue__result4 count_type)
(declare-const queue__enqueue__result5 us_main_type)
(declare-const queue__enqueue__result6 us_rep)
(declare-const r__split_fields3 us_split_fields__ref)
(declare-const queue__enqueue__result7 list__ref)
(declare-const r__split_fields4 us_split_fields)
(declare-const queue__enqueue__result8 us_rep)
(define-fun r__split_fields5 () us_split_fields (mk___split_fields r__split_fields2))
(define-fun r__split_fields6 () us_split_fields (mk___split_fields r__split_fields1))
(define-fun queue__enqueue__r__assume2 () us_rep (mk___rep (mk___split_discrs queue__enqueue__r__assume) (mk___split_fields queue__enqueue__r__assume1)))
(declare-const result3 count_type)
(declare-const result4 us_main_type)
(assert (in_range6 v))
(assert (< (length q) (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 q)))))
(assert (and (= queue__enqueue__r__assume2 (copy q 0)) (and (and (= (oeq (model__ queue__enqueue__r__assume2) (model__ q)) true) (= (oeq1 (positions queue__enqueue__r__assume2) (positions q)) true)) (= (to_rep queue__enqueue__r__assume) (to_rep (rec__queue__mylists__list__capacity (us_split_discrs1 q)))))))
(assert (= (mk___split_fields__ref (mk___split_fields result)) (mk___split_fields__ref (mk___split_fields r__split_fields))))
(assert (= queue__enqueue__r__assume1 r__split_fields1))
(assert (= r__split_discrs (mk___split_discrs queue__enqueue__r__assume)))
(assert (and (and (and (= (length (mk___rep r__split_discrs r__split_fields5)) (+ (length (mk___rep r__split_discrs r__split_fields6)) 1)) (= (range_shifted (model__ (mk___rep r__split_discrs r__split_fields6)) (model__ (mk___rep r__split_discrs r__split_fields5)) 1 (length (mk___rep r__split_discrs r__split_fields6)) 1) true)) (= (get (model__ (mk___rep r__split_discrs r__split_fields5)) 1) v)) (= (p_positions_shifted (positions (mk___rep r__split_discrs r__split_fields6)) (positions (mk___rep r__split_discrs r__split_fields5)) 1 1) true)))
(assert (= queue__enqueue__result4 queue__enqueue__result2))
(assert (= queue__enqueue__result5 queue__enqueue__result3))
(assert (= queue__enqueue__result6 (mk___rep (mk___split_discrs queue__enqueue__result2) (mk___split_fields queue__enqueue__result3))))
(assert (= (mk_list__ref (mk___rep (mk___split_discrs result1) (mk___split_fields result2))) (mk_list__ref (mk___rep (mk___split_discrs queue__enqueue__result) (mk___split_fields queue__enqueue__result1)))))
(assert (= r__split_discrs (mk___split_discrs queue__enqueue__result2)))
(assert (= queue__enqueue__result3 r__split_fields2))
(assert (= queue__enqueue__result7 (mk_list__ref (mk___rep (mk___split_discrs queue__enqueue__result4) (mk___split_fields queue__enqueue__result5)))))
(assert (= r__split_fields3 (mk___split_fields__ref r__split_fields5)))
(assert (= queue__enqueue__result8 queue__enqueue__result6))
(assert (= r__split_fields4 r__split_fields5))
(assert (= (mk___rep (mk___split_discrs result3) (mk___split_fields result4)) (list__content queue__enqueue__result7)))
(assert (not (= (first_element (list__content queue__enqueue__result7)) v)))
(check-sat)
(exit)
