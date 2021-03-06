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
(declare-fun power (Int Int) Int)
(assert (forall ((x Int)) (= (power x 0) 1)))
(assert (forall ((x Int) (n Int)) (=> (<= 0 n) (= (power x (+ n 1)) (* x (power x n))))))
(assert (forall ((x Int) (n Int)) (=> (< 0 n) (= (power x n) (* x (power x (- n 1)))))))
(assert (forall ((x Int)) (= (power x 1) x)))
(assert (forall ((x Int) (n Int) (m Int)) (=> (<= 0 n) (=> (<= 0 m) (= (power x (+ n m)) (* (power x n) (power x m)))))))
(assert (forall ((x Int) (n Int) (m Int)) (=> (<= 0 n) (=> (<= 0 m) (= (power x (* n m)) (power (power x n) m))))))
(assert (forall ((x Int) (y Int)) (=> (= (* x y) (* y x)) (forall ((n Int)) (=> (<= 0 n) (= (* (power x n) y) (* y (power x n))))))))
(assert (forall ((x Int) (y Int)) (=> (= (* x y) (* y x)) (forall ((n Int)) (=> (<= 0 n) (= (power (* x y) n) (* (power x n) (power y n))))))))
(assert (forall ((x Int) (y Int)) (=> (and (<= 0 x) (<= 0 y)) (<= 0 (power x y)))))
(assert (forall ((x Int) (n Int) (m Int)) (=> (and (< 0 x) (and (<= 0 n) (<= n m))) (<= (power x n) (power x m)))))
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
(declare-fun power1 ((_ BitVec 32) Int) (_ BitVec 32))
(define-fun bv_min ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))
(define-fun bv_max ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))
(declare-fun nth1 ((_ BitVec 64) Int) Bool)
(declare-fun lsr1 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun asr1 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun lsl1 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_right2 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_left2 ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun to_int2 ((x (_ BitVec 64))) Int (ite (bvsge x (_ bv0 64)) (bv2nat x) (- (- 18446744073709551616 (bv2nat x)))))
(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 18446744073709551615)))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvlshr x n) (lsr1 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvashr x n) (asr1 x (bv2nat n)))))
(assert (forall ((x (_ BitVec 64)) (n (_ BitVec 64))) (= (bvshl x n) (lsl1 x (bv2nat n)))))
(assert (forall ((v (_ BitVec 64)) (n (_ BitVec 64))) (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) (rotate_left2 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 64)) (n (_ BitVec 64))) (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) (rotate_right2 v (bv2nat n)))))
(declare-fun nth_bv1 ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (forall ((x (_ BitVec 64)) (i (_ BitVec 64))) (= (= (nth_bv1 x i) true) (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))
(assert (forall ((x (_ BitVec 64)) (i (_ BitVec 64))) (= (nth1 x (bv2nat i)) (nth_bv1 x i))))
(assert (forall ((x (_ BitVec 64)) (i Int)) (=> (and (<= 0 i) (< i 18446744073709551616)) (= (nth_bv1 x ((_ int2bv 64) i)) (nth1 x i)))))
(declare-fun eq_sub_bv1 ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) Bool)
(assert (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64)) (n (_ BitVec 64))) (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i))) (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub1 ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))
(assert (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64)) (n (_ BitVec 64))) (= (eq_sub1 a b (bv2nat i) (bv2nat n)) (eq_sub_bv1 a b i n))))
(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 (_ BitVec 64))))))
(declare-fun power2 ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun bv_min1 ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))
(define-fun bv_max1 ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))
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
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort universal_integer 0)
(declare-fun universal_integerqtint (universal_integer) Int)
(assert (forall ((i universal_integer)) (and (<= (- 9223372036854775808) (universal_integerqtint i)) (<= (universal_integerqtint i) 9223372036854775807))))
(define-fun in_range3 ((x Int)) Bool (and (<= (- 9223372036854775808) x) (<= x 9223372036854775807)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (universal_integer universal_integer) Bool)
(declare-const dummy2 universal_integer)
(declare-datatypes () ((universal_integer__ref (mk_universal_integer__ref (universal_integer__content universal_integer)))))
(define-fun universal_integer__ref___projection ((a universal_integer__ref)) universal_integer (universal_integer__content a))
(declare-sort word32 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 32))
(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 32)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 32))
(declare-fun user_eq3 (word32 word32) Bool)
(declare-const dummy3 word32)
(declare-datatypes () ((word32__ref (mk_word32__ref (word32__content word32)))))
(define-fun word32__ref___projection ((a word32__ref)) word32 (word32__content a))
(declare-fun to_rep1 (word32) (_ BitVec 32))
(declare-fun of_rep1 ((_ BitVec 32)) word32)
(assert (forall ((x word32)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert true)
(assert (forall ((x (_ BitVec 32))) (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun to_int3 ((x word32)) Int (bv2nat (to_rep1 x)))
(assert (forall ((x word32)) (! (uint_in_range (to_int3 x)) :pattern ((to_int3 x)))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int word32))))))
(declare-fun slide ((Array Int word32) Int Int) (Array Int word32))
(assert (forall ((a (Array Int word32))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int word32))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int word32)) (a__first Int) (a__last Int) (b (Array Int word32)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_157 Int)) (=> (and (<= a__first temp___idx_157) (<= temp___idx_157 a__last)) (= (to_rep1 (select a temp___idx_157)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_157))))))) true false))
(assert (forall ((a (Array Int word32)) (b (Array Int word32))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_157 Int)) (=> (and (<= a__first temp___idx_157) (<= temp___idx_157 a__last)) (= (to_rep1 (select a temp___idx_157)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_157)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_348 (_ BitVec 32)) (temp___is_init_344 Bool) (temp___skip_constant_345 Bool) (temp___do_toplevel_346 Bool) (temp___do_typ_inv_347 Bool)) Bool true)
(declare-sort word64 0)
(declare-const attr__ATTRIBUTE_MODULUS1 (_ BitVec 64))
(declare-fun attr__ATTRIBUTE_IMAGE5 ((_ BitVec 64)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) (_ BitVec 64))
(declare-fun user_eq4 (word64 word64) Bool)
(declare-const dummy4 word64)
(declare-datatypes () ((word64__ref (mk_word64__ref (word64__content word64)))))
(define-fun word64__ref___projection ((a word64__ref)) word64 (word64__content a))
(declare-sort index_t 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 34)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq5 (index_t index_t) Bool)
(declare-const dummy5 index_t)
(declare-datatypes () ((index_t__ref (mk_index_t__ref (index_t__content index_t)))))
(define-fun index_t__ref___6__projection ((a index_t__ref)) index_t (index_t__content a))
(define-fun dynamic_invariant2 ((temp___expr_1163 Int) (temp___is_init_1159 Bool) (temp___skip_constant_1160 Bool) (temp___do_toplevel_1161 Bool) (temp___do_typ_inv_1162 Bool)) Bool (=> (or (= temp___is_init_1159 true) (<= 0 34)) (in_range4 temp___expr_1163)))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__hw__dbc__s_regs__t__byte_offset natural) (rec__hw__dbc__s_regs__t__msb natural) (rec__hw__dbc__s_regs__t__lsb natural)))))
(define-fun us_split_fields_Byte_Offset__5__projection ((a us_split_fields)) natural (rec__hw__dbc__s_regs__t__byte_offset a))
(define-fun us_split_fields_MSB__5__projection ((a us_split_fields)) natural (rec__hw__dbc__s_regs__t__msb a))
(define-fun us_split_fields_LSB__5__projection ((a us_split_fields)) natural (rec__hw__dbc__s_regs__t__lsb a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___5__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___5__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (and (= (to_rep (rec__hw__dbc__s_regs__t__byte_offset (us_split_fields1 a))) (to_rep (rec__hw__dbc__s_regs__t__byte_offset (us_split_fields1 b)))) (= (to_rep (rec__hw__dbc__s_regs__t__msb (us_split_fields1 a))) (to_rep (rec__hw__dbc__s_regs__t__msb (us_split_fields1 b))))) (= (to_rep (rec__hw__dbc__s_regs__t__lsb (us_split_fields1 a))) (to_rep (rec__hw__dbc__s_regs__t__lsb (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const hw__dbc__s_regs__t__byte_offset__first__bit Int)
(declare-const hw__dbc__s_regs__t__byte_offset__last__bit Int)
(declare-const hw__dbc__s_regs__t__byte_offset__position Int)
(assert (<= 0 hw__dbc__s_regs__t__byte_offset__first__bit))
(assert (< hw__dbc__s_regs__t__byte_offset__first__bit hw__dbc__s_regs__t__byte_offset__last__bit))
(assert (<= 0 hw__dbc__s_regs__t__byte_offset__position))
(declare-const hw__dbc__s_regs__t__msb__first__bit Int)
(declare-const hw__dbc__s_regs__t__msb__last__bit Int)
(declare-const hw__dbc__s_regs__t__msb__position Int)
(assert (<= 0 hw__dbc__s_regs__t__msb__first__bit))
(assert (< hw__dbc__s_regs__t__msb__first__bit hw__dbc__s_regs__t__msb__last__bit))
(assert (<= 0 hw__dbc__s_regs__t__msb__position))
(declare-const hw__dbc__s_regs__t__lsb__first__bit Int)
(declare-const hw__dbc__s_regs__t__lsb__last__bit Int)
(declare-const hw__dbc__s_regs__t__lsb__position Int)
(assert (<= 0 hw__dbc__s_regs__t__lsb__first__bit))
(assert (< hw__dbc__s_regs__t__lsb__first__bit hw__dbc__s_regs__t__lsb__last__bit))
(assert (<= 0 hw__dbc__s_regs__t__lsb__position))
(declare-fun user_eq6 (us_rep us_rep) Bool)
(declare-const dummy6 us_rep)
(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 us_rep)))))
(define-fun t__ref___5__projection ((a t__ref2)) us_rep (t__content2 a))
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int us_rep))))))
(declare-fun slide1 ((Array Int us_rep) Int Int) (Array Int us_rep))
(assert (forall ((a (Array Int us_rep))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int us_rep))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int us_rep)) (a__first Int) (a__last Int) (b (Array Int us_rep)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_180 Int)) (=> (and (<= a__first temp___idx_180) (<= temp___idx_180 a__last)) (= (bool_eq1 (select a temp___idx_180) (select b (+ (- b__first a__first) temp___idx_180))) true)))) true false))
(assert (forall ((a (Array Int us_rep)) (b (Array Int us_rep))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_180 Int)) (=> (and (<= a__first temp___idx_180) (<= temp___idx_180 a__last)) (= (bool_eq1 (select a temp___idx_180) (select b (+ (- b__first a__first) temp___idx_180))) true))))))))
(declare-const reg_descs (Array Int us_rep))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const regs (Array Int us_rep))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const idx Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const value (_ BitVec 32))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant4 ((temp___expr_151 Int) (temp___is_init_147 Bool) (temp___skip_constant_148 Bool) (temp___do_toplevel_149 Bool) (temp___do_typ_inv_150 Bool)) Bool (=> (or (= temp___is_init_147 true) (<= (- 9223372036854775808) 9223372036854775807)) (in_range3 temp___expr_151)))
(declare-fun hw__dbc__reg_descs__aggregate_def (us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep us_rep) (Array Int us_rep))
(declare-const rliteral natural)
(assert (= (naturalqtint rliteral) 4))
(declare-const rliteral1 natural)
(assert (= (naturalqtint rliteral1) 15))
(declare-const rliteral2 natural)
(assert (= (naturalqtint rliteral2) 8))
(declare-const rliteral3 natural)
(assert (= (naturalqtint rliteral3) 0))
(declare-const rliteral4 natural)
(assert (= (naturalqtint rliteral4) 16))
(declare-const rliteral5 natural)
(assert (= (naturalqtint rliteral5) 31))
(declare-const rliteral6 natural)
(assert (= (naturalqtint rliteral6) 20))
(declare-const rliteral7 natural)
(assert (= (naturalqtint rliteral7) 24))
(declare-const rliteral8 natural)
(assert (= (naturalqtint rliteral8) 28))
(declare-const rliteral9 natural)
(assert (= (naturalqtint rliteral9) 32))
(declare-const rliteral10 natural)
(assert (= (naturalqtint rliteral10) 1))
(declare-const rliteral11 natural)
(assert (= (naturalqtint rliteral11) 2))
(declare-const rliteral12 natural)
(assert (= (naturalqtint rliteral12) 3))
(declare-const rliteral13 natural)
(assert (= (naturalqtint rliteral13) 23))
(declare-const rliteral14 natural)
(assert (= (naturalqtint rliteral14) 30))
(declare-const rliteral15 natural)
(assert (= (naturalqtint rliteral15) 36))
(declare-const rliteral16 natural)
(assert (= (naturalqtint rliteral16) 40))
(declare-const rliteral17 natural)
(assert (= (naturalqtint rliteral17) 5))
(declare-const rliteral18 natural)
(assert (= (naturalqtint rliteral18) 13))
(declare-const rliteral19 natural)
(assert (= (naturalqtint rliteral19) 10))
(declare-const rliteral20 natural)
(assert (= (naturalqtint rliteral20) 17))
(declare-const rliteral21 natural)
(assert (= (naturalqtint rliteral21) 21))
(declare-const rliteral22 natural)
(assert (= (naturalqtint rliteral22) 22))
(declare-const rliteral23 natural)
(assert (= (naturalqtint rliteral23) 48))
(declare-const rliteral24 natural)
(assert (= (naturalqtint rliteral24) 52))
(declare-const rliteral25 natural)
(assert (= (naturalqtint rliteral25) 56))
(declare-const rliteral26 natural)
(assert (= (naturalqtint rliteral26) 7))
(declare-const rliteral27 natural)
(assert (= (naturalqtint rliteral27) 60))
(assert (= reg_descs (hw__dbc__reg_descs__aggregate_def (mk___rep (mk___split_fields rliteral rliteral1 rliteral2)) (mk___rep (mk___split_fields rliteral2 rliteral1 rliteral3)) (mk___rep (mk___split_fields rliteral4 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral6 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral7 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral8 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral9 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral9 rliteral3 rliteral3)) (mk___rep (mk___split_fields rliteral9 rliteral10 rliteral10)) (mk___rep (mk___split_fields rliteral9 rliteral11 rliteral11)) (mk___rep (mk___split_fields rliteral9 rliteral12 rliteral12)) (mk___rep (mk___split_fields rliteral9 rliteral rliteral)) (mk___rep (mk___split_fields rliteral9 rliteral13 rliteral4)) (mk___rep (mk___split_fields rliteral9 rliteral14 rliteral7)) (mk___rep (mk___split_fields rliteral9 rliteral5 rliteral5)) (mk___rep (mk___split_fields rliteral15 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral15 rliteral3 rliteral3)) (mk___rep (mk___split_fields rliteral15 rliteral10 rliteral10)) (mk___rep (mk___split_fields rliteral15 rliteral5 rliteral7)) (mk___rep (mk___split_fields rliteral16 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral16 rliteral3 rliteral3)) (mk___rep (mk___split_fields rliteral16 rliteral10 rliteral10)) (mk___rep (mk___split_fields rliteral16 rliteral rliteral)) (mk___rep (mk___split_fields rliteral16 rliteral2 rliteral17)) (mk___rep (mk___split_fields rliteral16 rliteral18 rliteral19)) (mk___rep (mk___split_fields rliteral16 rliteral20 rliteral20)) (mk___rep (mk___split_fields rliteral16 rliteral21 rliteral21)) (mk___rep (mk___split_fields rliteral16 rliteral22 rliteral22)) (mk___rep (mk___split_fields rliteral16 rliteral13 rliteral13)) (mk___rep (mk___split_fields rliteral23 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral24 rliteral5 rliteral3)) (mk___rep (mk___split_fields rliteral25 rliteral26 rliteral3)) (mk___rep (mk___split_fields rliteral25 rliteral5 rliteral4)) (mk___rep (mk___split_fields rliteral27 rliteral1 rliteral3)) (mk___rep (mk___split_fields rliteral27 rliteral5 rliteral4)))))
(assert (forall ((temp___182 us_rep) (temp___183 us_rep) (temp___184 us_rep) (temp___185 us_rep) (temp___186 us_rep) (temp___187 us_rep) (temp___188 us_rep) (temp___189 us_rep) (temp___190 us_rep) (temp___191 us_rep) (temp___192 us_rep) (temp___193 us_rep) (temp___194 us_rep) (temp___195 us_rep) (temp___196 us_rep) (temp___197 us_rep) (temp___198 us_rep) (temp___199 us_rep) (temp___200 us_rep) (temp___201 us_rep) (temp___202 us_rep) (temp___203 us_rep) (temp___204 us_rep) (temp___205 us_rep) (temp___206 us_rep) (temp___207 us_rep) (temp___208 us_rep) (temp___209 us_rep) (temp___210 us_rep) (temp___211 us_rep) (temp___212 us_rep) (temp___213 us_rep) (temp___214 us_rep) (temp___215 us_rep) (temp___216 us_rep)) (let ((temp___181 (hw__dbc__reg_descs__aggregate_def temp___182 temp___183 temp___184 temp___185 temp___186 temp___187 temp___188 temp___189 temp___190 temp___191 temp___192 temp___193 temp___194 temp___195 temp___196 temp___197 temp___198 temp___199 temp___200 temp___201 temp___202 temp___203 temp___204 temp___205 temp___206 temp___207 temp___208 temp___209 temp___210 temp___211 temp___212 temp___213 temp___214 temp___215 temp___216))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (select temp___181 0) temp___182) (= (select temp___181 1) temp___183)) (= (select temp___181 2) temp___184)) (= (select temp___181 3) temp___185)) (= (select temp___181 4) temp___186)) (= (select temp___181 5) temp___187)) (= (select temp___181 6) temp___188)) (= (select temp___181 7) temp___189)) (= (select temp___181 8) temp___190)) (= (select temp___181 9) temp___191)) (= (select temp___181 10) temp___192)) (= (select temp___181 11) temp___193)) (= (select temp___181 12) temp___194)) (= (select temp___181 13) temp___195)) (= (select temp___181 14) temp___196)) (= (select temp___181 15) temp___197)) (= (select temp___181 16) temp___198)) (= (select temp___181 17) temp___199)) (= (select temp___181 18) temp___200)) (= (select temp___181 19) temp___201)) (= (select temp___181 20) temp___202)) (= (select temp___181 21) temp___203)) (= (select temp___181 22) temp___204)) (= (select temp___181 23) temp___205)) (= (select temp___181 24) temp___206)) (= (select temp___181 25) temp___207)) (= (select temp___181 26) temp___208)) (= (select temp___181 27) temp___209)) (= (select temp___181 28) temp___210)) (= (select temp___181 29) temp___211)) (= (select temp___181 30) temp___212)) (= (select temp___181 31) temp___213)) (= (select temp___181 32) temp___214)) (= (select temp___181 33) temp___215)) (= (select temp___181 34) temp___216)))))
(define-fun dynamic_invariant5 ((temp___expr_355 (_ BitVec 64)) (temp___is_init_351 Bool) (temp___skip_constant_352 Bool) (temp___do_toplevel_353 Bool) (temp___do_typ_inv_354 Bool)) Bool true)
(assert (= regs reg_descs))
(declare-const byte_offset Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const o7 Int)
(declare-const o8 Int)
(declare-const o9 Int)
(declare-const o10 (_ BitVec 64))
(declare-const o11 Bool)
(assert (= reg_descs regs))
(assert (in_range2 byte_offset))
(assert (in_range4 idx))
(assert (and (= o3 (+ (to_rep (rec__hw__dbc__s_regs__t__msb (us_split_fields1 (select regs idx)))) 1)) (in_range1 (+ (to_rep (rec__hw__dbc__s_regs__t__msb (us_split_fields1 (select regs idx)))) 1))))
(assert (= o4 (- o3 (to_rep (rec__hw__dbc__s_regs__t__lsb (us_split_fields1 (select regs idx)))))))
(assert (and (= o5 o4) (in_range1 o4)))
(assert (and (= o6 o5) (in_range2 o5)))
(assert (= o7 (power 2 o6)))
(assert (and (= o8 o7) (in_range3 o7)))
(assert (and (= o9 o8) (uint_in_range1 o8)))
(assert (= o10 ((_ int2bv 64) o9)))
(assert (= o11 (ite (bvult ((_ zero_extend 32) value) o10) true false)))
(assert (and (= o2 32) (in_range1 32)))
(assert (and (= o (- (to_rep (rec__hw__dbc__s_regs__t__msb (us_split_fields1 (select regs idx)))) (to_rep (rec__hw__dbc__s_regs__t__lsb (us_split_fields1 (select regs idx)))))) (in_range1 (- (to_rep (rec__hw__dbc__s_regs__t__msb (us_split_fields1 (select regs idx)))) (to_rep (rec__hw__dbc__s_regs__t__lsb (us_split_fields1 (select regs idx))))))))
(assert (= o1 (+ o 1)))
(assert (not (in_range1 o1)))
(check-sat)
(exit)
