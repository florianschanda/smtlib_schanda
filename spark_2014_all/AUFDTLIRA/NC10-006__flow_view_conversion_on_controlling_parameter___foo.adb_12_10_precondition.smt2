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
(declare-sort log_count 0)
(declare-fun log_countqtint (log_count) Int)
(assert (forall ((i log_count)) (and (<= 0 (log_countqtint i)) (<= (log_countqtint i) 10000))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 10000)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (log_count log_count) Bool)
(declare-const dummy log_count)
(declare-datatypes () ((log_count__ref (mk_log_count__ref (log_count__content log_count)))))
(define-fun log_count__ref___projection ((a log_count__ref)) log_count (log_count__content a))
(define-fun to_rep ((x log_count)) Int (log_countqtint x))
(declare-fun of_rep (Int) log_count)
(assert (forall ((x log_count)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x log_count)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (integer integer) Bool)
(declare-const dummy1 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const dummy2 (Array Int integer))
(declare-const value__size Int)
(declare-fun object__size ((Array Int integer)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int integer)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int integer)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))
(declare-fun user_eq2 ((Array Int integer) (Array Int integer)) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__logging__log_type__log_data (Array Int integer)) (rec__logging__log_type__log_size log_count) (rec__ext__ us_private)))))
(define-fun us_split_fields_Log_Data__projection ((a us_split_fields)) (Array Int integer) (rec__logging__log_type__log_data a))
(define-fun us_split_fields_Log_Size__projection ((a us_split_fields)) log_count (rec__logging__log_type__log_size a))
(define-fun us_split_fields___projection ((a us_split_fields)) us_private (rec__ext__ a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields) (attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___2__projection ((a us_rep)) Int (attr__tag a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (= (bool_eq (rec__logging__log_type__log_data (us_split_fields1 a)) 1 10000 (rec__logging__log_type__log_data (us_split_fields1 b)) 1 10000) true) (= (to_rep (rec__logging__log_type__log_size (us_split_fields1 a))) (to_rep (rec__logging__log_type__log_size (us_split_fields1 b))))) true false))
(declare-fun us_dispatch_eq (us_rep us_rep) Bool)
(declare-const us_tag Int)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const logging__log_type__log_data__first__bit Int)
(declare-const logging__log_type__log_data__last__bit Int)
(declare-const logging__log_type__log_data__position Int)
(assert (<= 0 logging__log_type__log_data__first__bit))
(assert (< logging__log_type__log_data__first__bit logging__log_type__log_data__last__bit))
(assert (<= 0 logging__log_type__log_data__position))
(declare-const logging__log_type__log_size__first__bit Int)
(declare-const logging__log_type__log_size__last__bit Int)
(declare-const logging__log_type__log_size__position Int)
(assert (<= 0 logging__log_type__log_size__first__bit))
(assert (< logging__log_type__log_size__first__bit logging__log_type__log_size__last__bit))
(assert (<= 0 logging__log_type__log_size__position))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((log_type__ref (mk_log_type__ref (log_type__content us_rep)))))
(define-fun log_type__ref___projection ((a log_type__ref)) us_rep (log_type__content a))
(declare-fun log_size (us_rep) Int)
(declare-fun log_size__function_guard (Int us_rep) Bool)
(declare-fun log_size1 (Int us_rep) Int)
(declare-fun log_size__function_guard1 (Int Int us_rep) Bool)
(define-fun default_initial_assumption ((temp___expr_185 us_rep) (temp___skip_top_level_186 Bool)) Bool (= (attr__tag temp___expr_185) us_tag))
(declare-fun init_log__specific_post (Int us_split_fields Int us_split_fields) Bool)
(assert (forall ((logging__init_log__log__fields us_split_fields) (logging__init_log__log__old__fields us_split_fields)) (forall ((log__attr__tag Int)) (! (=> (init_log__specific_post us_tag logging__init_log__log__fields log__attr__tag logging__init_log__log__old__fields) (= (log_size (mk___rep logging__init_log__log__fields log__attr__tag)) 0)) :pattern ((init_log__specific_post us_tag logging__init_log__log__fields log__attr__tag logging__init_log__log__old__fields))))))
(declare-fun append_to_log__specific_post (Int us_split_fields Int Int us_split_fields) Bool)
(assert (forall ((logging__append_to_log__log__fields us_split_fields) (logging__append_to_log__log__old__fields us_split_fields)) (forall ((log__attr__tag Int) (incr Int)) (! (=> (append_to_log__specific_post us_tag logging__append_to_log__log__fields log__attr__tag incr logging__append_to_log__log__old__fields) (= (log_size (mk___rep logging__append_to_log__log__fields log__attr__tag)) (+ (log_size (mk___rep logging__append_to_log__log__old__fields log__attr__tag)) 1))) :pattern ((append_to_log__specific_post us_tag logging__append_to_log__log__fields log__attr__tag incr logging__append_to_log__log__old__fields))))))
(declare-const log__attr__tag Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant1 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 0 10000)) (in_range temp___expr_159)))
(assert (forall ((log us_rep)) (! (dynamic_invariant1 (log_size log) true false true true) :pattern ((log_size log)))))
(assert (forall ((attr__tag1 Int)) (forall ((log us_rep)) (! (dynamic_invariant1 (log_size1 attr__tag1 log) true false true true) :pattern ((log_size1 attr__tag1 log))))))
(assert (forall ((log us_rep)) (! (= (log_size log) (log_size1 us_tag log)) :pattern ((log_size1 us_tag log)))))
(declare-const log__split_fields (Array Int integer))
(declare-const log__split_fields1 log_count)
(declare-const log__split_fields2 us_private)
(declare-const logging__init_log__log__fields (Array Int integer))
(declare-const logging__init_log__log__fields1 log_count)
(declare-const logging__init_log__log__fields2 us_private)
(declare-const result (Array Int integer))
(declare-const result1 log_count)
(declare-const result2 us_private)
(declare-const log__split_fields3 (Array Int integer))
(declare-const log__split_fields4 log_count)
(declare-const log__split_fields5 us_private)
(define-fun log__split_fields6 () us_split_fields (mk___split_fields log__split_fields3 log__split_fields4 log__split_fields5))
(define-fun logging__init_log__log__fields3 () us_split_fields (mk___split_fields logging__init_log__log__fields logging__init_log__log__fields1 logging__init_log__log__fields2))
(assert (= (log_size (mk___rep logging__init_log__log__fields3 log__attr__tag)) 0))
(assert (= result log__split_fields))
(assert (= result1 log__split_fields1))
(assert (= result2 log__split_fields2))
(assert (= log__split_fields6 logging__init_log__log__fields3))
(assert (not (< (log_size1 log__attr__tag (mk___rep log__split_fields6 log__attr__tag)) 10000)))
(check-sat)
(exit)
