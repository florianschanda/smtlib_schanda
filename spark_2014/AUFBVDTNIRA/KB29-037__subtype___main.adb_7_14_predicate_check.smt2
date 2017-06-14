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

(declare-fun div1 (Int Int) Int)

(declare-fun mod1 (Int Int) Int)

;; Div_mod
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (and (< (- (abs y)) (mod1 x y)) (< (mod1 x y) (abs y))))))

;; Div_sign_pos
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
  (assert
  (forall ((x Int) (y Int))
  (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
  (assert
  (forall ((x Int) (y Int))
  (=> (not (= y 0)) (<= (abs (* (div1 x y) y)) (abs x)))))

;; Div_1
  (assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
  (assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
  (assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                            (+ (* x y) z) x)) )))

;; Mod_mult
  (assert
  (forall ((x Int) (y Int) (z Int))
  (! (=> (and (< 0 x) (and (<= 0 y) (<= 0 z)))
     (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1 (+ (* x y) z) x)) )))

(define-fun mod2 ((x Int)
  (y Int)) Int (ite (< 0 y) (mod x y) (+ (mod x y) y)))

(declare-sort my_int 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (my_int my_int) Bool)

(declare-fun dummy () my_int)

(declare-datatypes ()
((my_int__ref (mk_my_int__ref (my_int__content my_int)))))
(define-fun my_int__ref___projection ((a my_int__ref)) my_int (my_int__content
                                                              a))

(define-fun dynamic_invariant ((temp___expr_135 Int)
  (temp___is_init_132 Bool) (temp___skip_constant_133 Bool)
  (temp___do_toplevel_134 Bool)) Bool (=>
                                      (or (= temp___is_init_132 true)
                                      (<= 0 1000)) (in_range
                                      temp___expr_135)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-sort s 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (s s) Bool)

(declare-fun dummy1 () s)

(declare-datatypes () ((s__ref (mk_s__ref (s__content s)))))
(define-fun s__ref___projection ((a s__ref)) s (s__content a))

(define-fun dynamic_invariant1 ((temp___expr_141 Int)
  (temp___is_init_138 Bool) (temp___skip_constant_139 Bool)
  (temp___do_toplevel_140 Bool)) Bool (and
                                      (=>
                                      (or (= temp___is_init_138 true)
                                      (<= 0 1000)) (in_range1
                                      temp___expr_141))
                                      (=> (= temp___do_toplevel_140 true)
                                      (=> (= temp___is_init_138 true)
                                      (= (mod2 temp___expr_141 2) 0)))))

(define-fun dynamic_predicate ((temp___145 Int)) Bool (= (mod2 temp___145 2) 0))

(declare-sort t 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1000)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (t t) Bool)

(declare-fun dummy2 () t)

(declare-datatypes () ((t__ref (mk_t__ref (t__content t)))))
(define-fun t__ref___projection ((a t__ref)) t (t__content a))

(define-fun dynamic_invariant2 ((temp___expr_150 Int)
  (temp___is_init_147 Bool) (temp___skip_constant_148 Bool)
  (temp___do_toplevel_149 Bool)
  (sub__global Int)) Bool (and
                          (=> (or (= temp___is_init_147 true) (<= 0 1000))
                          (in_range2 temp___expr_150))
                          (=> (= temp___do_toplevel_149 true)
                          (=> (= temp___is_init_147 true)
                          (= (mod2 (+ sub__global temp___expr_150) 2) 0)))))

(define-fun dynamic_predicate1 ((temp___154 Int)
  (sub__global Int)) Bool (= (mod2 (+ sub__global temp___154) 2) 0))

(declare-fun f (Int) Int)

(declare-fun f__function_guard (Int Int) Bool)

;; f__post_axiom
  (assert
  (forall ((x Int))
  (! (=> (dynamic_invariant1 x true true true)
     (let ((result (f x)))
     (=> (f__function_guard result x) (dynamic_invariant1 result true false
     true)))) :pattern ((f x)) )))

(declare-fun x () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

;; x__def_axiom
  (assert (= x 22))

(declare-fun global () Int)

(declare-fun k () Int)

(declare-fun z () Int)

(declare-fun o () Int)

(declare-fun result () Int)

(declare-fun z1 () Int)

;; H
  (assert (=> (<= 0 1000) (in_range global)))

;; H
  (assert (dynamic_invariant1 x true false true))

;; H
  (assert (=> (<= 0 1000) (in_range k)))

;; H
  (assert (= (mod2 22 2) 0))

;; H
  (assert (= o 22))

;; H
  (assert (= result z))

;; H
  (assert (= z1 o))

;; H
  (assert (dynamic_invariant1 z1 true false true))

(assert
;; WP_parameter_def
 ;; File "sub.ads", line 5, characters 0-0
  (not (= (mod2 (+ global 22) 2) 0)))
(check-sat)
