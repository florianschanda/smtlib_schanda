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
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort tinteger_16B 0)
(declare-fun tinteger_16Bqtint (tinteger_16B) Int)
(assert (forall ((i tinteger_16B)) (and (<= (- 32768) (tinteger_16Bqtint i)) (<= (tinteger_16Bqtint i) 32767))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 32768) x) (<= x 32767)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (tinteger_16B tinteger_16B) Bool)
(declare-const dummy tinteger_16B)
(declare-datatypes () ((tinteger_16B__ref (mk_tinteger_16B__ref (tinteger_16B__content tinteger_16B)))))
(define-fun tinteger_16B__ref___projection ((a tinteger_16B__ref)) tinteger_16B (tinteger_16B__content a))
(declare-sort integer_16 0)
(declare-fun integer_16qtint (integer_16) Int)
(assert (forall ((i integer_16)) (and (<= (- 32768) (integer_16qtint i)) (<= (integer_16qtint i) 32767))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 32768) x) (<= x 32767)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (integer_16 integer_16) Bool)
(declare-const dummy1 integer_16)
(declare-datatypes () ((integer_16__ref (mk_integer_16__ref (integer_16__content integer_16)))))
(define-fun integer_16__ref___2__projection ((a integer_16__ref)) integer_16 (integer_16__content a))
(define-fun dynamic_invariant ((temp___expr_179 Int) (temp___is_init_175 Bool) (temp___skip_constant_176 Bool) (temp___do_toplevel_177 Bool) (temp___do_typ_inv_178 Bool)) Bool (=> (or (= temp___is_init_175 true) (<= (- 32768) 32767)) (in_range2 temp___expr_179)))
(declare-const left Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const right Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const quotient Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const o7 Int)
(declare-const o8 Int)
(declare-const result Int)
(declare-const quotient1 Int)
(assert (in_range2 left))
(assert (in_range2 right))
(assert (not (= right 0)))
(assert (=> (< left 0) (=> (< left 0) (not (< right 0)))))
(assert (=> (not (< left 0)) (< right 0)))
(assert (=> (not (< left 0)) (=> (< left 0) (not (< right 0)))))
(assert (and (= o1 (abs right)) (in_range1 (abs right))))
(assert (and (= o (abs left)) (in_range1 (abs left))))
(assert (= o2 (div1 o o1)))
(assert (and (= o3 o2) (in_range1 o2)))
(assert (and (= o4 o3) (in_range2 o3)))
(assert (= result quotient))
(assert (= quotient1 o4))
(assert (in_range2 quotient1))
(assert (and (= o5 (* (- 1) quotient1)) (in_range1 (* (- 1) quotient1))))
(assert (= o6 (- o5 1)))
(assert (and (= o7 o6) (in_range1 o6)))
(assert (= o8 (* o7 right)))
(assert (not (in_range1 o8)))
(check-sat)
(exit)
