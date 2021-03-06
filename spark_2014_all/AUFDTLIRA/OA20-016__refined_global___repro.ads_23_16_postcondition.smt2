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
(declare-sort cell 0)
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 7)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (cell cell) Bool)
(declare-const dummy cell)
(declare-datatypes () ((cell__ref (mk_cell__ref (cell__content cell)))))
(define-fun cell__ref___projection ((a cell__ref)) cell (cell__content a))
(declare-fun to_rep (cell) Int)
(declare-fun of_rep (Int) cell)
(assert (forall ((x cell)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x cell)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int cell))))))
(declare-fun slide ((Array Int cell) Int Int) (Array Int cell))
(assert (forall ((a (Array Int cell))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int cell))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int cell)) (a__first Int) (a__last Int) (b (Array Int cell)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155))))))) true false))
(assert (forall ((a (Array Int cell)) (b (Array Int cell))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_155 Int)) (=> (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last)) (= (to_rep (select a temp___idx_155)) (to_rep (select b (+ (- b__first a__first) temp___idx_155)))))))))))
(declare-const dummy1 (Array Int cell))
(declare-const value__size Int)
(declare-fun object__size ((Array Int cell)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int cell)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int cell)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int cell))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int cell))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int cell))) (<= 0 (object__alignment a))))
(declare-fun user_eq1 ((Array Int cell) (Array Int cell)) Bool)
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int cell)))))))
(declare-fun slide1 ((Array Int (Array Int cell)) Int Int) (Array Int (Array Int cell)))
(assert (forall ((a (Array Int (Array Int cell)))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int (Array Int cell)))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq1 ((a (Array Int (Array Int cell))) (a__first Int) (a__last Int) (b (Array Int (Array Int cell))) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_156 Int)) (=> (and (<= a__first temp___idx_156) (<= temp___idx_156 a__last)) (= (bool_eq (select a temp___idx_156) 1 10 (select b (+ (- b__first a__first) temp___idx_156)) 1 10) true)))) true false))
(assert (forall ((a (Array Int (Array Int cell))) (b (Array Int (Array Int cell)))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq1 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_156 Int)) (=> (and (<= a__first temp___idx_156) (<= temp___idx_156 a__last)) (= (bool_eq (select a temp___idx_156) 1 10 (select b (+ (- b__first a__first) temp___idx_156)) 1 10) true))))))))
(declare-fun is_empty ((Array Int (Array Int cell))) Bool)
(declare-fun is_empty__function_guard (Bool (Array Int (Array Int cell))) Bool)
(assert true)
(assert (forall ((b (Array Int (Array Int cell)))) (! (= (= (is_empty b) true) (forall ((y Int)) (=> (and (<= 1 y) (<= y 20)) (forall ((x Int)) (=> (and (<= 1 x) (<= x 10)) (= (to_rep (let ((temp___358 (select b y))) (select temp___358 x))) 0)))))) :pattern ((is_empty b)))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun get_board ((Array Int (Array Int cell))) (Array Int (Array Int cell)))
(declare-fun get_board__function_guard ((Array Int (Array Int cell)) (Array Int (Array Int cell))) Bool)
(assert true)
(assert (forall ((repro__cur_board (Array Int (Array Int cell)))) (! (= (get_board repro__cur_board) repro__cur_board) :pattern ((get_board repro__cur_board)))))
(declare-fun temp_____aggregate_def_382 ((Array Int cell)) (Array Int (Array Int cell)))
(declare-fun temp_____aggregate_def_386 (Int) (Array Int cell))
(assert (forall ((temp___384 (Array Int cell))) (forall ((temp___385 Int)) (= (select (temp_____aggregate_def_382 temp___384) temp___385) temp___384))))
(define-fun dynamic_invariant ((temp___expr_313 Int) (temp___is_init_309 Bool) (temp___skip_constant_310 Bool) (temp___do_toplevel_311 Bool) (temp___do_typ_inv_312 Bool)) Bool (=> (or (= temp___is_init_309 true) (<= 0 7)) (in_range temp___expr_313)))
(assert (forall ((temp___388 Int)) (=> (dynamic_invariant temp___388 true true true true) (forall ((temp___389 Int)) (= (to_rep (select (temp_____aggregate_def_386 temp___388) temp___389)) temp___388)))))
(declare-const cur_board (Array Int (Array Int cell)))
(declare-const result (Array Int (Array Int cell)))
(declare-const cur_board1 (Array Int (Array Int cell)))
(declare-const cur_board2 (Array Int (Array Int cell)))
(declare-const cur_board3 (Array Int (Array Int cell)))
(assert (= result cur_board))
(assert (= cur_board1 (temp_____aggregate_def_382 (temp_____aggregate_def_386 0))))
(assert (= cur_board1 cur_board2))
(assert (= cur_board3 cur_board1))
(assert (not (= (is_empty (get_board cur_board2)) true)))
(check-sat)
(exit)
