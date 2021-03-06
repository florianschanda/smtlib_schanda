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
(declare-fun nth ((_ BitVec 8) Int) Bool)
(declare-fun lsr ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun asr ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun lsl ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun rotate_right1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun rotate_left1 ((_ BitVec 8) Int) (_ BitVec 8))
(declare-fun pow2 (Int) Int)
(define-fun to_int1 ((x (_ BitVec 8))) Int (ite (bvsge x (_ bv0 8)) (bv2nat x) (- (- 256 (bv2nat x)))))
(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 255)))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvlshr x n) (lsr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvashr x n) (asr x (bv2nat n)))))
(assert (forall ((x (_ BitVec 8)) (n (_ BitVec 8))) (= (bvshl x n) (lsl x (bv2nat n)))))
(assert (forall ((v (_ BitVec 8)) (n (_ BitVec 8))) (= (bvor (bvshl v (bvurem n (_ bv8 8))) (bvlshr v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) (rotate_left1 v (bv2nat n)))))
(assert (forall ((v (_ BitVec 8)) (n (_ BitVec 8))) (= (bvor (bvlshr v (bvurem n (_ bv8 8))) (bvshl v (bvsub (_ bv8 8) (bvurem n (_ bv8 8))))) (rotate_right1 v (bv2nat n)))))
(declare-fun nth_bv ((_ BitVec 8) (_ BitVec 8)) Bool)
(assert (forall ((x (_ BitVec 8)) (i (_ BitVec 8))) (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))
(assert (forall ((x (_ BitVec 8)) (i (_ BitVec 8))) (= (nth x (bv2nat i)) (nth_bv x i))))
(assert (forall ((x (_ BitVec 8)) (i Int)) (=> (and (<= 0 i) (< i 256)) (= (nth_bv x ((_ int2bv 8) i)) (nth x i)))))
(declare-fun eq_sub_bv ((_ BitVec 8) (_ BitVec 8) (_ BitVec 8) (_ BitVec 8)) Bool)
(assert (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8)) (n (_ BitVec 8))) (let ((mask (bvshl (bvsub (bvshl #x01 n) #x01) i))) (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))
(define-fun eq_sub ((a (_ BitVec 8)) (b (_ BitVec 8)) (i Int) (n Int)) Bool (forall ((j Int)) (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))
(assert (forall ((a (_ BitVec 8)) (b (_ BitVec 8)) (i (_ BitVec 8)) (n (_ BitVec 8))) (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))
(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 8))))))
(declare-fun power ((_ BitVec 8) Int) (_ BitVec 8))
(define-fun bv_min ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) x y))
(define-fun bv_max ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8) (ite (bvule x y) y x))
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
(declare-sort index_number 0)
(declare-fun index_numberqtint (index_number) Int)
(assert (forall ((i index_number)) (and (<= 0 (index_numberqtint i)) (<= (index_numberqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (index_number index_number) Bool)
(declare-const dummy2 index_number)
(declare-datatypes () ((index_number__ref (mk_index_number__ref (index_number__content index_number)))))
(define-fun index_number__ref___projection ((a index_number__ref)) index_number (index_number__content a))
(declare-sort byte 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 8))
(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 8)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 8))
(declare-fun user_eq3 (byte byte) Bool)
(declare-const dummy3 byte)
(declare-datatypes () ((byte__ref (mk_byte__ref (byte__content byte)))))
(define-fun byte__ref___projection ((a byte__ref)) byte (byte__content a))
(declare-fun to_rep1 (byte) (_ BitVec 8))
(declare-fun of_rep1 ((_ BitVec 8)) byte)
(assert (forall ((x byte)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert true)
(assert (forall ((x (_ BitVec 8))) (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun to_int2 ((x byte)) Int (bv2nat (to_rep1 x)))
(assert (forall ((x byte)) (! (uint_in_range (to_int2 x)) :pattern ((to_int2 x)))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int byte))))))
(declare-fun slide ((Array Int byte) Int Int) (Array Int byte))
(assert (forall ((a (Array Int byte))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int byte))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int byte)) (a__first Int) (a__last Int) (b (Array Int byte)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int byte)) (b (Array Int byte))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep (first (mk f l))) f) (= (to_rep (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int byte)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int byte) (elts a))
(define-fun of_array ((a (Array Int byte)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int byte)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int byte)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int byte)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int byte))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int byte))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int byte))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep (first (rt x))) (to_rep (last (rt x))) (elts y) (to_rep (first (rt y))) (to_rep (last (rt y)))))
(declare-fun user_eq4 (us_t us_t) Bool)
(declare-const dummy4 us_t)
(declare-datatypes () ((byte_array__ref (mk_byte_array__ref (byte_array__content us_t)))))
(define-fun byte_array__ref___projection ((a byte_array__ref)) us_t (byte_array__content a))
(declare-fun nth1 ((_ BitVec 64) Int) Bool)
(declare-fun lsr1 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun asr1 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun lsl1 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_right2 ((_ BitVec 64) Int) (_ BitVec 64))
(declare-fun rotate_left2 ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun to_int3 ((x (_ BitVec 64))) Int (ite (bvsge x (_ bv0 64)) (bv2nat x) (- (- 18446744073709551616 (bv2nat x)))))
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
(declare-fun power1 ((_ BitVec 64) Int) (_ BitVec 64))
(define-fun bv_min1 ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))
(define-fun bv_max1 ((x (_ BitVec 64)) (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))
(declare-sort lane_type 0)
(declare-const attr__ATTRIBUTE_MODULUS1 (_ BitVec 64))
(declare-fun attr__ATTRIBUTE_IMAGE5 ((_ BitVec 64)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) (_ BitVec 64))
(declare-fun user_eq5 (lane_type lane_type) Bool)
(declare-const dummy5 lane_type)
(declare-datatypes () ((lane_type__ref (mk_lane_type__ref (lane_type__content lane_type)))))
(define-fun lane_type__ref___projection ((a lane_type__ref)) lane_type (lane_type__content a))
(declare-fun to_rep2 (lane_type) (_ BitVec 64))
(declare-fun of_rep2 ((_ BitVec 64)) lane_type)
(assert (forall ((x lane_type)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert true)
(assert (forall ((x (_ BitVec 64))) (! (= (to_rep2 (of_rep2 x)) x) :pattern ((to_rep2 (of_rep2 x))))))
(define-fun to_int4 ((x lane_type)) Int (bv2nat (to_rep2 x)))
(assert (forall ((x lane_type)) (! (uint_in_range1 (to_int4 x)) :pattern ((to_int4 x)))))
(declare-sort map1 0)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 map1)))))
(declare-fun get (map1 (_ BitVec 8) (_ BitVec 8)) lane_type)
(declare-fun set (map1 (_ BitVec 8) (_ BitVec 8) lane_type) map1)
(assert (forall ((m map1)) (forall ((i (_ BitVec 8))) (forall ((j (_ BitVec 8))) (forall ((a lane_type)) (! (= (get (set m i j a) i j) a) :pattern ((set m i j a))))))))
(assert (forall ((m map1)) (forall ((i (_ BitVec 8)) (i2 (_ BitVec 8))) (forall ((j (_ BitVec 8)) (j2 (_ BitVec 8))) (forall ((a lane_type)) (! (=> (not (and (= i i2) (= j j2))) (= (get (set m i j a) i2 j2) (get m i2 j2))) :pattern ((get (set m i j a) i2 j2)) :pattern ((set m i j a) (get m i2 j2))))))))
(declare-fun slide1 (map1 (_ BitVec 8) (_ BitVec 8) (_ BitVec 8) (_ BitVec 8)) map1)
(assert (forall ((a map1)) (forall ((new_first (_ BitVec 8)) (old_first (_ BitVec 8))) (forall ((new_first_2 (_ BitVec 8)) (old_first_2 (_ BitVec 8))) (forall ((i (_ BitVec 8))) (forall ((j (_ BitVec 8))) (! (= (get (slide1 a old_first new_first old_first_2 new_first_2) i j) (get a (bvsub i (bvsub new_first old_first)) (bvsub j (bvsub new_first_2 old_first_2)))) :pattern ((get (slide1 a old_first new_first old_first_2 new_first_2) i j)))))))))
(define-fun bool_eq2 ((a map1) (a__first (_ BitVec 8)) (a__last (_ BitVec 8)) (a__first_2 (_ BitVec 8)) (a__last_2 (_ BitVec 8)) (b map1) (b__first (_ BitVec 8)) (b__last (_ BitVec 8)) (b__first_2 (_ BitVec 8)) (b__last_2 (_ BitVec 8))) Bool (ite (and (and (ite (bvule a__first a__last) (and (bvule b__first b__last) (= (bvsub a__last a__first) (bvsub b__last b__first))) (bvugt b__first b__last)) (ite (bvule a__first_2 a__last_2) (and (bvule b__first_2 b__last_2) (= (bvsub a__last_2 a__first_2) (bvsub b__last_2 b__first_2))) (bvugt b__first_2 b__last_2))) (forall ((temp___idx_155 (_ BitVec 8)) (temp___idx_156 (_ BitVec 8))) (=> (and (and (bvule a__first temp___idx_155) (bvule temp___idx_155 a__last)) (and (bvule a__first_2 temp___idx_156) (bvule temp___idx_156 a__last_2))) (= (to_rep2 (get a temp___idx_155 temp___idx_156)) (to_rep2 (get b (bvadd (bvsub b__first a__first) temp___idx_155) (bvadd (bvsub b__first_2 a__first_2) temp___idx_156))))))) true false))
(assert (forall ((a map1) (b map1)) (forall ((a__first (_ BitVec 8)) (a__last (_ BitVec 8)) (a__first_2 (_ BitVec 8)) (a__last_2 (_ BitVec 8)) (b__first (_ BitVec 8)) (b__last (_ BitVec 8)) (b__first_2 (_ BitVec 8)) (b__last_2 (_ BitVec 8))) (=> (= (bool_eq2 b b__first b__last b__first_2 b__last_2 a a__first a__last a__first_2 a__last_2) true) (and (and (ite (bvule a__first a__last) (and (bvule b__first b__last) (= (bvsub a__last a__first) (bvsub b__last b__first))) (bvugt b__first b__last)) (ite (bvule a__first_2 a__last_2) (and (bvule b__first_2 b__last_2) (= (bvsub a__last_2 a__first_2) (bvsub b__last_2 b__first_2))) (bvugt b__first_2 b__last_2))) (forall ((temp___idx_155 (_ BitVec 8)) (temp___idx_156 (_ BitVec 8))) (=> (and (and (bvule a__first temp___idx_155) (bvule temp___idx_155 a__last)) (and (bvule a__first_2 temp___idx_156) (bvule temp___idx_156 a__last_2))) (= (to_rep2 (get a temp___idx_155 temp___idx_156)) (to_rep2 (get b (bvadd (bvsub b__first a__first) temp___idx_155) (bvadd (bvsub b__first_2 a__first_2) temp___idx_156)))))))))))
(declare-const a map1)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const data__first integer)
(declare-const data__last integer)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const bit_len Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant2 ((temp___expr_286 (_ BitVec 8)) (temp___is_init_282 Bool) (temp___skip_constant_283 Bool) (temp___do_toplevel_284 Bool) (temp___do_typ_inv_285 Bool)) Bool true)
(define-fun dynamic_invariant3 ((temp___expr_293 Int) (temp___is_init_289 Bool) (temp___skip_constant_290 Bool) (temp___do_toplevel_291 Bool) (temp___do_typ_inv_292 Bool)) Bool (=> (or (= temp___is_init_289 true) (<= 0 2147483647)) (in_range3 temp___expr_293)))
(define-fun dynamic_invariant4 ((temp___expr_300 us_t) (temp___is_init_296 Bool) (temp___skip_constant_297 Bool) (temp___do_toplevel_298 Bool) (temp___do_typ_inv_299 Bool)) Bool (=> (not (= temp___skip_constant_297 true)) (dynamic_property 0 2147483647 (first1 temp___expr_300) (last1 temp___expr_300))))
(assert (dynamic_property 0 2147483647 (to_rep data__first) (to_rep data__last)))
(assert (in_range2 bit_len))
(assert (<= bit_len 1600))
(assert (not (in_range1 (+ bit_len 7))))
(check-sat)
(exit)
