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

(define-fun bool_eq4 ((a (Array Int et1)) (a__first Int) (a__last Int)
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
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
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
     (= (bool_eq4 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int et1)) (b (Array Int et1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq4 a a_first i b b_first j) true)
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
     (and (= (bool_eq4 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun dummy4 () (Array Int et1))

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

(declare-fun user_eq4 ((Array Int et1) (Array Int et1)) Bool)

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

(define-fun bool_eq5 ((a (Array Int (Array Int et1))) (a__first Int)
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
                           (= (bool_eq4 (select a temp___idx_133) 1 10
                              (select b (+ (- b__first a__first) temp___idx_133))
                              1 10) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int et1))) (b (Array Int (Array Int et1))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (bool_eq4 (select a temp___idx_133) 1 10
     (select b (+ (- b__first a__first) temp___idx_133)) 1 10) true))))))))

(declare-fun dummy5 () (Array Int (Array Int et1)))

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

(declare-fun user_eq5 ((Array Int (Array Int et1))
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

(define-fun bool_eq6 ((a (Array Int (Array Int (Array Int et1))))
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
                           (= (bool_eq5 (select a temp___idx_134) 5 50
                              (select b (+ (- b__first a__first) temp___idx_134))
                              5 50) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int (Array Int (Array Int et1))))
  (b (Array Int (Array Int (Array Int et1)))))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_134 Int))
  (=> (and (<= a__first temp___idx_134) (<= temp___idx_134 a__last))
  (= (bool_eq5 (select a temp___idx_134) 5 50
     (select b (+ (- b__first a__first) temp___idx_134)) 5 50) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun i () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun j () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun k () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun e () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS5 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS6 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS7 () Int)

(declare-fun temp___1815 ((Array Int (Array Int (Array Int et1))) Int
  (Array Int (Array Int et1)) Int
  (Array Int (Array Int et1))) (Array Int (Array Int (Array Int et1))))

;; def_axiom
  (assert
  (forall ((temp___1817 (Array Int (Array Int (Array Int et1)))))
  (forall ((temp___1818 Int) (temp___1820 Int))
  (forall ((temp___1819 (Array Int (Array Int et1)))
  (temp___1821 (Array Int (Array Int et1))))
  (let ((temp___1816 (temp___1815 temp___1817 temp___1818 temp___1819
                     temp___1820 temp___1821)))
  (forall ((temp___1822 Int))
  (ite (= temp___1822 temp___1820)
  (= (select temp___1816 temp___1822) temp___1821)
  (ite (= temp___1822 temp___1818)
  (= (select temp___1816 temp___1822) temp___1819)
  (= (select temp___1816 temp___1822) (select temp___1817 temp___1822))))))))))

(declare-fun temp___1823 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___1825 (Array Int (Array Int et1))))
  (forall ((temp___1826 Int))
  (forall ((temp___1827 (Array Int et1)))
  (let ((temp___1824 (temp___1823 temp___1825 temp___1826 temp___1827)))
  (forall ((temp___1828 Int))
  (ite (= temp___1828 temp___1826)
  (= (select temp___1824 temp___1828) temp___1827)
  (= (select temp___1824 temp___1828) (select temp___1825 temp___1828)))))))))

(declare-fun temp___1830 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___1832 (Array Int et1)))
  (forall ((temp___1833 Int) (temp___1834 Int))
  (let ((temp___1831 (temp___1830 temp___1832 temp___1833 temp___1834)))
  (forall ((temp___1835 Int))
  (ite (= temp___1835 temp___1833)
  (= (select temp___1831 temp___1835) (of_rep temp___1834))
  (= (select temp___1831 temp___1835) (select temp___1832 temp___1835))))))))

(declare-fun temp___1838 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___1840 (Array Int (Array Int et1))))
  (forall ((temp___1841 Int))
  (forall ((temp___1842 (Array Int et1)))
  (let ((temp___1839 (temp___1838 temp___1840 temp___1841 temp___1842)))
  (forall ((temp___1843 Int))
  (ite (= temp___1843 temp___1841)
  (= (select temp___1839 temp___1843) temp___1842)
  (= (select temp___1839 temp___1843) (select temp___1840 temp___1843)))))))))

(declare-fun temp___1845 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___1847 (Array Int et1)))
  (forall ((temp___1848 Int) (temp___1849 Int))
  (let ((temp___1846 (temp___1845 temp___1847 temp___1848 temp___1849)))
  (forall ((temp___1850 Int))
  (ite (= temp___1850 temp___1848)
  (= (select temp___1846 temp___1850) (of_rep temp___1849))
  (= (select temp___1846 temp___1850) (select temp___1847 temp___1850))))))))

(declare-fun temp___1854 ((Array Int (Array Int (Array Int et1))) Int
  (Array Int (Array Int et1)) Int
  (Array Int (Array Int et1))) (Array Int (Array Int (Array Int et1))))

;; def_axiom
  (assert
  (forall ((temp___1856 (Array Int (Array Int (Array Int et1)))))
  (forall ((temp___1857 Int) (temp___1859 Int))
  (forall ((temp___1858 (Array Int (Array Int et1)))
  (temp___1860 (Array Int (Array Int et1))))
  (let ((temp___1855 (temp___1854 temp___1856 temp___1857 temp___1858
                     temp___1859 temp___1860)))
  (forall ((temp___1861 Int))
  (ite (= temp___1861 temp___1859)
  (= (select temp___1855 temp___1861) temp___1860)
  (ite (= temp___1861 temp___1857)
  (= (select temp___1855 temp___1861) temp___1858)
  (= (select temp___1855 temp___1861) (select temp___1856 temp___1861))))))))))

(declare-fun temp___1862 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___1864 (Array Int (Array Int et1))))
  (forall ((temp___1865 Int))
  (forall ((temp___1866 (Array Int et1)))
  (let ((temp___1863 (temp___1862 temp___1864 temp___1865 temp___1866)))
  (forall ((temp___1867 Int))
  (ite (= temp___1867 temp___1865)
  (= (select temp___1863 temp___1867) temp___1866)
  (= (select temp___1863 temp___1867) (select temp___1864 temp___1867)))))))))

(declare-fun temp___1869 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___1871 (Array Int et1)))
  (forall ((temp___1872 Int) (temp___1873 Int))
  (let ((temp___1870 (temp___1869 temp___1871 temp___1872 temp___1873)))
  (forall ((temp___1874 Int))
  (ite (= temp___1874 temp___1872)
  (= (select temp___1870 temp___1874) (of_rep temp___1873))
  (= (select temp___1870 temp___1874) (select temp___1871 temp___1874))))))))

(declare-fun temp___1877 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___1879 (Array Int (Array Int et1))))
  (forall ((temp___1880 Int))
  (forall ((temp___1881 (Array Int et1)))
  (let ((temp___1878 (temp___1877 temp___1879 temp___1880 temp___1881)))
  (forall ((temp___1882 Int))
  (ite (= temp___1882 temp___1880)
  (= (select temp___1878 temp___1882) temp___1881)
  (= (select temp___1878 temp___1882) (select temp___1879 temp___1882)))))))))

(declare-fun temp___1884 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___1886 (Array Int et1)))
  (forall ((temp___1887 Int) (temp___1888 Int))
  (let ((temp___1885 (temp___1884 temp___1886 temp___1887 temp___1888)))
  (forall ((temp___1889 Int))
  (ite (= temp___1889 temp___1887)
  (= (select temp___1885 temp___1889) (of_rep temp___1888))
  (= (select temp___1885 temp___1889) (select temp___1886 temp___1889))))))))

(declare-fun temp___1893 ((Array Int (Array Int (Array Int et1))) Int
  (Array Int (Array Int et1)) Int
  (Array Int (Array Int et1))) (Array Int (Array Int (Array Int et1))))

;; def_axiom
  (assert
  (forall ((temp___1895 (Array Int (Array Int (Array Int et1)))))
  (forall ((temp___1896 Int) (temp___1898 Int))
  (forall ((temp___1897 (Array Int (Array Int et1)))
  (temp___1899 (Array Int (Array Int et1))))
  (let ((temp___1894 (temp___1893 temp___1895 temp___1896 temp___1897
                     temp___1898 temp___1899)))
  (forall ((temp___1900 Int))
  (ite (= temp___1900 temp___1898)
  (= (select temp___1894 temp___1900) temp___1899)
  (ite (= temp___1900 temp___1896)
  (= (select temp___1894 temp___1900) temp___1897)
  (= (select temp___1894 temp___1900) (select temp___1895 temp___1900))))))))))

(declare-fun temp___1901 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___1903 (Array Int (Array Int et1))))
  (forall ((temp___1904 Int))
  (forall ((temp___1905 (Array Int et1)))
  (let ((temp___1902 (temp___1901 temp___1903 temp___1904 temp___1905)))
  (forall ((temp___1906 Int))
  (ite (= temp___1906 temp___1904)
  (= (select temp___1902 temp___1906) temp___1905)
  (= (select temp___1902 temp___1906) (select temp___1903 temp___1906)))))))))

(declare-fun temp___1908 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___1910 (Array Int et1)))
  (forall ((temp___1911 Int) (temp___1912 Int))
  (let ((temp___1909 (temp___1908 temp___1910 temp___1911 temp___1912)))
  (forall ((temp___1913 Int))
  (ite (= temp___1913 temp___1911)
  (= (select temp___1909 temp___1913) (of_rep temp___1912))
  (= (select temp___1909 temp___1913) (select temp___1910 temp___1913))))))))

(declare-fun temp___1916 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___1918 (Array Int (Array Int et1))))
  (forall ((temp___1919 Int))
  (forall ((temp___1920 (Array Int et1)))
  (let ((temp___1917 (temp___1916 temp___1918 temp___1919 temp___1920)))
  (forall ((temp___1921 Int))
  (ite (= temp___1921 temp___1919)
  (= (select temp___1917 temp___1921) temp___1920)
  (= (select temp___1917 temp___1921) (select temp___1918 temp___1921)))))))))

(declare-fun temp___1923 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___1925 (Array Int et1)))
  (forall ((temp___1926 Int) (temp___1927 Int))
  (let ((temp___1924 (temp___1923 temp___1925 temp___1926 temp___1927)))
  (forall ((temp___1928 Int))
  (ite (= temp___1928 temp___1926)
  (= (select temp___1924 temp___1928) (of_rep temp___1927))
  (= (select temp___1924 temp___1928) (select temp___1925 temp___1928))))))))

(declare-fun temp___1932 ((Array Int (Array Int (Array Int et1))) Int
  (Array Int (Array Int et1)) Int
  (Array Int (Array Int et1))) (Array Int (Array Int (Array Int et1))))

;; def_axiom
  (assert
  (forall ((temp___1934 (Array Int (Array Int (Array Int et1)))))
  (forall ((temp___1935 Int) (temp___1937 Int))
  (forall ((temp___1936 (Array Int (Array Int et1)))
  (temp___1938 (Array Int (Array Int et1))))
  (let ((temp___1933 (temp___1932 temp___1934 temp___1935 temp___1936
                     temp___1937 temp___1938)))
  (forall ((temp___1939 Int))
  (ite (= temp___1939 temp___1937)
  (= (select temp___1933 temp___1939) temp___1938)
  (ite (= temp___1939 temp___1935)
  (= (select temp___1933 temp___1939) temp___1936)
  (= (select temp___1933 temp___1939) (select temp___1934 temp___1939))))))))))

(declare-fun temp___1940 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___1942 (Array Int (Array Int et1))))
  (forall ((temp___1943 Int))
  (forall ((temp___1944 (Array Int et1)))
  (let ((temp___1941 (temp___1940 temp___1942 temp___1943 temp___1944)))
  (forall ((temp___1945 Int))
  (ite (= temp___1945 temp___1943)
  (= (select temp___1941 temp___1945) temp___1944)
  (= (select temp___1941 temp___1945) (select temp___1942 temp___1945)))))))))

(declare-fun temp___1947 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___1949 (Array Int et1)))
  (forall ((temp___1950 Int) (temp___1951 Int))
  (let ((temp___1948 (temp___1947 temp___1949 temp___1950 temp___1951)))
  (forall ((temp___1952 Int))
  (ite (= temp___1952 temp___1950)
  (= (select temp___1948 temp___1952) (of_rep temp___1951))
  (= (select temp___1948 temp___1952) (select temp___1949 temp___1952))))))))

(declare-fun temp___1955 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___1957 (Array Int (Array Int et1))))
  (forall ((temp___1958 Int))
  (forall ((temp___1959 (Array Int et1)))
  (let ((temp___1956 (temp___1955 temp___1957 temp___1958 temp___1959)))
  (forall ((temp___1960 Int))
  (ite (= temp___1960 temp___1958)
  (= (select temp___1956 temp___1960) temp___1959)
  (= (select temp___1956 temp___1960) (select temp___1957 temp___1960)))))))))

(declare-fun temp___1962 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___1964 (Array Int et1)))
  (forall ((temp___1965 Int) (temp___1966 Int))
  (let ((temp___1963 (temp___1962 temp___1964 temp___1965 temp___1966)))
  (forall ((temp___1967 Int))
  (ite (= temp___1967 temp___1965)
  (= (select temp___1963 temp___1967) (of_rep temp___1966))
  (= (select temp___1963 temp___1967) (select temp___1964 temp___1967))))))))

(declare-fun temp___5471 ((Array Int (Array Int (Array Int et1))) Int
  (Array Int (Array Int et1))) (Array Int (Array Int (Array Int et1))))

;; def_axiom
  (assert
  (forall ((temp___5473 (Array Int (Array Int (Array Int et1)))))
  (forall ((temp___5474 Int))
  (forall ((temp___5475 (Array Int (Array Int et1))))
  (let ((temp___5472 (temp___5471 temp___5473 temp___5474 temp___5475)))
  (forall ((temp___5476 Int))
  (ite (= temp___5476 temp___5474)
  (= (select temp___5472 temp___5476) temp___5475)
  (= (select temp___5472 temp___5476) (select temp___5473 temp___5476)))))))))

(declare-fun temp___5477 ((Array Int (Array Int et1)) Int
  (Array Int et1)) (Array Int (Array Int et1)))

;; def_axiom
  (assert
  (forall ((temp___5479 (Array Int (Array Int et1))))
  (forall ((temp___5480 Int))
  (forall ((temp___5481 (Array Int et1)))
  (let ((temp___5478 (temp___5477 temp___5479 temp___5480 temp___5481)))
  (forall ((temp___5482 Int))
  (ite (= temp___5482 temp___5480)
  (= (select temp___5478 temp___5482) temp___5481)
  (= (select temp___5478 temp___5482) (select temp___5479 temp___5482)))))))))

(declare-fun temp___5483 ((Array Int et1) Int Int) (Array Int et1))

;; def_axiom
  (assert
  (forall ((temp___5485 (Array Int et1)))
  (forall ((temp___5486 Int) (temp___5487 Int))
  (let ((temp___5484 (temp___5483 temp___5485 temp___5486 temp___5487)))
  (forall ((temp___5488 Int))
  (ite (= temp___5488 temp___5486)
  (= (select temp___5484 temp___5488) (of_rep temp___5487))
  (= (select temp___5484 temp___5488) (select temp___5485 temp___5488))))))))

(declare-fun a () (Array Int (Array Int (Array Int et1))))

(declare-fun k_next () Int)

(declare-fun f () Int)

(declare-fun t () (Array Int (Array Int (Array Int et1))))

(declare-fun o () et1)

(declare-fun o1 () (Array Int et1))

(declare-fun o2 () (Array Int (Array Int et1)))

(declare-fun o3 () (Array Int (Array Int (Array Int et1))))

(declare-fun o4 () Int)

(declare-fun result () (Array Int (Array Int (Array Int et1))))

(declare-fun t1 () (Array Int (Array Int (Array Int et1))))

(declare-fun result1 () (Array Int (Array Int (Array Int et1))))

(declare-fun a1 () (Array Int (Array Int (Array Int et1))))

(declare-fun result2 () Int)

(declare-fun k_next1 () Int)

(declare-fun result3 () Int)

(declare-fun k_next2 () Int)

;; H
  (assert (in_range1 i))

;; H
  (assert (in_range2 j))

;; H
  (assert (in_range3 k))

;; H
  (assert (in_range4 e))

;; H
  (assert (=> (<= 1 16) (in_range3 k_next)))

;; H
  (assert (=> (<= 0 99) (in_range4 f)))

;; H
  (assert (= (mk_map__ref2 result) (mk_map__ref2 t)))

;; H
  (assert (= t1 a))

;; H
  (assert (= (to_rep o) e))

;; H
  (assert (= o1 (store (select (select a k) j) i o)))

;; H
  (assert (= o2 (store (select a k) j o1)))

;; H
  (assert (= o3 (store a k o2)))

;; H
  (assert (= (mk_map__ref2 result1) (mk_map__ref2 a)))

;; H
  (assert (= a1 o3))

;; H
  (assert (=> (= k 16) (= result2 k_next)))

;; H
  (assert (=> (= k 16) (= k_next1 1)))

;; H
  (assert (=> (not (= k 16)) (and (= o4 (+ k 1)) (in_range3 (+ k 1)))))

;; H
  (assert (=> (not (= k 16)) (= result3 k_next)))

;; H
  (assert (=> (not (= k 16)) (= k_next2 o4)))

;; H
  (assert (=> (not (= k 16)) (= k_next1 k_next2)))

(assert
;; WP_parameter_def
 ;; File "ar.ads", line 486, characters 0-0
  (not
  (= (bool_eq6 a1 1 16
     (temp___5471 t1 k
     (temp___5477 (select t1 k) j (temp___5483 (select (select t1 k) j) i e)))
     1 16) true)))
(check-sat)
