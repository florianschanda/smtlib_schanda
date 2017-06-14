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

(declare-fun nth ((_ BitVec 64) Int) Bool)

(declare-fun lsr ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun asr ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun lsl ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_right1 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun rotate_left1 ((_ BitVec 64) Int) (_ BitVec 64))

(declare-fun pow2 (Int) Int)

(declare-fun to_int1 ((_ BitVec 64)) Int)

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i)
                                         (<= i 18446744073709551615)))

;; to_uint_of_int
  (assert
  (forall ((i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (bv2nat ((_ int2bv 64) i)) i))))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvlshr x n) (lsr x (bv2nat n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvashr x n) (asr x (bv2nat n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvshl x n) (lsl x (bv2nat n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvshl v (bvurem n (_ bv64 64))) (bvlshr v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_left1 v (bv2nat n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 64)) (n (_ BitVec 64)))
  (= (bvor (bvlshr v (bvurem n (_ bv64 64))) (bvshl v (bvsub (_ bv64 64) (bvurem n (_ bv64 64))))) 
  (rotate_right1 v (bv2nat n)))))

(declare-fun nth_bv ((_ BitVec 64) (_ BitVec 64)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (= (nth_bv x i) true)
  (not (= (bvand (bvlshr x i) #x0000000000000001) #x0000000000000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 64)) (i (_ BitVec 64)))
  (= (nth x (bv2nat i)) (nth_bv x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 64)) (i Int))
  (=> (and (<= 0 i) (< i 18446744073709551616))
  (= (nth_bv x ((_ int2bv 64) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)
  (_ BitVec 64)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (let ((mask (bvshl (bvsub (bvshl #x0000000000000001 n) #x0000000000000001) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 64)) (b (_ BitVec 64)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 64)) (b (_ BitVec 64)) (i (_ BitVec 64))
  (n (_ BitVec 64)))
  (= (eq_sub a b (bv2nat i) (bv2nat n)) (eq_sub_bv a b i n))))

(declare-datatypes () ((t__ref (mk_t__ref (t__content (_ BitVec 64))))))
(declare-fun power ((_ BitVec 64) Int) (_ BitVec 64))

(define-fun bv_min ((x (_ BitVec 64))
  (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 64))
  (y (_ BitVec 64))) (_ BitVec 64) (ite (bvule x y) y x))

(define-fun to_int2 ((b Bool)) Int (ite (= b true) 1 0))

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

(declare-sort positive 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (positive positive) Bool)

(declare-fun dummy1 () positive)

(declare-datatypes ()
((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content
                                                                    a))

(declare-sort character 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 255)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (character character) Bool)

(declare-fun dummy2 () character)

(declare-datatypes ()
((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character 
  (character__content a))

(declare-fun to_rep (character) Int)

(declare-fun of_rep (Int) character)

;; inversion_axiom
  (assert
  (forall ((x character))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x character)) (! (in_range3 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))

;; slide_eq
  (assert
  (forall ((a (Array Int character)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int character)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int character) Int Int (Array Int character) Int
  Int) (Array Int character))

;; concat_def
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (character Int) (Array Int character))

;; singleton_def
  (assert
  (forall ((v character))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq3 ((a (Array Int character)) (a__first Int) (a__last Int)
  (b (Array Int character)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_78 Int))
                           (=>
                           (and (<= a__first temp___idx_78)
                           (<= temp___idx_78 a__last))
                           (= (to_rep (select a temp___idx_78)) (to_rep
                                                                (select b (+ (- b__first a__first) temp___idx_78)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq3 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_78 Int))
  (=> (and (<= a__first temp___idx_78) (<= temp___idx_78 a__last))
  (= (to_rep (select a temp___idx_78)) (to_rep
                                       (select b (+ (- b__first a__first) temp___idx_78)))))))))))

(declare-fun compare ((Array Int character) Int Int (Array Int character) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq3 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int character)) (b (Array Int character)))
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
  (forall ((a (Array Int character)) (b (Array Int character)))
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

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort t 0)

(declare-fun first (t) integer)

(declare-fun last (t) integer)

(declare-fun mk (Int Int) t)

;; mk_def
  (assert
  (forall ((f Int) (l Int))
  (! (=> (in_range1 f)
     (=> (in_range1 l)
     (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int)
  (high Int)) Bool (and (in_range1 low)
                   (and (in_range1 high)
                   (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes () ((us_t (mk___t (elts (Array Int character))(rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))

(define-fun of_array ((a (Array Int character)) (f Int)
  (l Int)) us_t (mk___t a (mk f l)))

(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a))
                                  (+ (- (last1 a) (first1 a)) 1) 0))

(declare-fun value__size () Int)

(declare-fun object__size ((Array Int character)) Int)

(declare-fun value__component__size () Int)

(declare-fun object__component__size ((Array Int character)) Int)

(declare-fun value__alignment () Int)

(declare-fun object__alignment ((Array Int character)) Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__size a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size))

;; object__component__size_axiom
  (assert
  (forall ((a (Array Int character))) (<= 0 (object__component__size a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment))

;; object__alignment_axiom
  (assert (forall ((a (Array Int character))) (<= 0 (object__alignment a))))

(define-fun bool_eq4 ((x us_t)
  (y us_t)) Bool (bool_eq3 (elts x) (to_rep1 (first (rt x)))
                 (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y)))
                 (to_rep1 (last (rt y)))))

(declare-fun user_eq3 (us_t us_t) Bool)

(declare-fun dummy3 () us_t)

(declare-fun to_string (us_image) us_t)

(declare-fun from_string (us_t) us_image)

(declare-datatypes ()
((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content
                                                            a))

(declare-sort my_index 0)

(declare-fun attr__ATTRIBUTE_MODULUS () (_ BitVec 64))

(define-fun bool_eq5 ((x (_ BitVec 64))
  (y (_ BitVec 64))) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 64)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 64))

(declare-fun user_eq4 (my_index my_index) Bool)

(declare-fun dummy4 () my_index)

(declare-datatypes ()
((my_index__ref (mk_my_index__ref (my_index__content my_index)))))
(define-fun my_index__ref___projection ((a my_index__ref)) my_index (my_index__content
                                                                    a))

(declare-fun to_rep2 (my_index) (_ BitVec 64))

(declare-fun of_rep2 ((_ BitVec 64)) my_index)

;; inversion_axiom
  (assert
  (forall ((x my_index))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 64)))
  (! (= (to_rep2 (of_rep2 x)) x) :pattern ((to_rep2 (of_rep2 x))) )))

(define-fun to_int3 ((x my_index)) Int (bv2nat (to_rep2 x)))

;; range_int_axiom
  (assert
  (forall ((x my_index)) (! (uint_in_range
  (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array (_ BitVec 64) Bool))))))
(declare-fun slide1 ((Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

;; slide_eq
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)))
  (forall ((first2 (_ BitVec 64)))
  (! (= (slide1 a first2 first2) a) :pattern ((slide1 a first2 first2)) ))))

;; slide_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)))
  (forall ((old_first (_ BitVec 64)))
  (forall ((new_first (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (= (select (slide1 a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

;; concat_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (and
     (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (bvugt i a_last)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (bvadd (bvsub i a_last) (bvsub b_first #x0000000000000001)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (Bool (_ BitVec 64)) (Array (_ BitVec 64) Bool))

;; singleton_def
  (assert
  (forall ((v Bool))
  (forall ((i (_ BitVec 64)))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq6 ((a (Array (_ BitVec 64) Bool)) (a__first (_ BitVec 64))
  (a__last (_ BitVec 64)) (b (Array (_ BitVec 64) Bool))
  (b__first (_ BitVec 64))
  (b__last (_ BitVec 64))) Bool (ite (and
                                     (ite (bvule a__first a__last)
                                     (and (bvule b__first b__last)
                                     (= (bvsub a__last a__first) (bvsub b__last b__first)))
                                     (bvugt b__first b__last))
                                     (forall ((temp___idx_133 (_ BitVec 64)))
                                     (=>
                                     (and (bvule a__first temp___idx_133)
                                     (bvule temp___idx_133 a__last))
                                     (= (select a temp___idx_133) (select b (bvadd (bvsub b__first a__first) temp___idx_133))))))
                                true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a__first (_ BitVec 64)) (a__last (_ BitVec 64))
  (b__first (_ BitVec 64)) (b__last (_ BitVec 64)))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (bvule a__first a__last)
  (and (bvule b__first b__last)
  (= (bvsub a__last a__first) (bvsub b__last b__first)))
  (bvugt b__first b__last))
  (forall ((temp___idx_133 (_ BitVec 64)))
  (=> (and (bvule a__first temp___idx_133) (bvule temp___idx_133 a__last))
  (= (select a temp___idx_133) (select b (bvadd (bvsub b__first a__first) temp___idx_133))))))))))

(declare-fun compare1 ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (= (compare1 a a_first a_last b b_first b_last) 0)
     (= (bool_eq6 a a_first a_last b b_first b_last) true)) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (< (compare1 a a_first a_last b b_first b_last) 0)
     (exists ((i (_ BitVec 64)) (j (_ BitVec 64)))
     (and (bvule i a_last)
     (and (bvult j b_last)
     (and (= (bool_eq6 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (bvult i a_last)
     (< (to_int2 (select a (bvadd i #x0000000000000001))) (to_int2
                                                          (select b (bvadd j #x0000000000000001))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (! (= (< 0 (compare1 a a_first a_last b b_first b_last))
     (exists ((i (_ BitVec 64)) (j (_ BitVec 64)))
     (and (bvule i b_last)
     (and (bvult j a_last)
     (and (= (bool_eq6 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (bvult i b_last)
     (< (to_int2 (select b (bvadd i #x0000000000000001))) (to_int2
                                                          (select a (bvadd j #x0000000000000001))))))))))) :pattern (
  (compare1 a a_first a_last b b_first b_last)) ))))

(declare-fun xorb ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

(declare-fun andb ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

(declare-fun orb ((Array (_ BitVec 64) Bool) (_ BitVec 64) (_ BitVec 64)
  (Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

(declare-fun notb ((Array (_ BitVec 64) Bool) (_ BitVec 64)
  (_ BitVec 64)) (Array (_ BitVec 64) Bool))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (orb a a_first a_last b b_first b_last) i) (or (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (orb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (andb a a_first a_last b b_first b_last) i) (and (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (andb a a_first a_last b b_first b_last) i)) )))))

;; op_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)) (b (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64))
  (b_first (_ BitVec 64)) (b_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (xorb a a_first a_last b b_first b_last) i) (xor (select a i) (select b (bvadd (bvsub i a_first) b_first))))) :pattern ((select 
  (xorb a a_first a_last b b_first b_last) i)) )))))

;; notb_def
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)))
  (forall ((a_first (_ BitVec 64)) (a_last (_ BitVec 64)))
  (forall ((i (_ BitVec 64)))
  (! (=> (and (bvule a_first i) (bvule i a_last))
     (= (select (notb a a_first a_last) i) (not (select a i)))) :pattern ((select 
  (notb a a_first a_last) i)) )))))

(declare-sort t1 0)

(declare-fun first2 (t1) my_index)

(declare-fun last2 (t1) my_index)

(declare-fun mk1 ((_ BitVec 64) (_ BitVec 64)) t1)

;; mk_def
  (assert
  (forall ((f (_ BitVec 64)) (l (_ BitVec 64)))
  (! (and (= (to_rep2 (first2 (mk1 f l))) f)
     (= (to_rep2 (last2 (mk1 f l))) l)) :pattern ((mk1 f l)) )))

(define-fun dynamic_property1 ((range_first (_ BitVec 64))
  (range_last (_ BitVec 64)) (low (_ BitVec 64))
  (high (_ BitVec 64))) Bool true)

(declare-datatypes ()
((us_t1 (mk___t1 (elts1 (Array (_ BitVec 64) Bool))(rt1 t1)))))
(define-fun to_array1 ((a us_t1)) (Array (_ BitVec 64) Bool) (elts1 a))

(define-fun of_array1 ((a (Array (_ BitVec 64) Bool)) (f (_ BitVec 64))
  (l (_ BitVec 64))) us_t1 (mk___t1 a (mk1 f l)))

(define-fun first3 ((a us_t1)) (_ BitVec 64) (to_rep2 (first2 (rt1 a))))

(define-fun last3 ((a us_t1)) (_ BitVec 64) (to_rep2 (last2 (rt1 a))))

(define-fun length1 ((a us_t1)) Int (ite (bvule (first3 a) (last3 a))
                                    (+ (- (bv2nat (last3 a)) (bv2nat 
                                    (first3 a))) 1) 0))

(declare-fun value__size1 () Int)

(declare-fun object__size1 ((Array (_ BitVec 64) Bool)) Int)

(declare-fun value__component__size1 () Int)

(declare-fun object__component__size1 ((Array (_ BitVec 64) Bool)) Int)

(declare-fun value__alignment1 () Int)

(declare-fun object__alignment1 ((Array (_ BitVec 64) Bool)) Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (forall ((a (Array (_ BitVec 64) Bool))) (<= 0 (object__size1 a))))

;; value__component__size_axiom
  (assert (<= 0 value__component__size1))

;; object__component__size_axiom
  (assert
  (forall ((a (Array (_ BitVec 64) Bool)))
  (<= 0 (object__component__size1 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment1))

;; object__alignment_axiom
  (assert
  (forall ((a (Array (_ BitVec 64) Bool))) (<= 0 (object__alignment1 a))))

(define-fun bool_eq7 ((x us_t1)
  (y us_t1)) Bool (bool_eq6 (elts1 x) (to_rep2 (first2 (rt1 x)))
                  (to_rep2 (last2 (rt1 x))) (elts1 y)
                  (to_rep2 (first2 (rt1 y))) (to_rep2 (last2 (rt1 y)))))

(declare-fun user_eq5 (us_t1 us_t1) Bool)

(declare-fun dummy5 () us_t1)

(declare-datatypes () ((a__ref (mk_a__ref (a__content us_t1)))))
(define-fun a__ref___projection ((a a__ref)) us_t1 (a__content a))

(define-fun dynamic_invariant ((temp___expr_293 us_t1)
  (temp___is_init_290 Bool) (temp___skip_constant_291 Bool)
  (temp___do_toplevel_292 Bool)) Bool (=>
                                      (not (= temp___skip_constant_291 true))
                                      (dynamic_property1 ((_ int2bv 64) 0)
                                      ((_ int2bv 64) 18446744073709551615)
                                      (first3 temp___expr_293)
                                      (last3 temp___expr_293))))

(declare-fun create ((_ BitVec 64)) us_t1)

(declare-fun create__function_guard (us_t1 (_ BitVec 64)) Bool)

(declare-fun c () us_t1)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun temp___String_Literal_641 (tuple0) (Array Int character))

;; temp___String_Literal_641__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (and
     (= (to_rep (select (temp___String_Literal_641 us_void_param) 1)) 122)
     (= (to_rep (select (temp___String_Literal_641 us_void_param) 2)) 101))
     (= (to_rep (select (temp___String_Literal_641 us_void_param) 3)) 114))
     (= (to_rep (select (temp___String_Literal_641 us_void_param) 4)) 111)) :pattern (
  (temp___String_Literal_641 us_void_param)) )))

(declare-fun temp___String_Literal_642 (tuple0) (Array Int character))

;; temp___String_Literal_642__def_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (and
     (and
     (= (to_rep (select (temp___String_Literal_642 us_void_param) 1)) 109)
     (= (to_rep (select (temp___String_Literal_642 us_void_param) 2)) 97))
     (= (to_rep (select (temp___String_Literal_642 us_void_param) 3)) 120)) :pattern (
  (temp___String_Literal_642 us_void_param)) )))

(define-fun dynamic_invariant1 ((temp___expr_39 Int) (temp___is_init_36 Bool)
  (temp___skip_constant_37 Bool)
  (temp___do_toplevel_38 Bool)) Bool (=>
                                     (or (= temp___is_init_36 true)
                                     (<= 1 2147483647)) (in_range2
                                     temp___expr_39)))

(define-fun dynamic_invariant2 ((temp___expr_63 Int) (temp___is_init_60 Bool)
  (temp___skip_constant_61 Bool)
  (temp___do_toplevel_62 Bool)) Bool (=>
                                     (or (= temp___is_init_60 true)
                                     (<= 0 255)) (in_range3 temp___expr_63)))

(define-fun dynamic_invariant3 ((temp___expr_82 us_t)
  (temp___is_init_79 Bool) (temp___skip_constant_80 Bool)
  (temp___do_toplevel_81 Bool)) Bool (=>
                                     (not (= temp___skip_constant_80 true))
                                     (dynamic_property 1 2147483647
                                     (first1 temp___expr_82)
                                     (last1 temp___expr_82))))

(define-fun dynamic_invariant4 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range1 temp___expr_15)))

(define-fun dynamic_invariant5 ((temp___expr_287 (_ BitVec 64))
  (temp___is_init_284 Bool) (temp___skip_constant_285 Bool)
  (temp___do_toplevel_286 Bool)) Bool true)

;; create__post_axiom
  (assert
  (forall ((last4 (_ BitVec 64)))
  (! (=> (dynamic_invariant5 last4 true true true)
     (let ((result (create last4)))
     (=> (create__function_guard result last4)
     (and
     (and (= (last3 result) last4) (= (first3 result) ((_ int2bv 64) 0)))
     (dynamic_invariant result true false true))))) :pattern ((create last4)) )))

;; c__def_axiom
  (assert
  (and (create__function_guard (create ((_ int2bv 64) 18446744073709551615))
  ((_ int2bv 64) 18446744073709551615))
  (= c (create ((_ int2bv 64) 18446744073709551615)))))

;; H
  (assert (dynamic_invariant c true false true))

;; H
  (assert (= (create ((_ int2bv 64) 18446744073709551615)) c))

;; H
  (assert
  (and (= (to_rep2 (first2 (rt1 c))) ((_ int2bv 64) 0))
  (= (to_rep2 (last2 (rt1 c))) ((_ int2bv 64) 18446744073709551615))))

(assert
;; WP_parameter_def
 ;; File "mod_array.ads", line 4, characters 0-0
  (not (uint_in_range (length1 c))))
(check-sat)
