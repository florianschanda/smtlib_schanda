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

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-sort character 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (character character) Bool)

(declare-fun dummy2 () character)

(declare-datatypes ()
((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character 
  (character__content a))

(declare-fun to_rep (character) Int)

(declare-fun of_rep (Int) character)

;; inversion_axiom
  (assert
  (forall ((x character))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x character)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))

;; slide_eq
  (assert
  (forall ((a (Array Int character)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int character)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int character) Int Int (Array Int character) Int
  Int) (Array Int character))

;; concat_def
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (character Int) (Array Int character))

;; singleton_def
  (assert
  (forall ((v character))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int character)) (a__first Int) (a__last Int)
  (b (Array Int character)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_78 Int))
                           (=>
                           (and (<= a__first temp___idx_78)
                           (<= temp___idx_78 a__last))
                           (= (to_rep (select a temp___idx_78)) (to_rep
                                                                (select b (+ (- b__first a__first) temp___idx_78)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_78 Int))
  (=> (and (<= a__first temp___idx_78) (<= temp___idx_78 a__last))
  (= (to_rep (select a temp___idx_78)) (to_rep
                                       (select b (+ (- b__first a__first) temp___idx_78)))))))))))

(declare-fun compare ((Array Int character) Int Int (Array Int character) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int character))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))

(define-fun of_array ((a (Array Int character)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int character)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int character)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-fun to_string (us_image) us_t)

(declare-fun from_string (us_t) us_image)

(declare-datatypes ()
((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content
                                                            a))

(define-fun dynamic_invariant ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(declare-sort natural 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (natural natural) Bool)

(declare-fun dummy4 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range4
                                     temp___expr_33)))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(declare-fun to_upper (Int) Int)

(declare-fun to_upper__function_guard (Int Int) Bool)

;; to_upper__post_axiom
  (assert
  (forall ((item Int))
  (! (=> (dynamic_invariant2 item true true true) (dynamic_invariant2
     (to_upper item) true false true)) :pattern ((to_upper item)) )))

(declare-fun v__first () integer)

(declare-fun v__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-sort printable_character 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 33 x) (<= x 126)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (printable_character printable_character) Bool)

(declare-fun dummy5 () printable_character)

(declare-datatypes ()
((printable_character__ref
 (mk_printable_character__ref
 (printable_character__content printable_character)))))
(define-fun printable_character__ref___projection ((a printable_character__ref)) printable_character 
  (printable_character__content a))

(declare-sort tTlineSP1 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 1024)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (tTlineSP1 tTlineSP1) Bool)

(declare-fun dummy6 () tTlineSP1)

(declare-datatypes ()
((tTlineSP1__ref (mk_tTlineSP1__ref (tTlineSP1__content tTlineSP1)))))
(define-fun tTlineSP1__ref___projection ((a tTlineSP1__ref)) tTlineSP1 
  (tTlineSP1__content a))

(declare-sort tfirst_charS 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 1 x) (<= x 1025)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq7 (tfirst_charS tfirst_charS) Bool)

(declare-fun dummy7 () tfirst_charS)

(declare-datatypes ()
((tfirst_charS__ref
 (mk_tfirst_charS__ref (tfirst_charS__content tfirst_charS)))))
(define-fun tfirst_charS__ref___projection ((a tfirst_charS__ref)) tfirst_charS 
  (tfirst_charS__content a))

(define-fun dynamic_invariant3 ((temp___expr_583 Int)
  (temp___is_init_580 Bool) (temp___skip_constant_581 Bool)
  (temp___do_toplevel_582 Bool)) Bool (=>
                                      (or (= temp___is_init_580 true)
                                      (<= 1 1025)) (in_range7
                                      temp___expr_583)))

(declare-sort tlast_charS 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 1024)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq8 (tlast_charS tlast_charS) Bool)

(declare-fun dummy8 () tlast_charS)

(declare-datatypes ()
((tlast_charS__ref (mk_tlast_charS__ref (tlast_charS__content tlast_charS)))))
(define-fun tlast_charS__ref___projection ((a tlast_charS__ref)) tlast_charS 
  (tlast_charS__content a))

(define-fun dynamic_invariant4 ((temp___expr_589 Int)
  (temp___is_init_586 Bool) (temp___skip_constant_587 Bool)
  (temp___do_toplevel_588 Bool)) Bool (=>
                                      (or (= temp___is_init_586 true)
                                      (<= 0 1024)) (in_range8
                                      temp___expr_589)))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun r25b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun r26b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq9 (integer integer) Bool)

(declare-fun dummy9 () integer)

(declare-datatypes () ((t27b__ref (mk_t27b__ref (t27b__content integer)))))
(define-fun t27b__ref___projection ((a t27b__ref)) integer (t27b__content a))

(declare-sort t1 0)

(declare-fun first3 (t1) integer)

(declare-fun last3 (t1) integer)

(declare-fun mk1 (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first3 (mk1 f l))) f)
     (= (to_rep1 (last3 (mk1 f l))) l)))) :pattern ((mk1 f l)) )))

(define-fun dynamic_property2 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property1 range_first range_last low)
                   (dynamic_property1 range_first range_last high))))))

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array Int character))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array Int character) (elts1 a))

(define-fun of_array1 ((a (Array Int character)) (f Int)
  (l Int)) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first4 ((a us_t1)) Int (to_rep1 (first3 (rt1 a))))

(define-fun last4 ((a us_t1)) Int (to_rep1 (last3 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (<= (first4 a) (last4 a))
                                    (+ (- (last4 a) (first4 a)) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int character)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int character)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment1 a))))

(define-fun bool_eq11 ((x us_t1)
  (y us_t1)) Bool (bool_eq3 (elts1 x) (to_rep1 (first3 (rt1 x)))
                  (to_rep1 (last3 (rt1 x))) (elts1 y)
                  (to_rep1 (first3 (rt1 y))) (to_rep1 (last3 (rt1 y)))))

(declare-fun user_eq10 (us_t1 us_t1) Bool)

(declare-fun dummy10 () us_t1)

(declare-datatypes () ((t28b__ref (mk_t28b__ref (t28b__content us_t1)))))
(define-fun t28b__ref___projection ((a t28b__ref)) us_t1 (t28b__content a))

(declare-fun s__first () integer)

(declare-fun s__last () integer)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun last5 () Int)

(define-fun dynamic_property3 ((first_int Int) (last_int Int)
  (x Int)) Bool (and (<= first_int x) (<= x last_int)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)

(declare-fun user_eq11 (integer integer) Bool)

(declare-fun dummy11 () integer)

(declare-datatypes () ((t30b__ref (mk_t30b__ref (t30b__content integer)))))
(define-fun t30b__ref___projection ((a t30b__ref)) integer (t30b__content a))

(declare-sort t2 0)

(declare-fun first5 (t2) integer)

(declare-fun last6 (t2) integer)

(declare-fun mk2 (Int Int) t2)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first5 (mk2 f l))) f)
     (= (to_rep1 (last6 (mk2 f l))) l)))) :pattern ((mk2 f l)) )))

(define-fun dynamic_property4 ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (dynamic_property3 range_first range_last low)
                   (dynamic_property3 range_first range_last high))))))

(declare-datatypes ()
((us_t2 (mk___t2 (elts2 (Array Int character))(rt2 t2)))))
(define-fun to_array2 ((a us_t2)) (Array Int character) (elts2 a))

(define-fun of_array2 ((a (Array Int character)) (f Int)
  (l Int)) us_t2 (mk___t2 a (mk2 f l)))

(define-fun first6 ((a us_t2)) Int (to_rep1 (first5 (rt2 a))))

(define-fun last7 ((a us_t2)) Int (to_rep1 (last6 (rt2 a))))

(define-fun length2 ((a us_t2)) Int (ite (<= (first6 a) (last7 a))
                                    (+ (- (last7 a) (first6 a)) 1) 0))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int character)) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int character)) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment2 a))))

(define-fun bool_eq13 ((x us_t2)
  (y us_t2)) Bool (bool_eq3 (elts2 x) (to_rep1 (first5 (rt2 x)))
                  (to_rep1 (last6 (rt2 x))) (elts2 y)
                  (to_rep1 (first5 (rt2 y))) (to_rep1 (last6 (rt2 y)))))

(declare-fun user_eq12 (us_t2 us_t2) Bool)

(declare-fun dummy12 () us_t2)

(declare-datatypes () ((t31b__ref (mk_t31b__ref (t31b__content us_t2)))))
(define-fun t31b__ref___projection ((a t31b__ref)) us_t2 (t31b__content a))

(declare-fun temp___622 (Int Int Int) us_t2)

;; def_axiom
  (assert
  (forall ((temp___624 Int) (temp___625 Int) (temp___626 Int))
  (let ((temp___623 (temp___622 temp___624 temp___625 temp___626)))
  (and
  (=> (dynamic_property 1 2147483647 temp___625 temp___626)
  (and (= (first6 temp___623) temp___625) (= (last7 temp___623) temp___626)))
  (forall ((temp___627 Int))
  (= (select (to_array2 temp___623) temp___627) (of_rep temp___624)))))))

(define-fun dynamic_invariant5 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant6 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(define-fun dynamic_invariant7 ((temp___expr_568 Int)
  (temp___is_init_565 Bool) (temp___skip_constant_566 Bool)
  (temp___do_toplevel_567 Bool)) Bool (=>
                                      (or (= temp___is_init_565 true)
                                      (<= 33 126)) (in_range5
                                      temp___expr_568)))

(declare-fun size () Int)

(declare-fun line () (Array Int character))

(declare-fun first_char () Int)

(declare-fun last_char () Int)

(declare-fun line_num () Int)

(declare-fun start () Int)

(declare-fun current_char () Int)

(declare-fun temp___615 () Int)

(declare-fun temp___614 () (Array Int character))

(declare-fun temp___613 () Int)

(declare-fun temp___612 () Int)

(declare-fun temp___611 () Int)

(declare-fun o () Int)

(declare-fun line1 () (Array Int character))

(declare-fun first_char1 () Int)

(declare-fun last_char1 () Int)

(declare-fun line_num1 () Int)

(declare-fun current_char1 () Int)

(declare-fun first_char2 () Int)

(declare-fun last_char2 () Int)

(declare-fun line_num2 () Int)

(declare-fun current_char2 () Int)

(declare-fun line2 () (Array Int character))

(declare-fun first_char3 () Int)

(declare-fun last_char3 () Int)

(declare-fun line_num3 () Int)

(declare-fun current_char3 () Int)

(declare-fun line3 () map__ref)

(declare-fun first_char4 () int__ref)

(declare-fun last_char4 () int__ref)

(declare-fun line_num4 () int__ref)

(declare-fun current_char4 () int__ref)

(declare-fun line4 () (Array Int character))

(declare-fun first_char5 () Int)

(declare-fun last_char5 () Int)

(declare-fun line_num5 () Int)

(declare-fun current_char5 () Int)

(declare-fun line5 () map__ref)

(declare-fun first_char6 () int__ref)

(declare-fun last_char6 () int__ref)

(declare-fun line_num6 () int__ref)

(declare-fun current_char6 () int__ref)

(declare-fun line6 () (Array Int character))

(declare-fun first_char7 () Int)

(declare-fun last_char7 () Int)

(declare-fun line_num7 () Int)

(declare-fun current_char7 () Int)

(declare-fun result () int__ref)

(declare-fun first_char8 () Int)

(declare-fun result1 () int__ref)

(declare-fun first_char9 () Int)

(declare-fun first_char10 () int__ref)

(declare-fun first_char11 () Int)

(declare-fun result2 () int__ref)

(declare-fun start1 () Int)

;; H
  (assert (in_range7 first_char))

;; H
  (assert (in_range8 last_char))

;; H
  (assert (in_range4 line_num))

;; H
  (assert (dynamic_property 1 2147483647 (to_rep1 v__first)
  (to_rep1 v__last)))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 size)))

;; H
  (assert
  (<= 1024 (ite (<= (to_rep1 v__first) (to_rep1 v__last))
           (+ (- (to_rep1 v__last) (to_rep1 v__first)) 1) 0)))

;; H
  (assert (=> (<= 0 2147483647) (in_range4 start)))

;; H
  (assert (=> (<= 0 255) (in_range3 current_char)))

;; H
  (assert (=> (<= first_char 1024) (= temp___615 first_char)))

;; H
  (assert (=> (<= first_char 1024) (= temp___614 line)))

;; H
  (assert (=> (<= first_char 1024) (= temp___613 line_num)))

;; H
  (assert (=> (<= first_char 1024) (= temp___612 current_char)))

;; H
  (assert (=> (<= first_char 1024) (= temp___611 last_char)))

;; H
  (assert
  (=> (<= first_char 1024)
  (and
  (and
  (and (and (in_range8 last_char2) (=> (<= 0 255) (in_range3 current_char2)))
  (in_range4 line_num2)) (in_range7 first_char2)) (<= first_char2 1024))))

;; H
  (assert
  (=> (<= first_char 1024)
  (and
  (and (and (in_range3 current_char3) (in_range7 first_char3)) (in_range8
  last_char3)) (in_range4 line_num3))))

;; H
  (assert
  (=> (<= first_char 1024)
  (or (in_range5 current_char3)
  (and (not (in_range5 current_char3)) (not (<= first_char3 1024))))))

;; H
  (assert
  (=> (<= first_char 1024) (= current_char4 (mk_int__ref current_char3))))

;; H
  (assert (=> (<= first_char 1024) (= line_num4 (mk_int__ref line_num3))))

;; H
  (assert (=> (<= first_char 1024) (= last_char4 (mk_int__ref last_char3))))

;; H
  (assert
  (=> (<= first_char 1024) (= first_char4 (mk_int__ref first_char3))))

;; H
  (assert (=> (<= first_char 1024) (= line3 (mk_map__ref line2))))

;; H
  (assert (=> (<= first_char 1024) (= current_char5 current_char3)))

;; H
  (assert (=> (<= first_char 1024) (= line_num5 line_num3)))

;; H
  (assert (=> (<= first_char 1024) (= last_char5 last_char3)))

;; H
  (assert (=> (<= first_char 1024) (= first_char5 first_char3)))

;; H
  (assert (=> (<= first_char 1024) (= line4 line2)))

;; H
  (assert (=> (<= first_char 1024) (= current_char6 current_char4)))

;; H
  (assert (=> (<= first_char 1024) (= line_num6 line_num4)))

;; H
  (assert (=> (<= first_char 1024) (= last_char6 last_char4)))

;; H
  (assert (=> (<= first_char 1024) (= first_char6 first_char4)))

;; H
  (assert (=> (<= first_char 1024) (= line5 line3)))

;; H
  (assert (=> (<= first_char 1024) (= current_char7 current_char5)))

;; H
  (assert (=> (<= first_char 1024) (= line_num7 line_num5)))

;; H
  (assert (=> (<= first_char 1024) (= last_char7 last_char5)))

;; H
  (assert (=> (<= first_char 1024) (= first_char7 first_char5)))

;; H
  (assert (=> (<= first_char 1024) (= line6 line4)))

;; H
  (assert
  (=> (not (<= first_char 1024))
  (= current_char6 (mk_int__ref current_char))))

;; H
  (assert
  (=> (not (<= first_char 1024)) (= line_num6 (mk_int__ref line_num))))

;; H
  (assert
  (=> (not (<= first_char 1024)) (= last_char6 (mk_int__ref last_char))))

;; H
  (assert
  (=> (not (<= first_char 1024)) (= first_char6 (mk_int__ref first_char))))

;; H
  (assert (=> (not (<= first_char 1024)) (= line5 (mk_map__ref line))))

;; H
  (assert (=> (not (<= first_char 1024)) (= current_char7 current_char1)))

;; H
  (assert (=> (not (<= first_char 1024)) (= line_num7 line_num1)))

;; H
  (assert (=> (not (<= first_char 1024)) (= last_char7 last_char1)))

;; H
  (assert (=> (not (<= first_char 1024)) (= first_char7 first_char1)))

;; H
  (assert (=> (not (<= first_char 1024)) (= line6 line1)))

;; H
  (assert
  (=> (<= 1 (- (int__content first_char6) 1))
  (and (= o (- (int__content first_char6) 1)) (in_range7
  (- (int__content first_char6) 1)))))

;; H
  (assert
  (=> (<= 1 (- (int__content first_char6) 1)) (= result first_char6)))

;; H
  (assert (=> (<= 1 (- (int__content first_char6) 1)) (= first_char8 o)))

;; H
  (assert
  (=> (<= 1 (- (int__content first_char6) 1))
  (= first_char10 (mk_int__ref first_char8))))

;; H
  (assert
  (=> (<= 1 (- (int__content first_char6) 1)) (= first_char11 first_char8)))

;; H
  (assert
  (=> (not (<= 1 (- (int__content first_char6) 1))) (= result1 first_char6)))

;; H
  (assert
  (=> (not (<= 1 (- (int__content first_char6) 1))) (= first_char9 1)))

;; H
  (assert
  (=> (not (<= 1 (- (int__content first_char6) 1)))
  (= first_char10 (mk_int__ref first_char9))))

;; H
  (assert
  (=> (not (<= 1 (- (int__content first_char6) 1)))
  (= first_char11 first_char9)))

;; H
  (assert (= result2 (mk_int__ref start)))

;; H
  (assert (= start1 (int__content first_char10)))

;; H
  (assert (<= (int__content first_char10) 1024))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (<= 1 (int__content first_char10))))
(check-sat)
