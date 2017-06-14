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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-sort coordinate_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 100) x) (<= x 100)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (coordinate_type coordinate_type) Bool)

(declare-fun dummy1 () coordinate_type)

(declare-datatypes ()
((coordinate_type__ref
 (mk_coordinate_type__ref (coordinate_type__content coordinate_type)))))
(define-fun coordinate_type__ref___projection ((a coordinate_type__ref)) coordinate_type 
  (coordinate_type__content a))

(define-fun dynamic_invariant1 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= (- 100) 100)) (in_range2
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

(declare-sort radius_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 10)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (radius_type radius_type) Bool)

(declare-fun dummy2 () radius_type)

(declare-datatypes ()
((radius_type__ref (mk_radius_type__ref (radius_type__content radius_type)))))
(define-fun radius_type__ref___projection ((a radius_type__ref)) radius_type 
  (radius_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 10)) (in_range3 temp___expr_141)))

(declare-fun to_rep1 (radius_type) Int)

(declare-fun of_rep1 (Int) radius_type)

;; inversion_axiom
  (assert
  (forall ((x radius_type))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x radius_type)) (! (in_range3
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__shapes5__circle__center_x coordinate_type)(rec__shapes5__circle__center_y coordinate_type)(rec__shapes5__circle__radius radius_type)))))
(define-fun us_split_fields_Center_X__projection ((a us_split_fields)) coordinate_type 
  (rec__shapes5__circle__center_x a))

(define-fun us_split_fields_Center_Y__projection ((a us_split_fields)) coordinate_type 
  (rec__shapes5__circle__center_y a))

(define-fun us_split_fields_Radius__projection ((a us_split_fields)) radius_type 
  (rec__shapes5__circle__radius a))

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
                        (and
                        (= (to_rep
                           (rec__shapes5__circle__center_x
                           (us_split_fields1 a))) (to_rep
                                                  (rec__shapes5__circle__center_x
                                                  (us_split_fields1 b))))
                        (= (to_rep
                           (rec__shapes5__circle__center_y
                           (us_split_fields1 a))) (to_rep
                                                  (rec__shapes5__circle__center_y
                                                  (us_split_fields1 b)))))
                        (= (to_rep1
                           (rec__shapes5__circle__radius
                           (us_split_fields1 a))) (to_rep1
                                                  (rec__shapes5__circle__radius
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

(declare-fun shapes5__circle__center_x__first__bit () Int)

(declare-fun shapes5__circle__center_x__last__bit () Int)

(declare-fun shapes5__circle__center_x__position () Int)

;; shapes5__circle__center_x__first__bit_axiom
  (assert (<= 0 shapes5__circle__center_x__first__bit))

;; shapes5__circle__center_x__last__bit_axiom
  (assert
  (< shapes5__circle__center_x__first__bit shapes5__circle__center_x__last__bit))

;; shapes5__circle__center_x__position_axiom
  (assert (<= 0 shapes5__circle__center_x__position))

(declare-fun shapes5__circle__center_y__first__bit () Int)

(declare-fun shapes5__circle__center_y__last__bit () Int)

(declare-fun shapes5__circle__center_y__position () Int)

;; shapes5__circle__center_y__first__bit_axiom
  (assert (<= 0 shapes5__circle__center_y__first__bit))

;; shapes5__circle__center_y__last__bit_axiom
  (assert
  (< shapes5__circle__center_y__first__bit shapes5__circle__center_y__last__bit))

;; shapes5__circle__center_y__position_axiom
  (assert (<= 0 shapes5__circle__center_y__position))

(declare-fun shapes5__circle__radius__first__bit () Int)

(declare-fun shapes5__circle__radius__last__bit () Int)

(declare-fun shapes5__circle__radius__position () Int)

;; shapes5__circle__radius__first__bit_axiom
  (assert (<= 0 shapes5__circle__radius__first__bit))

;; shapes5__circle__radius__last__bit_axiom
  (assert
  (< shapes5__circle__radius__first__bit shapes5__circle__radius__last__bit))

;; shapes5__circle__radius__position_axiom
  (assert (<= 0 shapes5__circle__radius__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((circle__ref (mk_circle__ref (circle__content us_rep)))))
(define-fun circle__ref___projection ((a circle__ref)) us_rep (circle__content
                                                              a))

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun y () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun radius () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun in_bounds (us_rep Int) Bool)

(declare-fun in_bounds__function_guard (Bool us_rep Int) Bool)

;; in_bounds__post_axiom
  (assert true)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun wild_man () Int)

(declare-fun r () Int)

(declare-fun shapes5__make_circle__result () coordinate_type)

(declare-fun shapes5__make_circle__result1 () coordinate_type)

(declare-fun shapes5__make_circle__result2 () radius_type)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () radius_type)

(declare-fun o5 () coordinate_type)

(declare-fun o6 () coordinate_type)

(declare-fun o7 () coordinate_type)

(declare-fun o8 () coordinate_type)

(declare-fun o9 () radius_type)

(declare-fun o10 () coordinate_type)

(declare-fun o11 () coordinate_type)

(declare-fun o12 () radius_type)

(declare-fun result () Int)

(declare-fun r1 () Int)

(declare-fun result1 () Int)

(declare-fun r2 () Int)

(declare-fun result2 () Int)

(declare-fun r3 () Int)

(declare-fun result3 () Int)

(declare-fun r4 () Int)

(declare-fun result4 () Int)

(declare-fun r5 () Int)

(declare-fun result5 () coordinate_type)

(declare-fun result6 () coordinate_type)

(declare-fun result7 () radius_type)

(declare-fun shapes5__make_circle__result3 () coordinate_type)

(declare-fun shapes5__make_circle__result4 () coordinate_type)

(declare-fun shapes5__make_circle__result5 () radius_type)

(declare-fun shapes5__make_circle__result6 () coordinate_type)

(declare-fun shapes5__make_circle__result7 () coordinate_type)

(declare-fun shapes5__make_circle__result8 () radius_type)

(declare-fun shapes5__make_circle__result9 () us_rep)

(declare-fun r6 () int__ref)

(declare-fun shapes5__make_circle__result10 () circle__ref)

(declare-fun r7 () Int)

(declare-fun shapes5__make_circle__result11 () us_rep)

(define-fun shapes5__make_circle__result12 () us_rep (mk___rep
                                                     (mk___split_fields
                                                     shapes5__make_circle__result3
                                                     shapes5__make_circle__result4
                                                     shapes5__make_circle__result5)))

;; H
  (assert (in_range2 x))

;; H
  (assert (in_range2 y))

;; H
  (assert (in_range3 radius))

;; H
  (assert (in_range1 wild_man))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref r)))

;; H
  (assert (= r1 radius))

;; H
  (assert (in_range3 r1))

;; H
  (assert (=> (<= (- 100 x) r1) (and (= o (- 100 x)) (in_range3 (- 100 x)))))

;; H
  (assert (=> (<= (- 100 x) r1) (= r1 result1)))

;; H
  (assert (=> (<= (- 100 x) r1) (= r2 o)))

;; H
  (assert (=> (not (<= (- 100 x) r1)) (= r2 r1)))

;; H
  (assert
  (=> (<= (- x (- 100)) r2)
  (and (= o1 (- x (- 100))) (in_range3 (- x (- 100))))))

;; H
  (assert (=> (<= (- x (- 100)) r2) (= r2 result2)))

;; H
  (assert (=> (<= (- x (- 100)) r2) (= r3 o1)))

;; H
  (assert (=> (not (<= (- x (- 100)) r2)) (= r3 r2)))

;; H
  (assert
  (=> (<= (- 100 y) r3) (and (= o2 (- 100 y)) (in_range3 (- 100 y)))))

;; H
  (assert (=> (<= (- 100 y) r3) (= r3 result3)))

;; H
  (assert (=> (<= (- 100 y) r3) (= r4 o2)))

;; H
  (assert (=> (not (<= (- 100 y) r3)) (= r4 r3)))

;; H
  (assert
  (=> (<= (- y (- 100)) r4)
  (and (= o3 (- y (- 100))) (in_range3 (- y (- 100))))))

;; H
  (assert (=> (<= (- y (- 100)) r4) (= result4 r4)))

;; H
  (assert (=> (<= (- y (- 100)) r4) (= r5 o3)))

;; H
  (assert (=> (not (<= (- y (- 100)) r4)) (= r5 r4)))

;; H
  (assert (= shapes5__make_circle__result6 shapes5__make_circle__result3))

;; H
  (assert (= shapes5__make_circle__result7 shapes5__make_circle__result4))

;; H
  (assert (= shapes5__make_circle__result8 shapes5__make_circle__result5))

;; H
  (assert (= shapes5__make_circle__result9 shapes5__make_circle__result12))

;; H
  (assert (= (to_rep1 o4) r5))

;; H
  (assert (= (to_rep o5) y))

;; H
  (assert (= (to_rep o6) x))

;; H
  (assert (= o6 o7))

;; H
  (assert (= o5 o8))

;; H
  (assert (= o4 o9))

;; H
  (assert (= o10 o7))

;; H
  (assert (= o11 o8))

;; H
  (assert (= o12 o9))

;; H
  (assert (= result5 shapes5__make_circle__result))

;; H
  (assert (= result6 shapes5__make_circle__result1))

;; H
  (assert (= result7 shapes5__make_circle__result2))

;; H
  (assert
  (= shapes5__make_circle__result12 (mk___rep
                                    (mk___split_fields o10 o11 o12))))

;; H
  (assert
  (= shapes5__make_circle__result10 (mk_circle__ref
                                    (mk___rep
                                    (mk___split_fields
                                    shapes5__make_circle__result6
                                    shapes5__make_circle__result7
                                    shapes5__make_circle__result8)))))

;; H
  (assert (= r6 (mk_int__ref r5)))

;; H
  (assert (= shapes5__make_circle__result11 shapes5__make_circle__result9))

;; H
  (assert (= r7 r5))

(assert
;; WP_parameter_def
 ;; File "shapes5.ads", line 28, characters 0-0
  (not (in_range2
  (+ (to_rep
     (rec__shapes5__circle__center_x
     (us_split_fields1 (circle__content shapes5__make_circle__result10)))) 
  (to_rep1
  (rec__shapes5__circle__radius
  (us_split_fields1 (circle__content shapes5__make_circle__result10))))))))
(check-sat)
