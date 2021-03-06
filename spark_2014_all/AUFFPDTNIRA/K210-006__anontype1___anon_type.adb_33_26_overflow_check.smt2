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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-const var_in Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const limit Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort tvar_outS 0)
(declare-fun tvar_outSqtint (tvar_outS) Int)
(assert (forall ((i tvar_outS)) (and (<= 0 (tvar_outSqtint i)) (<= (tvar_outSqtint i) 10))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (tvar_outS tvar_outS) Bool)
(declare-const dummy1 tvar_outS)
(declare-datatypes () ((tvar_outS__ref (mk_tvar_outS__ref (tvar_outS__content tvar_outS)))))
(define-fun tvar_outS__ref___projection ((a tvar_outS__ref)) tvar_outS (tvar_outS__content a))
(define-fun dynamic_invariant1 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 0 10)) (in_range1 temp___expr_166)))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort taS 0)
(declare-fun taSqtint (taS) Int)
(assert (forall ((i taS)) (and (<= (- 10000) (taSqtint i)) (<= (taSqtint i) 10000))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 10000) x) (<= x 10000)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (taS taS) Bool)
(declare-const dummy2 taS)
(declare-datatypes () ((taS__ref (mk_taS__ref (taS__content taS)))))
(define-fun taS__ref___projection ((a taS__ref)) taS (taS__content a))
(define-fun dynamic_invariant2 ((temp___expr_173 Int) (temp___is_init_169 Bool) (temp___skip_constant_170 Bool) (temp___do_toplevel_171 Bool) (temp___do_typ_inv_172 Bool)) Bool (=> (or (= temp___is_init_169 true) (<= (- 10000) 10000)) (in_range2 temp___expr_173)))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-sort tbS 0)
(declare-fun tbSqtint (tbS) Int)
(assert (forall ((i tbS)) (and (<= (- 10000) (tbSqtint i)) (<= (tbSqtint i) 10000))))
(define-fun in_range3 ((x Int)) Bool (and (<= (- 10000) x) (<= x 10000)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (tbS tbS) Bool)
(declare-const dummy3 tbS)
(declare-datatypes () ((tbS__ref (mk_tbS__ref (tbS__content tbS)))))
(define-fun tbS__ref___projection ((a tbS__ref)) tbS (tbS__content a))
(define-fun dynamic_invariant3 ((temp___expr_180 Int) (temp___is_init_176 Bool) (temp___skip_constant_177 Bool) (temp___do_toplevel_178 Bool) (temp___do_typ_inv_179 Bool)) Bool (=> (or (= temp___is_init_176 true) (<= (- 10000) 10000)) (in_range3 temp___expr_180)))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-sort character 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (character character) Bool)
(declare-const dummy4 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep1 (character) Int)
(declare-fun of_rep1 (Int) character)
(assert (forall ((x character)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x character)) (! (in_range4 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range4 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep1 (select a temp___idx_91)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep1 (select a temp___idx_91)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-sort float 0)
(declare-fun user_eq5 (float float) Bool)
(declare-fun attr__ATTRIBUTE_IMAGE5 (Float32) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Float32)
(declare-const dummy5 float)
(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))
(declare-fun to_rep2 (float) Float32)
(declare-fun of_rep2 (Float32) float)
(assert (forall ((x float)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x float)) (! (fp.isFinite32 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Float32)) (! (=> (fp.isFinite32 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int float))))))
(declare-fun slide1 ((Array Int float) Int Int) (Array Int float))
(assert (forall ((a (Array Int float))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int float))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int float)) (a__first Int) (a__last Int) (b (Array Int float)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep2 (select a temp___idx_154)) (to_rep2 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int float)) (b (Array Int float))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep2 (select a temp___idx_154)) (to_rep2 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-sort tmy_array1D1 0)
(declare-fun tmy_array1D1qtint (tmy_array1D1) Int)
(assert (forall ((i tmy_array1D1)) (and (<= 1 (tmy_array1D1qtint i)) (<= (tmy_array1D1qtint i) 10))))
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq6 (tmy_array1D1 tmy_array1D1) Bool)
(declare-const dummy6 tmy_array1D1)
(declare-datatypes () ((tmy_array1D1__ref (mk_tmy_array1D1__ref (tmy_array1D1__content tmy_array1D1)))))
(define-fun tmy_array1D1__ref___projection ((a tmy_array1D1__ref)) tmy_array1D1 (tmy_array1D1__content a))
(declare-datatypes () ((map__ref2 (mk_map__ref2 (map__content2 (Array Int integer))))))
(declare-fun slide2 ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide2 a first first) a) :pattern ((slide2 a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide2 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide2 a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-sort tmy_array2D1 0)
(declare-fun tmy_array2D1qtint (tmy_array2D1) Int)
(assert (forall ((i tmy_array2D1)) (and (<= 1 (tmy_array2D1qtint i)) (<= (tmy_array2D1qtint i) 20))))
(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 20)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq7 (tmy_array2D1 tmy_array2D1) Bool)
(declare-const dummy7 tmy_array2D1)
(declare-datatypes () ((tmy_array2D1__ref (mk_tmy_array2D1__ref (tmy_array2D1__content tmy_array2D1)))))
(define-fun tmy_array2D1__ref___projection ((a tmy_array2D1__ref)) tmy_array2D1 (tmy_array2D1__content a))
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-fun anon_type__increment__ten_characters__aggregate_def (Int) (Array Int character))
(declare-fun temp_____aggregate_def_212 (Float32) (Array Int float))
(define-fun dynamic_invariant4 ((temp___expr_60 Float32) (temp___is_init_56 Bool) (temp___skip_constant_57 Bool) (temp___do_toplevel_58 Bool) (temp___do_typ_inv_59 Bool)) Bool (=> (or (= temp___is_init_56 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (fp.isFinite32 temp___expr_60)))
(define-fun dynamic_invariant5 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range4 temp___expr_74)))
(assert (= limit 10000))
(assert (forall ((temp___204 Int)) (=> (dynamic_invariant5 temp___204 true true true true) (forall ((temp___205 Int)) (= (to_rep1 (select (anon_type__increment__ten_characters__aggregate_def temp___204) temp___205)) temp___204)))))
(assert (forall ((temp___214 Float32)) (=> (dynamic_invariant4 temp___214 true true true true) (forall ((temp___215 Int)) (= (to_rep2 (select (temp_____aggregate_def_212 temp___214) temp___215)) temp___214)))))
(declare-const var_out Int)
(declare-const a Int)
(declare-const b Int)
(declare-const ten_characters (Array Int character))
(declare-const board (Array Int float))
(declare-const result Int)
(declare-const var_out1 Int)
(declare-const result1 (Array Int character))
(declare-const ten_characters1 (Array Int character))
(declare-const result2 (Array Int float))
(declare-const board1 (Array Int float))
(assert (in_range var_in))
(assert (in_range limit))
(assert (= (mk_int__ref result) (mk_int__ref var_out)))
(assert (= var_out1 0))
(assert (in_range1 var_out1))
(assert (=> (<= (- 10000) 10000) (in_range2 a)))
(assert (=> (<= (- 10000) 10000) (in_range3 b)))
(assert (= (mk_map__ref result1) (mk_map__ref ten_characters)))
(assert (= ten_characters1 (anon_type__increment__ten_characters__aggregate_def 32)))
(assert (= (mk_map__ref1 result2) (mk_map__ref1 board)))
(assert (= board1 (temp_____aggregate_def_212 (fp #b0 #b01111111 #b00000000000000000000000))))
(assert (not (in_range (+ var_in (+ var_out1 1)))))
(check-sat)
(exit)
