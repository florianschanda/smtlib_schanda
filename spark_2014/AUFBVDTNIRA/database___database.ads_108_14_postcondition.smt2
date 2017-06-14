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

(declare-sort cur 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 6)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (cur cur) Bool)

(declare-fun dummy () cur)

(declare-datatypes () ((cur__ref (mk_cur__ref (cur__content cur)))))
(define-fun cur__ref___projection ((a cur__ref)) cur (cur__content a))

(declare-fun to_rep (cur) Int)

(declare-fun of_rep (Int) cur)

;; inversion_axiom
  (assert
  (forall ((x cur)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x cur)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(declare-sort raw_amount 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 1000000)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (raw_amount raw_amount) Bool)

(declare-fun dummy1 () raw_amount)

(declare-datatypes ()
((raw_amount__ref (mk_raw_amount__ref (raw_amount__content raw_amount)))))
(define-fun raw_amount__ref___projection ((a raw_amount__ref)) raw_amount 
  (raw_amount__content a))

(declare-fun to_rep1 (raw_amount) Int)

(declare-fun of_rep1 (Int) raw_amount)

;; inversion_axiom
  (assert
  (forall ((x raw_amount))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x raw_amount)) (! (in_range1
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__money__amount__currency cur)(rec__money__amount__raw raw_amount)))))
(define-fun us_split_fields_Currency__projection ((a us_split_fields)) cur 
  (rec__money__amount__currency a))

(define-fun us_split_fields_Raw__projection ((a us_split_fields)) raw_amount 
  (rec__money__amount__raw a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (= (to_rep
                           (rec__money__amount__currency
                           (us_split_fields1 a))) (to_rep
                                                  (rec__money__amount__currency
                                                  (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__money__amount__raw (us_split_fields1 a))) 
                        (to_rep1
                        (rec__money__amount__raw (us_split_fields1 b)))))
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

(declare-fun money__amount__currency__first__bit () Int)

(declare-fun money__amount__currency__last__bit () Int)

(declare-fun money__amount__currency__position () Int)

;; money__amount__currency__first__bit_axiom
  (assert (<= 0 money__amount__currency__first__bit))

;; money__amount__currency__last__bit_axiom
  (assert
  (< money__amount__currency__first__bit money__amount__currency__last__bit))

;; money__amount__currency__position_axiom
  (assert (<= 0 money__amount__currency__position))

(declare-fun money__amount__raw__first__bit () Int)

(declare-fun money__amount__raw__last__bit () Int)

(declare-fun money__amount__raw__position () Int)

;; money__amount__raw__first__bit_axiom
  (assert (<= 0 money__amount__raw__first__bit))

;; money__amount__raw__last__bit_axiom
  (assert (< money__amount__raw__first__bit money__amount__raw__last__bit))

;; money__amount__raw__position_axiom
  (assert (<= 0 money__amount__raw__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes ()
((amount__ref (mk_amount__ref (amount__content us_rep)))))
(define-fun amount__ref___projection ((a amount__ref)) us_rep (amount__content
                                                              a))

(declare-fun oadd (us_rep us_rep) us_rep)

(declare-fun oadd__function_guard (us_rep us_rep us_rep) Bool)

;; oadd__post_axiom
  (assert
  (forall ((a us_rep) (b us_rep))
  (! (=>
     (and
     (= (to_rep (rec__money__amount__currency (us_split_fields1 a))) 
     (to_rep (rec__money__amount__currency (us_split_fields1 b))))
     (<= (+ (to_rep1 (rec__money__amount__raw (us_split_fields1 a))) 
     (to_rep1 (rec__money__amount__raw (us_split_fields1 b)))) 1000000))
     (let ((result (oadd a b)))
     (=> (oadd__function_guard result a b)
     (= (bool_eq2 result
        (mk___rep
        (mk___split_fields
        (rec__money__amount__currency (us_split_fields1 a))
        (of_rep1
        (+ (to_rep1 (rec__money__amount__raw (us_split_fields1 a))) (to_rep1
                                                                    (rec__money__amount__raw
                                                                    (us_split_fields1
                                                                    b)))))))) true)))) :pattern (
  (oadd a b)) )))

(declare-sort account_num 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 200000)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (account_num account_num) Bool)

(declare-fun dummy3 () account_num)

(declare-datatypes ()
((account_num__ref (mk_account_num__ref (account_num__content account_num)))))
(define-fun account_num__ref___projection ((a account_num__ref)) account_num 
  (account_num__content a))

(define-fun dynamic_invariant ((temp___expr_215 Int)
  (temp___is_init_212 Bool) (temp___skip_constant_213 Bool)
  (temp___do_toplevel_214 Bool)) Bool (=>
                                      (or (= temp___is_init_212 true)
                                      (<= 1 200000)) (in_range2
                                      temp___expr_215)))

(declare-sort ext_account_num 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 200000)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (ext_account_num ext_account_num) Bool)

(declare-fun dummy4 () ext_account_num)

(declare-datatypes ()
((ext_account_num__ref
 (mk_ext_account_num__ref (ext_account_num__content ext_account_num)))))
(define-fun ext_account_num__ref___projection ((a ext_account_num__ref)) ext_account_num 
  (ext_account_num__content a))

(declare-fun to_rep2 (ext_account_num) Int)

(declare-fun of_rep2 (Int) ext_account_num)

;; inversion_axiom
  (assert
  (forall ((x ext_account_num))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x ext_account_num)) (! (in_range3
  (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__database__availability__account_link__available Bool)(rec__database__availability__account_link__prev ext_account_num)(rec__database__availability__account_link__next ext_account_num)))))
(define-fun us_split_fields_Available__projection ((a us_split_fields2)) Bool 
  (rec__database__availability__account_link__available a))

(define-fun us_split_fields_Prev__projection ((a us_split_fields2)) ext_account_num 
  (rec__database__availability__account_link__prev a))

(define-fun us_split_fields_Next__projection ((a us_split_fields2)) ext_account_num 
  (rec__database__availability__account_link__next a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep_2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun bool_eq5 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (and
                         (= (rec__database__availability__account_link__available
                            (us_split_fields3 a)) (rec__database__availability__account_link__available
                                                  (us_split_fields3 b)))
                         (= (to_rep2
                            (rec__database__availability__account_link__prev
                            (us_split_fields3 a))) (to_rep2
                                                   (rec__database__availability__account_link__prev
                                                   (us_split_fields3 b)))))
                         (= (to_rep2
                            (rec__database__availability__account_link__next
                            (us_split_fields3 a))) (to_rep2
                                                   (rec__database__availability__account_link__next
                                                   (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq5 (us_rep1 us_rep1) Bool)

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

(declare-fun database__availability__account_link__available__first__bit () Int)

(declare-fun database__availability__account_link__available__last__bit () Int)

(declare-fun database__availability__account_link__available__position () Int)

;; database__availability__account_link__available__first__bit_axiom
  (assert (<= 0 database__availability__account_link__available__first__bit))

;; database__availability__account_link__available__last__bit_axiom
  (assert
  (< database__availability__account_link__available__first__bit database__availability__account_link__available__last__bit))

;; database__availability__account_link__available__position_axiom
  (assert (<= 0 database__availability__account_link__available__position))

(declare-fun database__availability__account_link__prev__first__bit () Int)

(declare-fun database__availability__account_link__prev__last__bit () Int)

(declare-fun database__availability__account_link__prev__position () Int)

;; database__availability__account_link__prev__first__bit_axiom
  (assert (<= 0 database__availability__account_link__prev__first__bit))

;; database__availability__account_link__prev__last__bit_axiom
  (assert
  (< database__availability__account_link__prev__first__bit database__availability__account_link__prev__last__bit))

;; database__availability__account_link__prev__position_axiom
  (assert (<= 0 database__availability__account_link__prev__position))

(declare-fun database__availability__account_link__next__first__bit () Int)

(declare-fun database__availability__account_link__next__last__bit () Int)

(declare-fun database__availability__account_link__next__position () Int)

;; database__availability__account_link__next__first__bit_axiom
  (assert (<= 0 database__availability__account_link__next__first__bit))

;; database__availability__account_link__next__last__bit_axiom
  (assert
  (< database__availability__account_link__next__first__bit database__availability__account_link__next__last__bit))

;; database__availability__account_link__next__position_axiom
  (assert (<= 0 database__availability__account_link__next__position))

(declare-fun dummy5 () us_rep1)

(declare-datatypes ()
((account_link__ref (mk_account_link__ref (account_link__content us_rep1)))))
(define-fun account_link__ref___projection ((a account_link__ref)) us_rep1 
  (account_link__content a))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int us_rep1))))))
(declare-fun slide ((Array Int us_rep1) Int Int) (Array Int us_rep1))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep1)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep1)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int us_rep1) Int Int (Array Int us_rep1) Int
  Int) (Array Int us_rep1))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep1)) (b (Array Int us_rep1)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (us_rep1 Int) (Array Int us_rep1))

;; singleton_def
  (assert
  (forall ((v us_rep1))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq6 ((a (Array Int us_rep1)) (a__first Int) (a__last Int)
  (b (Array Int us_rep1)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_141 Int))
                           (=>
                           (and (<= a__first temp___idx_141)
                           (<= temp___idx_141 a__last))
                           (= (bool_eq5 (select a temp___idx_141)
                              (select b (+ (- b__first a__first) temp___idx_141))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep1)) (b (Array Int us_rep1)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq6 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_141 Int))
  (=> (and (<= a__first temp___idx_141) (<= temp___idx_141 a__last))
  (= (bool_eq5 (select a temp___idx_141)
     (select b (+ (- b__first a__first) temp___idx_141))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun existing (Int (Array Int us_rep1)) Bool)

(declare-fun existing__function_guard (Bool Int (Array Int us_rep1)) Bool)

(declare-fun is_available (Int (Array Int us_rep1)) Bool)

(declare-fun is_available__function_guard (Bool Int
  (Array Int us_rep1)) Bool)

;; existing__post_axiom
  (assert true)

;; existing__def_axiom
  (assert
  (forall ((account Int))
  (forall ((database__availability__links (Array Int us_rep1)))
  (! (=> (existing__function_guard
     (existing account database__availability__links) account
     database__availability__links)
     (and (is_available__function_guard
     (is_available account database__availability__links) account
     database__availability__links)
     (= (= (existing account database__availability__links) true)
     (not (= (is_available account database__availability__links) true))))) :pattern (
  (existing account database__availability__links)) ))))

(declare-datatypes ()
((us_split_fields4
 (mk___split_fields2
 (rec__database__account_balance__value us_rep)(rec__database__account_balance__account ext_account_num)))))
(define-fun us_split_fields_Value__projection ((a us_split_fields4)) us_rep 
  (rec__database__account_balance__value a))

(define-fun us_split_fields_Account2__projection ((a us_split_fields4)) ext_account_num 
  (rec__database__account_balance__account a))

(declare-datatypes ()
((us_split_fields__ref2
 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref_4__projection ((a us_split_fields__ref2)) us_split_fields4 
  (us_split_fields__content2 a))

(declare-datatypes ()
((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep_4__projection ((a us_rep2)) us_split_fields4 (us_split_fields5
                                                                a))

(define-fun bool_eq7 ((a us_rep2)
  (b us_rep2)) Bool (ite (and
                         (= (bool_eq2
                            (rec__database__account_balance__value
                            (us_split_fields5 a))
                            (rec__database__account_balance__value
                            (us_split_fields5 b))) true)
                         (= (to_rep2
                            (rec__database__account_balance__account
                            (us_split_fields5 a))) (to_rep2
                                                   (rec__database__account_balance__account
                                                   (us_split_fields5 b)))))
                    true false))

(declare-fun user_eq6 (us_rep2 us_rep2) Bool)

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

(declare-fun database__account_balance__value__first__bit () Int)

(declare-fun database__account_balance__value__last__bit () Int)

(declare-fun database__account_balance__value__position () Int)

;; database__account_balance__value__first__bit_axiom
  (assert (<= 0 database__account_balance__value__first__bit))

;; database__account_balance__value__last__bit_axiom
  (assert
  (< database__account_balance__value__first__bit database__account_balance__value__last__bit))

;; database__account_balance__value__position_axiom
  (assert (<= 0 database__account_balance__value__position))

(declare-fun database__account_balance__account__first__bit () Int)

(declare-fun database__account_balance__account__last__bit () Int)

(declare-fun database__account_balance__account__position () Int)

;; database__account_balance__account__first__bit_axiom
  (assert (<= 0 database__account_balance__account__first__bit))

;; database__account_balance__account__last__bit_axiom
  (assert
  (< database__account_balance__account__first__bit database__account_balance__account__last__bit))

;; database__account_balance__account__position_axiom
  (assert (<= 0 database__account_balance__account__position))

(declare-fun dummy6 () us_rep2)

(declare-datatypes ()
((account_balance__ref
 (mk_account_balance__ref (account_balance__content us_rep2)))))
(define-fun account_balance__ref___projection ((a account_balance__ref)) us_rep2 
  (account_balance__content a))

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int us_rep2))))))
(declare-fun slide1 ((Array Int us_rep2) Int Int) (Array Int us_rep2))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep2)))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep2)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int us_rep2) Int Int (Array Int us_rep2) Int
  Int) (Array Int us_rep2))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep2)) (b (Array Int us_rep2)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (us_rep2 Int) (Array Int us_rep2))

;; singleton_def
  (assert
  (forall ((v us_rep2))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq8 ((a (Array Int us_rep2)) (a__first Int) (a__last Int)
  (b (Array Int us_rep2)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_143 Int))
                           (=>
                           (and (<= a__first temp___idx_143)
                           (<= temp___idx_143 a__last))
                           (= (bool_eq7 (select a temp___idx_143)
                              (select b (+ (- b__first a__first) temp___idx_143))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep2)) (b (Array Int us_rep2)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq8 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_143 Int))
  (=> (and (<= a__first temp___idx_143) (<= temp___idx_143 a__last))
  (= (bool_eq7 (select a temp___idx_143)
     (select b (+ (- b__first a__first) temp___idx_143))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun currency (Int (Array Int us_rep2)) Int)

(declare-fun currency__function_guard (Int Int (Array Int us_rep2)) Bool)

(define-fun dynamic_invariant1 ((temp___expr_183 Int)
  (temp___is_init_180 Bool) (temp___skip_constant_181 Bool)
  (temp___do_toplevel_182 Bool)) Bool (=>
                                      (or (= temp___is_init_180 true)
                                      (<= 0 6)) (in_range temp___expr_183)))

;; currency__post_axiom
  (assert
  (forall ((account Int))
  (forall ((database__accounts_balance (Array Int us_rep2)))
  (! (=> (dynamic_invariant account true true true)
     (let ((result (currency account database__accounts_balance)))
     (=> (currency__function_guard result account database__accounts_balance)
     (dynamic_invariant1 result true false true)))) :pattern ((currency
                                                              account
                                                              database__accounts_balance)) ))))

;; currency__def_axiom
  (assert
  (forall ((account Int))
  (forall ((database__accounts_balance (Array Int us_rep2)))
  (! (=>
     (and (dynamic_invariant account true true true)
     (currency__function_guard (currency account database__accounts_balance)
     account database__accounts_balance))
     (= (currency account database__accounts_balance) (to_rep
                                                      (rec__money__amount__currency
                                                      (us_split_fields1
                                                      (rec__database__account_balance__value
                                                      (us_split_fields5
                                                      (select database__accounts_balance account)))))))) :pattern (
  (currency account database__accounts_balance)) ))))

(declare-fun balance (Int (Array Int us_rep1) (Array Int us_rep2)) us_rep)

(declare-fun balance__function_guard (us_rep Int (Array Int us_rep1)
  (Array Int us_rep2)) Bool)

;; balance__post_axiom
  (assert
  (forall ((account Int))
  (forall ((database__availability__links (Array Int us_rep1)))
  (existing__function_guard (existing account database__availability__links)
  account database__availability__links))))

;; balance__def_axiom
  (assert
  (forall ((account Int))
  (forall ((database__availability__links (Array Int us_rep1)))
  (forall ((database__accounts_balance (Array Int us_rep2)))
  (! (=>
     (and (dynamic_invariant account true true true) (balance__function_guard
     (balance account database__availability__links
     database__accounts_balance) account database__availability__links
     database__accounts_balance))
     (= (balance account database__availability__links
        database__accounts_balance) (rec__database__account_balance__value
                                    (us_split_fields5
                                    (select database__accounts_balance account))))) :pattern (
  (balance account database__availability__links database__accounts_balance)) )))))

(declare-fun account () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun sum () us_rep)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

;; is_available__post_axiom
  (assert true)

;; is_available__def_axiom
  (assert
  (forall ((account1 Int))
  (forall ((database__availability__links (Array Int us_rep1)))
  (! (=> (is_available__function_guard
     (is_available account1 database__availability__links) account1
     database__availability__links)
     (= (= (is_available account1 database__availability__links) true)
     (= (rec__database__availability__account_link__available
        (us_split_fields3 (select database__availability__links account1))) true))) :pattern (
  (is_available account1 database__availability__links)) ))))

(define-fun dynamic_invariant2 ((temp___expr_209 Int)
  (temp___is_init_206 Bool) (temp___skip_constant_207 Bool)
  (temp___do_toplevel_208 Bool)) Bool (=>
                                      (or (= temp___is_init_206 true)
                                      (<= 0 200000)) (in_range3
                                      temp___expr_209)))

(define-fun dynamic_invariant3 ((temp___expr_195 Int)
  (temp___is_init_192 Bool) (temp___skip_constant_193 Bool)
  (temp___do_toplevel_194 Bool)) Bool (=>
                                      (or (= temp___is_init_192 true)
                                      (<= 0 1000000)) (in_range1
                                      temp___expr_195)))

(declare-fun links () (Array Int us_rep1))

(declare-fun accounts_balance () (Array Int us_rep2))

(declare-fun o () cur)

(declare-fun o1 () raw_amount)

(declare-fun o2 () cur)

(declare-fun o3 () raw_amount)

(declare-fun o4 () raw_amount)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun o8 () Bool)

(declare-fun o9 () cur)

(declare-fun o10 () raw_amount)

(declare-fun o11 () cur)

(declare-fun o12 () raw_amount)

(declare-fun o13 () ext_account_num)

(declare-fun o14 () cur)

(declare-fun o15 () raw_amount)

(declare-fun o16 () ext_account_num)

(declare-fun o17 () (Array Int us_rep2))

(declare-fun accounts_balance1 () (Array Int us_rep2))

(declare-fun result () Bool)

(declare-fun result1 () Bool)

(declare-fun result2 () map__ref1)

(declare-fun accounts_balance2 () (Array Int us_rep2))

(declare-fun accounts_balance3 () map__ref1)

(declare-fun accounts_balance4 () (Array Int us_rep2))

(declare-fun accounts_balance5 () map__ref1)

(declare-fun accounts_balance6 () (Array Int us_rep2))

(define-fun o18 () us_rep (mk___rep (mk___split_fields o9 o10)))

(define-fun o19 () us_rep (mk___rep (mk___split_fields o o1)))

(define-fun accounts_balance7 () map__ref1 (mk_map__ref1 accounts_balance))

;; H
  (assert (existing__function_guard (existing account links) account 
  links))

;; H
  (assert (currency__function_guard (currency account accounts_balance)
  account accounts_balance))

;; H
  (assert (balance__function_guard (balance account links accounts_balance)
  account links accounts_balance))

;; H
  (assert (in_range2 account))

;; H
  (assert
  (and (= (existing account links) true)
  (and
  (= (currency account accounts_balance) (to_rep
                                         (rec__money__amount__currency
                                         (us_split_fields1 sum))))
  (<= (+ (to_rep1
         (rec__money__amount__raw
         (us_split_fields1 (balance account links accounts_balance)))) 
  (to_rep1 (rec__money__amount__raw (us_split_fields1 sum)))) 1000000))))

;; H
  (assert
  (or
  (and
  (and (= accounts_balance3 accounts_balance7)
  (= accounts_balance4 accounts_balance1))
  (and
  (and
  (and
  (and
  (and
  (and (= o7 (currency account accounts_balance)) (currency__function_guard
  o7 account accounts_balance))
  (and (in_range o7)
  (= o7 (to_rep
        (rec__money__amount__currency
        (us_split_fields1
        (rec__database__account_balance__value
        (us_split_fields5 (select accounts_balance account)))))))))
  (= o8 (ite (= o7 (to_rep
                   (rec__money__amount__currency (us_split_fields1 sum))))
        true false)))
  (= result1 (ite (not (= o8 true)) true false)))
  (ite (= result1 true) (= result true)
  (and
  (and
  (and
  (and
  (and
  (and
  (and (= o19 (balance account links accounts_balance))
  (balance__function_guard o19 account links accounts_balance))
  (= o19 (rec__database__account_balance__value
         (us_split_fields5 (select accounts_balance account)))))
  (and (= o o2) (= o1 o3))) (= o4 o3)) (= o5 (to_rep1 o4)))
  (= o6 (+ o5 (to_rep1 (rec__money__amount__raw (us_split_fields1 sum))))))
  (= result (ite (< 1000000 o6) true false))))) (= result true)))
  (and
  (and
  (and
  (and
  (and
  (and
  (and (= o7 (currency account accounts_balance)) (currency__function_guard
  o7 account accounts_balance))
  (and (in_range o7)
  (= o7 (to_rep
        (rec__money__amount__currency
        (us_split_fields1
        (rec__database__account_balance__value
        (us_split_fields5 (select accounts_balance account)))))))))
  (= o8 (ite (= o7 (to_rep
                   (rec__money__amount__currency (us_split_fields1 sum))))
        true false)))
  (= result1 (ite (not (= o8 true)) true false)))
  (ite (= result1 true) (= result true)
  (and
  (and
  (and
  (and
  (and
  (and
  (and (= o19 (balance account links accounts_balance))
  (balance__function_guard o19 account links accounts_balance))
  (= o19 (rec__database__account_balance__value
         (us_split_fields5 (select accounts_balance account)))))
  (and (= o o2) (= o1 o3))) (= o4 o3)) (= o5 (to_rep1 o4)))
  (= o6 (+ o5 (to_rep1 (rec__money__amount__raw (us_split_fields1 sum))))))
  (= result (ite (< 1000000 o6) true false))))) (not (= result true)))
  (and
  (and (= accounts_balance3 (mk_map__ref1 accounts_balance2))
  (= accounts_balance4 accounts_balance2))
  (and
  (and
  (and
  (and
  (and
  (and
  (= o18 (oadd
         (rec__database__account_balance__value
         (us_split_fields5 (select accounts_balance account))) sum))
  (oadd__function_guard o18
  (rec__database__account_balance__value
  (us_split_fields5 (select accounts_balance account))) sum))
  (= (bool_eq2 o18
     (mk___rep
     (mk___split_fields
     (rec__money__amount__currency
     (us_split_fields1
     (rec__database__account_balance__value
     (us_split_fields5 (select accounts_balance account)))))
     (of_rep1
     (+ (to_rep1
        (rec__money__amount__raw
        (us_split_fields1
        (rec__database__account_balance__value
        (us_split_fields5 (select accounts_balance account)))))) (to_rep1
                                                                 (rec__money__amount__raw
                                                                 (us_split_fields1
                                                                 sum)))))))) true))
  (and (and (= o11 o9) (= o12 o10))
  (= (rec__database__account_balance__account
     (us_split_fields5 (select accounts_balance account))) o13)))
  (and (and (= o14 o11) (= o15 o12)) (= o16 o13)))
  (= o17 (store accounts_balance account (mk___rep2
                                         (mk___split_fields2
                                         (mk___rep
                                         (mk___split_fields o14 o15)) 
                                         o16)))))
  (and (= result2 accounts_balance7) (= accounts_balance2 o17)))))))

;; H
  (assert (= accounts_balance5 accounts_balance3))

;; H
  (assert (= accounts_balance6 accounts_balance4))

;; H
  (assert (balance__function_guard
  (balance account links (map__content1 accounts_balance5)) account links
  (map__content1 accounts_balance5)))

;; H
  (assert (balance__function_guard (balance account links accounts_balance)
  account links accounts_balance))

;; H
  (assert (balance__function_guard (balance account links accounts_balance)
  account links accounts_balance))

;; H
  (assert (oadd__function_guard
  (oadd (balance account links accounts_balance) sum)
  (balance account links accounts_balance) sum))

(assert
;; WP_parameter_def
 ;; File "database.adb", line 265, characters 0-0
  (not
  (= (bool_eq2 (balance account links (map__content1 accounts_balance5))
     (oadd (balance account links accounts_balance) sum)) true)))
(check-sat)
