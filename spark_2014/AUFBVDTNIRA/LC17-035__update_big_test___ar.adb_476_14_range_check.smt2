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

(declare-sort it1 0)

(define-fun in_range ((x Int)) Bool (and (<= 1 x) (<= x 10)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (it1 it1) Bool)

(declare-fun dummy () it1)

(declare-datatypes () ((it1__ref (mk_it1__ref (it1__content it1)))))
(define-fun it1__ref___projection ((a it1__ref)) it1 (it1__content a))

(define-fun dynamic_invariant ((temp___expr_152 Int)
  (temp___is_init_149 Bool) (temp___skip_constant_150 Bool)
  (temp___do_toplevel_151 Bool)) Bool (=>
                                      (or (= temp___is_init_149 true)
                                      (<= 1 10)) (in_range temp___expr_152)))

(declare-sort it2 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 5 x) (<= x 50)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (it2 it2) Bool)

(declare-fun dummy1 () it2)

(declare-datatypes () ((it2__ref (mk_it2__ref (it2__content it2)))))
(define-fun it2__ref___projection ((a it2__ref)) it2 (it2__content a))

(define-fun dynamic_invariant1 ((temp___expr_158 Int)
  (temp___is_init_155 Bool) (temp___skip_constant_156 Bool)
  (temp___do_toplevel_157 Bool)) Bool (=>
                                      (or (= temp___is_init_155 true)
                                      (<= 5 50)) (in_range1 temp___expr_158)))

(declare-sort et1 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 99)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq2 (et1 et1) Bool)

(declare-fun dummy2 () et1)

(declare-datatypes () ((et1__ref (mk_et1__ref (et1__content et1)))))
(define-fun et1__ref___projection ((a et1__ref)) et1 (et1__content a))

(define-fun dynamic_invariant2 ((temp___expr_176 Int)
  (temp___is_init_173 Bool) (temp___skip_constant_174 Bool)
  (temp___do_toplevel_175 Bool)) Bool (=>
                                      (or (= temp___is_init_173 true)
                                      (<= 0 99)) (in_range2 temp___expr_176)))

(declare-fun to_rep (et1) Int)

(declare-fun of_rep (Int) et1)

;; inversion_axiom
  (assert
  (forall ((x et1)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x et1)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

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

(define-fun bool_eq3 ((a (Array Int et1)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
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
  (forall ((a (Array Int et1)) (b (Array Int et1)))
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

(declare-fun dummy3 () (Array Int et1))

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

(declare-fun user_eq3 ((Array Int et1) (Array Int et1)) Bool)

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

(define-fun bool_eq4 ((a (Array Int (Array Int et1))) (a__first Int)
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
                           (= (bool_eq3 (select a temp___idx_133) 1 10
                              (select b (+ (- b__first a__first) temp___idx_133))
                              1 10) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int et1))) (b (Array Int (Array Int et1))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq3 (select a temp___idx_133) 1 10
     (select b (+ (- b__first a__first) temp___idx_133)) 1 10) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun j () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun e () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun temp___866 ((Array Int (Array Int et1)) Int (Array Int et1) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___868 (Array Int (Array Int et1))))
  (forall ((temp___869 Int) (temp___871 Int))
  (forall ((temp___870 (Array Int et1)) (temp___872 (Array Int et1)))
  (let ((temp___867 (temp___866 temp___868 temp___869 temp___870 temp___871
                    temp___872)))
  (forall ((temp___873 Int))
  (ite (= temp___873 temp___871)
  (= (select temp___867 temp___873) temp___872)
  (ite (= temp___873 temp___869)
  (= (select temp___867 temp___873) temp___870)
  (= (select temp___867 temp___873) (select temp___868 temp___873))))))))))

(declare-fun temp___874 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___876 (Array Int et1)))
  (forall ((temp___877 Int) (temp___878 Int))
  (let ((temp___875 (temp___874 temp___876 temp___877 temp___878)))
  (forall ((temp___879 Int))
  (ite (= temp___879 temp___877)
  (= (select temp___875 temp___879) (of_rep temp___878))
  (= (select temp___875 temp___879) (select temp___876 temp___879))))))))

(declare-fun temp___881 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___883 (Array Int et1)))
  (forall ((temp___884 Int) (temp___885 Int))
  (let ((temp___882 (temp___881 temp___883 temp___884 temp___885)))
  (forall ((temp___886 Int))
  (ite (= temp___886 temp___884)
  (= (select temp___882 temp___886) (of_rep temp___885))
  (= (select temp___882 temp___886) (select temp___883 temp___886))))))))

(declare-fun temp___889 ((Array Int (Array Int et1)) Int (Array Int et1) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___891 (Array Int (Array Int et1))))
  (forall ((temp___892 Int) (temp___894 Int))
  (forall ((temp___893 (Array Int et1)) (temp___895 (Array Int et1)))
  (let ((temp___890 (temp___889 temp___891 temp___892 temp___893 temp___894
                    temp___895)))
  (forall ((temp___896 Int))
  (ite (= temp___896 temp___894)
  (= (select temp___890 temp___896) temp___895)
  (ite (= temp___896 temp___892)
  (= (select temp___890 temp___896) temp___893)
  (= (select temp___890 temp___896) (select temp___891 temp___896))))))))))

(declare-fun temp___897 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___899 (Array Int et1)))
  (forall ((temp___900 Int) (temp___901 Int))
  (let ((temp___898 (temp___897 temp___899 temp___900 temp___901)))
  (forall ((temp___902 Int))
  (ite (= temp___902 temp___900)
  (= (select temp___898 temp___902) (of_rep temp___901))
  (= (select temp___898 temp___902) (select temp___899 temp___902))))))))

(declare-fun temp___904 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___906 (Array Int et1)))
  (forall ((temp___907 Int) (temp___908 Int))
  (let ((temp___905 (temp___904 temp___906 temp___907 temp___908)))
  (forall ((temp___909 Int))
  (ite (= temp___909 temp___907)
  (= (select temp___905 temp___909) (of_rep temp___908))
  (= (select temp___905 temp___909) (select temp___906 temp___909))))))))

(declare-fun temp___912 ((Array Int (Array Int et1)) Int (Array Int et1) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___914 (Array Int (Array Int et1))))
  (forall ((temp___915 Int) (temp___917 Int))
  (forall ((temp___916 (Array Int et1)) (temp___918 (Array Int et1)))
  (let ((temp___913 (temp___912 temp___914 temp___915 temp___916 temp___917
                    temp___918)))
  (forall ((temp___919 Int))
  (ite (= temp___919 temp___917)
  (= (select temp___913 temp___919) temp___918)
  (ite (= temp___919 temp___915)
  (= (select temp___913 temp___919) temp___916)
  (= (select temp___913 temp___919) (select temp___914 temp___919))))))))))

(declare-fun temp___920 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___922 (Array Int et1)))
  (forall ((temp___923 Int) (temp___924 Int))
  (let ((temp___921 (temp___920 temp___922 temp___923 temp___924)))
  (forall ((temp___925 Int))
  (ite (= temp___925 temp___923)
  (= (select temp___921 temp___925) (of_rep temp___924))
  (= (select temp___921 temp___925) (select temp___922 temp___925))))))))

(declare-fun temp___927 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___929 (Array Int et1)))
  (forall ((temp___930 Int) (temp___931 Int))
  (let ((temp___928 (temp___927 temp___929 temp___930 temp___931)))
  (forall ((temp___932 Int))
  (ite (= temp___932 temp___930)
  (= (select temp___928 temp___932) (of_rep temp___931))
  (= (select temp___928 temp___932) (select temp___929 temp___932))))))))

(declare-fun temp___935 ((Array Int (Array Int et1)) Int (Array Int et1) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___937 (Array Int (Array Int et1))))
  (forall ((temp___938 Int) (temp___940 Int))
  (forall ((temp___939 (Array Int et1)) (temp___941 (Array Int et1)))
  (let ((temp___936 (temp___935 temp___937 temp___938 temp___939 temp___940
                    temp___941)))
  (forall ((temp___942 Int))
  (ite (= temp___942 temp___940)
  (= (select temp___936 temp___942) temp___941)
  (ite (= temp___942 temp___938)
  (= (select temp___936 temp___942) temp___939)
  (= (select temp___936 temp___942) (select temp___937 temp___942))))))))))

(declare-fun temp___943 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___945 (Array Int et1)))
  (forall ((temp___946 Int) (temp___947 Int))
  (let ((temp___944 (temp___943 temp___945 temp___946 temp___947)))
  (forall ((temp___948 Int))
  (ite (= temp___948 temp___946)
  (= (select temp___944 temp___948) (of_rep temp___947))
  (= (select temp___944 temp___948) (select temp___945 temp___948))))))))

(declare-fun temp___950 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___952 (Array Int et1)))
  (forall ((temp___953 Int) (temp___954 Int))
  (let ((temp___951 (temp___950 temp___952 temp___953 temp___954)))
  (forall ((temp___955 Int))
  (ite (= temp___955 temp___953)
  (= (select temp___951 temp___955) (of_rep temp___954))
  (= (select temp___951 temp___955) (select temp___952 temp___955))))))))

(declare-fun a () (Array Int (Array Int et1)))

(declare-fun j_next () Int)

(declare-fun f () Int)

(declare-fun o () et1)

(declare-fun o1 () (Array Int et1))

(declare-fun o2 () (Array Int (Array Int et1)))

(declare-fun o3 () Int)

(declare-fun result () (Array Int (Array Int et1)))

(declare-fun a1 () (Array Int (Array Int et1)))

(declare-fun result1 () Int)

(declare-fun j_next1 () Int)

(declare-fun result2 () Int)

(declare-fun j_next2 () Int)

(define-fun j_next3 () int__ref (mk_int__ref j_next))

;; H
  (assert (in_range i))

;; H
  (assert (in_range1 j))

;; H
  (assert (in_range2 e))

;; H
  (assert (=> (<= 5 50) (in_range1 j_next)))

;; H
  (assert (=> (<= 0 99) (in_range2 f)))

;; H
  (assert (= (to_rep o) e))

;; H
  (assert (= o1 (store (select a j) i o)))

;; H
  (assert (= o2 (store a j o1)))

;; H
  (assert (= (mk_map__ref1 result) (mk_map__ref1 a)))

;; H
  (assert (= a1 o2))

;; H
  (assert (=> (= j 50) (= (mk_int__ref result1) j_next3)))

;; H
  (assert (=> (= j 50) (= j_next1 5)))

;; H
  (assert (=> (not (= j 50)) (and (= o3 (+ j 1)) (in_range1 (+ j 1)))))

;; H
  (assert (=> (not (= j 50)) (= (mk_int__ref result2) j_next3)))

;; H
  (assert (=> (not (= j 50)) (= j_next2 o3)))

;; H
  (assert (=> (not (= j 50)) (= j_next1 j_next2)))

;; H
  (assert (not (= e 0)))

(assert
;; WP_parameter_def
 ;; File "ar.ads", line 319, characters 0-0
  (not (in_range2 (- e 1))))
(check-sat)
