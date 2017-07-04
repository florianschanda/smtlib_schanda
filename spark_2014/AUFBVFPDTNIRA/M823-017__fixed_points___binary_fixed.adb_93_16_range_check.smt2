;; produced by cvc4_14.drv ;;
(set-logic AUFBVFPDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.5)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
;;; SMT-LIB2: real arithmetic
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-fun us_null_ext__ () us_private)

(declare-sort us_type_of_heap 0)

(declare-datatypes ()
((us_type_of_heap__ref
 (mk___type_of_heap__ref (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)

(declare-datatypes () ((int__ref (mk_int__ref (int__content Int)))))
(declare-datatypes () ((bool__ref (mk_bool__ref (bool__content Bool)))))
(declare-datatypes () ((real__ref (mk_real__ref (real__content Real)))))
(declare-datatypes ()
((us_private__ref (mk___private__ref (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))

(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))

(define-fun real__ref___projection ((a real__ref)) Real (real__content a))

(define-fun us_private__ref___projection ((a us_private__ref)) us_private 
  (us_private__content a))

(declare-fun pow2 (Int) Int)

(define-fun to_nearest ((m RoundingMode)) Bool (or (= m RNE) (= m RNA)))

(define-fun is_plus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                (fp.isPositive  x)))

(define-fun is_minus_infinity ((x Float32)) Bool (and (fp.isInfinite  x)
                                                 (fp.isNegative  x)))

(define-fun is_plus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                            (fp.isPositive  x)))

(define-fun is_minus_zero ((x Float32)) Bool (and (fp.isZero      x)
                                             (fp.isNegative  x)))

(declare-fun of_int (RoundingMode Int) Float32)

(declare-fun to_int1 (RoundingMode Float32) Int)

(declare-fun round (RoundingMode Real) Real)

(declare-fun max_int () Int)

(define-fun in_range ((x Real)) Bool (and
                                     (<= (- (* 33554430.0 10141204801825835211973625643008.0)) x)
                                     (<= x (* 33554430.0 10141204801825835211973625643008.0))))

(define-fun in_int_range ((i Int)) Bool (and (<= (- max_int) i)
                                        (<= i max_int)))

(define-fun no_overflow ((m RoundingMode) (x Real)) Bool (in_range
  (round m x)))

(define-fun in_safe_int_range ((i Int)) Bool (and (<= (- 16777216) i)
                                             (<= i 16777216)))

(define-fun same_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign ((x Float32)
  (y Float32)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign ((z Float32) (x Float32)
  (y Float32)) Bool (and (=> (same_sign x y) (fp.isPositive  z))
                    (=> (diff_sign x y) (fp.isNegative  z))))

(define-fun sqr ((x Real)) Real (* x x))

(declare-fun sqrt (Real) Real)

(define-fun same_sign_real ((x Float32)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int1 (Float32) Bool)

(define-fun neq ((x Float32) (y Float32)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(define-fun is_plus_infinity1 ((x Float64)) Bool (and (fp.isInfinite  x)
                                                 (fp.isPositive  x)))

(define-fun is_minus_infinity1 ((x Float64)) Bool (and (fp.isInfinite  x)
                                                  (fp.isNegative  x)))

(define-fun is_plus_zero1 ((x Float64)) Bool (and (fp.isZero      x)
                                             (fp.isPositive  x)))

(define-fun is_minus_zero1 ((x Float64)) Bool (and (fp.isZero      x)
                                              (fp.isNegative  x)))

(declare-fun of_int2 (RoundingMode Int) Float64)

(declare-fun to_int3 (RoundingMode Float64) Int)

(declare-fun round1 (RoundingMode Real) Real)

(declare-fun max_int1 () Int)

(define-fun in_range2 ((x Real)) Bool (and
                                      (<= (- (* 9007199254740991.0 19958403095347198116563727130368385660674512604354575415025472424372118918689640657849579654926357010893424468441924952439724379883935936607391717982848314203200056729510856765175377214443629871826533567445439239933308104551208703888888552684480441575071209068757560416423584952303440099278848.0)) x)
                                      (<= x (* 9007199254740991.0 19958403095347198116563727130368385660674512604354575415025472424372118918689640657849579654926357010893424468441924952439724379883935936607391717982848314203200056729510856765175377214443629871826533567445439239933308104551208703888888552684480441575071209068757560416423584952303440099278848.0))))

(define-fun in_int_range1 ((i Int)) Bool (and (<= (- max_int1) i)
                                         (<= i max_int1)))

(define-fun no_overflow1 ((m RoundingMode) (x Real)) Bool (in_range2
  (round1 m x)))

(define-fun in_safe_int_range1 ((i Int)) Bool (and
                                              (<= (- 9007199254740992) i)
                                              (<= i 9007199254740992)))

(define-fun same_sign1 ((x Float64)
  (y Float64)) Bool (or (and (fp.isPositive  x) (fp.isPositive  y))
                    (and (fp.isNegative  x) (fp.isNegative  y))))

(define-fun diff_sign1 ((x Float64)
  (y Float64)) Bool (or (and (fp.isPositive  x) (fp.isNegative  y))
                    (and (fp.isNegative  x) (fp.isPositive  y))))

(define-fun product_sign1 ((z Float64) (x Float64)
  (y Float64)) Bool (and (=> (same_sign1 x y) (fp.isPositive  z))
                    (=> (diff_sign1 x y) (fp.isNegative  z))))

(define-fun same_sign_real1 ((x Float64)
  (r Real)) Bool (or (and (fp.isPositive  x) (< 0.0 r))
                 (and (fp.isNegative  x) (< r 0.0))))

(declare-fun is_int2 (Float64) Bool)

(define-fun neq1 ((x Float64) (y Float64)) Bool (not (fp.eq x y)))

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 Float64)))))
(declare-fun to_float32 (Int) Float32)

(declare-fun of_float32 (Float32) Int)

(declare-fun to_float64 (Int) Float64)

(declare-fun of_float64 (Float64) Int)

(declare-sort integer 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range3 temp___expr_15)))

(declare-sort float 0)

(declare-fun user_eq1 (float float) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE2 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Float32)

(declare-fun dummy1 () float)

(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))

(define-fun dynamic_invariant1 ((temp___expr_51 Float32)
  (temp___is_init_48 Bool) (temp___skip_constant_49 Bool)
  (temp___do_toplevel_50 Bool)) Bool (=>
                                     (or (= temp___is_init_48 true)
                                     (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111)))
                                     (not (or (fp.isInfinite temp___expr_51) (fp.isNaN temp___expr_51)))))

(declare-sort ttB 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 32768) x) (<= x 32767)))

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

(declare-fun dummy2 () ttB)

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun to_fixed (ttB) Int)

(declare-fun of_fixed (Int) ttB)

(declare-fun user_eq2 (ttB ttB) Bool)

(define-fun pos_div_relation ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (and (<= exact res) (<= res (+ exact 1)))))))

(define-fun pos_div_relation_rna ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (ite (< (- num (* exact den)) (- (* (+ exact 1) den) num))
                  (= res exact) (= res (+ exact 1)))))))

(declare-fun fxp_mult (Int Int) Int)

;; fxp_mult_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (or (= x 0) (= y 0)) (= (fxp_mult x y) 0)
     (ite (or (and (< 0 x) (< 0 y)) (and (< x 0) (< y 0))) (pos_div_relation
     (fxp_mult x y) (* x y) 256) (pos_div_relation (- (fxp_mult x y))
     (- (* x y)) 256))) :pattern ((fxp_mult x y)) ))))

(declare-fun fxp_div (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div x y) (* x 256) y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div x y) (* (- x) 256)
     (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div x y))
     (* (- x) 256) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div x y)) (* x 256)
     (- y))))))) :pattern ((fxp_div x y)) ))))

(declare-fun fxp_div_int (Int Int) Int)

;; fxp_div_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_int x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div_int x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div_int x y) (- x)
     (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div_int x y)) (- x)
     y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div_int x y)) x
     (- y))))))) :pattern ((fxp_div_int x y)) ))))

(declare-fun fxp_div_result_int (Int Int) Int)

;; fxp_div_result_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_result_int x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna
     (fxp_div_result_int x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation_rna
     (fxp_div_result_int x y) (- x) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna
     (- (fxp_div_result_int x y)) (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna
     (- (fxp_div_result_int x y)) x (- y))))))) :pattern ((fxp_div_result_int
                                                          x y)) ))))

(declare-fun to_int4 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int4 x) 0)
     (ite (< 0 x) (pos_div_relation (to_int4 x) x 256) (pos_div_relation
     (- (to_int4 x)) (- x) 256))) :pattern ((to_int4 x)) )))

(declare-fun of_real (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x ttB))
  (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)) )))

;; range_axiom
  (assert (forall ((x ttB)) (in_range4 (to_fixed x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed
                                                                (of_fixed x))) )))

(declare-datatypes () ((ttB__ref (mk_ttB__ref (ttB__content ttB)))))
(define-fun ttB__ref___projection ((a ttB__ref)) ttB (ttB__content a))

(declare-sort t 0)

(define-fun in_range5 ((x Int)) Bool (and (<= (- 2560) x) (<= x 2560)))

(declare-fun dummy3 () t)

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun to_fixed1 (t) Int)

(declare-fun of_fixed1 (Int) t)

(declare-fun user_eq3 (t t) Bool)

(define-fun pos_div_relation1 ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (and (<= exact res) (<= res (+ exact 1)))))))

(define-fun pos_div_relation_rna1 ((res Int) (num Int)
  (den Int)) Bool (let ((exact (div1 num den)))
                  (ite (= num 0) (= res 0)
                  (ite (= num (* exact den)) (= res exact)
                  (ite (< (- num (* exact den)) (- (* (+ exact 1) den) num))
                  (= res exact) (= res (+ exact 1)))))))

(declare-fun fxp_mult1 (Int Int) Int)

;; fxp_mult_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (or (= x 0) (= y 0)) (= (fxp_mult1 x y) 0)
     (ite (or (and (< 0 x) (< 0 y)) (and (< x 0) (< y 0))) (pos_div_relation1
     (fxp_mult1 x y) (* x y) 256) (pos_div_relation1 (- (fxp_mult1 x y))
     (- (* x y)) 256))) :pattern ((fxp_mult1 x y)) ))))

(declare-fun fxp_div1 (Int Int) Int)

;; fxp_div_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div1 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation1 (fxp_div1 x y) (* x 256)
     y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation1 (fxp_div1 x y)
     (* (- x) 256) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation1 (- (fxp_div1 x y))
     (* (- x) 256) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation1 (- (fxp_div1 x y))
     (* x 256) (- y))))))) :pattern ((fxp_div1 x y)) ))))

(declare-fun fxp_div_int1 (Int Int) Int)

;; fxp_div_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_int1 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation1 (fxp_div_int1 x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation1 (fxp_div_int1 x y) (- x)
     (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation1 (- (fxp_div_int1 x y))
     (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation1 (- (fxp_div_int1 x y)) x
     (- y))))))) :pattern ((fxp_div_int1 x y)) ))))

(declare-fun fxp_div_result_int1 (Int Int) Int)

;; fxp_div_result_int_def
  (assert
  (forall ((x Int))
  (forall ((y Int))
  (! (ite (= x 0) (= (fxp_div_result_int1 x y) 0)
     (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna1
     (fxp_div_result_int1 x y) x y)
     (ite (and (< x 0) (< y 0)) (pos_div_relation_rna1
     (fxp_div_result_int1 x y) (- x) (- y))
     (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna1
     (- (fxp_div_result_int1 x y)) (- x) y)
     (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna1
     (- (fxp_div_result_int1 x y)) x (- y))))))) :pattern ((fxp_div_result_int1
                                                           x y)) ))))

(declare-fun to_int5 (Int) Int)

;; to_int_def
  (assert
  (forall ((x Int))
  (! (ite (= x 0) (= (to_int5 x) 0)
     (ite (< 0 x) (pos_div_relation1 (to_int5 x) x 256) (pos_div_relation1
     (- (to_int5 x)) (- x) 256))) :pattern ((to_int5 x)) )))

(declare-fun of_real1 (Real) Int)

;; inversion_axiom
  (assert
  (forall ((x t))
  (! (= (of_fixed1 (to_fixed1 x)) x) :pattern ((to_fixed1 x)) )))

;; range_axiom
  (assert (forall ((x t)) (in_range5 (to_fixed1 x))))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_fixed1 (of_fixed1 x)) x)) :pattern ((to_fixed1
                                                                  (of_fixed1
                                                                  x))) )))

(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 t)))))
(define-fun t__ref___projection ((a t__ref2)) t (t__content2 a))

(declare-fun x () t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort ty2S 0)

(define-fun in_range6 ((x1 Int)) Bool (and (<= 0 x1) (<= x1 10)))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (ty2S ty2S) Bool)

(declare-fun dummy4 () ty2S)

(declare-datatypes () ((ty2S__ref (mk_ty2S__ref (ty2S__content ty2S)))))
(define-fun ty2S__ref___projection ((a ty2S__ref)) ty2S (ty2S__content a))

(define-fun dynamic_invariant2 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 10)) (in_range6 temp___expr_141)))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort t3 0)

(define-fun in_range7 ((x1 Int)) Bool (and (<= 0 x1) (<= x1 10)))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq5 (t3 t3) Bool)

(declare-fun dummy5 () t3)

(declare-datatypes () ((t3__ref (mk_t3__ref (t3__content t3)))))
(define-fun t3__ref___projection ((a t3__ref)) t3 (t3__content a))

(define-fun dynamic_invariant3 ((temp___expr_147 Int)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (<= 0 10)) (in_range7 temp___expr_147)))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-sort tz2S 0)

(define-fun in_range8 ((x1 Float32)) Bool (and
                                          (not (or (fp.isInfinite x1) (fp.isNaN x1)))
                                          (and
                                          (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x1)
                                          (fp.leq x1 (fp #b0 #b10000010 #b01000000000000000000000)))))

(declare-fun user_eq6 (tz2S tz2S) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE7 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Float32)

(declare-fun dummy6 () tz2S)

(declare-datatypes () ((tz2S__ref (mk_tz2S__ref (tz2S__content tz2S)))))
(define-fun tz2S__ref___projection ((a tz2S__ref)) tz2S (tz2S__content a))

(define-fun dynamic_invariant4 ((temp___expr_153 Float32)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b01000000000000000000000)))
                                      (in_range8 temp___expr_153)))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-sort tt3 0)

(define-fun in_range9 ((x1 Float32)) Bool (and
                                          (not (or (fp.isInfinite x1) (fp.isNaN x1)))
                                          (and
                                          (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) x1)
                                          (fp.leq x1 (fp #b0 #b10000010 #b01000000000000000000000)))))

(declare-fun user_eq7 (tt3 tt3) Bool)

(declare-fun attr__ATTRIBUTE_IMAGE8 (Float32) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Float32)

(declare-fun dummy7 () tt3)

(declare-datatypes () ((tt3__ref (mk_tt3__ref (tt3__content tt3)))))
(define-fun tt3__ref___projection ((a tt3__ref)) tt3 (tt3__content a))

(define-fun dynamic_invariant5 ((temp___expr_159 Float32)
  (temp___is_init_156 Bool) (temp___skip_constant_157 Bool)
  (temp___do_toplevel_158 Bool)) Bool (=>
                                      (or (= temp___is_init_156 true)
                                      (fp.leq (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b01000000000000000000000)))
                                      (in_range9 temp___expr_159)))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun y1 () Int)

(declare-fun y2 () Int)

(declare-fun y3 () Int)

(declare-fun z1 () Float32)

(declare-fun z2 () Float32)

(declare-fun z3 () Float32)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun result () Float32)

(declare-fun z11 () Float32)

(declare-fun result1 () Float32)

(declare-fun z21 () Float32)

(declare-fun result2 () Float32)

(declare-fun z31 () Float32)

(declare-fun result3 () Int)

(declare-fun y11 () Int)

;; H
  (assert (and (<= (- 1280) (to_fixed1 x)) (<= (to_fixed1 x) 1280)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range3 y1)))

;; H
  (assert (=> (<= 0 10) (in_range6 y2)))

;; H
  (assert (=> (<= 0 10) (in_range7 y3)))

;; H
  (assert (= result z1))

;; H
  (assert (= z11 (fp #b0 #b01111111 #b00000000000000000000000)))

;; H
  (assert (not (or (fp.isInfinite z11) (fp.isNaN z11))))

;; H
  (assert (= result1 z2))

;; H
  (assert (= z21 (fp #b0 #b01111111 #b00000000000000000000000)))

;; H
  (assert (in_range8 z21))

;; H
  (assert (= result2 z3))

;; H
  (assert (= z31 (fp #b0 #b01111111 #b00000000000000000000000)))

;; H
  (assert (in_range9 z31))

;; H
  (assert
  (and (= o (to_int5 (to_fixed1 x))) (in_range3 (to_int5 (to_fixed1 x)))))

;; H
  (assert (= result3 y1))

;; H
  (assert (= y11 o))

;; H
  (assert (<= 0 (to_fixed1 x)))

;; H
  (assert
  (and (= o1 (to_int5 (to_fixed1 x))) (in_range3 (to_int5 (to_fixed1 x)))))

(assert
;; WP_parameter_def
 ;; File "binary_fixed.adb", line 57, characters 0-0
  (not (in_range6 o1)))
(check-sat)
