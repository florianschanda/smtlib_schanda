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

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int integer) Int Int (Array Int integer) Int
  Int) (Array Int integer))

;; concat_def
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (integer Int) (Array Int integer))

;; singleton_def
  (assert
  (forall ((v integer))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq1 ((a (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
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
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq1 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int integer) Int Int (Array Int integer) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq1 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq1 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq1 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun c () (Array Int integer))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun const__c__aggregate_def (Int) (Array Int integer))

;; def_axiom
  (assert
  (forall ((temp___134 Int))
  (forall ((temp___135 Int))
  (= (select (const__c__aggregate_def temp___134) temp___135) (of_rep
                                                              temp___134)))))

(declare-fun c2 () (Array Int integer))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun const__c2__aggregate_def (Int) (Array Int integer))

;; def_axiom
  (assert
  (forall ((temp___137 Int))
  (forall ((temp___138 Int))
  (= (select (const__c2__aggregate_def temp___137) temp___138) (of_rep
                                                               temp___137)))))

(declare-fun d2 () (Array Int integer))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun const__d2__aggregate_def (Int Int) (Array Int integer))

;; def_axiom
  (assert
  (forall ((temp___144 Int) (temp___145 Int))
  (let ((temp___143 (const__d2__aggregate_def temp___144 temp___145)))
  (and (= (select temp___143 1) (of_rep temp___144))
  (= (select temp___143 2) (of_rep temp___145))))))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__const__te__x integer)(rec__const__te__y integer)))))
(define-fun us_split_fields_X__projection ((a us_split_fields)) integer 
  (rec__const__te__x a))

(define-fun us_split_fields_Y__projection ((a us_split_fields)) integer 
  (rec__const__te__y a))

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
                        (= (to_rep (rec__const__te__x (us_split_fields1 a))) 
                        (to_rep (rec__const__te__x (us_split_fields1 b))))
                        (= (to_rep (rec__const__te__y (us_split_fields1 a))) 
                        (to_rep (rec__const__te__y (us_split_fields1 b)))))
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

(declare-fun const__te__x__first__bit () Int)

(declare-fun const__te__x__last__bit () Int)

(declare-fun const__te__x__position () Int)

;; const__te__x__first__bit_axiom
  (assert (<= 0 const__te__x__first__bit))

;; const__te__x__last__bit_axiom
  (assert (< const__te__x__first__bit const__te__x__last__bit))

;; const__te__x__position_axiom
  (assert (<= 0 const__te__x__position))

(declare-fun const__te__y__first__bit () Int)

(declare-fun const__te__y__last__bit () Int)

(declare-fun const__te__y__position () Int)

;; const__te__y__first__bit_axiom
  (assert (<= 0 const__te__y__first__bit))

;; const__te__y__last__bit_axiom
  (assert (< const__te__y__first__bit const__te__y__last__bit))

;; const__te__y__position_axiom
  (assert (<= 0 const__te__y__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes () ((te__ref (mk_te__ref (te__content us_rep)))))
(define-fun te__ref___projection ((a te__ref)) us_rep (te__content a))

(declare-fun e () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun f () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun g () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun fi (tuple0) Int)

(declare-fun fi__function_guard (Int tuple0) Bool)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun j () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun fk (tuple0) Int)

(declare-fun fk__function_guard (Int tuple0) Bool)

(declare-fun k () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun l () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun fm (Int) Int)

(declare-fun fm__function_guard (Int Int) Bool)

(declare-fun m () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun n () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS12 () Int)

(declare-fun p () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS13 () Int)

;; c__def_axiom
  (assert (= c (const__c__aggregate_def 1)))

;; c2__def_axiom
  (assert (= c2 (const__c2__aggregate_def 1)))

;; d2__def_axiom
  (assert (= d2 (const__d2__aggregate_def 1 1)))

;; e__def_axiom
  (assert (= e (mk___rep (mk___split_fields (of_rep 1) (of_rep 1)))))

;; f__def_axiom
  (assert (= f (mk___rep (mk___split_fields (of_rep 1) (of_rep 1)))))

;; g__def_axiom
  (assert (= g (mk___rep (mk___split_fields (of_rep 1) (of_rep 1)))))

;; fi__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (fi us_void_param)))
     (=> (fi__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((fi us_void_param)) )))

;; fi__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (fi__function_guard (fi us_void_param) us_void_param)
     (= (fi us_void_param) 1)) :pattern ((fi us_void_param)) )))

;; i__def_axiom
  (assert (and (fi__function_guard (fi Tuple0) Tuple0) (= i (fi Tuple0))))

;; j__def_axiom
  (assert
  (and (fi__function_guard (fi Tuple0) Tuple0) (= j (- (* 2 (fi Tuple0)) 1))))

;; fk__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (fk us_void_param)))
     (=> (fk__function_guard result us_void_param) (dynamic_invariant result
     true false true))) :pattern ((fk us_void_param)) )))

;; fk__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (=> (fk__function_guard (fk us_void_param) us_void_param)
     (= (fk us_void_param) 1)) :pattern ((fk us_void_param)) )))

;; k__def_axiom
  (assert (and (fk__function_guard (fk Tuple0) Tuple0) (= k (fk Tuple0))))

;; l__def_axiom
  (assert
  (and (fk__function_guard (fk Tuple0) Tuple0) (= l (- (* 2 (fk Tuple0)) 1))))

;; fm__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (fm x)))
     (=> (fm__function_guard result x) (dynamic_invariant result true false
     true)))) :pattern ((fm x)) )))

;; fm__def_axiom
  (assert
  (forall ((x Int))
  (! (=>
     (and (dynamic_invariant x true true true) (fm__function_guard (fm x) x))
     (= (fm x) x)) :pattern ((fm x)) )))

;; m__def_axiom
  (assert (and (fm__function_guard (fm 1) 1) (= m (fm 1))))

;; n__def_axiom
  (assert (and (fm__function_guard (fm 1) 1) (= n (- (* 2 (fm 1)) 1))))

(declare-fun o () Int)

(declare-fun o1 () integer)

(declare-fun o2 () integer)

(declare-fun o3 () integer)

(declare-fun o4 () integer)

(declare-fun temp___175 () integer)

(declare-fun temp___1751 () integer)

(declare-fun o5 () integer)

(declare-fun o6 () integer)

(declare-fun o7 () integer)

(declare-fun o8 () integer)

(declare-fun temp___176 () integer)

(declare-fun temp___1761 () integer)

(declare-fun o9 () integer)

(declare-fun o10 () integer)

(declare-fun o11 () integer)

(declare-fun o12 () integer)

(declare-fun temp___177 () integer)

(declare-fun temp___1771 () integer)

;; H
  (assert (= (const__c__aggregate_def 1) c))

;; H
  (assert (= (const__c2__aggregate_def 1) c2))

;; H
  (assert (= (const__d2__aggregate_def 1 1) d2))

;; H
  (assert (= (to_rep o1) 1))

;; H
  (assert (= (to_rep o2) 1))

;; H
  (assert (= o2 o3))

;; H
  (assert (= o1 o4))

;; H
  (assert (= temp___175 o3))

;; H
  (assert (= temp___1751 o4))

;; H
  (assert (= (mk___rep (mk___split_fields temp___175 temp___1751)) e))

;; H
  (assert (= (to_rep o5) 1))

;; H
  (assert (= (to_rep o6) 1))

;; H
  (assert (= o6 o7))

;; H
  (assert (= o5 o8))

;; H
  (assert (= temp___176 o7))

;; H
  (assert (= temp___1761 o8))

;; H
  (assert (= (mk___rep (mk___split_fields temp___176 temp___1761)) f))

;; H
  (assert (= (to_rep o9) 1))

;; H
  (assert (= (to_rep o10) 1))

;; H
  (assert (= o10 o11))

;; H
  (assert (= o9 o12))

;; H
  (assert (= temp___177 o11))

;; H
  (assert (= temp___1771 o12))

;; H
  (assert (= (mk___rep (mk___split_fields temp___177 temp___1771)) g))

;; H
  (assert (in_range i))

;; H
  (assert (= (fi Tuple0) i))

;; H
  (assert (in_range j))

;; H
  (assert (= (- (* 2 (fi Tuple0)) 1) j))

;; H
  (assert (in_range k))

;; H
  (assert (= (fk Tuple0) k))

;; H
  (assert (in_range l))

;; H
  (assert (= (- (* 2 (fk Tuple0)) 1) l))

;; H
  (assert (in_range m))

;; H
  (assert (= (fm 1) m))

;; H
  (assert (in_range n))

;; H
  (assert (= (- (* 2 (fm 1)) 1) n))

;; H
  (assert (in_range o))

;; H
  (assert (in_range p))

;; H
  (assert (= (to_rep (select c 1)) 1))

;; H
  (assert (= (to_rep (select c 2)) 1))

;; H
  (assert (= (to_rep (select c2 1)) 1))

;; H
  (assert (= (to_rep (select c2 2)) 1))

;; H
  (assert (= (to_rep (select d2 1)) 1))

;; H
  (assert (= (to_rep (select d2 2)) 1))

;; H
  (assert (= (to_rep (rec__const__te__x (us_split_fields1 e))) 1))

;; H
  (assert (= (to_rep (rec__const__te__y (us_split_fields1 e))) 1))

;; H
  (assert (= (to_rep (rec__const__te__x (us_split_fields1 f))) 1))

;; H
  (assert (= (to_rep (rec__const__te__y (us_split_fields1 f))) 1))

;; H
  (assert (= (to_rep (rec__const__te__x (us_split_fields1 g))) 1))

;; H
  (assert (= (to_rep (rec__const__te__y (us_split_fields1 g))) 1))

;; H
  (assert (= i 1))

;; H
  (assert (= j 1))

;; H
  (assert (= k 1))

;; H
  (assert (= l 1))

;; H
  (assert (= m 1))

;; H
  (assert (= n 1))

;; H
  (assert (= o 1))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (= p 1)))
(check-sat)
