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

(declare-fun privatekeypresent (us_private) Bool)

(declare-fun privatekeypresent__function_guard (Bool us_private) Bool)

;; privatekeypresent__post_axiom
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

(declare-fun interfac_islocked (tuple0) Bool)

(declare-fun interfac_islocked__function_guard (Bool tuple0) Bool)

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

(declare-fun isalarming (tuple0) Bool)

(declare-fun isalarming__function_guard (Bool tuple0) Bool)

(declare-sort statscount 0)

(define-fun in_range9 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq10 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE9 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check9 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE9 (us_image) Int)

(declare-fun user_eq10 (statscount statscount) Bool)

(declare-fun dummy10 () statscount)

(declare-datatypes ()
((statscount__ref (mk_statscount__ref (statscount__content statscount)))))
(define-fun statscount__ref___projection ((a statscount__ref)) statscount 
  (statscount__content a))

(declare-fun to_rep6 (statscount) Int)

(declare-fun of_rep6 (Int) statscount)

;; inversion_axiom
  (assert
  (forall ((x statscount))
  (! (= (of_rep6 (to_rep6 x)) x) :pattern ((to_rep6 x)) )))

;; range_axiom
  (assert
  (forall ((x statscount)) (! (in_range9
  (to_rep6 x)) :pattern ((to_rep6 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range9 x) (= (to_rep6 (of_rep6 x)) x)) :pattern ((to_rep6
                                                              (of_rep6 x))) )))

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2
 (rec__stats__t__successentry statscount)(rec__stats__t__failentry statscount)(rec__stats__t__successbio statscount)(rec__stats__t__failbio statscount)))))
(define-fun us_split_fields_SuccessEntry__projection ((a us_split_fields4)) statscount 
  (rec__stats__t__successentry a))

(define-fun us_split_fields_FailEntry__projection ((a us_split_fields4)) statscount 
  (rec__stats__t__failentry a))

(define-fun us_split_fields_SuccessBio__projection ((a us_split_fields4)) statscount 
  (rec__stats__t__successbio a))

(define-fun us_split_fields_FailBio__projection ((a us_split_fields4)) statscount 
  (rec__stats__t__failbio a))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_17__projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep_18__projection ((a us_rep2)) us_split_fields4 (us_split_fields5
                                                                 a))

(define-fun bool_eq11 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (and
                         (and
                         (= (to_rep6
                            (rec__stats__t__successentry
                            (us_split_fields5 a))) (to_rep6
                                                   (rec__stats__t__successentry
                                                   (us_split_fields5 b))))
                         (= (to_rep6
                            (rec__stats__t__failentry (us_split_fields5 a))) 
                         (to_rep6
                         (rec__stats__t__failentry (us_split_fields5 b)))))
                         (= (to_rep6
                            (rec__stats__t__successbio (us_split_fields5 a))) 
                         (to_rep6
                         (rec__stats__t__successbio (us_split_fields5 b)))))
                         (= (to_rep6
                            (rec__stats__t__failbio (us_split_fields5 a))) 
                         (to_rep6
                         (rec__stats__t__failbio (us_split_fields5 b)))))
                    true false))

(declare-fun user_eq11 (us_rep2 us_rep2) Bool)

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep2) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep2) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))

(declare-fun stats__t__successentry__first__bit () Int)

(declare-fun stats__t__successentry__last__bit () Int)

(declare-fun stats__t__successentry__position () Int)

;; stats__t__successentry__first__bit_axiom
  (assert (<= 0 stats__t__successentry__first__bit))

;; stats__t__successentry__last__bit_axiom
  (assert
  (< stats__t__successentry__first__bit stats__t__successentry__last__bit))

;; stats__t__successentry__position_axiom
  (assert (<= 0 stats__t__successentry__position))

(declare-fun stats__t__failentry__first__bit () Int)

(declare-fun stats__t__failentry__last__bit () Int)

(declare-fun stats__t__failentry__position () Int)

;; stats__t__failentry__first__bit_axiom
  (assert (<= 0 stats__t__failentry__first__bit))

;; stats__t__failentry__last__bit_axiom
  (assert (< stats__t__failentry__first__bit stats__t__failentry__last__bit))

;; stats__t__failentry__position_axiom
  (assert (<= 0 stats__t__failentry__position))

(declare-fun stats__t__successbio__first__bit () Int)

(declare-fun stats__t__successbio__last__bit () Int)

(declare-fun stats__t__successbio__position () Int)

;; stats__t__successbio__first__bit_axiom
  (assert (<= 0 stats__t__successbio__first__bit))

;; stats__t__successbio__last__bit_axiom
  (assert
  (< stats__t__successbio__first__bit stats__t__successbio__last__bit))

;; stats__t__successbio__position_axiom
  (assert (<= 0 stats__t__successbio__position))

(declare-fun stats__t__failbio__first__bit () Int)

(declare-fun stats__t__failbio__last__bit () Int)

(declare-fun stats__t__failbio__position () Int)

;; stats__t__failbio__first__bit_axiom
  (assert (<= 0 stats__t__failbio__first__bit))

;; stats__t__failbio__last__bit_axiom
  (assert (< stats__t__failbio__first__bit stats__t__failbio__last__bit))

;; stats__t__failbio__position_axiom
  (assert (<= 0 stats__t__failbio__position))

(declare-fun dummy11 () us_rep2)

(declare-datatypes () ((t__ref2 (mk_t__ref2 (t__content2 us_rep2)))))
(define-fun t__ref_5__projection ((a t__ref2)) us_rep2 (t__content2 a))

(declare-fun statusisgotadmintoken (us_private) Bool)

(declare-fun statusisgotadmintoken__function_guard (Bool us_private) Bool)

;; statusisgotadmintoken__post_axiom
  (assert true)

(declare-fun statusiswaitingremoveadmintokenfail (us_private) Bool)

(declare-fun statusiswaitingremoveadmintokenfail__function_guard (Bool
  us_private) Bool)

;; statusiswaitingremoveadmintokenfail__post_axiom
  (assert true)

(declare-fun statusiswaitingstartadminop (us_private) Bool)

(declare-fun statusiswaitingstartadminop__function_guard (Bool
  us_private) Bool)

;; statusiswaitingstartadminop__post_axiom
  (assert true)

(declare-fun statusiswaitingfinishadminop (us_private) Bool)

(declare-fun statusiswaitingfinishadminop__function_guard (Bool
  us_private) Bool)

;; statusiswaitingfinishadminop__post_axiom
  (assert true)

(declare-fun statusisenclavequiescent (us_private) Bool)

(declare-fun statusisenclavequiescent__function_guard (Bool us_private) Bool)

;; statusisenclavequiescent__post_axiom
  (assert true)

(declare-fun statusisshutdown (us_private) Bool)

(declare-fun statusisshutdown__function_guard (Bool us_private) Bool)

;; statusisshutdown__post_axiom
  (assert true)

(declare-fun enrolmentisinprogress (us_private) Bool)

(declare-fun enrolmentisinprogress__function_guard (Bool us_private) Bool)

;; enrolmentisinprogress__post_axiom
  (assert true)

(declare-fun current_latch (us_private) Int)

(declare-fun current_latch__function_guard (Int us_private) Bool)

(declare-fun latch_timeout (us_private) us_rep1)

(declare-fun latch_timeout__function_guard (us_rep1 us_private) Bool)

(declare-fun thedooralarm (us_private) Int)

(declare-fun thedooralarm__function_guard (Int us_private) Bool)

(declare-fun latchislocked (tuple0) Bool)

(declare-fun latchislocked__function_guard (Bool tuple0) Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(define-fun dynamic_invariant3 ((temp___expr_261 Int)
  (temp___is_init_258 Bool) (temp___skip_constant_259 Bool)
  (temp___do_toplevel_260 Bool)) Bool (=>
                                      (or (= temp___is_init_258 true)
                                      (<= 0 4)) (in_range2 temp___expr_261)))

(declare-sort statust 0)

(define-fun in_range10 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq12 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE10 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check10 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE10 (us_image) Int)

(declare-fun user_eq12 (statust statust) Bool)

(declare-fun dummy12 () statust)

(declare-datatypes ()
((statust__ref (mk_statust__ref (statust__content statust)))))
(define-fun statust__ref___projection ((a statust__ref)) statust (statust__content
                                                                 a))

(define-fun dynamic_invariant4 ((temp___expr_336 Int)
  (temp___is_init_333 Bool) (temp___skip_constant_334 Bool)
  (temp___do_toplevel_335 Bool)) Bool (=>
                                      (or (= temp___is_init_333 true)
                                      (<= 0 1)) (in_range10 temp___expr_336)))

(define-fun dynamic_invariant5 ((temp___expr_396 Int)
  (temp___is_init_393 Bool) (temp___skip_constant_394 Bool)
  (temp___do_toplevel_395 Bool)) Bool (=>
                                      (or (= temp___is_init_393 true)
                                      (<= 1901 2099)) (in_range4
                                      temp___expr_396)))

(define-fun dynamic_invariant6 ((temp___expr_402 Int)
  (temp___is_init_399 Bool) (temp___skip_constant_400 Bool)
  (temp___do_toplevel_401 Bool)) Bool (=>
                                      (or (= temp___is_init_399 true)
                                      (<= 1 12)) (in_range5 temp___expr_402)))

(define-fun dynamic_invariant7 ((temp___expr_408 Int)
  (temp___is_init_405 Bool) (temp___skip_constant_406 Bool)
  (temp___do_toplevel_407 Bool)) Bool (=>
                                      (or (= temp___is_init_405 true)
                                      (<= 1 31)) (in_range6 temp___expr_408)))

(define-fun dynamic_invariant8 ((temp___expr_432 Int)
  (temp___is_init_429 Bool) (temp___skip_constant_430 Bool)
  (temp___do_toplevel_431 Bool)) Bool (=>
                                      (or (= temp___is_init_429 true)
                                      (<= 0 86399999)) (in_range7
                                      temp___expr_432)))

;; thedooralarm__post_axiom
  (assert
  (forall ((door__state us_private))
  (! (let ((result (thedooralarm door__state)))
     (=> (thedooralarm__function_guard result door__state)
     (dynamic_invariant4 result true false true))) :pattern ((thedooralarm
                                                             door__state)) )))

(declare-sort t1 0)

(define-fun in_range11 ((x Int)) Bool (and (<= 0 x) (<= x 1)))

(define-fun bool_eq13 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE11 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check11 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE11 (us_image) Int)

(declare-fun user_eq13 (t1 t1) Bool)

(declare-fun dummy13 () t1)

(declare-datatypes () ((t__ref3 (mk_t__ref3 (t__content3 t1)))))
(define-fun t__ref_3__projection ((a t__ref3)) t1 (t__content3 a))

(define-fun dynamic_invariant9 ((temp___expr_1092 Int)
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
     (dynamic_invariant9 result true false true))) :pattern ((current_latch
                                                             latch__state)) )))

;; latch_timeout__post_axiom
  (assert true)

(define-fun dynamic_invariant10 ((temp___expr_1352 Int)
  (temp___is_init_1349 Bool) (temp___skip_constant_1350 Bool)
  (temp___do_toplevel_1351 Bool)) Bool (=>
                                       (or (= temp___is_init_1349 true)
                                       (<= 0 2147483647)) (in_range9
                                       temp___expr_1352)))

(declare-fun state () us_private__ref)

(declare-fun theadmin__split_fields () us_split_fields__ref)

(declare-fun o () Bool)

(declare-fun o1 () Bool)

(declare-fun o2 () Bool)

(declare-fun o3 () Bool)

(declare-fun o4 () Bool)

(declare-fun o5 () Bool)

(declare-fun o6 () Bool)

(declare-fun o7 () Bool)

(declare-fun o8 () Bool)

(declare-fun o9 () Bool)

(declare-fun o10 () Bool)

(declare-fun o11 () Bool)

(declare-fun o12 () Int)

(declare-fun o13 () Bool)

(declare-fun o14 () Bool)

(declare-fun o15 () Bool)

(declare-fun o16 () Bool)

(declare-fun o17 () Bool)

(declare-fun o18 () Bool)

(declare-fun o19 () Bool)

(declare-fun o20 () Bool)

(declare-fun result () Bool)

(declare-fun result1 () Bool)

(declare-fun result2 () Bool)

(declare-fun result3 () Bool)

(declare-fun result4 () Bool)

;; H
  (assert
  (and (= result (enrolmentisinprogress (us_private__content state)))
  (enrolmentisinprogress__function_guard result (us_private__content state))))

;; H
  (assert
  (=> (= result true)
  (and
  (= o17 (isdoingop
         (mk___rep (us_split_fields__content theadmin__split_fields))))
  (isdoingop__function_guard o17
  (mk___rep (us_split_fields__content theadmin__split_fields))))))

;; H
  (assert (=> (= result true) (= o18 (ite (not (= o17 true)) true false))))

;; H
  (assert
  (=> (= result true)
  (and
  (= o16 (ispresent
         (mk___rep (us_split_fields__content theadmin__split_fields))))
  (ispresent__function_guard o16
  (mk___rep (us_split_fields__content theadmin__split_fields))))))

;; H
  (assert (=> (= result true) (= o19 (ite (not (= o16 true)) true false))))

;; H
  (assert (=> (= result true) (= o20 (ite (= o19 true) o18 false))))

;; H
  (assert (=> (not (= result true)) (= o20 (of_int 1))))

;; H
  (assert
  (and (= result1 (statusisshutdown (us_private__content state)))
  (statusisshutdown__function_guard result1 (us_private__content state))))

;; H
  (assert
  (=> (= result1 true)
  (and
  (and
  (= o12 (rolepresent
         (mk___rep (us_split_fields__content theadmin__split_fields))))
  (rolepresent__function_guard o12
  (mk___rep (us_split_fields__content theadmin__split_fields)))) (in_range1
  o12))))

;; H
  (assert (=> (= result1 true) (= o13 (ite (= o12 0) true false))))

;; H
  (assert
  (=> (= result1 true)
  (and
  (= o11 (isdoingop
         (mk___rep (us_split_fields__content theadmin__split_fields))))
  (isdoingop__function_guard o11
  (mk___rep (us_split_fields__content theadmin__split_fields))))))

;; H
  (assert (=> (= result1 true) (= o14 (ite (not (= o11 true)) true false))))

;; H
  (assert (=> (= result1 true) (= o15 (ite (= o14 true) o13 false))))

;; H
  (assert (=> (not (= result1 true)) (= o15 (of_int 1))))

;; H
  (assert
  (and (= result2 (statusisenclavequiescent (us_private__content state)))
  (statusisenclavequiescent__function_guard result2
  (us_private__content state))))

;; H
  (assert
  (=> (= result2 true)
  (and
  (= o9 (isdoingop
        (mk___rep (us_split_fields__content theadmin__split_fields))))
  (isdoingop__function_guard o9
  (mk___rep (us_split_fields__content theadmin__split_fields))))))

;; H
  (assert (=> (= result2 true) (= o10 (ite (not (= o9 true)) true false))))

;; H
  (assert (=> (not (= result2 true)) (= o10 (of_int 1))))

;; H
  (assert
  (and (= o4 (statusiswaitingfinishadminop (us_private__content state)))
  (statusiswaitingfinishadminop__function_guard o4
  (us_private__content state))))

;; H
  (assert
  (and (= o5 (statusiswaitingstartadminop (us_private__content state)))
  (statusiswaitingstartadminop__function_guard o5
  (us_private__content state))))

;; H
  (assert (= result3 (ite (= o5 false) o4 true)))

;; H
  (assert
  (=> (= result3 true)
  (and
  (= o6 (isdoingop
        (mk___rep (us_split_fields__content theadmin__split_fields))))
  (isdoingop__function_guard o6
  (mk___rep (us_split_fields__content theadmin__split_fields))))))

;; H
  (assert
  (=> (= result3 true)
  (and
  (= o7 (ispresent
        (mk___rep (us_split_fields__content theadmin__split_fields))))
  (ispresent__function_guard o7
  (mk___rep (us_split_fields__content theadmin__split_fields))))))

;; H
  (assert (=> (= result3 true) (= o8 (ite (= o7 true) o6 false))))

;; H
  (assert (=> (not (= result3 true)) (= o8 (of_int 1))))

;; H
  (assert
  (and
  (= o (statusiswaitingremoveadmintokenfail (us_private__content state)))
  (statusiswaitingremoveadmintokenfail__function_guard o
  (us_private__content state))))

;; H
  (assert
  (and (= o1 (statusisgotadmintoken (us_private__content state)))
  (statusisgotadmintoken__function_guard o1 (us_private__content state))))

;; H
  (assert (= result4 (ite (= o1 false) o true)))

;; H
  (assert
  (=> (= result4 true)
  (and
  (= o2 (ispresent
        (mk___rep (us_split_fields__content theadmin__split_fields))))
  (ispresent__function_guard o2
  (mk___rep (us_split_fields__content theadmin__split_fields))))))

;; H
  (assert (=> (= result4 true) (= o3 (ite (not (= o2 true)) true false))))

;; H
  (assert (=> (not (= result4 true)) (= o3 (of_int 1))))

;; H
  (assert (isdoingop__function_guard
  (isdoingop (mk___rep (us_split_fields__content theadmin__split_fields)))
  (mk___rep (us_split_fields__content theadmin__split_fields))))

(assert
;; WP_parameter_def
 ;; File "tismain.adb", line 670, characters 0-0
  (not
  (= (isdoingop (mk___rep (us_split_fields__content theadmin__split_fields))) true)))
(check-sat)
