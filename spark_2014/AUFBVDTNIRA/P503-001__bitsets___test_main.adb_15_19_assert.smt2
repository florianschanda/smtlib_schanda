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

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int Bool))))))
(declare-fun slide ((Array Int Bool) Int Int) (Array Int Bool))

;; slide_eq
  (assert
  (forall ((a (Array Int Bool)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int Bool)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int Bool) Int Int (Array Int Bool) Int
  Int) (Array Int Bool))

;; concat_def
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (Bool Int) (Array Int Bool))

;; singleton_def
  (assert
  (forall ((v Bool))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq ((a (Array Int Bool)) (a__first Int) (a__last Int)
  (b (Array Int Bool)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (select a temp___idx_133) (select b (+ (- b__first a__first) temp___idx_133))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (select a temp___idx_133) (select b (+ (- b__first a__first) temp___idx_133))))))))))

(declare-fun compare ((Array Int Bool) Int Int (Array Int Bool) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_int1 (select a (+ i 1))) (to_int1 (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_int1 (select b (+ i 1))) (to_int1 (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun xorb ((Array Int Bool) Int Int (Array Int Bool) Int
  Int) (Array Int Bool))

(declare-fun andb ((Array Int Bool) Int Int (Array Int Bool) Int
  Int) (Array Int Bool))

(declare-fun orb ((Array Int Bool) Int Int (Array Int Bool) Int
  Int) (Array Int Bool))

(declare-fun notb ((Array Int Bool) Int Int) (Array Int Bool))

;; op_def
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (orb a a_first a_last b b_first b_last) i) (or (select a i) (select b (+ (- i a_first) b_first))))) :pattern ((select 
  (orb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (andb a a_first a_last b b_first b_last) i) (and (select a i) (select b (+ (- i a_first) b_first))))) :pattern ((select 
  (andb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (xorb a a_first a_last b b_first b_last) i) (xor (select a i) (select b (+ (- i a_first) b_first))))) :pattern ((select 
  (xorb a a_first a_last b b_first b_last) i)) )))))

;; notb_def
  (assert
  (forall ((a (Array Int Bool)))
  (forall ((a_first Int) (a_last Int))
  (forall ((i Int))
  (! (=> (and (<= a_first i) (<= i a_last))
     (= (select (notb a a_first a_last) i) (not (select a i)))) :pattern ((select 
  (notb a a_first a_last) i)) )))))

(declare-fun mem ((Array Int Bool) Int) Bool)

(declare-fun mem__function_guard (Bool (Array Int Bool) Int) Bool)

(declare-sort element 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (element element) Bool)

(declare-fun dummy () element)

(declare-datatypes ()
((element__ref (mk_element__ref (element__content element)))))
(define-fun element__ref___projection ((a element__ref)) element (element__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_267 Int)
  (temp___is_init_264 Bool) (temp___skip_constant_265 Bool)
  (temp___do_toplevel_266 Bool)) Bool (=>
                                      (or (= temp___is_init_264 true)
                                      (<= 1 10)) (in_range1 temp___expr_267)))

;; mem__post_axiom
  (assert true)

;; mem__def_axiom
  (assert
  (forall ((s (Array Int Bool)))
  (forall ((e Int))
  (! (=> (mem__function_guard (mem s e) s e)
     (= (= (mem s e) true) (= (select s e) true))) :pattern ((mem s e)) ))))

(declare-fun empty (tuple0) (Array Int Bool))

(declare-fun empty__function_guard ((Array Int Bool) tuple0) Bool)

;; empty__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (let ((result (empty us_void_param)))
     (and
     (forall ((elt Int)) (mem__function_guard (mem result elt) result elt))
     (=> (empty__function_guard result us_void_param)
     (forall ((elt Int))
     (=> (and (<= 1 elt) (<= elt 10)) (not (= (mem result elt) true))))))) :pattern (
  (empty us_void_param)) )))

(declare-fun add ((Array Int Bool) Int) (Array Int Bool))

(declare-fun add__function_guard ((Array Int Bool) (Array Int Bool)
  Int) Bool)

(declare-fun ext_equal ((Array Int Bool) (Array Int Bool)) Bool)

(declare-fun ext_equal__function_guard (Bool (Array Int Bool)
  (Array Int Bool)) Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

;; add__post_axiom
  (assert
  (forall ((s (Array Int Bool)))
  (forall ((e Int))
  (! (=> (dynamic_invariant e true true true)
     (let ((result (add s e)))
     (and
     (forall ((elt Int)) (mem__function_guard (mem result elt) result elt))
     (and (forall ((elt Int)) (mem__function_guard (mem s elt) s elt))
     (=> (add__function_guard result s e)
     (forall ((elt Int))
     (=> (and (<= 1 elt) (<= elt 10))
     (= (= (mem result elt) true) (=> (not (= elt e)) (= (mem s elt) true)))))))))) :pattern (
  (add s e)) ))))

;; ext_equal__post_axiom
  (assert true)

;; ext_equal__def_axiom
  (assert
  (forall ((a (Array Int Bool)) (b (Array Int Bool)))
  (! (=> (ext_equal__function_guard (ext_equal a b) a b)
     (and (forall ((elt Int)) (mem__function_guard (mem a elt) a elt))
     (and (forall ((elt Int)) (mem__function_guard (mem b elt) b elt))
     (= (= (ext_equal a b) true)
     (forall ((elt Int))
     (=> (and (<= 1 elt) (<= elt 10))
     (= (= (mem a elt) true) (= (mem b elt) true)))))))) :pattern ((ext_equal
                                                                   a b)) )))

(declare-fun s () (Array Int Bool))

(declare-fun o () (Array Int Bool))

(declare-fun result () (Array Int Bool))

(declare-fun s1 () (Array Int Bool))

(declare-fun s2 () (Array Int Bool))

(declare-fun s3 () (Array Int Bool))

;; H
  (assert (forall ((elt Int)) (mem__function_guard (mem o elt) o elt)))

;; H
  (assert
  (and (and (= o (empty Tuple0)) (empty__function_guard o Tuple0))
  (forall ((elt Int))
  (=> (and (<= 1 elt) (<= elt 10)) (not (= (mem o elt) true))))))

;; H
  (assert (= result s))

;; H
  (assert (= s1 o))

;; H
  (assert (add__function_guard (add s1 8) s1 8))

;; H
  (assert (add__function_guard (add s1 8) s1 8))

;; H
  (assert (ext_equal__function_guard (ext_equal s2 (add s1 8)) s2
  (add s1 8)))

;; H
  (assert (= (ext_equal s2 (add s1 8)) true))

;; H
  (assert (add__function_guard (add s2 3) s2 3))

;; H
  (assert (add__function_guard (add s2 3) s2 3))

;; H
  (assert (ext_equal__function_guard (ext_equal s3 (add s2 3)) s3
  (add s2 3)))

;; H
  (assert (= (ext_equal s3 (add s2 3)) true))

;; H
  (assert (mem__function_guard (mem s3 3) s3 3))

;; H
  (assert (= (mem s3 3) true))

;; H
  (assert (mem__function_guard (mem s3 8) s3 8))

;; H
  (assert (= (mem s3 8) true))

;; H
  (assert (mem__function_guard (mem s3 1) s3 1))

;; H
  (assert (not (= (mem s3 1) true)))

;; H
  (assert (mem__function_guard (mem s3 2) s3 2))

;; H
  (assert (not (= (mem s3 2) true)))

;; H
  (assert (mem__function_guard (mem s3 4) s3 4))

(assert
;; WP_parameter_def
 ;; File "bitsets.ads", line 47, characters 0-0
  (not (not (= (mem s3 4) true))))
(check-sat)
