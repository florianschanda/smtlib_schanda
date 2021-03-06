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
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
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
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range2 low) (in_range2 high))))))
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
(define-fun dynamic_invariant ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range2 temp___expr_46)))
(define-fun dynamic_invariant1 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(declare-sort digit_index_type 0)
(declare-fun digit_index_typeqtint (digit_index_type) Int)
(assert (forall ((i digit_index_type)) (and (<= 1 (digit_index_typeqtint i)) (<= (digit_index_typeqtint i) 65536))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 65536)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (digit_index_type digit_index_type) Bool)
(declare-const dummy4 digit_index_type)
(declare-datatypes () ((digit_index_type__ref (mk_digit_index_type__ref (digit_index_type__content digit_index_type)))))
(define-fun digit_index_type__ref___projection ((a digit_index_type__ref)) digit_index_type (digit_index_type__content a))
(define-fun to_rep2 ((x digit_index_type)) Int (digit_index_typeqtint x))
(declare-fun of_rep2 (Int) digit_index_type)
(assert (forall ((x digit_index_type)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x digit_index_type)) (! (in_range4 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range4 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-sort tdigit_count_typeB 0)
(declare-fun tdigit_count_typeBqtint (tdigit_count_typeB) Int)
(assert (forall ((i tdigit_count_typeB)) (and (<= (- 2147483648) (tdigit_count_typeBqtint i)) (<= (tdigit_count_typeBqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (tdigit_count_typeB tdigit_count_typeB) Bool)
(declare-const dummy5 tdigit_count_typeB)
(declare-datatypes () ((tdigit_count_typeB__ref (mk_tdigit_count_typeB__ref (tdigit_count_typeB__content tdigit_count_typeB)))))
(define-fun tdigit_count_typeB__ref___projection ((a tdigit_count_typeB__ref)) tdigit_count_typeB (tdigit_count_typeB__content a))
(define-fun to_rep3 ((x tdigit_count_typeB)) Int (tdigit_count_typeBqtint x))
(declare-fun of_rep3 (Int) tdigit_count_typeB)
(assert (forall ((x tdigit_count_typeB)) (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)))))
(assert (forall ((x tdigit_count_typeB)) (! (in_range5 (to_rep3 x)) :pattern ((to_rep3 x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3 (of_rep3 x))))))
(declare-sort octet 0)
(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 8))
(declare-fun attr__ATTRIBUTE_IMAGE6 ((_ BitVec 8)) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) (_ BitVec 8))
(declare-fun user_eq6 (octet octet) Bool)
(declare-const dummy6 octet)
(declare-datatypes () ((octet__ref (mk_octet__ref (octet__content octet)))))
(define-fun octet__ref___projection ((a octet__ref)) octet (octet__content a))
(declare-fun to_rep4 (octet) (_ BitVec 8))
(declare-fun of_rep4 ((_ BitVec 8)) octet)
(assert (forall ((x octet)) (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)))))
(assert true)
(assert (forall ((x (_ BitVec 8))) (! (= (to_rep4 (of_rep4 x)) x) :pattern ((to_rep4 (of_rep4 x))))))
(define-fun to_int2 ((x octet)) Int (bv2nat (to_rep4 x)))
(assert (forall ((x octet)) (! (uint_in_range (to_int2 x)) :pattern ((to_int2 x)))))
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int octet))))))
(declare-fun slide1 ((Array Int octet) Int Int) (Array Int octet))
(assert (forall ((a (Array Int octet))) (forall ((first2 Int)) (! (= (slide1 a first2 first2) a) :pattern ((slide1 a first2 first2))))))
(assert (forall ((a (Array Int octet))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq2 ((a (Array Int octet)) (a__first Int) (a__last Int) (b (Array Int octet)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep4 (select a temp___idx_154)) (to_rep4 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int octet)) (b (Array Int octet))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq2 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep4 (select a temp___idx_154)) (to_rep4 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(define-fun dynamic_property1 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq7 (tdigit_count_typeB tdigit_count_typeB) Bool)
(declare-const dummy7 tdigit_count_typeB)
(declare-datatypes () ((t17s__ref (mk_t17s__ref (t17s__content tdigit_count_typeB)))))
(define-fun t17s__ref___projection ((a t17s__ref)) tdigit_count_typeB (t17s__content a))
(declare-sort t1 0)
(declare-fun first2 (t1) tdigit_count_typeB)
(declare-fun last2 (t1) tdigit_count_typeB)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range5 f) (=> (in_range5 l) (and (= (to_rep3 (first2 (mk1 f l))) f) (= (to_rep3 (last2 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range5 low) (and (in_range5 high) (=> (<= low high) (and (dynamic_property1 range_first range_last low) (dynamic_property1 range_first range_last high))))))
(declare-datatypes () ((us_t1 (mk___t1 (elts1 (Array Int octet)) (rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int octet) (elts1 a))
(define-fun of_array1 ((a (Array Int octet)) (f Int) (l Int)) us_t1 (mk___t1 a (mk1 f l)))
(define-fun first3 ((a us_t1)) Int (to_rep3 (first2 (rt1 a))))
(define-fun last3 ((a us_t1)) Int (to_rep3 (last2 (rt1 a))))
(define-fun length1 ((a us_t1)) Int (ite (<= (first3 a) (last3 a)) (+ (- (last3 a) (first3 a)) 1) 0))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int octet)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int octet)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int octet)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int octet))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int octet))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int octet))) (<= 0 (object__alignment1 a))))
(define-fun bool_eq3 ((x us_t1) (y us_t1)) Bool (bool_eq2 (elts1 x) (to_rep3 (first2 (rt1 x))) (to_rep3 (last2 (rt1 x))) (elts1 y) (to_rep3 (first2 (rt1 y))) (to_rep3 (last2 (rt1 y)))))
(declare-fun user_eq8 (us_t1 us_t1) Bool)
(declare-const dummy8 us_t1)
(declare-datatypes () ((t18s__ref (mk_t18s__ref (t18s__content us_t1)))))
(define-fun t18s__ref___projection ((a t18s__ref)) us_t1 (t18s__content a))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__very_longs__very_long__length digit_index_type)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) digit_index_type (rec__very_longs__very_long__length a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__very_longs__very_long__long_digits us_t1)))))
(define-fun us_split_fields_Long_Digits__projection ((a us_split_fields)) us_t1 (rec__very_longs__very_long__long_digits a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq4 ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep2 (rec__very_longs__very_long__length (us_split_discrs1 a))) (to_rep2 (rec__very_longs__very_long__length (us_split_discrs1 b)))) (= (bool_eq3 (rec__very_longs__very_long__long_digits (us_split_fields1 a)) (rec__very_longs__very_long__long_digits (us_split_fields1 b))) true)) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const very_longs__very_long__length__first__bit Int)
(declare-const very_longs__very_long__length__last__bit Int)
(declare-const very_longs__very_long__length__position Int)
(assert (<= 0 very_longs__very_long__length__first__bit))
(assert (< very_longs__very_long__length__first__bit very_longs__very_long__length__last__bit))
(assert (<= 0 very_longs__very_long__length__position))
(declare-const very_longs__very_long__long_digits__first__bit Int)
(declare-const very_longs__very_long__long_digits__last__bit Int)
(declare-const very_longs__very_long__long_digits__position Int)
(assert (<= 0 very_longs__very_long__long_digits__first__bit))
(assert (< very_longs__very_long__long_digits__first__bit very_longs__very_long__long_digits__last__bit))
(assert (<= 0 very_longs__very_long__long_digits__position))
(declare-fun user_eq9 (us_rep us_rep) Bool)
(declare-const dummy9 us_rep)
(declare-datatypes () ((very_long__ref (mk_very_long__ref (very_long__content us_rep)))))
(define-fun very_long__ref___projection ((a very_long__ref)) us_rep (very_long__content a))
(define-fun dynamic_invariant2 ((temp___expr_235 (_ BitVec 8)) (temp___is_init_231 Bool) (temp___skip_constant_232 Bool) (temp___do_toplevel_233 Bool) (temp___do_typ_inv_234 Bool)) Bool true)
(define-fun dynamic_invariant3 ((temp___expr_228 Int) (temp___is_init_224 Bool) (temp___skip_constant_225 Bool) (temp___do_toplevel_226 Bool) (temp___do_typ_inv_227 Bool)) Bool (=> (or (= temp___is_init_224 true) (<= 1 65536)) (in_range4 temp___expr_228)))
(define-fun dynamic_invariant4 ((temp___expr_248 us_rep) (temp___is_init_244 Bool) (temp___skip_constant_245 Bool) (temp___do_toplevel_246 Bool) (temp___do_typ_inv_247 Bool)) Bool (let ((temp___249 (rec__very_longs__very_long__length (us_split_discrs1 temp___expr_248)))) (and (dynamic_property2 1 (to_rep2 temp___249) (first3 (rec__very_longs__very_long__long_digits (us_split_fields1 temp___expr_248))) (last3 (rec__very_longs__very_long__long_digits (us_split_fields1 temp___expr_248)))) (and (= (first3 (rec__very_longs__very_long__long_digits (us_split_fields1 temp___expr_248))) 1) (= (last3 (rec__very_longs__very_long__long_digits (us_split_fields1 temp___expr_248))) (to_rep2 temp___249))))))
(declare-const number us_t)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const result____split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const r32b Int)
(declare-const attr__ATTRIBUTE_ADDRESS9 Int)
(define-fun dynamic_property3 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)
(declare-fun user_eq10 (tdigit_count_typeB tdigit_count_typeB) Bool)
(declare-const dummy10 tdigit_count_typeB)
(declare-datatypes () ((tS31bP1__ref (mk_tS31bP1__ref (tS31bP1__content tdigit_count_typeB)))))
(define-fun tS31bP1__ref___projection ((a tS31bP1__ref)) tdigit_count_typeB (tS31bP1__content a))
(declare-sort t2 0)
(declare-fun first4 (t2) tdigit_count_typeB)
(declare-fun last4 (t2) tdigit_count_typeB)
(declare-fun mk2 (Int Int) t2)
(assert (forall ((f Int) (l Int)) (! (=> (in_range5 f) (=> (in_range5 l) (and (= (to_rep3 (first4 (mk2 f l))) f) (= (to_rep3 (last4 (mk2 f l))) l)))) :pattern ((mk2 f l)))))
(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range5 low) (and (in_range5 high) (=> (<= low high) (and (dynamic_property3 range_first range_last low) (dynamic_property3 range_first range_last high))))))
(declare-datatypes () ((us_t2 (mk___t2 (elts2 (Array Int octet)) (rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int octet) (elts2 a))
(define-fun of_array2 ((a (Array Int octet)) (f Int) (l Int)) us_t2 (mk___t2 a (mk2 f l)))
(define-fun first5 ((a us_t2)) Int (to_rep3 (first4 (rt2 a))))
(define-fun last5 ((a us_t2)) Int (to_rep3 (last4 (rt2 a))))
(define-fun length2 ((a us_t2)) Int (ite (<= (first5 a) (last5 a)) (+ (- (last5 a) (first5 a)) 1) 0))
(declare-const value__size3 Int)
(declare-fun object__size3 ((Array Int octet)) Int)
(declare-const value__component__size2 Int)
(declare-fun object__component__size2 ((Array Int octet)) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 ((Array Int octet)) Int)
(assert (<= 0 value__size3))
(assert (forall ((a (Array Int octet))) (<= 0 (object__size3 a))))
(assert (<= 0 value__component__size2))
(assert (forall ((a (Array Int octet))) (<= 0 (object__component__size2 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a (Array Int octet))) (<= 0 (object__alignment3 a))))
(define-fun bool_eq5 ((x us_t2) (y us_t2)) Bool (bool_eq2 (elts2 x) (to_rep3 (first4 (rt2 x))) (to_rep3 (last4 (rt2 x))) (elts2 y) (to_rep3 (first4 (rt2 y))) (to_rep3 (last4 (rt2 y)))))
(declare-fun user_eq11 (us_t2 us_t2) Bool)
(declare-const dummy11 us_t2)
(declare-datatypes () ((s31b__ref (mk_s31b__ref (s31b__content us_t2)))))
(define-fun s31b__ref___projection ((a s31b__ref)) us_t2 (s31b__content a))
(define-fun dynamic_property5 ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)
(declare-fun user_eq12 (tdigit_count_typeB tdigit_count_typeB) Bool)
(declare-const dummy12 tdigit_count_typeB)
(declare-datatypes () ((t33b__ref (mk_t33b__ref (t33b__content tdigit_count_typeB)))))
(define-fun t33b__ref___projection ((a t33b__ref)) tdigit_count_typeB (t33b__content a))
(declare-sort t3 0)
(declare-fun first6 (t3) tdigit_count_typeB)
(declare-fun last6 (t3) tdigit_count_typeB)
(declare-fun mk3 (Int Int) t3)
(assert (forall ((f Int) (l Int)) (! (=> (in_range5 f) (=> (in_range5 l) (and (= (to_rep3 (first6 (mk3 f l))) f) (= (to_rep3 (last6 (mk3 f l))) l)))) :pattern ((mk3 f l)))))
(define-fun dynamic_property6 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range5 low) (and (in_range5 high) (=> (<= low high) (and (dynamic_property5 range_first range_last low) (dynamic_property5 range_first range_last high))))))
(declare-datatypes () ((us_t3 (mk___t3 (elts3 (Array Int octet)) (rt3 t3)))))
(define-fun to_array3 ((a us_t3)) (Array Int octet) (elts3 a))
(define-fun of_array3 ((a (Array Int octet)) (f Int) (l Int)) us_t3 (mk___t3 a (mk3 f l)))
(define-fun first7 ((a us_t3)) Int (to_rep3 (first6 (rt3 a))))
(define-fun last7 ((a us_t3)) Int (to_rep3 (last6 (rt3 a))))
(define-fun length3 ((a us_t3)) Int (ite (<= (first7 a) (last7 a)) (+ (- (last7 a) (first7 a)) 1) 0))
(declare-const value__size4 Int)
(declare-fun object__size4 ((Array Int octet)) Int)
(declare-const value__component__size3 Int)
(declare-fun object__component__size3 ((Array Int octet)) Int)
(declare-const value__alignment4 Int)
(declare-fun object__alignment4 ((Array Int octet)) Int)
(assert (<= 0 value__size4))
(assert (forall ((a (Array Int octet))) (<= 0 (object__size4 a))))
(assert (<= 0 value__component__size3))
(assert (forall ((a (Array Int octet))) (<= 0 (object__component__size3 a))))
(assert (<= 0 value__alignment4))
(assert (forall ((a (Array Int octet))) (<= 0 (object__alignment4 a))))
(define-fun bool_eq6 ((x us_t3) (y us_t3)) Bool (bool_eq2 (elts3 x) (to_rep3 (first6 (rt3 x))) (to_rep3 (last6 (rt3 x))) (elts3 y) (to_rep3 (first6 (rt3 y))) (to_rep3 (last6 (rt3 y)))))
(declare-fun user_eq13 (us_t3 us_t3) Bool)
(declare-const dummy13 us_t3)
(declare-datatypes () ((t34b__ref (mk_t34b__ref (t34b__content us_t3)))))
(define-fun t34b__ref___projection ((a t34b__ref)) us_t3 (t34b__content a))
(declare-const r35b Int)
(declare-const attr__ATTRIBUTE_ADDRESS10 Int)
(declare-fun temp_____aggregate_def_886 ((_ BitVec 8) Int Int) us_t3)
(define-fun dynamic_invariant5 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range3 temp___expr_74)))
(define-fun dynamic_invariant6 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-sort t4 0)
(declare-fun first8 (t4) tdigit_count_typeB)
(declare-fun last8 (t4) tdigit_count_typeB)
(declare-fun mk4 (Int Int) t4)
(assert (forall ((f Int) (l Int)) (! (=> (in_range5 f) (=> (in_range5 l) (and (= (to_rep3 (first8 (mk4 f l))) f) (= (to_rep3 (last8 (mk4 f l))) l)))) :pattern ((mk4 f l)))))
(define-fun dynamic_property7 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range5 low) (and (in_range5 high) (=> (<= low high) (and (in_range4 low) (in_range4 high))))))
(declare-datatypes () ((us_t4 (mk___t4 (elts4 (Array Int octet)) (rt4 t4)))))
(define-fun to_array4 ((a us_t4)) (Array Int octet) (elts4 a))
(define-fun of_array4 ((a (Array Int octet)) (f Int) (l Int)) us_t4 (mk___t4 a (mk4 f l)))
(define-fun first9 ((a us_t4)) Int (to_rep3 (first8 (rt4 a))))
(define-fun last9 ((a us_t4)) Int (to_rep3 (last8 (rt4 a))))
(define-fun length4 ((a us_t4)) Int (ite (<= (first9 a) (last9 a)) (+ (- (last9 a) (first9 a)) 1) 0))
(declare-const value__size5 Int)
(declare-fun object__size5 ((Array Int octet)) Int)
(declare-const value__component__size4 Int)
(declare-fun object__component__size4 ((Array Int octet)) Int)
(declare-const value__alignment5 Int)
(declare-fun object__alignment5 ((Array Int octet)) Int)
(assert (<= 0 value__size5))
(assert (forall ((a (Array Int octet))) (<= 0 (object__size5 a))))
(assert (<= 0 value__component__size4))
(assert (forall ((a (Array Int octet))) (<= 0 (object__component__size4 a))))
(assert (<= 0 value__alignment5))
(assert (forall ((a (Array Int octet))) (<= 0 (object__alignment5 a))))
(define-fun bool_eq7 ((x us_t4) (y us_t4)) Bool (bool_eq2 (elts4 x) (to_rep3 (first8 (rt4 x))) (to_rep3 (last8 (rt4 x))) (elts4 y) (to_rep3 (first8 (rt4 y))) (to_rep3 (last8 (rt4 y)))))
(declare-fun user_eq14 (us_t4 us_t4) Bool)
(declare-const dummy14 us_t4)
(declare-datatypes () ((digits_array_type__ref (mk_digits_array_type__ref (digits_array_type__content us_t4)))))
(define-fun digits_array_type__ref___projection ((a digits_array_type__ref)) us_t4 (digits_array_type__content a))
(assert (forall ((temp___888 (_ BitVec 8))) (forall ((temp___889 Int) (temp___890 Int)) (let ((temp___887 (temp_____aggregate_def_886 temp___888 temp___889 temp___890))) (=> (dynamic_invariant2 temp___888 true true true true) (and (=> (dynamic_property7 1 65536 temp___889 temp___890) (and (= (first7 temp___887) temp___889) (= (last7 temp___887) temp___890))) (forall ((temp___891 Int)) (= (to_rep4 (select (to_array3 temp___887) temp___891)) temp___888))))))))
(define-fun dynamic_invariant7 ((temp___expr_242 us_t4) (temp___is_init_238 Bool) (temp___skip_constant_239 Bool) (temp___do_toplevel_240 Bool) (temp___do_typ_inv_241 Bool)) Bool (=> (not (= temp___skip_constant_239 true)) (dynamic_property7 1 65536 (first9 temp___expr_242) (last9 temp___expr_242))))
(define-fun dynamic_invariant8 ((temp___expr_442 us_t2) (temp___is_init_438 Bool) (temp___skip_constant_439 Bool) (temp___do_toplevel_440 Bool) (temp___do_typ_inv_441 Bool)) Bool (=> (not (= temp___skip_constant_439 true)) (and (dynamic_property4 1 r32b (first5 temp___expr_442) (last5 temp___expr_442)) (and (= (first5 temp___expr_442) 1) (= (last5 temp___expr_442) r32b)))))
(declare-const result____split_fields (Array Int octet))
(declare-const result____split_fields1 t1)
(assert (dynamic_invariant1 number true false true true))
(assert (dynamic_invariant4 (mk___rep result____split_discrs (mk___split_fields (mk___t1 result____split_fields result____split_fields1))) false false true true))
(assert (not (in_range5 (* 2 (to_rep2 (rec__very_longs__very_long__length result____split_discrs))))))
(check-sat)
(exit)
