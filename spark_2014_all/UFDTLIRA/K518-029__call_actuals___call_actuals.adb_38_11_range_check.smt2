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
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range1 temp___expr_39)))
(declare-sort t 0)
(declare-fun tqtint (t) Int)
(assert (forall ((i t)) (and (<= (- 20) (tqtint i)) (<= (tqtint i) 20))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 20) x) (<= x 20)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (t t) Bool)
(declare-const dummy2 t)
(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))
(define-fun dynamic_invariant2 ((temp___expr_158 Int) (temp___is_init_154 Bool) (temp___skip_constant_155 Bool) (temp___do_toplevel_156 Bool) (temp___do_typ_inv_157 Bool)) Bool (=> (or (= temp___is_init_154 true) (<= (- 20) 20)) (in_range2 temp___expr_158)))
(declare-sort nt 0)
(declare-fun ntqtint (nt) Int)
(assert (forall ((i nt)) (and (<= 0 (ntqtint i)) (<= (ntqtint i) 20))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 20)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (nt nt) Bool)
(declare-const dummy3 nt)
(declare-datatypes () ((nt__ref (mk_nt__ref (nt__content nt)))))
(define-fun nt__ref___projection ((a nt__ref)) nt (nt__content a))
(define-fun dynamic_invariant3 ((temp___expr_165 Int) (temp___is_init_161 Bool) (temp___skip_constant_162 Bool) (temp___do_toplevel_163 Bool) (temp___do_typ_inv_164 Bool)) Bool (=> (or (= temp___is_init_161 true) (<= 0 20)) (in_range3 temp___expr_165)))
(declare-sort s 0)
(declare-fun sqtint (s) Int)
(assert (forall ((i s)) (and (<= 0 (sqtint i)) (<= (sqtint i) 20))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 20)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (s s) Bool)
(declare-const dummy4 s)
(declare-datatypes () ((s__ref (mk_s__ref (s__content s)))))
(define-fun s__ref___projection ((a s__ref)) s (s__content a))
(define-fun dynamic_invariant4 ((temp___expr_172 Int) (temp___is_init_168 Bool) (temp___skip_constant_169 Bool) (temp___do_toplevel_170 Bool) (temp___do_typ_inv_171 Bool)) Bool (=> (or (= temp___is_init_168 true) (<= 0 20)) (in_range4 temp___expr_172)))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const g Int)
(declare-const a1 Int)
(declare-const a2 Int)
(declare-const o Int)
(declare-const call_actuals__fn__y Int)
(declare-const o1 Int)
(declare-const call_actuals__fn__x Int)
(declare-const a11 Int)
(declare-const a21 Int)
(declare-const call_actuals__fn__y1 Int)
(declare-const call_actuals__fn__x1 Int)
(assert (in_range g))
(assert (in_range a1))
(assert (in_range a2))
(assert (and (= a21 (+ a11 1)) (and (in_range a11) (in_range a21))))
(assert (and (= o a21) (in_range1 a21)))
(assert (= o call_actuals__fn__y))
(assert (and (= o1 a11) (in_range1 a11)))
(assert (= o1 call_actuals__fn__x))
(assert (and (= call_actuals__fn__y1 (+ call_actuals__fn__x1 1)) (and (in_range1 call_actuals__fn__x1) (in_range1 call_actuals__fn__y1))))
(assert (not (in_range call_actuals__fn__x1)))
(check-sat)
(exit)
