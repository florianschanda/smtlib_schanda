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

(declare-fun last () Int)

(define-fun dynamic_property ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (integer integer) Bool)

(declare-fun dummy1 () integer)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content integer)))))
(define-fun index_type__ref___projection ((a index_type__ref)) integer 
  (index_type__content a))

(declare-fun fst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun lst () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant ((temp___expr_197 Int)
  (temp___is_init_194 Bool) (temp___skip_constant_195 Bool)
  (temp___do_toplevel_196 Bool)) Bool (=>
                                      (or (= temp___is_init_194 true)
                                      (<= first last)) (dynamic_property
                                      first last temp___expr_197)))

;; first__def_axiom
  (assert (= first fst))

;; last__def_axiom
  (assert (= last lst))

(declare-fun first1 () Int)

(declare-fun last1 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (integer integer) Bool)

(declare-fun dummy2 () integer)

(declare-datatypes ()
((index_type__ref1 (mk_index_type__ref1 (index_type__content1 integer)))))
(define-fun index_type__ref_2__projection ((a index_type__ref1)) integer 
  (index_type__content1 a))

(declare-sort tcount_typeB 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy3 () tcount_typeB)

(declare-datatypes ()
((tcount_typeB__ref
 (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB 
  (tcount_typeB__content a))

(declare-fun to_rep1 (tcount_typeB) Int)

(declare-fun of_rep1 (Int) tcount_typeB)

;; inversion_axiom
  (assert
  (forall ((x tcount_typeB))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x tcount_typeB)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-fun last2 () Int)

(define-fun dynamic_property2 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (tcount_typeB tcount_typeB) Bool)

(declare-fun dummy4 () tcount_typeB)

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

(declare-fun user_eq5 (us_rep us_rep) Bool)

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

(declare-fun dummy5 () us_rep)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content
                                                              a))

(define-fun dynamic_invariant1 ((temp___expr_233 us_rep)
  (temp___is_init_230 Bool) (temp___skip_constant_231 Bool)
  (temp___do_toplevel_232 Bool)) Bool (dynamic_property2 0 last2
  (to_rep1
  (rec__use_vectors__my_vectors__vector__capacity
  (us_split_discrs1 temp___expr_233)))))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(declare-fun last_count () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant2 ((temp___expr_227 Int)
  (temp___is_init_224 Bool) (temp___skip_constant_225 Bool)
  (temp___do_toplevel_226 Bool)) Bool (=>
                                      (or (= temp___is_init_224 true)
                                      (<= 0 last2)) (dynamic_property2 0
                                      last2 temp___expr_227)))

;; last__def_axiom
  (assert (= last2 last_count))

(define-fun capacity ((container us_rep)) Int (ite (= (of_int 0) true)
                                              (to_rep1
                                              (rec__use_vectors__my_vectors__vector__capacity
                                              (us_split_discrs1 container)))
                                              last2))

(declare-fun capacity__function_guard (Int us_rep) Bool)

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (=> (dynamic_invariant1 container true true true)
     (let ((result (length container)))
     (and (<= result (capacity container)) (dynamic_invariant2 result true
     false true)))) :pattern ((length container)) )))

(declare-fun first2 () Int)

(declare-fun last3 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy6 () integer)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content integer)))))
(define-fun extended_index__ref_2__projection ((a extended_index__ref)) integer 
  (extended_index__content a))

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep1 0)

(declare-fun bool_eq6 (us_rep1 us_rep1) Bool)

(declare-fun user_eq7 (us_rep1 us_rep1) Bool)

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

(declare-fun dummy7 () us_rep1)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content
                                                                   a))

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

(declare-fun first3 () Int)

(declare-fun last4 () Int)

(define-fun dynamic_property4 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (integer integer) Bool)

(declare-fun dummy8 () integer)

(declare-datatypes ()
((index_type__ref2 (mk_index_type__ref2 (index_type__content2 integer)))))
(define-fun index_type__ref_3__projection ((a index_type__ref2)) integer 
  (index_type__content2 a))

(declare-sort element_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (element_type element_type) Bool)

(declare-fun dummy9 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref_3__projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant3 ((temp___expr_248 Int)
  (temp___is_init_245 Bool) (temp___skip_constant_246 Bool)
  (temp___do_toplevel_247 Bool)) Bool (=>
                                      (or (= temp___is_init_245 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_248)))

(define-fun dynamic_invariant4 ((temp___expr_254 Int)
  (temp___is_init_251 Bool) (temp___skip_constant_252 Bool)
  (temp___do_toplevel_253 Bool)) Bool (=>
                                      (or (= temp___is_init_251 true)
                                      (<= first2 last3)) (dynamic_property3
                                      first2 last3 temp___expr_254)))

;; first__def_axiom
  (assert (= first2 (- first3 1)))

;; last__def_axiom
  (assert (= last3 last4))

(declare-fun length1 (us_rep1) Int)

(declare-fun length__function_guard1 (Int us_rep1) Bool)

(define-fun last5 ((container us_rep1)) Int (+ (- first3 1) (length1
                                                            container)))

(declare-fun last__function_guard (Int us_rep1) Bool)

(define-fun oeq ((left us_rep1)
  (right us_rep1)) Bool (and (= (length1 left) (length1 right)) (ite 
                                                                (forall
                                                                ((n Int))
                                                                (=>
                                                                (and
                                                                (<= first3 n)
                                                                (<= n 
                                                                (last5 left)))
                                                                (= (get left
                                                                   n) 
                                                                (get right n))))
                                                                true false)))

(declare-fun oeq__function_guard (Bool us_rep1 us_rep1) Bool)

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (= (user_eq7 a b) (oeq a b)) :pattern ((user_eq7 a b)) )))

(define-fun default_initial_assumption ((temp___expr_261 us_rep1)
  (temp___skip_top_level_262 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_262 true))
                                         (= (length1 temp___expr_261) 0)))

;; get__post_axiom
  (assert
  (forall ((container us_rep1))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant4 position true true true)
     (and (<= first3 position) (<= position (last5 container))))
     (dynamic_invariant3 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun model__ (us_rep) us_rep1)

(declare-fun model____function_guard (us_rep1 us_rep) Bool)

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (=> (dynamic_invariant1 container true true true)
     (= (length1 (model__ container)) (length container))) :pattern (
  (model__ container)) )))

(define-fun last_index ((container us_rep)) Int (last5 (model__ container)))

(declare-fun last_index__function_guard (Int us_rep) Bool)

(declare-fun first4 () Int)

(declare-fun last6 () Int)

(define-fun dynamic_property5 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq10 (integer integer) Bool)

(declare-fun dummy10 () integer)

(declare-datatypes ()
((extended_index__ref1
 (mk_extended_index__ref1 (extended_index__content1 integer)))))
(define-fun extended_index__ref___projection ((a extended_index__ref1)) integer 
  (extended_index__content1 a))

(define-fun dynamic_invariant5 ((temp___expr_221 Int)
  (temp___is_init_218 Bool) (temp___skip_constant_219 Bool)
  (temp___do_toplevel_220 Bool)) Bool (=>
                                      (or (= temp___is_init_218 true)
                                      (<= first4 last6)) (dynamic_property5
                                      first4 last6 temp___expr_221)))

;; first__def_axiom
  (assert (= first4 (- first1 1)))

;; last__def_axiom
  (assert (= last6 (+ (ite (< 2147483646 last1) 2147483646 last1) 1)))

(define-fun element ((container us_rep)
  (index Int)) Int (get (model__ container) index))

(declare-fun element__function_guard (Int us_rep Int) Bool)

(declare-sort element_type1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)

(declare-fun user_eq11 (element_type1 element_type1) Bool)

(declare-fun dummy11 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_2__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant6 ((temp___expr_215 Int)
  (temp___is_init_212 Bool) (temp___skip_constant_213 Bool)
  (temp___do_toplevel_214 Bool)) Bool (=>
                                      (or (= temp___is_init_212 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range4 temp___expr_215)))

(declare-fun first_index__function_guard (Int us_rep) Bool)

(define-fun equal_except ((left us_rep1) (right us_rep1)
  (position Int)) Bool (and (= (length1 left) (length1 right)) (ite (forall
                                                                    ((i Int))
                                                                    (=>
                                                                    (and
                                                                    (<= 
                                                                    first3 i)
                                                                    (<= i 
                                                                    (last5
                                                                    left)))
                                                                    (=>
                                                                    (not
                                                                    (= i position))
                                                                    (= 
                                                                    (get left
                                                                    i) 
                                                                    (get
                                                                    right i)))))
                                                               true false)))

(declare-fun equal_except__function_guard (Bool us_rep1 us_rep1 Int) Bool)

(declare-fun v__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun fst1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun lst1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun first5 () Int)

(declare-fun last7 () Int)

(define-fun dynamic_property6 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE11 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check11 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE11 (us_image) Int)

(declare-fun user_eq12 (integer integer) Bool)

(declare-fun dummy12 () integer)

(declare-datatypes () ((t35b__ref (mk_t35b__ref (t35b__content integer)))))
(define-fun t35b__ref___projection ((a t35b__ref)) integer (t35b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(define-fun dynamic_invariant7 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-fun id (Int Int Int) Int)

(declare-fun id__function_guard (Int Int Int Int) Bool)

;; id__post_axiom
  (assert
  (forall ((x Int) (f Int) (l Int))
  (! (=>
     (and
     (and (dynamic_invariant7 x true true true) (dynamic_invariant7 f true
     true true)) (dynamic_invariant7 l true true true))
     (let ((result (id x f l)))
     (=> (id__function_guard result x f l)
     (and (=> (and (<= f x) (<= x l)) (and (<= f result) (<= result l)))
     (dynamic_invariant7 result true false true))))) :pattern ((id x f l)) )))

;; fst__def_axiom
  (assert
  (and (id__function_guard (id 1 (- 2147483647) 2147483647) 1 (- 2147483647)
  2147483647) (= fst (id 1 (- 2147483647) 2147483647))))

;; lst__def_axiom
  (assert
  (and (id__function_guard (id 2147483647 fst 2147483647) 2147483647 
  fst 2147483647) (= lst (id 2147483647 fst 2147483647))))

(declare-sort count_type 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE12 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check12 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE12 (us_image) Int)

(declare-fun user_eq13 (count_type count_type) Bool)

(declare-fun dummy13 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant8 ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 0 2147483647)) (in_range5
                                      temp___expr_143)))

;; last_count__def_axiom
  (assert
  (= last_count (ite (< last1 first1) 0
                (ite (or (< last1 (- 1)) (< (- last1 2147483647) first1))
                (+ (- last1 first1) 1) 2147483647))))

(define-fun dynamic_invariant9 ((temp___expr_209 Int)
  (temp___is_init_206 Bool) (temp___skip_constant_207 Bool)
  (temp___do_toplevel_208 Bool)) Bool (=>
                                      (or (= temp___is_init_206 true)
                                      (<= first1 last1)) (dynamic_property1
                                      first1 last1 temp___expr_209)))

;; first__def_axiom
  (assert (= first1 fst))

;; last__def_axiom
  (assert (= last1 lst))

;; length__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (length1 container)))
     (and (<= (+ (- first3 1) result) last4) (dynamic_invariant8 result true
     false true))) :pattern ((length1 container)) )))

(define-fun dynamic_invariant10 ((temp___expr_242 Int)
  (temp___is_init_239 Bool) (temp___skip_constant_240 Bool)
  (temp___do_toplevel_241 Bool)) Bool (=>
                                      (or (= temp___is_init_239 true)
                                      (<= first3 last4)) (dynamic_property4
                                      first3 last4 temp___expr_242)))

;; first__def_axiom
  (assert (= first3 fst))

;; last__def_axiom
  (assert (= last4 lst))

(declare-fun v__split_fields () us_main_type)

(declare-fun current () Int)

(declare-fun result () Int)

(declare-fun current1 () Int)

(declare-fun v__split_fields1 () us_main_type)

(declare-fun current2 () Int)

(declare-fun v__split_fields2 () us_main_type)

(declare-fun result1 () Int)

(declare-fun current3 () Int)

(define-fun v__split_fields3 () us_split_fields (mk___split_fields
                                                v__split_fields2))

(define-fun v__split_fields4 () us_split_fields (mk___split_fields
                                                v__split_fields1))

;; H
  (assert (dynamic_property2 0 last2
  (to_rep1 (rec__use_vectors__my_vectors__vector__capacity v__split_discrs))))

;; H
  (assert (dynamic_property first last fst1))

;; H
  (assert (dynamic_property first last lst1))

;; H
  (assert
  (and
  (<= lst1 (last5
           (model__
           (mk___rep v__split_discrs (mk___split_fields v__split_fields)))))
  (<= fst1 lst1)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref current)))

;; H
  (assert (= current1 fst1))

;; H
  (assert (<= fst1 current1))

;; H
  (assert (<= current1 lst1))

;; H
  (assert
  (= (length (mk___rep v__split_discrs v__split_fields4)) (length
                                                          (mk___rep
                                                          v__split_discrs
                                                          (mk___split_fields
                                                          v__split_fields)))))

;; H
  (assert
  (forall ((i Int))
  (=> (and (<= fst1 i) (<= i (- current2 1)))
  (= (get (model__ (mk___rep v__split_discrs v__split_fields4)) i) 0))))

;; H
  (assert
  (forall ((i Int))
  (=> (and (<= first i) (<= i (- fst1 1)))
  (= (get (model__ (mk___rep v__split_discrs v__split_fields4)) i) (get
                                                                   (model__
                                                                   (mk___rep
                                                                   v__split_discrs
                                                                   (mk___split_fields
                                                                   v__split_fields)))
                                                                   i)))))

;; H
  (assert
  (forall ((i Int))
  (=>
  (and (<= current2 i)
  (<= i (last5 (model__ (mk___rep v__split_discrs v__split_fields4)))))
  (= (get (model__ (mk___rep v__split_discrs v__split_fields4)) i) (get
                                                                   (model__
                                                                   (mk___rep
                                                                   v__split_discrs
                                                                   (mk___split_fields
                                                                   v__split_fields)))
                                                                   i)))))

;; H
  (assert
  (and
  (and (=> (<= fst1 lst1) (dynamic_property6 fst1 lst1 current2))
  (dynamic_property2 0 last2
  (to_rep1 (rec__use_vectors__my_vectors__vector__capacity v__split_discrs))))
  (and (<= fst1 current2) (<= current2 lst1))))

;; H
  (assert
  (and
  (and
  (and
  (= (length (mk___rep v__split_discrs v__split_fields3)) (length
                                                          (mk___rep
                                                          v__split_discrs
                                                          v__split_fields4)))
  (= (get (model__ (mk___rep v__split_discrs v__split_fields3)) current2) 0))
  (= (equal_except (model__ (mk___rep v__split_discrs v__split_fields4))
     (model__ (mk___rep v__split_discrs v__split_fields3)) current2) true))
  (dynamic_property2 0 last2
  (to_rep1 (rec__use_vectors__my_vectors__vector__capacity v__split_discrs)))))

;; H
  (assert (not (= current2 lst1)))

;; H
  (assert (= result1 current2))

;; H
  (assert (= current3 (+ current2 1)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (= (length (mk___rep v__split_discrs v__split_fields3)) (length
                                                          (mk___rep
                                                          v__split_discrs
                                                          (mk___split_fields
                                                          v__split_fields))))))
(check-sat)
