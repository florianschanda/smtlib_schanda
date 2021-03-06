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
(declare-sort capacity_range 0)
(declare-fun capacity_rangeqtint (capacity_range) Int)
(assert (forall ((i capacity_range)) (and (<= 0 (capacity_rangeqtint i)) (<= (capacity_rangeqtint i) 1000))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (capacity_range capacity_range) Bool)
(declare-const dummy1 capacity_range)
(declare-datatypes () ((capacity_range__ref (mk_capacity_range__ref (capacity_range__content capacity_range)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) capacity_range (capacity_range__content a))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__amortized_queue__my_vectors__vector__capacity capacity_range)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) capacity_range (rec__amortized_queue__my_vectors__vector__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__amortized_queue__my_vectors__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type (rec__amortized_queue__my_vectors__vector a))
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
(declare-const amortized_queue__my_vectors__vector__capacity__first__bit Int)
(declare-const amortized_queue__my_vectors__vector__capacity__last__bit Int)
(declare-const amortized_queue__my_vectors__vector__capacity__position Int)
(assert (<= 0 amortized_queue__my_vectors__vector__capacity__first__bit))
(assert (< amortized_queue__my_vectors__vector__capacity__first__bit amortized_queue__my_vectors__vector__capacity__last__bit))
(assert (<= 0 amortized_queue__my_vectors__vector__capacity__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content a))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(define-fun to_rep ((x capacity_range)) Int (capacity_rangeqtint x))
(declare-fun of_rep (Int) capacity_range)
(assert (forall ((x capacity_range)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x capacity_range)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun capacity ((container us_rep)) Int (ite (= (distinct 1 0) true) (to_rep (rec__amortized_queue__my_vectors__vector__capacity (us_split_discrs1 container))) 1000))
(declare-fun capacity__function_guard (Int us_rep) Bool)
(define-fun dynamic_invariant ((temp___expr_249 Int) (temp___is_init_245 Bool) (temp___skip_constant_246 Bool) (temp___do_toplevel_247 Bool) (temp___do_typ_inv_248 Bool)) Bool (=> (or (= temp___is_init_245 true) (<= 0 1000)) (in_range2 temp___expr_249)))
(assert (forall ((container us_rep)) (! (let ((result (length container))) (and (<= result (capacity container)) (dynamic_invariant result true false true true))) :pattern ((length container)))))
(declare-sort us_main_type1 0)
(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)
(declare-sort us_rep1 0)
(declare-fun bool_eq (us_rep1 us_rep1) Bool)
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
(declare-fun length1 (us_rep1) Int)
(declare-fun length__function_guard1 (Int us_rep1) Bool)
(define-fun last ((container us_rep1)) Int (+ 0 (length1 container)))
(declare-fun last__function_guard (Int us_rep1) Bool)
(declare-fun model__ (us_rep) us_rep1)
(declare-fun model____function_guard (us_rep1 us_rep) Bool)
(define-fun last_index ((container us_rep)) Int (last (model__ container)))
(declare-fun last_index__function_guard (Int us_rep) Bool)
(declare-sort extended_index 0)
(declare-fun extended_indexqtint (extended_index) Int)
(assert (forall ((i extended_index)) (and (<= 0 (extended_indexqtint i)) (<= (extended_indexqtint i) 1001))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 1001)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (extended_index extended_index) Bool)
(declare-const dummy4 extended_index)
(declare-datatypes () ((extended_index__ref (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index (extended_index__content a))
(define-fun dynamic_invariant1 ((temp___expr_242 Int) (temp___is_init_238 Bool) (temp___skip_constant_239 Bool) (temp___do_toplevel_240 Bool) (temp___do_typ_inv_241 Bool)) Bool (=> (or (= temp___is_init_238 true) (<= 0 1001)) (in_range3 temp___expr_242)))
(declare-fun get (us_rep1 Int) Int)
(declare-fun get__function_guard (Int us_rep1 Int) Bool)
(define-fun element ((container us_rep) (index Int)) Int (get (model__ container) index))
(declare-fun element__function_guard (Int us_rep Int) Bool)
(declare-fun first_index__function_guard (Int us_rep) Bool)
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= (- 2147483648) (element_typeqtint i)) (<= (element_typeqtint i) 2147483647))))
(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (element_type element_type) Bool)
(declare-const dummy5 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun dynamic_invariant2 ((temp___expr_235 Int) (temp___is_init_231 Bool) (temp___skip_constant_232 Bool) (temp___do_toplevel_233 Bool) (temp___do_typ_inv_234 Bool)) Bool (=> (or (= temp___is_init_231 true) (<= (- 2147483648) 2147483647)) (in_range4 temp___expr_235)))
(define-fun olt ((left us_rep1) (right us_rep1)) Bool (and (< (length1 left) (length1 right)) (ite (forall ((n Int)) (=> (and (<= 1 n) (<= n (last left))) (= (get left n) (get right n)))) true false)))
(declare-fun olt__function_guard (Bool us_rep1 us_rep1) Bool)
(declare-sort tcount_typeB 0)
(declare-fun tcount_typeBqtint (tcount_typeB) Int)
(assert (forall ((i tcount_typeB)) (and (<= (- 2147483648) (tcount_typeBqtint i)) (<= (tcount_typeBqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (tcount_typeB tcount_typeB) Bool)
(declare-const dummy6 tcount_typeB)
(declare-datatypes () ((tcount_typeB__ref (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB (tcount_typeB__content a))
(declare-sort index_type 0)
(declare-fun index_typeqtint (index_type) Int)
(assert (forall ((i index_type)) (and (<= 1 (index_typeqtint i)) (<= (index_typeqtint i) 1000))))
(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq7 (index_type index_type) Bool)
(declare-const dummy7 index_type)
(declare-datatypes () ((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type (index_type__content a))
(declare-const left us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const right us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const r2b Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun in_range7 ((rec__amortized_queue__my_vectors__vector__capacity1 Int) (a us_rep)) Bool (= rec__amortized_queue__my_vectors__vector__capacity1 (to_rep (rec__amortized_queue__my_vectors__vector__capacity (us_split_discrs1 a)))))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const amortized_queue__my_vectors__vector__capacity__first__bit1 Int)
(declare-const amortized_queue__my_vectors__vector__capacity__last__bit1 Int)
(declare-const amortized_queue__my_vectors__vector__capacity__position1 Int)
(assert (<= 0 amortized_queue__my_vectors__vector__capacity__first__bit1))
(assert (< amortized_queue__my_vectors__vector__capacity__first__bit1 amortized_queue__my_vectors__vector__capacity__last__bit1))
(assert (<= 0 amortized_queue__my_vectors__vector__capacity__position1))
(declare-fun user_eq8 (us_rep us_rep) Bool)
(declare-const dummy8 us_rep)
(declare-datatypes () ((tresultS__ref (mk_tresultS__ref (tresultS__content us_rep)))))
(define-fun tresultS__ref___projection ((a tresultS__ref)) us_rep (tresultS__content a))
(declare-fun is_empty (us_rep) Bool)
(declare-fun is_empty__function_guard (Bool us_rep) Bool)
(define-fun dynamic_invariant3 ((temp___expr_454 us_rep) (temp___is_init_450 Bool) (temp___skip_constant_451 Bool) (temp___do_toplevel_452 Bool) (temp___do_typ_inv_453 Bool)) Bool (=> (not (= temp___skip_constant_451 true)) (in_range7 r2b temp___expr_454)))
(define-fun default_initial_assumption ((temp___expr_456 us_rep) (temp___skip_top_level_457 Bool)) Bool (and (= (to_rep (rec__amortized_queue__my_vectors__vector__capacity (us_split_discrs1 temp___expr_456))) r2b) (=> (not (= temp___skip_top_level_457 true)) (= (is_empty temp___expr_456) true))))
(declare-const result____split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const r4b Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq9 (integer integer) Bool)
(declare-const dummy9 integer)
(declare-datatypes () ((t5b__ref (mk_t5b__ref (t5b__content integer)))))
(define-fun t5b__ref___projection ((a t5b__ref)) integer (t5b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const r10b Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)
(declare-fun user_eq10 (integer integer) Bool)
(declare-const dummy10 integer)
(declare-datatypes () ((t11b__ref (mk_t11b__ref (t11b__content integer)))))
(define-fun t11b__ref___projection ((a t11b__ref)) integer (t11b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(define-fun dynamic_invariant4 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-sort count_type 0)
(declare-fun count_typeqtint (count_type) Int)
(assert (forall ((i count_type)) (and (<= 0 (count_typeqtint i)) (<= (count_typeqtint i) 2147483647))))
(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)
(declare-fun user_eq11 (count_type count_type) Bool)
(declare-const dummy11 count_type)
(declare-datatypes () ((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type (count_type__content a))
(define-fun dynamic_invariant5 ((temp___expr_165 Int) (temp___is_init_161 Bool) (temp___skip_constant_162 Bool) (temp___do_toplevel_163 Bool) (temp___do_typ_inv_164 Bool)) Bool (=> (or (= temp___is_init_161 true) (<= 0 2147483647)) (in_range8 temp___expr_165)))
(define-fun oeq ((left1 us_rep1) (right1 us_rep1)) Bool (and (= (length1 left1) (length1 right1)) (ite (forall ((n Int)) (=> (and (<= 1 n) (<= n (last left1))) (= (get left1 n) (get right1 n)))) true false)))
(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)
(assert (forall ((a us_rep1) (b us_rep1)) (! (= (user_eq3 a b) (oeq a b)) :pattern ((user_eq3 a b)))))
(define-fun default_initial_assumption1 ((temp___expr_288 us_rep1) (temp___skip_top_level_289 Bool)) Bool (=> (not (= temp___skip_top_level_289 true)) (= (length1 temp___expr_288) 0)))
(assert (forall ((container us_rep)) (! (= (length1 (model__ container)) (length container)) :pattern ((model__ container)))))
(assert (forall ((container us_rep)) (! (= (= (is_empty container) true) (= (length container) 0)) :pattern ((is_empty container)))))
(define-fun dynamic_invariant6 ((temp___expr_228 Int) (temp___is_init_224 Bool) (temp___skip_constant_225 Bool) (temp___do_toplevel_226 Bool) (temp___do_typ_inv_227 Bool)) Bool (=> (or (= temp___is_init_224 true) (<= 1 1000)) (in_range6 temp___expr_228)))
(declare-sort extended_index1 0)
(declare-fun extended_indexqtint1 (extended_index1) Int)
(assert (forall ((i extended_index1)) (and (<= 0 (extended_indexqtint1 i)) (<= (extended_indexqtint1 i) 1000))))
(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))
(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)
(declare-fun user_eq12 (extended_index1 extended_index1) Bool)
(declare-const dummy12 extended_index1)
(declare-datatypes () ((extended_index__ref1 (mk_extended_index__ref1 (extended_index__content1 extended_index1)))))
(define-fun extended_index__ref___2__projection ((a extended_index__ref1)) extended_index1 (extended_index__content1 a))
(define-fun dynamic_invariant7 ((temp___expr_280 Int) (temp___is_init_276 Bool) (temp___skip_constant_277 Bool) (temp___do_toplevel_278 Bool) (temp___do_typ_inv_279 Bool)) Bool (=> (or (= temp___is_init_276 true) (<= 0 1000)) (in_range9 temp___expr_280)))
(assert (forall ((container us_rep1)) (! (let ((result (length1 container))) (and (<= (+ 0 result) 1000) (dynamic_invariant5 result true false true true))) :pattern ((length1 container)))))
(declare-sort element_type1 0)
(declare-fun element_typeqtint1 (element_type1) Int)
(assert (forall ((i element_type1)) (and (<= (- 2147483648) (element_typeqtint1 i)) (<= (element_typeqtint1 i) 2147483647))))
(define-fun in_range10 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE11 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check11 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE11 (us_image) Int)
(declare-fun user_eq13 (element_type1 element_type1) Bool)
(declare-const dummy13 element_type1)
(declare-datatypes () ((element_type__ref1 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref___2__projection ((a element_type__ref1)) element_type1 (element_type__content1 a))
(define-fun dynamic_invariant8 ((temp___expr_273 Int) (temp___is_init_269 Bool) (temp___skip_constant_270 Bool) (temp___do_toplevel_271 Bool) (temp___do_typ_inv_272 Bool)) Bool (=> (or (= temp___is_init_269 true) (<= (- 2147483648) 2147483647)) (in_range10 temp___expr_273)))
(assert (forall ((container us_rep1)) (forall ((position Int)) (! (=> (and (dynamic_invariant7 position true true true true) (and (<= 1 position) (<= position (last container)))) (dynamic_invariant8 (get container position) true false true true)) :pattern ((get container position))))))
(declare-const result____split_fields us_main_type)
(declare-const idx Int)
(declare-const idx1 Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const amortized_queue__Oconcat__R1b__R2b__assume Int)
(declare-const us Int)
(declare-const amortized_queue__Oconcat__L_1__R4b__assume Int)
(declare-const temp___543 Int)
(declare-const temp___542 capacity_range)
(declare-const temp___5421 us_main_type)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const amortized_queue__Oconcat__L_2__R10b__assume Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const i Int)
(declare-const o6 Int)
(declare-const o7 Int)
(declare-const o8 Int)
(declare-const o9 Int)
(declare-const o10 Int)
(declare-const o11 Int)
(declare-const result____split_fields1 us_main_type)
(declare-const result Int)
(declare-const idx2 Int)
(declare-const amortized_queue__my_vectors__append__2__container__fields us_main_type)
(declare-const result1 us_main_type)
(declare-const result____split_fields2 us_main_type)
(declare-const result____split_fields3 us_main_type)
(declare-const idx3 Int)
(declare-const result____split_fields4 us_split_fields__ref)
(declare-const idx4 int__ref)
(declare-const result____split_fields5 us_split_fields)
(declare-const idx5 Int)
(declare-const result____split_fields6 us_split_fields__ref)
(declare-const idx6 int__ref)
(declare-const result____split_fields7 us_split_fields)
(declare-const idx7 Int)
(declare-const result2 int__ref)
(declare-const idx8 Int)
(declare-const amortized_queue__my_vectors__append__2__container__fields1 us_split_fields)
(declare-const result3 us_split_fields__ref)
(declare-const result____split_fields8 us_split_fields)
(declare-const result____split_fields9 us_split_fields)
(declare-const idx9 Int)
(define-fun result____split_fields10 () us_split_fields (mk___split_fields result____split_fields3))
(define-fun amortized_queue__my_vectors__append__2__container__fields2 () us_split_fields (mk___split_fields amortized_queue__my_vectors__append__2__container__fields))
(define-fun result____split_fields11 () us_split_fields__ref (mk___split_fields__ref (mk___split_fields result____split_fields)))
(assert (<= (+ (length left) (length right)) 1000))
(assert (and (= o (length right)) (and (in_range2 o) (<= o (capacity right)))))
(assert (and (= o1 (length left)) (and (in_range2 o1) (<= o1 (capacity left)))))
(assert (= amortized_queue__Oconcat__R1b__R2b__assume (+ o1 o)))
(assert (= amortized_queue__Oconcat__R1b__R2b__assume r2b))
(assert (in_range5 r2b))
(assert (and (= us r2b) (in_range2 r2b)))
(assert (default_initial_assumption (mk___rep result____split_discrs (mk___split_fields result____split_fields)) false))
(assert (= r2b (to_rep (rec__amortized_queue__my_vectors__vector__capacity result____split_discrs))))
(assert (and (= amortized_queue__Oconcat__L_1__R4b__assume (last (model__ left))) (and (in_range3 amortized_queue__Oconcat__L_1__R4b__assume) (= amortized_queue__Oconcat__L_1__R4b__assume (last (model__ left))))))
(assert (= amortized_queue__Oconcat__L_1__R4b__assume r4b))
(assert (in_range3 r4b))
(assert (= (mk_int__ref result) (mk_int__ref idx)))
(assert (= idx2 1))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= temp___543 idx2)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (and (= result____split_discrs (mk___split_discrs temp___542)) (= result____split_fields temp___5421))))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (and (= o2 idx2) (in_range6 idx2))))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (and (= o3 (get (model__ left) o2)) (and (in_range4 o3) (= o3 (get (model__ left) o2))))))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (and (and (= (length (mk___rep result____split_discrs amortized_queue__my_vectors__append__2__container__fields2)) (+ (length (mk___rep result____split_discrs (mk___split_fields result____split_fields))) 1)) (= (olt (model__ (mk___rep result____split_discrs (mk___split_fields result____split_fields))) (model__ (mk___rep result____split_discrs amortized_queue__my_vectors__append__2__container__fields2))) true)) (= (get (model__ (mk___rep result____split_discrs amortized_queue__my_vectors__append__2__container__fields2)) (+ (last (model__ (mk___rep result____split_discrs (mk___split_fields result____split_fields)))) 1)) o3))))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= (mk___split_fields__ref (mk___split_fields result1)) result____split_fields11)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= (mk___split_fields result____split_fields2) amortized_queue__my_vectors__append__2__container__fields2)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= (length (mk___rep result____split_discrs result____split_fields10)) idx3)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (forall ((i1 Int)) (=> (and (<= 1 i1) (<= i1 idx3)) (= (get (model__ (mk___rep result____split_discrs result____split_fields10)) i1) (get (model__ left) i1))))))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (and (=> (<= 1 r4b) (dynamic_property 1 r4b idx3)) (and (<= 1 idx3) (<= idx3 r4b)))))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= idx3 r4b)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= idx4 (mk_int__ref idx3))))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= result____split_fields4 (mk___split_fields__ref result____split_fields10))))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= idx5 idx3)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= result____split_fields5 result____split_fields10)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= idx6 idx4)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= result____split_fields6 result____split_fields4)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= idx7 idx5)))
(assert (=> (and (<= 1 idx2) (<= idx2 r4b)) (= result____split_fields7 result____split_fields5)))
(assert (=> (not (and (<= 1 idx2) (<= idx2 r4b))) (= idx6 (mk_int__ref idx2))))
(assert (=> (not (and (<= 1 idx2) (<= idx2 r4b))) (= result____split_fields6 result____split_fields11)))
(assert (=> (not (and (<= 1 idx2) (<= idx2 r4b))) (= idx7 idx2)))
(assert (=> (not (and (<= 1 idx2) (<= idx2 r4b))) (= result____split_fields7 (mk___split_fields result____split_fields1))))
(assert (= (length (mk___rep result____split_discrs (us_split_fields__content result____split_fields6))) (last (model__ left))))
(assert (and (= amortized_queue__Oconcat__L_2__R10b__assume (last (model__ right))) (and (in_range3 amortized_queue__Oconcat__L_2__R10b__assume) (= amortized_queue__Oconcat__L_2__R10b__assume (last (model__ right))))))
(assert (= amortized_queue__Oconcat__L_2__R10b__assume r10b))
(assert (in_range3 r10b))
(assert (= result2 (mk_int__ref idx1)))
(assert (= idx8 1))
(assert (<= 1 idx8))
(assert (<= idx8 r10b))
(assert (and (= o4 idx8) (in_range6 idx8)))
(assert (and (= o5 (get (model__ right) o4)) (and (in_range4 o5) (= o5 (get (model__ right) o4)))))
(assert (and (and (= (length (mk___rep result____split_discrs amortized_queue__my_vectors__append__2__container__fields1)) (+ (length (mk___rep result____split_discrs (us_split_fields__content result____split_fields6))) 1)) (= (olt (model__ (mk___rep result____split_discrs (us_split_fields__content result____split_fields6))) (model__ (mk___rep result____split_discrs amortized_queue__my_vectors__append__2__container__fields1))) true)) (= (get (model__ (mk___rep result____split_discrs amortized_queue__my_vectors__append__2__container__fields1)) (+ (last (model__ (mk___rep result____split_discrs (us_split_fields__content result____split_fields6)))) 1)) o5)))
(assert (= result3 result____split_fields6))
(assert (= result____split_fields8 amortized_queue__my_vectors__append__2__container__fields1))
(assert (= (length (mk___rep result____split_discrs result____split_fields9)) (+ (last (model__ left)) idx9)))
(assert (forall ((i1 Int)) (=> (and (<= 1 i1) (<= i1 (last (model__ left)))) (= (get (model__ (mk___rep result____split_discrs result____split_fields9)) i1) (get (model__ left) i1)))))
(assert (forall ((i1 Int)) (=> (and (<= 1 i1) (<= i1 idx9)) (= (get (model__ (mk___rep result____split_discrs result____split_fields9)) (+ (last (model__ left)) i1)) (get (model__ right) i1)))))
(assert (and (=> (<= 1 r10b) (dynamic_property1 1 r10b idx9)) (and (<= 1 idx9) (<= idx9 r10b))))
(assert (<= 1 i))
(assert (<= i idx9))
(assert (and (= o10 i) (in_range6 i)))
(assert (and (= o11 (get (model__ right) o10)) (and (in_range4 o11) (= o11 (get (model__ right) o10)))))
(assert (and (= o6 (last (model__ left))) (and (in_range3 o6) (= o6 (last (model__ left))))))
(assert (= o7 (+ o6 i)))
(assert (and (= o8 o7) (in_range1 o7)))
(assert (and (= o9 o8) (in_range6 o8)))
(assert (not (<= 1 o9)))
(check-sat)
(exit)
