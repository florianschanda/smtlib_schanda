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

(declare-sort null_record_type 0)

(declare-fun user_eq1 (null_record_type null_record_type) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (null_record_type) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (null_record_type) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a null_record_type)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a null_record_type)) (<= 0 (object__alignment a))))

(declare-fun dummy1 () null_record_type)

(declare-datatypes ()
((null_record_type__ref
 (mk_null_record_type__ref (null_record_type__content null_record_type)))))
(define-fun null_record_type__ref___projection ((a null_record_type__ref)) null_record_type 
  (null_record_type__content a))

(declare-fun user_eq2 (null_record_type null_record_type) Bool)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (null_record_type) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (null_record_type) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a null_record_type)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a null_record_type)) (<= 0 (object__alignment1 a))))

(declare-fun dummy2 () null_record_type)

(declare-datatypes () ((t__ref (mk_t__ref (t__content null_record_type)))))
(define-fun t__ref___projection ((a t__ref)) null_record_type (t__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__test__crash__foo__valid Bool)(rec__test__crash__foo__field null_record_type)))))
(define-fun us_split_fields_Valid__projection ((a us_split_fields)) Bool 
  (rec__test__crash__foo__valid a))

(define-fun us_split_fields_Field__projection ((a us_split_fields)) null_record_type 
  (rec__test__crash__foo__field a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq1 ((a us_rep)
  (b us_rep)) Bool (ite (= (rec__test__crash__foo__valid
                           (us_split_fields1 a)) (rec__test__crash__foo__valid
                                                 (us_split_fields1 b)))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))

(declare-fun test__crash__foo__valid__first__bit () Int)

(declare-fun test__crash__foo__valid__last__bit () Int)

(declare-fun test__crash__foo__valid__position () Int)

;; test__crash__foo__valid__first__bit_axiom
  (assert (<= 0 test__crash__foo__valid__first__bit))

;; test__crash__foo__valid__last__bit_axiom
  (assert
  (< test__crash__foo__valid__first__bit test__crash__foo__valid__last__bit))

;; test__crash__foo__valid__position_axiom
  (assert (<= 0 test__crash__foo__valid__position))

(declare-fun test__crash__foo__field__first__bit () Int)

(declare-fun test__crash__foo__field__last__bit () Int)

(declare-fun test__crash__foo__field__position () Int)

;; test__crash__foo__field__first__bit_axiom
  (assert (<= 0 test__crash__foo__field__first__bit))

;; test__crash__foo__field__last__bit_axiom
  (assert
  (< test__crash__foo__field__first__bit test__crash__foo__field__last__bit))

;; test__crash__foo__field__position_axiom
  (assert (<= 0 test__crash__foo__field__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((foo__ref (mk_foo__ref (foo__content us_rep)))))
(define-fun foo__ref___projection ((a foo__ref)) us_rep (foo__content a))

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

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
  (forall ((i1 Int))
  (! (= (select (slide a old_first new_first) i1) (select a (- i1 (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i1)) ))))))

(declare-fun concat1 ((Array Int us_rep) Int Int (Array Int us_rep) Int
  Int) (Array Int us_rep))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i1 Int))
  (! (and
     (=> (and (<= a_first i1) (<= i1 a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i1) (select a i1)))
     (=> (< a_last i1)
     (= (select (concat1 a a_first a_last b b_first b_last) i1) (select b (+ (- i1 a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i1)) )))))

(declare-fun singleton1 (us_rep Int) (Array Int us_rep))

;; singleton_def
  (assert
  (forall ((v us_rep))
  (forall ((i1 Int))
  (! (= (select (singleton1 v i1) i1) v) :pattern ((select (singleton1 v i1) i1)) ))))

(define-fun bool_eq2 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
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
                           (= (bool_eq1 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq1 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-sort taD1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq4 (taD1 taD1) Bool)

(declare-fun dummy4 () taD1)

(declare-datatypes () ((taD1__ref (mk_taD1__ref (taD1__content taD1)))))
(define-fun taD1__ref___projection ((a taD1__ref)) taD1 (taD1__content a))

;; H
  (assert (in_range i))

(assert
;; WP_parameter_def
 ;; File "my_generic.adb", line 3, characters 0-0
  (not (<= 1 i)))
(check-sat)
