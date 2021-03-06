(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFBVDTNIRA)
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
(declare-fun nth ((_ BitVec 32) Int) Bool)
(declare-fun lsr ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun asr ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun lsl ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun rotate_right1 ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun rotate_left1 ((_ BitVec 32) Int) (_ BitVec 32))
(declare-fun pow2 (Int) Int)
(define-fun to_int1 ((x (_ BitVec 32))) Int (ite (bvsge x (_ bv0 32)) (bv2nat x) (- (- 4294967296 (bv2nat x)))))
(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvlshr x n) (lsr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvashr x n) (asr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 32)) (n (_ BitVec 32))) (= (bvshl x n) (lsl x (bv2nat n)))))
(assert (forall ((v (_ BitVec 32)) (n (_ BitVec 32))) (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) (rotate_left1 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 32)) (n (_ BitVec 32))) (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) (rotate_right1 v (bv2nat n)))))
(declare-fun nth_bv ((_ BitVec 32) (_ BitVec 32)) Bool)
(assert (forall ((x (_ BitVec 32)) (i (_ BitVec 32))) (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))
(assert (forall ((x (_ BitVec 32)) (i (_ BitVec 32))) (= (nth x (bv2nat i)) (nth_bv x i))))
(assert (forall ((x (_ BitVec 32)) (i Int)) (=> (and (<= 0 i) (< i 4294967296)) (= (nth_bv x ((_ int2bv 32) i)) (nth x i)))))
(declare-fun eq_sub_bv ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)
(assert (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32)) (n (_ BitVec 32))) (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i))) (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))
(assert (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32)) (n (_ BitVec 32))) (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 32))))))
(declare-fun power ((_ BitVec 32) Int) (_ BitVec 32))
(define-fun bv_min ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))
(define-fun bv_max ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))
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
(declare-sort long_long_integer 0)
(declare-fun long_long_integerqtint (long_long_integer) Int)
(assert (forall ((i long_long_integer)) (and (<= (- 9223372036854775808) (long_long_integerqtint i)) (<= (long_long_integerqtint i) 9223372036854775807))))
(define-fun in_range2 ((x Int)) Bool (and (<= (- 9223372036854775808) x) (<= x 9223372036854775807)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (long_long_integer long_long_integer) Bool)
(declare-const dummy1 long_long_integer)
(declare-datatypes () ((long_long_integer__ref (mk_long_long_integer__ref (long_long_integer__content long_long_integer)))))
(define-fun long_long_integer__ref___projection ((a long_long_integer__ref)) long_long_integer (long_long_integer__content a))
(define-fun dynamic_invariant ((temp___expr_32 Int) (temp___is_init_28 Bool) (temp___skip_constant_29 Bool) (temp___do_toplevel_30 Bool) (temp___do_typ_inv_31 Bool)) Bool (=> (or (= temp___is_init_28 true) (<= (- 9223372036854775808) 9223372036854775807)) (in_range2 temp___expr_32)))
(declare-sort character 0)
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (character character) Bool)
(declare-const dummy2 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(declare-sort rritemtype 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (rritemtype rritemtype) Bool)
(declare-const dummy3 rritemtype)
(declare-datatypes () ((rritemtype__ref (mk_rritemtype__ref (rritemtype__content rritemtype)))))
(define-fun rritemtype__ref___projection ((a rritemtype__ref)) rritemtype (rritemtype__content a))
(define-fun dynamic_invariant1 ((temp___expr_298 Int) (temp___is_init_294 Bool) (temp___skip_constant_295 Bool) (temp___do_toplevel_296 Bool) (temp___do_typ_inv_297 Bool)) Bool (=> (or (= temp___is_init_294 true) (<= 0 10)) (in_range4 temp___expr_298)))
(declare-sort linelengthindex 0)
(declare-fun linelengthindexqtint (linelengthindex) Int)
(assert (forall ((i linelengthindex)) (and (<= 1 (linelengthindexqtint i)) (<= (linelengthindexqtint i) 256))))
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 256)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq4 (linelengthindex linelengthindex) Bool)
(declare-const dummy4 linelengthindex)
(declare-datatypes () ((linelengthindex__ref (mk_linelengthindex__ref (linelengthindex__content linelengthindex)))))
(define-fun linelengthindex__ref___projection ((a linelengthindex__ref)) linelengthindex (linelengthindex__content a))
(define-fun dynamic_invariant2 ((temp___expr_305 Int) (temp___is_init_301 Bool) (temp___skip_constant_302 Bool) (temp___do_toplevel_303 Bool) (temp___do_typ_inv_304 Bool)) Bool (=> (or (= temp___is_init_301 true) (<= 1 256)) (in_range5 temp___expr_305)))
(declare-sort unsigned32 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 32))
(declare-fun attr__ATTRIBUTE_IMAGE6 ((_ BitVec 32)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) (_ BitVec 32))
(declare-fun user_eq5 (unsigned32 unsigned32) Bool)
(declare-const dummy5 unsigned32)
(declare-datatypes () ((unsigned32__ref (mk_unsigned32__ref (unsigned32__content unsigned32)))))
(define-fun unsigned32__ref___projection ((a unsigned32__ref)) unsigned32 (unsigned32__content a))
(define-fun dynamic_invariant3 ((temp___expr_284 (_ BitVec 32)) (temp___is_init_280 Bool) (temp___skip_constant_281 Bool) (temp___do_toplevel_282 Bool) (temp___do_typ_inv_283 Bool)) Bool true)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const zonefileline (Array Int character))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const zlength Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const r72b Int)
(declare-const attr__ATTRIBUTE_ADDRESS9 Int)
(declare-const r73b Int)
(declare-const attr__ATTRIBUTE_ADDRESS10 Int)
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq6 (integer integer) Bool)
(declare-const dummy6 integer)
(declare-datatypes () ((t74b__ref (mk_t74b__ref (t74b__content integer)))))
(define-fun t74b__ref___projection ((a t74b__ref)) integer (t74b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS11 Int)
(define-fun dynamic_invariant4 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant5 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range3 temp___expr_74)))
(declare-const newserialnumber (_ BitVec 32))
(declare-const begidx Int)
(declare-const endidx Int)
(declare-const foundtype Int)
(declare-const tmpval Int)
(declare-const i Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const result Int)
(declare-const begidx1 Int)
(declare-const result1 (_ BitVec 32))
(declare-const newserialnumber1 (_ BitVec 32))
(declare-const begidx2 Int)
(declare-const endidx1 Int)
(declare-const foundtype1 Int)
(declare-const result2 Int)
(declare-const tmpval1 Int)
(declare-const result3 Int)
(declare-const i1 Int)
(declare-const digitval (_ BitVec 32))
(declare-const tmpval2 Int)
(declare-const i2 Int)
(declare-const result4 (_ BitVec 32))
(declare-const digitval1 (_ BitVec 32))
(declare-const result5 Int)
(declare-const tmpval3 Int)
(declare-const result6 Int)
(declare-const i3 Int)
(assert (in_range5 zlength))
(assert (= result begidx))
(assert (= begidx1 1))
(assert (in_range5 begidx1))
(assert (=> (<= 1 256) (in_range5 endidx)))
(assert (=> (<= 0 10) (in_range4 foundtype)))
(assert (=> (<= (- 9223372036854775808) 9223372036854775807) (in_range2 tmpval)))
(assert (= result1 newserialnumber))
(assert (= newserialnumber1 #x00000000))
(assert (and (and (and (and (<= begidx2 endidx1) (<= begidx2 zlength)) (<= endidx1 zlength)) (=> (= foundtype1 1) (forall ((i4 Int)) (=> (and (<= begidx2 i4) (<= i4 endidx1)) (and (<= 48 (to_rep (select zonefileline i4))) (<= (to_rep (select zonefileline i4)) 57)))))) (and (and (in_range5 begidx2) (in_range5 endidx1)) (in_range4 foundtype1))))
(assert (= foundtype1 1))
(assert (= result2 tmpval))
(assert (= tmpval1 0))
(assert (= begidx2 r72b))
(assert (in_range5 r72b))
(assert (= endidx1 r73b))
(assert (in_range5 r73b))
(assert (= (mk_int__ref result3) (mk_int__ref i)))
(assert (= i1 r72b))
(assert (<= r72b i1))
(assert (<= i1 r73b))
(assert (and (and (<= 1 begidx2) (<= 0 tmpval2)) (<= tmpval2 4294967295)))
(assert (and (and (=> (<= r72b r73b) (dynamic_property r72b r73b i2)) (=> (<= (- 9223372036854775808) 9223372036854775807) (in_range2 tmpval2))) (and (<= r72b i2) (<= i2 r73b))))
(assert (= digitval result4))
(assert (= digitval1 (bvsub ((_ int2bv 32) (to_rep (select zonefileline i2))) #x00000030)))
(assert (and (= o (* 10 tmpval2)) (in_range2 (* 10 tmpval2))))
(assert (= o1 (+ o (bv2nat digitval1))))
(assert (and (= o2 o1) (in_range2 o1)))
(assert (= tmpval2 result5))
(assert (= tmpval3 o2))
(assert (not (< 4294967295 tmpval3)))
(assert (not (= i2 r73b)))
(assert (= result6 i2))
(assert (= i3 (+ i2 1)))
(assert (not (<= 0 tmpval3)))
(check-sat)
(exit)
