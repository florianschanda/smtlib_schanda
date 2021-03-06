(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFBVDTLIRA)
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
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-sort us_rep 0)
(declare-fun bool_eq (us_rep us_rep) Bool)
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((math_int__ref (mk_math_int__ref (math_int__content us_rep)))))
(define-fun math_int__ref___projection ((a math_int__ref)) us_rep (math_int__content a))
(declare-fun oadd (us_rep us_rep) us_rep)
(declare-fun oadd__function_guard (us_rep us_rep us_rep) Bool)
(assert true)
(declare-fun osubtract (us_rep us_rep) us_rep)
(declare-fun osubtract__function_guard (us_rep us_rep us_rep) Bool)
(assert true)
(declare-fun omultiply (us_rep us_rep) us_rep)
(declare-fun omultiply__function_guard (us_rep us_rep us_rep) Bool)
(assert true)
(declare-fun omod (us_rep us_rep) us_rep)
(declare-fun omod__function_guard (us_rep us_rep us_rep) Bool)
(assert true)
(declare-fun oexpon (us_rep Int) us_rep)
(declare-fun oexpon__function_guard (us_rep us_rep Int) Bool)
(assert true)
(declare-fun oeq (us_rep us_rep) Bool)
(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)
(assert true)
(declare-fun olt (us_rep us_rep) Bool)
(declare-fun olt__function_guard (Bool us_rep us_rep) Bool)
(assert true)
(declare-fun from_word32 ((_ BitVec 32)) us_rep)
(declare-fun from_word32__function_guard (us_rep (_ BitVec 32)) Bool)
(declare-sort word32 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 32))
(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 32)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 32))
(declare-fun user_eq3 (word32 word32) Bool)
(declare-const dummy3 word32)
(declare-datatypes () ((word32__ref (mk_word32__ref (word32__content word32)))))
(define-fun word32__ref___projection ((a word32__ref)) word32 (word32__content a))
(define-fun dynamic_invariant1 ((temp___expr_253 (_ BitVec 32)) (temp___is_init_249 Bool) (temp___skip_constant_250 Bool) (temp___do_toplevel_251 Bool) (temp___do_typ_inv_252 Bool)) Bool true)
(assert true)
(declare-fun base (tuple0) us_rep)
(declare-fun base__function_guard (us_rep tuple0) Bool)
(assert true)
(assert (forall ((us_void_param tuple0)) (! (= (base us_void_param) (oexpon (from_word32 #x00000002) 32)) :pattern ((base us_void_param)))))
(declare-fun to_rep1 (word32) (_ BitVec 32))
(declare-fun of_rep1 ((_ BitVec 32)) word32)
(assert (forall ((x word32)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert true)
(assert (forall ((x (_ BitVec 32))) (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun to_int2 ((x word32)) Int (bv2nat (to_rep1 x)))
(assert (forall ((x word32)) (! (uint_in_range (to_int2 x)) :pattern ((to_int2 x)))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int word32))))))
(declare-fun slide ((Array Int word32) Int Int) (Array Int word32))
(assert (forall ((a (Array Int word32))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int word32))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int word32)) (a__first Int) (a__last Int) (b (Array Int word32)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_156 Int)) (=> (and (<= a__first temp___idx_156) (<= temp___idx_156 a__last)) (= (to_rep1 (select a temp___idx_156)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_156))))))) true false))
(assert (forall ((a (Array Int word32)) (b (Array Int word32))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_156 Int)) (=> (and (<= a__first temp___idx_156) (<= temp___idx_156 a__last)) (= (to_rep1 (select a temp___idx_156)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_156)))))))))))
(declare-sort big_int_range 0)
(declare-fun big_int_rangeqtint (big_int_range) Int)
(assert (forall ((i big_int_range)) (and (<= 0 (big_int_rangeqtint i)) (<= (big_int_rangeqtint i) 2147483646))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483646)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (big_int_range big_int_range) Bool)
(declare-const dummy4 big_int_range)
(declare-datatypes () ((big_int_range__ref (mk_big_int_range__ref (big_int_range__content big_int_range)))))
(define-fun big_int_range__ref___projection ((a big_int_range__ref)) big_int_range (big_int_range__content a))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int word32)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int word32) (elts a))
(define-fun of_array ((a (Array Int word32)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int word32)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int word32)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int word32)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int word32))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int word32))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int word32))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq2 ((x us_t) (y us_t)) Bool (bool_eq1 (elts x) (to_rep (first (rt x))) (to_rep (last (rt x))) (elts y) (to_rep (first (rt y))) (to_rep (last (rt y)))))
(declare-fun user_eq5 (us_t us_t) Bool)
(declare-const dummy5 us_t)
(declare-datatypes () ((big_int__ref (mk_big_int__ref (big_int__content us_t)))))
(define-fun big_int__ref___projection ((a big_int__ref)) us_t (big_int__content a))
(declare-fun num_of_big_int (us_t Int Int) us_rep)
(declare-fun num_of_big_int__function_guard (us_rep us_t Int Int) Bool)
(define-fun dynamic_invariant2 ((temp___expr_335 us_t) (temp___is_init_331 Bool) (temp___skip_constant_332 Bool) (temp___do_toplevel_333 Bool) (temp___do_typ_inv_334 Bool)) Bool (=> (not (= temp___skip_constant_332 true)) (dynamic_property 0 2147483646 (first1 temp___expr_335) (last1 temp___expr_335))))
(assert true)
(declare-fun inverse (us_rep us_rep) us_rep)
(declare-fun inverse__function_guard (us_rep us_rep us_rep) Bool)
(assert true)
(declare-fun num_of_boolean (Bool) us_rep)
(declare-fun num_of_boolean__function_guard (us_rep Bool) Bool)
(declare-fun less (us_t Int Int us_t Int) Bool)
(declare-fun less__function_guard (Bool us_t Int Int us_t Int) Bool)
(assert (forall ((a us_t) (b us_t)) (forall ((a_first Int) (a_last Int) (b_first Int)) (! (=> (and (and (and (and (and (dynamic_invariant2 a true true true true) (dynamic_invariant a_first true true true true)) (dynamic_invariant a_last true true true true)) (dynamic_invariant2 b true true true true)) (dynamic_invariant b_first true true true true)) (and (and (and (and (and (<= (first1 a) a_first) (<= a_first (last1 a))) (and (<= (first1 a) a_last) (<= a_last (last1 a)))) (and (<= (first1 b) b_first) (<= b_first (last1 b)))) (and (<= (first1 b) (+ b_first (- a_last a_first))) (<= (+ b_first (- a_last a_first)) (last1 b)))) (<= a_first a_last))) (= (= (less a a_first a_last b b_first) true) (= (olt (num_of_big_int a a_first (+ (- a_last a_first) 1)) (num_of_big_int b b_first (+ (- a_last a_first) 1))) true))) :pattern ((less a a_first a_last b b_first))))))
(declare-fun word_of_boolean (Bool) (_ BitVec 32))
(declare-fun word_of_boolean__function_guard ((_ BitVec 32) Bool) Bool)
(assert (forall ((b Bool)) (! (let ((result (word_of_boolean b))) (and (= (oeq (from_word32 result) (num_of_boolean b)) true) (dynamic_invariant1 result true false true true))) :pattern ((word_of_boolean b)))))
(declare-const a__first integer)
(declare-const a__last integer)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const a_first Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const a_last Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const b us_t)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const b_first Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const c us_t)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const c_first Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const m us_t)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const m_first Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const m_inv (_ BitVec 32))
(declare-const attr__ATTRIBUTE_ADDRESS9 Int)
(declare-const attr__ATTRIBUTE_ADDRESS10 Int)
(declare-const attr__ATTRIBUTE_ADDRESS11 Int)
(declare-const attr__ATTRIBUTE_ADDRESS12 Int)
(declare-const attr__ATTRIBUTE_ADDRESS13 Int)
(declare-const attr__ATTRIBUTE_ADDRESS14 Int)
(declare-const attr__ATTRIBUTE_ADDRESS15 Int)
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (integer integer) Bool)
(declare-const dummy6 integer)
(declare-datatypes () ((t62b__ref (mk_t62b__ref (t62b__content integer)))))
(define-fun t62b__ref___projection ((a t62b__ref)) integer (t62b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS16 Int)
(define-fun dynamic_invariant3 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant4 ((temp___expr_328 Int) (temp___is_init_324 Bool) (temp___skip_constant_325 Bool) (temp___do_toplevel_326 Bool) (temp___do_typ_inv_327 Bool)) Bool (=> (or (= temp___is_init_324 true) (<= 0 2147483646)) (in_range3 temp___expr_328)))
(assert true)
(declare-const a_msw (_ BitVec 32))
(declare-const i Int)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const o5 Int)
(declare-const o6 Int)
(declare-const o7 us_rep)
(declare-const o8 us_rep)
(declare-const o9 us_rep)
(declare-const o10 Int)
(declare-const o11 Int)
(declare-const o12 us_rep)
(declare-const o13 Int)
(declare-const o14 Int)
(declare-const o15 Int)
(declare-const o16 Int)
(declare-const o17 us_rep)
(declare-const o18 Int)
(declare-const o19 Int)
(declare-const o20 Int)
(declare-const o21 Int)
(declare-const o22 us_rep)
(declare-const o23 us_rep)
(declare-const o24 Int)
(declare-const o25 Int)
(declare-const o26 Int)
(declare-const o27 Int)
(declare-const o28 us_rep)
(declare-const o29 us_rep)
(declare-const o30 us_rep)
(declare-const o31 us_rep)
(declare-const o32 us_rep)
(declare-const o33 Int)
(declare-const o34 Int)
(declare-const o35 Int)
(declare-const o36 Int)
(declare-const o37 us_rep)
(declare-const o38 us_rep)
(declare-const o39 us_rep)
(declare-const o40 us_rep)
(declare-const o41 Bool)
(declare-const o42 (Array Int word32))
(declare-const result (_ BitVec 32))
(declare-const a_msw1 (_ BitVec 32))
(declare-const result1 Int)
(declare-const i1 Int)
(declare-const o43 (Array Int word32))
(declare-const a_msw2 (_ BitVec 32))
(declare-const i2 Int)
(assert (dynamic_property 0 2147483646 (to_rep a__first) (to_rep a__last)))
(assert (in_range2 a_first))
(assert (in_range2 a_last))
(assert (dynamic_invariant2 b true false true true))
(assert (in_range2 b_first))
(assert (dynamic_invariant2 c true false true true))
(assert (in_range2 c_first))
(assert (dynamic_invariant2 m true false true true))
(assert (in_range2 m_first))
(assert (and (and (<= (to_rep a__first) a_first) (<= a_first (to_rep a__last))) (and (and (<= (to_rep a__first) a_last) (<= a_last (to_rep a__last))) (and (< a_first a_last) (and (and (<= (to_rep (first (rt b))) b_first) (<= b_first (to_rep (last (rt b))))) (and (and (<= (to_rep (first (rt b))) (+ b_first (- a_last a_first))) (<= (+ b_first (- a_last a_first)) (to_rep (last (rt b))))) (and (and (<= (to_rep (first (rt c))) c_first) (<= c_first (to_rep (last (rt c))))) (and (and (<= (to_rep (first (rt c))) (+ c_first (- a_last a_first))) (<= (+ c_first (- a_last a_first)) (to_rep (last (rt c))))) (and (and (<= (to_rep (first (rt m))) m_first) (<= m_first (to_rep (last (rt m))))) (and (and (<= (to_rep (first (rt m))) (+ m_first (- a_last a_first))) (<= (+ m_first (- a_last a_first)) (to_rep (last (rt m))))) (and (= (olt (num_of_big_int c c_first (+ (- a_last a_first) 1)) (num_of_big_int m m_first (+ (- a_last a_first) 1))) true) (and (= (olt (from_word32 #x00000001) (num_of_big_int m m_first (+ (- a_last a_first) 1))) true) (= (bvadd #x00000001 (bvmul m_inv (to_rep1 (select (elts m) m_first)))) #x00000000)))))))))))))
(assert (forall ((k Int)) (=> (and (<= a_first k) (<= k a_last)) (= (to_rep1 (select o42 k)) #x00000000))))
(assert (= (mk_t__ref result) (mk_t__ref a_msw)))
(assert (= a_msw1 #x00000000))
(assert (= (mk_int__ref result1) (mk_int__ref i)))
(assert (= i1 a_first))
(assert (<= a_first i1))
(assert (<= i1 a_last))
(assert (and (= (oeq (omod (oadd (num_of_big_int (mk___t o43 (mk (to_rep a__first) (to_rep a__last))) a_first (+ (- a_last a_first) 1)) (omultiply (oexpon (base Tuple0) (+ (- a_last a_first) 1)) (from_word32 a_msw2))) (num_of_big_int m m_first (+ (- a_last a_first) 1))) (omod (omultiply (omultiply (num_of_big_int b b_first (- i2 a_first)) (num_of_big_int c c_first (+ (- a_last a_first) 1))) (oexpon (inverse (num_of_big_int m m_first (+ (- a_last a_first) 1)) (base Tuple0)) (- i2 a_first))) (num_of_big_int m m_first (+ (- a_last a_first) 1)))) true) (= (olt (oadd (num_of_big_int (mk___t o43 (mk (to_rep a__first) (to_rep a__last))) a_first (+ (- a_last a_first) 1)) (omultiply (oexpon (base Tuple0) (+ (- a_last a_first) 1)) (from_word32 a_msw2))) (osubtract (omultiply (from_word32 #x00000002) (num_of_big_int m m_first (+ (- a_last a_first) 1))) (from_word32 #x00000001))) true)))
(assert (and (=> (<= a_first a_last) (dynamic_property1 a_first a_last i2)) (and (<= a_first i2) (<= i2 a_last))))
(assert (= o39 (from_word32 #x00000001)))
(assert (and (= o33 (- a_last a_first)) (in_range1 (- a_last a_first))))
(assert (= o34 (+ o33 1)))
(assert (and (= o35 o34) (in_range1 o34)))
(assert (and (= o36 o35) (in_range2 o35)))
(assert (= o37 (num_of_big_int m m_first o36)))
(assert (= o32 (from_word32 #x00000002)))
(assert (= o38 (omultiply o32 o37)))
(assert (= o40 (osubtract o38 o39)))
(assert (= o29 (from_word32 a_msw2)))
(assert (and (= o24 (- a_last a_first)) (in_range1 (- a_last a_first))))
(assert (= o25 (+ o24 1)))
(assert (and (= o26 o25) (in_range1 o25)))
(assert (and (= o27 o26) (in_range2 o26)))
(assert (and (= o23 (base Tuple0)) (= o23 (oexpon (from_word32 #x00000002) 32))))
(assert (= o28 (oexpon o23 o27)))
(assert (= o30 (omultiply o28 o29)))
(assert (and (= o18 (- a_last a_first)) (in_range1 (- a_last a_first))))
(assert (= o19 (+ o18 1)))
(assert (and (= o20 o19) (in_range1 o19)))
(assert (and (= o21 o20) (in_range2 o20)))
(assert (= o22 (num_of_big_int (mk___t o43 (mk (to_rep a__first) (to_rep a__last))) a_first o21)))
(assert (= o31 (oadd o22 o30)))
(assert (= o41 (olt o31 o40)))
(assert (and (= o13 (- a_last a_first)) (in_range1 (- a_last a_first))))
(assert (= o14 (+ o13 1)))
(assert (and (= o15 o14) (in_range1 o14)))
(assert (and (= o16 o15) (in_range2 o15)))
(assert (= o17 (num_of_big_int m m_first o16)))
(assert (and (= o10 (- i2 a_first)) (in_range1 (- i2 a_first))))
(assert (and (= o11 o10) (in_range2 o10)))
(assert (and (= o8 (base Tuple0)) (= o8 (oexpon (from_word32 #x00000002) 32))))
(assert (and (= o3 (- a_last a_first)) (in_range1 (- a_last a_first))))
(assert (= o4 (+ o3 1)))
(assert (and (= o5 o4) (in_range1 o4)))
(assert (and (= o6 o5) (in_range2 o5)))
(assert (= o7 (num_of_big_int m m_first o6)))
(assert (= o9 (inverse o7 o8)))
(assert (= o12 (oexpon o9 o11)))
(assert (and (= o (- a_last a_first)) (in_range1 (- a_last a_first))))
(assert (= o1 (+ o 1)))
(assert (and (= o2 o1) (in_range1 o1)))
(assert (not (in_range2 o2)))
(check-sat)
(exit)
