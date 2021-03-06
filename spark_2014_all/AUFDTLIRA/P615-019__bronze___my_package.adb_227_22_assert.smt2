(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFDTLIRA)
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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun to_rep1 ((x natural)) Int (naturalqtint x))
(declare-fun of_rep1 (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x natural)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__my_package__t__f1 integer) (rec__my_package__t__f2 integer)))))
(define-fun us_split_fields_F1__projection ((a us_split_fields)) integer (rec__my_package__t__f1 a))
(define-fun us_split_fields_F2__projection ((a us_split_fields)) integer (rec__my_package__t__f2 a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__my_package__t__f1 (us_split_fields1 a))) (to_rep (rec__my_package__t__f1 (us_split_fields1 b)))) (= (to_rep (rec__my_package__t__f2 (us_split_fields1 a))) (to_rep (rec__my_package__t__f2 (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const my_package__t__f1__first__bit Int)
(declare-const my_package__t__f1__last__bit Int)
(declare-const my_package__t__f1__position Int)
(assert (<= 0 my_package__t__f1__first__bit))
(assert (< my_package__t__f1__first__bit my_package__t__f1__last__bit))
(assert (<= 0 my_package__t__f1__position))
(declare-const my_package__t__f2__first__bit Int)
(declare-const my_package__t__f2__last__bit Int)
(declare-const my_package__t__f2__position Int)
(assert (<= 0 my_package__t__f2__first__bit))
(assert (< my_package__t__f2__first__bit my_package__t__f2__last__bit))
(assert (<= 0 my_package__t__f2__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int natural))))))
(declare-fun slide ((Array Int natural) Int Int) (Array Int natural))
(assert (forall ((a (Array Int natural))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int natural))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int natural)) (a__first Int) (a__last Int) (b (Array Int natural)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int natural)) (b (Array Int natural))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-sort tTaSP1 0)
(declare-fun tTaSP1qtint (tTaSP1) Int)
(assert (forall ((i tTaSP1)) (and (<= 1 (tTaSP1qtint i)) (<= (tTaSP1qtint i) 2))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq3 (tTaSP1 tTaSP1) Bool)
(declare-const dummy3 tTaSP1)
(declare-datatypes () ((tTaSP1__ref (mk_tTaSP1__ref (tTaSP1__content tTaSP1)))))
(define-fun tTaSP1__ref___2__projection ((a tTaSP1__ref)) tTaSP1 (tTaSP1__content a))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-fun my_package__bad_aliasing__a__aggregate_def (Int) (Array Int natural))
(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range1 temp___expr_39)))
(declare-const rliteral natural)
(assert (= (naturalqtint rliteral) 0))
(assert (forall ((temp___221 Int)) (=> (dynamic_invariant1 temp___221 true true true true) (forall ((temp___222 Int)) (= (select (my_package__bad_aliasing__a__aggregate_def temp___221) temp___222) rliteral)))))
(declare-const rliteral1 integer)
(assert (= (integerqtint rliteral1) 0))
(declare-const x Int)
(declare-const y Int)
(declare-const xx__split_fields integer)
(declare-const xx__split_fields1 integer)
(declare-const z__split_fields integer)
(declare-const z__split_fields1 integer)
(declare-const a (Array Int natural))
(declare-const i Int)
(declare-const o integer)
(declare-const o1 integer)
(declare-const o2 integer)
(declare-const temp___226 integer)
(declare-const temp___2261 integer)
(declare-const result integer)
(declare-const result1 integer)
(declare-const z__split_fields2 integer)
(declare-const z__split_fields3 integer)
(declare-const result2 (Array Int natural))
(declare-const a1 (Array Int natural))
(declare-const result3 Int)
(declare-const i1 Int)
(declare-const y1 Int)
(declare-const my_package__swap_with_y__x Int)
(declare-const result4 Int)
(declare-const y2 Int)
(declare-const my_package__move_x_to_y__y__fields us_split_fields)
(declare-const result5 us_split_fields__ref)
(declare-const z__split_fields4 us_split_fields)
(declare-const y3 Int)
(declare-const y4 Int)
(declare-const my_package__move_x_to_y2__y__fields us_split_fields)
(declare-const result6 us_split_fields__ref)
(declare-const xx__split_fields2 us_split_fields)
(declare-const my_package__move_x_to_y2__2__y Int)
(declare-const result7 int__ref)
(declare-const x1 Int)
(declare-const my_package__only_read_f2_of_x__y Int)
(declare-const result8 us_split_fields__ref)
(declare-const xx__split_fields3 us_split_fields)
(assert (in_range x))
(assert (in_range y))
(assert (= result z__split_fields))
(assert (= result1 z__split_fields1))
(assert (= rliteral1 z__split_fields2))
(assert (= rliteral1 z__split_fields3))
(assert (= result2 a))
(assert (= a1 (my_package__bad_aliasing__a__aggregate_def 0)))
(assert (= result3 i))
(assert (= i1 2))
(assert (in_range i1))
(assert (and (in_range my_package__swap_with_y__x) (in_range y1)))
(assert (= result4 y1))
(assert (= y2 my_package__swap_with_y__x))
(assert (= result5 (mk___split_fields__ref (mk___split_fields z__split_fields2 z__split_fields3))))
(assert (= z__split_fields4 my_package__move_x_to_y__y__fields))
(assert (in_range y3))
(assert (in_range y4))
(assert (= result6 (mk___split_fields__ref (mk___split_fields xx__split_fields xx__split_fields1))))
(assert (= xx__split_fields2 my_package__move_x_to_y2__y__fields))
(assert (in_range my_package__move_x_to_y2__2__y))
(assert (= result7 (mk_int__ref x)))
(assert (= x1 my_package__move_x_to_y2__2__y))
(assert (in_range my_package__only_read_f2_of_x__y))
(assert (= (to_rep o) my_package__only_read_f2_of_x__y))
(assert (= o o1))
(assert (= (rec__my_package__t__f2 xx__split_fields2) o2))
(assert (= temp___226 o1))
(assert (= temp___2261 o2))
(assert (= result8 (mk___split_fields__ref xx__split_fields2)))
(assert (= xx__split_fields3 (mk___split_fields temp___226 temp___2261)))
(assert (not (= i1 2)))
(check-sat)
(exit)
