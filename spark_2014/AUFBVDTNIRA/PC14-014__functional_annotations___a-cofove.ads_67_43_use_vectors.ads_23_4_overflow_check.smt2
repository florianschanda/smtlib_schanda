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

(declare-sort tcount_typeB 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy1 () tcount_typeB)

(declare-datatypes ()
((tcount_typeB__ref
 (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB 
  (tcount_typeB__content a))

(declare-sort count_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (count_type count_type) Bool)

(declare-fun dummy2 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 0 2147483647)) (in_range3
                                      temp___expr_143)))

(declare-fun id (Int Int Int) Int)

(declare-fun id__function_guard (Int Int Int Int) Bool)

(declare-sort smaller 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483647) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (smaller smaller) Bool)

(declare-fun dummy3 () smaller)

(declare-datatypes ()
((smaller__ref (mk_smaller__ref (smaller__content smaller)))))
(define-fun smaller__ref___projection ((a smaller__ref)) smaller (smaller__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_185 Int)
  (temp___is_init_182 Bool) (temp___skip_constant_183 Bool)
  (temp___do_toplevel_184 Bool)) Bool (=>
                                      (or (= temp___is_init_182 true)
                                      (<= (- 2147483647) 2147483647))
                                      (in_range4 temp___expr_185)))

(declare-fun fst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun to_rep (integer) Int)

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun first () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes ()
((bigger__ref (mk_bigger__ref (bigger__content integer)))))
(define-fun bigger__ref___projection ((a bigger__ref)) integer (bigger__content
                                                               a))

(define-fun dynamic_invariant2 ((temp___expr_191 Int)
  (temp___is_init_188 Bool) (temp___skip_constant_189 Bool)
  (temp___do_toplevel_190 Bool)) Bool (=>
                                      (or (= temp___is_init_188 true)
                                      (<= first 2147483647))
                                      (dynamic_property first 2147483647
                                      temp___expr_191)))

;; first__def_axiom
  (assert (= first fst))

(declare-fun lst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun first1 () Int)

(declare-fun last () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq5 (integer integer) Bool)

(declare-fun dummy5 () integer)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content integer)))))
(define-fun index_type__ref___projection ((a index_type__ref)) integer 
  (index_type__content a))

(declare-fun first2 () Int)

(declare-fun last1 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes ()
((index_type__ref1 (mk_index_type__ref1 (index_type__content1 integer)))))
(define-fun index_type__ref_2__projection ((a index_type__ref1)) integer 
  (index_type__content1 a))

(declare-fun first3 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq7 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content integer)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) integer 
  (extended_index__content a))

(define-fun dynamic_invariant3 ((temp___expr_221 Int)
  (temp___is_init_218 Bool) (temp___skip_constant_219 Bool)
  (temp___do_toplevel_220 Bool)) Bool (=>
                                      (or (= temp___is_init_218 true)
                                      (<= first3 last2)) (dynamic_property3
                                      first3 last2 temp___expr_221)))

;; first__def_axiom
  (assert (= first3 (- first2 1)))

;; last__def_axiom
  (assert (= last2 (+ (ite (< 2147483646 last1) 2147483646 last1) 1)))

(declare-fun no_index () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun last_count () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

;; id__post_axiom
  (assert
  (forall ((x Int) (f Int) (l Int))
  (! (=>
     (and
     (and (dynamic_invariant4 x true true true) (dynamic_invariant4 f true
     true true)) (dynamic_invariant4 l true true true))
     (let ((result (id x f l)))
     (=> (id__function_guard result x f l)
     (and (=> (and (<= f x) (<= x l)) (and (<= f result) (<= result l)))
     (dynamic_invariant4 result true false true))))) :pattern ((id x f l)) )))

;; fst__def_axiom
  (assert
  (and (id__function_guard (id 1 (- 2147483647) 2147483647) 1 (- 2147483647)
  2147483647) (= fst (id 1 (- 2147483647) 2147483647))))

;; lst__def_axiom
  (assert
  (and (id__function_guard (id 2147483647 fst 2147483647) 2147483647 
  fst 2147483647) (= lst (id 2147483647 fst 2147483647))))

(define-fun dynamic_invariant5 ((temp___expr_197 Int)
  (temp___is_init_194 Bool) (temp___skip_constant_195 Bool)
  (temp___do_toplevel_196 Bool)) Bool (=>
                                      (or (= temp___is_init_194 true)
                                      (<= first1 last)) (dynamic_property1
                                      first1 last temp___expr_197)))

;; first__def_axiom
  (assert (= first1 fst))

;; last__def_axiom
  (assert (= last lst))

;; no_index__def_axiom
  (assert (= no_index first3))

;; last_count__def_axiom
  (assert
  (= last_count (ite (< last1 first2) 0
                (ite (or (< last1 (- 1)) (< (- last1 2147483647) first2))
                (+ (- last1 first2) 1) 2147483647))))

(define-fun dynamic_invariant6 ((temp___expr_209 Int)
  (temp___is_init_206 Bool) (temp___skip_constant_207 Bool)
  (temp___do_toplevel_208 Bool)) Bool (=>
                                      (or (= temp___is_init_206 true)
                                      (<= first2 last1)) (dynamic_property2
                                      first2 last1 temp___expr_209)))

;; first__def_axiom
  (assert (= first2 fst))

;; last__def_axiom
  (assert (= last1 lst))

(declare-fun us () Int)

(declare-fun use_vectors__my_vectors__no_index__assume () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun result () Bool)

;; H
  (assert (in_range4 fst))

;; H
  (assert (= (id 1 (- 2147483647) 2147483647) fst))

;; H
  (assert (dynamic_property first 2147483647 lst))

;; H
  (assert (= (id 2147483647 fst 2147483647) lst))

;; H
  (assert (and (= us first3) (dynamic_property3 first3 last2 first3)))

;; H
  (assert (= use_vectors__my_vectors__no_index__assume first3))

;; H
  (assert (= use_vectors__my_vectors__no_index__assume no_index))

;; H
  (assert (dynamic_property3 first3 last2 no_index))

;; H
  (assert (not (< last1 first2)))

;; H
  (assert (=> (< last1 (- 1)) (= result true)))

;; H
  (assert (=> (not (< last1 (- 1))) (and (= o last1) (in_range2 last1))))

;; H
  (assert (=> (not (< last1 (- 1))) (= o1 (- o 2147483647))))

;; H
  (assert (=> (not (< last1 (- 1))) (and (= o2 o1) (in_range2 o1))))

;; H
  (assert (=> (not (< last1 (- 1))) (and (= o3 first2) (in_range2 first2))))

;; H
  (assert (=> (not (< last1 (- 1))) (= result (ite (< o2 o3) true false))))

;; H
  (assert (= result true))

;; H
  (assert (and (= o4 first2) (in_range2 first2)))

;; H
  (assert (and (= o5 last1) (in_range2 last1)))

;; H
  (assert (= o6 (- o5 o4)))

(assert
;; WP_parameter_def
 ;; File "use_vectors.ads", line 7, characters 0-0
  (not (in_range2 o6)))
(check-sat)
