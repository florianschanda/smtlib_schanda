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

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (natural natural) Bool)

(declare-fun dummy () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(declare-sort character 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (character character) Bool)

(declare-fun dummy1 () character)

(declare-datatypes ()
((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character 
  (character__content a))

(define-fun dynamic_invariant1 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range2 temp___expr_63)))

(declare-fun to_rep (character) Int)

(declare-fun of_rep (Int) character)

;; inversion_axiom
  (assert
  (forall ((x character))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x character)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
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

(define-fun bool_eq2 ((a (Array Int character)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq2 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq2 a a_first i b b_first j) true)
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
     (and (= (bool_eq2 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-sort tTlineSP1 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 1024)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (tTlineSP1 tTlineSP1) Bool)

(declare-fun dummy2 () tTlineSP1)

(declare-datatypes ()
((tTlineSP1__ref (mk_tTlineSP1__ref (tTlineSP1__content tTlineSP1)))))
(define-fun tTlineSP1__ref___projection ((a tTlineSP1__ref)) tTlineSP1 
  (tTlineSP1__content a))

(declare-sort tfirst_charS 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 1025)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (tfirst_charS tfirst_charS) Bool)

(declare-fun dummy3 () tfirst_charS)

(declare-datatypes ()
((tfirst_charS__ref
 (mk_tfirst_charS__ref (tfirst_charS__content tfirst_charS)))))
(define-fun tfirst_charS__ref___projection ((a tfirst_charS__ref)) tfirst_charS 
  (tfirst_charS__content a))

(define-fun dynamic_invariant2 ((temp___expr_583 Int)
  (temp___is_init_580 Bool) (temp___skip_constant_581 Bool)
  (temp___do_toplevel_582 Bool)) Bool (=>
                                      (or (= temp___is_init_580 true)
                                      (<= 1 1025)) (in_range4
                                      temp___expr_583)))

(declare-sort tlast_charS 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 1024)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (tlast_charS tlast_charS) Bool)

(declare-fun dummy4 () tlast_charS)

(declare-datatypes ()
((tlast_charS__ref (mk_tlast_charS__ref (tlast_charS__content tlast_charS)))))
(define-fun tlast_charS__ref___projection ((a tlast_charS__ref)) tlast_charS 
  (tlast_charS__content a))

(define-fun dynamic_invariant3 ((temp___expr_589 Int)
  (temp___is_init_586 Bool) (temp___skip_constant_587 Bool)
  (temp___do_toplevel_588 Bool)) Bool (=>
                                      (or (= temp___is_init_586 true)
                                      (<= 0 1024)) (in_range5
                                      temp___expr_589)))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun line () (Array Int character))

(declare-fun first_char () Int)

(declare-fun last_char () Int)

(declare-fun line_num () Int)

(declare-fun c () Int)

(declare-fun temp___651 () Int)

(declare-fun temp___650 () (Array Int character))

(declare-fun temp___649 () Int)

(declare-fun temp___648 () Int)

(declare-fun line1 () (Array Int character))

(declare-fun first_char1 () Int)

(declare-fun last_char1 () Int)

(declare-fun line_num1 () Int)

(declare-fun first_char2 () Int)

(declare-fun last_char2 () Int)

(declare-fun line_num2 () Int)

(declare-fun line2 () (Array Int character))

(declare-fun first_char3 () Int)

(declare-fun last_char3 () Int)

(declare-fun line_num3 () Int)

(declare-fun line3 () (Array Int character))

(declare-fun first_char4 () Int)

(declare-fun last_char4 () Int)

(declare-fun line_num4 () Int)

(declare-fun line4 () (Array Int character))

(declare-fun first_char5 () Int)

(declare-fun last_char5 () Int)

(declare-fun line_num5 () Int)

(declare-fun line5 () (Array Int character))

(declare-fun first_char6 () Int)

(declare-fun last_char6 () Int)

(declare-fun line_num6 () Int)

(declare-fun line6 () (Array Int character))

(declare-fun first_char7 () Int)

(declare-fun last_char7 () Int)

(declare-fun line_num7 () Int)

(define-fun line_num8 () int__ref (mk_int__ref line_num6))

(define-fun last_char8 () int__ref (mk_int__ref last_char6))

(define-fun first_char8 () int__ref (mk_int__ref first_char6))

(define-fun line7 () map__ref (mk_map__ref line5))

;; H
  (assert (in_range4 first_char))

;; H
  (assert (in_range5 last_char))

;; H
  (assert (in_range1 line_num))

;; H
  (assert (=> (<= 0 255) (in_range2 c)))

;; H
  (assert (<= first_char 1024))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= temp___651 first_char)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= temp___650 line)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= temp___649 line_num)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= temp___648 last_char)))

;; H
  (assert
  (=> (< last_char (+ first_char 0))
  (and
  (and (and (in_range5 last_char2) (in_range1 line_num2)) (in_range4
  first_char2)) (< last_char2 (+ first_char2 0)))))

;; H
  (assert
  (=> (< last_char (+ first_char 0))
  (and (and (in_range4 first_char3) (in_range5 last_char3)) (in_range1
  line_num3))))

;; H
  (assert
  (=> (< last_char (+ first_char 0)) (not (< last_char3 (+ first_char3 0)))))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= line_num3 line_num4)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= last_char3 last_char4)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= first_char3 first_char4)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= line2 line3)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= line_num5 line_num3)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= last_char5 last_char3)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= first_char5 first_char3)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= line4 line2)))

;; H
  (assert
  (=> (< last_char (+ first_char 0)) (= line_num8 (mk_int__ref line_num4))))

;; H
  (assert
  (=> (< last_char (+ first_char 0)) (= last_char8 (mk_int__ref last_char4))))

;; H
  (assert
  (=> (< last_char (+ first_char 0))
  (= first_char8 (mk_int__ref first_char4))))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= line7 (mk_map__ref line3))))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= line_num7 line_num5)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= last_char7 last_char5)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= first_char7 first_char5)))

;; H
  (assert (=> (< last_char (+ first_char 0)) (= line6 line4)))

;; H
  (assert
  (=> (not (< last_char (+ first_char 0)))
  (= line_num8 (mk_int__ref line_num))))

;; H
  (assert
  (=> (not (< last_char (+ first_char 0)))
  (= last_char8 (mk_int__ref last_char))))

;; H
  (assert
  (=> (not (< last_char (+ first_char 0)))
  (= first_char8 (mk_int__ref first_char))))

;; H
  (assert
  (=> (not (< last_char (+ first_char 0))) (= line7 (mk_map__ref line))))

;; H
  (assert (=> (not (< last_char (+ first_char 0))) (= line_num7 line_num1)))

;; H
  (assert
  (=> (not (< last_char (+ first_char 0))) (= last_char7 last_char1)))

;; H
  (assert
  (=> (not (< last_char (+ first_char 0))) (= first_char7 first_char1)))

;; H
  (assert (=> (not (< last_char (+ first_char 0))) (= line6 line1)))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not (<= 1 first_char6)))
(check-sat)
