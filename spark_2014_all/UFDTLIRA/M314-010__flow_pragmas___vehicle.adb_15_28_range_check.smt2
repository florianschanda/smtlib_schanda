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
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-fun speed_is_valid (Int Int) Bool)
(declare-fun speed_is_valid__function_guard (Bool Int Int) Bool)
(declare-sort state_type 0)
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (state_type state_type) Bool)
(declare-const dummy state_type)
(declare-datatypes () ((state_type__ref (mk_state_type__ref (state_type__content state_type)))))
(define-fun state_type__ref___projection ((a state_type__ref)) state_type (state_type__content a))
(define-fun dynamic_invariant ((temp___expr_158 Int) (temp___is_init_154 Bool) (temp___skip_constant_155 Bool) (temp___do_toplevel_156 Bool) (temp___do_typ_inv_157 Bool)) Bool (=> (or (= temp___is_init_154 true) (<= 0 2)) (in_range temp___expr_158)))
(declare-sort speed_type 0)
(declare-fun speed_typeqtint (speed_type) Int)
(assert (forall ((i speed_type)) (and (<= (- 100) (speed_typeqtint i)) (<= (speed_typeqtint i) 100))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 100) x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (speed_type speed_type) Bool)
(declare-const dummy1 speed_type)
(declare-datatypes () ((speed_type__ref (mk_speed_type__ref (speed_type__content speed_type)))))
(define-fun speed_type__ref___projection ((a speed_type__ref)) speed_type (speed_type__content a))
(define-fun dynamic_invariant1 ((temp___expr_179 Int) (temp___is_init_175 Bool) (temp___skip_constant_176 Bool) (temp___do_toplevel_177 Bool) (temp___do_typ_inv_178 Bool)) Bool (=> (or (= temp___is_init_175 true) (<= (- 100) 100)) (in_range1 temp___expr_179)))
(assert true)
(assert (forall ((vehicle__speed Int) (vehicle__state Int)) (! (= (= (speed_is_valid vehicle__speed vehicle__state) true) (ite (= vehicle__state 0) (= vehicle__speed 0) (ite (= vehicle__state 1) (< 0 vehicle__speed) (< vehicle__speed 0)))) :pattern ((speed_is_valid vehicle__speed vehicle__state)))))
(declare-sort valid_input 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (valid_input valid_input) Bool)
(declare-const dummy2 valid_input)
(declare-datatypes () ((valid_input__ref (mk_valid_input__ref (valid_input__content valid_input)))))
(define-fun valid_input__ref___projection ((a valid_input__ref)) valid_input (valid_input__content a))
(define-fun dynamic_invariant2 ((temp___expr_172 Int) (temp___is_init_168 Bool) (temp___skip_constant_169 Bool) (temp___do_toplevel_170 Bool) (temp___do_typ_inv_171 Bool)) Bool (=> (or (= temp___is_init_168 true) (<= 1 3)) (in_range2 temp___expr_172)))
(declare-const i Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const speed Int)
(declare-const state Int)
(assert (in_range1 speed))
(assert (in_range state))
(assert (in_range2 i))
(assert (= (speed_is_valid speed state) true))
(assert (= i 2))
(assert (< speed 100))
(assert (not (in_range1 (+ speed 1))))
(check-sat)
(exit)
