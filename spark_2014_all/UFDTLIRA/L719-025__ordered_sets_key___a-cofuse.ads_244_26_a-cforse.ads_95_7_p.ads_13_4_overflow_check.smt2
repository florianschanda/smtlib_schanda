(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTLIRA)
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
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-sort us_rep 0)
(declare-fun bool_eq (us_rep us_rep) Bool)
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-fun user_eq (us_rep us_rep) Bool)
(declare-const dummy us_rep)
(declare-datatypes () ((set__ref (mk_set__ref (set__content us_rep)))))
(define-fun set__ref___2__projection ((a set__ref)) us_rep (set__content a))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(declare-sort count_type 0)
(declare-fun count_typeqtint (count_type) Int)
(assert (forall ((i count_type)) (and (<= 0 (count_typeqtint i)) (<= (count_typeqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq1 (count_type count_type) Bool)
(declare-const dummy1 count_type)
(declare-datatypes () ((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type (count_type__content a))
(define-fun dynamic_invariant ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 0 2147483647)) (in_range temp___expr_166)))
(declare-fun is_empty (us_rep) Bool)
(declare-fun is_empty__function_guard (Bool us_rep) Bool)
(define-fun default_initial_assumption ((temp___expr_361 us_rep) (temp___skip_top_level_362 Bool)) Bool (=> (not (= temp___skip_top_level_362 true)) (= (is_empty temp___expr_361) true)))
(assert (forall ((container us_rep)) (! (dynamic_invariant (length container) true false true true) :pattern ((length container)))))
(declare-fun num_overlaps (us_rep us_rep) Int)
(declare-fun num_overlaps__function_guard (Int us_rep us_rep) Bool)
(declare-fun ole (us_rep us_rep) Bool)
(declare-fun ole__function_guard (Bool us_rep us_rep) Bool)
(declare-fun no_overlap (us_rep us_rep) Bool)
(declare-fun no_overlap__function_guard (Bool us_rep us_rep) Bool)
(declare-fun intersection1 (us_rep us_rep) us_rep)
(declare-fun intersection__function_guard (us_rep us_rep us_rep) Bool)
(assert (forall ((left us_rep) (right us_rep)) (! (let ((result (num_overlaps left right))) (and (and (and (and (= result (length (intersection1 left right))) (ite (= (ole left right) true) (= result (length left)) (< result (length left)))) (ite (= (ole right left) true) (= result (length right)) (< result (length right)))) (= (= result 0) (= (no_overlap left right) true))) (dynamic_invariant result true false true true))) :pattern ((num_overlaps left right)))))
(declare-sort tcount_typeB 0)
(declare-fun tcount_typeBqtint (tcount_typeB) Int)
(assert (forall ((i tcount_typeB)) (and (<= (- 2147483648) (tcount_typeBqtint i)) (<= (tcount_typeBqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq2 (tcount_typeB tcount_typeB) Bool)
(declare-const dummy2 tcount_typeB)
(declare-datatypes () ((tcount_typeB__ref (mk_tcount_typeB__ref (tcount_typeB__content tcount_typeB)))))
(define-fun tcount_typeB__ref___projection ((a tcount_typeB__ref)) tcount_typeB (tcount_typeB__content a))
(declare-const left us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const right us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= 1 (element_typeqtint i)) (<= (element_typeqtint i) 100))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq3 (element_type element_type) Bool)
(declare-const dummy3 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun dynamic_invariant1 ((temp___expr_316 Int) (temp___is_init_312 Bool) (temp___skip_constant_313 Bool) (temp___do_toplevel_314 Bool) (temp___do_typ_inv_315 Bool)) Bool (=> (or (= temp___is_init_312 true) (<= 1 100)) (in_range2 temp___expr_316)))
(declare-fun my_inf (Int Int) Bool)
(declare-fun my_inf__function_guard (Bool Int Int) Bool)
(assert true)
(assert (forall ((i1 Int) (i2 Int)) (! (= (= (my_inf i1 i2) true) (< i1 i2)) :pattern ((my_inf i1 i2)))))
(define-fun in_range3 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Bool)
(define-fun equivalent_elements ((left1 Int) (right1 Int)) Bool (and (not (my_inf left1 right1)) (not (my_inf right1 left1))))
(declare-fun equivalent_elements__function_guard (Bool Int Int) Bool)
(declare-fun contains (us_rep Int) Bool)
(declare-fun contains__function_guard (Bool us_rep Int) Bool)
(declare-sort element_type1 0)
(declare-fun element_typeqtint1 (element_type1) Int)
(assert (forall ((i element_type1)) (and (<= 1 (element_typeqtint1 i)) (<= (element_typeqtint1 i) 100))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 100)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (element_type1 element_type1) Bool)
(declare-const dummy4 element_type1)
(declare-datatypes () ((element_type__ref1 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref___3__projection ((a element_type__ref1)) element_type1 (element_type__content1 a))
(define-fun dynamic_invariant2 ((temp___expr_353 Int) (temp___is_init_349 Bool) (temp___skip_constant_350 Bool) (temp___do_toplevel_351 Bool) (temp___do_typ_inv_352 Bool)) Bool (=> (or (= temp___is_init_349 true) (<= 1 100)) (in_range4 temp___expr_353)))
(assert (forall ((container us_rep)) (forall ((item Int)) (! (=> (dynamic_invariant2 item true true true true) (=> (= (distinct 1 0) true) (=> (exists ((e Int)) (and (and (in_range4 e) (= (contains container e) true)) (= (equivalent_elements e item) true))) (= (contains container item) true)))) :pattern ((contains container item))))))
(assert (forall ((left1 us_rep) (right1 us_rep)) (! (= (= (ole left1 right1) true) (forall ((item Int)) (=> (and (in_range4 item) (= (contains left1 item) true)) (= (contains right1 item) true)))) :pattern ((ole left1 right1)))))
(assert (forall ((container us_rep)) (! (let ((result (is_empty container))) (and (= (= result true) (forall ((item Int)) (not (and (in_range4 item) (= (contains container item) true))))) (= (= result true) (= (length container) 0)))) :pattern ((is_empty container)))))
(declare-fun includes_intersection (us_rep us_rep us_rep) Bool)
(declare-fun includes_intersection__function_guard (Bool us_rep us_rep us_rep) Bool)
(assert (forall ((container us_rep) (left1 us_rep) (right1 us_rep)) (! (= (= (includes_intersection container left1 right1) true) (forall ((item Int)) (=> (and (in_range4 item) (= (contains left1 item) true)) (=> (= (contains right1 item) true) (= (contains container item) true))))) :pattern ((includes_intersection container left1 right1)))))
(assert (forall ((left1 us_rep) (right1 us_rep)) (! (= (= (no_overlap left1 right1) true) (forall ((item Int)) (=> (and (in_range4 item) (= (contains left1 item) true)) (not (= (contains right1 item) true))))) :pattern ((no_overlap left1 right1)))))
(assert (forall ((left1 us_rep) (right1 us_rep)) (! (let ((result (intersection1 left1 right1))) (and (and (= (ole result left1) true) (= (ole result right1) true)) (= (includes_intersection result left1 right1) true))) :pattern ((intersection1 left1 right1)))))
(declare-const o Int)
(declare-const o1 Int)
(assert (and (= o (length right)) (in_range o)))
(assert (= o1 (- 2147483647 o)))
(assert (not (in_range1 o1)))
(check-sat)
(exit)
