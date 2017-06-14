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

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun offside_fd_on () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun is_ap_engaged () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun fd_on () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun modes_on () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS8 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS9 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS10 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS11 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS12 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS13 () Int)

(declare-fun true_out1 () Bool)

(declare-fun unit_delay_memory () Bool)

(declare-fun unit_delay_out1 () Bool)

(declare-fun fd_on_out1 () Bool)

(declare-fun is_ap_engaged_out1 () Bool)

(declare-fun modes_on_out1 () Bool)

(declare-fun offside_fd_on_out1 () Bool)

(declare-fun or1_out1 () Bool)

(declare-fun equals_out1 () Bool)

(declare-fun or_out1 () Bool)

(declare-fun result () Bool)

(declare-fun unit_delay_out11 () Bool)

(declare-fun result1 () Bool)

(declare-fun fd_on_out11 () Bool)

(declare-fun result2 () Bool)

(declare-fun is_ap_engaged_out11 () Bool)

(declare-fun result3 () Bool)

(declare-fun modes_on_out11 () Bool)

(declare-fun result4 () Bool)

(declare-fun offside_fd_on_out11 () Bool)

(declare-fun result5 () Bool)

(declare-fun or1_out11 () Bool)

(declare-fun result6 () Bool)

(declare-fun equals_out11 () Bool)

(declare-fun result7 () Bool)

(declare-fun true_out11 () Bool)

(declare-fun result8 () Bool)

(declare-fun or_out11 () Bool)

;; H
  (assert (= result unit_delay_out1))

;; H
  (assert (= unit_delay_out11 unit_delay_memory))

;; H
  (assert (= result1 fd_on_out1))

;; H
  (assert (= fd_on_out11 fd_on))

;; H
  (assert (= result2 is_ap_engaged_out1))

;; H
  (assert (= is_ap_engaged_out11 is_ap_engaged))

;; H
  (assert (= result3 modes_on_out1))

;; H
  (assert (= modes_on_out11 modes_on))

;; H
  (assert (= result4 offside_fd_on_out1))

;; H
  (assert (= offside_fd_on_out11 offside_fd_on))

;; H
  (assert (= result5 or1_out1))

;; H
  (assert
  (= or1_out11 (ite (or
                    (or (= offside_fd_on_out11 true)
                    (= is_ap_engaged_out11 true)) (= fd_on_out11 true))
               true false)))

;; H
  (assert (= result6 equals_out1))

;; H
  (assert
  (= equals_out11 (ite (= (to_int1 or1_out11) (to_int1 modes_on_out11)) true
                  false)))

;; H
  (assert (= result7 true_out1))

;; H
  (assert (= true_out11 (of_int 0)))

;; H
  (assert (= result8 or_out1))

;; H
  (assert
  (= or_out11 (ite (or (= unit_delay_out11 true) (= equals_out11 true)) true
              false)))

(assert
;; WP_parameter_def
 ;; File "modes_on_iff_fd_on_or_ap_engaged.adb", line 17, characters 0-0
  (not (= or_out11 true)))
(check-sat)
