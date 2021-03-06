(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFDTNIRA)
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
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (positive positive) Bool)
(declare-const dummy2 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant2 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-fun all_elements_in ((Array Int integer) Int) Bool)
(declare-fun all_elements_in__function_guard (Bool (Array Int integer) Int) Bool)
(assert true)
(assert (forall ((a (Array Int integer))) (forall ((max Int)) (! (= (= (all_elements_in a max) true) (forall ((k Int)) (=> (and (<= 0 k) (<= k 7)) (and (<= (- max) (to_rep (select a k))) (<= (to_rep (select a k)) max))))) :pattern ((all_elements_in a max))))))
(declare-fun intermediate_form ((Array Int integer) (Array Int integer)) Bool)
(declare-fun intermediate_form__function_guard (Bool (Array Int integer) (Array Int integer)) Bool)
(assert true)
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (! (= (= (intermediate_form a b) true) (forall ((k Int)) (=> (and (<= 0 k) (<= k 7)) (ite (= (mod2 (+ k 1) 8) 0) (= (to_rep (select a k)) (+ (+ (+ (+ (+ (+ (+ (to_rep (select b 0)) (to_rep (select b 1))) (to_rep (select b 2))) (to_rep (select b 3))) (to_rep (select b 4))) (to_rep (select b 5))) (to_rep (select b 6))) (to_rep (select b 7)))) (ite (= (mod2 (+ k 1) 4) 0) (= (to_rep (select a k)) (+ (+ (+ (to_rep (select b k)) (to_rep (select b (- k 1)))) (to_rep (select b (- k 2)))) (to_rep (select b (- k 3))))) (ite (= (mod2 (+ k 1) 2) 0) (= (to_rep (select a k)) (+ (to_rep (select b k)) (to_rep (select b (- k 1))))) (= (to_rep (select a k)) (to_rep (select b k))))))))) :pattern ((intermediate_form a b)))))
(declare-sort index 0)
(declare-fun indexqtint (index) Int)
(assert (forall ((i index)) (and (<= 0 (indexqtint i)) (<= (indexqtint i) 7))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 7)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (index index) Bool)
(declare-const dummy3 index)
(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))
(declare-const ghost__ (Array Int integer))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const input_space Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(define-fun dynamic_invariant3 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 0 7)) (in_range4 temp___expr_159)))
(declare-const rliteral integer)
(assert (= (integerqtint rliteral) 0))
(declare-const a (Array Int integer))
(declare-const space Int)
(declare-const left Int)
(declare-const right Int)
(declare-const temp Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const o7 Int)
(declare-const o8 integer)
(declare-const o9 Int)
(declare-const o10 Int)
(declare-const o11 integer)
(declare-const o12 Int)
(declare-const o13 integer)
(declare-const o14 Int)
(declare-const o15 Int)
(declare-const o16 Int)
(declare-const o17 Int)
(declare-const o18 integer)
(declare-const result Int)
(declare-const space1 Int)
(declare-const result1 (Array Int integer))
(declare-const a1 (Array Int integer))
(declare-const result2 Int)
(declare-const space2 Int)
(declare-const a2 (Array Int integer))
(declare-const space3 Int)
(declare-const left1 Int)
(declare-const right1 Int)
(declare-const temp1 Int)
(declare-const temp___268 Int)
(declare-const result3 Int)
(declare-const temp___2681 Int)
(declare-const result4 Int)
(declare-const right2 Int)
(declare-const a3 (Array Int integer))
(declare-const left2 Int)
(declare-const right3 Int)
(declare-const temp2 Int)
(declare-const temp___245 Int)
(declare-const result5 Int)
(declare-const temp___2451 Int)
(declare-const result6 Int)
(declare-const left3 Int)
(declare-const result7 Int)
(declare-const temp3 Int)
(assert (in_range3 input_space))
(assert (and (= (all_elements_in ghost__ 1000000) true) (and (= (all_elements_in a 8000000) true) (and (= input_space 8) (= (intermediate_form a ghost__) true)))))
(assert (and (= o input_space) (in_range2 input_space)))
(assert (= (mk_int__ref result) (mk_int__ref space)))
(assert (= space1 o))
(assert (in_range2 space1))
(assert (=> (<= 0 2147483647) (in_range2 left)))
(assert (=> (<= 0 2147483647) (in_range2 right)))
(assert (=> (<= (- 2147483648) 2147483647) (in_range1 temp)))
(assert (= (mk_map__ref result1) (mk_map__ref a)))
(assert (= a1 (store a 7 rliteral)))
(assert (= space1 result2))
(assert (= space2 (div1 space1 2)))
(assert (< 0 space2))
(assert (and (and (or (or (= space3 4) (= space3 2)) (= space3 1)) (= (all_elements_in a2 (* (* (div1 4 space3) 8) 1000000)) true)) (forall ((k Int)) (=> (and (<= 0 k) (<= k 7)) (ite (= space3 4) (= (to_rep (select a2 k)) (to_rep (select a1 k))) (ite (and (= space3 2) (= (mod2 (+ k 1) 8) 0)) (= (to_rep (select a2 k)) (+ (to_rep (select a1 k)) (to_rep (select a1 (- k (* 2 space3)))))) (ite (and (= space3 2) (= (mod2 (+ k 1) 4) 0)) (= (to_rep (select a2 k)) (to_rep (select a1 (+ k (* 2 space3))))) (ite (= space3 2) (= (to_rep (select a2 k)) (to_rep (select a1 k))) (ite (and (= space3 1) (= (mod2 (+ k 1) 2) 0)) (and (and (and (= (to_rep (select a2 1)) (to_rep (select a1 7))) (= (to_rep (select a2 3)) (+ (to_rep (select a1 1)) (to_rep (select a1 7))))) (= (to_rep (select a2 5)) (+ (to_rep (select a1 7)) (to_rep (select a1 3))))) (= (to_rep (select a2 7)) (+ (+ (to_rep (select a1 5)) (to_rep (select a1 7))) (to_rep (select a1 3))))) (= (to_rep (select a2 k)) (to_rep (select a1 k))))))))))))
(assert (and (and (and (and (=> (<= 0 2147483647) (in_range2 space3)) (=> (<= 0 2147483647) (in_range2 left1))) (=> (<= 0 2147483647) (in_range2 right1))) (=> (<= (- 2147483648) 2147483647) (in_range1 temp1))) (< 0 space3)))
(assert (= temp___268 result3))
(assert (= temp___2681 space3))
(assert (and (= o1 (* space3 2)) (in_range1 (* space3 2))))
(assert (= o2 (- o1 1)))
(assert (and (= o3 o2) (in_range1 o2)))
(assert (and (= o4 o3) (in_range2 o3)))
(assert (= right1 result4))
(assert (= right2 o4))
(assert (< right2 8))
(assert (and (and (forall ((k Int)) (=> (and (<= 0 k) (<= k 7)) (ite (and (<= 0 k) (<= k (- right3 (* space3 2)))) (ite (= (mod2 (+ k 1) (* 2 space3)) 0) (= (to_rep (select a3 k)) (+ (to_rep (select a2 k)) (to_rep (select a2 (- k space3))))) (ite (= (mod2 (+ k 1) space3) 0) (= (to_rep (select a3 k)) (to_rep (select a2 (+ k space3)))) (= (to_rep (select a3 k)) (to_rep (select a2 k))))) (= (to_rep (select a3 k)) (to_rep (select a2 k)))))) (= (mod2 (+ right3 1) (* space3 2)) 0)) (not (<= 8 right3))))
(assert (and (and (and (=> (<= 0 2147483647) (in_range2 left2)) (=> (<= 0 2147483647) (in_range2 right3))) (=> (<= (- 2147483648) 2147483647) (in_range1 temp2))) (< right3 8)))
(assert (= temp___245 result5))
(assert (= temp___2451 right3))
(assert (and (= o5 (- right3 space3)) (in_range1 (- right3 space3))))
(assert (and (= o6 o5) (in_range2 o5)))
(assert (= left2 result6))
(assert (= left3 o6))
(assert (and (<= 0 right3) (<= right3 7)))
(assert (= o7 right3))
(assert (= o8 (select a3 o7)))
(assert (= o9 (to_rep o8)))
(assert (= temp2 result7))
(assert (= temp3 o9))
(assert (and (<= 0 right3) (<= right3 7)))
(assert (= o12 right3))
(assert (= o13 (select a3 o12)))
(assert (= o14 (to_rep o13)))
(assert (and (<= 0 left3) (<= left3 7)))
(assert (= o10 left3))
(assert (= o11 (select a3 o10)))
(assert (= o15 (to_rep o11)))
(assert (= o16 (+ o15 o14)))
(assert (and (= o17 o16) (in_range1 o16)))
(assert (= (to_rep o18) o17))
(assert (not (<= 0 right3)))
(check-sat)
(exit)
