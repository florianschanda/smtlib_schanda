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

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

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
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(declare-sort coordinate_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (coordinate_type coordinate_type) Bool)

(declare-fun dummy2 () coordinate_type)

(declare-datatypes ()
((coordinate_type__ref
 (mk_coordinate_type__ref (coordinate_type__content coordinate_type)))))
(define-fun coordinate_type__ref___projection ((a coordinate_type__ref)) coordinate_type 
  (coordinate_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 1 100)) (in_range2
                                      temp___expr_135)))

(declare-fun to_rep (coordinate_type) Int)

(declare-fun of_rep (Int) coordinate_type)

;; inversion_axiom
  (assert
  (forall ((x coordinate_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x coordinate_type)) (! (in_range2
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__raster_graphics__point__x coordinate_type)(rec__raster_graphics__point__y coordinate_type)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) coordinate_type 
  (rec__raster_graphics__point__x a))

(define-fun us_split_fields_Y__projection ((a us_split_fields)) coordinate_type 
  (rec__raster_graphics__point__y a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__raster_graphics__point__x
                           (us_split_fields1 a))) (to_rep
                                                  (rec__raster_graphics__point__x
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__raster_graphics__point__y
                           (us_split_fields1 a))) (to_rep
                                                  (rec__raster_graphics__point__y
                                                  (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

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

(declare-fun raster_graphics__point__x__first__bit () Int)

(declare-fun raster_graphics__point__x__last__bit () Int)

(declare-fun raster_graphics__point__x__position () Int)

;; raster_graphics__point__x__first__bit_axiom
  (assert (<= 0 raster_graphics__point__x__first__bit))

;; raster_graphics__point__x__last__bit_axiom
  (assert
  (< raster_graphics__point__x__first__bit raster_graphics__point__x__last__bit))

;; raster_graphics__point__x__position_axiom
  (assert (<= 0 raster_graphics__point__x__position))

(declare-fun raster_graphics__point__y__first__bit () Int)

(declare-fun raster_graphics__point__y__last__bit () Int)

(declare-fun raster_graphics__point__y__position () Int)

;; raster_graphics__point__y__first__bit_axiom
  (assert (<= 0 raster_graphics__point__y__first__bit))

;; raster_graphics__point__y__last__bit_axiom
  (assert
  (< raster_graphics__point__y__first__bit raster_graphics__point__y__last__bit))

;; raster_graphics__point__y__position_axiom
  (assert (<= 0 raster_graphics__point__y__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((point__ref (mk_point__ref (point__content us_rep)))))
(define-fun point__ref___projection ((a point__ref)) us_rep (point__content
                                                            a))

(declare-sort line_algorithm_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (line_algorithm_type line_algorithm_type) Bool)

(declare-fun dummy4 () line_algorithm_type)

(declare-datatypes ()
((line_algorithm_type__ref
 (mk_line_algorithm_type__ref
 (line_algorithm_type__content line_algorithm_type)))))
(define-fun line_algorithm_type__ref___projection ((a line_algorithm_type__ref)) line_algorithm_type 
  (line_algorithm_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_149 Int)
  (temp___is_init_146 Bool) (temp___skip_constant_147 Bool)
  (temp___do_toplevel_148 Bool)) Bool (=>
                                      (or (= temp___is_init_146 true)
                                      (<= 0 1)) (in_range3 temp___expr_149)))

(declare-sort status_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (status_type status_type) Bool)

(declare-fun dummy5 () status_type)

(declare-datatypes ()
((status_type__ref (mk_status_type__ref (status_type__content status_type)))))
(define-fun status_type__ref___projection ((a status_type__ref)) status_type 
  (status_type__content a))

(define-fun dynamic_invariant3 ((temp___expr_155 Int)
  (temp___is_init_152 Bool) (temp___skip_constant_153 Bool)
  (temp___do_toplevel_154 Bool)) Bool (=>
                                      (or (= temp___is_init_152 true)
                                      (<= 0 2)) (in_range4 temp___expr_155)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun a () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun b () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun min_distance () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

;; min_distance__def_axiom
  (assert (= min_distance 2))

(declare-fun status () Int)

(declare-fun line_algorithm () Int)

(declare-fun line_count () Int)

(declare-fun status1 () Int)

;; H
  (assert (=> (<= 0 2) (in_range4 status)))

;; H
  (assert (in_range3 line_algorithm))

;; H
  (assert (in_range1 line_count))

;; H
  (assert (in_range2 min_distance))

;; H
  (assert (in_range4 status1))

;; H
  (assert (= status1 0))

;; H
  (assert (= line_algorithm 0))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (in_range (+ line_count 1))))
(check-sat)
