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

(declare-sort it1 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (it1 it1) Bool)

(declare-fun dummy () it1)

(declare-datatypes () ((it1__ref (mk_it1__ref (it1__content it1)))))
(define-fun it1__ref___projection ((a it1__ref)) it1 (it1__content a))

(define-fun dynamic_invariant ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= 1 10)) (in_range1 temp___expr_152)))

(declare-sort it2 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 5 x) (<= x 50)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (it2 it2) Bool)

(declare-fun dummy1 () it2)

(declare-datatypes () ((it2__ref (mk_it2__ref (it2__content it2)))))
(define-fun it2__ref___projection ((a it2__ref)) it2 (it2__content a))

(define-fun dynamic_invariant1 ((temp___expr_158 Int)
  (temp___is_init_155 Bool) (temp___skip_constant_156 Bool)
  (temp___do_toplevel_157 Bool)) Bool (=>
                                      (or (= temp___is_init_155 true)
                                      (<= 5 50)) (in_range2 temp___expr_158)))

(declare-sort it3 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 16)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (it3 it3) Bool)

(declare-fun dummy2 () it3)

(declare-datatypes () ((it3__ref (mk_it3__ref (it3__content it3)))))
(define-fun it3__ref___projection ((a it3__ref)) it3 (it3__content a))

(define-fun dynamic_invariant2 ((temp___expr_164 Int)
  (temp___is_init_161 Bool) (temp___skip_constant_162 Bool)
  (temp___do_toplevel_163 Bool)) Bool (=>
                                      (or (= temp___is_init_161 true)
                                      (<= 1 16)) (in_range3 temp___expr_164)))

(declare-sort et1 0)

(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq3 (et1 et1) Bool)

(declare-fun dummy3 () et1)

(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))

(define-fun dynamic_invariant3 ((temp___expr_176 Int)
  (temp___is_init_173 Bool) (temp___skip_constant_174 Bool)
  (temp___do_toplevel_175 Bool)) Bool (=>
                                      (or (= temp___is_init_173 true)
                                      (<= 0 99)) (in_range4 temp___expr_176)))

(declare-fun to_rep (et1) Int)

(declare-fun of_rep (Int) et1)

;; inversion_axiom
  (assert
  (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x et1)) (! (in_range4 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range4 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-sort enum1tb 0)

(define-fun in_range5 ((x Int)) Bool (and (<= 2 x) (<= x 6)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq4 (enum1tb enum1tb) Bool)

(declare-fun dummy4 () enum1tb)

(declare-datatypes ()
((enum1tb__ref (mk_enum1tb__ref (enum1tb__content enum1tb)))))
(define-fun enum1tb__ref___projection ((a enum1tb__ref)) enum1tb (enum1tb__content
                                                                 a))

(declare-fun to_rep1 (enum1tb) Int)

(declare-fun of_rep1 (Int) enum1tb)

;; inversion_axiom
  (assert
  (forall ((x enum1tb))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x enum1tb)) (! (in_range5 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range5 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int et1))))))
(declare-fun slide ((Array Int et1) Int Int) (Array Int et1))

;; slide_eq
  (assert
  (forall ((a (Array Int et1)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int et1)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int et1) Int Int (Array Int et1) Int
  Int) (Array Int et1))

;; concat_def
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (et1 Int) (Array Int et1))

;; singleton_def
  (assert
  (forall ((v et1))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq5 ((a (Array Int et1)) (a__first Int) (a__last Int)
  (b (Array Int et1)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (to_rep (select a temp___idx_132)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_132)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (to_rep (select a temp___idx_132)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_132)))))))))))

(declare-fun compare ((Array Int et1) Int Int (Array Int et1) Int Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq5 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq5 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq5 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy5 () (Array Int et1))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int et1)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int et1)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int et1)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int et1))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert (forall ((a (Array Int et1))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int et1))) (<= 0 (object__alignment a))))

(declare-fun user_eq5 ((Array Int et1) (Array Int et1)) Bool)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int (Array Int et1)))))))
(declare-fun slide1 ((Array Int (Array Int et1)) Int
  Int) (Array Int (Array Int et1)))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int et1))))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int et1))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int (Array Int et1)) Int Int
  (Array Int (Array Int et1)) Int Int) (Array Int (Array Int et1)))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int et1))) (b (Array Int (Array Int et1))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 ((Array Int et1) Int) (Array Int (Array Int et1)))

;; singleton_def
  (assert
  (forall ((v (Array Int et1)))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq6 ((a (Array Int (Array Int et1))) (a__first Int)
  (a__last Int) (b (Array Int (Array Int et1))) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (bool_eq5 (select a temp___idx_133) 1 10
                              (select b (+ (- b__first a__first) temp___idx_133))
                              1 10) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int et1))) (b (Array Int (Array Int et1))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq5 (select a temp___idx_133) 1 10
     (select b (+ (- b__first a__first) temp___idx_133)) 1 10) true))))))))

(declare-fun dummy6 () (Array Int (Array Int et1)))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array Int (Array Int et1))) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array Int (Array Int et1))) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array Int (Array Int et1))) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert
  (forall ((a (Array Int (Array Int et1)))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int (Array Int et1))))
  (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert
  (forall ((a (Array Int (Array Int et1)))) (<= 0 (object__alignment1 a))))

(declare-fun user_eq6 ((Array Int (Array Int et1))
  (Array Int (Array Int et1))) Bool)

(declare-datatypes ()
((map__ref2
 (mk_map__ref2 (map__content2 (Array Int (Array Int (Array Int et1))))))))
(declare-fun slide2 ((Array Int (Array Int (Array Int et1))) Int
  Int) (Array Int (Array Int (Array Int et1))))

;; slide_eq
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1)))))
  (forall ((first Int))
  (! (= (slide2 a first first) a) :pattern ((slide2 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1)))))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide2 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide2 a old_first new_first) i)) ))))))

(declare-fun concat3 ((Array Int (Array Int (Array Int et1))) Int Int
  (Array Int (Array Int (Array Int et1))) Int
  Int) (Array Int (Array Int (Array Int et1))))

;; concat_def
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1))))
  (b (Array Int (Array Int (Array Int et1)))))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat3 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat3 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton3 ((Array Int (Array Int et1))
  Int) (Array Int (Array Int (Array Int et1))))

;; singleton_def
  (assert
  (forall ((v (Array Int (Array Int et1))))
  (forall ((i Int))
  (! (= (select (singleton3 v i) i) v) :pattern ((select (singleton3 v i) i)) ))))

(define-fun bool_eq7 ((a (Array Int (Array Int (Array Int et1))))
  (a__first Int) (a__last Int) (b (Array Int (Array Int (Array Int et1))))
  (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_134 Int))
                           (=>
                           (and (<= a__first temp___idx_134)
                           (<= temp___idx_134 a__last))
                           (= (bool_eq6 (select a temp___idx_134) 5 50
                              (select b (+ (- b__first a__first) temp___idx_134))
                              5 50) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1))))
  (b (Array Int (Array Int (Array Int et1)))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq7 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_134 Int))
  (=> (and (<= a__first temp___idx_134) (<= temp___idx_134 a__last))
  (= (bool_eq6 (select a temp___idx_134) 5 50
     (select b (+ (- b__first a__first) temp___idx_134)) 5 50) true))))))))

(declare-fun dummy7 () (Array Int (Array Int (Array Int et1))))

(declare-fun value__size2 () Int)

(declare-fun object__size2 ((Array Int (Array Int (Array Int et1)))) Int)

(declare-fun value__component__size2 () Int)

(declare-fun object__component__size2 ((Array Int (Array Int (Array Int et1)))) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 ((Array Int (Array Int (Array Int et1)))) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1)))))
  (<= 0 (object__size2 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size2))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1)))))
  (<= 0 (object__component__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1)))))
  (<= 0 (object__alignment2 a))))

(declare-fun user_eq7 ((Array Int (Array Int (Array Int et1)))
  (Array Int (Array Int (Array Int et1)))) Bool)

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__ar__rofa3__s3 enum1tb)(rec__ar__rofa3__t3 (Array Int (Array Int (Array Int et1))))(rec__ar__rofa3__u3 Bool)))))
(define-fun us_split_fields_S3__projection ((a us_split_fields)) enum1tb 
  (rec__ar__rofa3__s3 a))

(define-fun us_split_fields_T3__projection ((a us_split_fields)) (Array Int (Array Int (Array Int et1))) 
  (rec__ar__rofa3__t3 a))

(define-fun us_split_fields_U3__projection ((a us_split_fields)) Bool 
  (rec__ar__rofa3__u3 a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref_8__projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep_8__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun bool_eq8 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep1
                           (rec__ar__rofa3__s3 (us_split_fields1 a))) 
                        (to_rep1 (rec__ar__rofa3__s3 (us_split_fields1 b))))
                        (= (bool_eq7
                           (rec__ar__rofa3__t3 (us_split_fields1 a)) 1 16
                           (rec__ar__rofa3__t3 (us_split_fields1 b)) 1 16) true))
                        (= (rec__ar__rofa3__u3 (us_split_fields1 a)) 
                        (rec__ar__rofa3__u3 (us_split_fields1 b))))
                   true false))

(declare-fun user_eq8 (us_rep us_rep) Bool)

(declare-fun value__size3 () Int)

(declare-fun object__size3 (us_rep) Int)

(declare-fun value__alignment3 () Int)

(declare-fun object__alignment3 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size3))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size3 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment3))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))

(declare-fun ar__rofa3__s3__first__bit () Int)

(declare-fun ar__rofa3__s3__last__bit () Int)

(declare-fun ar__rofa3__s3__position () Int)

;; ar__rofa3__s3__first__bit_axiom
  (assert (<= 0 ar__rofa3__s3__first__bit))

;; ar__rofa3__s3__last__bit_axiom
  (assert (< ar__rofa3__s3__first__bit ar__rofa3__s3__last__bit))

;; ar__rofa3__s3__position_axiom
  (assert (<= 0 ar__rofa3__s3__position))

(declare-fun ar__rofa3__t3__first__bit () Int)

(declare-fun ar__rofa3__t3__last__bit () Int)

(declare-fun ar__rofa3__t3__position () Int)

;; ar__rofa3__t3__first__bit_axiom
  (assert (<= 0 ar__rofa3__t3__first__bit))

;; ar__rofa3__t3__last__bit_axiom
  (assert (< ar__rofa3__t3__first__bit ar__rofa3__t3__last__bit))

;; ar__rofa3__t3__position_axiom
  (assert (<= 0 ar__rofa3__t3__position))

(declare-fun ar__rofa3__u3__first__bit () Int)

(declare-fun ar__rofa3__u3__last__bit () Int)

(declare-fun ar__rofa3__u3__position () Int)

;; ar__rofa3__u3__first__bit_axiom
  (assert (<= 0 ar__rofa3__u3__first__bit))

;; ar__rofa3__u3__last__bit_axiom
  (assert (< ar__rofa3__u3__first__bit ar__rofa3__u3__last__bit))

;; ar__rofa3__u3__position_axiom
  (assert (<= 0 ar__rofa3__u3__position))

(declare-fun dummy8 () us_rep)

(declare-datatypes () ((rofa3__ref (mk_rofa3__ref (rofa3__content us_rep)))))
(define-fun rofa3__ref___projection ((a rofa3__ref)) us_rep (rofa3__content
                                                            a))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun j () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun k () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun a () (Array Int (Array Int (Array Int et1))))

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun b () (Array Int (Array Int et1)))

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun c () (Array Int et1))

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun d () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(define-fun dynamic_invariant4 ((temp___expr_218 Int)
  (temp___is_init_215 Bool) (temp___skip_constant_216 Bool)
  (temp___do_toplevel_217 Bool)) Bool (=>
                                      (or (= temp___is_init_215 true)
                                      (<= 2 6)) (in_range5 temp___expr_218)))

(declare-fun r__split_fields () enum1tb)

(declare-fun r__split_fields1 () (Array Int (Array Int (Array Int et1))))

(declare-fun r__split_fields2 () Bool)

(declare-fun o () et1)

(declare-fun o1 () (Array Int et1))

(declare-fun o2 () (Array Int (Array Int et1)))

(declare-fun o3 () (Array Int (Array Int (Array Int et1))))

(declare-fun o4 () enum1tb)

(declare-fun o5 () (Array Int (Array Int (Array Int et1))))

(declare-fun o6 () Bool)

(declare-fun temp___8503 () enum1tb)

(declare-fun temp___85031 () (Array Int (Array Int (Array Int et1))))

(declare-fun temp___85032 () Bool)

(declare-fun result () enum1tb)

(declare-fun result1 () (Array Int (Array Int (Array Int et1))))

(declare-fun result2 () Bool)

(declare-fun r__split_fields3 () enum1tb)

(declare-fun r__split_fields4 () (Array Int (Array Int (Array Int et1))))

(declare-fun r__split_fields5 () Bool)

(declare-fun result3 () enum1tb)

(declare-fun result4 () (Array Int (Array Int (Array Int et1))))

(declare-fun result5 () Bool)

(declare-fun r__split_fields6 () enum1tb)

(declare-fun r__split_fields7 () (Array Int (Array Int (Array Int et1))))

(declare-fun r__split_fields8 () Bool)

(declare-fun result6 () enum1tb)

(declare-fun result7 () (Array Int (Array Int (Array Int et1))))

(declare-fun result8 () Bool)

(declare-fun r__split_fields9 () enum1tb)

(declare-fun r__split_fields10 () (Array Int (Array Int (Array Int et1))))

(declare-fun r__split_fields11 () Bool)

(declare-fun result9 () enum1tb)

(declare-fun result10 () (Array Int (Array Int (Array Int et1))))

(declare-fun result11 () Bool)

(declare-fun r__split_fields12 () enum1tb)

(declare-fun r__split_fields13 () (Array Int (Array Int (Array Int et1))))

(declare-fun r__split_fields14 () Bool)

(declare-fun result12 () enum1tb)

(declare-fun result13 () (Array Int (Array Int (Array Int et1))))

(declare-fun result14 () Bool)

(declare-fun r__split_fields15 () enum1tb)

(declare-fun r__split_fields16 () (Array Int (Array Int (Array Int et1))))

(declare-fun r__split_fields17 () Bool)

(declare-fun r__split_fields18 () enum1tb)

(declare-fun r__split_fields19 () (Array Int (Array Int (Array Int et1))))

(declare-fun r__split_fields20 () Bool)

(declare-fun r__split_fields21 () us_split_fields)

;; H
  (assert (in_range3 i))

;; H
  (assert (in_range2 j))

;; H
  (assert (in_range1 k))

;; H
  (assert (in_range4 d))

;; H
  (assert (= result r__split_fields))

;; H
  (assert (= result1 r__split_fields1))

;; H
  (assert (= result2 r__split_fields2))

;; H
  (assert (= r__split_fields r__split_fields3))

;; H
  (assert (= a r__split_fields4))

;; H
  (assert (= r__split_fields2 r__split_fields5))

;; H
  (assert (= result3 r__split_fields3))

;; H
  (assert (= result4 r__split_fields4))

;; H
  (assert (= result5 r__split_fields5))

;; H
  (assert (= r__split_fields3 r__split_fields6))

;; H
  (assert (= (store r__split_fields4 i b) r__split_fields7))

;; H
  (assert (= r__split_fields5 r__split_fields8))

;; H
  (assert (= result6 r__split_fields6))

;; H
  (assert (= result7 r__split_fields7))

;; H
  (assert (= result8 r__split_fields8))

;; H
  (assert (= r__split_fields6 r__split_fields9))

;; H
  (assert
  (= (store r__split_fields7 i (store (select r__split_fields7 i) j c)) 
  r__split_fields10))

;; H
  (assert (= r__split_fields8 r__split_fields11))

;; H
  (assert (= (to_rep o) d))

;; H
  (assert (= o1 (store (select (select r__split_fields10 i) j) k o)))

;; H
  (assert (= o2 (store (select r__split_fields10 i) j o1)))

;; H
  (assert (= o3 (store r__split_fields10 i o2)))

;; H
  (assert (= r__split_fields9 o4))

;; H
  (assert (= o3 o5))

;; H
  (assert (= r__split_fields11 o6))

;; H
  (assert (= temp___8503 o4))

;; H
  (assert (= temp___85031 o5))

;; H
  (assert (= temp___85032 o6))

;; H
  (assert (= result9 r__split_fields9))

;; H
  (assert (= result10 r__split_fields10))

;; H
  (assert (= result11 r__split_fields11))

;; H
  (assert (= temp___8503 r__split_fields12))

;; H
  (assert (= temp___85031 r__split_fields13))

;; H
  (assert (= temp___85032 r__split_fields14))

;; H
  (assert (= result12 r__split_fields12))

;; H
  (assert (= result13 r__split_fields13))

;; H
  (assert (= result14 r__split_fields14))

;; H
  (assert (= r__split_fields12 r__split_fields15))

;; H
  (assert (= r__split_fields13 r__split_fields16))

;; H
  (assert (= (of_int 0) r__split_fields17))

;; H
  (assert (= r__split_fields18 r__split_fields15))

;; H
  (assert (= r__split_fields19 r__split_fields16))

;; H
  (assert (= r__split_fields20 r__split_fields17))

;; H
  (assert
  (= r__split_fields21 (mk___split_fields r__split_fields15 r__split_fields16
                       r__split_fields17)))

(declare-fun m () Int)

;; H
  (assert (<= 1 m))

;; H
  (assert (<= m 16))

(declare-fun n () Int)

;; H
  (assert (<= 5 n))

;; H
  (assert (<= n 50))

(declare-fun o7 () Int)

;; H
  (assert (<= 1 o7))

;; H
  (assert (<= o7 10))

(assert
;; WP_parameter_def
 ;; File "ar.ads", line 1584, characters 0-0
  (not (in_range4
  (to_rep (select (select (select r__split_fields19 m) n) o7)))))
(check-sat)
