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

(declare-fun is_digit (Int) Bool)

(declare-fun is_digit__function_guard (Bool Int) Bool)

;; is_digit__post_axiom
  (assert
  (forall ((c Int))
  (! (=> (dynamic_invariant1 c true true true)
     (let ((result (is_digit c)))
     (=> (is_digit__function_guard result c)
     (ite (= c 48) (= result true)
     (ite (= c 49) (= result true)
     (ite (= c 50) (= result true)
     (ite (= c 51) (= result true)
     (ite (= c 52) (= result true)
     (ite (= c 53) (= result true)
     (ite (= c 54) (= result true)
     (ite (= c 55) (= result true)
     (ite (= c 56) (= result true)
     (ite (= c 57) (= result true)
     (ite (< 57 c) (not (= result true)) (=> (< c 48) (not (= result true))))))))))))))))) :pattern (
  (is_digit c)) )))

(declare-fun convert_character_digit_to_integer (Int) Int)

(declare-fun convert_character_digit_to_integer__function_guard (Int
  Int) Bool)

;; convert_character_digit_to_integer__post_axiom
  (assert
  (forall ((source Int))
  (! (and (is_digit__function_guard (is_digit source) source)
     (=>
     (and (dynamic_invariant1 source true true true)
     (= (is_digit source) true))
     (let ((result (convert_character_digit_to_integer source)))
     (=> (convert_character_digit_to_integer__function_guard result source)
     (and
     (and (and (<= 0 result) (<= result 9))
     (ite (= source 48) (= result 0)
     (ite (= source 49) (= result 1)
     (ite (= source 50) (= result 2)
     (ite (= source 51) (= result 3)
     (ite (= source 52) (= result 4)
     (ite (= source 53) (= result 5)
     (ite (= source 54) (= result 6)
     (ite (= source 55) (= result 7)
     (ite (= source 56) (= result 8) (=> (= source 57) (= result 9))))))))))))
     (dynamic_invariant result true false true)))))) :pattern ((convert_character_digit_to_integer
                                                               source)) )))

(declare-fun source () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun target () Int)

;; H
  (assert (in_range2 source))

;; H
  (assert (=> (<= (- 2147483648) 2147483647) (in_range1 target)))

;; H
  (assert (is_digit__function_guard (is_digit source) source))

;; H
  (assert (= (is_digit source) true))

(assert
;; WP_parameter_def
 ;; File "system.ads", line 1, characters 0-0
  (not
  (<= 1 (+ (+ (+ (+ (+ (+ (+ (+ (+ (+ 0 (ite (= (= source 48) true) 1 0)) 
  (ite (= (= source 49) true) 1 0)) (ite (= (= source 50) true) 1 0)) 
  (ite (= (= source 51) true) 1 0)) (ite (= (= source 52) true) 1 0)) 
  (ite (= (= source 53) true) 1 0)) (ite (= (= source 54) true) 1 0)) 
  (ite (= (= source 55) true) 1 0)) (ite (= (= source 56) true) 1 0)) 
  (ite (= (= source 57) true) 1 0)))))
(check-sat)
