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

(declare-sort px_coord 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 1) x) (<= x 9)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (px_coord px_coord) Bool)

(declare-fun dummy () px_coord)

(declare-datatypes ()
((px_coord__ref (mk_px_coord__ref (px_coord__content px_coord)))))
(define-fun px_coord__ref___projection ((a px_coord__ref)) px_coord (px_coord__content
                                                                    a))

(declare-fun to_rep (px_coord) Int)

(declare-fun of_rep (Int) px_coord)

;; inversion_axiom
  (assert
  (forall ((x px_coord))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x px_coord)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort py_coord 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 1) x) (<= x 19)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (py_coord py_coord) Bool)

(declare-fun dummy1 () py_coord)

(declare-datatypes ()
((py_coord__ref (mk_py_coord__ref (py_coord__content py_coord)))))
(define-fun py_coord__ref___projection ((a py_coord__ref)) py_coord (py_coord__content
                                                                    a))

(declare-fun to_rep1 (py_coord) Int)

(declare-fun of_rep1 (Int) py_coord)

;; inversion_axiom
  (assert
  (forall ((x py_coord))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x py_coord)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort direction 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (direction direction) Bool)

(declare-fun dummy2 () direction)

(declare-datatypes ()
((direction__ref (mk_direction__ref (direction__content direction)))))
(define-fun direction__ref___projection ((a direction__ref)) direction 
  (direction__content a))

(declare-fun to_rep2 (direction) Int)

(declare-fun of_rep2 (Int) direction)

;; inversion_axiom
  (assert
  (forall ((x direction))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x direction)) (! (in_range2
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort shape 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 7)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (shape shape) Bool)

(declare-fun dummy3 () shape)

(declare-datatypes () ((shape__ref (mk_shape__ref (shape__content shape)))))
(define-fun shape__ref___projection ((a shape__ref)) shape (shape__content a))

(declare-fun to_rep3 (shape) Int)

(declare-fun of_rep3 (Int) shape)

;; inversion_axiom
  (assert
  (forall ((x shape))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x shape)) (! (in_range3 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__patris__piece__s shape)(rec__patris__piece__d direction)(rec__patris__piece__x px_coord)(rec__patris__piece__y py_coord)))))
(define-fun us_split_fields_S__projection ((a us_split_fields)) shape 
  (rec__patris__piece__s a))

(define-fun us_split_fields_D__projection ((a us_split_fields)) direction 
  (rec__patris__piece__d a))

(define-fun us_split_fields_X__projection ((a us_split_fields)) px_coord 
  (rec__patris__piece__x a))

(define-fun us_split_fields_Y__projection ((a us_split_fields)) py_coord 
  (rec__patris__piece__y a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_4__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_4__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq4 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (= (to_rep3
                           (rec__patris__piece__s (us_split_fields1 a))) 
                        (to_rep3
                        (rec__patris__piece__s (us_split_fields1 b))))
                        (= (to_rep2
                           (rec__patris__piece__d (us_split_fields1 a))) 
                        (to_rep2
                        (rec__patris__piece__d (us_split_fields1 b)))))
                        (= (to_rep
                           (rec__patris__piece__x (us_split_fields1 a))) 
                        (to_rep (rec__patris__piece__x (us_split_fields1 b)))))
                        (= (to_rep1
                           (rec__patris__piece__y (us_split_fields1 a))) 
                        (to_rep1
                        (rec__patris__piece__y (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq4 (us_rep us_rep) Bool)

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

(declare-fun patris__piece__s__first__bit () Int)

(declare-fun patris__piece__s__last__bit () Int)

(declare-fun patris__piece__s__position () Int)

;; patris__piece__s__first__bit_axiom
  (assert (<= 0 patris__piece__s__first__bit))

;; patris__piece__s__last__bit_axiom
  (assert (< patris__piece__s__first__bit patris__piece__s__last__bit))

;; patris__piece__s__position_axiom
  (assert (<= 0 patris__piece__s__position))

(declare-fun patris__piece__d__first__bit () Int)

(declare-fun patris__piece__d__last__bit () Int)

(declare-fun patris__piece__d__position () Int)

;; patris__piece__d__first__bit_axiom
  (assert (<= 0 patris__piece__d__first__bit))

;; patris__piece__d__last__bit_axiom
  (assert (< patris__piece__d__first__bit patris__piece__d__last__bit))

;; patris__piece__d__position_axiom
  (assert (<= 0 patris__piece__d__position))

(declare-fun patris__piece__x__first__bit () Int)

(declare-fun patris__piece__x__last__bit () Int)

(declare-fun patris__piece__x__position () Int)

;; patris__piece__x__first__bit_axiom
  (assert (<= 0 patris__piece__x__first__bit))

;; patris__piece__x__last__bit_axiom
  (assert (< patris__piece__x__first__bit patris__piece__x__last__bit))

;; patris__piece__x__position_axiom
  (assert (<= 0 patris__piece__x__position))

(declare-fun patris__piece__y__first__bit () Int)

(declare-fun patris__piece__y__last__bit () Int)

(declare-fun patris__piece__y__position () Int)

;; patris__piece__y__first__bit_axiom
  (assert (<= 0 patris__piece__y__first__bit))

;; patris__piece__y__last__bit_axiom
  (assert (< patris__piece__y__first__bit patris__piece__y__last__bit))

;; patris__piece__y__position_axiom
  (assert (<= 0 patris__piece__y__position))

(declare-fun dummy4 () us_rep)

(declare-datatypes () ((piece__ref (mk_piece__ref (piece__content us_rep)))))
(define-fun piece__ref___projection ((a piece__ref)) us_rep (piece__content
                                                            a))

(declare-sort action 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 4)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (action action) Bool)

(declare-fun dummy5 () action)

(declare-datatypes ()
((action__ref (mk_action__ref (action__content action)))))
(define-fun action__ref___projection ((a action__ref)) action (action__content
                                                              a))

(define-fun dynamic_invariant ((temp___expr_2044 Int)
  (temp___is_init_2041 Bool) (temp___skip_constant_2042 Bool)
  (temp___do_toplevel_2043 Bool)) Bool (=>
                                       (or (= temp___is_init_2041 true)
                                       (<= 0 4)) (in_range4
                                       temp___expr_2044)))

(declare-sort turn_action 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 3 x) (<= x 4)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (turn_action turn_action) Bool)

(declare-fun dummy6 () turn_action)

(declare-datatypes ()
((turn_action__ref (mk_turn_action__ref (turn_action__content turn_action)))))
(define-fun turn_action__ref___projection ((a turn_action__ref)) turn_action 
  (turn_action__content a))

(define-fun dynamic_invariant1 ((temp___expr_1926 Int)
  (temp___is_init_1923 Bool) (temp___skip_constant_1924 Bool)
  (temp___do_toplevel_1925 Bool)) Bool (=>
                                       (or (= temp___is_init_1923 true)
                                       (<= 0 3)) (in_range2
                                       temp___expr_1926)))

(define-fun dynamic_invariant2 ((temp___expr_2056 Int)
  (temp___is_init_2053 Bool) (temp___skip_constant_2054 Bool)
  (temp___do_toplevel_2055 Bool)) Bool (=>
                                       (or (= temp___is_init_2053 true)
                                       (<= 3 4)) (in_range5
                                       temp___expr_2056)))

(declare-fun turn_direction (Int Int) Int)

(declare-fun turn_direction__function_guard (Int Int Int) Bool)

;; turn_direction__post_axiom
  (assert
  (forall ((d Int) (t Int))
  (! (=>
     (and (dynamic_invariant1 d true true true) (dynamic_invariant2 t true
     true true))
     (let ((result (turn_direction d t)))
     (=> (turn_direction__function_guard result d t) (dynamic_invariant1
     result true false true)))) :pattern ((turn_direction d t)) )))

;; turn_direction__def_axiom
  (assert
  (forall ((d Int) (t Int))
  (! (=>
     (and
     (and (dynamic_invariant1 d true true true) (dynamic_invariant2 t true
     true true)) (turn_direction__function_guard (turn_direction d t) d t))
     (= (turn_direction d t) (ite (= t 3) (ite (= d 0) 3 (- d 1))
                             (ite (= d 3) 0 (+ d 1))))) :pattern ((turn_direction
                                                                  d t)) )))

(declare-fun move_is_possible (us_rep Int) Bool)

(declare-fun move_is_possible__function_guard (Bool us_rep Int) Bool)

;; move_is_possible__post_axiom
  (assert true)

;; move_is_possible__def_axiom
  (assert
  (forall ((p us_rep))
  (forall ((a Int))
  (! (=> (move_is_possible__function_guard (move_is_possible p a) p a)
     (= (= (move_is_possible p a) true)
     (ite (= a 0) (in_range
     (- (to_rep (rec__patris__piece__x (us_split_fields1 p))) 1))
     (ite (= a 1) (in_range
     (+ (to_rep (rec__patris__piece__x (us_split_fields1 p))) 1))
     (=> (= a 2) (in_range1
     (+ (to_rep1 (rec__patris__piece__y (us_split_fields1 p))) 1))))))) :pattern (
  (move_is_possible p a)) ))))

(declare-fun p () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun a () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant3 ((temp___expr_1861 Int)
  (temp___is_init_1858 Bool) (temp___skip_constant_1859 Bool)
  (temp___do_toplevel_1860 Bool)) Bool (=>
                                       (or (= temp___is_init_1858 true)
                                       (<= 1 7)) (in_range3
                                       temp___expr_1861)))

(define-fun dynamic_invariant4 ((temp___expr_1914 Int)
  (temp___is_init_1911 Bool) (temp___skip_constant_1912 Bool)
  (temp___do_toplevel_1913 Bool)) Bool (=>
                                       (or (= temp___is_init_1911 true)
                                       (<= (- 1) 9)) (in_range
                                       temp___expr_1914)))

(define-fun dynamic_invariant5 ((temp___expr_1920 Int)
  (temp___is_init_1917 Bool) (temp___skip_constant_1918 Bool)
  (temp___do_toplevel_1919 Bool)) Bool (=>
                                       (or (= temp___is_init_1917 true)
                                       (<= (- 1) 19)) (in_range1
                                       temp___expr_1920)))

;; H
  (assert (in_range4 a))

;; H
  (assert (move_is_possible__function_guard (move_is_possible p a) p a))

;; H
  (assert (= (move_is_possible p a) true))

;; H
  (assert (not (= a 0)))

;; H
  (assert (not (= a 1)))

;; H
  (assert (not (= a 2)))

(assert
;; WP_parameter_def
 ;; File "patris.ads", line 72, characters 0-0
  (not (in_range5 a)))
(check-sat)
