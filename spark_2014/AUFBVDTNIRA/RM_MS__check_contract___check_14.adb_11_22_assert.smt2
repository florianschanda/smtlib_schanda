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

(declare-sort small 0)

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (small small) Bool)

(declare-fun dummy () small)

(declare-datatypes () ((small__ref (mk_small__ref (small__content small)))))
(define-fun small__ref___projection ((a small__ref)) small (small__content a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 1 10)) (in_range temp___expr_135)))

(declare-sort big 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 21)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (big big) Bool)

(declare-fun dummy1 () big)

(declare-datatypes () ((big__ref (mk_big__ref (big__content big)))))
(define-fun big__ref___projection ((a big__ref)) big (big__content a))

(define-fun dynamic_invariant1 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 1 21)) (in_range1 temp___expr_141)))

(declare-fun a () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun b () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun c () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun c1 () Int)

(declare-fun result () Int)

(declare-fun c2 () Int)

(declare-fun result1 () Int)

(declare-fun c3 () Int)

(declare-fun result2 () Int)

(declare-fun c4 () Int)

;; H
  (assert (in_range a))

;; H
  (assert (in_range b))

;; H
  (assert (in_range1 c))

;; H
  (assert (=> (<= c (+ a b)) (= (mk_int__ref result) (mk_int__ref c))))

;; H
  (assert (=> (<= c (+ a b)) (= c2 a)))

;; H
  (assert (=> (<= c (+ a b)) (and (= o (+ c2 b)) (in_range1 (+ c2 b)))))

;; H
  (assert (=> (<= c (+ a b)) (= c2 result1)))

;; H
  (assert (=> (<= c (+ a b)) (= c3 o)))

;; H
  (assert (=> (<= c (+ a b)) (and (= o1 (+ c3 1)) (in_range1 (+ c3 1)))))

;; H
  (assert (=> (<= c (+ a b)) (= result2 c3)))

;; H
  (assert (=> (<= c (+ a b)) (= c4 o1)))

;; H
  (assert (=> (not (<= c (+ a b))) (= c4 c)))

;; H
  (assert (=> (not (<= c (+ a b))) (= c4 c1)))

(assert
;; WP_parameter_def
 ;; File "check_14.ads", line 7, characters 0-0
  (not (< (+ a b) c4)))
(check-sat)
