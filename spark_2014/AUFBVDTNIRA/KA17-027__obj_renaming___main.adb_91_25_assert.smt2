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

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun choose () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-datatypes ()
((us_split_fields (mk___split_fields (rec__main__rec__comp natural)))))
(define-fun us_split_fields_Comp__projection ((a us_split_fields)) natural 
  (rec__main__rec__comp a))

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
  (b us_rep)) Bool (ite (= (to_rep
                           (rec__main__rec__comp (us_split_fields1 a))) 
                   (to_rep (rec__main__rec__comp (us_split_fields1 b)))) true
                   false))

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

(declare-fun main__rec__comp__first__bit () Int)

(declare-fun main__rec__comp__last__bit () Int)

(declare-fun main__rec__comp__position () Int)

;; main__rec__comp__first__bit_axiom
  (assert (<= 0 main__rec__comp__first__bit))

;; main__rec__comp__last__bit_axiom
  (assert (< main__rec__comp__first__bit main__rec__comp__last__bit))

;; main__rec__comp__position_axiom
  (assert (<= 0 main__rec__comp__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((rec____ref (mk_rec____ref (rec____content us_rep)))))
(define-fun rec____ref___projection ((a rec____ref)) us_rep (rec____content
                                                            a))

(define-fun default_initial_assumption ((temp___expr_141 us_rep)
  (temp___skip_top_level_142 Bool)) Bool (= (to_rep
                                            (rec__main__rec__comp
                                            (us_split_fields1
                                            temp___expr_141))) 1234))

(declare-sort index 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (index index) Bool)

(declare-fun dummy3 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(define-fun index__ref___projection ((a index__ref)) index (index__content a))

(define-fun dynamic_invariant1 ((temp___expr_146 Int)
  (temp___is_init_143 Bool) (temp___skip_constant_144 Bool)
  (temp___do_toplevel_145 Bool)) Bool (=>
                                      (or (= temp___is_init_143 true)
                                      (<= 1 10)) (in_range3 temp___expr_146)))

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

(define-fun bool_eq4 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
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
                           (= (bool_eq2 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq2 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(define-fun default_initial_assumption1 ((temp___expr_154 (Array Int us_rep))
  (temp___skip_top_level_155 Bool)) Bool (forall ((temp___156 Int))
                                         (=>
                                         (and (<= 1 temp___156)
                                         (<= temp___156 10))
                                         (= (to_rep
                                            (rec__main__rec__comp
                                            (us_split_fields1
                                            (select temp___expr_154 temp___156)))) 1234))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun get_rec (tuple0) us_rep)

(declare-fun get_rec__function_guard (us_rep tuple0) Bool)

;; get_rec__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (get_rec us_void_param)))
     (=> (get_rec__function_guard result us_void_param)
     (= (bool_eq2 result (mk___rep (mk___split_fields (of_rep 5678)))) true))) :pattern (
  (get_rec us_void_param)) )))

(declare-fun get_arr (tuple0) (Array Int us_rep))

(declare-fun get_arr__function_guard ((Array Int us_rep) tuple0) Bool)

(declare-fun temp___158 (us_rep) (Array Int us_rep))

;; def_axiom
  (assert
  (forall ((temp___160 us_rep))
  (forall ((temp___161 Int))
  (= (select (temp___158 temp___160) temp___161) temp___160))))

;; get_arr__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (get_arr us_void_param)))
     (=> (get_arr__function_guard result us_void_param)
     (= (let ((temp___164 (temp___158
                          (mk___rep (mk___split_fields (of_rep 9012))))))
        (bool_eq4 result 1 10 temp___164 1 10)) true))) :pattern ((get_arr
                                                                  us_void_param)) )))

(declare-fun get_index (Bool) Int)

(declare-fun get_index__function_guard (Int Bool) Bool)

;; get_index__post_axiom
  (assert
  (forall ((main__cheat Bool))
  (! (let ((result (get_index main__cheat)))
     (=> (get_index__function_guard result main__cheat)
     (and (ite (= main__cheat true) (= result 3) (= result 5))
     (dynamic_invariant1 result true false true)))) :pattern ((get_index
                                                              main__cheat)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun the_index () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun r14b () (Array Int us_rep))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun r15b () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun r16b () (Array Int us_rep))

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(define-fun dynamic_invariant2 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

(declare-fun cheat () Bool)

(declare-fun arr_obj () (Array Int us_rep))

(declare-fun rec_obj__split_fields () natural)

(declare-fun o () (Array Int us_rep))

(declare-fun main__rec_obj__assume () natural)

(declare-fun main__the_index__assume () Int)

(declare-fun main__R14b__assume () (Array Int us_rep))

(declare-fun main__R15b__assume () natural)

(declare-fun main__R16b__assume () (Array Int us_rep))

(declare-fun o1 () natural)

(declare-fun o2 () natural)

(declare-fun o3 () natural)

(declare-fun o4 () (Array Int us_rep))

(declare-fun o5 () Int)

(declare-fun o6 () natural)

(declare-fun o7 () natural)

(declare-fun o8 () natural)

(declare-fun o9 () (Array Int us_rep))

(declare-fun o10 () natural)

(declare-fun o11 () natural)

(declare-fun temp___168 () natural)

(declare-fun result () Bool)

(declare-fun cheat1 () Bool)

(declare-fun result1 () (Array Int us_rep))

(declare-fun arr_obj1 () (Array Int us_rep))

(declare-fun result2 () natural)

(declare-fun rec_obj__split_fields1 () us_split_fields)

(declare-fun result3 () bool__ref)

(declare-fun cheat2 () Bool)

(declare-fun result4 () map__ref)

(declare-fun arr_obj2 () (Array Int us_rep))

(declare-fun result5 () map__ref)

(declare-fun arr_obj3 () (Array Int us_rep))

(declare-fun result6 () us_split_fields__ref)

(declare-fun rec_obj__split_fields2 () us_split_fields)

(define-fun main__R15b__assume1 () us_rep (mk___rep
                                          (mk___split_fields
                                          main__R15b__assume)))

(define-fun main__rec_obj__assume1 () us_rep (mk___rep
                                             (mk___split_fields
                                             main__rec_obj__assume)))

;; H
  (assert (in_range1 choose))

;; H
  (assert (= result cheat))

;; H
  (assert (= cheat1 (of_int 1)))

;; H
  (assert
  (and (and (= o (get_arr Tuple0)) (get_arr__function_guard o Tuple0))
  (= (bool_eq4 o 1 10
     (temp___158 (mk___rep (mk___split_fields (of_rep 9012)))) 1 10) true)))

;; H
  (assert (= result1 arr_obj))

;; H
  (assert (= arr_obj1 o))

;; H
  (assert
  (and
  (and (= main__rec_obj__assume1 (get_rec Tuple0)) (get_rec__function_guard
  main__rec_obj__assume1 Tuple0))
  (= (bool_eq2 main__rec_obj__assume1
     (mk___rep (mk___split_fields (of_rep 5678)))) true)))

;; H
  (assert (= result2 rec_obj__split_fields))

;; H
  (assert
  (= rec_obj__split_fields1 (mk___split_fields main__rec_obj__assume)))

;; H
  (assert
  (and
  (and (= main__the_index__assume (get_index cheat1))
  (get_index__function_guard main__the_index__assume cheat1))
  (and (in_range3 main__the_index__assume)
  (ite (= cheat1 true) (= main__the_index__assume 3)
  (= main__the_index__assume 5)))))

;; H
  (assert (= main__the_index__assume the_index))

;; H
  (assert (in_range3 the_index))

;; H
  (assert
  (and
  (and (= main__R14b__assume (get_arr Tuple0)) (get_arr__function_guard
  main__R14b__assume Tuple0))
  (= (bool_eq4 main__R14b__assume 1 10
     (temp___158 (mk___rep (mk___split_fields (of_rep 9012)))) 1 10) true)))

;; H
  (assert (= main__R14b__assume r14b))

;; H
  (assert
  (and
  (and (= main__R15b__assume1 (get_rec Tuple0)) (get_rec__function_guard
  main__R15b__assume1 Tuple0))
  (= (bool_eq2 main__R15b__assume1
     (mk___rep (mk___split_fields (of_rep 5678)))) true)))

;; H
  (assert (= main__R15b__assume1 r15b))

;; H
  (assert
  (and
  (and (= main__R16b__assume (get_arr Tuple0)) (get_arr__function_guard
  main__R16b__assume Tuple0))
  (= (bool_eq4 main__R16b__assume 1 10
     (temp___158 (mk___rep (mk___split_fields (of_rep 9012)))) 1 10) true)))

;; H
  (assert (= main__R16b__assume r16b))

;; H
  (assert (= result3 (mk_bool__ref cheat1)))

;; H
  (assert (= cheat2 (of_int 0)))

;; H
  (assert
  (= (to_rep (rec__main__rec__comp (us_split_fields1 (select arr_obj1 1)))) 9012))

;; H
  (assert
  (= (to_rep
     (rec__main__rec__comp (us_split_fields1 (select arr_obj1 the_index)))) 9012))

;; H
  (assert
  (= (to_rep
     (rec__main__rec__comp (us_split_fields1 (select r14b the_index)))) 9012))

;; H
  (assert (= (to_rep (rec__main__rec__comp rec_obj__split_fields1)) 5678))

;; H
  (assert (= (to_rep (rec__main__rec__comp (us_split_fields1 r15b))) 5678))

;; H
  (assert
  (= (to_rep
     (rec__main__rec__comp (us_split_fields1 (select r16b the_index)))) 9012))

;; H
  (assert (= (to_rep o1) 0))

;; H
  (assert (= o1 o2))

;; H
  (assert (= o3 o2))

;; H
  (assert (= o4 (store arr_obj1 1 (mk___rep (mk___split_fields o3)))))

;; H
  (assert (= result4 (mk_map__ref arr_obj1)))

;; H
  (assert (= arr_obj2 o4))

;; H
  (assert
  (and
  (= o5 (+ (to_rep
           (rec__main__rec__comp
           (us_split_fields1 (select arr_obj2 the_index)))) 1))
  (in_range1
  (+ (to_rep
     (rec__main__rec__comp (us_split_fields1 (select arr_obj2 the_index)))) 1))))

;; H
  (assert (= (to_rep o6) o5))

;; H
  (assert (= o6 o7))

;; H
  (assert (= o8 o7))

;; H
  (assert
  (= o9 (store arr_obj2 the_index (mk___rep (mk___split_fields o8)))))

;; H
  (assert (= result5 (mk_map__ref arr_obj2)))

;; H
  (assert (= arr_obj3 o9))

;; H
  (assert (= (to_rep o10) 0))

;; H
  (assert (= o10 o11))

;; H
  (assert (= temp___168 o11))

;; H
  (assert (= result6 (mk___split_fields__ref rec_obj__split_fields1)))

;; H
  (assert (= rec_obj__split_fields2 (mk___split_fields temp___168)))

;; H
  (assert (not (= choose 0)))

;; H
  (assert (not (= choose 1)))

;; H
  (assert (= choose 2))

(assert
;; WP_parameter_def
 ;; File "main.adb", line 9, characters 0-0
  (not (= (to_rep (rec__main__rec__comp rec_obj__split_fields2)) 5678)))
(check-sat)
