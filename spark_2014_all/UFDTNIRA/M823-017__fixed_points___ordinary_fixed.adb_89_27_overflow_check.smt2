(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTNIRA)
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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-sort ttB 0)
(define-fun in_range2 ((x Int)) Bool (and (<= (- 32768) x) (<= x 32767)))
(declare-fun div1 (Int Int) Int)
(declare-fun mod1 (Int Int) Int)
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))
(assert (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))
(assert (forall ((x Int) (y Int)) (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))
(assert (forall ((x Int)) (= (div1 x 1) x)))
(assert (forall ((x Int)) (= (mod1 x 1) 0)))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))
(assert (forall ((x Int) (y Int) (z Int)) (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z))) (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1 (+ (* x y) z) x)))))
(assert (forall ((x Int) (y Int) (z Int)) (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z))) (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)))))
(define-fun mod2 ((x Int) (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))
(define-fun pos_div_relation ((res Int) (num Int) (den Int)) Bool (let ((exact (div1 num den))) (ite (= num 0) (= res 0) (ite (= num (* exact den)) (= res exact) (and (<= exact res) (<= res (+ exact 1)))))))
(define-fun pos_div_relation_rna ((res Int) (num Int) (den Int)) Bool (let ((exact (div1 num den))) (ite (= num 0) (= res 0) (ite (= num (* exact den)) (= res exact) (ite (< (- num (* exact den)) (- (* (+ exact 1) den) num)) (= res exact) (= res (+ exact 1)))))))
(declare-const dummy1 ttB)
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun to_fixed (ttB) Int)
(declare-fun of_fixed (Int) ttB)
(declare-fun user_eq1 (ttB ttB) Bool)
(declare-fun fxp_div_int (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_int x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div_int x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div_int x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div_int x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div_int x y)) x (- y))))))) :pattern ((fxp_div_int x y))))))
(declare-fun fxp_div_result_int (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_result_int x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna (fxp_div_result_int x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation_rna (fxp_div_result_int x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna (- (fxp_div_result_int x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna (- (fxp_div_result_int x y)) x (- y))))))) :pattern ((fxp_div_result_int x y))))))
(declare-fun to_int1 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (to_int1 x) 0) (ite (< 0 x) (pos_div_relation (to_int1 x) (* x 1) 400) (pos_div_relation (- (to_int1 x)) (* (- x) 1) 400))) :pattern ((to_int1 x)))))
(declare-fun of_int (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (of_int x) 0) (ite (< 0 x) (pos_div_relation (of_int x) (* x 400) 1) (pos_div_relation (- (of_int x)) (* (- x) 400) 1))) :pattern ((of_int x)))))
(assert (forall ((x ttB)) (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)))))
(assert (forall ((x ttB)) (in_range2 (to_fixed x))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed (of_fixed x))))))
(declare-datatypes () ((ttB__ref (mk_ttB__ref (ttB__content ttB)))))
(define-fun ttB__ref___projection ((a ttB__ref)) ttB (ttB__content a))
(declare-sort t 0)
(define-fun in_range3 ((x Int)) Bool (and (<= (- 4000) x) (<= x 4000)))
(declare-const dummy2 t)
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun to_fixed1 (t) Int)
(declare-fun of_fixed1 (Int) t)
(declare-fun user_eq2 (t t) Bool)
(declare-fun fxp_div_int1 (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_int1 x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div_int1 x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div_int1 x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div_int1 x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div_int1 x y)) x (- y))))))) :pattern ((fxp_div_int1 x y))))))
(declare-fun fxp_div_result_int1 (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_result_int1 x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna (fxp_div_result_int1 x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation_rna (fxp_div_result_int1 x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna (- (fxp_div_result_int1 x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna (- (fxp_div_result_int1 x y)) x (- y))))))) :pattern ((fxp_div_result_int1 x y))))))
(declare-fun to_int2 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (to_int2 x) 0) (ite (< 0 x) (pos_div_relation (to_int2 x) (* x 1) 400) (pos_div_relation (- (to_int2 x)) (* (- x) 1) 400))) :pattern ((to_int2 x)))))
(declare-fun of_int1 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (of_int1 x) 0) (ite (< 0 x) (pos_div_relation (of_int1 x) (* x 400) 1) (pos_div_relation (- (of_int1 x)) (* (- x) 400) 1))) :pattern ((of_int1 x)))))
(assert (forall ((x t)) (! (= (of_fixed1 (to_fixed1 x)) x) :pattern ((to_fixed1 x)))))
(assert (forall ((x t)) (in_range3 (to_fixed1 x))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_fixed1 (of_fixed1 x)) x)) :pattern ((to_fixed1 (of_fixed1 x))))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))
(declare-const x t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort ty2S 0)
(declare-fun ty2Sqtint (ty2S) Int)
(assert (forall ((i ty2S)) (and (<= 0 (ty2Sqtint i)) (<= (ty2Sqtint i) 10))))
(define-fun in_range4 ((x1 Int)) Bool (and (<= 0 x1) (<= x1 10)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (ty2S ty2S) Bool)
(declare-const dummy3 ty2S)
(declare-datatypes () ((ty2S__ref (mk_ty2S__ref (ty2S__content ty2S)))))
(define-fun ty2S__ref___projection ((a ty2S__ref)) ty2S (ty2S__content a))
(define-fun dynamic_invariant1 ((temp___expr_165 Int) (temp___is_init_161 Bool) (temp___skip_constant_162 Bool) (temp___do_toplevel_163 Bool) (temp___do_typ_inv_164 Bool)) Bool (=> (or (= temp___is_init_161 true) (<= 0 10)) (in_range4 temp___expr_165)))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort t3 0)
(declare-fun t3qtint (t3) Int)
(assert (forall ((i t3)) (and (<= 0 (t3qtint i)) (<= (t3qtint i) 10))))
(define-fun in_range5 ((x1 Int)) Bool (and (<= 0 x1) (<= x1 10)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq4 (t3 t3) Bool)
(declare-const dummy4 t3)
(declare-datatypes () ((t3__ref (mk_t3__ref (t3__content t3)))))
(define-fun t3__ref___projection ((a t3__ref)) t3 (t3__content a))
(define-fun dynamic_invariant2 ((temp___expr_172 Int) (temp___is_init_168 Bool) (temp___skip_constant_169 Bool) (temp___do_toplevel_170 Bool) (temp___do_typ_inv_171 Bool)) Bool (=> (or (= temp___is_init_168 true) (<= 0 10)) (in_range5 temp___expr_172)))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const y1 Int)
(declare-const y2 Int)
(declare-const y3 Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const result Int)
(declare-const y11 Int)
(declare-const result1 Int)
(declare-const y21 Int)
(assert (and (<= (- 2000) (to_fixed1 x)) (<= (to_fixed1 x) 2000)))
(assert (=> (<= (- 2147483648) 2147483647) (in_range1 y1)))
(assert (=> (<= 0 10) (in_range4 y2)))
(assert (=> (<= 0 10) (in_range5 y3)))
(assert (and (= o (to_int2 (to_fixed1 x))) (in_range1 (to_int2 (to_fixed1 x)))))
(assert (= result y1))
(assert (= y11 o))
(assert (<= 0 (to_fixed1 x)))
(assert (and (= o1 (to_int2 (to_fixed1 x))) (in_range1 (to_int2 (to_fixed1 x)))))
(assert (and (= o2 o1) (in_range4 o1)))
(assert (= result1 y2))
(assert (= y21 o2))
(assert (not (in_range2 (+ (to_fixed1 x) (to_fixed1 x)))))
(check-sat)
(exit)
