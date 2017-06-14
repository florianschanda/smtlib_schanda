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

(declare-sort natural 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant1 ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range2
                                     temp___expr_33)))

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

(declare-sort vector_element 0)

(define-fun in_range3 ((x Int)) Bool (and (<= (div1 (- 2147483648) 65536) x)
                                     (<= x (div1 2147483647 65536))))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (vector_element vector_element) Bool)

(declare-fun dummy2 () vector_element)

(declare-datatypes ()
((vector_element__ref
 (mk_vector_element__ref (vector_element__content vector_element)))))
(declare-fun to_rep (vector_element) Int)

(declare-fun of_rep (Int) vector_element)

;; inversion_axiom
  (assert
  (forall ((x vector_element))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x vector_element)) (! (in_range3
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int vector_element))))))
(declare-fun slide ((Array Int vector_element) Int
  Int) (Array Int vector_element))

;; slide_eq
  (assert
  (forall ((a (Array Int vector_element)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int vector_element)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int vector_element) Int Int
  (Array Int vector_element) Int Int) (Array Int vector_element))

;; concat_def
  (assert
  (forall ((a (Array Int vector_element)) (b (Array Int vector_element)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (vector_element Int) (Array Int vector_element))

;; singleton_def
  (assert
  (forall ((v vector_element))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int vector_element)) (af Int) (al Int)
  (b (Array Int vector_element)) (bf Int)
  (bl Int)) Bool (ite (and (ite (<= af al) (= (- al af) (- bl bf)) (< bl bf))
                      (forall ((idx Int))
                      (=> (and (<= af idx) (<= idx al))
                      (= (select a idx) (select b (+ (- bf af) idx))))))
                 true false))

(declare-fun compare ((Array Int vector_element) Int Int
  (Array Int vector_element) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int vector_element)) (b (Array Int vector_element)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int vector_element)) (b (Array Int vector_element)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq3 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int vector_element)) (b (Array Int vector_element)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq3 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-sort t 0)

(declare-fun le (t t) Bool)

(declare-fun lt (t t) Bool)

(declare-fun gt (t t) Bool)

(declare-fun add (t t) t)

(declare-fun sub (t t) t)

(declare-fun one () t)

(declare-sort component_type 0)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array t component_type))))))
(declare-fun slide1 ((Array t component_type) t t) (Array t component_type))

;; slide_eq
  (assert
  (forall ((a (Array t component_type)))
  (forall ((first t))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array t component_type)))
  (forall ((old_first t))
  (forall ((new_first t))
  (forall ((i t))
  (! (= (select (slide1 a old_first new_first) i) (select a (sub i
                                                            (sub new_first
                                                            old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array t component_type) t t (Array t component_type) t
  t) (Array t component_type))

;; concat_def
  (assert
  (forall ((a (Array t component_type)) (b (Array t component_type)))
  (forall ((a_first t) (a_last t) (b_first t) (b_last t))
  (forall ((i t))
  (! (and
     (=> (and (le a_first i) (le i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (gt i a_last)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b 
     (add (sub i a_last) (sub b_first one)))))) :pattern ((select (concat2 a
                                                                  a_first
                                                                  a_last b
                                                                  b_first
                                                                  b_last) i)) )))))

(declare-fun singleton2 (component_type t) (Array t component_type))

;; singleton_def
  (assert
  (forall ((v component_type))
  (forall ((i t))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(declare-sort index 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 65536)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (index index) Bool)

(declare-fun dummy3 () index)

(declare-datatypes () ((index__ref (mk_index__ref (index__content index)))))
(declare-fun to_rep1 (index) Int)

(declare-fun of_rep1 (Int) index)

;; inversion_axiom
  (assert
  (forall ((x index))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x index)) (! (in_range4 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort extended_index 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 65536)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (extended_index extended_index) Bool)

(declare-fun dummy4 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(declare-fun to_rep2 (extended_index) Int)

(declare-fun of_rep2 (Int) extended_index)

;; inversion_axiom
  (assert
  (forall ((x extended_index))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x extended_index)) (! (in_range5
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__sums__slice_bounds__lo index)(rec__sums__slice_bounds__hi extended_index)))))
(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(declare-datatypes ()
((slice_bounds (mk_slice_bounds (us_split_fields1 us_split_fields)))))
(declare-datatypes ()
((slice_bounds__ref
 (mk_slice_bounds__ref (slice_bounds__content slice_bounds)))))
(define-fun usrec__lo ((b slice_bounds)) Int (to_rep1
                                             (rec__sums__slice_bounds__lo
                                             (us_split_fields1 b))))

(define-fun usrec__hi ((b slice_bounds)) Int (to_rep2
                                             (rec__sums__slice_bounds__hi
                                             (us_split_fields1 b))))

(define-fun bool_eq6 ((a slice_bounds)
  (b slice_bounds)) Bool (ite (and (= (usrec__lo a) (usrec__lo b))
                              (= (usrec__hi a) (usrec__hi b)))
                         true false))

(declare-fun dummy5 () slice_bounds)

(declare-fun to_rep3 (integer) Int)

(declare-fun of_rep3 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep3 x)) :pattern ((to_rep3 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3
                                                              (of_rep3 x))) )))

(define-fun index_dynamic_property ((first Int) (last Int)
  (x Int)) Bool (and (<= first x) (<= x last)))

(declare-sort t1 0)

(declare-fun first (t1) integer)

(declare-fun last (t1) integer)

(declare-fun mk (Int Int) t1)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep3 (first (mk f l))) f) (= (to_rep3 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high)
                   (and (index_dynamic_property range_first range_last low)
                   (index_dynamic_property range_first range_last high))))))

(declare-datatypes ()
((us_t (mk___t (elts (Array Int vector_element))(rt t1)))))
(define-fun of_array ((a (Array Int vector_element)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep3 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep3 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int vector_element)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int vector_element)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int vector_element)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int vector_element))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int vector_element)))
  (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert
  (forall ((a (Array Int vector_element))) (<= 0 (object__alignment a))))

(define-fun bool_eq7 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep3 (first (rt x)))
                 (to_rep3 (last (rt x))) (elts y) (to_rep3 (first (rt y)))
                 (to_rep3 (last (rt y)))))

(declare-fun user_eq5 (us_t us_t) Bool)

(declare-fun dummy6 () us_t)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_t)))))
(define-fun usget ((v us_t) (i Int)) Int (to_rep (select (elts v) i)))

(define-fun dynamic_invariant2 ((expr us_t) (us Bool) (skip_bounds Bool)
  (us1 Bool)) Bool (=> (not (= skip_bounds true)) (dynamic_property 1 65536
                   (first1 expr) (last1 expr))))

(declare-fun sum__logic (us_t slice_bounds) Int)

;; sum_def
  (assert
  (forall ((v us_t) (b slice_bounds))
  (! (and (in_range1 (sum__logic v b))
     (and (=> (< (usrec__hi b) (usrec__lo b)) (= (sum__logic v b) 0))
     (=>
     (and (<= (first1 v) (usrec__lo b))
     (and (<= (usrec__lo b) (usrec__hi b)) (<= (usrec__hi b) (last1 v))))
     (and
     (=> (= (usrec__lo b) (usrec__hi b))
     (= (sum__logic v b) (usget v (usrec__lo b))))
     (forall ((b1 slice_bounds))
     (! (and
        (=>
        (and (= (usrec__hi b1) (usrec__hi b))
        (and (< (usrec__lo b) (usrec__lo b1))
        (<= (usrec__lo b1) (usrec__hi b))))
        (= (sum__logic v b) (+ (sum__logic v b1) (sum__logic v
                                                 (mk_slice_bounds
                                                 (mk___split_fields
                                                 (rec__sums__slice_bounds__lo
                                                 (us_split_fields1 b))
                                                 (of_rep2
                                                 (- (usrec__lo b1) 1))))))))
        (=>
        (and (= (usrec__lo b1) (usrec__lo b))
        (and (<= (usrec__lo b) (usrec__hi b1))
        (< (usrec__hi b1) (usrec__hi b))))
        (= (sum__logic v b) (+ (sum__logic v b1) (sum__logic v
                                                 (mk_slice_bounds
                                                 (mk___split_fields
                                                 (of_rep1
                                                 (+ (usrec__hi b1) 1))
                                                 (rec__sums__slice_bounds__hi
                                                 (us_split_fields1 b))))))))) :pattern (
     (sum__logic v b1)) )))))) :pattern ((sum__logic v b)) )))

(declare-fun x () us_t)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun first2 () Int)

(declare-fun last2 () Int)

(define-fun dynamic_property1 ((first_int Int) (last_int Int)
  (x1 Int)) Bool (and (<= first_int x1) (<= x1 last_int)))

(define-fun bool_eq8 ((x1 Int) (y Int)) Bool (ite (= x1 y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes () ((t26b__ref (mk_t26b__ref (t26b__content integer)))))
(define-fun t26b__ref___projection ((a t26b__ref)) integer (t26b__content a))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun max_sum () Int)

(declare-fun current_sum () Int)

(declare-fun current_lo () Int)

(declare-fun result____split_fields () index)

(declare-fun result____split_fields1 () extended_index)

(declare-fun current_hi () Int)

(declare-fun o () Int)

(declare-fun o1 () extended_index)

(declare-fun o2 () index)

(declare-fun o3 () index)

(declare-fun o4 () extended_index)

(declare-fun temp___176 () index)

(declare-fun temp___1761 () extended_index)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () index)

(declare-fun o8 () us_split_fields)

(declare-fun temp___178 () slice_bounds)

(declare-fun o9 () Int)

(declare-fun o10 () extended_index)

(declare-fun o11 () us_split_fields)

(declare-fun temp___180 () slice_bounds)

(declare-fun o12 () Int)

(declare-fun o13 () Int)

(declare-fun result () int__ref)

(declare-fun max_sum1 () Int)

(declare-fun result1 () int__ref)

(declare-fun current_sum1 () Int)

(declare-fun result2 () us_split_fields__ref)

(declare-fun result____split_fields2 () us_split_fields)

(declare-fun result3 () int__ref)

(declare-fun current_lo1 () Int)

(declare-fun result4 () int__ref)

(declare-fun current_hi1 () Int)

(declare-fun max_sum2 () Int)

(declare-fun current_sum2 () Int)

(declare-fun current_lo2 () Int)

(declare-fun result____split_fields3 () us_split_fields)

(declare-fun current_hi2 () Int)

(declare-fun result5 () int__ref)

(declare-fun current_sum3 () Int)

(declare-fun result6 () int__ref)

(declare-fun max_sum3 () Int)

(declare-fun result7 () us_split_fields__ref)

(declare-fun result____split_fields4 () us_split_fields)

(declare-fun result8 () us_split_fields__ref)

(declare-fun result____split_fields5 () us_split_fields)

(declare-fun result9 () int__ref)

(declare-fun current_lo3 () Int)

(declare-fun result10 () int__ref)

(declare-fun current_sum4 () Int)

(declare-fun result11 () int__ref)

(declare-fun current_hi3 () Int)

;; H
  (assert (dynamic_invariant2 x true false true))

;; H
  (assert (= result (mk_int__ref max_sum)))

;; H
  (assert (= max_sum1 0))

;; H
  (assert (in_range2 max_sum1))

;; H
  (assert (= result1 (mk_int__ref current_sum)))

;; H
  (assert (= current_sum1 0))

;; H
  (assert (in_range1 current_sum1))

;; H
  (assert (in_range4 current_lo))

;; H
  (assert (not (< (to_rep3 (last (rt x))) (to_rep3 (first (rt x))))))

;; H
  (assert (= (to_rep2 o1) 0))

;; H
  (assert
  (and (= o (to_rep3 (first (rt x)))) (in_range4 (to_rep3 (first (rt x))))))

;; H
  (assert (= (to_rep1 o2) o))

;; H
  (assert (= o2 o3))

;; H
  (assert (= o1 o4))

;; H
  (assert (= temp___176 o3))

;; H
  (assert (= temp___1761 o4))

;; H
  (assert
  (= result2 (mk___split_fields__ref
             (mk___split_fields result____split_fields
             result____split_fields1))))

;; H
  (assert
  (= result____split_fields2 (mk___split_fields temp___176 temp___1761)))

;; H
  (assert (= result3 (mk_int__ref current_lo)))

;; H
  (assert
  (= current_lo1 (to_rep1
                 (rec__sums__slice_bounds__lo result____split_fields2))))

;; H
  (assert (= result4 (mk_int__ref current_hi)))

;; H
  (assert (= current_hi1 (to_rep3 (first (rt x)))))

;; H
  (assert (<= (to_rep3 (first (rt x))) current_hi1))

;; H
  (assert (<= current_hi1 (to_rep3 (last (rt x)))))

;; H
  (assert
  (and
  (and
  (and (<= (to_rep3 (first (rt x))) current_lo2)
  (<= current_lo2 current_hi2)) (<= 0 current_sum2))
  (<= current_sum2 (* (- current_hi2 current_lo2) 32767))))

;; H
  (assert
  (= current_sum2 (sum__logic x
                  (mk_slice_bounds
                  (mk___split_fields (of_rep1 current_lo2)
                  (of_rep2 (- current_hi2 1)))))))

;; H
  (assert
  (=>
  (<= (to_rep1 (rec__sums__slice_bounds__lo result____split_fields3)) 
  (to_rep2 (rec__sums__slice_bounds__hi result____split_fields3)))
  (and
  (and
  (<= (to_rep3 (first (rt x))) (to_rep1
                               (rec__sums__slice_bounds__lo
                               result____split_fields3)))
  (<= (to_rep2 (rec__sums__slice_bounds__hi result____split_fields3)) 
  (to_rep3 (last (rt x)))))
  (= max_sum2 (sum__logic x (mk_slice_bounds result____split_fields3))))))

;; H
  (assert
  (forall ((lo_index Int))
  (=>
  (and (<= (to_rep3 (first (rt x))) lo_index)
  (<= lo_index (- current_hi2 1)))
  (forall ((hi_index Int))
  (=>
  (and (<= (to_rep3 (first (rt x))) hi_index)
  (<= hi_index (- current_hi2 1)))
  (<= (sum__logic x
      (mk_slice_bounds
      (mk___split_fields (of_rep1 lo_index) (of_rep2 hi_index)))) max_sum2))))))

;; H
  (assert
  (forall ((lo_index Int))
  (=>
  (and (<= (to_rep3 (first (rt x))) lo_index)
  (<= lo_index (- current_lo2 1)))
  (<= (sum__logic x
      (mk_slice_bounds
      (mk___split_fields (of_rep1 lo_index) (of_rep2 (- current_lo2 1))))) 0))))

;; H
  (assert
  (forall ((hi_index Int))
  (=> (and (<= current_lo2 hi_index) (<= hi_index (- current_hi2 1)))
  (<= 0 (sum__logic x
        (mk_slice_bounds
        (mk___split_fields (of_rep1 current_lo2) (of_rep2 hi_index))))))))

;; H
  (assert
  (and
  (and
  (and
  (and (=> (<= 0 2147483647) (in_range2 max_sum2))
  (=> (<= (- 2147483648) 2147483647) (in_range1 current_sum2))) (in_range4
  current_lo2))
  (=> (<= (to_rep3 (first (rt x))) (to_rep3 (last (rt x))))
  (dynamic_property1 (to_rep3 (first (rt x))) (to_rep3 (last (rt x)))
  current_hi2)))
  (and (<= (to_rep3 (first (rt x))) current_hi2)
  (<= current_hi2 (to_rep3 (last (rt x)))))))

;; H
  (assert
  (and (= o5 (+ current_sum2 (to_rep (select (elts x) current_hi2))))
  (in_range1 (+ current_sum2 (to_rep (select (elts x) current_hi2))))))

;; H
  (assert (= result5 (mk_int__ref current_sum2)))

;; H
  (assert (= current_sum3 o5))

;; H
  (assert
  (=> (< max_sum2 current_sum3)
  (and (= o6 current_sum3) (in_range2 current_sum3))))

;; H
  (assert (=> (< max_sum2 current_sum3) (= result6 (mk_int__ref max_sum2))))

;; H
  (assert (=> (< max_sum2 current_sum3) (= max_sum3 o6)))

;; H
  (assert (=> (< max_sum2 current_sum3) (= (to_rep1 o7) current_lo2)))

;; H
  (assert
  (=> (< max_sum2 current_sum3)
  (= o8 (mk___split_fields o7
        (rec__sums__slice_bounds__hi result____split_fields3)))))

;; H
  (assert (=> (< max_sum2 current_sum3) (= temp___178 (mk_slice_bounds o8))))

;; H
  (assert
  (=> (< max_sum2 current_sum3)
  (= result7 (mk___split_fields__ref result____split_fields3))))

;; H
  (assert
  (=> (< max_sum2 current_sum3)
  (= result____split_fields4 (us_split_fields1 temp___178))))

;; H
  (assert
  (=> (< max_sum2 current_sum3)
  (and (= o9 current_hi2) (in_range5 current_hi2))))

;; H
  (assert (=> (< max_sum2 current_sum3) (= (to_rep2 o10) o9)))

;; H
  (assert
  (=> (< max_sum2 current_sum3)
  (= o11 (mk___split_fields
         (rec__sums__slice_bounds__lo result____split_fields4) o10))))

;; H
  (assert
  (=> (< max_sum2 current_sum3) (= temp___180 (mk_slice_bounds o11))))

;; H
  (assert
  (=> (< max_sum2 current_sum3)
  (= result8 (mk___split_fields__ref result____split_fields4))))

;; H
  (assert
  (=> (< max_sum2 current_sum3)
  (= result____split_fields5 (us_split_fields1 temp___180))))

;; H
  (assert (=> (< max_sum2 current_sum3) (= current_lo3 current_lo2)))

;; H
  (assert (=> (< max_sum2 current_sum3) (= current_sum4 current_sum3)))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (< current_sum3 0)
  (=> (not (= current_hi2 65536))
  (and (= o12 (+ current_hi2 1)) (in_range1 (+ current_hi2 1)))))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (< current_sum3 0)
  (=> (not (= current_hi2 65536)) (and (= o13 o12) (in_range4 o12))))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (< current_sum3 0)
  (=> (not (= current_hi2 65536)) (= result9 (mk_int__ref current_lo2))))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (< current_sum3 0)
  (=> (not (= current_hi2 65536)) (= current_lo3 o13)))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (< current_sum3 0)
  (=> (not (= current_hi2 65536)) (= result10 (mk_int__ref current_sum3))))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (< current_sum3 0) (=> (not (= current_hi2 65536)) (= current_sum4 0)))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (< current_sum3 0)
  (=> (not (not (= current_hi2 65536))) (= current_lo3 current_lo2)))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (< current_sum3 0)
  (=> (not (not (= current_hi2 65536))) (= current_sum4 current_sum3)))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (not (< current_sum3 0)) (= current_lo3 current_lo2))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (=> (not (< current_sum3 0)) (= current_sum4 current_sum3))))

;; H
  (assert
  (=> (not (< max_sum2 current_sum3))
  (= result____split_fields5 result____split_fields3)))

;; H
  (assert (=> (not (< max_sum2 current_sum3)) (= max_sum3 max_sum2)))

;; H
  (assert (not (= current_hi2 (to_rep3 (last (rt x))))))

;; H
  (assert (= result11 (mk_int__ref current_hi2)))

;; H
  (assert (= current_hi3 (+ current_hi2 1)))

(assert
;; WP_parameter_def
 ;; File "sums.ads", line 12, characters 0-0
  (not
  (= current_sum4 (sum__logic x
                  (mk_slice_bounds
                  (mk___split_fields (of_rep1 current_lo3)
                  (of_rep2 (- current_hi3 1))))))))
(check-sat)
