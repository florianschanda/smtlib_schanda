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
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(declare-const x Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const z Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun to_rep ((x1 integer)) Int (integerqtint x1))
(declare-fun of_rep (Int) integer)
(assert (forall ((x1 integer)) (! (= (of_rep (to_rep x1)) x1) :pattern ((to_rep x1)))))
(assert (forall ((x1 integer)) (! (in_range (to_rep x1)) :pattern ((to_rep x1)))))
(assert (forall ((x1 Int)) (! (=> (in_range x1) (= (to_rep (of_rep x1)) x1)) :pattern ((to_rep (of_rep x1))))))
(declare-const last Int)
(define-fun dynamic_property ((first_int Int) (last_int Int) (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (integer integer) Bool)
(declare-const dummy2 integer)
(declare-datatypes () ((a__ref (mk_a__ref (a__content integer)))))
(define-fun a__ref___projection ((a a__ref)) integer (a__content a))
(define-fun dynamic_invariant2 ((temp___expr_165 Int) (temp___is_init_161 Bool) (temp___skip_constant_162 Bool) (temp___do_toplevel_163 Bool) (temp___do_typ_inv_164 Bool)) Bool (=> (or (= temp___is_init_161 true) (<= 1 last)) (dynamic_property 1 last temp___expr_165)))
(assert (= last x))
(declare-const last1 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (integer integer) Bool)
(declare-const dummy3 integer)
(declare-datatypes () ((b__ref (mk_b__ref (b__content integer)))))
(define-fun b__ref___projection ((a b__ref)) integer (b__content a))
(define-fun dynamic_invariant3 ((temp___expr_172 Int) (temp___is_init_168 Bool) (temp___skip_constant_169 Bool) (temp___do_toplevel_170 Bool) (temp___do_typ_inv_171 Bool)) Bool (=> (or (= temp___is_init_168 true) (<= 2 last1)) (dynamic_property1 2 last1 temp___expr_172)))
(assert (= last1 z))
(declare-const first Int)
(define-fun dynamic_property2 ((first_int Int) (last_int Int) (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (integer integer) Bool)
(declare-const dummy4 integer)
(declare-datatypes () ((e__ref (mk_e__ref (e__content integer)))))
(define-fun e__ref___projection ((a e__ref)) integer (e__content a))
(define-fun dynamic_invariant4 ((temp___expr_179 Int) (temp___is_init_175 Bool) (temp___skip_constant_176 Bool) (temp___do_toplevel_177 Bool) (temp___do_typ_inv_178 Bool)) Bool (=> (or (= temp___is_init_175 true) (<= first 10)) (dynamic_property2 first 10 temp___expr_179)))
(assert (= first x))
(declare-const first1 Int)
(define-fun dynamic_property3 ((first_int Int) (last_int Int) (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (integer integer) Bool)
(declare-const dummy5 integer)
(declare-datatypes () ((f__ref (mk_f__ref (f__content integer)))))
(define-fun f__ref___projection ((a f__ref)) integer (f__content a))
(define-fun dynamic_invariant5 ((temp___expr_186 Int) (temp___is_init_182 Bool) (temp___skip_constant_183 Bool) (temp___do_toplevel_184 Bool) (temp___do_typ_inv_185 Bool)) Bool (=> (or (= temp___is_init_182 true) (<= first1 10)) (dynamic_property3 first1 10 temp___expr_186)))
(assert (= first1 z))
(declare-const first2 Int)
(define-fun dynamic_property4 ((first_int Int) (last_int Int) (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq6 (integer integer) Bool)
(declare-const dummy6 integer)
(declare-datatypes () ((g__ref (mk_g__ref (g__content integer)))))
(define-fun g__ref___projection ((a g__ref)) integer (g__content a))
(define-fun dynamic_invariant6 ((temp___expr_193 Int) (temp___is_init_189 Bool) (temp___skip_constant_190 Bool) (temp___do_toplevel_191 Bool) (temp___do_typ_inv_192 Bool)) Bool (=> (or (= temp___is_init_189 true) (<= first2 10)) (dynamic_property4 first2 10 temp___expr_193)))
(assert (= first2 z))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(assert (= z (+ x 1)))
(declare-const m Int)
(declare-const oa Int)
(declare-const ob Int)
(declare-const oe Int)
(declare-const dynamic__p__z__assume Int)
(declare-const o Int)
(declare-const us Int)
(declare-const o1 Int)
(declare-const us1 Int)
(declare-const o2 Int)
(declare-const us2 Int)
(declare-const o3 Int)
(declare-const result Int)
(declare-const m1 Int)
(declare-const result1 Int)
(declare-const oa1 Int)
(declare-const result2 Int)
(declare-const ob1 Int)
(declare-const result3 Int)
(declare-const oe1 Int)
(assert (in_range1 x))
(assert (<= x 10))
(assert (and (= dynamic__p__z__assume (+ x 1)) (in_range (+ x 1))))
(assert (= dynamic__p__z__assume z))
(assert (in_range z))
(assert (and (= o (+ x 2)) (in_range (+ x 2))))
(assert (= (mk_int__ref result) (mk_int__ref m)))
(assert (= m1 o))
(assert (in_range m1))
(assert (and (= us 1) (dynamic_property 1 last 1)))
(assert (= o1 1))
(assert (= (mk_int__ref result1) (mk_int__ref oa)))
(assert (= oa1 o1))
(assert (dynamic_property 1 last oa1))
(assert (and (= us1 2) (dynamic_property1 2 last1 2)))
(assert (= o2 2))
(assert (= (mk_int__ref result2) (mk_int__ref ob)))
(assert (= ob1 o2))
(assert (dynamic_property1 2 last1 ob1))
(assert (and (= us2 x) (dynamic_property2 first 10 x)))
(assert (= o3 x))
(assert (= (mk_int__ref result3) (mk_int__ref oe)))
(assert (= oe1 o3))
(assert (dynamic_property2 first 10 oe1))
(assert (not (dynamic_property3 first1 10 10)))
(check-sat)
(exit)
