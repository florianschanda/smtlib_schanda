(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTNIRA)
(set-info :source |Benchmarks generated by Florian Schanda from the public SPARK 2014 testsuite and post-processed with a script to set more precise logics.|)
(set-info :category industrial)
(set-info :status unknown)

(declare-datatypes () ((tuple0 (Tuple0))))
(declare-sort us_private 0)
(declare-fun private__bool_eq (us_private us_private) Bool)
(declare-const us_null_ext__ us_private)
(declare-sort us_type_of_heap 0)
(declare-datatypes () ((us_type_of_heap__ref (mk___type_of_heap__ref (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)
(declare-datatypes () ((int__ref (mk_int__ref (int__content Int)))))
(declare-datatypes () ((bool__ref (mk_bool__ref (bool__content Bool)))))
(declare-datatypes () ((real__ref (mk_real__ref (real__content Real)))))
(declare-datatypes () ((us_private__ref (mk___private__ref (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))
(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))
(define-fun real__ref___projection ((a real__ref)) Real (real__content a))
(define-fun us_private__ref___projection ((a us_private__ref)) us_private (us_private__content a))
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(declare-const long_side Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const side_2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const side_3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(define-fun dynamic_invariant1 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-const main__is_right_angle_triangle__result Bool)
(declare-const o Int)
(declare-const o1 Int)
(declare-const o2 Int)
(declare-const o3 Int)
(declare-const o4 Int)
(declare-const result Bool)
(declare-const result1 Bool)
(declare-const main__is_right_angle_triangle__result1 Bool)
(declare-const result2 Bool)
(declare-const main__is_right_angle_triangle__result2 Bool)
(declare-const main__is_right_angle_triangle__result3 Bool)
(declare-const main__is_right_angle_triangle__result4 Bool)
(declare-const main__is_right_angle_triangle__result5 Bool)
(declare-const main__is_right_angle_triangle__result6 Bool)
(declare-const main__is_right_angle_triangle__result7 Bool)
(declare-const main__is_right_angle_triangle__result8 Bool)
(define-fun main__is_right_angle_triangle__result9 () bool__ref (mk_bool__ref main__is_right_angle_triangle__result5))
(define-fun main__is_right_angle_triangle__result10 () bool__ref (mk_bool__ref main__is_right_angle_triangle__result))
(declare-const result3 Bool)
(assert (in_range2 long_side))
(assert (in_range2 side_2))
(assert (in_range2 side_3))
(assert (= main__is_right_angle_triangle__result9 (mk_bool__ref main__is_right_angle_triangle__result3)))
(assert (= main__is_right_angle_triangle__result6 main__is_right_angle_triangle__result4))
(assert (and (= o (* side_3 side_3)) (in_range1 (* side_3 side_3))))
(assert (and (= o1 (* side_2 side_2)) (in_range1 (* side_2 side_2))))
(assert (= o2 (+ o1 o)))
(assert (and (= o3 o2) (in_range1 o2)))
(assert (and (= o4 (* long_side long_side)) (in_range1 (* long_side long_side))))
(assert (= result (ite (= o4 o3) true false)))
(assert (=> (= result true) (= main__is_right_angle_triangle__result1 main__is_right_angle_triangle__result3)))
(assert (=> (= result true) (= main__is_right_angle_triangle__result4 main__is_right_angle_triangle__result1)))
(assert (=> (= result true) (= (mk_bool__ref result1) main__is_right_angle_triangle__result10)))
(assert (=> (= result true) (= main__is_right_angle_triangle__result1 (distinct 1 0))))
(assert (=> (not (= result true)) (= main__is_right_angle_triangle__result2 main__is_right_angle_triangle__result3)))
(assert (=> (not (= result true)) (= main__is_right_angle_triangle__result4 main__is_right_angle_triangle__result2)))
(assert (=> (not (= result true)) (= (mk_bool__ref result2) main__is_right_angle_triangle__result10)))
(assert (=> (not (= result true)) (= main__is_right_angle_triangle__result2 (distinct 0 0))))
(assert (= (mk_bool__ref main__is_right_angle_triangle__result7) main__is_right_angle_triangle__result9))
(assert (= main__is_right_angle_triangle__result8 main__is_right_angle_triangle__result6))
(assert (= result3 main__is_right_angle_triangle__result7))
(assert (= (* long_side long_side) (+ (* side_2 side_2) (* side_3 side_3))))
(assert (not (= main__is_right_angle_triangle__result7 true)))
(check-sat)
(exit)
