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

(declare-sort cell_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 7)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (cell_type cell_type) Bool)

(declare-fun dummy () cell_type)

(declare-datatypes ()
((cell_type__ref (mk_cell_type__ref (cell_type__content cell_type)))))
(define-fun cell_type__ref___projection ((a cell_type__ref)) cell_type 
  (cell_type__content a))

(declare-fun to_rep (cell_type) Int)

(declare-fun of_rep (Int) cell_type)

;; inversion_axiom
  (assert
  (forall ((x cell_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x cell_type)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__tetris__cell__kind cell_type)))))
(define-fun us_split_fields_Kind__projection ((a us_split_fields)) cell_type 
  (rec__tetris__cell__kind a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__tetris__cell__kind (us_split_fields1 a))) 
                   (to_rep (rec__tetris__cell__kind (us_split_fields1 b))))
                   true false))

(declare-fun user_eq1 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun tetris__cell__kind__first__bit () Int)

(declare-fun tetris__cell__kind__last__bit () Int)

(declare-fun tetris__cell__kind__position () Int)

;; tetris__cell__kind__first__bit_axiom
  (assert (<= 0 tetris__cell__kind__first__bit))

;; tetris__cell__kind__last__bit_axiom
  (assert (< tetris__cell__kind__first__bit tetris__cell__kind__last__bit))

;; tetris__cell__kind__position_axiom
  (assert (<= 0 tetris__cell__kind__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((cell__ref (mk_cell__ref (cell__content us_rep)))))
(define-fun cell__ref___projection ((a cell__ref)) us_rep (cell__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int us_rep) Int Int (Array Int us_rep) Int
  Int) (Array Int us_rep))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (us_rep Int) (Array Int us_rep))

;; singleton_def
  (assert
  (forall ((v us_rep))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq2 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (bool_eq1 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq1 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun dummy2 () (Array Int us_rep))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int us_rep)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int us_rep)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int us_rep)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int us_rep))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int us_rep))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int us_rep))) (<= 0 (object__alignment1 a))))

(declare-fun user_eq2 ((Array Int us_rep) (Array Int us_rep)) Bool)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int us_rep)))))))
(declare-fun slide1 ((Array Int (Array Int us_rep)) Int
  Int) (Array Int (Array Int us_rep)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int us_rep))))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int us_rep))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int (Array Int us_rep)) Int Int
  (Array Int (Array Int us_rep)) Int Int) (Array Int (Array Int us_rep)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int us_rep)))
  (b (Array Int (Array Int us_rep))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 ((Array Int us_rep)
  Int) (Array Int (Array Int us_rep)))

;; singleton_def
  (assert
  (forall ((v (Array Int us_rep)))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int (Array Int us_rep))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int us_rep))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (bool_eq2 (select a temp___idx_133) 1 8
                              (select b (+ (- b__first a__first) temp___idx_133))
                              1 8) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int us_rep)))
  (b (Array Int (Array Int us_rep))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq2 (select a temp___idx_133) 1 8
     (select b (+ (- b__first a__first) temp___idx_133)) 1 8) true))))))))

(declare-sort x_coord 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 8)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (x_coord x_coord) Bool)

(declare-fun dummy3 () x_coord)

(declare-datatypes ()
((x_coord__ref (mk_x_coord__ref (x_coord__content x_coord)))))
(define-fun x_coord__ref___projection ((a x_coord__ref)) x_coord (x_coord__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_137 Int)
  (temp___is_init_134 Bool) (temp___skip_constant_135 Bool)
  (temp___do_toplevel_136 Bool)) Bool (=>
                                      (or (= temp___is_init_134 true)
                                      (<= 1 8)) (in_range2 temp___expr_137)))

(declare-sort y_coord 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 16)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (y_coord y_coord) Bool)

(declare-fun dummy4 () y_coord)

(declare-datatypes ()
((y_coord__ref (mk_y_coord__ref (y_coord__content y_coord)))))
(define-fun y_coord__ref___projection ((a y_coord__ref)) y_coord (y_coord__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 1 16)) (in_range3 temp___expr_143)))

(declare-fun is_empty_cell ((Array Int (Array Int us_rep)) Int Int) Bool)

(declare-fun is_empty_cell__function_guard (Bool
  (Array Int (Array Int us_rep)) Int Int) Bool)

;; is_empty_cell__post_axiom
  (assert true)

;; is_empty_cell__def_axiom
  (assert
  (forall ((the_board (Array Int (Array Int us_rep))))
  (forall ((xpos Int) (ypos Int))
  (! (=> (is_empty_cell__function_guard (is_empty_cell the_board xpos ypos)
     the_board xpos ypos)
     (= (= (is_empty_cell the_board xpos ypos) true)
     (= (to_rep
        (rec__tetris__cell__kind
        (us_split_fields1
        (let ((temp___223 (select the_board ypos))) (select temp___223 xpos))))) 0))) :pattern (
  (is_empty_cell the_board xpos ypos)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort piece_count_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (piece_count_type piece_count_type) Bool)

(declare-fun dummy5 () piece_count_type)

(declare-datatypes ()
((piece_count_type__ref
 (mk_piece_count_type__ref (piece_count_type__content piece_count_type)))))
(define-fun piece_count_type__ref___projection ((a piece_count_type__ref)) piece_count_type 
  (piece_count_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_331 Int)
  (temp___is_init_328 Bool) (temp___skip_constant_329 Bool)
  (temp___do_toplevel_330 Bool)) Bool (=>
                                      (or (= temp___is_init_328 true)
                                      (<= 0 1000)) (in_range4
                                      temp___expr_331)))

(define-fun dynamic_invariant3 ((temp___expr_161 Int)
  (temp___is_init_158 Bool) (temp___skip_constant_159 Bool)
  (temp___do_toplevel_160 Bool)) Bool (=>
                                      (or (= temp___is_init_158 true)
                                      (<= 0 7)) (in_range1 temp___expr_161)))

(declare-fun piece_count () Int)

(declare-fun create_piece () Bool)

(declare-fun game_board () (Array Int (Array Int us_rep)))

(declare-fun result () Bool)

(declare-fun result1 () Bool)

(declare-fun create_piece1 () Bool)

;; H
  (assert (in_range4 piece_count))

;; H
  (assert (= (to_int1 create_piece) (to_int1 (of_int 1))))

;; H
  (assert
  (and
  (and (= result (is_empty_cell game_board 4 1))
  (is_empty_cell__function_guard result game_board 4 1))
  (= (= result true)
  (= (to_rep
     (rec__tetris__cell__kind
     (us_split_fields1 (select (select game_board 1) 4)))) 0))))

;; H
  (assert (= result true))

;; H
  (assert (= result1 create_piece))

;; H
  (assert (= create_piece1 (of_int 0)))

(assert
;; WP_parameter_def
 ;; File "tetris.ads", line 28, characters 0-0
  (not (in_range4 (+ piece_count 1))))
(check-sat)
