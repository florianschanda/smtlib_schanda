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
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__p__tt us_main_type)))))
(define-fun us_split_fields_TT__projection ((a us_split_fields)) us_main_type (rec__p__tt a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-fun user_eq (us_rep us_rep) Bool)
(declare-datatypes () ((tt__ref (mk_tt__ref (tt__content us_rep)))))
(define-fun tt__ref___projection ((a tt__ref)) us_rep (tt__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__p__tt1 us_main_type)))))
(define-fun us_split_fields_TT__2__projection ((a us_split_fields2)) us_main_type (rec__p__tt1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (mk___split_fields (rec__p__tt1 (us_split_fields3 a)))))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (mk___split_fields1 (rec__p__tt (us_split_fields1 r)))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-fun user_eq1 (us_rep1 us_rep1) Bool)
(declare-datatypes () ((s__ref (mk_s__ref (s__content us_rep1)))))
(define-fun s__ref___projection ((a s__ref)) us_rep1 (s__content a))
(declare-fun not_reall_true (tuple0) Bool)
(declare-fun not_reall_true__function_guard (Bool tuple0) Bool)
(define-fun dynamic_invariant ((temp___expr_207 us_rep1) (temp___is_init_203 Bool) (temp___skip_constant_204 Bool) (temp___do_toplevel_205 Bool) (temp___do_typ_inv_206 Bool)) Bool (=> (= temp___do_toplevel_205 true) (=> (= temp___is_init_203 true) (= (not_reall_true Tuple0) true))))
(define-fun dynamic_predicate ((temp___211 us_rep1)) Bool (= (not_reall_true Tuple0) true))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(assert true)
(assert (forall ((us_void_param tuple0)) (! (not (= (not_reall_true us_void_param) true)) :pattern ((not_reall_true us_void_param)))))
(assert (not (= (not_reall_true Tuple0) true)))
(check-sat)
(exit)
