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

(declare-sort tcount_typeB 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy () tcount_typeB)

(declare-datatypes ()
((tcount_typeB__ref
 (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB 
  (tcount_typeB__content a))

(declare-fun to_rep (tcount_typeB) Int)

(declare-fun of_rep (Int) tcount_typeB)

;; inversion_axiom
  (assert
  (forall ((x tcount_typeB))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x tcount_typeB)) (! (in_range
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy1 () tcount_typeB)

(declare-datatypes ()
((capacity_range__ref
 (mk_capacity_range__ref (capacity_range__content tcount_typeB)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) tcount_typeB 
  (capacity_range__content a))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__use_vectors__my_vectors__vector__capacity tcount_typeB)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) tcount_typeB 
  (rec__use_vectors__my_vectors__vector__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__use_vectors__my_vectors__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type 
  (rec__use_vectors__my_vectors__vector a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

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

(declare-fun use_vectors__my_vectors__vector__capacity__first__bit () Int)

(declare-fun use_vectors__my_vectors__vector__capacity__last__bit () Int)

(declare-fun use_vectors__my_vectors__vector__capacity__position () Int)

;; use_vectors__my_vectors__vector__capacity__first__bit_axiom
  (assert (<= 0 use_vectors__my_vectors__vector__capacity__first__bit))

;; use_vectors__my_vectors__vector__capacity__last__bit_axiom
  (assert
  (< use_vectors__my_vectors__vector__capacity__first__bit use_vectors__my_vectors__vector__capacity__last__bit))

;; use_vectors__my_vectors__vector__capacity__position_axiom
  (assert (<= 0 use_vectors__my_vectors__vector__capacity__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content
                                                              a))

(define-fun dynamic_invariant ((temp___expr_233 us_rep)
  (temp___is_init_230 Bool) (temp___skip_constant_231 Bool)
  (temp___do_toplevel_232 Bool)) Bool (dynamic_property 0 last
  (to_rep
  (rec__use_vectors__my_vectors__vector__capacity
  (us_split_discrs1 temp___expr_233)))))

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Bool)

(define-fun capacity ((container us_rep)) Int (ite (= (of_int 0) true)
                                              (to_rep
                                              (rec__use_vectors__my_vectors__vector__capacity
                                              (us_split_discrs1 container)))
                                              last))

(declare-fun capacity__function_guard (Int us_rep) Bool)

(declare-fun last_count () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(define-fun dynamic_invariant1 ((temp___expr_227 Int)
  (temp___is_init_224 Bool) (temp___skip_constant_225 Bool)
  (temp___do_toplevel_226 Bool)) Bool (=>
                                      (or (= temp___is_init_224 true)
                                      (<= 0 last)) (dynamic_property 0 
                                      last temp___expr_227)))

;; last__def_axiom
  (assert (= last last_count))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (=> (dynamic_invariant container true true true)
     (let ((result (length container)))
     (and (<= result (capacity container)) (dynamic_invariant1 result true
     false true)))) :pattern ((length container)) )))

(declare-fun container__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun new_item () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort integer 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (integer integer) Bool)

(declare-fun dummy3 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant2 ((temp___expr_15 Int) (temp___is_init_12 Bool)
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
     (and (dynamic_invariant2 x true true true) (dynamic_invariant2 f true
     true true)) (dynamic_invariant2 l true true true))
     (let ((result (id x f l)))
     (=> (id__function_guard result x f l)
     (and (=> (and (<= f x) (<= x l)) (and (<= f result) (<= result l)))
     (dynamic_invariant2 result true false true))))) :pattern ((id x f l)) )))

(declare-fun fst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

;; fst__def_axiom
  (assert
  (and (id__function_guard (id 1 (- 2147483647) 2147483647) 1 (- 2147483647)
  2147483647) (= fst (id 1 (- 2147483647) 2147483647))))

(declare-fun lst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

;; lst__def_axiom
  (assert
  (and (id__function_guard (id 2147483647 fst 2147483647) 2147483647 
  fst 2147483647) (= lst (id 2147483647 fst 2147483647))))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun first () Int)

(declare-fun last1 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (integer integer) Bool)

(declare-fun dummy4 () integer)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content integer)))))
(define-fun index_type__ref_2__projection ((a index_type__ref)) integer 
  (index_type__content a))

;; last_count__def_axiom
  (assert
  (= last_count (ite (< last1 first) 0
                (ite (or (< last1 (- 1)) (< (- last1 2147483647) first))
                (+ (- last1 first) 1) 2147483647))))

(define-fun dynamic_invariant3 ((temp___expr_209 Int)
  (temp___is_init_206 Bool) (temp___skip_constant_207 Bool)
  (temp___do_toplevel_208 Bool)) Bool (=>
                                      (or (= temp___is_init_206 true)
                                      (<= first last1)) (dynamic_property1
                                      first last1 temp___expr_209)))

;; first__def_axiom
  (assert (= first fst))

;; last__def_axiom
  (assert (= last1 lst))

(declare-fun container__split_fields () us_main_type)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

;; H
  (assert (dynamic_property 0 last
  (to_rep
  (rec__use_vectors__my_vectors__vector__capacity container__split_discrs))))

;; H
  (assert (dynamic_property 0 last
  (to_rep
  (rec__use_vectors__my_vectors__vector__capacity
  (us_split_discrs1 new_item)))))

;; H
  (assert
  (and (= o (length new_item))
  (and (dynamic_property 0 last o) (<= o (capacity new_item)))))

;; H
  (assert
  (and
  (= o1 (capacity
        (mk___rep container__split_discrs
        (mk___split_fields container__split_fields))))
  (and (dynamic_property 0 last o1)
  (= o1 (ite (= (of_int 0) true)
        (to_rep
        (rec__use_vectors__my_vectors__vector__capacity
        container__split_discrs)) last)))))

;; H
  (assert (= o2 (- o1 o)))

(assert
;; WP_parameter_def
 ;; File "a-cofove.ads", line 463, characters 0-0
  (not (in_range o2)))
(check-sat)
