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

(declare-sort opandnullt 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 4)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (opandnullt opandnullt) Bool)

(declare-fun dummy () opandnullt)

(declare-datatypes ()
((opandnullt__ref (mk_opandnullt__ref (opandnullt__content opandnullt)))))
(define-fun opandnullt__ref___projection ((a opandnullt__ref)) opandnullt 
  (opandnullt__content a))

(declare-fun to_rep (opandnullt) Int)

(declare-fun of_rep (Int) opandnullt)

;; inversion_axiom
  (assert
  (forall ((x opandnullt))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x opandnullt)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort opt 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 4)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (opt opt) Bool)

(declare-fun dummy1 () opt)

(declare-datatypes () ((opt__ref (mk_opt__ref (opt__content opt)))))
(define-fun opt__ref___projection ((a opt__ref)) opt (opt__content a))

(define-fun dynamic_invariant ((temp___expr_257 Int)
  (temp___is_init_254 Bool) (temp___skip_constant_255 Bool)
  (temp___do_toplevel_256 Bool)) Bool (=>
                                      (or (= temp___is_init_254 true)
                                      (<= 1 4)) (in_range2 temp___expr_257)))

(declare-sort privileget 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (privileget privileget) Bool)

(declare-fun dummy2 () privileget)

(declare-datatypes ()
((privileget__ref (mk_privileget__ref (privileget__content privileget)))))
(define-fun privileget__ref___projection ((a privileget__ref)) privileget 
  (privileget__content a))

(declare-fun to_rep1 (privileget) Int)

(declare-fun of_rep1 (Int) privileget)

;; inversion_axiom
  (assert
  (forall ((x privileget))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x privileget)) (! (in_range3
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__admin__t__rolepresent privileget)(rec__admin__t__currentop opandnullt)))))
(define-fun us_split_fields_RolePresent__projection ((a us_split_fields)) privileget 
  (rec__admin__t__rolepresent a))

(define-fun us_split_fields_CurrentOp__projection ((a us_split_fields)) opandnullt 
  (rec__admin__t__currentop a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_3__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_3__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep1
                           (rec__admin__t__rolepresent (us_split_fields1 a))) 
                        (to_rep1
                        (rec__admin__t__rolepresent (us_split_fields1 b))))
                        (= (to_rep
                           (rec__admin__t__currentop (us_split_fields1 a))) 
                        (to_rep
                        (rec__admin__t__currentop (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

(declare-fun value__size () Int)

(declare-fun object__size (us_rep) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment a))))

(declare-fun admin__t__rolepresent__first__bit () Int)

(declare-fun admin__t__rolepresent__last__bit () Int)

(declare-fun admin__t__rolepresent__position () Int)

;; admin__t__rolepresent__first__bit_axiom
  (assert (<= 0 admin__t__rolepresent__first__bit))

;; admin__t__rolepresent__last__bit_axiom
  (assert
  (< admin__t__rolepresent__first__bit admin__t__rolepresent__last__bit))

;; admin__t__rolepresent__position_axiom
  (assert (<= 0 admin__t__rolepresent__position))

(declare-fun admin__t__currentop__first__bit () Int)

(declare-fun admin__t__currentop__last__bit () Int)

(declare-fun admin__t__currentop__position () Int)

;; admin__t__currentop__first__bit_axiom
  (assert (<= 0 admin__t__currentop__first__bit))

;; admin__t__currentop__last__bit_axiom
  (assert (< admin__t__currentop__first__bit admin__t__currentop__last__bit))

;; admin__t__currentop__position_axiom
  (assert (<= 0 admin__t__currentop__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun rolepresent (us_rep) Int)

(declare-fun rolepresent__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant1 ((temp___expr_169 Int)
  (temp___is_init_166 Bool) (temp___skip_constant_167 Bool)
  (temp___do_toplevel_168 Bool)) Bool (=>
                                      (or (= temp___is_init_166 true)
                                      (<= 0 3)) (in_range3 temp___expr_169)))

;; rolepresent__post_axiom
  (assert
  (forall ((theadmin us_rep))
  (! (let ((result (rolepresent theadmin)))
     (=> (rolepresent__function_guard result theadmin) (dynamic_invariant1
     result true false true))) :pattern ((rolepresent theadmin)) )))

;; rolepresent__def_axiom
  (assert
  (forall ((theadmin us_rep))
  (! (=> (rolepresent__function_guard (rolepresent theadmin) theadmin)
     (= (rolepresent theadmin) (to_rep1
                               (rec__admin__t__rolepresent
                               (us_split_fields1 theadmin))))) :pattern (
  (rolepresent theadmin)) )))

(declare-fun isdoingop (us_rep) Bool)

(declare-fun isdoingop__function_guard (Bool us_rep) Bool)

;; isdoingop__post_axiom
  (assert true)

;; isdoingop__def_axiom
  (assert
  (forall ((theadmin us_rep))
  (! (=> (isdoingop__function_guard (isdoingop theadmin) theadmin)
     (= (= (isdoingop theadmin) true) (in_range2
     (to_rep (rec__admin__t__currentop (us_split_fields1 theadmin)))))) :pattern (
  (isdoingop theadmin)) )))

(declare-fun thecurrentop (us_rep) Int)

(declare-fun thecurrentop__function_guard (Int us_rep) Bool)

;; thecurrentop__post_axiom
  (assert
  (forall ((theadmin us_rep))
  (! (and (isdoingop__function_guard (isdoingop theadmin) theadmin)
     (=> (= (isdoingop theadmin) true)
     (let ((result (thecurrentop theadmin)))
     (=> (thecurrentop__function_guard result theadmin) (dynamic_invariant
     result true false true))))) :pattern ((thecurrentop theadmin)) )))

;; thecurrentop__def_axiom
  (assert
  (forall ((theadmin us_rep))
  (! (=> (thecurrentop__function_guard (thecurrentop theadmin) theadmin)
     (= (thecurrentop theadmin) (to_rep
                                (rec__admin__t__currentop
                                (us_split_fields1 theadmin))))) :pattern (
  (thecurrentop theadmin)) )))

(declare-fun ispresent (us_rep) Bool)

(declare-fun ispresent__function_guard (Bool us_rep) Bool)

(declare-sort adminprivileget 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (adminprivileget adminprivileget) Bool)

(declare-fun dummy4 () adminprivileget)

(declare-datatypes ()
((adminprivileget__ref
 (mk_adminprivileget__ref (adminprivileget__content adminprivileget)))))
(define-fun adminprivileget__ref___projection ((a adminprivileget__ref)) adminprivileget 
  (adminprivileget__content a))

;; ispresent__post_axiom
  (assert true)

;; ispresent__def_axiom
  (assert
  (forall ((theadmin us_rep))
  (! (=> (ispresent__function_guard (ispresent theadmin) theadmin)
     (= (= (ispresent theadmin) true) (in_range4
     (to_rep1 (rec__admin__t__rolepresent (us_split_fields1 theadmin)))))) :pattern (
  (ispresent theadmin)) )))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun op () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant2 ((temp___expr_251 Int)
  (temp___is_init_248 Bool) (temp___skip_constant_249 Bool)
  (temp___do_toplevel_250 Bool)) Bool (=>
                                      (or (= temp___is_init_248 true)
                                      (<= 0 4)) (in_range1 temp___expr_251)))

(define-fun dynamic_invariant3 ((temp___expr_175 Int)
  (temp___is_init_172 Bool) (temp___skip_constant_173 Bool)
  (temp___do_toplevel_174 Bool)) Bool (=>
                                      (or (= temp___is_init_172 true)
                                      (<= 1 3)) (in_range4 temp___expr_175)))

(declare-fun theadmin__split_fields () privileget)

(declare-fun theadmin__split_fields1 () opandnullt)

(declare-fun o () opandnullt)

(declare-fun o1 () privileget)

(declare-fun o2 () opandnullt)

(declare-fun temp___415 () privileget)

(declare-fun temp___4151 () opandnullt)

(declare-fun result () privileget)

(declare-fun result1 () opandnullt)

(declare-fun theadmin__split_fields2 () privileget)

(declare-fun theadmin__split_fields3 () opandnullt)

(declare-fun theadmin__split_fields4 () privileget)

(declare-fun theadmin__split_fields5 () opandnullt)

(declare-fun theadmin__split_fields6 () privileget)

(declare-fun theadmin__split_fields7 () opandnullt)

;; H
  (assert (ispresent__function_guard
  (ispresent
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1)))
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))

;; H
  (assert (isdoingop__function_guard
  (isdoingop
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1)))
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))

;; H
  (assert (in_range2 op))

;; H
  (assert
  (and
  (= (ispresent
     (mk___rep
     (mk___split_fields theadmin__split_fields theadmin__split_fields1))) true)
  (not
  (= (isdoingop
     (mk___rep
     (mk___split_fields theadmin__split_fields theadmin__split_fields1))) true))))

;; H
  (assert (= (to_rep o) op))

;; H
  (assert (= theadmin__split_fields o1))

;; H
  (assert (= o o2))

;; H
  (assert (= temp___415 o1))

;; H
  (assert (= temp___4151 o2))

;; H
  (assert
  (= (mk___split_fields__ref (mk___split_fields result result1)) (mk___split_fields__ref
                                                                 (mk___split_fields
                                                                 theadmin__split_fields
                                                                 theadmin__split_fields1))))

;; H
  (assert (= temp___415 theadmin__split_fields2))

;; H
  (assert (= temp___4151 theadmin__split_fields3))

;; H
  (assert (= theadmin__split_fields4 theadmin__split_fields2))

;; H
  (assert (= theadmin__split_fields5 theadmin__split_fields3))

;; H
  (assert
  (= (mk___split_fields theadmin__split_fields6 theadmin__split_fields7) 
  (mk___split_fields theadmin__split_fields2 theadmin__split_fields3)))

;; H
  (assert (rolepresent__function_guard
  (rolepresent
  (mk___rep
  (mk___split_fields theadmin__split_fields4 theadmin__split_fields5)))
  (mk___rep
  (mk___split_fields theadmin__split_fields4 theadmin__split_fields5))))

;; H
  (assert (rolepresent__function_guard
  (rolepresent
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1)))
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))

(assert
;; WP_parameter_def
 ;; File "admin.ads", line 223, characters 0-0
  (not
  (= (rolepresent
     (mk___rep
     (mk___split_fields theadmin__split_fields4 theadmin__split_fields5))) 
  (rolepresent
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))))
(check-sat)
