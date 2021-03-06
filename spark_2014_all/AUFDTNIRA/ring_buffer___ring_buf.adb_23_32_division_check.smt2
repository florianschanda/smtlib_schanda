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
(declare-sort ar_index 0)
(declare-fun ar_indexqtint (ar_index) Int)
(assert (forall ((i ar_index)) (and (<= 0 (ar_indexqtint i)) (<= (ar_indexqtint i) 9999))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 9999)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (ar_index ar_index) Bool)
(declare-const dummy1 ar_index)
(declare-datatypes () ((ar_index__ref (mk_ar_index__ref (ar_index__content ar_index)))))
(define-fun ar_index__ref___projection ((a ar_index__ref)) ar_index (ar_index__content a))
(define-fun to_rep1 ((x ar_index)) Int (ar_indexqtint x))
(declare-fun of_rep1 (Int) ar_index)
(assert (forall ((x ar_index)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x ar_index)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort length_type 0)
(declare-fun length_typeqtint (length_type) Int)
(assert (forall ((i length_type)) (and (<= 0 (length_typeqtint i)) (<= (length_typeqtint i) 10000))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 10000)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (length_type length_type) Bool)
(declare-const dummy2 length_type)
(declare-datatypes () ((length_type__ref (mk_length_type__ref (length_type__content length_type)))))
(define-fun length_type__ref___projection ((a length_type__ref)) length_type (length_type__content a))
(define-fun to_rep2 ((x length_type)) Int (length_typeqtint x))
(declare-fun of_rep2 (Int) length_type)
(assert (forall ((x length_type)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x length_type)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))
(assert (forall ((a (Array Int integer))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int integer))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int) (b (Array Int integer)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int integer)) (b (Array Int integer))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep (select a temp___idx_154)) (to_rep (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const dummy3 (Array Int integer))
(declare-const value__size Int)
(declare-fun object__size ((Array Int integer)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int integer)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int integer)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int integer))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int integer))) (<= 0 (object__alignment a))))
(declare-fun user_eq3 ((Array Int integer) (Array Int integer)) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__ring_buf__ring_buffer__data (Array Int integer)) (rec__ring_buf__ring_buffer__first ar_index) (rec__ring_buf__ring_buffer__length length_type)))))
(define-fun us_split_fields_Data__projection ((a us_split_fields)) (Array Int integer) (rec__ring_buf__ring_buffer__data a))
(define-fun us_split_fields_First__projection ((a us_split_fields)) ar_index (rec__ring_buf__ring_buffer__first a))
(define-fun us_split_fields_Length__projection ((a us_split_fields)) length_type (rec__ring_buf__ring_buffer__length a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (and (= (bool_eq (rec__ring_buf__ring_buffer__data (us_split_fields1 a)) 0 9999 (rec__ring_buf__ring_buffer__data (us_split_fields1 b)) 0 9999) true) (= (to_rep1 (rec__ring_buf__ring_buffer__first (us_split_fields1 a))) (to_rep1 (rec__ring_buf__ring_buffer__first (us_split_fields1 b))))) (= (to_rep2 (rec__ring_buf__ring_buffer__length (us_split_fields1 a))) (to_rep2 (rec__ring_buf__ring_buffer__length (us_split_fields1 b))))) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const ring_buf__ring_buffer__data__first__bit Int)
(declare-const ring_buf__ring_buffer__data__last__bit Int)
(declare-const ring_buf__ring_buffer__data__position Int)
(assert (<= 0 ring_buf__ring_buffer__data__first__bit))
(assert (< ring_buf__ring_buffer__data__first__bit ring_buf__ring_buffer__data__last__bit))
(assert (<= 0 ring_buf__ring_buffer__data__position))
(declare-const ring_buf__ring_buffer__first__first__bit Int)
(declare-const ring_buf__ring_buffer__first__last__bit Int)
(declare-const ring_buf__ring_buffer__first__position Int)
(assert (<= 0 ring_buf__ring_buffer__first__first__bit))
(assert (< ring_buf__ring_buffer__first__first__bit ring_buf__ring_buffer__first__last__bit))
(assert (<= 0 ring_buf__ring_buffer__first__position))
(declare-const ring_buf__ring_buffer__length__first__bit Int)
(declare-const ring_buf__ring_buffer__length__last__bit Int)
(declare-const ring_buf__ring_buffer__length__position Int)
(assert (<= 0 ring_buf__ring_buffer__length__first__bit))
(assert (< ring_buf__ring_buffer__length__first__bit ring_buf__ring_buffer__length__last__bit))
(assert (<= 0 ring_buf__ring_buffer__length__position))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((ring_buffer__ref (mk_ring_buffer__ref (ring_buffer__content us_rep)))))
(define-fun ring_buffer__ref___projection ((a ring_buffer__ref)) us_rep (ring_buffer__content a))
(declare-fun is_empty (us_rep) Bool)
(declare-fun is_empty__function_guard (Bool us_rep) Bool)
(assert true)
(assert (forall ((r us_rep)) (! (= (= (is_empty r) true) (= (to_rep2 (rec__ring_buf__ring_buffer__length (us_split_fields1 r))) 0)) :pattern ((is_empty r)))))
(declare-fun head (us_rep) Int)
(declare-fun head__function_guard (Int us_rep) Bool)
(assert (forall ((r us_rep)) (! (=> (not (= (is_empty r) true)) (dynamic_invariant (head r) true false true true)) :pattern ((head r)))))
(assert (forall ((r us_rep)) (! (= (head r) (to_rep (let ((temp___200 (rec__ring_buf__ring_buffer__data (us_split_fields1 r)))) (select temp___200 (to_rep1 (rec__ring_buf__ring_buffer__first (us_split_fields1 r))))))) :pattern ((head r)))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 0 9999)) (in_range1 temp___expr_159)))
(define-fun dynamic_invariant2 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 0 10000)) (in_range2 temp___expr_166)))
(declare-const r__split_fields (Array Int integer))
(declare-const r__split_fields1 ar_index)
(declare-const r__split_fields2 length_type)
(declare-const element Int)
(declare-const result Int)
(declare-const element1 Int)
(assert (=> (<= (- 2147483648) 2147483647) (in_range element)))
(assert (not (= (is_empty (mk___rep (mk___split_fields r__split_fields r__split_fields1 r__split_fields2))) true)))
(assert (= (mk_int__ref result) (mk_int__ref element)))
(assert (= element1 (to_rep (select r__split_fields (to_rep1 r__split_fields1)))))
(assert (not (not (= 10000 0))))
(check-sat)
(exit)
