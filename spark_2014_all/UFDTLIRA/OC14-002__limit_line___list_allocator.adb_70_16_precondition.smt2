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
(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (natural natural) Bool)
(declare-const dummy natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range1 temp___expr_39)))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
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
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((sequence__ref (mk_sequence__ref (sequence__content us_rep)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep (sequence__content a))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(declare-fun oeq (us_rep us_rep) Bool)
(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)
(assert (forall ((a us_rep) (b us_rep)) (! (= (user_eq2 a b) (oeq a b)) :pattern ((user_eq2 a b)))))
(define-fun default_initial_assumption ((temp___expr_338 us_rep) (temp___skip_top_level_339 Bool)) Bool (=> (not (= temp___skip_top_level_339 true)) (= (length temp___expr_338) 0)))
(assert (forall ((s us_rep)) (! (dynamic_invariant (length s) true false true true) :pattern ((length s)))))
(declare-fun get (us_rep Int) Int)
(declare-fun get__function_guard (Int us_rep Int) Bool)
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range2 temp___expr_46)))
(declare-sort element_type 0)
(declare-fun element_typeqtint (element_type) Int)
(assert (forall ((i element_type)) (and (<= 0 (element_typeqtint i)) (<= (element_typeqtint i) 3))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq3 (element_type element_type) Bool)
(declare-const dummy3 element_type)
(declare-datatypes () ((element_type__ref (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type (element_type__content a))
(define-fun dynamic_invariant2 ((temp___expr_330 Int) (temp___is_init_326 Bool) (temp___skip_constant_327 Bool) (temp___do_toplevel_328 Bool) (temp___do_typ_inv_329 Bool)) Bool (=> (or (= temp___is_init_326 true) (<= 0 3)) (in_range3 temp___expr_330)))
(assert (forall ((s us_rep)) (forall ((n Int)) (! (=> (and (dynamic_invariant1 n true true true true) (and (<= 1 n) (<= n (length s)))) (dynamic_invariant2 (get s n) true false true true)) :pattern ((get s n))))))
(declare-fun mem (us_rep Int) Bool)
(declare-fun mem__function_guard (Bool us_rep Int) Bool)
(declare-sort resource 0)
(declare-fun resourceqtint (resource) Int)
(assert (forall ((i resource)) (and (<= 0 (resourceqtint i)) (<= (resourceqtint i) 3))))
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 3)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq4 (resource resource) Bool)
(declare-const dummy4 resource)
(declare-datatypes () ((resource__ref (mk_resource__ref (resource__content resource)))))
(define-fun resource__ref___projection ((a resource__ref)) resource (resource__content a))
(define-fun dynamic_invariant3 ((temp___expr_310 Int) (temp___is_init_306 Bool) (temp___skip_constant_307 Bool) (temp___do_toplevel_308 Bool) (temp___do_typ_inv_309 Bool)) Bool (=> (or (= temp___is_init_306 true) (<= 0 3)) (in_range4 temp___expr_310)))
(assert true)
(assert (forall ((s us_rep)) (forall ((r Int)) (! (= (= (mem s r) true) (exists ((j Int)) (and (and (<= 1 j) (<= j (length s))) (= (get s j) r)))) :pattern ((mem s r))))))
(declare-const s us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const r Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const r29b Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (integer integer) Bool)
(declare-const dummy5 integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(define-fun to_rep ((x integer)) Int (integerqtint x))
(declare-fun of_rep (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x integer)) (! (in_range5 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(define-fun dynamic_property ((first_int Int) (last_int Int) (x Int)) Bool (and (<= first_int x) (<= x last_int)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq6 (integer integer) Bool)
(declare-const dummy6 integer)
(declare-datatypes () ((t30b__ref (mk_t30b__ref (t30b__content integer)))))
(define-fun t30b__ref___projection ((a t30b__ref)) integer (t30b__content a))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant4 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range5 temp___expr_18)))
(assert (forall ((s1 us_rep) (s2 us_rep)) (! (= (= (oeq s1 s2) true) (and (= (length s1) (length s2)) (forall ((n Int)) (=> (and (<= 1 n) (<= n (length s1))) (= (get s1 n) (get s2 n)))))) :pattern ((oeq s1 s2)))))
(declare-const j Int)
(declare-const list_allocator__m__find__L_1__R29b__assume Int)
(declare-const result Int)
(declare-const j1 Int)
(assert (in_range4 r))
(assert (and (= list_allocator__m__find__L_1__R29b__assume (length s)) (in_range1 list_allocator__m__find__L_1__R29b__assume)))
(assert (= list_allocator__m__find__L_1__R29b__assume r29b))
(assert (in_range1 r29b))
(assert (= (mk_int__ref result) (mk_int__ref j)))
(assert (= j1 1))
(assert (<= 1 j1))
(assert (<= j1 r29b))
(assert (not (<= j1 (length s))))
(check-sat)
(exit)
