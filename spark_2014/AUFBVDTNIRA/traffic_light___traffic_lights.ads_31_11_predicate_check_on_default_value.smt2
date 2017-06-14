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

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq (us_rep us_rep) Bool)

(declare-fun user_eq (us_rep us_rep) Bool)

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

(declare-fun dummy () us_rep)

(declare-datatypes () ((time__ref (mk_time__ref (time__content us_rep)))))
(define-fun time__ref___projection ((a time__ref)) us_rep (time__content a))

(declare-fun time_first () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__traffic_lights__lights_state__vehicles_green Bool)(rec__traffic_lights__lights_state__vehicles_yellow Bool)(rec__traffic_lights__lights_state__vehicles_red Bool)(rec__traffic_lights__lights_state__pedestrians_green Bool)(rec__traffic_lights__lights_state__pedestrians_red Bool)))))
(define-fun us_split_fields_Vehicles_Green__projection ((a us_split_fields)) Bool 
  (rec__traffic_lights__lights_state__vehicles_green a))

(define-fun us_split_fields_Vehicles_Yellow__projection ((a us_split_fields)) Bool 
  (rec__traffic_lights__lights_state__vehicles_yellow a))

(define-fun us_split_fields_Vehicles_Red__projection ((a us_split_fields)) Bool 
  (rec__traffic_lights__lights_state__vehicles_red a))

(define-fun us_split_fields_Pedestrians_Green__projection ((a us_split_fields)) Bool 
  (rec__traffic_lights__lights_state__pedestrians_green a))

(define-fun us_split_fields_Pedestrians_Red__projection ((a us_split_fields)) Bool 
  (rec__traffic_lights__lights_state__pedestrians_red a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_27__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep1 (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_27__projection ((a us_rep1)) us_split_fields (us_split_fields1
                                                                a))

(define-fun bool_eq1 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (and
                         (and
                         (and
                         (= (rec__traffic_lights__lights_state__vehicles_green
                            (us_split_fields1 a)) (rec__traffic_lights__lights_state__vehicles_green
                                                  (us_split_fields1 b)))
                         (= (rec__traffic_lights__lights_state__vehicles_yellow
                            (us_split_fields1 a)) (rec__traffic_lights__lights_state__vehicles_yellow
                                                  (us_split_fields1 b))))
                         (= (rec__traffic_lights__lights_state__vehicles_red
                            (us_split_fields1 a)) (rec__traffic_lights__lights_state__vehicles_red
                                                  (us_split_fields1 b))))
                         (= (rec__traffic_lights__lights_state__pedestrians_green
                            (us_split_fields1 a)) (rec__traffic_lights__lights_state__pedestrians_green
                                                  (us_split_fields1 b))))
                         (= (rec__traffic_lights__lights_state__pedestrians_red
                            (us_split_fields1 a)) (rec__traffic_lights__lights_state__pedestrians_red
                                                  (us_split_fields1 b))))
                    true false))

(declare-fun user_eq1 (us_rep1 us_rep1) Bool)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep1) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))

(declare-fun traffic_lights__lights_state__vehicles_green__first__bit () Int)

(declare-fun traffic_lights__lights_state__vehicles_green__last__bit () Int)

(declare-fun traffic_lights__lights_state__vehicles_green__position () Int)

;; traffic_lights__lights_state__vehicles_green__first__bit_axiom
  (assert (<= 0 traffic_lights__lights_state__vehicles_green__first__bit))

;; traffic_lights__lights_state__vehicles_green__last__bit_axiom
  (assert
  (< traffic_lights__lights_state__vehicles_green__first__bit traffic_lights__lights_state__vehicles_green__last__bit))

;; traffic_lights__lights_state__vehicles_green__position_axiom
  (assert (<= 0 traffic_lights__lights_state__vehicles_green__position))

(declare-fun traffic_lights__lights_state__vehicles_yellow__first__bit () Int)

(declare-fun traffic_lights__lights_state__vehicles_yellow__last__bit () Int)

(declare-fun traffic_lights__lights_state__vehicles_yellow__position () Int)

;; traffic_lights__lights_state__vehicles_yellow__first__bit_axiom
  (assert (<= 0 traffic_lights__lights_state__vehicles_yellow__first__bit))

;; traffic_lights__lights_state__vehicles_yellow__last__bit_axiom
  (assert
  (< traffic_lights__lights_state__vehicles_yellow__first__bit traffic_lights__lights_state__vehicles_yellow__last__bit))

;; traffic_lights__lights_state__vehicles_yellow__position_axiom
  (assert (<= 0 traffic_lights__lights_state__vehicles_yellow__position))

(declare-fun traffic_lights__lights_state__vehicles_red__first__bit () Int)

(declare-fun traffic_lights__lights_state__vehicles_red__last__bit () Int)

(declare-fun traffic_lights__lights_state__vehicles_red__position () Int)

;; traffic_lights__lights_state__vehicles_red__first__bit_axiom
  (assert (<= 0 traffic_lights__lights_state__vehicles_red__first__bit))

;; traffic_lights__lights_state__vehicles_red__last__bit_axiom
  (assert
  (< traffic_lights__lights_state__vehicles_red__first__bit traffic_lights__lights_state__vehicles_red__last__bit))

;; traffic_lights__lights_state__vehicles_red__position_axiom
  (assert (<= 0 traffic_lights__lights_state__vehicles_red__position))

(declare-fun traffic_lights__lights_state__pedestrians_green__first__bit () Int)

(declare-fun traffic_lights__lights_state__pedestrians_green__last__bit () Int)

(declare-fun traffic_lights__lights_state__pedestrians_green__position () Int)

;; traffic_lights__lights_state__pedestrians_green__first__bit_axiom
  (assert (<= 0 traffic_lights__lights_state__pedestrians_green__first__bit))

;; traffic_lights__lights_state__pedestrians_green__last__bit_axiom
  (assert
  (< traffic_lights__lights_state__pedestrians_green__first__bit traffic_lights__lights_state__pedestrians_green__last__bit))

;; traffic_lights__lights_state__pedestrians_green__position_axiom
  (assert (<= 0 traffic_lights__lights_state__pedestrians_green__position))

(declare-fun traffic_lights__lights_state__pedestrians_red__first__bit () Int)

(declare-fun traffic_lights__lights_state__pedestrians_red__last__bit () Int)

(declare-fun traffic_lights__lights_state__pedestrians_red__position () Int)

;; traffic_lights__lights_state__pedestrians_red__first__bit_axiom
  (assert (<= 0 traffic_lights__lights_state__pedestrians_red__first__bit))

;; traffic_lights__lights_state__pedestrians_red__last__bit_axiom
  (assert
  (< traffic_lights__lights_state__pedestrians_red__first__bit traffic_lights__lights_state__pedestrians_red__last__bit))

;; traffic_lights__lights_state__pedestrians_red__position_axiom
  (assert (<= 0 traffic_lights__lights_state__pedestrians_red__position))

(declare-fun dummy1 () us_rep1)

(declare-datatypes ()
((lights_state__ref (mk_lights_state__ref (lights_state__content us_rep1)))))
(define-fun lights_state__ref___projection ((a lights_state__ref)) us_rep1 
  (lights_state__content a))

(declare-datatypes ()
((valid_lights_state__ref
 (mk_valid_lights_state__ref (valid_lights_state__content us_rep1)))))
(define-fun valid_lights_state__ref___projection ((a valid_lights_state__ref)) us_rep1 
  (valid_lights_state__content a))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__traffic_lights__traffic_lightT__last_state_change us_rep)(rec__traffic_lights__traffic_lightT__change_state Bool)(rec__traffic_lights__traffic_lightT__lights us_rep1)))))
(define-fun us_split_fields_Last_State_Change__projection ((a us_split_fields2)) us_rep 
  (rec__traffic_lights__traffic_lightT__last_state_change a))

(define-fun us_split_fields_Change_State__projection ((a us_split_fields2)) Bool 
  (rec__traffic_lights__traffic_lightT__change_state a))

(define-fun us_split_fields_Lights__projection ((a us_split_fields2)) us_rep1 
  (rec__traffic_lights__traffic_lightT__lights a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_28__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep2 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_28__projection ((a us_rep2)) us_split_fields2 (us_split_fields3
                                                                 a))

(declare-fun user_eq2 (us_rep2 us_rep2) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep2) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))

(declare-fun traffic_lights__traffic_lightT__last_state_change__first__bit () Int)

(declare-fun traffic_lights__traffic_lightT__last_state_change__last__bit () Int)

(declare-fun traffic_lights__traffic_lightT__last_state_change__position () Int)

;; traffic_lights__traffic_lightT__last_state_change__first__bit_axiom
  (assert
  (<= 0 traffic_lights__traffic_lightT__last_state_change__first__bit))

;; traffic_lights__traffic_lightT__last_state_change__last__bit_axiom
  (assert
  (< traffic_lights__traffic_lightT__last_state_change__first__bit traffic_lights__traffic_lightT__last_state_change__last__bit))

;; traffic_lights__traffic_lightT__last_state_change__position_axiom
  (assert (<= 0 traffic_lights__traffic_lightT__last_state_change__position))

(declare-fun traffic_lights__traffic_lightT__change_state__first__bit () Int)

(declare-fun traffic_lights__traffic_lightT__change_state__last__bit () Int)

(declare-fun traffic_lights__traffic_lightT__change_state__position () Int)

;; traffic_lights__traffic_lightT__change_state__first__bit_axiom
  (assert (<= 0 traffic_lights__traffic_lightT__change_state__first__bit))

;; traffic_lights__traffic_lightT__change_state__last__bit_axiom
  (assert
  (< traffic_lights__traffic_lightT__change_state__first__bit traffic_lights__traffic_lightT__change_state__last__bit))

;; traffic_lights__traffic_lightT__change_state__position_axiom
  (assert (<= 0 traffic_lights__traffic_lightT__change_state__position))

(declare-fun traffic_lights__traffic_lightT__lights__first__bit () Int)

(declare-fun traffic_lights__traffic_lightT__lights__last__bit () Int)

(declare-fun traffic_lights__traffic_lightT__lights__position () Int)

;; traffic_lights__traffic_lightT__lights__first__bit_axiom
  (assert (<= 0 traffic_lights__traffic_lightT__lights__first__bit))

;; traffic_lights__traffic_lightT__lights__last__bit_axiom
  (assert
  (< traffic_lights__traffic_lightT__lights__first__bit traffic_lights__traffic_lightT__lights__last__bit))

;; traffic_lights__traffic_lightT__lights__position_axiom
  (assert (<= 0 traffic_lights__traffic_lightT__lights__position))

(declare-datatypes ()
((traffic_lightT__ref
 (mk_traffic_lightT__ref (traffic_lightT__content us_rep2)))))
(define-fun traffic_lightT__ref___projection ((a traffic_lightT__ref)) us_rep2 
  (traffic_lightT__content a))

(declare-fun valid_combination (us_rep1) Bool)

(declare-fun valid_combination__function_guard (Bool us_rep1) Bool)

;; temp___result_1480_def
  (assert
  (forall ((temp___1479 us_rep1)) (valid_combination__function_guard
  (valid_combination temp___1479) temp___1479)))

(define-fun dynamic_invariant ((temp___expr_1478 us_rep1)
  (temp___is_init_1475 Bool) (temp___skip_constant_1476 Bool)
  (temp___do_toplevel_1477 Bool)) Bool (=> (= temp___do_toplevel_1477 true)
                                       (=> (= temp___is_init_1475 true)
                                       (= (valid_combination
                                          temp___expr_1478) true))))

(define-fun default_initial_assumption ((temp___expr_1481 us_rep1)
  (temp___skip_top_level_1482 Bool)) Bool (and
                                          (and
                                          (and
                                          (and
                                          (= (rec__traffic_lights__lights_state__vehicles_green
                                             (us_split_fields1
                                             temp___expr_1481)) (of_int 0))
                                          (= (rec__traffic_lights__lights_state__vehicles_yellow
                                             (us_split_fields1
                                             temp___expr_1481)) (of_int 0)))
                                          (= (rec__traffic_lights__lights_state__vehicles_red
                                             (us_split_fields1
                                             temp___expr_1481)) (of_int 1)))
                                          (= (rec__traffic_lights__lights_state__pedestrians_green
                                             (us_split_fields1
                                             temp___expr_1481)) (of_int 1)))
                                          (= (rec__traffic_lights__lights_state__pedestrians_red
                                             (us_split_fields1
                                             temp___expr_1481)) (of_int 0))))

;; temp___result_1485_def
  (assert
  (forall ((temp___1484 us_rep1)) (valid_combination__function_guard
  (valid_combination temp___1484) temp___1484)))

(define-fun dynamic_predicate ((temp___1483 us_rep1)) Bool (= (valid_combination
                                                              temp___1483) true))

(define-fun default_initial_assumption1 ((temp___expr_1473 us_rep1)
  (temp___skip_top_level_1474 Bool)) Bool (and
                                          (and
                                          (and
                                          (and
                                          (= (rec__traffic_lights__lights_state__vehicles_green
                                             (us_split_fields1
                                             temp___expr_1473)) (of_int 0))
                                          (= (rec__traffic_lights__lights_state__vehicles_yellow
                                             (us_split_fields1
                                             temp___expr_1473)) (of_int 0)))
                                          (= (rec__traffic_lights__lights_state__vehicles_red
                                             (us_split_fields1
                                             temp___expr_1473)) (of_int 1)))
                                          (= (rec__traffic_lights__lights_state__pedestrians_green
                                             (us_split_fields1
                                             temp___expr_1473)) (of_int 1)))
                                          (= (rec__traffic_lights__lights_state__pedestrians_red
                                             (us_split_fields1
                                             temp___expr_1473)) (of_int 0))))

;; valid_combination__post_axiom
  (assert true)

;; valid_combination__def_axiom
  (assert
  (forall ((ls us_rep1))
  (! (=> (valid_combination__function_guard (valid_combination ls) ls)
     (= (= (valid_combination ls) true)
     (ite (= (rec__traffic_lights__lights_state__vehicles_green
             (us_split_fields1 ls)) true)
     (and
     (and
     (and
     (not
     (= (rec__traffic_lights__lights_state__vehicles_yellow
        (us_split_fields1 ls)) true))
     (not
     (= (rec__traffic_lights__lights_state__vehicles_red
        (us_split_fields1 ls)) true)))
     (not
     (= (rec__traffic_lights__lights_state__pedestrians_green
        (us_split_fields1 ls)) true)))
     (= (rec__traffic_lights__lights_state__pedestrians_red
        (us_split_fields1 ls)) true))
     (ite (= (rec__traffic_lights__lights_state__pedestrians_green
             (us_split_fields1 ls)) true)
     (and
     (and
     (and
     (not
     (= (rec__traffic_lights__lights_state__vehicles_green
        (us_split_fields1 ls)) true))
     (not
     (= (rec__traffic_lights__lights_state__vehicles_yellow
        (us_split_fields1 ls)) true)))
     (= (rec__traffic_lights__lights_state__vehicles_red
        (us_split_fields1 ls)) true))
     (not
     (= (rec__traffic_lights__lights_state__pedestrians_red
        (us_split_fields1 ls)) true)))
     (and
     (not
     (= (rec__traffic_lights__lights_state__pedestrians_green
        (us_split_fields1 ls)) true))
     (= (rec__traffic_lights__lights_state__pedestrians_red
        (us_split_fields1 ls)) true)))))) :pattern ((valid_combination ls)) )))

;; temp___result_1491_def
  (assert
  (forall ((temp___1490 us_rep1)) (valid_combination__function_guard
  (valid_combination temp___1490) temp___1490)))

(define-fun dynamic_invariant1 ((temp___expr_1489 us_rep2)
  (temp___is_init_1486 Bool) (temp___skip_constant_1487 Bool)
  (temp___do_toplevel_1488 Bool)) Bool (= (valid_combination
                                          (rec__traffic_lights__traffic_lightT__lights
                                          (us_split_fields3 temp___expr_1489))) true))

(declare-fun self__ () us_rep2)

(declare-fun temp___1508 () Bool)

(declare-fun temp___15081 () Bool)

(declare-fun temp___15082 () Bool)

(declare-fun temp___15083 () Bool)

(declare-fun temp___15084 () Bool)

;; H
  (assert
  (and
  (and
  (and (and (= temp___1508 (of_int 0)) (= temp___15081 (of_int 0)))
  (= temp___15082 (of_int 1))) (= temp___15083 (of_int 1)))
  (= temp___15084 (of_int 0))))

(assert
;; WP_parameter_def
 ;; File "traffic_lights.ads", line 33, characters 0-0
  (not (dynamic_predicate
  (mk___rep
  (mk___split_fields temp___1508 temp___15081 temp___15082 temp___15083
  temp___15084)))))
(check-sat)
