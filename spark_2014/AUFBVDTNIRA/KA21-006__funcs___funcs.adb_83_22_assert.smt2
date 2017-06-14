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

(declare-fun f1 (Int) Bool)

(declare-fun f1__function_guard (Bool Int) Bool)

;; f1__post_axiom
  (assert true)

;; f1__def_axiom
  (assert
  (forall ((x Int))
  (! (=> (f1__function_guard (f1 x) x) (= (= (f1 x) true) (< 0 x))) :pattern (
  (f1 x)) )))

(declare-fun f2 (Int) Bool)

(declare-fun f2__function_guard (Bool Int) Bool)

;; f2__post_axiom
  (assert true)

;; f2__def_axiom
  (assert
  (forall ((x Int))
  (! (=> (f2__function_guard (f2 x) x) (= (= (f2 x) true) (< 0 x))) :pattern (
  (f2 x)) )))

(declare-fun f5 (Int) Bool)

(declare-fun f5__function_guard (Bool Int) Bool)

;; f5__post_axiom
  (assert true)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun g1 (Int Int) Bool)

(declare-fun g1__function_guard (Bool Int Int) Bool)

;; g1__post_axiom
  (assert true)

;; g1__def_axiom
  (assert
  (forall ((x Int) (funcs__g Int))
  (! (=> (g1__function_guard (g1 x funcs__g) x funcs__g)
     (= (= (g1 x funcs__g) true) (< 0 funcs__g))) :pattern ((g1 x funcs__g)) )))

(declare-fun g2 (Int Int) Bool)

(declare-fun g2__function_guard (Bool Int Int) Bool)

;; g2__post_axiom
  (assert true)

;; g2__def_axiom
  (assert
  (forall ((x Int) (funcs__g Int))
  (! (=> (g2__function_guard (g2 x funcs__g) x funcs__g)
     (= (= (g2 x funcs__g) true) (< 0 funcs__g))) :pattern ((g2 x funcs__g)) )))

(declare-fun g5 (Int Int) Bool)

(declare-fun g5__function_guard (Bool Int Int) Bool)

;; g5__post_axiom
  (assert true)

(declare-fun p2 (Int) Bool)

(declare-fun p2__function_guard (Bool Int) Bool)

;; p2__post_axiom
  (assert true)

;; p2__def_axiom
  (assert
  (forall ((x Int))
  (! (=> (p2__function_guard (p2 x) x) (= (= (p2 x) true) (< 0 x))) :pattern (
  (p2 x)) )))

(declare-fun p5 (Int) Bool)

(declare-fun p5__function_guard (Bool Int) Bool)

;; p5__post_axiom
  (assert true)

(declare-fun q2 (Int) Bool)

(declare-fun q2__function_guard (Bool Int) Bool)

;; q2__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (q2 x)))
     (=> (q2__function_guard result x) (= (= result true) (< 0 x))))) :pattern (
  (q2 x)) )))

;; q2__def_axiom
  (assert
  (forall ((x Int))
  (! (=> (q2__function_guard (q2 x) x) (= (= (q2 x) true) (< 0 x))) :pattern (
  (q2 x)) )))

(declare-fun q5 (Int) Bool)

(declare-fun q5__function_guard (Bool Int) Bool)

;; q5__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (q5 x)))
     (=> (q5__function_guard result x) (= (= result true) (< 0 x))))) :pattern (
  (q5 x)) )))

(declare-fun f3 (Int) Bool)

(declare-fun f3__function_guard (Bool Int) Bool)

;; f3__post_axiom
  (assert true)

;; f3__def_axiom
  (assert
  (forall ((x Int))
  (! (=> (f3__function_guard (f3 x) x) (= (= (f3 x) true) (< 0 x))) :pattern (
  (f3 x)) )))

(declare-fun f4 (Int) Bool)

(declare-fun f4__function_guard (Bool Int) Bool)

;; f4__post_axiom
  (assert true)

;; f4__def_axiom
  (assert
  (forall ((x Int))
  (! (=> (f4__function_guard (f4 x) x) (= (= (f4 x) true) (< 0 x))) :pattern (
  (f4 x)) )))

(declare-fun g3 (Int Int) Bool)

(declare-fun g3__function_guard (Bool Int Int) Bool)

;; g3__post_axiom
  (assert true)

;; g3__def_axiom
  (assert
  (forall ((x Int) (funcs__g Int))
  (! (=> (g3__function_guard (g3 x funcs__g) x funcs__g)
     (= (= (g3 x funcs__g) true) (< 0 funcs__g))) :pattern ((g3 x funcs__g)) )))

(declare-fun g4 (Int Int) Bool)

(declare-fun g4__function_guard (Bool Int Int) Bool)

;; g4__post_axiom
  (assert true)

;; g4__def_axiom
  (assert
  (forall ((x Int) (funcs__g Int))
  (! (=> (g4__function_guard (g4 x funcs__g) x funcs__g)
     (= (= (g4 x funcs__g) true) (< 0 funcs__g))) :pattern ((g4 x funcs__g)) )))

(declare-fun p4 (Int) Bool)

(declare-fun p4__function_guard (Bool Int) Bool)

;; p4__post_axiom
  (assert true)

;; p4__def_axiom
  (assert
  (forall ((x Int))
  (! (=> (p4__function_guard (p4 x) x) (= (= (p4 x) true) (< 0 x))) :pattern (
  (p4 x)) )))

(declare-fun q4 (Int) Bool)

(declare-fun q4__function_guard (Bool Int) Bool)

;; q4__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant x true true true)
     (let ((result (q4 x)))
     (=> (q4__function_guard result x) (= (= result true) (< 0 x))))) :pattern (
  (q4 x)) )))

;; q4__def_axiom
  (assert
  (forall ((x Int))
  (! (=> (q4__function_guard (q4 x) x) (= (= (q4 x) true) (< 0 x))) :pattern (
  (q4 x)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun g () Int)

(declare-fun y () Bool)

(declare-fun o () Bool)

(declare-fun o1 () Bool)

(declare-fun o2 () Bool)

(declare-fun o3 () Bool)

(declare-fun o4 () Bool)

(declare-fun o5 () Bool)

(declare-fun o6 () Bool)

(declare-fun o7 () Bool)

(declare-fun result () Bool)

(declare-fun y1 () Bool)

(declare-fun result1 () Bool)

(declare-fun y2 () Bool)

(declare-fun result2 () Bool)

(declare-fun y3 () Bool)

(declare-fun result3 () Bool)

(declare-fun y4 () Bool)

(declare-fun result4 () Bool)

(declare-fun y5 () Bool)

(declare-fun result5 () Int)

(declare-fun g6 () Int)

(declare-fun result6 () Bool)

(declare-fun y6 () Bool)

(declare-fun result7 () Bool)

(declare-fun y7 () Bool)

(declare-fun result8 () Bool)

(declare-fun y8 () Bool)

;; H
  (assert (in_range1 g))

;; H
  (assert (f1__function_guard (f1 3) 3))

;; H
  (assert (= (f1 3) true))

;; H
  (assert
  (and (and (= o (f1 3)) (f1__function_guard o 3)) (= (= o true) (< 0 3))))

;; H
  (assert (= result y))

;; H
  (assert (= y1 o))

;; H
  (assert (f1__function_guard (f1 3) 3))

;; H
  (assert (= (= y1 true) (= (f1 3) true)))

;; H
  (assert (f2__function_guard (f2 3) 3))

;; H
  (assert (= (f2 3) true))

;; H
  (assert
  (and (and (= o1 (f2 3)) (f2__function_guard o1 3)) (= (= o1 true) (< 0 3))))

;; H
  (assert (= result1 y1))

;; H
  (assert (= y2 o1))

;; H
  (assert (f2__function_guard (f2 3) 3))

;; H
  (assert (= (= y2 true) (= (f2 3) true)))

;; H
  (assert (f3__function_guard (f3 3) 3))

;; H
  (assert (= (f3 3) true))

;; H
  (assert
  (and (and (= o2 (f3 3)) (f3__function_guard o2 3)) (= (= o2 true) (< 0 3))))

;; H
  (assert (= result2 y2))

;; H
  (assert (= y3 o2))

;; H
  (assert (f3__function_guard (f3 3) 3))

;; H
  (assert (= (= y3 true) (= (f3 3) true)))

;; H
  (assert (f4__function_guard (f4 3) 3))

;; H
  (assert (= (f4 3) true))

;; H
  (assert
  (and (and (= o3 (f4 3)) (f4__function_guard o3 3)) (= (= o3 true) (< 0 3))))

;; H
  (assert (= result3 y3))

;; H
  (assert (= y4 o3))

;; H
  (assert (f4__function_guard (f4 3) 3))

;; H
  (assert (= (= y4 true) (= (f4 3) true)))

;; H
  (assert (f5__function_guard (f5 3) 3))

;; H
  (assert (f5__function_guard (f5 3) 3))

;; H
  (assert (and (= o4 (f5 3)) (f5__function_guard o4 3)))

;; H
  (assert (= result4 y4))

;; H
  (assert (= y5 o4))

;; H
  (assert (f5__function_guard (f5 3) 3))

;; H
  (assert (= (= y5 true) (= (f5 3) true)))

;; H
  (assert (= result5 g))

;; H
  (assert (= g6 3))

;; H
  (assert (g1__function_guard (g1 3 g6) 3 g6))

;; H
  (assert (= (g1 3 g6) true))

;; H
  (assert
  (and (and (= o5 (g1 3 g6)) (g1__function_guard o5 3 g6))
  (= (= o5 true) (< 0 g6))))

;; H
  (assert (= result6 y5))

;; H
  (assert (= y6 o5))

;; H
  (assert (g1__function_guard (g1 3 g6) 3 g6))

;; H
  (assert (= (= y6 true) (= (g1 3 g6) true)))

;; H
  (assert (g2__function_guard (g2 3 g6) 3 g6))

;; H
  (assert (= (g2 3 g6) true))

;; H
  (assert
  (and (and (= o6 (g2 3 g6)) (g2__function_guard o6 3 g6))
  (= (= o6 true) (< 0 g6))))

;; H
  (assert (= result7 y6))

;; H
  (assert (= y7 o6))

;; H
  (assert (g2__function_guard (g2 3 g6) 3 g6))

;; H
  (assert (= (= y7 true) (= (g2 3 g6) true)))

;; H
  (assert (g3__function_guard (g3 3 g6) 3 g6))

;; H
  (assert (= (g3 3 g6) true))

;; H
  (assert
  (and (and (= o7 (g3 3 g6)) (g3__function_guard o7 3 g6))
  (= (= o7 true) (< 0 g6))))

;; H
  (assert (= result8 y7))

;; H
  (assert (= y8 o7))

;; H
  (assert (g3__function_guard (g3 3 g6) 3 g6))

;; H
  (assert (= (= y8 true) (= (g3 3 g6) true)))

;; H
  (assert (g4__function_guard (g4 3 g6) 3 g6))

(assert
;; WP_parameter_def
 ;; File "funcs.adb", line 54, characters 0-0
  (not (= (g4 3 g6) true)))
(check-sat)
