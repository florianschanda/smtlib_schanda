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
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep (sequence__content a))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(define-fun last ((container us_rep)) Int (+ 0 (length container)))
(declare-fun last__function_guard (Int us_rep) Bool)
(declare-fun get (us_rep Int) Int)
(declare-fun get__function_guard (Int us_rep Int) Bool)
(define-fun oeq ((left us_rep) (right us_rep)) Bool (and (= (length left) (length right)) (ite (forall ((n Int)) (=> (and (<= 1 n) (<= n (last left))) (= (get left n) (get right n)))) true false)))
(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)
(declare-sort capacity_range 0)
(declare-fun capacity_rangeqtint (capacity_range) Int)
(assert (forall ((i capacity_range)) (and (<= 0 (capacity_rangeqtint i)) (<= (capacity_rangeqtint i) 100))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (capacity_range capacity_range) Bool)
(declare-const dummy1 capacity_range)
(declare-datatypes () ((capacity_range__ref (mk_capacity_range__ref (capacity_range__content capacity_range)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) capacity_range (capacity_range__content a))
(declare-sort us_main_type1 0)
(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__p__my_vectors__vector__capacity capacity_range)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) capacity_range (rec__p__my_vectors__vector__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__p__my_vectors__vector us_main_type1)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type1 (rec__p__my_vectors__vector a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep1 (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep1)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep1)) us_split_fields (us_split_fields1 a))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const p__my_vectors__vector__capacity__first__bit Int)
(declare-const p__my_vectors__vector__capacity__last__bit Int)
(declare-const p__my_vectors__vector__capacity__position Int)
(assert (<= 0 p__my_vectors__vector__capacity__first__bit))
(assert (< p__my_vectors__vector__capacity__first__bit p__my_vectors__vector__capacity__last__bit))
(assert (<= 0 p__my_vectors__vector__capacity__position))
(declare-fun user_eq2 (us_rep1 us_rep1) Bool)
(declare-const dummy2 us_rep1)
(declare-datatypes () ((vector__ref (mk_vector__ref (vector__content us_rep1)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep1 (vector__content a))
(declare-fun model__ (us_rep1) us_rep)
(declare-fun model____function_guard (us_rep us_rep1) Bool)
(declare-fun length1 (us_rep1) Int)
(declare-fun length__function_guard1 (Int us_rep1) Bool)
(assert (forall ((a us_rep) (b us_rep)) (! (= (user_eq a b) (oeq a b)) :pattern ((user_eq a b)))))
(define-fun default_initial_assumption ((temp___expr_288 us_rep) (temp___skip_top_level_289 Bool)) Bool (=> (not (= temp___skip_top_level_289 true)) (= (length temp___expr_288) 0)))
(assert (forall ((container us_rep1)) (! (= (length (model__ container)) (length1 container)) :pattern ((model__ container)))))
(define-fun last_index ((container us_rep1)) Int (last (model__ container)))
(declare-fun last_index__function_guard (Int us_rep1) Bool)
(declare-sort extended_index 0)
(declare-fun extended_indexqtint (extended_index) Int)
(assert (forall ((i extended_index)) (and (<= 0 (extended_indexqtint i)) (<= (extended_indexqtint i) 101))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 101)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq3 (extended_index extended_index) Bool)
(declare-const dummy3 extended_index)
(declare-datatypes () ((extended_index__ref (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index (extended_index__content a))
(define-fun dynamic_invariant ((temp___expr_242 Int) (temp___is_init_238 Bool) (temp___skip_constant_239 Bool) (temp___do_toplevel_240 Bool) (temp___do_typ_inv_241 Bool)) Bool (=> (or (= temp___is_init_238 true) (<= 0 101)) (in_range2 temp___expr_242)))
(declare-fun copy (us_rep1 Int) us_rep1)
(declare-fun copy__function_guard (us_rep1 us_rep1 Int) Bool)
(define-fun dynamic_invariant1 ((temp___expr_249 Int) (temp___is_init_245 Bool) (temp___skip_constant_246 Bool) (temp___do_toplevel_247 Bool) (temp___do_typ_inv_248 Bool)) Bool (=> (or (= temp___is_init_245 true) (<= 0 100)) (in_range1 temp___expr_249)))
(define-fun to_rep ((x capacity_range)) Int (capacity_rangeqtint x))
(declare-fun of_rep (Int) capacity_range)
(assert (forall ((x capacity_range)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x capacity_range)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(assert (forall ((source us_rep1)) (forall ((capacity Int)) (! (=> (and (dynamic_invariant1 capacity true true true true) (=> (= (distinct 1 0) true) (or (= capacity 0) (<= (length1 source) capacity)))) (let ((result (copy source capacity))) (and (= (oeq (model__ result) (model__ source)) true) (ite (= capacity 0) (= (to_rep (rec__p__my_vectors__vector__capacity (us_split_discrs1 result))) (length1 source)) (= (to_rep (rec__p__my_vectors__vector__capacity (us_split_discrs1 result))) capacity))))) :pattern ((copy source capacity))))))
(declare-fun first_index__function_guard (Int us_rep1) Bool)
(declare-sort index_type 0)
(declare-fun index_typeqtint (index_type) Int)
(assert (forall ((i index_type)) (and (<= 1 (index_typeqtint i)) (<= (index_typeqtint i) 100))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (index_type index_type) Bool)
(declare-const dummy4 index_type)
(declare-datatypes () ((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___2__projection ((a index_type__ref)) index_type (index_type__content a))
(define-fun dynamic_invariant2 ((temp___expr_228 Int) (temp___is_init_224 Bool) (temp___skip_constant_225 Bool) (temp___do_toplevel_226 Bool) (temp___do_typ_inv_227 Bool)) Bool (=> (or (= temp___is_init_224 true) (<= 1 100)) (in_range3 temp___expr_228)))
(define-fun element ((container us_rep1) (index Int)) Int (get (model__ container) index))
(declare-fun element__function_guard (Int us_rep1 Int) Bool)
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= 1 (element_typeqtint i)) (<= (element_typeqtint i) 100))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (element_type element_type) Bool)
(declare-const dummy5 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___2__projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun dynamic_invariant3 ((temp___expr_235 Int) (temp___is_init_231 Bool) (temp___skip_constant_232 Bool) (temp___do_toplevel_233 Bool) (temp___do_typ_inv_234 Bool)) Bool (=> (or (= temp___is_init_231 true) (<= 1 100)) (in_range4 temp___expr_235)))
(define-fun equal_except__2 ((left us_rep) (right us_rep) (x Int) (y Int)) Bool (and (= (length left) (length right)) (ite (forall ((i Int)) (=> (and (<= 1 i) (<= i (last left))) (=> (and (not (= i x)) (not (= i y))) (= (get left i) (get right i))))) true false)))
(declare-fun equal_except__2__function_guard (Bool us_rep us_rep Int Int) Bool)
(define-fun m_elements_swapped ((left us_rep) (right us_rep) (x Int) (y Int)) Bool (and (and (and (= (length left) (length right)) (= (get left x) (get right y))) (= (get left y) (get right x))) (equal_except__2 left right x y)))
(declare-fun m_elements_swapped__function_guard (Bool us_rep us_rep Int Int) Bool)
(declare-sort index_type1 0)
(declare-fun index_typeqtint1 (index_type1) Int)
(assert (forall ((i index_type1)) (and (<= 1 (index_typeqtint1 i)) (<= (index_typeqtint1 i) 100))))
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (index_type1 index_type1) Bool)
(declare-const dummy6 index_type1)
(declare-datatypes () ((index_type__ref1 (mk_index_type__ref1 (index_type__content1 index_type1)))))
(define-fun index_type__ref___projection ((a index_type__ref1)) index_type1 (index_type__content1 a))
(define-fun dynamic_invariant4 ((temp___expr_221 Int) (temp___is_init_217 Bool) (temp___skip_constant_218 Bool) (temp___do_toplevel_219 Bool) (temp___do_typ_inv_220 Bool)) Bool (=> (or (= temp___is_init_217 true) (<= 1 100)) (in_range5 temp___expr_221)))
(declare-const l__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const i1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const i2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const l_in us_rep1)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-sort count_type 0)
(declare-fun count_typeqtint (count_type) Int)
(assert (forall ((i count_type)) (and (<= 0 (count_typeqtint i)) (<= (count_typeqtint i) 2147483647))))
(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq7 (count_type count_type) Bool)
(declare-const dummy7 count_type)
(declare-datatypes () ((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type (count_type__content a))
(define-fun dynamic_invariant5 ((temp___expr_165 Int) (temp___is_init_161 Bool) (temp___skip_constant_162 Bool) (temp___do_toplevel_163 Bool) (temp___do_typ_inv_164 Bool)) Bool (=> (or (= temp___is_init_161 true) (<= 0 2147483647)) (in_range6 temp___expr_165)))
(define-fun capacity ((container us_rep1)) Int (ite (= (distinct 1 0) true) (to_rep (rec__p__my_vectors__vector__capacity (us_split_discrs1 container))) 100))
(declare-fun capacity__function_guard (Int us_rep1) Bool)
(assert (forall ((container us_rep1)) (! (let ((result (length1 container))) (and (<= result (capacity container)) (dynamic_invariant1 result true false true true))) :pattern ((length1 container)))))
(declare-sort extended_index1 0)
(declare-fun extended_indexqtint1 (extended_index1) Int)
(assert (forall ((i extended_index1)) (and (<= 0 (extended_indexqtint1 i)) (<= (extended_indexqtint1 i) 100))))
(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq8 (extended_index1 extended_index1) Bool)
(declare-const dummy8 extended_index1)
(declare-datatypes () ((extended_index__ref1 (mk_extended_index__ref1 (extended_index__content1 extended_index1)))))
(define-fun extended_index__ref___2__projection ((a extended_index__ref1)) extended_index1 (extended_index__content1 a))
(define-fun dynamic_invariant6 ((temp___expr_280 Int) (temp___is_init_276 Bool) (temp___skip_constant_277 Bool) (temp___do_toplevel_278 Bool) (temp___do_typ_inv_279 Bool)) Bool (=> (or (= temp___is_init_276 true) (<= 0 100)) (in_range7 temp___expr_280)))
(assert (forall ((container us_rep)) (! (let ((result (length container))) (and (<= (+ 0 result) 100) (dynamic_invariant5 result true false true true))) :pattern ((length container)))))
(declare-sort element_type1 0)
(declare-fun element_typeqtint1 (element_type1) Int)
(assert (forall ((i element_type1)) (and (<= 1 (element_typeqtint1 i)) (<= (element_typeqtint1 i) 100))))
(define-fun in_range8 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)
(declare-fun user_eq9 (element_type1 element_type1) Bool)
(declare-const dummy9 element_type1)
(declare-datatypes () ((element_type__ref1 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref___3__projection ((a element_type__ref1)) element_type1 (element_type__content1 a))
(define-fun dynamic_invariant7 ((temp___expr_273 Int) (temp___is_init_269 Bool) (temp___skip_constant_270 Bool) (temp___do_toplevel_271 Bool) (temp___do_typ_inv_272 Bool)) Bool (=> (or (= temp___is_init_269 true) (<= 1 100)) (in_range8 temp___expr_273)))
(assert (forall ((container us_rep)) (forall ((position Int)) (! (=> (and (dynamic_invariant6 position true true true true) (and (<= 1 position) (<= position (last container)))) (dynamic_invariant7 (get container position) true false true true)) :pattern ((get container position))))))
(assert (not true))
(check-sat)
(exit)
