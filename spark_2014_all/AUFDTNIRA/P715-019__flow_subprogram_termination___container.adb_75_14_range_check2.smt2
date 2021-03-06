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
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
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
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__container__cursor__index natural)))))
(define-fun us_split_fields_Index__projection ((a us_split_fields)) natural (rec__container__cursor__index a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___3__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___4__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (= (to_rep (rec__container__cursor__index (us_split_fields1 a))) (to_rep (rec__container__cursor__index (us_split_fields1 b)))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const container__cursor__index__first__bit Int)
(declare-const container__cursor__index__last__bit Int)
(declare-const container__cursor__index__position Int)
(assert (<= 0 container__cursor__index__first__bit))
(assert (< container__cursor__index__first__bit container__cursor__index__last__bit))
(assert (<= 0 container__cursor__index__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((cursor__ref (mk_cursor__ref (cursor__content us_rep)))))
(define-fun cursor__ref___projection ((a cursor__ref)) us_rep (cursor__content a))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (positive positive) Bool)
(declare-const dummy3 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun to_rep1 ((x positive)) Int (positiveqtint x))
(declare-fun of_rep1 (Int) positive)
(assert (forall ((x positive)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x positive)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int positive))))))
(declare-fun slide ((Array Int positive) Int Int) (Array Int positive))
(assert (forall ((a (Array Int positive))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int positive))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int positive)) (a__first Int) (a__last Int) (b (Array Int positive)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_173 Int)) (=> (and (<= a__first temp___idx_173) (<= temp___idx_173 a__last)) (= (to_rep1 (select a temp___idx_173)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_173))))))) true false))
(assert (forall ((a (Array Int positive)) (b (Array Int positive))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_173 Int)) (=> (and (<= a__first temp___idx_173) (<= temp___idx_173 a__last)) (= (to_rep1 (select a temp___idx_173)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_173)))))))))))
(declare-const dummy4 (Array Int positive))
(declare-const value__size1 Int)
(declare-fun object__size1 ((Array Int positive)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int positive)) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 ((Array Int positive)) Int)
(assert (<= 0 value__size1))
(assert (forall ((a (Array Int positive))) (<= 0 (object__size1 a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int positive))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a (Array Int positive))) (<= 0 (object__alignment1 a))))
(declare-fun user_eq4 ((Array Int positive) (Array Int positive)) Bool)
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__container__container__a (Array Int positive))))))
(define-fun us_split_fields_A__projection ((a us_split_fields2)) (Array Int positive) (rec__container__container__a a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq2 ((a us_rep1) (b us_rep1)) Bool (ite (= (bool_eq1 (rec__container__container__a (us_split_fields3 a)) 1 200 (rec__container__container__a (us_split_fields3 b)) 1 200) true) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep1) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep1) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))
(declare-const container__container__a__first__bit Int)
(declare-const container__container__a__last__bit Int)
(declare-const container__container__a__position Int)
(assert (<= 0 container__container__a__first__bit))
(assert (< container__container__a__first__bit container__container__a__last__bit))
(assert (<= 0 container__container__a__position))
(declare-fun user_eq5 (us_rep1 us_rep1) Bool)
(declare-const dummy5 us_rep1)
(declare-datatypes () ((container__ref (mk_container__ref (container__content us_rep1)))))
(define-fun container__ref___projection ((a container__ref)) us_rep1 (container__content a))
(declare-fun first (us_rep1) us_rep)
(declare-fun first__function_guard (us_rep us_rep1) Bool)
(assert true)
(declare-const rliteral natural)
(assert (= (naturalqtint rliteral) 1))
(assert (forall ((c us_rep1)) (! (= (first c) (mk___rep (mk___split_fields rliteral))) :pattern ((first c)))))
(declare-fun has_element (us_rep1 us_rep) Bool)
(declare-fun has_element__function_guard (Bool us_rep1 us_rep) Bool)
(assert true)
(assert (forall ((c us_rep1)) (forall ((p us_rep)) (! (= (= (has_element c p) true) (and (<= 1 (to_rep (rec__container__cursor__index (us_split_fields1 p)))) (<= (to_rep (rec__container__cursor__index (us_split_fields1 p))) 200))) :pattern ((has_element c p))))))
(declare-fun next (us_rep1 us_rep) us_rep)
(declare-fun next__function_guard (us_rep us_rep1 us_rep) Bool)
(assert true)
(declare-const rliteral1 natural)
(assert (= (naturalqtint rliteral1) 0))
(assert (forall ((c us_rep1)) (forall ((p us_rep)) (! (= (next c p) (ite (< (to_rep (rec__container__cursor__index (us_split_fields1 p))) 200) (mk___rep (mk___split_fields (of_rep (+ (to_rep (rec__container__cursor__index (us_split_fields1 p))) 1)))) (mk___rep (mk___split_fields rliteral1)))) :pattern ((next c p))))))
(declare-fun element (us_rep1 us_rep) Int)
(declare-fun element__function_guard (Int us_rep1 us_rep) Bool)
(assert (forall ((c us_rep1)) (forall ((p us_rep)) (! (=> (= (has_element c p) true) (dynamic_invariant (element c p) true false true true)) :pattern ((element c p))))))
(assert (forall ((c us_rep1)) (forall ((p us_rep)) (! (= (element c p) (to_rep1 (let ((temp___621 (rec__container__container__a (us_split_fields3 c)))) (select temp___621 (to_rep (rec__container__cursor__index (us_split_fields1 p))))))) :pattern ((element c p))))))
(declare-sort my_integer 0)
(declare-fun my_integerqtint (my_integer) Int)
(assert (forall ((i my_integer)) (and (<= 1 (my_integerqtint i)) (<= (my_integerqtint i) 200))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 200)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq6 (my_integer my_integer) Bool)
(declare-const dummy6 my_integer)
(declare-datatypes () ((my_integer__ref (mk_my_integer__ref (my_integer__content my_integer)))))
(define-fun my_integer__ref___projection ((a my_integer__ref)) my_integer (my_integer__content a))
(define-fun dynamic_invariant1 ((temp___expr_573 Int) (temp___is_init_569 Bool) (temp___skip_constant_570 Bool) (temp___do_toplevel_571 Bool) (temp___do_typ_inv_572 Bool)) Bool (=> (or (= temp___is_init_569 true) (<= 1 200)) (in_range4 temp___expr_573)))
(declare-sort small_int 0)
(declare-fun small_intqtint (small_int) Int)
(assert (forall ((i small_int)) (and (<= 1 (small_intqtint i)) (<= (small_intqtint i) 10))))
(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq7 (small_int small_int) Bool)
(declare-const dummy7 small_int)
(declare-datatypes () ((small_int__ref (mk_small_int__ref (small_int__content small_int)))))
(define-fun small_int__ref___projection ((a small_int__ref)) small_int (small_int__content a))
(define-fun dynamic_invariant2 ((temp___expr_580 Int) (temp___is_init_576 Bool) (temp___skip_constant_577 Bool) (temp___do_toplevel_578 Bool) (temp___do_typ_inv_579 Bool)) Bool (=> (or (= temp___is_init_576 true) (<= 1 10)) (in_range5 temp___expr_580)))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const attr__ATTRIBUTE_ADDRESS9 Int)
(declare-const attr__ATTRIBUTE_ADDRESS10 Int)
(declare-fun container__arr__aggregate_def (Int) (Array Int positive))
(define-fun dynamic_invariant3 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(define-fun dynamic_invariant4 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(declare-const rliteral2 positive)
(assert (= (positiveqtint rliteral2) 3))
(assert (forall ((temp___657 Int)) (=> (dynamic_invariant4 temp___657 true true true true) (forall ((temp___658 Int)) (= (select (container__arr__aggregate_def temp___657) temp___658) rliteral2)))))
(declare-const x Int)
(declare-const r Int)
(declare-const i Int)
(declare-const b Bool)
(declare-const arr (Array Int positive))
(declare-const my_container__split_fields (Array Int positive))
(declare-const position__split_fields natural)
(declare-const temp___623 Int)
(declare-const temp___622 Bool)
(declare-const o Int)
(declare-const temp___625 Int)
(declare-const temp___624 Int)
(declare-const temp___627 Int)
(declare-const temp___626 Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const temp___628 Int)
(declare-const o3 Int)
(declare-const b1 Bool)
(declare-const result int__ref)
(declare-const x1 Int)
(declare-const result1 int__ref)
(declare-const r1 Int)
(declare-const result2 int__ref)
(declare-const i1 Int)
(declare-const result3 map__ref)
(declare-const arr1 (Array Int positive))
(declare-const result4 us_split_fields__ref1)
(declare-const my_container__split_fields1 us_split_fields2)
(declare-const result5 us_split_fields__ref)
(declare-const position__split_fields1 us_split_fields)
(declare-const x2 Int)
(declare-const b2 Bool)
(declare-const result6 bool__ref)
(declare-const b3 Bool)
(declare-const result7 int__ref)
(declare-const x3 Int)
(declare-const x4 int__ref)
(declare-const b4 bool__ref)
(declare-const x5 Int)
(declare-const b5 Bool)
(declare-const x6 int__ref)
(declare-const b6 bool__ref)
(declare-const x7 Int)
(declare-const b7 Bool)
(declare-const r2 Int)
(declare-const i2 Int)
(declare-const temp___6271 Int)
(declare-const temp___6261 Int)
(declare-const result8 int__ref)
(declare-const temp___6272 Int)
(declare-const result9 int__ref)
(declare-const temp___6262 Int)
(declare-const result10 int__ref)
(declare-const r3 Int)
(declare-const result11 int__ref)
(declare-const i3 Int)
(declare-const r4 int__ref)
(declare-const i4 int__ref)
(declare-const r5 Int)
(declare-const i5 Int)
(declare-const r6 int__ref)
(declare-const i6 int__ref)
(declare-const r7 Int)
(declare-const i7 Int)
(declare-const x8 Int)
(declare-const result12 int__ref)
(declare-const x9 Int)
(declare-const x10 int__ref)
(declare-const x11 Int)
(declare-const x12 int__ref)
(declare-const x13 Int)
(assert (= result (mk_int__ref x)))
(assert (= x1 1))
(assert (in_range4 x1))
(assert (= result1 (mk_int__ref r)))
(assert (= r1 100))
(assert (in_range4 r1))
(assert (= result2 (mk_int__ref i)))
(assert (= i1 1))
(assert (in_range5 i1))
(assert (= result3 (mk_map__ref arr)))
(assert (= arr1 (container__arr__aggregate_def 3)))
(assert (= result4 (mk___split_fields__ref1 (mk___split_fields1 my_container__split_fields))))
(assert (= my_container__split_fields1 (mk___split_fields1 arr1)))
(assert (= result5 (mk___split_fields__ref (mk___split_fields position__split_fields))))
(assert (= position__split_fields1 (mk___split_fields rliteral1)))
(assert (=> (< 0 x1) (= temp___623 x1)))
(assert (=> (< 0 x1) (= temp___622 b)))
(assert (=> (< 0 x1) (and (=> (<= 1 200) (in_range4 x2)) (< 0 x2))))
(assert (=> (< 0 x1) (= result6 (mk_bool__ref b2))))
(assert (=> (< 0 x1) (= b3 (distinct 1 0))))
(assert (=> (< 0 x1) (=> (< x2 200) (and (= o (+ x2 1)) (in_range4 (+ x2 1))))))
(assert (=> (< 0 x1) (=> (< x2 200) (= result7 (mk_int__ref x2)))))
(assert (=> (< 0 x1) (=> (< x2 200) (= x3 o))))
(assert (=> (< 0 x1) (=> (not (< x2 200)) (= x3 x2))))
(assert (=> (< 0 x1) (not (< 0 x3))))
(assert (=> (< 0 x1) (= b4 (mk_bool__ref b3))))
(assert (=> (< 0 x1) (= x4 (mk_int__ref x3))))
(assert (=> (< 0 x1) (= b5 b3)))
(assert (=> (< 0 x1) (= x5 x3)))
(assert (=> (< 0 x1) (= b6 b4)))
(assert (=> (< 0 x1) (= x6 x4)))
(assert (=> (< 0 x1) (= b7 b5)))
(assert (=> (< 0 x1) (= x7 x5)))
(assert (=> (not (< 0 x1)) (= b6 (mk_bool__ref b))))
(assert (=> (not (< 0 x1)) (= x6 (mk_int__ref x1))))
(assert (=> (not (< 0 x1)) (= b7 b1)))
(assert (=> (not (< 0 x1)) (= x7 x1)))
(assert (=> (< i1 10) (= temp___625 i1)))
(assert (=> (< i1 10) (= temp___624 r1)))
(assert (=> (< i1 10) (= 0 temp___627)))
(assert (=> (< i1 10) (= 0 temp___626)))
(assert (=> (< i1 10) (<= (- 100 (* 10 i2)) r2)))
(assert (=> (< i1 10) (and (and (=> (<= 1 200) (in_range4 r2)) (=> (<= 1 10) (in_range5 i2))) (< i2 10))))
(assert (=> (< i1 10) (= result8 (mk_int__ref temp___6271))))
(assert (=> (< i1 10) (= temp___6272 i2)))
(assert (=> (< i1 10) (= result9 (mk_int__ref temp___6261))))
(assert (=> (< i1 10) (= temp___6262 r2)))
(assert (=> (< i1 10) (and (= o1 (- r2 i2)) (in_range4 (- r2 i2)))))
(assert (=> (< i1 10) (= result10 (mk_int__ref r2))))
(assert (=> (< i1 10) (= r3 o1)))
(assert (=> (< i1 10) (and (= o2 (+ i2 1)) (in_range5 (+ i2 1)))))
(assert (=> (< i1 10) (= result11 (mk_int__ref i2))))
(assert (=> (< i1 10) (= i3 o2)))
(assert (=> (< i1 10) (not (< i3 10))))
(assert (=> (< i1 10) (= i4 (mk_int__ref i3))))
(assert (=> (< i1 10) (= r4 (mk_int__ref r3))))
(assert (=> (< i1 10) (= i5 i3)))
(assert (=> (< i1 10) (= r5 r3)))
(assert (=> (< i1 10) (= i6 i4)))
(assert (=> (< i1 10) (= r6 r4)))
(assert (=> (< i1 10) (= i7 i5)))
(assert (=> (< i1 10) (= r7 r5)))
(assert (=> (not (< i1 10)) (= i6 (mk_int__ref i1))))
(assert (=> (not (< i1 10)) (= r6 (mk_int__ref r1))))
(assert (=> (not (< i1 10)) (= i7 i1)))
(assert (=> (not (< i1 10)) (= r7 r1)))
(assert (= temp___628 (int__content x6)))
(assert (=> (<= 1 200) (in_range4 x8)))
(assert (and (= o3 (+ x8 1)) (in_range4 (+ x8 1))))
(assert (= result12 (mk_int__ref x8)))
(assert (= x9 o3))
(assert (< x9 0))
(assert (= x10 (mk_int__ref x9)))
(assert (= x11 x9))
(assert (= x12 x10))
(assert (= x13 x11))
(assert (not (in_range4 (+ (int__content x12) 1))))
(check-sat)
(exit)
