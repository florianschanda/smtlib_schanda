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
(declare-sort index_type 0)
(declare-fun index_typeqtint (index_type) Int)
(assert (forall ((i index_type)) (and (<= 1 (index_typeqtint i)) (<= (index_typeqtint i) 100))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (index_type index_type) Bool)
(declare-const dummy1 index_type)
(declare-datatypes () ((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type (index_type__content a))
(define-fun dynamic_invariant1 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 1 100)) (in_range2 temp___expr_159)))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const search_item Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const items (Array Int integer))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const found Bool)
(declare-const result__ Int)
(declare-const low_index Int)
(declare-const mid_index Int)
(declare-const high_index Int)
(declare-const temp___177 Bool)
(declare-const temp___176 Int)
(declare-const temp___175 Int)
(declare-const temp___174 Int)
(declare-const temp___173 Int)
(declare-const mid_index1 Int)
(declare-const result Int)
(declare-const low_index1 Int)
(declare-const result1 Int)
(declare-const high_index1 Int)
(declare-const result2 Bool)
(declare-const found1 Bool)
(declare-const result3 Int)
(declare-const result__1 Int)
(declare-const result4 Int)
(declare-const mid_index2 Int)
(declare-const result5 Bool)
(declare-const found2 Bool)
(declare-const result6 Int)
(declare-const result__2 Int)
(declare-const found3 Bool)
(declare-const result__3 Int)
(declare-const low_index2 Int)
(declare-const mid_index3 Int)
(declare-const high_index2 Int)
(declare-const result7 Int)
(declare-const low_index3 Int)
(declare-const result8 Int)
(declare-const high_index3 Int)
(declare-const result9 Int)
(declare-const mid_index4 Int)
(declare-const result10 Bool)
(declare-const found4 Bool)
(declare-const result11 Int)
(declare-const result__4 Int)
(declare-const found5 Bool)
(declare-const result__5 Int)
(declare-const mid_index5 Int)
(declare-const found6 Bool)
(declare-const result__6 Int)
(declare-const mid_index6 Int)
(declare-const found7 bool__ref)
(declare-const result__7 int__ref)
(declare-const low_index4 int__ref)
(declare-const mid_index7 int__ref)
(declare-const high_index4 int__ref)
(declare-const found8 Bool)
(declare-const result__8 Int)
(declare-const low_index5 Int)
(declare-const mid_index8 Int)
(declare-const high_index5 Int)
(declare-const found9 bool__ref)
(declare-const result__9 int__ref)
(declare-const low_index6 int__ref)
(declare-const mid_index9 int__ref)
(declare-const high_index6 int__ref)
(declare-const found10 Bool)
(declare-const result__10 Int)
(declare-const low_index7 Int)
(declare-const mid_index10 Int)
(declare-const high_index7 Int)
(declare-const found11 bool__ref)
(declare-const result__11 int__ref)
(declare-const low_index8 int__ref)
(declare-const mid_index11 int__ref)
(declare-const high_index8 int__ref)
(declare-const found12 Bool)
(declare-const result__12 Int)
(declare-const low_index9 Int)
(declare-const mid_index12 Int)
(declare-const high_index9 Int)
(declare-const found13 bool__ref)
(declare-const result__13 int__ref)
(declare-const low_index10 int__ref)
(declare-const mid_index13 int__ref)
(declare-const high_index10 int__ref)
(declare-const found14 Bool)
(declare-const result__14 Int)
(declare-const low_index11 Int)
(declare-const mid_index14 Int)
(declare-const high_index11 Int)
(declare-const found15 bool__ref)
(declare-const result__15 int__ref)
(declare-const low_index12 int__ref)
(declare-const mid_index15 int__ref)
(declare-const high_index12 int__ref)
(declare-const found16 Bool)
(declare-const result__16 Int)
(declare-const low_index13 Int)
(declare-const mid_index16 Int)
(declare-const high_index13 Int)
(declare-const found17 bool__ref)
(declare-const result__17 int__ref)
(declare-const low_index14 int__ref)
(declare-const mid_index17 int__ref)
(declare-const high_index14 int__ref)
(declare-const found18 Bool)
(declare-const result__18 Int)
(declare-const low_index15 Int)
(declare-const mid_index18 Int)
(declare-const high_index15 Int)
(declare-const found19 bool__ref)
(declare-const result__19 int__ref)
(declare-const low_index16 int__ref)
(declare-const mid_index19 int__ref)
(declare-const high_index16 int__ref)
(declare-const found20 Bool)
(declare-const result__20 Int)
(declare-const low_index17 Int)
(declare-const mid_index20 Int)
(declare-const high_index17 Int)
(define-fun result12 () int__ref (mk_int__ref result4))
(define-fun mid_index21 () int__ref (mk_int__ref mid_index))
(assert (in_range1 search_item))
(assert (=> (<= 1 100) (in_range2 result__)))
(assert (forall ((j Int)) (=> (and (<= 1 j) (<= j 100)) (forall ((k Int)) (=> (and (<= (+ j 1) k) (<= k 100)) (<= (to_rep (select items j)) (to_rep (select items k))))))))
(assert (= (mk_int__ref result) (mk_int__ref low_index)))
(assert (= low_index1 1))
(assert (in_range2 low_index1))
(assert (=> (<= 1 100) (in_range2 mid_index)))
(assert (= (mk_int__ref result1) (mk_int__ref high_index)))
(assert (= high_index1 100))
(assert (in_range2 high_index1))
(assert (= (mk_bool__ref result2) (mk_bool__ref found)))
(assert (= found1 (distinct 0 0)))
(assert (= (mk_int__ref result3) (mk_int__ref result__)))
(assert (= result__1 1))
(assert (or (and (and (and (= high_index14 (mk_int__ref high_index1)) (and (= mid_index17 mid_index21) (and (= low_index14 (mk_int__ref low_index1)) (and (= result__17 (mk_int__ref result__1)) (= found17 (mk_bool__ref found1)))))) (and (= high_index15 high_index1) (and (= mid_index18 mid_index1) (and (= low_index15 low_index1) (and (= result__18 result__1) (= found18 found1)))))) (=> (not (< search_item (to_rep (select items low_index1)))) (< (to_rep (select items high_index1)) search_item))) (and (not (=> (not (< search_item (to_rep (select items low_index1)))) (< (to_rep (select items high_index1)) search_item))) (and (and (and (= high_index14 high_index12) (and (= mid_index17 mid_index15) (and (= low_index14 low_index12) (and (= result__17 result__15) (= found17 found15))))) (and (= high_index15 high_index13) (and (= mid_index18 mid_index16) (and (= low_index15 low_index13) (and (= result__18 result__16) (= found18 found16)))))) (or (and (and (and (= high_index12 high_index6) (and (= mid_index15 mid_index9) (and (= low_index12 low_index6) (and (= result__15 result__9) (= found15 found9))))) (and (= high_index13 high_index7) (and (= mid_index16 mid_index10) (and (= low_index13 low_index7) (and (= result__16 result__10) (= found16 found10)))))) (and (= temp___177 found1) (and (= temp___176 high_index1) (and (= temp___175 mid_index) (and (= temp___174 low_index1) (and (= temp___173 result__1) (and (and (= result12 mid_index21) (= mid_index2 (div1 (+ low_index1 high_index1) 2))) (or (and (and (and (= high_index6 (mk_int__ref high_index1)) (and (= mid_index9 (mk_int__ref mid_index2)) (and (= low_index6 (mk_int__ref low_index1)) (and (= result__9 (mk_int__ref result__2)) (= found9 (mk_bool__ref found2)))))) (and (= high_index7 high_index1) (and (= mid_index10 mid_index2) (and (= low_index7 low_index1) (and (= result__10 result__2) (= found10 found2)))))) (and (= search_item (to_rep (select items mid_index2))) (and (and (= result5 found1) (= found2 (distinct 1 0))) (and (= result6 result__1) (= result__2 mid_index2))))) (and (and (not (= search_item (to_rep (select items mid_index2)))) (and (= result__2 result__1) (= found2 found1))) (and (and (and (= high_index6 (mk_int__ref high_index3)) (and (= mid_index9 (mk_int__ref mid_index4)) (and (= low_index6 (mk_int__ref low_index3)) (and (= result__9 (mk_int__ref result__4)) (= found9 (mk_bool__ref found4)))))) (and (= high_index7 high_index3) (and (= mid_index10 mid_index4) (and (= low_index7 low_index3) (and (= result__10 result__4) (= found10 found4)))))) (and (not (= low_index1 high_index1)) (and (and (<= (to_rep (select items low_index2)) search_item) (<= search_item (to_rep (select items high_index2)))) (and (and (and (and (=> (<= 1 100) (in_range2 result__3)) (=> (<= 1 100) (in_range2 low_index2))) (=> (<= 1 100) (in_range2 mid_index3))) (=> (<= 1 100) (in_range2 high_index2))) (and (ite (< (to_rep (select items mid_index3)) search_item) (and (and (= low_index2 result7) (= low_index3 mid_index3)) (= high_index3 high_index2)) (and (and (= high_index2 result8) (= high_index3 mid_index3)) (= low_index3 low_index2))) (and (and (= mid_index3 result9) (= mid_index4 (div1 (+ low_index3 high_index3) 2))) (and (= search_item (to_rep (select items mid_index4))) (and (and (= result10 found3) (= found4 (distinct 1 0))) (and (= result11 result__3) (= result__4 mid_index4))))))))))))))))))) (and (and (and (and (= temp___177 found1) (and (= temp___176 high_index1) (and (= temp___175 mid_index) (and (= temp___174 low_index1) (and (= temp___173 result__1) (and (and (= result12 mid_index21) (= mid_index2 (div1 (+ low_index1 high_index1) 2))) (and (and (not (= search_item (to_rep (select items mid_index2)))) (and (= result__2 result__1) (= found2 found1))) (or (and (and (and (= high_index4 (mk_int__ref high_index1)) (and (= mid_index7 (mk_int__ref mid_index2)) (and (= low_index4 (mk_int__ref low_index1)) (and (= result__7 (mk_int__ref result__2)) (= found7 (mk_bool__ref found2)))))) (and (= high_index5 high_index1) (and (= mid_index8 mid_index2) (and (= low_index5 low_index1) (and (= result__8 result__2) (= found8 found2)))))) (= low_index1 high_index1)) (and (not (= low_index1 high_index1)) (and (and (and (= high_index4 (mk_int__ref high_index3)) (and (= mid_index7 (mk_int__ref mid_index5)) (and (= low_index4 (mk_int__ref low_index3)) (and (= result__7 (mk_int__ref result__5)) (= found7 (mk_bool__ref found5)))))) (and (= high_index5 high_index3) (and (= mid_index8 mid_index6) (and (= low_index5 low_index3) (and (= result__8 result__6) (= found8 found6)))))) (and (and (<= (to_rep (select items low_index2)) search_item) (<= search_item (to_rep (select items high_index2)))) (and (and (and (and (=> (<= 1 100) (in_range2 result__3)) (=> (<= 1 100) (in_range2 low_index2))) (=> (<= 1 100) (in_range2 mid_index3))) (=> (<= 1 100) (in_range2 high_index2))) (and (ite (< (to_rep (select items mid_index3)) search_item) (and (and (= low_index2 result7) (= low_index3 mid_index3)) (= high_index3 high_index2)) (and (and (= high_index2 result8) (= high_index3 mid_index3)) (= low_index3 low_index2))) (and (and (and (= mid_index4 mid_index5) (and (= result__4 result__5) (= found4 found5))) (and (= mid_index6 mid_index4) (and (= result__6 result__4) (= found6 found4)))) (and (and (= mid_index3 result9) (= mid_index4 (div1 (+ low_index3 high_index3) 2))) (and (and (not (= search_item (to_rep (select items mid_index4)))) (and (= result__4 result__3) (= found4 found3))) (= low_index3 high_index3))))))))))))))))) (and (and (= high_index8 high_index4) (and (= mid_index11 mid_index7) (and (= low_index8 low_index4) (and (= result__11 result__7) (= found11 found7))))) (and (= high_index9 high_index5) (and (= mid_index12 mid_index8) (and (= low_index9 low_index5) (and (= result__12 result__8) (= found12 found8))))))) (and (and (= high_index10 high_index8) (and (= mid_index13 mid_index11) (and (= low_index10 low_index8) (and (= result__13 result__11) (= found13 found11))))) (and (= high_index11 high_index9) (and (= mid_index14 mid_index12) (and (= low_index11 low_index9) (and (= result__14 result__12) (= found14 found12))))))) (and (and (= high_index12 high_index10) (and (= mid_index15 mid_index13) (and (= low_index12 low_index10) (and (= result__15 result__13) (= found15 found13))))) (and (= high_index13 high_index11) (and (= mid_index16 mid_index14) (and (= low_index13 low_index11) (and (= result__16 result__14) (= found16 found14))))))))))))
(assert (= high_index16 high_index14))
(assert (= mid_index19 mid_index17))
(assert (= low_index16 low_index14))
(assert (= result__19 result__17))
(assert (= found19 found17))
(assert (= high_index17 high_index15))
(assert (= mid_index20 mid_index18))
(assert (= low_index17 low_index15))
(assert (= result__20 result__18))
(assert (= found20 found18))
(assert (not (= (bool__content found19) true)))
(declare-const j Int)
(assert (<= 1 j))
(assert (<= j 100))
(assert (not (not (= search_item (to_rep (select items j))))))
(check-sat)
(exit)
