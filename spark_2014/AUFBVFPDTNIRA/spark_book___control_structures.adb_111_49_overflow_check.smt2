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

(declare-datatypes () ((t__ref (mk_t__ref (t__content Float32)))))
(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int1 ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
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
                                     (in_range2 temp___expr_15)))

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

(declare-sort character 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (character character) Bool)

(declare-fun dummy2 () character)

(declare-datatypes ()
((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character 
  (character__content a))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(declare-sort field 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (field field) Bool)

(declare-fun dummy3 () field)

(declare-datatypes () ((field__ref (mk_field__ref (field__content field)))))
(define-fun field__ref___projection ((a field__ref)) field (field__content a))

(define-fun dynamic_invariant3 ((temp___expr_472 Int)
  (temp___is_init_469 Bool) (temp___skip_constant_470 Bool)
  (temp___do_toplevel_471 Bool)) Bool (=>
                                      (or (= temp___is_init_469 true)
                                      (<= 0 255)) (in_range4
                                      temp___expr_472)))

(declare-sort number_base 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 2 x) (<= x 16)))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (number_base number_base) Bool)

(declare-fun dummy4 () number_base)

(declare-datatypes ()
((number_base__ref (mk_number_base__ref (number_base__content number_base)))))
(define-fun number_base__ref___projection ((a number_base__ref)) number_base 
  (number_base__content a))

(define-fun dynamic_invariant4 ((temp___expr_478 Int)
  (temp___is_init_475 Bool) (temp___skip_constant_476 Bool)
  (temp___do_toplevel_477 Bool)) Bool (=>
                                      (or (= temp___is_init_475 true)
                                      (<= 2 16)) (in_range5 temp___expr_478)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort num 0)

(define-fun in_range6 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq5 (num num) Bool)

(declare-fun dummy5 () num)

(declare-datatypes () ((num__ref (mk_num__ref (num__content num)))))
(define-fun num__ref___projection ((a num__ref)) num (num__content a))

(define-fun dynamic_invariant5 ((temp___expr_514 Int)
  (temp___is_init_511 Bool) (temp___skip_constant_512 Bool)
  (temp___do_toplevel_513 Bool)) Bool (=>
                                      (or (= temp___is_init_511 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range6 temp___expr_514)))

(declare-sort uppercase 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 65 x) (<= x 90)))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq6 (uppercase uppercase) Bool)

(declare-fun dummy6 () uppercase)

(declare-datatypes ()
((uppercase__ref (mk_uppercase__ref (uppercase__content uppercase)))))
(define-fun uppercase__ref___projection ((a uppercase__ref)) uppercase 
  (uppercase__content a))

(define-fun dynamic_invariant6 ((temp___expr_529 Int)
  (temp___is_init_526 Bool) (temp___skip_constant_527 Bool)
  (temp___do_toplevel_528 Bool)) Bool (=>
                                      (or (= temp___is_init_526 true)
                                      (<= 65 90)) (in_range7
                                      temp___expr_529)))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS12 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS13 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS14 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS15 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS16 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS17 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS18 () Int)

(declare-fun tolerance () Float32)

(declare-fun attr__ATTRIBUTE_ADDRESS19 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS20 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS21 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS22 () Int)

(declare-fun r4b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS23 () Int)

(declare-fun r5b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS24 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS25 () Int)

(declare-fun r7b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS26 () Int)

(declare-fun r8b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS27 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS28 () Int)

(declare-fun c10b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS29 () Int)

;; tolerance__def_axiom
  (assert (= tolerance (fp #b0 #b01110001 #b10100011011011100010111)))

(declare-fun default_width () Int)

(declare-fun default_base () Int)

(declare-fun a () Int)

(declare-fun b () Int)

(declare-fun c () Int)

(declare-fun d () Int)

(declare-fun e () Int)

(declare-fun f () Int)

(declare-fun g () Int)

(declare-fun h () Int)

(declare-fun ch () Int)

(declare-fun temperature () Int)

(declare-fun valve_setting () Int)

(declare-fun value () Int)

(declare-fun sum () Int)

(declare-fun success () Bool)

(declare-fun approx () Float32)

(declare-fun x () Float32)

(declare-fun y () Float32)

(declare-fun letter () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun g1 () Int)

(declare-fun result () int__ref)

(declare-fun letter1 () Int)

(declare-fun result1 () int__ref)

(declare-fun a1 () Int)

(declare-fun result2 () int__ref)

(declare-fun b1 () Int)

(declare-fun result3 () int__ref)

(declare-fun c1 () Int)

(declare-fun result4 () int__ref)

(declare-fun d1 () Int)

(declare-fun result5 () int__ref)

(declare-fun e1 () Int)

(declare-fun result6 () int__ref)

(declare-fun ch1 () Int)

(declare-fun result7 () t__ref)

(declare-fun x1 () Float32)

(declare-fun result8 () int__ref)

(declare-fun a2 () Int)

(declare-fun result9 () int__ref)

(declare-fun d2 () Int)

(declare-fun result10 () int__ref)

(declare-fun b2 () Int)

(declare-fun result11 () int__ref)

(declare-fun e2 () Int)

(declare-fun result12 () int__ref)

(declare-fun f1 () Int)

(declare-fun result13 () int__ref)

(declare-fun e3 () Int)

(declare-fun result14 () int__ref)

(declare-fun f2 () Int)

(declare-fun result15 () int__ref)

(declare-fun f3 () Int)

(declare-fun result16 () int__ref)

(declare-fun f4 () Int)

(declare-fun result17 () int__ref)

(declare-fun f5 () Int)

(declare-fun result18 () int__ref)

(declare-fun g2 () Int)

(declare-fun result19 () int__ref)

(declare-fun g3 () Int)

(declare-fun result20 () int__ref)

(declare-fun g4 () Int)

(declare-fun result21 () bool__ref)

(declare-fun success1 () Bool)

(declare-fun result22 () int__ref)

(declare-fun h1 () Int)

(declare-fun result23 () int__ref)

(declare-fun h2 () Int)

(declare-fun result24 () int__ref)

(declare-fun h3 () Int)

(declare-fun result25 () int__ref)

(declare-fun h4 () Int)

(declare-fun result26 () int__ref)

(declare-fun h5 () Int)

(declare-fun result27 () bool__ref)

(declare-fun success2 () Bool)

(declare-fun result28 () int__ref)

(declare-fun c2 () Int)

(declare-fun result29 () int__ref)

(declare-fun c3 () Int)

(declare-fun result30 () int__ref)

(declare-fun c4 () Int)

(declare-fun result31 () int__ref)

(declare-fun c5 () Int)

(declare-fun result32 () int__ref)

(declare-fun c6 () Int)

(declare-fun result33 () int__ref)

(declare-fun c7 () Int)

(define-fun h6 () int__ref (mk_int__ref h))

(define-fun g5 () int__ref (mk_int__ref g))

(define-fun f6 () int__ref (mk_int__ref f))

;; H
  (assert (in_range4 default_width))

;; H
  (assert (in_range5 default_base))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 a)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 b)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 c)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 d)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 e)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 f)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 g)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 h)))

;; H
  (assert (=> (<= 0 255) (in_range3 ch)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 temperature)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 valve_setting)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 value)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range2 sum)))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite approx) (fp.isNaN approx)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite x) (fp.isNaN x)))))

;; H
  (assert
  (=>
  (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))
  (not (or (fp.isInfinite y) (fp.isNaN y)))))

;; H
  (assert (not (or (fp.isInfinite tolerance) (fp.isNaN tolerance))))

;; H
  (assert (= result (mk_int__ref letter)))

;; H
  (assert (= letter1 81))

;; H
  (assert (in_range7 letter1))

;; H
  (assert (= result1 (mk_int__ref a)))

;; H
  (assert (= a1 1))

;; H
  (assert (= result2 (mk_int__ref b)))

;; H
  (assert (= b1 2))

;; H
  (assert (= result3 (mk_int__ref c)))

;; H
  (assert (= c1 3))

;; H
  (assert (= result4 (mk_int__ref d)))

;; H
  (assert (= d1 3))

;; H
  (assert (= result5 (mk_int__ref e)))

;; H
  (assert (= e1 4))

;; H
  (assert (= result6 (mk_int__ref ch)))

;; H
  (assert (= ch1 68))

;; H
  (assert (= result7 (mk_t__ref x)))

;; H
  (assert (= x1 (fp #b0 #b10000101 #b11101101110100011000001)))

;; H
  (assert (=> (< a1 0) (and (= o (- a1)) (in_range2 (- a1)))))

;; H
  (assert (=> (< a1 0) (= result8 (mk_int__ref a1))))

;; H
  (assert (=> (< a1 0) (= a2 o)))

;; H
  (assert (=> (< a1 0) (= result9 (mk_int__ref d1))))

;; H
  (assert (=> (< a1 0) (= d2 1)))

;; H
  (assert (=> (not (< a1 0)) (= d2 d1)))

;; H
  (assert (=> (not (< a1 0)) (= a2 a1)))

;; H
  (assert (=> (and (<= 1 a2) (<= a2 12)) (= result10 (mk_int__ref b1))))

;; H
  (assert (=> (and (<= 1 a2) (<= a2 12)) (= b2 17)))

;; H
  (assert (=> (not (and (<= 1 a2) (<= a2 12))) (= b2 b1)))

;; H
  (assert (=> (< b2 a2) (= result11 (mk_int__ref e1))))

;; H
  (assert (=> (< b2 a2) (= e2 1)))

;; H
  (assert (=> (< b2 a2) (= result12 f6)))

;; H
  (assert (=> (< b2 a2) (= f1 a2)))

;; H
  (assert (=> (not (< b2 a2)) (= result13 (mk_int__ref e1))))

;; H
  (assert (=> (not (< b2 a2)) (= e3 2)))

;; H
  (assert (=> (not (< b2 a2)) (= result14 f6)))

;; H
  (assert (=> (not (< b2 a2)) (= f2 b2)))

;; H
  (assert (=> (not (< b2 a2)) (= f1 f2)))

;; H
  (assert (=> (not (< b2 a2)) (= e2 e3)))

;; H
  (assert (=> (= a2 b2) (= result15 (mk_int__ref f1))))

;; H
  (assert (=> (= a2 b2) (= f3 3)))

;; H
  (assert (=> (not (= a2 b2)) (=> (< b2 a2) (= result16 (mk_int__ref f1)))))

;; H
  (assert (=> (not (= a2 b2)) (=> (< b2 a2) (= f4 4))))

;; H
  (assert
  (=> (not (= a2 b2)) (=> (not (< b2 a2)) (= result17 (mk_int__ref f1)))))

;; H
  (assert (=> (not (= a2 b2)) (=> (not (< b2 a2)) (= f5 5))))

;; H
  (assert (=> (not (= a2 b2)) (=> (not (< b2 a2)) (= f4 f5))))

;; H
  (assert (=> (not (= a2 b2)) (= f3 f4)))

;; H
  (assert (=> (and (< b2 a2) (< c1 a2)) (= result18 g5)))

;; H
  (assert (=> (and (< b2 a2) (< c1 a2)) (= g2 6)))

;; H
  (assert
  (=> (not (and (< b2 a2) (< c1 a2)))
  (=> (and (< a2 b2) (< c1 b2)) (= result19 g5))))

;; H
  (assert
  (=> (not (and (< b2 a2) (< c1 a2)))
  (=> (and (< a2 b2) (< c1 b2)) (= g3 7))))

;; H
  (assert
  (=> (not (and (< b2 a2) (< c1 a2)))
  (=> (not (and (< a2 b2) (< c1 b2)))
  (=> (and (< a2 c1) (< b2 c1)) (= result20 g5)))))

;; H
  (assert
  (=> (not (and (< b2 a2) (< c1 a2)))
  (=> (not (and (< a2 b2) (< c1 b2)))
  (=> (and (< a2 c1) (< b2 c1)) (= g4 8)))))

;; H
  (assert
  (=> (not (and (< b2 a2) (< c1 a2)))
  (=> (not (and (< a2 b2) (< c1 b2)))
  (=> (not (and (< a2 c1) (< b2 c1))) (= g4 g)))))

;; H
  (assert
  (=> (not (and (< b2 a2) (< c1 a2)))
  (=> (not (and (< a2 b2) (< c1 b2)))
  (=> (not (and (< a2 c1) (< b2 c1))) (= g4 g1)))))

;; H
  (assert
  (=> (not (and (< b2 a2) (< c1 a2)))
  (=> (not (and (< a2 b2) (< c1 b2))) (= g3 g4))))

;; H
  (assert (=> (not (and (< b2 a2) (< c1 a2))) (= g2 g3)))

;; H
  (assert (= result21 (mk_bool__ref success)))

;; H
  (assert (= success1 (of_int1 1)))

;; H
  (assert (=> (and (<= 97 ch1) (<= ch1 122)) (= result22 h6)))

;; H
  (assert (=> (and (<= 97 ch1) (<= ch1 122)) (= h1 1)))

;; H
  (assert (=> (and (<= 97 ch1) (<= ch1 122)) (= success2 success1)))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (and (<= 65 ch1) (<= ch1 90)) (= result23 h6))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (and (<= 65 ch1) (<= ch1 90)) (= h2 2))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (and (<= 65 ch1) (<= ch1 90)) (= success2 success1))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (and (<= 48 ch1) (<= ch1 57)) (= result24 h6)))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (and (<= 48 ch1) (<= ch1 57)) (= h3 3)))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (and (<= 48 ch1) (<= ch1 57)) (= success2 success1)))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57)))
  (=> (=> (not (= ch1 46)) (=> (not (= ch1 33)) (= ch1 63))) (= result25 h6))))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57)))
  (=> (=> (not (= ch1 46)) (=> (not (= ch1 33)) (= ch1 63))) (= h4 4))))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57)))
  (=> (=> (not (= ch1 46)) (=> (not (= ch1 33)) (= ch1 63)))
  (= success2 success1))))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57)))
  (=> (not (=> (not (= ch1 46)) (=> (not (= ch1 33)) (= ch1 63))))
  (= result26 h6))))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57)))
  (=> (not (=> (not (= ch1 46)) (=> (not (= ch1 33)) (= ch1 63)))) (= h5 5))))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57)))
  (=> (not (=> (not (= ch1 46)) (=> (not (= ch1 33)) (= ch1 63))))
  (= result27 (mk_bool__ref success1)))))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57)))
  (=> (not (=> (not (= ch1 46)) (=> (not (= ch1 33)) (= ch1 63))))
  (= success2 (of_int1 0)))))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57)))
  (=> (not (=> (not (= ch1 46)) (=> (not (= ch1 33)) (= ch1 63)))) (= h4 h5))))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90)))
  (=> (not (and (<= 48 ch1) (<= ch1 57))) (= h3 h4)))))

;; H
  (assert
  (=> (not (and (<= 97 ch1) (<= ch1 122)))
  (=> (not (and (<= 65 ch1) (<= ch1 90))) (= h2 h3))))

;; H
  (assert (=> (not (and (<= 97 ch1) (<= ch1 122))) (= h1 h2)))

;; H
  (assert (=> (< b2 a2) (and (= o1 (+ d2 5)) (in_range2 (+ d2 5)))))

;; H
  (assert (=> (< b2 a2) (= result28 (mk_int__ref c1))))

;; H
  (assert (=> (< b2 a2) (= c2 o1)))

;; H
  (assert (=> (not (< b2 a2)) (= result29 (mk_int__ref c1))))

;; H
  (assert (=> (not (< b2 a2)) (= c3 (div1 f3 2))))

;; H
  (assert (=> (not (< b2 a2)) (= c2 c3)))

;; H
  (assert (=> (< b2 a2) (and (= o2 (+ d2 5)) (in_range2 (+ d2 5)))))

;; H
  (assert (=> (not (< b2 a2)) (= o2 (div1 f3 2))))

;; H
  (assert (= result30 (mk_int__ref c2)))

;; H
  (assert (= c4 o2))

;; H
  (assert (=> (< b2 a2) (and (= o3 (+ d2 5)) (in_range2 (+ d2 5)))))

;; H
  (assert (=> (< b2 a2) (= result31 (mk_int__ref c4))))

;; H
  (assert (=> (< b2 a2) (= c5 o3)))

;; H
  (assert
  (=> (not (< b2 a2))
  (=> (= a2 b2) (and (= o4 (* 2 a2)) (in_range2 (* 2 a2))))))

;; H
  (assert (=> (not (< b2 a2)) (=> (= a2 b2) (= result32 (mk_int__ref c4)))))

;; H
  (assert (=> (not (< b2 a2)) (=> (= a2 b2) (= c6 o4))))

;; H
  (assert
  (=> (not (< b2 a2)) (=> (not (= a2 b2)) (= result33 (mk_int__ref c4)))))

;; H
  (assert (=> (not (< b2 a2)) (=> (not (= a2 b2)) (= c7 (div1 f3 2)))))

;; H
  (assert (=> (not (< b2 a2)) (=> (not (= a2 b2)) (= c6 c7))))

;; H
  (assert (=> (not (< b2 a2)) (= c5 c6)))

;; H
  (assert (not (< b2 a2)))

;; H
  (assert (= a2 b2))

(assert
;; WP_parameter_def
 ;; File "control_structures.adb", line 29, characters 0-0
  (not (in_range2 (* 2 a2))))
(check-sat)
