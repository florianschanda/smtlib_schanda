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

(declare-sort tcount_typeB 0)

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy () tcount_typeB)

(declare-datatypes ()
((tcount_typeB__ref
 (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB 
  (tcount_typeB__content a))

(declare-sort index_type 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (index_type index_type) Bool)

(declare-fun dummy1 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant ((temp___expr_408 Int)
  (temp___is_init_405 Bool) (temp___skip_constant_406 Bool)
  (temp___do_toplevel_407 Bool)) Bool (=>
                                      (or (= temp___is_init_405 true)
                                      (<= 1 2147483647)) (in_range2
                                      temp___expr_408)))

(declare-sort extended_index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (extended_index extended_index) Bool)

(declare-fun dummy2 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant1 ((temp___expr_420 Int)
  (temp___is_init_417 Bool) (temp___skip_constant_418 Bool)
  (temp___do_toplevel_419 Bool)) Bool (=>
                                      (or (= temp___is_init_417 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_420)))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq3 (us_rep us_rep) Bool)

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

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep (sequence__content
                                                                  a))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun last ((container us_rep)) Int (+ 0 (length container)))

(declare-fun last__function_guard (Int us_rep) Bool)

(declare-fun get (us_rep Int) Int)

(declare-fun get__function_guard (Int us_rep Int) Bool)

(define-fun oeq ((left us_rep)
  (right us_rep)) Bool (and (= (length left) (length right)) (ite (forall
                                                                  ((n Int))
                                                                  (=>
                                                                  (and
                                                                  (<= 1 n)
                                                                  (<= n 
                                                                  (last left)))
                                                                  (= 
                                                                  (get left
                                                                  n) 
                                                                  (get right
                                                                  n))))
                                                             true false)))

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (= (user_eq3 a b) (oeq a b)) :pattern ((user_eq3 a b)) )))

(define-fun default_initial_assumption ((temp___expr_427 us_rep)
  (temp___skip_top_level_428 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_428 true))
                                         (= (length temp___expr_427) 0)))

(declare-sort count_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (count_type count_type) Bool)

(declare-fun dummy4 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_175 Int)
  (temp___is_init_172 Bool) (temp___skip_constant_173 Bool)
  (temp___do_toplevel_174 Bool)) Bool (=>
                                      (or (= temp___is_init_172 true)
                                      (<= 0 2147483647)) (in_range4
                                      temp___expr_175)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant2 result true false
     true))) :pattern ((length container)) )))

(declare-fun left () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun right () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun fst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun lst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun offset () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-sort element_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (element_type element_type) Bool)

(declare-fun dummy5 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_3__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant3 ((temp___expr_414 Int)
  (temp___is_init_411 Bool) (temp___skip_constant_412 Bool)
  (temp___do_toplevel_413 Bool)) Bool (=>
                                      (or (= temp___is_init_411 true)
                                      (<= 0 2147483647)) (in_range5
                                      temp___expr_414)))

;; get__post_axiom
  (assert
  (forall ((container us_rep))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant1 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant3 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun result () Bool)

(declare-fun result1 () Bool)

;; H
  (assert (in_range2 fst))

;; H
  (assert (in_range3 lst))

;; H
  (assert (in_range1 offset))

;; H
  (assert
  (and (= o6 (last left)) (and (in_range3 o6) (= o6 (+ 0 (length left))))))

;; H
  (assert (= result (ite (<= lst o6) true false)))

;; H
  (assert (= result true))

;; H
  (assert
  (=> (< offset 0)
  (and (= o5 (- (- 2147483648) offset)) (in_range1
  (- (- 2147483648) offset)))))

;; H
  (assert (=> (< offset 0) (= result1 (ite (<= o5 1) true false))))

;; H
  (assert (=> (not (< offset 0)) (= result1 (of_int 1))))

;; H
  (assert (= result1 true))

;; H
  (assert (<= fst lst))

;; H
  (assert (and (= o2 lst) (in_range1 lst)))

;; H
  (assert
  (and (= o (length right)) (and (in_range4 o) (<= (+ 0 o) 2147483647))))

;; H
  (assert (= o1 (+ 0 o)))

;; H
  (assert (and (= o3 o1) (in_range1 o1)))

;; H
  (assert (= o4 (- o3 o2)))

(assert
;; WP_parameter_def
 ;; File "a-cofuve.ads", line 201, characters 0-0
  (not (in_range1 o4)))
(check-sat)
