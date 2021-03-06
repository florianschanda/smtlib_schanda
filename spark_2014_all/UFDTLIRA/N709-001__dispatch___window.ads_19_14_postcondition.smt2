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
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range temp___expr_39)))
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (integer integer) Bool)
(declare-const dummy1 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun to_rep1 ((x natural)) Int (naturalqtint x))
(declare-fun of_rep1 (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x natural)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__object__t__area integer) (rec__object__t__max_width integer) (rec__object__t__max_height integer) (rec__ext__ us_private)))))
(define-fun us_split_fields_Area__projection ((a us_split_fields)) integer (rec__object__t__area a))
(define-fun us_split_fields_Max_Width__projection ((a us_split_fields)) integer (rec__object__t__max_width a))
(define-fun us_split_fields_Max_Height__projection ((a us_split_fields)) integer (rec__object__t__max_height a))
(define-fun us_split_fields___projection ((a us_split_fields)) us_private (rec__ext__ a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields) (attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___2__projection ((a us_rep)) Int (attr__tag a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (and (and (= (to_rep (rec__object__t__area (us_split_fields1 a))) (to_rep (rec__object__t__area (us_split_fields1 b)))) (= (to_rep (rec__object__t__max_width (us_split_fields1 a))) (to_rep (rec__object__t__max_width (us_split_fields1 b))))) (= (to_rep (rec__object__t__max_height (us_split_fields1 a))) (to_rep (rec__object__t__max_height (us_split_fields1 b))))) true false))
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
(declare-const object__t__area__first__bit Int)
(declare-const object__t__area__last__bit Int)
(declare-const object__t__area__position Int)
(assert (<= 0 object__t__area__first__bit))
(assert (< object__t__area__first__bit object__t__area__last__bit))
(assert (<= 0 object__t__area__position))
(declare-const object__t__max_width__first__bit Int)
(declare-const object__t__max_width__last__bit Int)
(declare-const object__t__max_width__position Int)
(assert (<= 0 object__t__max_width__first__bit))
(assert (< object__t__max_width__first__bit object__t__max_width__last__bit))
(assert (<= 0 object__t__max_width__position))
(declare-const object__t__max_height__first__bit Int)
(declare-const object__t__max_height__last__bit Int)
(declare-const object__t__max_height__position Int)
(assert (<= 0 object__t__max_height__first__bit))
(assert (< object__t__max_height__first__bit object__t__max_height__last__bit))
(assert (<= 0 object__t__max_height__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__object__t__area1 integer) (rec__object__t__max_width1 integer) (rec__object__t__max_height1 integer) (rec__rectangle__t__width natural) (rec__rectangle__t__height natural) (rec__ext__1 us_private)))))
(define-fun us_split_fields_Area__2__projection ((a us_split_fields2)) integer (rec__object__t__area1 a))
(define-fun us_split_fields_Max_Width__2__projection ((a us_split_fields2)) integer (rec__object__t__max_width1 a))
(define-fun us_split_fields_Max_Height__2__projection ((a us_split_fields2)) integer (rec__object__t__max_height1 a))
(define-fun us_split_fields_Width__projection ((a us_split_fields2)) natural (rec__rectangle__t__width a))
(define-fun us_split_fields_Height__projection ((a us_split_fields2)) natural (rec__rectangle__t__height a))
(define-fun us_split_fields___2__projection ((a us_split_fields2)) us_private (rec__ext__1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2) (attr__tag1 Int)))))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun us_rep___4__projection ((a us_rep1)) Int (attr__tag1 a))
(declare-fun hide_ext__ (natural natural us_private) us_private)
(declare-fun extract__width (us_private) natural)
(assert (forall ((width natural) (height natural)) (forall ((rec__ext__2 us_private)) (= (extract__width (hide_ext__ width height rec__ext__2)) width))))
(declare-fun extract__height (us_private) natural)
(assert (forall ((width natural) (height natural)) (forall ((rec__ext__2 us_private)) (= (extract__height (hide_ext__ width height rec__ext__2)) height))))
(declare-fun extract__ext__ (us_private) us_private)
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (mk___split_fields (rec__object__t__area1 (us_split_fields3 a)) (rec__object__t__max_width1 (us_split_fields3 a)) (rec__object__t__max_height1 (us_split_fields3 a)) (hide_ext__ (rec__rectangle__t__width (us_split_fields3 a)) (rec__rectangle__t__height (us_split_fields3 a)) (rec__ext__1 (us_split_fields3 a)))) (attr__tag1 a)))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (mk___split_fields1 (rec__object__t__area (us_split_fields1 r)) (rec__object__t__max_width (us_split_fields1 r)) (rec__object__t__max_height (us_split_fields1 r)) (extract__width (rec__ext__ (us_split_fields1 r))) (extract__height (rec__ext__ (us_split_fields1 r))) (extract__ext__ (rec__ext__ (us_split_fields1 r)))) (attr__tag r)))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (and (and (and (and (= (to_rep (rec__object__t__area1 (us_split_fields3 a))) (to_rep (rec__object__t__area1 (us_split_fields3 b)))) (= (to_rep (rec__object__t__max_width1 (us_split_fields3 a))) (to_rep (rec__object__t__max_width1 (us_split_fields3 b))))) (= (to_rep (rec__object__t__max_height1 (us_split_fields3 a))) (to_rep (rec__object__t__max_height1 (us_split_fields3 b))))) (= (to_rep1 (rec__rectangle__t__width (us_split_fields3 a))) (to_rep1 (rec__rectangle__t__width (us_split_fields3 b))))) (= (to_rep1 (rec__rectangle__t__height (us_split_fields3 a))) (to_rep1 (rec__rectangle__t__height (us_split_fields3 b))))) true false))
(declare-const us_tag1 Int)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const object__t__area__first__bit1 Int)
(declare-const object__t__area__last__bit1 Int)
(declare-const object__t__area__position1 Int)
(assert (<= 0 object__t__area__first__bit1))
(assert (< object__t__area__first__bit1 object__t__area__last__bit1))
(assert (<= 0 object__t__area__position1))
(declare-const object__t__max_width__first__bit1 Int)
(declare-const object__t__max_width__last__bit1 Int)
(declare-const object__t__max_width__position1 Int)
(assert (<= 0 object__t__max_width__first__bit1))
(assert (< object__t__max_width__first__bit1 object__t__max_width__last__bit1))
(assert (<= 0 object__t__max_width__position1))
(declare-const object__t__max_height__first__bit1 Int)
(declare-const object__t__max_height__last__bit1 Int)
(declare-const object__t__max_height__position1 Int)
(assert (<= 0 object__t__max_height__first__bit1))
(assert (< object__t__max_height__first__bit1 object__t__max_height__last__bit1))
(assert (<= 0 object__t__max_height__position1))
(declare-const rectangle__t__width__first__bit Int)
(declare-const rectangle__t__width__last__bit Int)
(declare-const rectangle__t__width__position Int)
(assert (<= 0 rectangle__t__width__first__bit))
(assert (< rectangle__t__width__first__bit rectangle__t__width__last__bit))
(assert (<= 0 rectangle__t__width__position))
(declare-const rectangle__t__height__first__bit Int)
(declare-const rectangle__t__height__last__bit Int)
(declare-const rectangle__t__height__position Int)
(assert (<= 0 rectangle__t__height__first__bit))
(assert (< rectangle__t__height__first__bit rectangle__t__height__last__bit))
(assert (<= 0 rectangle__t__height__position))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-const dummy3 us_rep1)
(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 us_rep1)))))
(define-fun t__ref___2__projection ((a t__ref1)) us_rep1 (t__content1 a))
(define-fun default_initial_assumption ((temp___expr_174 us_rep1) (temp___skip_top_level_175 Bool)) Bool (and (= (attr__tag1 temp___expr_174) us_tag1) (and (and (= (to_rep (rec__object__t__area1 (us_split_fields3 temp___expr_174))) (- 1)) (= (to_rep (rec__object__t__max_width1 (us_split_fields3 temp___expr_174))) (- 1))) (= (to_rep (rec__object__t__max_height1 (us_split_fields3 temp___expr_174))) (- 1)))))
(declare-fun set_width__specific_post (Int us_split_fields2 Int Int us_split_fields2) Bool)
(assert true)
(declare-fun set_height__specific_post (Int us_split_fields2 Int Int us_split_fields2) Bool)
(assert true)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun has_stored_area (us_rep) Bool)
(declare-fun has_stored_area__function_guard (Bool us_rep) Bool)
(declare-fun has_stored_area1 (Int us_rep) Bool)
(declare-fun has_stored_area__function_guard1 (Bool Int us_rep) Bool)
(declare-fun get_stored_area (us_rep) Int)
(declare-fun get_stored_area__function_guard (Int us_rep) Bool)
(declare-fun get_stored_area1 (Int us_rep) Int)
(declare-fun get_stored_area__function_guard1 (Int Int us_rep) Bool)
(define-fun default_initial_assumption1 ((temp___expr_159 us_rep) (temp___skip_top_level_160 Bool)) Bool (and (= (attr__tag temp___expr_159) us_tag) (and (and (= (to_rep (rec__object__t__area (us_split_fields1 temp___expr_159))) (- 1)) (= (to_rep (rec__object__t__max_width (us_split_fields1 temp___expr_159))) (- 1))) (= (to_rep (rec__object__t__max_height (us_split_fields1 temp___expr_159))) (- 1)))))
(declare-const rec____attr__tag Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun in_range2 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Bool)
(assert true)
(assert true)
(assert (forall ((obj us_rep)) (! (= (ite (has_stored_area obj) 1 0) (ite (has_stored_area1 us_tag obj) 1 0)) :pattern ((has_stored_area1 us_tag obj)))))
(assert (forall ((obj us_rep)) (! (= (ite (has_stored_area obj) 1 0) (ite (has_stored_area1 us_tag1 obj) 1 0)) :pattern ((has_stored_area1 us_tag1 obj)))))
(assert (forall ((obj us_rep)) (! (= (= (has_stored_area obj) true) (in_range (to_rep (rec__object__t__area (us_split_fields1 obj))))) :pattern ((has_stored_area obj)))))
(assert (forall ((obj us_rep)) (! (=> (= (has_stored_area obj) true) (dynamic_invariant (get_stored_area obj) true false true true)) :pattern ((get_stored_area obj)))))
(assert (forall ((attr__tag2 Int)) (forall ((obj us_rep)) (! (=> (= (has_stored_area1 (attr__tag obj) obj) true) (dynamic_invariant (get_stored_area1 attr__tag2 obj) true false true true)) :pattern ((get_stored_area1 attr__tag2 obj))))))
(assert (forall ((obj us_rep)) (! (= (get_stored_area obj) (get_stored_area1 us_tag obj)) :pattern ((get_stored_area1 us_tag obj)))))
(assert (forall ((obj us_rep)) (! (= (get_stored_area obj) (get_stored_area1 us_tag1 obj)) :pattern ((get_stored_area1 us_tag1 obj)))))
(assert (forall ((obj us_rep)) (! (= (get_stored_area obj) (to_rep (rec__object__t__area (us_split_fields1 obj)))) :pattern ((get_stored_area obj)))))
(declare-const total_area Int)
(declare-const rec____split_fields integer)
(declare-const rec____split_fields1 integer)
(declare-const rec____split_fields2 integer)
(declare-const rec____split_fields3 integer)
(declare-const rec____split_fields4 integer)
(declare-const rec____split_fields5 integer)
(declare-const rec____split_fields6 natural)
(declare-const rec____split_fields7 natural)
(declare-const rec____split_fields8 us_private)
(declare-const window__prepare_to_draw__obj__fields integer)
(declare-const window__prepare_to_draw__obj__fields1 integer)
(declare-const window__prepare_to_draw__obj__fields2 integer)
(declare-const window__prepare_to_draw__obj__fields3 us_private)
(declare-const result integer)
(declare-const result1 integer)
(declare-const result2 integer)
(declare-const result3 natural)
(declare-const result4 natural)
(declare-const result5 us_private)
(declare-const rec____split_fields9 integer)
(declare-const rec____split_fields10 integer)
(declare-const rec____split_fields11 integer)
(declare-const rec____split_fields12 natural)
(declare-const rec____split_fields13 natural)
(declare-const rec____split_fields14 us_private)
(declare-const total_area1 Int)
(declare-const total_area2 Int)
(declare-const rec____split_fields15 integer)
(declare-const rec____split_fields16 integer)
(declare-const rec____split_fields17 integer)
(declare-const rec____split_fields18 natural)
(declare-const rec____split_fields19 natural)
(declare-const rec____split_fields20 us_private)
(declare-const total_area3 Int)
(declare-const rec____split_fields21 integer)
(declare-const rec____split_fields22 integer)
(declare-const rec____split_fields23 integer)
(declare-const rec____split_fields24 natural)
(declare-const rec____split_fields25 natural)
(declare-const rec____split_fields26 us_private)
(define-fun rec____split_fields27 () us_split_fields2 (mk___split_fields1 rec____split_fields9 rec____split_fields10 rec____split_fields11 rec____split_fields12 rec____split_fields13 rec____split_fields14))
(define-fun window__prepare_to_draw__obj__fields4 () us_split_fields (mk___split_fields window__prepare_to_draw__obj__fields window__prepare_to_draw__obj__fields1 window__prepare_to_draw__obj__fields2 window__prepare_to_draw__obj__fields3))
(assert (in_range total_area))
(assert (< 100 total_area))
(assert (and (= rec____attr__tag us_tag1) (and (and (= (to_rep rec____split_fields) (- 1)) (= (to_rep rec____split_fields1) (- 1))) (= (to_rep rec____split_fields2) (- 1)))))
(assert (= (has_stored_area1 rec____attr__tag (mk___rep window__prepare_to_draw__obj__fields4 rec____attr__tag)) true))
(assert (= result rec____split_fields3))
(assert (= result1 rec____split_fields4))
(assert (= result2 rec____split_fields5))
(assert (= result3 rec____split_fields6))
(assert (= result4 rec____split_fields7))
(assert (= result5 rec____split_fields8))
(assert (= rec____split_fields27 (us_split_fields3 (of_base (mk___rep window__prepare_to_draw__obj__fields4 rec____attr__tag)))))
(assert (and (= total_area1 (- total_area (get_stored_area1 rec____attr__tag (mk___rep (mk___split_fields rec____split_fields9 rec____split_fields10 rec____split_fields11 (hide_ext__ rec____split_fields12 rec____split_fields13 rec____split_fields14)) rec____attr__tag)))) (in_range total_area1)))
(assert (= rec____split_fields15 rec____split_fields9))
(assert (= rec____split_fields16 rec____split_fields10))
(assert (= rec____split_fields17 rec____split_fields11))
(assert (= rec____split_fields18 rec____split_fields12))
(assert (= rec____split_fields19 rec____split_fields13))
(assert (= rec____split_fields20 rec____split_fields14))
(assert (= total_area1 total_area2))
(assert (= (mk___split_fields1 rec____split_fields21 rec____split_fields22 rec____split_fields23 rec____split_fields24 rec____split_fields25 rec____split_fields26) rec____split_fields27))
(assert (= total_area3 total_area1))
(assert (not (= total_area2 (- total_area 100))))
(check-sat)
(exit)
