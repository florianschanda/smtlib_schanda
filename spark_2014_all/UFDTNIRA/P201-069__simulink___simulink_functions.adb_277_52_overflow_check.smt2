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
(declare-sort tinteger_32B 0)
(declare-fun tinteger_32Bqtint (tinteger_32B) Int)
(assert (forall ((i tinteger_32B)) (and (<= (- 2147483648) (tinteger_32Bqtint i)) (<= (tinteger_32Bqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (tinteger_32B tinteger_32B) Bool)
(declare-const dummy tinteger_32B)
(declare-datatypes () ((tinteger_32B__ref (mk_tinteger_32B__ref (tinteger_32B__content tinteger_32B)))))
(define-fun tinteger_32B__ref___projection ((a tinteger_32B__ref)) tinteger_32B (tinteger_32B__content a))
(declare-sort integer_32 0)
(declare-fun integer_32qtint (integer_32) Int)
(assert (forall ((i integer_32)) (and (<= (- 2147483648) (integer_32qtint i)) (<= (integer_32qtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (integer_32 integer_32) Bool)
(declare-const dummy1 integer_32)
(declare-datatypes () ((integer_32__ref (mk_integer_32__ref (integer_32__content integer_32)))))
(define-fun integer_32__ref___2__projection ((a integer_32__ref)) integer_32 (integer_32__content a))
(define-fun dynamic_invariant ((temp___expr_186 Int) (temp___is_init_182 Bool) (temp___skip_constant_183 Bool) (temp___do_toplevel_184 Bool) (temp___do_typ_inv_185 Bool)) Bool (=> (or (= temp___is_init_182 true) (<= (- 2147483648) 2147483647)) (in_range2 temp___expr_186)))
(declare-const left Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const right Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(assert (in_range2 left))
(assert (in_range2 right))
(assert (not (= right 0)))
(assert (=> (< left 0) (=> (< left 0) (not (< right 0)))))
(assert (=> (not (< left 0)) (< right 0)))
(assert (=> (not (< left 0)) (=> (< left 0) (not (< right 0)))))
(assert (and (= o1 (abs right)) (in_range1 (abs right))))
(assert (and (= o (abs left)) (in_range1 (abs left))))
(assert (= o2 (div1 o o1)))
(assert (not (in_range1 o2)))
(check-sat)
(exit)
