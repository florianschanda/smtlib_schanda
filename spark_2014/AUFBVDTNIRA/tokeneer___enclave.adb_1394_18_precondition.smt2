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

(declare-sort privileget 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (privileget privileget) Bool)

(declare-fun dummy () privileget)

(declare-datatypes ()
((privileget__ref (mk_privileget__ref (privileget__content privileget)))))
(define-fun privileget__ref___projection ((a privileget__ref)) privileget 
  (privileget__content a))

(declare-fun to_rep (privileget) Int)

(declare-fun of_rep (Int) privileget)

;; inversion_axiom
  (assert
  (forall ((x privileget))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x privileget)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort opandnullt 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 4)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (opandnullt opandnullt) Bool)

(declare-fun dummy1 () opandnullt)

(declare-datatypes ()
((opandnullt__ref (mk_opandnullt__ref (opandnullt__content opandnullt)))))
(define-fun opandnullt__ref___projection ((a opandnullt__ref)) opandnullt 
  (opandnullt__content a))

(declare-fun to_rep1 (opandnullt) Int)

(declare-fun of_rep1 (Int) opandnullt)

;; inversion_axiom
  (assert
  (forall ((x opandnullt))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x opandnullt)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
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

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__admin__t__rolepresent (us_split_fields1 a))) 
                        (to_rep
                        (rec__admin__t__rolepresent (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__admin__t__currentop (us_split_fields1 a))) 
                        (to_rep1
                        (rec__admin__t__currentop (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

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

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun rolepresent (us_rep) Int)

(declare-fun rolepresent__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_179 Int)
  (temp___is_init_176 Bool) (temp___skip_constant_177 Bool)
  (temp___do_toplevel_178 Bool)) Bool (=>
                                      (or (= temp___is_init_176 true)
                                      (<= 0 3)) (in_range1 temp___expr_179)))

;; rolepresent__post_axiom
  (assert
  (forall ((theadmin us_rep))
  (! (let ((result (rolepresent theadmin)))
     (=> (rolepresent__function_guard result theadmin) (dynamic_invariant
     result true false true))) :pattern ((rolepresent theadmin)) )))

(declare-fun isdoingop (us_rep) Bool)

(declare-fun isdoingop__function_guard (Bool us_rep) Bool)

;; isdoingop__post_axiom
  (assert true)

(declare-fun thecurrentop (us_rep) Int)

(declare-fun thecurrentop__function_guard (Int us_rep) Bool)

(declare-sort opt 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 4)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq3 (opt opt) Bool)

(declare-fun dummy3 () opt)

(declare-datatypes () ((opt__ref (mk_opt__ref (opt__content opt)))))
(define-fun opt__ref___projection ((a opt__ref)) opt (opt__content a))

(define-fun dynamic_invariant1 ((temp___expr_267 Int)
  (temp___is_init_264 Bool) (temp___skip_constant_265 Bool)
  (temp___do_toplevel_266 Bool)) Bool (=>
                                      (or (= temp___is_init_264 true)
                                      (<= 1 4)) (in_range3 temp___expr_267)))

;; thecurrentop__post_axiom
  (assert
  (forall ((theadmin us_rep))
  (! (and (isdoingop__function_guard (isdoingop theadmin) theadmin)
     (=> (= (isdoingop theadmin) true)
     (let ((result (thecurrentop theadmin)))
     (=> (thecurrentop__function_guard result theadmin) (dynamic_invariant1
     result true false true))))) :pattern ((thecurrentop theadmin)) )))

(declare-fun ispresent (us_rep) Bool)

(declare-fun ispresent__function_guard (Bool us_rep) Bool)

;; ispresent__post_axiom
  (assert true)

(declare-sort yearst 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1901 x) (<= x 2099)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq4 (yearst yearst) Bool)

(declare-fun dummy4 () yearst)

(declare-datatypes ()
((yearst__ref (mk_yearst__ref (yearst__content yearst)))))
(define-fun yearst__ref___projection ((a yearst__ref)) yearst (yearst__content
                                                              a))

(declare-fun to_rep2 (yearst) Int)

(declare-fun of_rep2 (Int) yearst)

;; inversion_axiom
  (assert
  (forall ((x yearst))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x yearst)) (! (in_range4 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-sort monthst 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 1 x) (<= x 12)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq5 (monthst monthst) Bool)

(declare-fun dummy5 () monthst)

(declare-datatypes ()
((monthst__ref (mk_monthst__ref (monthst__content monthst)))))
(define-fun monthst__ref___projection ((a monthst__ref)) monthst (monthst__content
                                                                 a))

(declare-fun to_rep3 (monthst) Int)

(declare-fun of_rep3 (Int) monthst)

;; inversion_axiom
  (assert
  (forall ((x monthst))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x monthst)) (! (in_range5 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(declare-sort dayst 0)

(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 31)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (dayst dayst) Bool)

(declare-fun dummy6 () dayst)

(declare-datatypes () ((dayst__ref (mk_dayst__ref (dayst__content dayst)))))
(define-fun dayst__ref___projection ((a dayst__ref)) dayst (dayst__content a))

(declare-fun to_rep4 (dayst) Int)

(declare-fun of_rep4 (Int) dayst)

;; inversion_axiom
  (assert
  (forall ((x dayst))
  (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)) )))

;; range_axiom
  (assert
  (forall ((x dayst)) (! (in_range6 (to_rep4 x)) :pattern ((to_rep4 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range6 x) (= (to_rep4 (of_rep4 x)) x)) :pattern ((to_rep4
                                                              (of_rep4 x))) )))

(declare-sort millisecst 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 86399999)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq7 (millisecst millisecst) Bool)

(declare-fun dummy7 () millisecst)

(declare-datatypes ()
((millisecst__ref (mk_millisecst__ref (millisecst__content millisecst)))))
(define-fun millisecst__ref___projection ((a millisecst__ref)) millisecst 
  (millisecst__content a))

(declare-fun to_rep5 (millisecst) Int)

(declare-fun of_rep5 (Int) millisecst)

;; inversion_axiom
  (assert
  (forall ((x millisecst))
  (! (= (of_rep5 (to_rep5 x)) x) :pattern ((to_rep5 x)) )))

;; range_axiom
  (assert
  (forall ((x millisecst)) (! (in_range7
  (to_rep5 x)) :pattern ((to_rep5 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range7 x) (= (to_rep5 (of_rep5 x)) x)) :pattern ((to_rep5
                                                              (of_rep5 x))) )))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__clock__timet__year yearst)(rec__clock__timet__month monthst)(rec__clock__timet__day dayst)(rec__clock__timet__millisec millisecst)))))
(define-fun us_split_fields_Year__projection ((a us_split_fields2)) yearst 
  (rec__clock__timet__year a))

(define-fun us_split_fields_Month__projection ((a us_split_fields2)) monthst 
  (rec__clock__timet__month a))

(define-fun us_split_fields_Day__projection ((a us_split_fields2)) dayst 
  (rec__clock__timet__day a))

(define-fun us_split_fields_MilliSec__projection ((a us_split_fields2)) millisecst 
  (rec__clock__timet__millisec a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_4__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_4__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq8 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (and
                         (and
                         (= (to_rep2
                            (rec__clock__timet__year (us_split_fields3 a))) 
                         (to_rep2
                         (rec__clock__timet__year (us_split_fields3 b))))
                         (= (to_rep3
                            (rec__clock__timet__month (us_split_fields3 a))) 
                         (to_rep3
                         (rec__clock__timet__month (us_split_fields3 b)))))
                         (= (to_rep4
                            (rec__clock__timet__day (us_split_fields3 a))) 
                         (to_rep4
                         (rec__clock__timet__day (us_split_fields3 b)))))
                         (= (to_rep5
                            (rec__clock__timet__millisec
                            (us_split_fields3 a))) (to_rep5
                                                   (rec__clock__timet__millisec
                                                   (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq8 (us_rep1 us_rep1) Bool)

(declare-fun value__size1 () Int)

(declare-fun object__size1 (us_rep1) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 (us_rep1) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))

(declare-fun clock__timet__year__first__bit () Int)

(declare-fun clock__timet__year__last__bit () Int)

(declare-fun clock__timet__year__position () Int)

;; clock__timet__year__first__bit_axiom
  (assert (<= 0 clock__timet__year__first__bit))

;; clock__timet__year__last__bit_axiom
  (assert (< clock__timet__year__first__bit clock__timet__year__last__bit))

;; clock__timet__year__position_axiom
  (assert (<= 0 clock__timet__year__position))

(declare-fun clock__timet__month__first__bit () Int)

(declare-fun clock__timet__month__last__bit () Int)

(declare-fun clock__timet__month__position () Int)

;; clock__timet__month__first__bit_axiom
  (assert (<= 0 clock__timet__month__first__bit))

;; clock__timet__month__last__bit_axiom
  (assert (< clock__timet__month__first__bit clock__timet__month__last__bit))

;; clock__timet__month__position_axiom
  (assert (<= 0 clock__timet__month__position))

(declare-fun clock__timet__day__first__bit () Int)

(declare-fun clock__timet__day__last__bit () Int)

(declare-fun clock__timet__day__position () Int)

;; clock__timet__day__first__bit_axiom
  (assert (<= 0 clock__timet__day__first__bit))

;; clock__timet__day__last__bit_axiom
  (assert (< clock__timet__day__first__bit clock__timet__day__last__bit))

;; clock__timet__day__position_axiom
  (assert (<= 0 clock__timet__day__position))

(declare-fun clock__timet__millisec__first__bit () Int)

(declare-fun clock__timet__millisec__last__bit () Int)

(declare-fun clock__timet__millisec__position () Int)

;; clock__timet__millisec__first__bit_axiom
  (assert (<= 0 clock__timet__millisec__first__bit))

;; clock__timet__millisec__last__bit_axiom
  (assert
  (< clock__timet__millisec__first__bit clock__timet__millisec__last__bit))

;; clock__timet__millisec__position_axiom
  (assert (<= 0 clock__timet__millisec__position))

(declare-fun dummy8 () us_rep1)

(declare-datatypes ()
((timet__ref (mk_timet__ref (timet__content us_rep1)))))
(define-fun timet__ref___projection ((a timet__ref)) us_rep1 (timet__content
                                                             a))

(declare-fun thecurrenttime (us_private) us_rep1)

(declare-fun thecurrenttime__function_guard (us_rep1 us_private) Bool)

;; thecurrenttime__post_axiom
  (assert true)

(declare-fun greaterthanorequal (us_rep1 us_rep1) Bool)

(declare-fun greaterthanorequal__function_guard (Bool us_rep1 us_rep1) Bool)

;; greaterthanorequal__post_axiom
  (assert true)

(declare-fun theauthcertrole (us_private) Int)

(declare-fun theauthcertrole__function_guard (Int us_private) Bool)

;; theauthcertrole__post_axiom
  (assert
  (forall ((admintoken__state us_private))
  (! (let ((result (theauthcertrole admintoken__state)))
     (=> (theauthcertrole__function_guard result admintoken__state)
     (dynamic_invariant result true false true))) :pattern ((theauthcertrole
                                                            admintoken__state)) )))

(declare-fun isgood (us_private) Bool)

(declare-fun isgood__function_guard (Bool us_private) Bool)

;; isgood__post_axiom
  (assert true)

(declare-fun authcertvalid (us_private) Bool)

(declare-fun authcertvalid__function_guard (Bool us_private) Bool)

;; authcertvalid__post_axiom
  (assert true)

(declare-fun islocked (us_private) Bool)

(declare-fun islocked__function_guard (Bool us_private) Bool)

;; islocked__post_axiom
  (assert true)

(declare-fun alarm_timeout (us_private) us_rep1)

(declare-fun alarm_timeout__function_guard (us_rep1 us_private) Bool)

;; alarm_timeout__post_axiom
  (assert true)

(declare-fun thecurrentdoor (us_private) Int)

(declare-fun thecurrentdoor__function_guard (Int us_private) Bool)

(declare-sort t 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq9 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (t t) Bool)

(declare-fun dummy9 () t)

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 t)))))
(define-fun t__ref_4__projection ((a t__ref1)) t (t__content1 a))

(define-fun dynamic_invariant2 ((temp___expr_1107 Int)
  (temp___is_init_1104 Bool) (temp___skip_constant_1105 Bool)
  (temp___do_toplevel_1106 Bool)) Bool (=>
                                       (or (= temp___is_init_1104 true)
                                       (<= 0 1)) (in_range8
                                       temp___expr_1107)))

;; thecurrentdoor__post_axiom
  (assert
  (forall ((door__state us_private))
  (! (let ((result (thecurrentdoor door__state)))
     (=> (thecurrentdoor__function_guard result door__state)
     (dynamic_invariant2 result true false true))) :pattern ((thecurrentdoor
                                                             door__state)) )))

(declare-fun thedooralarm (us_private) Int)

(declare-fun thedooralarm__function_guard (Int us_private) Bool)

(declare-sort statust 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq10 (statust statust) Bool)

(declare-fun dummy10 () statust)

(declare-datatypes ()
((statust__ref (mk_statust__ref (statust__content statust)))))
(define-fun statust__ref___projection ((a statust__ref)) statust (statust__content
                                                                 a))

(define-fun dynamic_invariant3 ((temp___expr_336 Int)
  (temp___is_init_333 Bool) (temp___skip_constant_334 Bool)
  (temp___do_toplevel_335 Bool)) Bool (=>
                                      (or (= temp___is_init_333 true)
                                      (<= 0 1)) (in_range9 temp___expr_336)))

;; thedooralarm__post_axiom
  (assert
  (forall ((door__state us_private))
  (! (let ((result (thedooralarm door__state)))
     (=> (thedooralarm__function_guard result door__state)
     (dynamic_invariant3 result true false true))) :pattern ((thedooralarm
                                                             door__state)) )))

(declare-sort statust1 0)

(define-fun in_range10 ((x Int)) Bool (and (<= 0 x) (<= x 8)))

(define-fun bool_eq11 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)

(declare-fun user_eq11 (statust1 statust1) Bool)

(declare-fun dummy11 () statust1)

(declare-datatypes ()
((statust__ref1 (mk_statust__ref1 (statust__content1 statust1)))))
(define-fun statust__ref_2__projection ((a statust__ref1)) statust1 (statust__content1
                                                                    a))

(define-fun dynamic_invariant4 ((temp___expr_1903 Int)
  (temp___is_init_1900 Bool) (temp___skip_constant_1901 Bool)
  (temp___do_toplevel_1902 Bool)) Bool (=>
                                       (or (= temp___is_init_1900 true)
                                       (<= 0 8)) (in_range10
                                       temp___expr_1903)))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun current_latch (us_private) Int)

(declare-fun current_latch__function_guard (Int us_private) Bool)

(declare-fun latch_timeout (us_private) us_rep1)

(declare-fun latch_timeout__function_guard (us_rep1 us_private) Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant5 ((temp___expr_261 Int)
  (temp___is_init_258 Bool) (temp___skip_constant_259 Bool)
  (temp___do_toplevel_260 Bool)) Bool (=>
                                      (or (= temp___is_init_258 true)
                                      (<= 0 4)) (in_range2 temp___expr_261)))

(define-fun dynamic_invariant6 ((temp___expr_396 Int)
  (temp___is_init_393 Bool) (temp___skip_constant_394 Bool)
  (temp___do_toplevel_395 Bool)) Bool (=>
                                      (or (= temp___is_init_393 true)
                                      (<= 1901 2099)) (in_range4
                                      temp___expr_396)))

(define-fun dynamic_invariant7 ((temp___expr_402 Int)
  (temp___is_init_399 Bool) (temp___skip_constant_400 Bool)
  (temp___do_toplevel_401 Bool)) Bool (=>
                                      (or (= temp___is_init_399 true)
                                      (<= 1 12)) (in_range5 temp___expr_402)))

(define-fun dynamic_invariant8 ((temp___expr_408 Int)
  (temp___is_init_405 Bool) (temp___skip_constant_406 Bool)
  (temp___do_toplevel_407 Bool)) Bool (=>
                                      (or (= temp___is_init_405 true)
                                      (<= 1 31)) (in_range6 temp___expr_408)))

(define-fun dynamic_invariant9 ((temp___expr_432 Int)
  (temp___is_init_429 Bool) (temp___skip_constant_430 Bool)
  (temp___do_toplevel_431 Bool)) Bool (=>
                                      (or (= temp___is_init_429 true)
                                      (<= 0 86399999)) (in_range7
                                      temp___expr_432)))

(declare-sort t1 0)

(define-fun in_range11 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE11 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check11 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE11 (us_image) Int)

(declare-fun user_eq12 (t1 t1) Bool)

(declare-fun dummy12 () t1)

(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 t1)))))
(define-fun t__ref_3__projection ((a t__ref2)) t1 (t__content2 a))

(define-fun dynamic_invariant10 ((temp___expr_1092 Int)
  (temp___is_init_1089 Bool) (temp___skip_constant_1090 Bool)
  (temp___do_toplevel_1091 Bool)) Bool (=>
                                       (or (= temp___is_init_1089 true)
                                       (<= 0 1)) (in_range11
                                       temp___expr_1092)))

;; current_latch__post_axiom
  (assert
  (forall ((latch__state us_private))
  (! (let ((result (current_latch latch__state)))
     (=> (current_latch__function_guard result latch__state)
     (dynamic_invariant10 result true false true))) :pattern ((current_latch
                                                              latch__state)) )))

;; latch_timeout__post_axiom
  (assert true)

(declare-fun status () Int)

(declare-fun theadmin__split_fields () privileget)

(declare-fun theadmin__split_fields1 () opandnullt)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Bool)

(declare-fun o3 () Bool)

(declare-fun o4 () Bool)

(declare-fun o5 () Bool)

(declare-fun o6 () Bool)

(declare-fun o7 () Bool)

(declare-fun result () Bool)

;; H
  (assert (in_range10 status))

;; H
  (assert
  (and
  (and
  (= o (rolepresent
       (mk___rep
       (mk___split_fields theadmin__split_fields theadmin__split_fields1))))
  (rolepresent__function_guard o
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))
  (in_range1 o)))

;; H
  (assert (= result (ite (= o 1) true false)))

;; H
  (assert
  (=> (= result true)
  (and
  (= o4 (isdoingop
        (mk___rep
        (mk___split_fields theadmin__split_fields theadmin__split_fields1))))
  (isdoingop__function_guard o4
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))))

;; H
  (assert (=> (= result true) (= o5 (ite (not (= o4 true)) true false))))

;; H
  (assert
  (=> (= result true)
  (and
  (and
  (= o1 (thecurrentop
        (mk___rep
        (mk___split_fields theadmin__split_fields theadmin__split_fields1))))
  (thecurrentop__function_guard o1
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))
  (in_range3 o1))))

;; H
  (assert (=> (= result true) (= o2 (ite (= o1 3) true false))))

;; H
  (assert
  (=> (= result true)
  (and
  (= o3 (isdoingop
        (mk___rep
        (mk___split_fields theadmin__split_fields theadmin__split_fields1))))
  (isdoingop__function_guard o3
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))))

;; H
  (assert (=> (= result true) (= o6 (ite (= o3 true) o2 false))))

;; H
  (assert (=> (= result true) (= o7 (ite (= o6 false) o5 true))))

;; H
  (assert (=> (not (= result true)) (= o7 (of_int 1))))

;; H
  (assert (isdoingop__function_guard
  (isdoingop
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1)))
  (mk___rep
  (mk___split_fields theadmin__split_fields theadmin__split_fields1))))

(assert
;; WP_parameter_def
 ;; File "enclave.adb", line 1247, characters 0-0
  (not
  (= (isdoingop
     (mk___rep
     (mk___split_fields theadmin__split_fields theadmin__split_fields1))) true)))
(check-sat)
