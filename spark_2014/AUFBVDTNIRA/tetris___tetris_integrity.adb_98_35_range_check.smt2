;; produced by cvc4_14.drv ;;
(set-logic AUFBVDTNIRA)
(set-info :source |VC generated by SPARK 2014|)
(set-info :smt-lib-version 2.0)
(set-info :category industrial)
(set-info :status unknown)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-fun us_null_ext__ () us_private)

(declare-sort us_type_of_heap 0)

(declare-datatypes ()
((us_type_of_heap__ref
 (mk___type_of_heap__ref (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)

(declare-datatypes () ((int__ref (mk_int__ref (int__content Int)))))
(declare-datatypes () ((bool__ref (mk_bool__ref (bool__content Bool)))))
(declare-datatypes () ((real__ref (mk_real__ref (real__content Real)))))
(declare-datatypes ()
((us_private__ref (mk___private__ref (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))

(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))

(define-fun real__ref___projection ((a real__ref)) Real (real__content a))

(define-fun us_private__ref___projection ((a us_private__ref)) us_private 
  (us_private__content a))

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-sort x_coord 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (x_coord x_coord) Bool)

(declare-fun dummy2 () x_coord)

(declare-datatypes ()
((x_coord__ref (mk_x_coord__ref (x_coord__content x_coord)))))
(define-fun x_coord__ref___projection ((a x_coord__ref)) x_coord (x_coord__content
                                                                 a))

(declare-sort y_coord 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 50)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (y_coord y_coord) Bool)

(declare-fun dummy3 () y_coord)

(declare-datatypes ()
((y_coord__ref (mk_y_coord__ref (y_coord__content y_coord)))))
(define-fun y_coord__ref___projection ((a y_coord__ref)) y_coord (y_coord__content
                                                                 a))

(define-fun dynamic_invariant2 ((temp___expr_538 Int)
  (temp___is_init_535 Bool) (temp___skip_constant_536 Bool)
  (temp___do_toplevel_537 Bool)) Bool (=>
                                      (or (= temp___is_init_535 true)
                                      (<= 1 50)) (in_range4 temp___expr_538)))

(declare-sort cell 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 7)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (cell cell) Bool)

(declare-fun dummy4 () cell)

(declare-datatypes () ((cell__ref (mk_cell__ref (cell__content cell)))))
(define-fun cell__ref___projection ((a cell__ref)) cell (cell__content a))

(declare-fun to_rep (cell) Int)

(declare-fun of_rep (Int) cell)

;; inversion_axiom
  (assert
  (forall ((x cell)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x cell)) (! (in_range5 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int cell))))))
(declare-fun slide ((Array Int cell) Int Int) (Array Int cell))

;; slide_eq
  (assert
  (forall ((a (Array Int cell)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int cell)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int cell) Int Int (Array Int cell) Int
  Int) (Array Int cell))

;; concat_def
  (assert
  (forall ((a (Array Int cell)) (b (Array Int cell)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (cell Int) (Array Int cell))

;; singleton_def
  (assert
  (forall ((v cell))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq5 ((a (Array Int cell)) (a__first Int) (a__last Int)
  (b (Array Int cell)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int cell)) (b (Array Int cell)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int cell) Int Int (Array Int cell) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int cell)) (b (Array Int cell)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq5 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int cell)) (b (Array Int cell)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq5 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int cell)) (b (Array Int cell)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq5 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy5 () (Array Int cell))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int cell)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int cell)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int cell)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int cell))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert (forall ((a (Array Int cell))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int cell))) (<= 0 (object__alignment a))))

(declare-fun user_eq5 ((Array Int cell) (Array Int cell)) Bool)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int cell)))))))
(declare-fun slide1 ((Array Int (Array Int cell)) Int
  Int) (Array Int (Array Int cell)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int cell))))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int cell))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int (Array Int cell)) Int Int
  (Array Int (Array Int cell)) Int Int) (Array Int (Array Int cell)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int cell))) (b (Array Int (Array Int cell))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 ((Array Int cell) Int) (Array Int (Array Int cell)))

;; singleton_def
  (assert
  (forall ((v (Array Int cell)))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq6 ((a (Array Int (Array Int cell))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int cell))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (bool_eq5 (select a temp___idx_133) 1 10
                              (select b (+ (- b__first a__first) temp___idx_133))
                              1 10) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int cell))) (b (Array Int (Array Int cell))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq5 (select a temp___idx_133) 1 10
     (select b (+ (- b__first a__first) temp___idx_133)) 1 10) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun is_complete_line ((Array Int cell)) Bool)

(declare-fun is_complete_line__function_guard (Bool (Array Int cell)) Bool)

;; is_complete_line__post_axiom
  (assert true)

;; is_complete_line__def_axiom
  (assert
  (forall ((l (Array Int cell)))
  (! (=> (is_complete_line__function_guard (is_complete_line l) l)
     (= (= (is_complete_line l) true)
     (forall ((x Int))
     (=> (and (<= 1 x) (<= x 10)) (not (= (to_rep (select l x)) 0)))))) :pattern (
  (is_complete_line l)) )))

(declare-fun is_empty_line ((Array Int cell)) Bool)

(declare-fun is_empty_line__function_guard (Bool (Array Int cell)) Bool)

;; is_empty_line__post_axiom
  (assert true)

;; is_empty_line__def_axiom
  (assert
  (forall ((l (Array Int cell)))
  (! (=> (is_empty_line__function_guard (is_empty_line l) l)
     (= (= (is_empty_line l) true)
     (forall ((x Int))
     (=> (and (<= 1 x) (<= x 10)) (= (to_rep (select l x)) 0))))) :pattern (
  (is_empty_line l)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort t1b 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (t1b t1b) Bool)

(declare-fun dummy6 () t1b)

(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content t1b)))))
(define-fun t1b__ref___projection ((a t1b__ref)) t1b (t1b__content a))

(declare-fun empty_line () (Array Int cell))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun tetris_integrity__delete_complete_lines__empty_line__aggregate_def (Int) (Array Int cell))

;; def_axiom
  (assert
  (forall ((temp___509 Int))
  (forall ((temp___510 Int))
  (= (select (tetris_integrity__delete_complete_lines__empty_line__aggregate_def
             temp___509) temp___510) (of_rep temp___509)))))

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun r3b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq7 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes () ((t4b__ref (mk_t4b__ref (t4b__content integer)))))
(define-fun t4b__ref___projection ((a t4b__ref)) integer (t4b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

;; empty_line__def_axiom
  (assert
  (= empty_line (tetris_integrity__delete_complete_lines__empty_line__aggregate_def
                0)))

(define-fun dynamic_invariant3 ((temp___expr_514 Int)
  (temp___is_init_511 Bool) (temp___skip_constant_512 Bool)
  (temp___do_toplevel_513 Bool)) Bool (=>
                                      (or (= temp___is_init_511 true)
                                      (<= 0 7)) (in_range5 temp___expr_514)))

(define-fun dynamic_invariant4 ((temp___expr_532 Int)
  (temp___is_init_529 Bool) (temp___skip_constant_530 Bool)
  (temp___do_toplevel_531 Bool)) Bool (=>
                                      (or (= temp___is_init_529 true)
                                      (<= 1 10)) (in_range3 temp___expr_532)))

(declare-fun cur_board () (Array Int (Array Int cell)))

(declare-fun num_deleted () Int)

(declare-fun to_line () Int)

(declare-fun has_complete_lines () Bool)

(declare-fun del_line () Int)

(declare-fun from_line () Int)

(declare-fun tetris_integrity__delete_complete_lines__empty_line__assume () (Array Int cell))

(declare-fun temp___803 () (Array Int (Array Int cell)))

(declare-fun temp___802 () Int)

(declare-fun temp___801 () Bool)

(declare-fun o () Bool)

(declare-fun cur_board1 () (Array Int (Array Int cell)))

(declare-fun result () Int)

(declare-fun to_line1 () Int)

(declare-fun result1 () Bool)

(declare-fun has_complete_lines1 () Bool)

(declare-fun result2 () Int)

(declare-fun del_line1 () Int)

(declare-fun cur_board2 () (Array Int (Array Int cell)))

(declare-fun to_line2 () Int)

(declare-fun has_complete_lines2 () Bool)

(declare-fun del_line2 () Int)

(declare-fun result3 () Bool)

(declare-fun result4 () (Array Int (Array Int cell)))

(declare-fun cur_board3 () (Array Int (Array Int cell)))

(declare-fun result5 () Bool)

(declare-fun has_complete_lines3 () Bool)

(declare-fun result6 () Int)

(declare-fun to_line3 () Int)

(declare-fun cur_board4 () (Array Int (Array Int cell)))

(declare-fun to_line4 () Int)

(declare-fun has_complete_lines4 () Bool)

(declare-fun del_line3 () Int)

(declare-fun cur_board5 () (Array Int (Array Int cell)))

(declare-fun to_line5 () Int)

(declare-fun has_complete_lines5 () Bool)

(declare-fun del_line4 () Int)

(declare-fun cur_board6 () (Array Int (Array Int cell)))

(declare-fun to_line6 () int__ref)

(declare-fun has_complete_lines6 () bool__ref)

(declare-fun del_line5 () int__ref)

(declare-fun cur_board7 () (Array Int (Array Int cell)))

(declare-fun to_line7 () Int)

(declare-fun has_complete_lines7 () Bool)

(declare-fun del_line6 () Int)

(declare-fun result7 () int__ref)

(declare-fun num_deleted1 () Int)

(declare-fun result8 () int__ref)

(declare-fun from_line1 () Int)

(declare-fun cur_board8 () (Array Int (Array Int cell)))

(declare-fun num_deleted2 () Int)

(declare-fun to_line8 () Int)

(declare-fun from_line2 () Int)

(declare-fun result9 () Bool)

(declare-fun result10 () map__ref1)

(declare-fun cur_board9 () (Array Int (Array Int cell)))

(declare-fun result11 () map__ref1)

(declare-fun cur_board10 () (Array Int (Array Int cell)))

(define-fun cur_board11 () map__ref1 (mk_map__ref1 cur_board6))

;; H
  (assert (=> (<= 0 2147483647) (in_range2 num_deleted)))

;; H
  (assert
  (= tetris_integrity__delete_complete_lines__empty_line__assume (tetris_integrity__delete_complete_lines__empty_line__aggregate_def
                                                                 0)))

;; H
  (assert
  (= tetris_integrity__delete_complete_lines__empty_line__assume empty_line))

;; H
  (assert (= result to_line))

;; H
  (assert (= to_line1 50))

;; H
  (assert (in_range4 to_line1))

;; H
  (assert (= result1 has_complete_lines))

;; H
  (assert (= has_complete_lines1 (of_int 0)))

;; H
  (assert (= result2 del_line))

;; H
  (assert (= del_line1 1))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= temp___803 cur_board)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= temp___802 to_line1)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (= temp___801 has_complete_lines1)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (and
  (and (=> (<= 1 50) (in_range4 to_line2))
  (forall ((temp___804 Int))
  (=> (and (<= 1 temp___804) (<= temp___804 50))
  (=> (<= del_line2 temp___804)
  (= (select cur_board2 temp___804) (select temp___803 temp___804))))))
  (and (<= 1 del_line2) (<= del_line2 50)))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (and
  (and (= result3 (is_complete_line (select cur_board2 del_line2)))
  (is_complete_line__function_guard result3 (select cur_board2 del_line2)))
  (= (= result3 true)
  (forall ((x Int))
  (=> (and (<= 1 x) (<= x 10))
  (not (= (to_rep (select (select cur_board2 del_line2) x)) 0))))))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (= result3 true) (= result4 cur_board2))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (= result3 true)
  (= cur_board3 (store cur_board2 del_line2 empty_line)))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (= result3 true) (= result5 has_complete_lines2))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (= result3 true) (= has_complete_lines3 (of_int 1)))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (= result3 true) (= result6 to_line2))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (= result3 true) (= to_line3 del_line2))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (not (= result3 true)) (= has_complete_lines3 has_complete_lines2))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (not (= result3 true)) (= to_line3 to_line2))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (=> (not (= result3 true)) (= cur_board3 cur_board2))))

;; H
  (assert (=> (and (<= 1 del_line1) (<= del_line1 50)) (= del_line2 50)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= del_line2 del_line3)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (= has_complete_lines3 has_complete_lines4)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= to_line3 to_line4)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= cur_board3 cur_board4)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= del_line4 del_line2)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (= has_complete_lines5 has_complete_lines3)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= to_line5 to_line3)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= cur_board5 cur_board3)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (= del_line5 (mk_int__ref del_line3))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (= has_complete_lines6 (mk_bool__ref has_complete_lines4))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (= to_line6 (mk_int__ref to_line4))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (= cur_board11 (mk_map__ref1 cur_board4))))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= del_line6 del_line4)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50))
  (= has_complete_lines7 has_complete_lines5)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= to_line7 to_line5)))

;; H
  (assert
  (=> (and (<= 1 del_line1) (<= del_line1 50)) (= cur_board7 cur_board5)))

;; H
  (assert
  (=> (not (and (<= 1 del_line1) (<= del_line1 50)))
  (= del_line5 (mk_int__ref del_line1))))

;; H
  (assert
  (=> (not (and (<= 1 del_line1) (<= del_line1 50)))
  (= has_complete_lines6 (mk_bool__ref has_complete_lines1))))

;; H
  (assert
  (=> (not (and (<= 1 del_line1) (<= del_line1 50)))
  (= to_line6 (mk_int__ref to_line1))))

;; H
  (assert
  (=> (not (and (<= 1 del_line1) (<= del_line1 50)))
  (= cur_board11 (mk_map__ref1 cur_board))))

;; H
  (assert
  (=> (not (and (<= 1 del_line1) (<= del_line1 50))) (= del_line6 del_line1)))

;; H
  (assert
  (=> (not (and (<= 1 del_line1) (<= del_line1 50)))
  (= has_complete_lines7 has_complete_lines1)))

;; H
  (assert
  (=> (not (and (<= 1 del_line1) (<= del_line1 50))) (= to_line7 to_line1)))

;; H
  (assert
  (=> (not (and (<= 1 del_line1) (<= del_line1 50)))
  (= cur_board7 cur_board1)))

;; H
  (assert (= result7 (mk_int__ref num_deleted)))

;; H
  (assert (= num_deleted1 0))

;; H
  (assert (= (bool__content has_complete_lines6) true))

;; H
  (assert (= (- (int__content to_line6) 1) r3b))

;; H
  (assert (in_range1 r3b))

;; H
  (assert (= result8 (mk_int__ref from_line)))

;; H
  (assert (= from_line1 r3b))

;; H
  (assert (<= 1 from_line1))

;; H
  (assert (<= from_line1 r3b))

;; H
  (assert (< from_line2 to_line8))

;; H
  (assert
  (= (+ num_deleted2 to_line8) (+ num_deleted1 (int__content to_line6))))

;; H
  (assert
  (and
  (and
  (and (=> (<= 1 r3b) (dynamic_property 1 r3b from_line2))
  (=> (<= 1 50) (in_range4 to_line8)))
  (=> (<= 0 2147483647) (in_range2 num_deleted2)))
  (and (<= 1 from_line2) (<= from_line2 r3b))))

;; H
  (assert
  (and
  (and (= o (is_empty_line (select cur_board8 from_line2)))
  (is_empty_line__function_guard o (select cur_board8 from_line2)))
  (= (= o true)
  (forall ((x Int))
  (=> (and (<= 1 x) (<= x 10))
  (= (to_rep (select (select cur_board8 from_line2) x)) 0))))))

;; H
  (assert (= result9 (ite (not (= o true)) true false)))

;; H
  (assert (= result9 true))

;; H
  (assert (= result10 (mk_map__ref1 cur_board8)))

;; H
  (assert
  (= cur_board9 (store cur_board8 to_line8 (select cur_board8 from_line2))))

;; H
  (assert (= result11 (mk_map__ref1 cur_board9)))

;; H
  (assert (= cur_board10 (store cur_board9 from_line2 empty_line)))

(assert
;; WP_parameter_def
 ;; File "tetris_integrity.adb", line 37, characters 0-0
  (not (in_range4 (- to_line8 1))))
(check-sat)
