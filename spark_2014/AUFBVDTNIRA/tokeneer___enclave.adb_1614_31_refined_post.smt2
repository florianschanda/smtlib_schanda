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

(declare-fun privatekeypresent (us_private) Bool)

(declare-fun privatekeypresent__function_guard (Bool us_private) Bool)

;; privatekeypresent__post_axiom
  (assert true)

(declare-sort statust 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 8)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (statust statust) Bool)

(declare-fun dummy () statust)

(declare-datatypes ()
((statust__ref (mk_statust__ref (statust__content statust)))))
(define-fun statust__ref_2__projection ((a statust__ref)) statust (statust__content
                                                                  a))

(define-fun dynamic_invariant ((temp___expr_1903 Int)
  (temp___is_init_1900 Bool) (temp___skip_constant_1901 Bool)
  (temp___do_toplevel_1902 Bool)) Bool (=>
                                       (or (= temp___is_init_1900 true)
                                       (<= 0 8)) (in_range1
                                       temp___expr_1903)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun statusisenclavequiescent (Int) Bool)

(declare-fun statusisenclavequiescent__function_guard (Bool Int) Bool)

;; statusisenclavequiescent__post_axiom
  (assert true)

;; statusisenclavequiescent__def_axiom
  (assert
  (forall ((enclave__status Int))
  (! (=> (statusisenclavequiescent__function_guard
     (statusisenclavequiescent enclave__status) enclave__status)
     (= (= (statusisenclavequiescent enclave__status) true)
     (= enclave__status 3))) :pattern ((statusisenclavequiescent
                                       enclave__status)) )))

(declare-fun enrolmentisinprogress (Int) Bool)

(declare-fun enrolmentisinprogress__function_guard (Bool Int) Bool)

(declare-sort enrolmentstates 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (enrolmentstates enrolmentstates) Bool)

(declare-fun dummy1 () enrolmentstates)

(declare-datatypes ()
((enrolmentstates__ref
 (mk_enrolmentstates__ref (enrolmentstates__content enrolmentstates)))))
(define-fun enrolmentstates__ref___projection ((a enrolmentstates__ref)) enrolmentstates 
  (enrolmentstates__content a))

;; enrolmentisinprogress__post_axiom
  (assert true)

;; enrolmentisinprogress__def_axiom
  (assert
  (forall ((enclave__status Int))
  (! (=> (enrolmentisinprogress__function_guard
     (enrolmentisinprogress enclave__status) enclave__status)
     (= (= (enrolmentisinprogress enclave__status) true) (in_range2
     enclave__status))) :pattern ((enrolmentisinprogress enclave__status)) )))

(define-fun dynamic_invariant1 ((temp___expr_2155 Int)
  (temp___is_init_2152 Bool) (temp___skip_constant_2153 Bool)
  (temp___do_toplevel_2154 Bool)) Bool (=>
                                       (or (= temp___is_init_2152 true)
                                       (<= 0 2)) (in_range2
                                       temp___expr_2155)))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun state () us_private)

(declare-fun store1 () us_private)

(declare-fun state1 () us_private)

(declare-fun status () Int)

(declare-fun localstatus () Int)

(declare-fun o () Int)

(declare-fun state2 () us_private)

(declare-fun store2 () us_private)

(declare-fun state3 () us_private)

(declare-fun result () Int)

(declare-fun localstatus1 () Int)

(declare-fun filestate () us_private)

(declare-fun state4 () us_private)

(declare-fun state5 () us_private)

(declare-fun state6 () us_private)

(declare-fun state7 () us_private)

(declare-fun status1 () Int)

(declare-fun filestate1 () us_private)

(declare-fun state8 () us_private)

(declare-fun state9 () us_private)

(declare-fun store3 () us_private)

(declare-fun state10 () us_private)

(declare-fun state11 () us_private)

(declare-fun status2 () Int)

(declare-fun filestate2 () us_private)

(declare-fun state12 () us_private)

(declare-fun state13 () us_private)

(declare-fun state14 () us_private)

(declare-fun status3 () Int)

(declare-fun filestate3 () us_private)

(declare-fun state15 () us_private)

(declare-fun state16 () us_private)

(declare-fun store4 () us_private)

(declare-fun state17 () us_private)

(declare-fun state18 () us_private)

(declare-fun state19 () us_private)

(declare-fun status4 () Int)

(declare-fun localstatus2 () Int)

(declare-fun filestate4 () us_private)

(declare-fun state20 () us_private)

(declare-fun state21 () us_private)

(declare-fun store5 () us_private)

(declare-fun state22 () us_private)

(declare-fun state23 () us_private)

(declare-fun state24 () us_private)

(declare-fun status5 () Int)

(declare-fun localstatus3 () Int)

;; H
  (assert (in_range1 status))

;; H
  (assert (enrolmentisinprogress__function_guard
  (enrolmentisinprogress status) status))

;; H
  (assert (privatekeypresent__function_guard (privatekeypresent state)
  state))

;; H
  (assert
  (and (= (enrolmentisinprogress status) true)
  (not (= (privatekeypresent state) true))))

;; H
  (assert (privatekeypresent__function_guard (privatekeypresent state9)
  state9))

;; H
  (assert (privatekeypresent__function_guard (privatekeypresent state9)
  state9))

;; H
  (assert (=> (<= 0 2) (in_range2 localstatus)))

;; H
  (assert (and (= o status) (in_range2 status)))

;; H
  (assert (= (mk_int__ref result) (mk_int__ref localstatus)))

;; H
  (assert (= localstatus1 o))

;; H
  (assert
  (=> (= localstatus1 0) (and (in_range2 status1) (in_range1 status1))))

;; H
  (assert (=> (= localstatus1 0) (= store3 store1)))

;; H
  (assert (=> (= localstatus1 0) (= state9 state)))

;; H
  (assert (=> (= localstatus1 0) (= store3 store2)))

;; H
  (assert (=> (= localstatus1 0) (= state9 state2)))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (= localstatus1 1)
  (and
  (or (and (= status2 3) (= (privatekeypresent state9) true))
  (and (= status2 2) (not (= (privatekeypresent state9) true)))) (in_range1
  status2)))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1))
  (and (or (= status3 2) (= status3 0)) (in_range1 status3)))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= status2 status3))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= state11 state14))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= state10 state13))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= store3 store1))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= state9 state))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= state8 state12))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= filestate1 filestate2))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= status2 status3))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= state11 state14))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= state10 state13))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= store3 store2))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= state9 state2))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= state8 state12))))

;; H
  (assert
  (=> (not (= localstatus1 0))
  (=> (not (= localstatus1 1)) (= filestate1 filestate2))))

;; H
  (assert (=> (not (= localstatus1 0)) (= status1 status2)))

;; H
  (assert (=> (not (= localstatus1 0)) (= state7 state11)))

;; H
  (assert (=> (not (= localstatus1 0)) (= state6 state1)))

;; H
  (assert (=> (not (= localstatus1 0)) (= state5 state10)))

;; H
  (assert (=> (not (= localstatus1 0)) (= state4 state8)))

;; H
  (assert (=> (not (= localstatus1 0)) (= filestate filestate1)))

;; H
  (assert (=> (not (= localstatus1 0)) (= status1 status2)))

;; H
  (assert (=> (not (= localstatus1 0)) (= state7 state11)))

;; H
  (assert (=> (not (= localstatus1 0)) (= state6 state3)))

;; H
  (assert (=> (not (= localstatus1 0)) (= state5 state10)))

;; H
  (assert (=> (not (= localstatus1 0)) (= state4 state8)))

;; H
  (assert (=> (not (= localstatus1 0)) (= filestate filestate1)))

;; H
  (assert (= localstatus2 localstatus1))

;; H
  (assert (= status1 status4))

;; H
  (assert (= state19 state7))

;; H
  (assert (= state18 state6))

;; H
  (assert (= state17 state5))

;; H
  (assert (= store4 store3))

;; H
  (assert (= state9 state16))

;; H
  (assert (= state15 state4))

;; H
  (assert (= filestate3 filestate))

;; H
  (assert (= localstatus3 localstatus1))

;; H
  (assert (= status5 status1))

;; H
  (assert (= state24 state7))

;; H
  (assert (= state23 state6))

;; H
  (assert (= state22 state5))

;; H
  (assert (= store5 store3))

;; H
  (assert (= state21 state9))

;; H
  (assert (= state20 state4))

;; H
  (assert (= filestate4 filestate))

;; H
  (assert (privatekeypresent__function_guard (privatekeypresent state16)
  state16))

;; H
  (assert (= (privatekeypresent state16) true))

;; H
  (assert (enrolmentisinprogress__function_guard
  (enrolmentisinprogress status4) status4))

(assert
;; WP_parameter_def
 ;; File "enclave.adb", line 1572, characters 0-0
  (not (not (= (enrolmentisinprogress status4) true))))
(check-sat)
