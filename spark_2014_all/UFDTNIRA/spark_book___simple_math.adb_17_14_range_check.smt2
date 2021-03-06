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
(declare-sort square_root_domain 0)
(declare-fun square_root_domainqtint (square_root_domain) Int)
(assert (forall ((i square_root_domain)) (and (<= 0 (square_root_domainqtint i)) (<= (square_root_domainqtint i) 1000000))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 1000000)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (square_root_domain square_root_domain) Bool)
(declare-const dummy square_root_domain)
(declare-datatypes () ((square_root_domain__ref (mk_square_root_domain__ref (square_root_domain__content square_root_domain)))))
(define-fun square_root_domain__ref___projection ((a square_root_domain__ref)) square_root_domain (square_root_domain__content a))
(define-fun dynamic_invariant ((temp___expr_158 Int) (temp___is_init_154 Bool) (temp___skip_constant_155 Bool) (temp___do_toplevel_156 Bool) (temp___do_typ_inv_157 Bool)) Bool (=> (or (= temp___is_init_154 true) (<= 0 1000000)) (in_range temp___expr_158)))
(declare-sort square_root_range 0)
(declare-fun square_root_rangeqtint (square_root_range) Int)
(assert (forall ((i square_root_range)) (and (<= 0 (square_root_rangeqtint i)) (<= (square_root_rangeqtint i) 1000))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (square_root_range square_root_range) Bool)
(declare-const dummy1 square_root_range)
(declare-datatypes () ((square_root_range__ref (mk_square_root_range__ref (square_root_range__content square_root_range)))))
(define-fun square_root_range__ref___projection ((a square_root_range__ref)) square_root_range (square_root_range__content a))
(declare-const n Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant1 ((temp___expr_165 Int) (temp___is_init_161 Bool) (temp___skip_constant_162 Bool) (temp___do_toplevel_163 Bool) (temp___do_typ_inv_164 Bool)) Bool (=> (or (= temp___is_init_161 true) (<= 0 1000)) (in_range1 temp___expr_165)))
(declare-const q Int)
(declare-const r Int)
(declare-const temp___169 Int)
(declare-const temp___168 Int)
(declare-const o Int)
(declare-const r1 Int)
(declare-const result Int)
(declare-const q1 Int)
(declare-const q2 Int)
(declare-const r2 Int)
(declare-const result1 Int)
(declare-const r3 Int)
(declare-const q3 Int)
(declare-const q4 Int)
(declare-const q5 Int)
(declare-const r4 Int)
(declare-const q6 Int)
(declare-const r5 Int)
(declare-const q7 Int)
(declare-const r6 Int)
(declare-const q8 Int)
(declare-const r7 Int)
(declare-const q9 Int)
(declare-const r8 Int)
(declare-const q10 Int)
(declare-const r9 Int)
(define-fun r10 () int__ref (mk_int__ref r8))
(define-fun r11 () int__ref (mk_int__ref r6))
(define-fun q11 () int__ref (mk_int__ref q7))
(define-fun q12 () int__ref (mk_int__ref q5))
(assert (in_range n))
(assert (=> (<= 0 1000000) (in_range q)))
(assert (=> (<= 0 1000000) (in_range r)))
(assert (= result q))
(assert (= q1 n))
(assert (=> (< 0 q1) (= temp___169 q1)))
(assert (=> (< 0 q1) (= temp___168 r)))
(assert (=> (< 0 q1) (and (=> (<= 0 1000000) (in_range r2)) (=> (<= 0 1000000) (in_range q2)))))
(assert (=> (< 0 q1) (and (= o (div1 n q2)) (in_range (div1 n q2)))))
(assert (=> (< 0 q1) (= r2 result1)))
(assert (=> (< 0 q1) (= r3 o)))
(assert (=> (< 0 q1) (= q2 q3)))
(assert (=> (< 0 q1) (= q4 q2)))
(assert (=> (< 0 q1) (<= q2 r3)))
(assert (=> (< 0 q1) (= r3 r4)))
(assert (=> (< 0 q1) (= q12 (mk_int__ref q3))))
(assert (=> (< 0 q1) (= r5 r3)))
(assert (=> (< 0 q1) (= q6 q4)))
(assert (=> (< 0 q1) (= r11 (mk_int__ref r4))))
(assert (=> (< 0 q1) (= q11 q12)))
(assert (=> (< 0 q1) (= r7 r5)))
(assert (=> (< 0 q1) (= q8 q6)))
(assert (=> (< 0 q1) (= r10 r11)))
(assert (=> (< 0 q1) (= (mk_int__ref q9) q11)))
(assert (=> (< 0 q1) (= r9 r7)))
(assert (=> (< 0 q1) (= q10 q8)))
(assert (=> (not (< 0 q1)) (= r10 (mk_int__ref r))))
(assert (=> (not (< 0 q1)) (= q1 q9)))
(assert (=> (not (< 0 q1)) (= r9 r1)))
(assert (=> (not (< 0 q1)) (= q10 q1)))
(assert (not (in_range1 q9)))
(check-sat)
(exit)
