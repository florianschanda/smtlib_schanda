(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFFPDTNIRA)
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
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(declare-sort character 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (character character) Bool)
(declare-const dummy2 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (in_range1 low) (in_range1 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int character)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))
(define-fun of_array ((a (Array Int character)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int character)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int character)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int character)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y)))))
(declare-fun user_eq3 (us_t us_t) Bool)
(declare-const dummy3 us_t)
(declare-fun to_string (us_image) us_t)
(declare-fun from_string (us_t) us_image)
(declare-datatypes () ((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content a))
(declare-sort float 0)
(declare-fun user_eq4 (float float) Bool)
(declare-fun attr__ATTRIBUTE_IMAGE3 (Float32) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Float32)
(declare-const dummy4 float)
(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))
(declare-fun concat1 ((Array Int character) Int Int (Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int)) (forall ((i Int)) (! (and (=> (and (<= a_first i) (<= i a_last)) (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i))) (=> (< a_last i) (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select (concat1 a a_first a_last b b_first b_last) i)))))))
(declare-fun concat_singleton_left (character Int (Array Int character) Int Int) (Array Int character))
(assert (forall ((a character)) (forall ((b (Array Int character))) (forall ((a_first Int) (b_first Int) (b_last Int)) (! (and (= (select (concat_singleton_left a a_first b b_first b_last) a_first) a) (forall ((i Int)) (! (=> (< a_first i) (= (select (concat_singleton_left a a_first b b_first b_last) i) (select b (+ (- i a_first) (- b_first 1))))) :pattern ((select (concat_singleton_left a a_first b b_first b_last) i))))) :pattern ((concat_singleton_left a a_first b b_first b_last)))))))
(declare-fun concat_singleton_right ((Array Int character) Int Int character) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((b character)) (forall ((a_first Int) (a_last Int)) (! (and (= (select (concat_singleton_right a a_first a_last b) (+ a_last 1)) b) (forall ((i Int)) (! (=> (and (<= a_first i) (<= i a_last)) (= (select (concat_singleton_right a a_first a_last b) i) (select a i))) :pattern ((select (concat_singleton_right a a_first a_last b) i)) :pattern ((select a i))))) :pattern ((concat_singleton_right a a_first a_last b)))))))
(declare-fun concat_singletons (character Int character) (Array Int character))
(assert (forall ((a character) (b character)) (forall ((a_first Int)) (! (and (= (select (concat_singletons a a_first b) a_first) a) (= (select (concat_singletons a a_first b) (+ a_first 1)) b)) :pattern ((concat_singletons a a_first b))))))
(declare-fun singleton1 (character Int) (Array Int character))
(assert (forall ((v character)) (forall ((i Int)) (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i))))))
(declare-sort fixed 0)
(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2146435072)))
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
(declare-const dummy5 fixed)
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun to_fixed (fixed) Int)
(declare-fun of_fixed (Int) fixed)
(declare-fun user_eq5 (fixed fixed) Bool)
(declare-fun fxp_div_int (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_int x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation (fxp_div_int x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation (fxp_div_int x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation (- (fxp_div_int x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation (- (fxp_div_int x y)) x (- y))))))) :pattern ((fxp_div_int x y))))))
(declare-fun fxp_div_result_int (Int Int) Int)
(assert (forall ((x Int)) (forall ((y Int)) (! (ite (= x 0) (= (fxp_div_result_int x y) 0) (ite (and (< 0 x) (< 0 y)) (pos_div_relation_rna (fxp_div_result_int x y) x y) (ite (and (< x 0) (< y 0)) (pos_div_relation_rna (fxp_div_result_int x y) (- x) (- y)) (ite (and (< x 0) (< 0 y)) (pos_div_relation_rna (- (fxp_div_result_int x y)) (- x) y) (=> (and (< 0 x) (< y 0)) (pos_div_relation_rna (- (fxp_div_result_int x y)) x (- y))))))) :pattern ((fxp_div_result_int x y))))))
(declare-fun to_int2 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (to_int2 x) 0) (ite (< 0 x) (pos_div_relation (to_int2 x) (* x 1) 1048576) (pos_div_relation (- (to_int2 x)) (* (- x) 1) 1048576))) :pattern ((to_int2 x)))))
(declare-fun of_int1 (Int) Int)
(assert (forall ((x Int)) (! (ite (= x 0) (= (of_int1 x) 0) (ite (< 0 x) (pos_div_relation (of_int1 x) (* x 1048576) 1) (pos_div_relation (- (of_int1 x)) (* (- x) 1048576) 1))) :pattern ((of_int1 x)))))
(assert (forall ((x fixed)) (! (= (of_fixed (to_fixed x)) x) :pattern ((to_fixed x)))))
(assert (forall ((x fixed)) (in_range3 (to_fixed x))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_fixed (of_fixed x)) x)) :pattern ((to_fixed (of_fixed x))))))
(declare-datatypes () ((fixed__ref (mk_fixed__ref (fixed__content fixed)))))
(define-fun fixed__ref___projection ((a fixed__ref)) fixed (fixed__content a))
(declare-fun leibniz_fixed (tuple0) fixed)
(declare-fun leibniz_fixed__function_guard (fixed tuple0) Bool)
(assert (forall ((us_void_param tuple0)) (! (= (to_fixed (leibniz_fixed us_void_param)) 3189596) :pattern ((leibniz_fixed us_void_param)))))
(define-fun dynamic_invariant ((temp___expr_60 Float32) (temp___is_init_56 Bool) (temp___skip_constant_57 Bool) (temp___do_toplevel_58 Bool) (temp___do_typ_inv_59 Bool)) Bool (=> (or (= temp___is_init_56 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (fp.isFinite32 temp___expr_60)))
(declare-fun leibniz_float (tuple0) Float32)
(declare-fun leibniz_float__function_guard (Float32 tuple0) Bool)
(assert (forall ((us_void_param tuple0)) (! (let ((result (leibniz_float us_void_param))) (and (fp.eq result (fp #b0 #b10000000 #b10000101010110110000000)) (dynamic_invariant result true false true true))) :pattern ((leibniz_float us_void_param)))))
(declare-fun shanks_fixed (tuple0) fixed)
(declare-fun shanks_fixed__function_guard (fixed tuple0) Bool)
(assert (forall ((us_void_param tuple0)) (! (= (to_fixed (shanks_fixed us_void_param)) 3293842) :pattern ((shanks_fixed us_void_param)))))
(declare-fun shanks_float (tuple0) Float32)
(declare-fun shanks_float__function_guard (Float32 tuple0) Bool)
(assert (forall ((us_void_param tuple0)) (! (let ((result (shanks_float us_void_param))) (and (fp.eq result (fp #b0 #b10000000 #b10010010000101001010011)) (dynamic_invariant result true false true true))) :pattern ((shanks_float us_void_param)))))
(declare-fun temp___String_Literal_575 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_575 us_void_param) 1)) 76) (= (to_rep (select (temp___String_Literal_575 us_void_param) 2)) 101)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 3)) 105)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 4)) 98)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 5)) 110)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 6)) 105)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 7)) 122)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 8)) 32)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 9)) 102)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 10)) 105)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 11)) 120)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 12)) 101)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 13)) 100)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 15)) 118)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 16)) 97)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 17)) 108)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 18)) 117)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 19)) 101)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 20)) 32)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 21)) 102)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 22)) 111)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 23)) 114)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 24)) 32)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 25)) 80)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 26)) 105)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 27)) 32)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 28)) 105)) (= (to_rep (select (temp___String_Literal_575 us_void_param) 29)) 115)) :pattern ((temp___String_Literal_575 us_void_param)))))
(declare-fun temp___String_Literal_578 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_578 us_void_param) 1)) 76) (= (to_rep (select (temp___String_Literal_578 us_void_param) 2)) 101)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 3)) 105)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 4)) 98)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 5)) 110)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 6)) 105)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 7)) 116)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 8)) 122)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 9)) 32)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 10)) 102)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 11)) 108)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 12)) 111)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 13)) 97)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 14)) 116)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 15)) 32)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 16)) 118)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 17)) 97)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 18)) 108)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 19)) 117)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 20)) 101)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 21)) 32)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 22)) 102)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 23)) 111)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 24)) 114)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 25)) 32)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 26)) 80)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 27)) 105)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 28)) 32)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 29)) 105)) (= (to_rep (select (temp___String_Literal_578 us_void_param) 30)) 115)) :pattern ((temp___String_Literal_578 us_void_param)))))
(declare-fun temp___String_Literal_581 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_581 us_void_param) 1)) 83) (= (to_rep (select (temp___String_Literal_581 us_void_param) 2)) 104)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 3)) 97)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 4)) 110)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 5)) 107)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 6)) 115)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 7)) 32)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 8)) 102)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 9)) 105)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 10)) 120)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 11)) 101)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 12)) 100)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 13)) 32)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 14)) 118)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 15)) 97)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 16)) 108)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 17)) 117)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 18)) 101)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 19)) 32)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 20)) 102)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 21)) 111)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 22)) 114)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 23)) 32)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 24)) 80)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 25)) 105)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 26)) 32)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 27)) 105)) (= (to_rep (select (temp___String_Literal_581 us_void_param) 28)) 115)) :pattern ((temp___String_Literal_581 us_void_param)))))
(declare-fun temp___String_Literal_584 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_584 us_void_param) 1)) 83) (= (to_rep (select (temp___String_Literal_584 us_void_param) 2)) 104)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 3)) 97)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 4)) 110)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 5)) 107)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 6)) 115)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 7)) 32)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 8)) 102)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 9)) 108)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 10)) 111)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 11)) 97)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 12)) 116)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 13)) 32)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 14)) 118)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 15)) 97)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 16)) 108)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 17)) 117)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 18)) 101)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 19)) 32)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 20)) 102)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 21)) 111)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 22)) 114)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 23)) 32)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 24)) 80)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 25)) 105)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 26)) 32)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 27)) 105)) (= (to_rep (select (temp___String_Literal_584 us_void_param) 28)) 115)) :pattern ((temp___String_Literal_584 us_void_param)))))
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(define-fun dynamic_invariant2 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range2 temp___expr_74)))
(define-fun dynamic_invariant3 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(define-fun dynamic_invariant4 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(declare-const o fixed)
(declare-const o1 Int)
(declare-const o2 us_image)
(declare-const temp___577 (Array Int character))
(declare-const temp___5771 t)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const o7 Int)
(assert (and (= o (leibniz_fixed Tuple0)) (= (to_fixed o) 3189596)))
(assert (= o1 (to_fixed o)))
(assert (= o2 (attr__ATTRIBUTE_IMAGE4 o1)))
(assert (= (mk___t temp___577 temp___5771) (to_string o2)))
(assert (=> (<= (to_rep1 (first temp___5771)) (to_rep1 (last temp___5771))) (= o3 (+ (- (to_rep1 (last temp___5771)) (to_rep1 (first temp___5771))) 1))))
(assert (=> (not (<= (to_rep1 (first temp___5771)) (to_rep1 (last temp___5771)))) (= o3 0)))
(assert (=> (<= 1 29) (= o4 (+ (- 29 1) 1))))
(assert (=> (not (<= 1 29)) (= o4 0)))
(assert (= o5 (+ o4 o3)))
(assert (= o6 (+ 1 o5)))
(assert (= o7 (- o6 1)))
(assert (not (in_range1 o7)))
(check-sat)
(exit)
