(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTLIRA)
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
(declare-fun us_compatible_tags (Int Int) Bool)
(assert (forall ((tag Int)) (us_compatible_tags tag tag)))
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
(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range1 temp___expr_39)))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__ext__ us_private)))))
(define-fun us_split_fields___projection ((a us_split_fields)) us_private (rec__ext__ a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields) (attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___2__projection ((a us_rep)) Int (attr__tag a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite true true false))
(declare-fun us_dispatch_eq (us_rep us_rep) Bool)
(declare-const us_tag Int)
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
(declare-datatypes () ((root_t__ref (mk_root_t__ref (root_t__content us_rep)))))
(define-fun root_t__ref___projection ((a root_t__ref)) us_rep (root_t__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__foo__widget_t__x integer) (rec__foo__widget_t__y integer) (rec__ext__1 us_private)))))
(define-fun us_split_fields_X__projection ((a us_split_fields2)) integer (rec__foo__widget_t__x a))
(define-fun us_split_fields_Y__projection ((a us_split_fields2)) integer (rec__foo__widget_t__y a))
(define-fun us_split_fields___2__projection ((a us_split_fields2)) us_private (rec__ext__1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2) (attr__tag1 Int)))))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun us_rep___4__projection ((a us_rep1)) Int (attr__tag1 a))
(declare-fun hide_ext__ (integer integer us_private) us_private)
(declare-fun extract__x (us_private) integer)
(assert (forall ((x integer) (y integer)) (forall ((rec__ext__2 us_private)) (= (extract__x (hide_ext__ x y rec__ext__2)) x))))
(declare-fun extract__y (us_private) integer)
(assert (forall ((x integer) (y integer)) (forall ((rec__ext__2 us_private)) (= (extract__y (hide_ext__ x y rec__ext__2)) y))))
(declare-fun extract__ext__ (us_private) us_private)
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (mk___split_fields (hide_ext__ (rec__foo__widget_t__x (us_split_fields3 a)) (rec__foo__widget_t__y (us_split_fields3 a)) (rec__ext__1 (us_split_fields3 a)))) (attr__tag1 a)))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (mk___split_fields1 (extract__x (rec__ext__ (us_split_fields1 r))) (extract__y (rec__ext__ (us_split_fields1 r))) (extract__ext__ (rec__ext__ (us_split_fields1 r)))) (attr__tag r)))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (to_rep (rec__foo__widget_t__x (us_split_fields3 a))) (to_rep (rec__foo__widget_t__x (us_split_fields3 b)))) (= (to_rep (rec__foo__widget_t__y (us_split_fields3 a))) (to_rep (rec__foo__widget_t__y (us_split_fields3 b))))) true false))
(declare-const us_tag1 Int)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const foo__widget_t__x__first__bit Int)
(declare-const foo__widget_t__x__last__bit Int)
(declare-const foo__widget_t__x__position Int)
(assert (<= 0 foo__widget_t__x__first__bit))
(assert (< foo__widget_t__x__first__bit foo__widget_t__x__last__bit))
(assert (<= 0 foo__widget_t__x__position))
(declare-const foo__widget_t__y__first__bit Int)
(declare-const foo__widget_t__y__last__bit Int)
(declare-const foo__widget_t__y__position Int)
(assert (<= 0 foo__widget_t__y__first__bit))
(assert (< foo__widget_t__y__first__bit foo__widget_t__y__last__bit))
(assert (<= 0 foo__widget_t__y__position))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-const dummy3 us_rep1)
(declare-datatypes () ((widget_t__ref (mk_widget_t__ref (widget_t__content us_rep1)))))
(define-fun widget_t__ref___projection ((a widget_t__ref)) us_rep1 (widget_t__content a))
(declare-fun hash__2 (us_rep1) Int)
(declare-fun hash__2__function_guard (Int us_rep1) Bool)
(declare-fun hash__21 (Int us_rep1) Int)
(declare-fun hash__2__function_guard1 (Int Int us_rep1) Bool)
(define-fun in_range2 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Bool)
(declare-datatypes () ((us_split_fields4 (mk___split_fields2 (rec__foo__nice_widget_t__round Bool) (rec__foo__widget_t__x1 integer) (rec__foo__widget_t__y1 integer) (rec__ext__2 us_private)))))
(define-fun us_split_fields_Round__projection ((a us_split_fields4)) Bool (rec__foo__nice_widget_t__round a))
(define-fun us_split_fields_X__2__projection ((a us_split_fields4)) integer (rec__foo__widget_t__x1 a))
(define-fun us_split_fields_Y__2__projection ((a us_split_fields4)) integer (rec__foo__widget_t__y1 a))
(define-fun us_split_fields___3__projection ((a us_split_fields4)) us_private (rec__ext__2 a))
(declare-datatypes () ((us_split_fields__ref2 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref___3__projection ((a us_split_fields__ref2)) us_split_fields4 (us_split_fields__content2 a))
(declare-datatypes () ((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4) (attr__tag2 Int)))))
(define-fun us_rep___5__projection ((a us_rep2)) us_split_fields4 (us_split_fields5 a))
(define-fun us_rep___6__projection ((a us_rep2)) Int (attr__tag2 a))
(declare-fun hide_ext__1 (Bool integer integer us_private) us_private)
(declare-fun extract__round (us_private) Bool)
(assert (forall ((round Bool)) (forall ((x integer) (y integer)) (forall ((rec__ext__3 us_private)) (= (ite (extract__round (hide_ext__1 round x y rec__ext__3)) 1 0) (ite round 1 0))))))
(assert (forall ((round Bool)) (forall ((x integer) (y integer)) (forall ((rec__ext__3 us_private)) (= (extract__x (hide_ext__1 round x y rec__ext__3)) x)))))
(assert (forall ((round Bool)) (forall ((x integer) (y integer)) (forall ((rec__ext__3 us_private)) (= (extract__y (hide_ext__1 round x y rec__ext__3)) y)))))
(declare-fun extract__ext__1 (us_private) us_private)
(define-fun to_base1 ((a us_rep2)) us_rep (mk___rep (mk___split_fields (hide_ext__1 (rec__foo__nice_widget_t__round (us_split_fields5 a)) (rec__foo__widget_t__x1 (us_split_fields5 a)) (rec__foo__widget_t__y1 (us_split_fields5 a)) (rec__ext__2 (us_split_fields5 a)))) (attr__tag2 a)))
(define-fun of_base1 ((r us_rep)) us_rep2 (mk___rep2 (mk___split_fields2 (extract__round (rec__ext__ (us_split_fields1 r))) (extract__x (rec__ext__ (us_split_fields1 r))) (extract__y (rec__ext__ (us_split_fields1 r))) (extract__ext__1 (rec__ext__ (us_split_fields1 r)))) (attr__tag r)))
(define-fun bool_eq2 ((a us_rep2) (b us_rep2)) Bool (ite (and (and (= (rec__foo__nice_widget_t__round (us_split_fields5 a)) (rec__foo__nice_widget_t__round (us_split_fields5 b))) (= (to_rep (rec__foo__widget_t__x1 (us_split_fields5 a))) (to_rep (rec__foo__widget_t__x1 (us_split_fields5 b))))) (= (to_rep (rec__foo__widget_t__y1 (us_split_fields5 a))) (to_rep (rec__foo__widget_t__y1 (us_split_fields5 b))))) true false))
(declare-const us_tag2 Int)
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep2) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep2) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))
(declare-const foo__nice_widget_t__round__first__bit Int)
(declare-const foo__nice_widget_t__round__last__bit Int)
(declare-const foo__nice_widget_t__round__position Int)
(assert (<= 0 foo__nice_widget_t__round__first__bit))
(assert (< foo__nice_widget_t__round__first__bit foo__nice_widget_t__round__last__bit))
(assert (<= 0 foo__nice_widget_t__round__position))
(declare-const foo__widget_t__x__first__bit1 Int)
(declare-const foo__widget_t__x__last__bit1 Int)
(declare-const foo__widget_t__x__position1 Int)
(assert (<= 0 foo__widget_t__x__first__bit1))
(assert (< foo__widget_t__x__first__bit1 foo__widget_t__x__last__bit1))
(assert (<= 0 foo__widget_t__x__position1))
(declare-const foo__widget_t__y__first__bit1 Int)
(declare-const foo__widget_t__y__last__bit1 Int)
(declare-const foo__widget_t__y__position1 Int)
(assert (<= 0 foo__widget_t__y__first__bit1))
(assert (< foo__widget_t__y__first__bit1 foo__widget_t__y__last__bit1))
(assert (<= 0 foo__widget_t__y__position1))
(declare-fun user_eq4 (us_rep2 us_rep2) Bool)
(declare-const dummy4 us_rep2)
(declare-datatypes () ((nice_widget_t__ref (mk_nice_widget_t__ref (nice_widget_t__content us_rep2)))))
(define-fun nice_widget_t__ref___projection ((a nice_widget_t__ref)) us_rep2 (nice_widget_t__content a))
(declare-fun hash__3 (us_rep2) Int)
(declare-fun hash__3__function_guard (Int us_rep2) Bool)
(declare-fun hash__31 (Int us_rep2) Int)
(declare-fun hash__3__function_guard1 (Int Int us_rep2) Bool)
(declare-datatypes () ((us_split_fields6 (mk___split_fields3 (rec__foo__magic_widget_t__magic Bool) (rec__foo__widget_t__x2 integer) (rec__foo__widget_t__y2 integer) (rec__ext__3 us_private)))))
(define-fun us_split_fields_Magic__projection ((a us_split_fields6)) Bool (rec__foo__magic_widget_t__magic a))
(define-fun us_split_fields_X__3__projection ((a us_split_fields6)) integer (rec__foo__widget_t__x2 a))
(define-fun us_split_fields_Y__3__projection ((a us_split_fields6)) integer (rec__foo__widget_t__y2 a))
(define-fun us_split_fields___4__projection ((a us_split_fields6)) us_private (rec__ext__3 a))
(declare-datatypes () ((us_split_fields__ref3 (mk___split_fields__ref3 (us_split_fields__content3 us_split_fields6)))))
(define-fun us_split_fields__ref___4__projection ((a us_split_fields__ref3)) us_split_fields6 (us_split_fields__content3 a))
(declare-datatypes () ((us_rep3 (mk___rep3 (us_split_fields7 us_split_fields6) (attr__tag3 Int)))))
(define-fun us_rep___7__projection ((a us_rep3)) us_split_fields6 (us_split_fields7 a))
(define-fun us_rep___8__projection ((a us_rep3)) Int (attr__tag3 a))
(declare-fun hide_ext__2 (Bool integer integer us_private) us_private)
(declare-fun extract__magic (us_private) Bool)
(assert (forall ((magic Bool)) (forall ((x integer) (y integer)) (forall ((rec__ext__4 us_private)) (= (ite (extract__magic (hide_ext__2 magic x y rec__ext__4)) 1 0) (ite magic 1 0))))))
(assert (forall ((magic Bool)) (forall ((x integer) (y integer)) (forall ((rec__ext__4 us_private)) (= (extract__x (hide_ext__2 magic x y rec__ext__4)) x)))))
(assert (forall ((magic Bool)) (forall ((x integer) (y integer)) (forall ((rec__ext__4 us_private)) (= (extract__y (hide_ext__2 magic x y rec__ext__4)) y)))))
(declare-fun extract__ext__2 (us_private) us_private)
(define-fun to_base2 ((a us_rep3)) us_rep (mk___rep (mk___split_fields (hide_ext__2 (rec__foo__magic_widget_t__magic (us_split_fields7 a)) (rec__foo__widget_t__x2 (us_split_fields7 a)) (rec__foo__widget_t__y2 (us_split_fields7 a)) (rec__ext__3 (us_split_fields7 a)))) (attr__tag3 a)))
(define-fun of_base2 ((r us_rep)) us_rep3 (mk___rep3 (mk___split_fields3 (extract__magic (rec__ext__ (us_split_fields1 r))) (extract__x (rec__ext__ (us_split_fields1 r))) (extract__y (rec__ext__ (us_split_fields1 r))) (extract__ext__2 (rec__ext__ (us_split_fields1 r)))) (attr__tag r)))
(define-fun bool_eq3 ((a us_rep3) (b us_rep3)) Bool (ite (and (and (= (rec__foo__magic_widget_t__magic (us_split_fields7 a)) (rec__foo__magic_widget_t__magic (us_split_fields7 b))) (= (to_rep (rec__foo__widget_t__x2 (us_split_fields7 a))) (to_rep (rec__foo__widget_t__x2 (us_split_fields7 b))))) (= (to_rep (rec__foo__widget_t__y2 (us_split_fields7 a))) (to_rep (rec__foo__widget_t__y2 (us_split_fields7 b))))) true false))
(declare-const us_tag3 Int)
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep3) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep3) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep3)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep3)) (<= 0 (object__alignment3 a))))
(declare-const foo__magic_widget_t__magic__first__bit Int)
(declare-const foo__magic_widget_t__magic__last__bit Int)
(declare-const foo__magic_widget_t__magic__position Int)
(assert (<= 0 foo__magic_widget_t__magic__first__bit))
(assert (< foo__magic_widget_t__magic__first__bit foo__magic_widget_t__magic__last__bit))
(assert (<= 0 foo__magic_widget_t__magic__position))
(declare-const foo__widget_t__x__first__bit2 Int)
(declare-const foo__widget_t__x__last__bit2 Int)
(declare-const foo__widget_t__x__position2 Int)
(assert (<= 0 foo__widget_t__x__first__bit2))
(assert (< foo__widget_t__x__first__bit2 foo__widget_t__x__last__bit2))
(assert (<= 0 foo__widget_t__x__position2))
(declare-const foo__widget_t__y__first__bit2 Int)
(declare-const foo__widget_t__y__last__bit2 Int)
(declare-const foo__widget_t__y__position2 Int)
(assert (<= 0 foo__widget_t__y__first__bit2))
(assert (< foo__widget_t__y__first__bit2 foo__widget_t__y__last__bit2))
(assert (<= 0 foo__widget_t__y__position2))
(declare-fun user_eq5 (us_rep3 us_rep3) Bool)
(declare-const dummy5 us_rep3)
(declare-datatypes () ((magic_widget_t__ref (mk_magic_widget_t__ref (magic_widget_t__content us_rep3)))))
(define-fun magic_widget_t__ref___projection ((a magic_widget_t__ref)) us_rep3 (magic_widget_t__content a))
(declare-fun hash__4 (us_rep3) Int)
(declare-fun hash__4__function_guard (Int us_rep3) Bool)
(declare-fun hash__41 (Int us_rep3) Int)
(declare-fun hash__4__function_guard1 (Int Int us_rep3) Bool)
(define-fun default_initial_assumption ((temp___expr_168 us_rep1) (temp___skip_top_level_169 Bool)) Bool (= (attr__tag1 temp___expr_168) us_tag1))
(assert (forall ((obj us_rep1)) (! (dynamic_invariant1 (hash__2 obj) true false true true) :pattern ((hash__2 obj)))))
(assert (forall ((attr__tag4 Int)) (forall ((obj us_rep1)) (! (dynamic_invariant1 (hash__21 attr__tag4 obj) true false true true) :pattern ((hash__21 attr__tag4 obj))))))
(assert (forall ((obj us_rep1)) (! (= (hash__2 obj) (hash__21 us_tag1 obj)) :pattern ((hash__21 us_tag1 obj)))))
(assert (forall ((obj us_rep1)) (! (= (hash__3 (of_base1 (to_base obj))) (hash__21 us_tag2 obj)) :pattern ((hash__21 us_tag2 obj)))))
(assert (forall ((obj us_rep1)) (! (= (hash__4 (of_base2 (to_base obj))) (hash__21 us_tag3 obj)) :pattern ((hash__21 us_tag3 obj)))))
(define-fun default_initial_assumption1 ((temp___expr_180 us_rep2) (temp___skip_top_level_181 Bool)) Bool (= (attr__tag2 temp___expr_180) us_tag2))
(declare-const a Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const b Bool)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const x__attr__tag Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const y__attr__tag Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const z__attr__tag Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(define-fun default_initial_assumption2 ((temp___expr_161 us_rep) (temp___skip_top_level_162 Bool)) Bool (= (attr__tag temp___expr_161) us_tag))
(assert (forall ((obj us_rep2)) (! (dynamic_invariant1 (hash__3 obj) true false true true) :pattern ((hash__3 obj)))))
(assert (forall ((attr__tag4 Int)) (forall ((obj us_rep2)) (! (dynamic_invariant1 (hash__31 attr__tag4 obj) true false true true) :pattern ((hash__31 attr__tag4 obj))))))
(assert (forall ((obj us_rep2)) (! (= (hash__3 obj) (hash__31 us_tag2 obj)) :pattern ((hash__31 us_tag2 obj)))))
(define-fun default_initial_assumption3 ((temp___expr_191 us_rep3) (temp___skip_top_level_192 Bool)) Bool (= (attr__tag3 temp___expr_191) us_tag3))
(assert (forall ((obj us_rep3)) (! (dynamic_invariant1 (hash__4 obj) true false true true) :pattern ((hash__4 obj)))))
(assert (forall ((attr__tag4 Int)) (forall ((obj us_rep3)) (! (dynamic_invariant1 (hash__41 attr__tag4 obj) true false true true) :pattern ((hash__41 attr__tag4 obj))))))
(assert (forall ((obj us_rep3)) (! (= (hash__4 obj) (hash__41 us_tag3 obj)) :pattern ((hash__41 us_tag3 obj)))))
(declare-const n Int)
(declare-const m Int)
(declare-const x__split_fields Bool)
(declare-const x__split_fields1 integer)
(declare-const x__split_fields2 integer)
(declare-const x__split_fields3 us_private)
(declare-const y__split_fields integer)
(declare-const y__split_fields1 integer)
(declare-const y__split_fields2 us_private)
(declare-const o integer)
(declare-const o1 integer)
(declare-const o2 Bool)
(declare-const o3 integer)
(declare-const o4 integer)
(declare-const o5 us_private)
(declare-const tests__test_20__x__assume Bool)
(declare-const tests__test_20__x__assume1 integer)
(declare-const tests__test_20__x__assume2 integer)
(declare-const tests__test_20__x__assume3 us_private)
(declare-const tests__test_20__x__assume4 Int)
(declare-const result Bool)
(declare-const result1 integer)
(declare-const result2 integer)
(declare-const result3 us_private)
(declare-const x__split_fields4 Bool)
(declare-const x__split_fields5 integer)
(declare-const x__split_fields6 integer)
(declare-const x__split_fields7 us_private)
(declare-const result4 integer)
(declare-const result5 integer)
(declare-const result6 us_private)
(declare-const y__split_fields3 integer)
(declare-const y__split_fields4 integer)
(declare-const y__split_fields5 us_private)
(assert (in_range a))
(assert (=> (<= 0 2147483647) (in_range1 n)))
(assert (=> (<= 0 2147483647) (in_range1 m)))
(assert (= (to_rep o) a))
(assert (= (to_rep o1) a))
(assert (= b o2))
(assert (= o1 o3))
(assert (= o o4))
(assert (= us_null_ext__ o5))
(assert (= tests__test_20__x__assume o2))
(assert (= tests__test_20__x__assume1 o3))
(assert (= tests__test_20__x__assume2 o4))
(assert (= tests__test_20__x__assume3 o5))
(assert (= us_tag2 tests__test_20__x__assume4))
(assert (= result x__split_fields))
(assert (= result1 x__split_fields1))
(assert (= result2 x__split_fields2))
(assert (= result3 x__split_fields3))
(assert (= tests__test_20__x__assume x__split_fields4))
(assert (= tests__test_20__x__assume1 x__split_fields5))
(assert (= tests__test_20__x__assume2 x__split_fields6))
(assert (= tests__test_20__x__assume3 x__split_fields7))
(assert (= x__attr__tag us_tag2))
(assert (= result4 y__split_fields))
(assert (= result5 y__split_fields1))
(assert (= result6 y__split_fields2))
(assert (= (mk___split_fields1 y__split_fields3 y__split_fields4 y__split_fields5) (us_split_fields3 (of_base (mk___rep (mk___split_fields (hide_ext__1 x__split_fields4 x__split_fields5 x__split_fields6 x__split_fields7)) x__attr__tag)))))
(assert (= y__attr__tag (attr__tag1 (of_base (mk___rep (mk___split_fields (hide_ext__1 x__split_fields4 x__split_fields5 x__split_fields6 x__split_fields7)) x__attr__tag)))))
(assert (not (us_compatible_tags y__attr__tag us_tag2)))
(check-sat)
(exit)
