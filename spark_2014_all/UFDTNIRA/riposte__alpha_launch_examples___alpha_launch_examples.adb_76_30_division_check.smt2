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
(declare-sort scale 0)
(declare-fun scaleqtint (scale) Int)
(assert (forall ((i scale)) (and (<= 0 (scaleqtint i)) (<= (scaleqtint i) 100))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (scale scale) Bool)
(declare-const dummy scale)
(declare-datatypes () ((scale__ref (mk_scale__ref (scale__content scale)))))
(define-fun scale__ref___projection ((a scale__ref)) scale (scale__content a))
(define-fun dynamic_invariant ((temp___expr_193 Int) (temp___is_init_189 Bool) (temp___skip_constant_190 Bool) (temp___do_toplevel_191 Bool) (temp___do_typ_inv_192 Bool)) Bool (=> (or (= temp___is_init_189 true) (<= 0 100)) (in_range temp___expr_193)))
(declare-sort display_quantity 0)
(declare-fun display_quantityqtint (display_quantity) Int)
(assert (forall ((i display_quantity)) (and (<= 0 (display_quantityqtint i)) (<= (display_quantityqtint i) 1000))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (display_quantity display_quantity) Bool)
(declare-const dummy1 display_quantity)
(declare-datatypes () ((display_quantity__ref (mk_display_quantity__ref (display_quantity__content display_quantity)))))
(define-fun display_quantity__ref___projection ((a display_quantity__ref)) display_quantity (display_quantity__content a))
(declare-const a Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun dynamic_invariant1 ((temp___expr_200 Int) (temp___is_init_196 Bool) (temp___skip_constant_197 Bool) (temp___do_toplevel_198 Bool) (temp___do_typ_inv_199 Bool)) Bool (=> (or (= temp___is_init_196 true) (<= 0 1000)) (in_range1 temp___expr_200)))
(assert (in_range a))
(assert (not (not (= a 0))))
(check-sat)
(exit)
