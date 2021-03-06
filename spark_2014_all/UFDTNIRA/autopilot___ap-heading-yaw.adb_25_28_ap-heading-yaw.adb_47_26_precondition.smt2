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
(declare-fun scale_movement (Int Int Int Int) Int)
(declare-fun scale_movement__function_guard (Int Int Int Int Int) Bool)
(declare-sort machnumber 0)
(declare-fun machnumberqtint (machnumber) Int)
(assert (forall ((i machnumber)) (and (<= 0 (machnumberqtint i)) (<= (machnumberqtint i) 100))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (machnumber machnumber) Bool)
(declare-const dummy machnumber)
(declare-datatypes () ((machnumber__ref (mk_machnumber__ref (machnumber__content machnumber)))))
(define-fun machnumber__ref___projection ((a machnumber__ref)) machnumber (machnumber__content a))
(define-fun dynamic_invariant ((temp___expr_186 Int) (temp___is_init_182 Bool) (temp___skip_constant_183 Bool) (temp___do_toplevel_184 Bool) (temp___do_typ_inv_185 Bool)) Bool (=> (or (= temp___is_init_182 true) (<= 0 100)) (in_range temp___expr_186)))
(declare-sort controlangle 0)
(declare-fun controlangleqtint (controlangle) Int)
(assert (forall ((i controlangle)) (and (<= (- 45) (controlangleqtint i)) (<= (controlangleqtint i) 45))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 45) x) (<= x 45)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (controlangle controlangle) Bool)
(declare-const dummy1 controlangle)
(declare-datatypes () ((controlangle__ref (mk_controlangle__ref (controlangle__content controlangle)))))
(define-fun controlangle__ref___projection ((a controlangle__ref)) controlangle (controlangle__content a))
(define-fun dynamic_invariant1 ((temp___expr_207 Int) (temp___is_init_203 Bool) (temp___skip_constant_204 Bool) (temp___do_toplevel_205 Bool) (temp___do_typ_inv_206 Bool)) Bool (=> (or (= temp___is_init_203 true) (<= (- 45) 45)) (in_range1 temp___expr_207)))
(declare-sort scaledata 0)
(declare-fun scaledataqtint (scaledata) Int)
(assert (forall ((i scaledata)) (and (<= (- 100) (scaledataqtint i)) (<= (scaledataqtint i) 100))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 100) x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (scaledata scaledata) Bool)
(declare-const dummy2 scaledata)
(declare-datatypes () ((scaledata__ref (mk_scaledata__ref (scaledata__content scaledata)))))
(define-fun scaledata__ref___projection ((a scaledata__ref)) scaledata (scaledata__content a))
(define-fun dynamic_invariant2 ((temp___expr_221 Int) (temp___is_init_217 Bool) (temp___skip_constant_218 Bool) (temp___do_toplevel_219 Bool) (temp___do_typ_inv_220 Bool)) Bool (=> (or (= temp___is_init_217 true) (<= (- 100) 100)) (in_range2 temp___expr_221)))
(assert (forall ((mach Int) (present Int) (target Int) (max Int)) (! (=> (and (and (and (and (dynamic_invariant mach true true true true) (dynamic_invariant2 present true true true true)) (dynamic_invariant2 target true true true true)) (dynamic_invariant1 max true true true true)) (< 0 max)) (let ((result (scale_movement mach present target max))) (and (and (<= (- max) result) (<= result max)) (dynamic_invariant1 result true false true true)))) :pattern ((scale_movement mach present target max)))))
(declare-sort degreespersec 0)
(declare-fun degreespersecqtint (degreespersec) Int)
(assert (forall ((i degreespersec)) (and (<= (- 180) (degreespersecqtint i)) (<= (degreespersecqtint i) 180))))
(define-fun in_range3 ((x Int)) Bool (and (<= (- 180) x) (<= x 180)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (degreespersec degreespersec) Bool)
(declare-const dummy3 degreespersec)
(declare-datatypes () ((degreespersec__ref (mk_degreespersec__ref (degreespersec__content degreespersec)))))
(define-fun degreespersec__ref___projection ((a degreespersec__ref)) degreespersec (degreespersec__content a))
(define-fun dynamic_invariant3 ((temp___expr_214 Int) (temp___is_init_210 Bool) (temp___skip_constant_211 Bool) (temp___do_toplevel_212 Bool) (temp___do_typ_inv_213 Bool)) Bool (=> (or (= temp___is_init_210 true) (<= (- 180) 180)) (in_range3 temp___expr_214)))
(declare-sort slipangle 0)
(declare-fun slipangleqtint (slipangle) Int)
(assert (forall ((i slipangle)) (and (<= (- 25) (slipangleqtint i)) (<= (slipangleqtint i) 25))))
(define-fun in_range4 ((x Int)) Bool (and (<= (- 25) x) (<= x 25)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (slipangle slipangle) Bool)
(declare-const dummy4 slipangle)
(declare-datatypes () ((slipangle__ref (mk_slipangle__ref (slipangle__content slipangle)))))
(define-fun slipangle__ref___projection ((a slipangle__ref)) slipangle (slipangle__content a))
(define-fun dynamic_invariant4 ((temp___expr_200 Int) (temp___is_init_196 Bool) (temp___skip_constant_197 Bool) (temp___do_toplevel_198 Bool) (temp___do_typ_inv_199 Bool)) Bool (=> (or (= temp___is_init_196 true) (<= (- 25) 25)) (in_range4 temp___expr_200)))
(declare-const mach Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const slip Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort degreespersec1 0)
(declare-fun degreespersecqtint1 (degreespersec1) Int)
(assert (forall ((i degreespersec1)) (and (<= (- 180) (degreespersecqtint1 i)) (<= (degreespersecqtint1 i) 180))))
(define-fun in_range5 ((x Int)) Bool (and (<= (- 180) x) (<= x 180)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (degreespersec1 degreespersec1) Bool)
(declare-const dummy5 degreespersec1)
(declare-datatypes () ((degreespersec__ref1 (mk_degreespersec__ref1 (degreespersec__content1 degreespersec1)))))
(define-fun degreespersec__ref___2__projection ((a degreespersec__ref1)) degreespersec1 (degreespersec__content1 a))
(define-fun dynamic_invariant5 ((temp___expr_235 Int) (temp___is_init_231 Bool) (temp___skip_constant_232 Bool) (temp___do_toplevel_233 Bool) (temp___do_typ_inv_234 Bool)) Bool (=> (or (= temp___is_init_231 true) (<= (- 180) 180)) (in_range5 temp___expr_235)))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const c3b Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const c4b Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const present_sliprate Int)
(declare-const rudder_movement Int)
(declare-const target_angle Int)
(declare-const ap__heading__yaw__rate__calc_yawrate__present_yawrate Int)
(declare-const result Int)
(declare-const present_sliprate1 Int)
(assert (in_range mach))
(assert (in_range4 slip))
(assert (=> (<= (- 180) 180) (in_range5 present_sliprate)))
(assert (=> (<= (- 45) 45) (in_range1 rudder_movement)))
(assert (in_range3 ap__heading__yaw__rate__calc_yawrate__present_yawrate))
(assert (= result present_sliprate))
(assert (= present_sliprate1 ap__heading__yaw__rate__calc_yawrate__present_yawrate))
(assert (= present_sliprate1 c3b))
(assert (in_range5 c3b))
(assert (= mach c4b))
(assert (in_range c4b))
(assert (=> (<= (- 45) 45) (in_range1 target_angle)))
(assert (not (< 0 20)))
(check-sat)
(exit)
