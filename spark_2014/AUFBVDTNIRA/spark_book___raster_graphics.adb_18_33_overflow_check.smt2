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

(declare-sort tcoordinate_typeB 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (tcoordinate_typeB tcoordinate_typeB) Bool)

(declare-fun dummy () tcoordinate_typeB)

(declare-datatypes ()
((tcoordinate_typeB__ref
 (mk_tcoordinate_typeB__ref (tcoordinate_typeB__content tcoordinate_typeB)))))
(define-fun tcoordinate_typeB__ref___projection ((a tcoordinate_typeB__ref)) tcoordinate_typeB 
  (tcoordinate_typeB__content a))

(declare-sort coordinate_type 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 100)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (coordinate_type coordinate_type) Bool)

(declare-fun dummy1 () coordinate_type)

(declare-datatypes ()
((coordinate_type__ref
 (mk_coordinate_type__ref (coordinate_type__content coordinate_type)))))
(define-fun coordinate_type__ref___projection ((a coordinate_type__ref)) coordinate_type 
  (coordinate_type__content a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 1 100)) (in_range1
                                      temp___expr_135)))

(declare-fun to_rep (coordinate_type) Int)

(declare-fun of_rep (Int) coordinate_type)

;; inversion_axiom
  (assert
  (forall ((x coordinate_type))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x coordinate_type)) (! (in_range1
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
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

(define-fun bool_eq2 ((a us_rep)
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

(declare-fun user_eq2 (us_rep us_rep) Bool)

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

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((point__ref (mk_point__ref (point__content us_rep)))))
(define-fun point__ref___projection ((a point__ref)) us_rep (point__content
                                                            a))

(declare-sort status_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (status_type status_type) Bool)

(declare-fun dummy3 () status_type)

(declare-datatypes ()
((status_type__ref (mk_status_type__ref (status_type__content status_type)))))
(define-fun status_type__ref___projection ((a status_type__ref)) status_type 
  (status_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_155 Int)
  (temp___is_init_152 Bool) (temp___skip_constant_153 Bool)
  (temp___do_toplevel_154 Bool)) Bool (=>
                                      (or (= temp___is_init_152 true)
                                      (<= 0 2)) (in_range2 temp___expr_155)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun a () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun b () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun status () Int)

(declare-fun delta_x () Int)

(declare-fun delta_y () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun result () Int)

(declare-fun delta_x1 () Int)

(declare-fun result1 () Int)

(declare-fun delta_y1 () Int)

;; H
  (assert (=> (<= 0 2) (in_range2 status)))

;; H
  (assert
  (and
  (= o (abs (- (to_rep (rec__raster_graphics__point__x (us_split_fields1 a))) 
  (to_rep (rec__raster_graphics__point__x (us_split_fields1 b)))))) (in_range
  (abs (- (to_rep (rec__raster_graphics__point__x (us_split_fields1 a))) 
  (to_rep (rec__raster_graphics__point__x (us_split_fields1 b))))))))

;; H
  (assert (and (= o1 o) (in_range1 o)))

;; H
  (assert (= result delta_x))

;; H
  (assert (= delta_x1 o1))

;; H
  (assert (in_range1 delta_x1))

;; H
  (assert
  (and
  (= o2 (abs (- (to_rep
                (rec__raster_graphics__point__y (us_split_fields1 a))) 
  (to_rep (rec__raster_graphics__point__y (us_split_fields1 b)))))) (in_range
  (abs (- (to_rep (rec__raster_graphics__point__y (us_split_fields1 a))) 
  (to_rep (rec__raster_graphics__point__y (us_split_fields1 b))))))))

;; H
  (assert (and (= o3 o2) (in_range1 o2)))

;; H
  (assert (= result1 delta_y))

;; H
  (assert (= delta_y1 o3))

;; H
  (assert (in_range1 delta_y1))

(assert
;; WP_parameter_def
 ;; File "raster_graphics.adb", line 4, characters 0-0
  (not (in_range (* delta_y1 delta_y1))))
(check-sat)
