(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFFPDTNIRA)
(set-info :source |Benchmarks generated by Florian Schanda from the public SPARK 2014 testsuite and post-processed with a script to set more precise logics.|)
(set-info :category industrial)
(set-info :status unknown)

(define-fun fp.isFinite32 ((x Float32)) Bool (not (or (fp.isInfinite x) (fp.isNaN x))))
(define-fun fp.isIntegral32 ((x Float32)) Bool (or (fp.isZero x) (and (fp.isNormal x) (= x (fp.roundToIntegral RNE x)))))
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
(declare-fun pow2 (Int) Int)
(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite x) (fp.isPositive x)))
(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite x) (fp.isNegative x)))
(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero x) (fp.isPositive x)))
(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero x) (fp.isNegative x)))
(declare-fun of_int (RoundingMode Int) Float32)
(declare-fun to_int1 (RoundingMode Float32) Int)
(declare-const max_int Int)
(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i) (<= i max_int)))
(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i) (<= i 16777216)))
(define-fun same_sign ((x Float32) (y Float32)) Bool (or (and (fp.isPositive x) (fp.isPositive y)) (and (fp.isNegative x) (fp.isNegative y))))
(define-fun diff_sign ((x Float32) (y Float32)) Bool (or (and (fp.isPositive x) (fp.isNegative y)) (and (fp.isNegative x) (fp.isPositive y))))
(define-fun product_sign ((z Float32) (x Float32) (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive z)) (=> (diff_sign x y) (fp.isNegative z))))
(define-fun sqr ((x Real)) Real (* x x))
(declare-fun sqrt1 (Real) Real)
(define-fun same_sign_real ((x Float32) (r Real)) Bool (or (and (fp.isPositive x) (< 0.0 r)) (and (fp.isNegative x) (< r 0.0))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range temp___expr_39)))
(declare-sort float 0)
(declare-fun user_eq1 (float float) Bool)
(declare-fun attr__ATTRIBUTE_IMAGE1 (Float32) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Float32)
(declare-const dummy1 float)
(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))
(define-fun dynamic_invariant1 ((temp___expr_60 Float32) (temp___is_init_56 Bool) (temp___skip_constant_57 Bool) (temp___do_toplevel_58 Bool) (temp___do_typ_inv_59 Bool)) Bool (=> (or (= temp___is_init_56 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (fp.isFinite32 temp___expr_60)))
(declare-fun ident (Int) Int)
(declare-fun ident__function_guard (Int Int) Bool)
(assert (forall ((n Int)) (! (=> (and (dynamic_invariant n true true true true) (and (<= 1 n) (<= n 10))) (dynamic_invariant (ident n) true false true true)) :pattern ((ident n)))))
(declare-fun ident__2 (Int) Int)
(declare-fun ident__2__function_guard (Int Int) Bool)
(declare-sort color 0)
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (color color) Bool)
(declare-const dummy2 color)
(declare-datatypes () ((color__ref (mk_color__ref (color__content color)))))
(define-fun color__ref___projection ((a color__ref)) color (color__content a))
(define-fun dynamic_invariant2 ((temp___expr_200 Int) (temp___is_init_196 Bool) (temp___skip_constant_197 Bool) (temp___do_toplevel_198 Bool) (temp___do_typ_inv_199 Bool)) Bool (=> (or (= temp___is_init_196 true) (<= 0 2)) (in_range1 temp___expr_200)))
(assert (forall ((c Int)) (! (=> (and (dynamic_invariant2 c true true true true) (and (<= 0 c) (<= c 1))) (dynamic_invariant2 (ident__2 c) true false true true)) :pattern ((ident__2 c)))))
(declare-sort volt 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2040)))
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
(declare-const dummy3 volt)
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun to_fixed (volt) Int)
(declare-fun of_fixed (Int) volt)
(declare-fun user_eq3 (volt volt) Bool)
(declare-fun fxp_div_int (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_int x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div_int x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div_int x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div_int x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div_int x y)) x (- y))))))) :pattern ((fxp_div_int x y))))))
(declare-fun fxp_div_result_int (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_result_int x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna (fxp_div_result_int x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation_rna (fxp_div_result_int x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna (- (fxp_div_result_int x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna (- (fxp_div_result_int x y)) x (- y))))))) :pattern ((fxp_div_result_int x y))))))
(declare-fun to_int2 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (to_int2 x) 0) (ite (< 0 x) (pos_div_relation (to_int2 x) (* x 1) 8) (pos_div_relation (- (to_int2 x)) (* (- x) 1) 8))) :pattern ((to_int2 x)))))
(declare-fun of_int1 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (of_int1 x) 0) (ite (< 0 x) (pos_div_relation (of_int1 x) (* x 8) 1) (pos_div_relation (- (of_int1 x)) (* (- x) 8) 1))) :pattern ((of_int1 x)))))
(assert (forall ((x volt)) (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)))))
(assert (forall ((x volt)) (in_range2 (to_fixed x))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed (of_fixed x))))))
(declare-datatypes () ((volt__ref (mk_volt__ref (volt__content volt)))))
(define-fun volt__ref___projection ((a volt__ref)) volt (volt__content a))
(declare-fun ident__3 (volt) volt)
(declare-fun ident__3__function_guard (volt volt) Bool)
(assert true)
(declare-sort money 0)
(define-fun in_range3 ((x Int)) Bool (and (<= (- 999999999999999) x) (<= x 999999999999999)))
(declare-const dummy4 money)
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun to_fixed1 (money) Int)
(declare-fun of_fixed1 (Int) money)
(declare-fun user_eq4 (money money) Bool)
(declare-fun fxp_div_int1 (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_int1 x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div_int1 x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div_int1 x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div_int1 x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div_int1 x y)) x (- y))))))) :pattern ((fxp_div_int1 x y))))))
(declare-fun fxp_div_result_int1 (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_result_int1 x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna (fxp_div_result_int1 x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation_rna (fxp_div_result_int1 x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna (- (fxp_div_result_int1 x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna (- (fxp_div_result_int1 x y)) x (- y))))))) :pattern ((fxp_div_result_int1 x y))))))
(declare-fun to_int3 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (to_int3 x) 0) (ite (< 0 x) (pos_div_relation (to_int3 x) (* x 1) 100) (pos_div_relation (- (to_int3 x)) (* (- x) 1) 100))) :pattern ((to_int3 x)))))
(declare-fun of_int2 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (of_int2 x) 0) (ite (< 0 x) (pos_div_relation (of_int2 x) (* x 100) 1) (pos_div_relation (- (of_int2 x)) (* (- x) 100) 1))) :pattern ((of_int2 x)))))
(assert (forall ((x money)) (! (= (of_fixed1 (to_fixed1 x)) x) :pattern ((to_fixed1 x)))))
(assert (forall ((x money)) (in_range3 (to_fixed1 x))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_fixed1 (of_fixed1 x)) x)) :pattern ((to_fixed1 (of_fixed1 x))))))
(declare-datatypes () ((money__ref (mk_money__ref (money__content money)))))
(define-fun money__ref___projection ((a money__ref)) money (money__content a))
(declare-fun ident__4 (money) money)
(declare-fun ident__4__function_guard (money money) Bool)
(assert true)
(declare-fun ident__5 (Float32) Float32)
(declare-fun ident__5__function_guard (Float32 Float32) Bool)
(assert (forall ((f Float32)) (! (=> (and (dynamic_invariant1 f true true true true) (and (fp.leq (fp.neg (fp #b0 #b01111110 #b11111111011111001110111)) f) (fp.leq f (fp #b0 #b01111110 #b11111111011111001110111)))) (dynamic_invariant1 (ident__5 f) true false true true)) :pattern ((ident__5 f)))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const n Int)
(declare-const c Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 volt)
(declare-const result Int)
(declare-const n1 Int)
(declare-const result1 Int)
(declare-const c1 Int)
(assert (and (= o (ident 5)) (in_range o)))
(assert (= result n))
(assert (= n1 o))
(assert (in_range n1))
(assert (and (= o1 (ident__2 0)) (in_range1 o1)))
(assert (= result1 c))
(assert (= c1 o1))
(assert (in_range1 c1))
(assert (= (to_fixed o2) 5))
(assert (not (<= (to_fixed o2) 9)))
(check-sat)
(exit)
