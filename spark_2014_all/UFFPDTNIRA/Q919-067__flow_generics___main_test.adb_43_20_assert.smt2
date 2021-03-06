(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFFPDTNIRA)
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
(declare-sort float 0)
(declare-fun user_eq (float float) Bool)
(declare-fun attr__ATTRIBUTE_IMAGE (Float32) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Float32)
(declare-const dummy float)
(declare-datatypes () ((float__ref (mk_float__ref (float__content float)))))
(define-fun float__ref___projection ((a float__ref)) float (float__content a))
(declare-fun to_rep (float) Float32)
(declare-fun of_rep (Float32) float)
(assert (forall ((x float)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x float)) (! (fp.isFinite32 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Float32)) (! (=> (fp.isFinite32 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort map1 0)
(declare-datatypes () ((map__ref (mk_map__ref (map__content map1)))))
(declare-fun get (map1 Int Int) float)
(declare-fun set (map1 Int Int float) map1)
(assert (forall ((m map1)) (forall ((i Int)) (forall ((j Int)) (forall ((a float)) (! (= (get (set m i j a) i j) a) :pattern ((set m i j a))))))))
(assert (forall ((m map1)) (forall ((i Int) (i2 Int)) (forall ((j Int) (j2 Int)) (forall ((a float)) (! (=> (not (and (= i i2) (= j j2))) (= (get (set m i j a) i2 j2) (get m i2 j2))) :pattern ((get (set m i j a) i2 j2)) :pattern ((set m i j a) (get m i2 j2))))))))
(declare-fun slide (map1 Int Int Int Int) map1)
(assert (forall ((a map1)) (forall ((new_first Int) (old_first Int)) (forall ((new_first_2 Int) (old_first_2 Int)) (forall ((i Int)) (forall ((j Int)) (! (= (get (slide a old_first new_first old_first_2 new_first_2) i j) (get a (- i (- new_first old_first)) (- j (- new_first_2 old_first_2)))) :pattern ((get (slide a old_first new_first old_first_2 new_first_2) i j)))))))))
(define-fun bool_eq ((a map1) (a__first Int) (a__last Int) (a__first_2 Int) (a__last_2 Int) (b map1) (b__first Int) (b__last Int) (b__first_2 Int) (b__last_2 Int)) Bool (ite (and (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (ite (<= a__first_2 a__last_2) (and (<= b__first_2 b__last_2) (= (- a__last_2 a__first_2) (- b__last_2 b__first_2))) (< b__last_2 b__first_2))) (forall ((temp___idx_155 Int) (temp___idx_156 Int)) (=> (and (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (and (<= a__first_2 temp___idx_156) (<= temp___idx_156 a__last_2))) (= (to_rep (get a temp___idx_155 temp___idx_156)) (to_rep (get b (+ (- b__first a__first) temp___idx_155) (+ (- b__first_2 a__first_2) temp___idx_156))))))) true false))
(assert (forall ((a map1) (b map1)) (forall ((a__first Int) (a__last Int) (a__first_2 Int) (a__last_2 Int) (b__first Int) (b__last Int) (b__first_2 Int) (b__last_2 Int)) (=> (= (bool_eq b b__first b__last b__first_2 b__last_2 a a__first a__last a__first_2 a__last_2) true) (and (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (ite (<= a__first_2 a__last_2) (and (<= b__first_2 b__last_2) (= (- a__last_2 a__first_2) (- b__last_2 b__first_2))) (< b__last_2 b__first_2))) (forall ((temp___idx_155 Int) (temp___idx_156 Int)) (=> (and (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (and (<= a__first_2 temp___idx_156) (<= temp___idx_156 a__last_2))) (= (to_rep (get a temp___idx_155 temp___idx_156)) (to_rep (get b (+ (- b__first a__first) temp___idx_155) (+ (- b__first_2 a__first_2) temp___idx_156)))))))))))
(declare-fun manipulate (map1 map1) map1)
(declare-fun manipulate__function_guard (map1 map1 map1) Bool)
(assert true)
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (integer integer) Bool)
(declare-const dummy1 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
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
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (in_range low) (in_range high))))))
(declare-sort t1 0)
(declare-fun first1 (t1) integer)
(declare-fun last1 (t1) integer)
(declare-fun mk1 (Int Int) t1)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep1 (first1 (mk1 f l))) f) (= (to_rep1 (last1 (mk1 f l))) l)))) :pattern ((mk1 f l)))))
(define-fun dynamic_property1 ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (in_range low) (in_range high))))))
(declare-datatypes () ((us_t (mk___t (elts map1) (rt t) (rt_2 t1)))))
(define-fun to_array ((a us_t)) map1 (elts a))
(define-fun of_array ((a map1) (f Int) (l Int) (f2 Int) (l2 Int)) us_t (mk___t a (mk f l) (mk1 f2 l2)))
(define-fun first2 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last2 ((a us_t)) Int (to_rep1 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first2 a) (last2 a)) (+ (- (last2 a) (first2 a)) 1) 0))
(define-fun first_2 ((a us_t)) Int (to_rep1 (first1 (rt_2 a))))
(define-fun last_2 ((a us_t)) Int (to_rep1 (last1 (rt_2 a))))
(define-fun length_2 ((a us_t)) Int (ite (<= (first_2 a) (last_2 a)) (+ (- (last_2 a) (first_2 a)) 1) 0))
(define-fun dynamic_property2 ((range_first1 Int) (range_last1 Int) (f1 Int) (l1 Int) (range_first2 Int) (range_last2 Int) (f2 Int) (l2 Int)) Bool (and (dynamic_property range_first1 range_last1 f1 l1) (dynamic_property1 range_first2 range_last2 f2 l2)))
(declare-const value__size Int)
(declare-fun object__size (map1) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size (map1) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (map1) Int)
(assert (<= 0 value__size))
(assert (forall ((a map1)) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a map1)) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a map1)) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (to_rep1 (first1 (rt_2 x))) (to_rep1 (last1 (rt_2 x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y))) (to_rep1 (first1 (rt_2 y))) (to_rep1 (last1 (rt_2 y)))))
(declare-fun user_eq2 (us_t us_t) Bool)
(declare-const dummy2 us_t)
(declare-datatypes () ((real_matrix__ref (mk_real_matrix__ref (real_matrix__content us_t)))))
(define-fun real_matrix__ref___2__projection ((a real_matrix__ref)) us_t (real_matrix__content a))
(declare-fun transpose1 (us_t) us_t)
(declare-fun transpose__function_guard (us_t us_t) Bool)
(declare-fun omultiply__4 (us_t us_t) us_t)
(declare-fun omultiply__4__function_guard (us_t us_t us_t) Bool)
(declare-fun manipulate1 (map1 map1) map1)
(declare-fun manipulate__function_guard1 (map1 map1 map1) Bool)
(declare-sort taxa_matrixP1 0)
(declare-fun taxa_matrixP1qtint (taxa_matrixP1) Int)
(assert (forall ((i taxa_matrixP1)) (and (<= 1 (taxa_matrixP1qtint i)) (<= (taxa_matrixP1qtint i) 3))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq3 (taxa_matrixP1 taxa_matrixP1) Bool)
(declare-const dummy3 taxa_matrixP1)
(declare-datatypes () ((taxa_matrixP1__ref (mk_taxa_matrixP1__ref (taxa_matrixP1__content taxa_matrixP1)))))
(define-fun taxa_matrixP1__ref___2__projection ((a taxa_matrixP1__ref)) taxa_matrixP1 (taxa_matrixP1__content a))
(declare-sort taxa_matrixP2 0)
(declare-fun taxa_matrixP2qtint (taxa_matrixP2) Int)
(assert (forall ((i taxa_matrixP2)) (and (<= 1 (taxa_matrixP2qtint i)) (<= (taxa_matrixP2qtint i) 3))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (taxa_matrixP2 taxa_matrixP2) Bool)
(declare-const dummy4 taxa_matrixP2)
(declare-datatypes () ((taxa_matrixP2__ref (mk_taxa_matrixP2__ref (taxa_matrixP2__content taxa_matrixP2)))))
(define-fun taxa_matrixP2__ref___2__projection ((a taxa_matrixP2__ref)) taxa_matrixP2 (taxa_matrixP2__content a))
(declare-sort taxb_matrixP1 0)
(declare-fun taxb_matrixP1qtint (taxb_matrixP1) Int)
(assert (forall ((i taxb_matrixP1)) (and (<= 1 (taxb_matrixP1qtint i)) (<= (taxb_matrixP1qtint i) 3))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (taxb_matrixP1 taxb_matrixP1) Bool)
(declare-const dummy5 taxb_matrixP1)
(declare-datatypes () ((taxb_matrixP1__ref (mk_taxb_matrixP1__ref (taxb_matrixP1__content taxb_matrixP1)))))
(define-fun taxb_matrixP1__ref___2__projection ((a taxb_matrixP1__ref)) taxb_matrixP1 (taxb_matrixP1__content a))
(declare-sort taxb_matrixP2 0)
(declare-fun taxb_matrixP2qtint (taxb_matrixP2) Int)
(assert (forall ((i taxb_matrixP2)) (and (<= 1 (taxb_matrixP2qtint i)) (<= (taxb_matrixP2qtint i) 2))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (taxb_matrixP2 taxb_matrixP2) Bool)
(declare-const dummy6 taxb_matrixP2)
(declare-datatypes () ((taxb_matrixP2__ref (mk_taxb_matrixP2__ref (taxb_matrixP2__content taxb_matrixP2)))))
(define-fun taxb_matrixP2__ref___2__projection ((a taxb_matrixP2__ref)) taxb_matrixP2 (taxb_matrixP2__content a))
(declare-sort tbxb_matrixP1 0)
(declare-fun tbxb_matrixP1qtint (tbxb_matrixP1) Int)
(assert (forall ((i tbxb_matrixP1)) (and (<= 1 (tbxb_matrixP1qtint i)) (<= (tbxb_matrixP1qtint i) 2))))
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq7 (tbxb_matrixP1 tbxb_matrixP1) Bool)
(declare-const dummy7 tbxb_matrixP1)
(declare-datatypes () ((tbxb_matrixP1__ref (mk_tbxb_matrixP1__ref (tbxb_matrixP1__content tbxb_matrixP1)))))
(define-fun tbxb_matrixP1__ref___2__projection ((a tbxb_matrixP1__ref)) tbxb_matrixP1 (tbxb_matrixP1__content a))
(declare-sort tbxb_matrixP2 0)
(declare-fun tbxb_matrixP2qtint (tbxb_matrixP2) Int)
(assert (forall ((i tbxb_matrixP2)) (and (<= 1 (tbxb_matrixP2qtint i)) (<= (tbxb_matrixP2qtint i) 2))))
(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq8 (tbxb_matrixP2 tbxb_matrixP2) Bool)
(declare-const dummy8 tbxb_matrixP2)
(declare-datatypes () ((tbxb_matrixP2__ref (mk_tbxb_matrixP2__ref (tbxb_matrixP2__content tbxb_matrixP2)))))
(define-fun tbxb_matrixP2__ref___2__projection ((a tbxb_matrixP2__ref)) tbxb_matrixP2 (tbxb_matrixP2__content a))
(assert true)
(assert (forall ((original map1) (map2 map1)) (! (= (manipulate1 original map2) (let ((temp___1937 (omultiply__4 (omultiply__4 (transpose1 (of_array map2 1 3 1 2)) (of_array original 1 3 1 3)) (of_array map2 1 3 1 2)))) (slide (to_array temp___1937) (first2 temp___1937) 1 (first_2 temp___1937) 1))) :pattern ((manipulate1 original map2)))))
(declare-sort tbxb_matrixP11 0)
(declare-fun tbxb_matrixP1qtint1 (tbxb_matrixP11) Int)
(assert (forall ((i tbxb_matrixP11)) (and (<= 1 (tbxb_matrixP1qtint1 i)) (<= (tbxb_matrixP1qtint1 i) 2))))
(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)
(declare-fun user_eq9 (tbxb_matrixP11 tbxb_matrixP11) Bool)
(declare-const dummy9 tbxb_matrixP11)
(declare-datatypes () ((tbxb_matrixP1__ref1 (mk_tbxb_matrixP1__ref1 (tbxb_matrixP1__content1 tbxb_matrixP11)))))
(define-fun tbxb_matrixP1__ref___projection ((a tbxb_matrixP1__ref1)) tbxb_matrixP11 (tbxb_matrixP1__content1 a))
(declare-sort tbxb_matrixP21 0)
(declare-fun tbxb_matrixP2qtint1 (tbxb_matrixP21) Int)
(assert (forall ((i tbxb_matrixP21)) (and (<= 1 (tbxb_matrixP2qtint1 i)) (<= (tbxb_matrixP2qtint1 i) 2))))
(define-fun in_range8 ((x Int)) Bool (and (<= 1 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)
(declare-fun user_eq10 (tbxb_matrixP21 tbxb_matrixP21) Bool)
(declare-const dummy10 tbxb_matrixP21)
(declare-datatypes () ((tbxb_matrixP2__ref1 (mk_tbxb_matrixP2__ref1 (tbxb_matrixP2__content1 tbxb_matrixP21)))))
(define-fun tbxb_matrixP2__ref___projection ((a tbxb_matrixP2__ref1)) tbxb_matrixP21 (tbxb_matrixP2__content1 a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-sort t21b 0)
(declare-fun t21bqtint (t21b) Int)
(assert (forall ((i t21b)) (and (<= (- 2147483648) (t21bqtint i)) (<= (t21bqtint i) (- 2147483647)))))
(define-fun in_range9 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x (- 2147483647))))
(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)
(declare-fun user_eq11 (t21b t21b) Bool)
(declare-const dummy11 t21b)
(declare-datatypes () ((t21b__ref (mk_t21b__ref (t21b__content t21b)))))
(define-fun t21b__ref___projection ((a t21b__ref)) t21b (t21b__content a))
(declare-sort t22b 0)
(declare-fun t22bqtint (t22b) Int)
(assert (forall ((i t22b)) (and (<= (- 2147483648) (t22bqtint i)) (<= (t22bqtint i) (- 2147483647)))))
(define-fun in_range10 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x (- 2147483647))))
(declare-fun attr__ATTRIBUTE_IMAGE11 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check11 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE11 (us_image) Int)
(declare-fun user_eq12 (t22b t22b) Bool)
(declare-const dummy12 t22b)
(declare-datatypes () ((t22b__ref (mk_t22b__ref (t22b__content t22b)))))
(define-fun t22b__ref___projection ((a t22b__ref)) t22b (t22b__content a))
(declare-sort t24b 0)
(declare-fun t24bqtint (t24b) Int)
(assert (forall ((i t24b)) (and (<= (- 2147483648) (t24bqtint i)) (<= (t24bqtint i) (- 2147483647)))))
(define-fun in_range11 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x (- 2147483647))))
(declare-fun attr__ATTRIBUTE_IMAGE12 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check12 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE12 (us_image) Int)
(declare-fun user_eq13 (t24b t24b) Bool)
(declare-const dummy13 t24b)
(declare-datatypes () ((t24b__ref (mk_t24b__ref (t24b__content t24b)))))
(define-fun t24b__ref___projection ((a t24b__ref)) t24b (t24b__content a))
(declare-sort t25b 0)
(declare-fun t25bqtint (t25b) Int)
(assert (forall ((i t25b)) (and (<= (- 2147483648) (t25bqtint i)) (<= (t25bqtint i) (- 2147483647)))))
(define-fun in_range12 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x (- 2147483647))))
(declare-fun attr__ATTRIBUTE_IMAGE13 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check13 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE13 (us_image) Int)
(declare-fun user_eq14 (t25b t25b) Bool)
(declare-const dummy14 t25b)
(declare-datatypes () ((t25b__ref (mk_t25b__ref (t25b__content t25b)))))
(define-fun t25b__ref___projection ((a t25b__ref)) t25b (t25b__content a))
(declare-fun main_test__mat_in__aggregate_def (Float32 Float32 Float32 Float32 Float32 Float32 Float32 Float32 Float32) map1)
(declare-fun main_test__mat_map__aggregate_def (Float32 Float32 Float32 Float32 Float32 Float32) map1)
(declare-fun main_test__mat_out__aggregate_def (Float32) map1)
(declare-fun main_test__mat_in2__aggregate_def (Float32 Float32 Float32 Float32 Float32 Float32 Float32 Float32 Float32) map1)
(declare-fun main_test__mat_map2__aggregate_def (Float32 Float32 Float32 Float32 Float32 Float32) map1)
(declare-fun main_test__mat_out2__aggregate_def (Float32) map1)
(declare-fun temp_____aggregate_def_1988 (Float32 Float32 Float32 Float32) map1)
(declare-fun temp_____aggregate_def_1998 (Float32 Float32 Float32 Float32) map1)
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(define-fun dynamic_invariant1 ((temp___expr_60 Float32) (temp___is_init_56 Bool) (temp___skip_constant_57 Bool) (temp___do_toplevel_58 Bool) (temp___do_typ_inv_59 Bool)) Bool (=> (or (= temp___is_init_56 true) (fp.leq (fp.neg (fp #b0 #b11111110 #b11111111111111111111111)) (fp #b0 #b11111110 #b11111111111111111111111))) (fp.isFinite32 temp___expr_60)))
(assert (forall ((temp___1939 Float32) (temp___1940 Float32) (temp___1941 Float32) (temp___1942 Float32) (temp___1943 Float32) (temp___1944 Float32) (temp___1945 Float32) (temp___1946 Float32) (temp___1947 Float32)) (let ((temp___1938 (main_test__mat_in__aggregate_def temp___1939 temp___1940 temp___1941 temp___1942 temp___1943 temp___1944 temp___1945 temp___1946 temp___1947))) (=> (and (and (and (and (and (and (and (and (dynamic_invariant1 temp___1939 true true true true) (dynamic_invariant1 temp___1940 true true true true)) (dynamic_invariant1 temp___1941 true true true true)) (dynamic_invariant1 temp___1942 true true true true)) (dynamic_invariant1 temp___1943 true true true true)) (dynamic_invariant1 temp___1944 true true true true)) (dynamic_invariant1 temp___1945 true true true true)) (dynamic_invariant1 temp___1946 true true true true)) (dynamic_invariant1 temp___1947 true true true true)) (and (and (and (and (= (to_rep (get temp___1938 1 1)) temp___1939) (= (to_rep (get temp___1938 1 2)) temp___1940)) (= (to_rep (get temp___1938 1 3)) temp___1941)) (and (and (= (to_rep (get temp___1938 2 1)) temp___1942) (= (to_rep (get temp___1938 2 2)) temp___1943)) (= (to_rep (get temp___1938 2 3)) temp___1944))) (and (and (= (to_rep (get temp___1938 3 1)) temp___1945) (= (to_rep (get temp___1938 3 2)) temp___1946)) (= (to_rep (get temp___1938 3 3)) temp___1947)))))))
(assert (forall ((temp___1951 Float32) (temp___1952 Float32) (temp___1953 Float32) (temp___1954 Float32) (temp___1955 Float32) (temp___1956 Float32)) (let ((temp___1950 (main_test__mat_map__aggregate_def temp___1951 temp___1952 temp___1953 temp___1954 temp___1955 temp___1956))) (=> (and (and (and (and (and (dynamic_invariant1 temp___1951 true true true true) (dynamic_invariant1 temp___1952 true true true true)) (dynamic_invariant1 temp___1953 true true true true)) (dynamic_invariant1 temp___1954 true true true true)) (dynamic_invariant1 temp___1955 true true true true)) (dynamic_invariant1 temp___1956 true true true true)) (and (and (and (= (to_rep (get temp___1950 1 1)) temp___1951) (= (to_rep (get temp___1950 1 2)) temp___1952)) (and (= (to_rep (get temp___1950 2 1)) temp___1953) (= (to_rep (get temp___1950 2 2)) temp___1954))) (and (= (to_rep (get temp___1950 3 1)) temp___1955) (= (to_rep (get temp___1950 3 2)) temp___1956)))))))
(assert (forall ((temp___1960 Float32)) (=> (dynamic_invariant1 temp___1960 true true true true) (forall ((temp___1961 Int) (temp___1962 Int)) (= (to_rep (get (main_test__mat_out__aggregate_def temp___1960) temp___1961 temp___1962)) temp___1960)))))
(assert (forall ((temp___1964 Float32) (temp___1965 Float32) (temp___1966 Float32) (temp___1967 Float32) (temp___1968 Float32) (temp___1969 Float32) (temp___1970 Float32) (temp___1971 Float32) (temp___1972 Float32)) (let ((temp___1963 (main_test__mat_in2__aggregate_def temp___1964 temp___1965 temp___1966 temp___1967 temp___1968 temp___1969 temp___1970 temp___1971 temp___1972))) (=> (and (and (and (and (and (and (and (and (dynamic_invariant1 temp___1964 true true true true) (dynamic_invariant1 temp___1965 true true true true)) (dynamic_invariant1 temp___1966 true true true true)) (dynamic_invariant1 temp___1967 true true true true)) (dynamic_invariant1 temp___1968 true true true true)) (dynamic_invariant1 temp___1969 true true true true)) (dynamic_invariant1 temp___1970 true true true true)) (dynamic_invariant1 temp___1971 true true true true)) (dynamic_invariant1 temp___1972 true true true true)) (and (and (and (and (= (to_rep (get temp___1963 1 1)) temp___1964) (= (to_rep (get temp___1963 1 2)) temp___1965)) (= (to_rep (get temp___1963 1 3)) temp___1966)) (and (and (= (to_rep (get temp___1963 2 1)) temp___1967) (= (to_rep (get temp___1963 2 2)) temp___1968)) (= (to_rep (get temp___1963 2 3)) temp___1969))) (and (and (= (to_rep (get temp___1963 3 1)) temp___1970) (= (to_rep (get temp___1963 3 2)) temp___1971)) (= (to_rep (get temp___1963 3 3)) temp___1972)))))))
(assert (forall ((temp___1976 Float32) (temp___1977 Float32) (temp___1978 Float32) (temp___1979 Float32) (temp___1980 Float32) (temp___1981 Float32)) (let ((temp___1975 (main_test__mat_map2__aggregate_def temp___1976 temp___1977 temp___1978 temp___1979 temp___1980 temp___1981))) (=> (and (and (and (and (and (dynamic_invariant1 temp___1976 true true true true) (dynamic_invariant1 temp___1977 true true true true)) (dynamic_invariant1 temp___1978 true true true true)) (dynamic_invariant1 temp___1979 true true true true)) (dynamic_invariant1 temp___1980 true true true true)) (dynamic_invariant1 temp___1981 true true true true)) (and (and (and (= (to_rep (get temp___1975 1 1)) temp___1976) (= (to_rep (get temp___1975 1 2)) temp___1977)) (and (= (to_rep (get temp___1975 2 1)) temp___1978) (= (to_rep (get temp___1975 2 2)) temp___1979))) (and (= (to_rep (get temp___1975 3 1)) temp___1980) (= (to_rep (get temp___1975 3 2)) temp___1981)))))))
(assert (forall ((temp___1985 Float32)) (=> (dynamic_invariant1 temp___1985 true true true true) (forall ((temp___1986 Int) (temp___1987 Int)) (= (to_rep (get (main_test__mat_out2__aggregate_def temp___1985) temp___1986 temp___1987)) temp___1985)))))
(assert (forall ((temp___1990 Float32) (temp___1991 Float32) (temp___1992 Float32) (temp___1993 Float32)) (let ((temp___1989 (temp_____aggregate_def_1988 temp___1990 temp___1991 temp___1992 temp___1993))) (=> (and (and (and (dynamic_invariant1 temp___1990 true true true true) (dynamic_invariant1 temp___1991 true true true true)) (dynamic_invariant1 temp___1992 true true true true)) (dynamic_invariant1 temp___1993 true true true true)) (and (and (= (to_rep (get temp___1989 (- 2147483648) (- 2147483648))) temp___1990) (= (to_rep (get temp___1989 (- 2147483648) (- 2147483647))) temp___1991)) (and (= (to_rep (get temp___1989 (- 2147483647) (- 2147483648))) temp___1992) (= (to_rep (get temp___1989 (- 2147483647) (- 2147483647))) temp___1993)))))))
(assert (forall ((temp___2000 Float32) (temp___2001 Float32) (temp___2002 Float32) (temp___2003 Float32)) (let ((temp___1999 (temp_____aggregate_def_1998 temp___2000 temp___2001 temp___2002 temp___2003))) (=> (and (and (and (dynamic_invariant1 temp___2000 true true true true) (dynamic_invariant1 temp___2001 true true true true)) (dynamic_invariant1 temp___2002 true true true true)) (dynamic_invariant1 temp___2003 true true true true)) (and (and (= (to_rep (get temp___1999 (- 2147483648) (- 2147483648))) temp___2000) (= (to_rep (get temp___1999 (- 2147483648) (- 2147483647))) temp___2001)) (and (= (to_rep (get temp___1999 (- 2147483647) (- 2147483648))) temp___2002) (= (to_rep (get temp___1999 (- 2147483647) (- 2147483647))) temp___2003)))))))
(define-fun dynamic_invariant2 ((temp___expr_527 us_t) (temp___is_init_523 Bool) (temp___skip_constant_524 Bool) (temp___do_toplevel_525 Bool) (temp___do_typ_inv_526 Bool)) Bool (=> (not (= temp___skip_constant_524 true)) (dynamic_property2 (- 2147483648) 2147483647 (first2 temp___expr_527) (last2 temp___expr_527) (- 2147483648) 2147483647 (first_2 temp___expr_527) (last_2 temp___expr_527))))
(assert (forall ((x us_t)) (! (=> (dynamic_invariant2 x true true true true) (dynamic_invariant2 (transpose1 x) true false true true)) :pattern ((transpose1 x)))))
(assert (forall ((left us_t) (right us_t)) (! (=> (and (dynamic_invariant2 left true true true true) (dynamic_invariant2 right true true true true)) (dynamic_invariant2 (omultiply__4 left right) true false true true)) :pattern ((omultiply__4 left right)))))
(declare-const mat_in map1)
(declare-const mat_map map1)
(declare-const mat_out map1)
(declare-const mat_in2 map1)
(declare-const mat_map2 map1)
(declare-const mat_out2 map1)
(declare-const o map1)
(declare-const o1 map1)
(declare-const result map1)
(declare-const mat_in1 map1)
(declare-const result1 map1)
(declare-const mat_map1 map1)
(declare-const result2 map1)
(declare-const mat_out1 map1)
(declare-const result3 map1)
(declare-const mat_in21 map1)
(declare-const result4 map1)
(declare-const mat_map21 map1)
(declare-const result5 map1)
(declare-const mat_out21 map1)
(declare-const result6 map1)
(declare-const mat_out3 map1)
(declare-const result7 map1)
(declare-const mat_out22 map1)
(assert (= result mat_in))
(assert (= mat_in1 (main_test__mat_in__aggregate_def (fp #b0 #b01111111 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000))))
(assert (= result1 mat_map))
(assert (= mat_map1 (main_test__mat_map__aggregate_def (fp #b0 #b10000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000000 #b10000000000000000000000))))
(assert (= result2 mat_out))
(assert (= mat_out1 (main_test__mat_out__aggregate_def (fp #b0 #b00000000 #b00000000000000000000000))))
(assert (= result3 mat_in2))
(assert (= mat_in21 (main_test__mat_in2__aggregate_def (fp #b0 #b01111111 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b01111111 #b00000000000000000000000))))
(assert (= result4 mat_map2))
(assert (= mat_map21 (main_test__mat_map2__aggregate_def (fp #b0 #b10000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000000 #b10000000000000000000000))))
(assert (= result5 mat_out2))
(assert (= mat_out21 (main_test__mat_out2__aggregate_def (fp #b0 #b00000000 #b00000000000000000000000))))
(assert (and (= o (manipulate1 mat_in1 mat_map1)) (= o (let ((temp___1926 (omultiply__4 (omultiply__4 (transpose1 (mk___t mat_map1 (mk 1 3) (mk1 1 2))) (mk___t mat_in1 (mk 1 3) (mk1 1 3))) (mk___t mat_map1 (mk 1 3) (mk1 1 2))))) (slide (elts temp___1926) (to_rep1 (first (rt temp___1926))) 1 (to_rep1 (first1 (rt_2 temp___1926))) 1)))))
(assert (= result6 mat_out1))
(assert (= mat_out3 o))
(assert (= (bool_eq mat_out3 1 2 1 2 (temp_____aggregate_def_1988 (fp #b0 #b10000001 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b00100000000000000000000)) (- 2147483648) (- 2147483647) (- 2147483648) (- 2147483647)) true))
(assert (= o1 (manipulate mat_in21 mat_map21)))
(assert (= result7 mat_out21))
(assert (= mat_out22 o1))
(assert (not (= (bool_eq mat_out22 1 2 1 2 (temp_____aggregate_def_1998 (fp #b0 #b10000001 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b00000000 #b00000000000000000000000) (fp #b0 #b10000010 #b00100000000000000000000)) (- 2147483648) (- 2147483647) (- 2147483648) (- 2147483647)) true)))
(check-sat)
(exit)
