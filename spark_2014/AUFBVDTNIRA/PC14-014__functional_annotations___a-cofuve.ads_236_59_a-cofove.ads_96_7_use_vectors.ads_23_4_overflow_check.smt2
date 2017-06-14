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

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun first () Int)

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content integer)))))
(define-fun index_type__ref_3__projection ((a index_type__ref)) integer 
  (index_type__content a))

(declare-fun fst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun lst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant ((temp___expr_242 Int)
  (temp___is_init_239 Bool) (temp___skip_constant_240 Bool)
  (temp___do_toplevel_241 Bool)) Bool (=>
                                      (or (= temp___is_init_239 true)
                                      (<= first last)) (dynamic_property
                                      first last temp___expr_242)))

;; first__def_axiom
  (assert (= first fst))

;; last__def_axiom
  (assert (= last lst))

(declare-fun first1 () Int)

(declare-fun last1 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content integer)))))
(define-fun extended_index__ref_2__projection ((a extended_index__ref)) integer 
  (extended_index__content a))

(define-fun dynamic_invariant1 ((temp___expr_254 Int)
  (temp___is_init_251 Bool) (temp___skip_constant_252 Bool)
  (temp___do_toplevel_253 Bool)) Bool (=>
                                      (or (= temp___is_init_251 true)
                                      (<= first1 last1)) (dynamic_property1
                                      first1 last1 temp___expr_254)))

;; first__def_axiom
  (assert (= first1 (- first 1)))

;; last__def_axiom
  (assert (= last1 last))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-sort us_rep 0)

(declare-fun bool_eq4 (us_rep us_rep) Bool)

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

(declare-fun dummy4 () us_rep)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep (sequence__content
                                                                  a))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun last2 ((container us_rep)) Int (+ (- first 1) (length container)))

(declare-fun last__function_guard (Int us_rep) Bool)

(declare-fun get (us_rep Int) Int)

(declare-fun get__function_guard (Int us_rep Int) Bool)

(define-fun oeq ((left us_rep)
  (right us_rep)) Bool (and (= (length left) (length right)) (ite (forall
                                                                  ((n Int))
                                                                  (=>
                                                                  (and
                                                                  (<= 
                                                                  first n)
                                                                  (<= n 
                                                                  (last2
                                                                  left)))
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
  (! (= (user_eq4 a b) (oeq a b)) :pattern ((user_eq4 a b)) )))

(define-fun default_initial_assumption ((temp___expr_261 us_rep)
  (temp___skip_top_level_262 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_262 true))
                                         (= (length temp___expr_261) 0)))

(declare-sort count_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (count_type count_type) Bool)

(declare-fun dummy5 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_143)))

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and (<= (+ (- first 1) result) last) (dynamic_invariant2 result true
     false true))) :pattern ((length container)) )))

(declare-fun left () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun right () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun fst1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun lst1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun offset () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(define-fun dynamic_invariant3 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range2 temp___expr_15)))

(declare-fun id (Int Int Int) Int)

(declare-fun id__function_guard (Int Int Int Int) Bool)

;; id__post_axiom
  (assert
  (forall ((x Int) (f Int) (l Int))
  (! (=>
     (and
     (and (dynamic_invariant3 x true true true) (dynamic_invariant3 f true
     true true)) (dynamic_invariant3 l true true true))
     (let ((result (id x f l)))
     (=> (id__function_guard result x f l)
     (and (=> (and (<= f x) (<= x l)) (and (<= f result) (<= result l)))
     (dynamic_invariant3 result true false true))))) :pattern ((id x f l)) )))

;; fst__def_axiom
  (assert
  (and (id__function_guard (id 1 (- 2147483647) 2147483647) 1 (- 2147483647)
  2147483647) (= fst (id 1 (- 2147483647) 2147483647))))

;; lst__def_axiom
  (assert
  (and (id__function_guard (id 2147483647 fst 2147483647) 2147483647 
  fst 2147483647) (= lst (id 2147483647 fst 2147483647))))

(declare-sort element_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (element_type element_type) Bool)

(declare-fun dummy6 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_3__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant4 ((temp___expr_248 Int)
  (temp___is_init_245 Bool) (temp___skip_constant_246 Bool)
  (temp___do_toplevel_247 Bool)) Bool (=>
                                      (or (= temp___is_init_245 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range4 temp___expr_248)))

;; get__post_axiom
  (assert
  (forall ((container us_rep))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant1 position true true true)
     (and (<= first position) (<= position (last2 container))))
     (dynamic_invariant4 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Int)

(declare-fun result () Bool)

(declare-fun result1 () Bool)

;; H
  (assert (dynamic_property first last fst1))

;; H
  (assert (dynamic_property1 first1 last1 lst1))

;; H
  (assert (in_range1 offset))

;; H
  (assert
  (and (= o8 (last2 left))
  (and (dynamic_property1 first1 last1 o8)
  (= o8 (+ (- first 1) (length left))))))

;; H
  (assert (= result (ite (<= lst1 o8) true false)))

;; H
  (assert (= result true))

;; H
  (assert (=> (< offset 0) (and (= o6 first) (in_range1 first))))

;; H
  (assert
  (=> (< offset 0)
  (and (= o7 (- (- 2147483648) offset)) (in_range1
  (- (- 2147483648) offset)))))

;; H
  (assert (=> (< offset 0) (= result1 (ite (<= o7 o6) true false))))

;; H
  (assert (=> (not (< offset 0)) (= result1 (of_int 1))))

;; H
  (assert (= result1 true))

;; H
  (assert (<= fst1 lst1))

;; H
  (assert (and (= o5 lst1) (in_range1 lst1)))

;; H
  (assert
  (and (= o2 (length right))
  (and (in_range3 o2) (<= (+ (- first 1) o2) last))))

;; H
  (assert (and (= o first) (in_range1 first)))

;; H
  (assert (= o1 (- o 1)))

;; H
  (assert (and (= o3 o1) (in_range1 o1)))

;; H
  (assert (= o4 (+ o3 o2)))

(assert
;; WP_parameter_def
 ;; File "a-cofuve.ads", line 201, characters 0-0
  (not (in_range1 o4)))
(check-sat)
