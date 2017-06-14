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

(declare-sort my_int 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (my_int my_int) Bool)

(declare-fun dummy1 () my_int)

(declare-datatypes ()
((my_int__ref (mk_my_int__ref (my_int__content my_int)))))
(define-fun my_int__ref___projection ((a my_int__ref)) my_int (my_int__content
                                                              a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort t 0)

(define-fun in_range2 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (t t) Bool)

(declare-fun dummy2 () t)

(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))

(define-fun dynamic_invariant1 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (=>
                                      (or (= temp___is_init_138 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range2 temp___expr_141)))

(declare-fun double1 (Int) Int)

(declare-fun double1__function_guard (Int Int) Bool)

;; double1__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant1 x true true true)
     (let ((result (double1 x)))
     (=> (double1__function_guard result x) (dynamic_invariant1 result true
     false true)))) :pattern ((double1 x)) )))

(declare-sort t1 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (t1 t1) Bool)

(declare-fun dummy3 () t1)

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 t1)))))
(define-fun t__ref_2__projection ((a t__ref1)) t1 (t__content1 a))

(define-fun dynamic_invariant2 ((temp___expr_147 Int)
  (temp___is_init_144 Bool) (temp___skip_constant_145 Bool)
  (temp___do_toplevel_146 Bool)) Bool (=>
                                      (or (= temp___is_init_144 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range3 temp___expr_147)))

(declare-fun double2 (Int) Int)

(declare-fun double2__function_guard (Int Int) Bool)

;; double2__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant2 x true true true)
     (let ((result (double2 x)))
     (=> (double2__function_guard result x) (dynamic_invariant2 result true
     false true)))) :pattern ((double2 x)) )))

(declare-sort t2 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (t2 t2) Bool)

(declare-fun dummy4 () t2)

(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 t2)))))
(define-fun t__ref_3__projection ((a t__ref2)) t2 (t__content2 a))

(define-fun dynamic_invariant3 ((temp___expr_153 Int)
  (temp___is_init_150 Bool) (temp___skip_constant_151 Bool)
  (temp___do_toplevel_152 Bool)) Bool (=>
                                      (or (= temp___is_init_150 true)
                                      (<= 1 10)) (in_range4 temp___expr_153)))

(declare-fun ten1 (Int) Int)

(declare-fun ten1__function_guard (Int Int) Bool)

;; ten1__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant3 x true true true)
     (let ((result (ten1 x)))
     (=> (ten1__function_guard result x) (dynamic_invariant3 result true
     false true)))) :pattern ((ten1 x)) )))

(declare-sort t3 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (t3 t3) Bool)

(declare-fun dummy5 () t3)

(declare-datatypes () ((t__ref3 (mk_t__ref3 (t__content3 t3)))))
(define-fun t__ref_4__projection ((a t__ref3)) t3 (t__content3 a))

(define-fun dynamic_invariant4 ((temp___expr_159 Int)
  (temp___is_init_156 Bool) (temp___skip_constant_157 Bool)
  (temp___do_toplevel_158 Bool)) Bool (=>
                                      (or (= temp___is_init_156 true)
                                      (<= 1 10)) (in_range5 temp___expr_159)))

(declare-fun ten2 (Int) Int)

(declare-fun ten2__function_guard (Int Int) Bool)

;; ten2__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant4 x true true true)
     (let ((result (ten2 x)))
     (=> (ten2__function_guard result x) (dynamic_invariant4 result true
     false true)))) :pattern ((ten2 x)) )))

(declare-fun false1 (Int) Bool)

(declare-fun false1__function_guard (Bool Int) Bool)

(declare-sort t4 0)

(define-fun in_range6 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (t4 t4) Bool)

(declare-fun dummy6 () t4)

(declare-datatypes () ((t__ref4 (mk_t__ref4 (t__content4 t4)))))
(define-fun t__ref_5__projection ((a t__ref4)) t4 (t__content4 a))

(define-fun dynamic_invariant5 ((temp___expr_165 Int)
  (temp___is_init_162 Bool) (temp___skip_constant_163 Bool)
  (temp___do_toplevel_164 Bool)) Bool (=>
                                      (or (= temp___is_init_162 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range6 temp___expr_165)))

;; false1__post_axiom
  (assert true)

(declare-fun false2 (Int) Bool)

(declare-fun false2__function_guard (Bool Int) Bool)

(declare-sort t5 0)

(define-fun in_range7 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq7 (t5 t5) Bool)

(declare-fun dummy7 () t5)

(declare-datatypes () ((t__ref5 (mk_t__ref5 (t__content5 t5)))))
(define-fun t__ref_6__projection ((a t__ref5)) t5 (t__content5 a))

(define-fun dynamic_invariant6 ((temp___expr_171 Int)
  (temp___is_init_168 Bool) (temp___skip_constant_169 Bool)
  (temp___do_toplevel_170 Bool)) Bool (=>
                                      (or (= temp___is_init_168 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range7 temp___expr_171)))

;; false2__post_axiom
  (assert true)

(declare-fun fixed_true1 (Int) Bool)

(declare-fun fixed_true1__function_guard (Bool Int) Bool)

(declare-sort t6 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq8 (t6 t6) Bool)

(declare-fun dummy8 () t6)

(declare-datatypes () ((t__ref6 (mk_t__ref6 (t__content6 t6)))))
(define-fun t__ref_7__projection ((a t__ref6)) t6 (t__content6 a))

(define-fun dynamic_invariant7 ((temp___expr_177 Int)
  (temp___is_init_174 Bool) (temp___skip_constant_175 Bool)
  (temp___do_toplevel_176 Bool)) Bool (=>
                                      (or (= temp___is_init_174 true)
                                      (<= 1 10)) (in_range8 temp___expr_177)))

;; fixed_true1__post_axiom
  (assert true)

(declare-fun fixed_true2 (Int) Bool)

(declare-fun fixed_true2__function_guard (Bool Int) Bool)

(declare-sort t7 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq9 (t7 t7) Bool)

(declare-fun dummy9 () t7)

(declare-datatypes () ((t__ref7 (mk_t__ref7 (t__content7 t7)))))
(define-fun t__ref_8__projection ((a t__ref7)) t7 (t__content7 a))

(define-fun dynamic_invariant8 ((temp___expr_183 Int)
  (temp___is_init_180 Bool) (temp___skip_constant_181 Bool)
  (temp___do_toplevel_182 Bool)) Bool (=>
                                      (or (= temp___is_init_180 true)
                                      (<= 1 10)) (in_range9 temp___expr_183)))

;; fixed_true2__post_axiom
  (assert true)

(declare-fun true1R (Int) Bool)

(declare-fun true1R__function_guard (Bool Int) Bool)

(declare-sort t8 0)

(define-fun in_range10 ((x Int)) Bool (and (<= (- 2147483648) x)
                                      (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)

(declare-fun user_eq10 (t8 t8) Bool)

(declare-fun dummy10 () t8)

(declare-datatypes () ((t__ref8 (mk_t__ref8 (t__content8 t8)))))
(define-fun t__ref_9__projection ((a t__ref8)) t8 (t__content8 a))

(define-fun dynamic_invariant9 ((temp___expr_189 Int)
  (temp___is_init_186 Bool) (temp___skip_constant_187 Bool)
  (temp___do_toplevel_188 Bool)) Bool (=>
                                      (or (= temp___is_init_186 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range10 temp___expr_189)))

;; true1R__post_axiom
  (assert true)

(declare-fun true2R (Int) Bool)

(declare-fun true2R__function_guard (Bool Int) Bool)

(declare-sort t9 0)

(define-fun in_range11 ((x Int)) Bool (and (<= (- 2147483648) x)
                                      (<= x 2147483647)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE11 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check11 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE11 (us_image) Int)

(declare-fun user_eq11 (t9 t9) Bool)

(declare-fun dummy11 () t9)

(declare-datatypes () ((t__ref9 (mk_t__ref9 (t__content9 t9)))))
(define-fun t__ref_10__projection ((a t__ref9)) t9 (t__content9 a))

(define-fun dynamic_invariant10 ((temp___expr_195 Int)
  (temp___is_init_192 Bool) (temp___skip_constant_193 Bool)
  (temp___do_toplevel_194 Bool)) Bool (=>
                                      (or (= temp___is_init_192 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range11 temp___expr_195)))

;; true2R__post_axiom
  (assert true)

(declare-fun fixed_false1R (Int) Bool)

(declare-fun fixed_false1R__function_guard (Bool Int) Bool)

(declare-sort t10 0)

(define-fun in_range12 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE12 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check12 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE12 (us_image) Int)

(declare-fun user_eq12 (t10 t10) Bool)

(declare-fun dummy12 () t10)

(declare-datatypes () ((t__ref10 (mk_t__ref10 (t__content10 t10)))))
(define-fun t__ref_11__projection ((a t__ref10)) t10 (t__content10 a))

(define-fun dynamic_invariant11 ((temp___expr_201 Int)
  (temp___is_init_198 Bool) (temp___skip_constant_199 Bool)
  (temp___do_toplevel_200 Bool)) Bool (=>
                                      (or (= temp___is_init_198 true)
                                      (<= 1 10)) (in_range12
                                      temp___expr_201)))

;; fixed_false1R__post_axiom
  (assert true)

(declare-fun fixed_false2R (Int) Bool)

(declare-fun fixed_false2R__function_guard (Bool Int) Bool)

(declare-sort t11 0)

(define-fun in_range13 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq13 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE13 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check13 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE13 (us_image) Int)

(declare-fun user_eq13 (t11 t11) Bool)

(declare-fun dummy13 () t11)

(declare-datatypes () ((t__ref11 (mk_t__ref11 (t__content11 t11)))))
(define-fun t__ref_12__projection ((a t__ref11)) t11 (t__content11 a))

(define-fun dynamic_invariant12 ((temp___expr_207 Int)
  (temp___is_init_204 Bool) (temp___skip_constant_205 Bool)
  (temp___do_toplevel_206 Bool)) Bool (=>
                                      (or (= temp___is_init_204 true)
                                      (<= 1 10)) (in_range13
                                      temp___expr_207)))

;; fixed_false2R__post_axiom
  (assert true)

(define-fun dynamic_invariant13 ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 1 10)) (in_range1 temp___expr_135)))

(declare-fun a () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun result () Int)

(declare-fun a1 () Int)

(declare-fun result1 () Int)

(declare-fun a2 () Int)

;; H
  (assert (in_range a))

;; H
  (assert
  (and (and (= o (double1 a)) (double1__function_guard o a)) (in_range2 o)))

;; H
  (assert (= result a))

;; H
  (assert (= a1 o))

;; H
  (assert
  (and (and (= o1 (double2 a1)) (double2__function_guard o1 a1)) (in_range3
  o1)))

;; H
  (assert (= result1 a1))

;; H
  (assert (= a2 o1))

(assert
;; WP_parameter_def
 ;; File "opers.ads", line 7, characters 0-0
  (not (in_range1 a2)))
(check-sat)
