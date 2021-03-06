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
(declare-sort bit 0)
(declare-fun bitqtint (bit) Int)
(assert (forall ((i bit)) (and (<= 0 (bitqtint i)) (<= (bitqtint i) 1))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (bit bit) Bool)
(declare-const dummy1 bit)
(declare-datatypes () ((bit__ref (mk_bit__ref (bit__content bit)))))
(define-fun bit__ref___projection ((a bit__ref)) bit (bit__content a))
(define-fun to_rep ((x bit)) Int (bitqtint x))
(declare-fun of_rep (Int) bit)
(assert (forall ((x bit)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x bit)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort n 0)
(declare-fun nqtint (n) Int)
(assert (forall ((i n)) (and (<= 0 (nqtint i)) (<= (nqtint i) 9))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 9)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (n n) Bool)
(declare-const dummy2 n)
(declare-datatypes () ((n__ref (mk_n__ref (n__content n)))))
(define-fun n__ref___projection ((a n__ref)) n (n__content a))
(declare-sort sum 0)
(declare-fun sumqtint (sum) Int)
(assert (forall ((i sum)) (and (<= 0 (sumqtint i)) (<= (sumqtint i) 100))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (sum sum) Bool)
(declare-const dummy3 sum)
(declare-datatypes () ((sum__ref (mk_sum__ref (sum__content sum)))))
(define-fun sum__ref___projection ((a sum__ref)) sum (sum__content a))
(define-fun dynamic_invariant ((temp___expr_174 Int) (temp___is_init_170 Bool) (temp___skip_constant_171 Bool) (temp___do_toplevel_172 Bool) (temp___do_typ_inv_173 Bool)) Bool (=> (or (= temp___is_init_170 true) (<= 0 100)) (in_range4 temp___expr_174)))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int bit))))))
(declare-fun slide ((Array Int bit) Int Int) (Array Int bit))
(assert (forall ((a (Array Int bit))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int bit))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int bit)) (a__first Int) (a__last Int) (b (Array Int bit)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int bit)) (b (Array Int bit))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const dummy4 (Array Int bit))
(declare-const value__size Int)
(declare-fun object__size ((Array Int bit)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int bit)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int bit)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int bit))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int bit))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int bit))) (<= 0 (object__alignment a))))
(declare-fun user_eq4 ((Array Int bit) (Array Int bit)) Bool)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int bit)))))))
(declare-fun slide1 ((Array Int (Array Int bit)) Int Int) (Array Int (Array Int bit)))
(assert (forall ((a (Array Int (Array Int bit)))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int (Array Int bit)))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int (Array Int bit))) (a__first Int) (a__last Int) (b (Array Int (Array Int bit))) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) 0 9 (select b (+ (- b__first a__first) temp___idx_155)) 0 9) true)))) true false))
(assert (forall ((a (Array Int (Array Int bit))) (b (Array Int (Array Int bit)))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (bool_eq (select a temp___idx_155) 0 9 (select b (+ (- b__first a__first) temp___idx_155)) 0 9) true))))))))
(declare-const x (Array Int (Array Int bit)))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant2 ((temp___expr_160 Int) (temp___is_init_156 Bool) (temp___skip_constant_157 Bool) (temp___do_toplevel_158 Bool) (temp___do_typ_inv_159 Bool)) Bool (=> (or (= temp___is_init_156 true) (<= 0 1)) (in_range2 temp___expr_160)))
(define-fun dynamic_invariant3 ((temp___expr_167 Int) (temp___is_init_163 Bool) (temp___skip_constant_164 Bool) (temp___do_toplevel_165 Bool) (temp___do_typ_inv_166 Bool)) Bool (=> (or (= temp___is_init_163 true) (<= 0 9)) (in_range3 temp___expr_167)))
(declare-const r Int)
(declare-const i Int)
(declare-const j Int)
(declare-const temp___210 Int)
(declare-const temp___209 Int)
(declare-const o Int)
(declare-const result Int)
(declare-const r1 Int)
(declare-const result1 Int)
(declare-const i1 Int)
(declare-const result2 Int)
(declare-const j1 Int)
(declare-const result3 Int)
(declare-const r2 Int)
(declare-const r3 Int)
(declare-const j2 Int)
(declare-const r4 Int)
(declare-const j3 Int)
(declare-const r5 Int)
(declare-const j4 Int)
(declare-const r6 Int)
(declare-const j5 Int)
(declare-const r7 Int)
(declare-const j6 Int)
(assert (=> (<= 0 100) (in_range4 r)))
(assert (= result r))
(assert (= r1 0))
(assert (= result1 i))
(assert (= i1 0))
(assert (<= 0 i1))
(assert (<= i1 9))
(assert (= (mk_int__ref result2) (mk_int__ref j)))
(assert (= j1 0))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= temp___210 j1)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= temp___209 r1)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (and (= o (+ r1 (to_rep (select (select x i1) j1)))) (in_range4 (+ r1 (to_rep (select (select x i1) j1)))))))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= r1 result3)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= r2 o)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (<= r3 (+ (+ (* i1 10) j2) 1))))
(assert (=> (and (<= 0 j1) (<= j1 9)) (and (and (=> (<= 0 100) (in_range4 r3)) (=> (<= 0 9) (in_range3 j2))) (and (<= 0 j2) (<= j2 9)))))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= j2 9)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= j2 j3)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= r3 r4)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= j4 j2)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= r5 r3)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= (mk_int__ref j5) (mk_int__ref j3))))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= (mk_int__ref r6) (mk_int__ref r4))))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= j6 j4)))
(assert (=> (and (<= 0 j1) (<= j1 9)) (= r7 r5)))
(assert (=> (not (and (<= 0 j1) (<= j1 9))) (= j1 j5)))
(assert (=> (not (and (<= 0 j1) (<= j1 9))) (= r1 r6)))
(assert (=> (not (and (<= 0 j1) (<= j1 9))) (= j6 j1)))
(assert (=> (not (and (<= 0 j1) (<= j1 9))) (= r7 r1)))
(assert (not (<= r6 (* (+ i1 1) 10))))
(check-sat)
(exit)
