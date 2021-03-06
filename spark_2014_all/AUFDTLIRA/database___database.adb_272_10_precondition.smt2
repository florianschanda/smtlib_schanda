(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic AUFDTLIRA)
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
(declare-sort character 0)
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (character character) Bool)
(declare-const dummy character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(declare-sort cur 0)
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 6)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (cur cur) Bool)
(declare-const dummy1 cur)
(declare-datatypes () ((cur__ref (mk_cur__ref (cur__content cur)))))
(define-fun cur__ref___projection ((a cur__ref)) cur (cur__content a))
(declare-fun to_rep1 (cur) Int)
(declare-fun of_rep1 (Int) cur)
(assert (forall ((x cur)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x cur)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort raw_amount 0)
(declare-fun raw_amountqtint (raw_amount) Int)
(assert (forall ((i raw_amount)) (and (<= 0 (raw_amountqtint i)) (<= (raw_amountqtint i) 1000000))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 1000000)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (raw_amount raw_amount) Bool)
(declare-const dummy2 raw_amount)
(declare-datatypes () ((raw_amount__ref (mk_raw_amount__ref (raw_amount__content raw_amount)))))
(define-fun raw_amount__ref___projection ((a raw_amount__ref)) raw_amount (raw_amount__content a))
(define-fun to_rep2 ((x raw_amount)) Int (raw_amountqtint x))
(declare-fun of_rep2 (Int) raw_amount)
(assert (forall ((x raw_amount)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x raw_amount)) (! (in_range2 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__money__amount__currency cur) (rec__money__amount__raw raw_amount)))))
(define-fun us_split_fields_Currency__projection ((a us_split_fields)) cur (rec__money__amount__currency a))
(define-fun us_split_fields_Raw__projection ((a us_split_fields)) raw_amount (rec__money__amount__raw a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep1 (rec__money__amount__currency (us_split_fields1 a))) (to_rep1 (rec__money__amount__currency (us_split_fields1 b)))) (= (to_rep2 (rec__money__amount__raw (us_split_fields1 a))) (to_rep2 (rec__money__amount__raw (us_split_fields1 b))))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const money__amount__currency__first__bit Int)
(declare-const money__amount__currency__last__bit Int)
(declare-const money__amount__currency__position Int)
(assert (<= 0 money__amount__currency__first__bit))
(assert (< money__amount__currency__first__bit money__amount__currency__last__bit))
(assert (<= 0 money__amount__currency__position))
(declare-const money__amount__raw__first__bit Int)
(declare-const money__amount__raw__last__bit Int)
(declare-const money__amount__raw__position Int)
(assert (<= 0 money__amount__raw__first__bit))
(assert (< money__amount__raw__first__bit money__amount__raw__last__bit))
(assert (<= 0 money__amount__raw__position))
(declare-fun user_eq3 (us_rep us_rep) Bool)
(declare-const dummy3 us_rep)
(declare-datatypes () ((amount__ref (mk_amount__ref (amount__content us_rep)))))
(define-fun amount__ref___projection ((a amount__ref)) us_rep (amount__content a))
(declare-fun is_empty (us_rep) Bool)
(declare-fun is_empty__function_guard (Bool us_rep) Bool)
(assert true)
(assert (forall ((a us_rep)) (! (= (= (is_empty a) true) (= (to_rep2 (rec__money__amount__raw (us_split_fields1 a))) 0)) :pattern ((is_empty a)))))
(declare-sort ext_account_num 0)
(declare-fun ext_account_numqtint (ext_account_num) Int)
(assert (forall ((i ext_account_num)) (and (<= 0 (ext_account_numqtint i)) (<= (ext_account_numqtint i) 200000))))
(define-fun in_range3 ((x Int)) Bool (and (<= 0 x) (<= x 200000)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq4 (ext_account_num ext_account_num) Bool)
(declare-const dummy4 ext_account_num)
(declare-datatypes () ((ext_account_num__ref (mk_ext_account_num__ref (ext_account_num__content ext_account_num)))))
(define-fun ext_account_num__ref___projection ((a ext_account_num__ref)) ext_account_num (ext_account_num__content a))
(define-fun to_rep3 ((x ext_account_num)) Int (ext_account_numqtint x))
(declare-fun of_rep3 (Int) ext_account_num)
(assert (forall ((x ext_account_num)) (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)))))
(assert (forall ((x ext_account_num)) (! (in_range3 (to_rep3 x)) :pattern ((to_rep3 x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3 (of_rep3 x))))))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__database__availability__account_link__available Bool) (rec__database__availability__account_link__prev ext_account_num) (rec__database__availability__account_link__next ext_account_num)))))
(define-fun us_split_fields_Available__projection ((a us_split_fields2)) Bool (rec__database__availability__account_link__available a))
(define-fun us_split_fields_Prev__projection ((a us_split_fields2)) ext_account_num (rec__database__availability__account_link__prev a))
(define-fun us_split_fields_Next__projection ((a us_split_fields2)) ext_account_num (rec__database__availability__account_link__next a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___2__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq2 ((a us_rep1) (b us_rep1)) Bool (ite (and (and (= (rec__database__availability__account_link__available (us_split_fields3 a)) (rec__database__availability__account_link__available (us_split_fields3 b))) (= (to_rep3 (rec__database__availability__account_link__prev (us_split_fields3 a))) (to_rep3 (rec__database__availability__account_link__prev (us_split_fields3 b))))) (= (to_rep3 (rec__database__availability__account_link__next (us_split_fields3 a))) (to_rep3 (rec__database__availability__account_link__next (us_split_fields3 b))))) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const database__availability__account_link__available__first__bit Int)
(declare-const database__availability__account_link__available__last__bit Int)
(declare-const database__availability__account_link__available__position Int)
(assert (<= 0 database__availability__account_link__available__first__bit))
(assert (< database__availability__account_link__available__first__bit database__availability__account_link__available__last__bit))
(assert (<= 0 database__availability__account_link__available__position))
(declare-const database__availability__account_link__prev__first__bit Int)
(declare-const database__availability__account_link__prev__last__bit Int)
(declare-const database__availability__account_link__prev__position Int)
(assert (<= 0 database__availability__account_link__prev__first__bit))
(assert (< database__availability__account_link__prev__first__bit database__availability__account_link__prev__last__bit))
(assert (<= 0 database__availability__account_link__prev__position))
(declare-const database__availability__account_link__next__first__bit Int)
(declare-const database__availability__account_link__next__last__bit Int)
(declare-const database__availability__account_link__next__position Int)
(assert (<= 0 database__availability__account_link__next__first__bit))
(assert (< database__availability__account_link__next__first__bit database__availability__account_link__next__last__bit))
(assert (<= 0 database__availability__account_link__next__position))
(declare-fun user_eq5 (us_rep1 us_rep1) Bool)
(declare-const dummy5 us_rep1)
(declare-datatypes () ((account_link__ref (mk_account_link__ref (account_link__content us_rep1)))))
(define-fun account_link__ref___projection ((a account_link__ref)) us_rep1 (account_link__content a))
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int us_rep1))))))
(declare-fun slide1 ((Array Int us_rep1) Int Int) (Array Int us_rep1))
(assert (forall ((a (Array Int us_rep1))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int us_rep1))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq3 ((a (Array Int us_rep1)) (a__first Int) (a__last Int) (b (Array Int us_rep1)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_163 Int)) (=> (and (<= a__first temp___idx_163) (<= temp___idx_163 a__last)) (= (bool_eq2 (select a temp___idx_163) (select b (+ (- b__first a__first) temp___idx_163))) true)))) true false))
(assert (forall ((a (Array Int us_rep1)) (b (Array Int us_rep1))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq3 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_163 Int)) (=> (and (<= a__first temp___idx_163) (<= temp___idx_163 a__last)) (= (bool_eq2 (select a temp___idx_163) (select b (+ (- b__first a__first) temp___idx_163))) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-fun existing (Int (Array Int us_rep1)) Bool)
(declare-fun existing__function_guard (Bool Int (Array Int us_rep1)) Bool)
(declare-fun is_available (Int (Array Int us_rep1)) Bool)
(declare-fun is_available__function_guard (Bool Int (Array Int us_rep1)) Bool)
(declare-sort account_num 0)
(declare-fun account_numqtint (account_num) Int)
(assert (forall ((i account_num)) (and (<= 1 (account_numqtint i)) (<= (account_numqtint i) 200000))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 200000)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq6 (account_num account_num) Bool)
(declare-const dummy6 account_num)
(declare-datatypes () ((account_num__ref (mk_account_num__ref (account_num__content account_num)))))
(define-fun account_num__ref___projection ((a account_num__ref)) account_num (account_num__content a))
(define-fun dynamic_invariant ((temp___expr_248 Int) (temp___is_init_244 Bool) (temp___skip_constant_245 Bool) (temp___do_toplevel_246 Bool) (temp___do_typ_inv_247 Bool)) Bool (=> (or (= temp___is_init_244 true) (<= 1 200000)) (in_range4 temp___expr_248)))
(assert true)
(assert (forall ((account Int)) (forall ((database__availability__links (Array Int us_rep1))) (! (= (= (existing account database__availability__links) true) (not (= (is_available account database__availability__links) true))) :pattern ((existing account database__availability__links))))))
(declare-const dummy7 (Array Int character))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int character)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int character)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int character)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int character))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment2 a))))
(declare-fun user_eq7 ((Array Int character) (Array Int character)) Bool)
(declare-sort num 0)
(declare-fun numqtint (num) Int)
(assert (forall ((i num)) (and (<= 0 (numqtint i)) (<= (numqtint i) 999))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 999)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq8 (num num) Bool)
(declare-const dummy8 num)
(declare-datatypes () ((num__ref (mk_num__ref (num__content num)))))
(define-fun num__ref___projection ((a num__ref)) num (num__content a))
(define-fun to_rep4 ((x num)) Int (numqtint x))
(declare-fun of_rep4 (Int) num)
(assert (forall ((x num)) (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)))))
(assert (forall ((x num)) (! (in_range5 (to_rep4 x)) :pattern ((to_rep4 x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep4 (of_rep4 x)) x)) :pattern ((to_rep4 (of_rep4 x))))))
(declare-datatypes () ((map__ref2 (mk_map__ref2 (map__content2 (Array Int num))))))
(declare-fun slide2 ((Array Int num) Int Int) (Array Int num))
(assert (forall ((a (Array Int num))) (forall ((first Int)) (! (= (slide2 a first first) a) :pattern ((slide2 a first first))))))
(assert (forall ((a (Array Int num))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide2 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide2 a old_first new_first) i))))))))
(define-fun bool_eq4 ((a (Array Int num)) (a__first Int) (a__last Int) (b (Array Int num)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_157 Int)) (=> (and (<= a__first temp___idx_157) (<= temp___idx_157 a__last)) (= (to_rep4 (select a temp___idx_157)) (to_rep4 (select b (+ (- b__first a__first) temp___idx_157))))))) true false))
(assert (forall ((a (Array Int num)) (b (Array Int num))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq4 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_157 Int)) (=> (and (<= a__first temp___idx_157) (<= temp___idx_157 a__last)) (= (to_rep4 (select a temp___idx_157)) (to_rep4 (select b (+ (- b__first a__first) temp___idx_157)))))))))))
(declare-const dummy9 (Array Int num))
(declare-const value__size3 Int)
(declare-fun object__size3 ((Array Int num)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int num)) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 ((Array Int num)) Int)
(assert (<= 0 value__size3))
(assert (forall ((a (Array Int num))) (<= 0 (object__size3 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int num))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a (Array Int num))) (<= 0 (object__alignment3 a))))
(declare-fun user_eq9 ((Array Int num) (Array Int num)) Bool)
(declare-datatypes () ((us_split_fields4 (mk___split_fields2 (rec__database__account_rec__owner_name (Array Int character)) (rec__database__account_rec__owner_id (Array Int num)) (rec__database__account_rec__account ext_account_num)))))
(define-fun us_split_fields_Owner_Name__projection ((a us_split_fields4)) (Array Int character) (rec__database__account_rec__owner_name a))
(define-fun us_split_fields_Owner_Id__projection ((a us_split_fields4)) (Array Int num) (rec__database__account_rec__owner_id a))
(define-fun us_split_fields_Account__projection ((a us_split_fields4)) ext_account_num (rec__database__account_rec__account a))
(declare-datatypes () ((us_split_fields__ref2 (mk___split_fields__ref2 (us_split_fields__content2 us_split_fields4)))))
(define-fun us_split_fields__ref___3__projection ((a us_split_fields__ref2)) us_split_fields4 (us_split_fields__content2 a))
(declare-datatypes () ((us_rep2 (mk___rep2 (us_split_fields5 us_split_fields4)))))
(define-fun us_rep___3__projection ((a us_rep2)) us_split_fields4 (us_split_fields5 a))
(define-fun bool_eq5 ((a us_rep2) (b us_rep2)) Bool (ite (and (and (= (bool_eq (rec__database__account_rec__owner_name (us_split_fields5 a)) 1 255 (rec__database__account_rec__owner_name (us_split_fields5 b)) 1 255) true) (= (bool_eq4 (rec__database__account_rec__owner_id (us_split_fields5 a)) 0 2 (rec__database__account_rec__owner_id (us_split_fields5 b)) 0 2) true)) (= (to_rep3 (rec__database__account_rec__account (us_split_fields5 a))) (to_rep3 (rec__database__account_rec__account (us_split_fields5 b))))) true false))
(declare-const value__size4 Int)
(declare-fun object__size4 (us_rep2) Int)
(declare-const value__alignment4 Int)
(declare-fun object__alignment4 (us_rep2) Int)
(assert (<= 0 value__size4))
(assert (forall ((a us_rep2)) (<= 0 (object__size4 a))))
(assert (<= 0 value__alignment4))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment4 a))))
(declare-const database__account_rec__owner_name__first__bit Int)
(declare-const database__account_rec__owner_name__last__bit Int)
(declare-const database__account_rec__owner_name__position Int)
(assert (<= 0 database__account_rec__owner_name__first__bit))
(assert (< database__account_rec__owner_name__first__bit database__account_rec__owner_name__last__bit))
(assert (<= 0 database__account_rec__owner_name__position))
(declare-const database__account_rec__owner_id__first__bit Int)
(declare-const database__account_rec__owner_id__last__bit Int)
(declare-const database__account_rec__owner_id__position Int)
(assert (<= 0 database__account_rec__owner_id__first__bit))
(assert (< database__account_rec__owner_id__first__bit database__account_rec__owner_id__last__bit))
(assert (<= 0 database__account_rec__owner_id__position))
(declare-const database__account_rec__account__first__bit Int)
(declare-const database__account_rec__account__last__bit Int)
(declare-const database__account_rec__account__position Int)
(assert (<= 0 database__account_rec__account__first__bit))
(assert (< database__account_rec__account__first__bit database__account_rec__account__last__bit))
(assert (<= 0 database__account_rec__account__position))
(declare-fun user_eq10 (us_rep2 us_rep2) Bool)
(declare-const dummy10 us_rep2)
(declare-datatypes () ((account_rec__ref (mk_account_rec__ref (account_rec__content us_rep2)))))
(define-fun account_rec__ref___projection ((a account_rec__ref)) us_rep2 (account_rec__content a))
(declare-datatypes () ((map__ref3 (mk_map__ref3 (map__content3 (Array Int us_rep2))))))
(declare-fun slide3 ((Array Int us_rep2) Int Int) (Array Int us_rep2))
(assert (forall ((a (Array Int us_rep2))) (forall ((first Int)) (! (= (slide3 a first first) a) :pattern ((slide3 a first first))))))
(assert (forall ((a (Array Int us_rep2))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide3 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide3 a old_first new_first) i))))))))
(define-fun bool_eq6 ((a (Array Int us_rep2)) (a__first Int) (a__last Int) (b (Array Int us_rep2)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_164 Int)) (=> (and (<= a__first temp___idx_164) (<= temp___idx_164 a__last)) (= (bool_eq5 (select a temp___idx_164) (select b (+ (- b__first a__first) temp___idx_164))) true)))) true false))
(assert (forall ((a (Array Int us_rep2)) (b (Array Int us_rep2))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq6 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_164 Int)) (=> (and (<= a__first temp___idx_164) (<= temp___idx_164 a__last)) (= (bool_eq5 (select a temp___idx_164) (select b (+ (- b__first a__first) temp___idx_164))) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-fun belongs_to (Int (Array Int character) (Array Int num) (Array Int us_rep2)) Bool)
(declare-fun belongs_to__function_guard (Bool Int (Array Int character) (Array Int num) (Array Int us_rep2)) Bool)
(assert true)
(assert (forall ((account Int)) (forall ((customer (Array Int character))) (forall ((id (Array Int num))) (forall ((database__accounts (Array Int us_rep2))) (! (= (= (belongs_to account customer id database__accounts) true) (= (bool_eq5 (select database__accounts account) (mk___rep2 (mk___split_fields2 customer id (of_rep3 account)))) true)) :pattern ((belongs_to account customer id database__accounts))))))))
(declare-datatypes () ((us_split_fields6 (mk___split_fields3 (rec__database__account_balance__value us_rep) (rec__database__account_balance__account ext_account_num)))))
(define-fun us_split_fields_Value__projection ((a us_split_fields6)) us_rep (rec__database__account_balance__value a))
(define-fun us_split_fields_Account__2__projection ((a us_split_fields6)) ext_account_num (rec__database__account_balance__account a))
(declare-datatypes () ((us_split_fields__ref3 (mk___split_fields__ref3 (us_split_fields__content3 us_split_fields6)))))
(define-fun us_split_fields__ref___4__projection ((a us_split_fields__ref3)) us_split_fields6 (us_split_fields__content3 a))
(declare-datatypes () ((us_rep3 (mk___rep3 (us_split_fields7 us_split_fields6)))))
(define-fun us_rep___4__projection ((a us_rep3)) us_split_fields6 (us_split_fields7 a))
(define-fun bool_eq7 ((a us_rep3) (b us_rep3)) Bool (ite (and (= (bool_eq1 (rec__database__account_balance__value (us_split_fields7 a)) (rec__database__account_balance__value (us_split_fields7 b))) true) (= (to_rep3 (rec__database__account_balance__account (us_split_fields7 a))) (to_rep3 (rec__database__account_balance__account (us_split_fields7 b))))) true false))
(declare-const value__size5 Int)
(declare-fun object__size5 (us_rep3) Int)
(declare-const value__alignment5 Int)
(declare-fun object__alignment5 (us_rep3) Int)
(assert (<= 0 value__size5))
(assert (forall ((a us_rep3)) (<= 0 (object__size5 a))))
(assert (<= 0 value__alignment5))
(assert (forall ((a us_rep3)) (<= 0 (object__alignment5 a))))
(declare-const database__account_balance__value__first__bit Int)
(declare-const database__account_balance__value__last__bit Int)
(declare-const database__account_balance__value__position Int)
(assert (<= 0 database__account_balance__value__first__bit))
(assert (< database__account_balance__value__first__bit database__account_balance__value__last__bit))
(assert (<= 0 database__account_balance__value__position))
(declare-const database__account_balance__account__first__bit Int)
(declare-const database__account_balance__account__last__bit Int)
(declare-const database__account_balance__account__position Int)
(assert (<= 0 database__account_balance__account__first__bit))
(assert (< database__account_balance__account__first__bit database__account_balance__account__last__bit))
(assert (<= 0 database__account_balance__account__position))
(declare-fun user_eq11 (us_rep3 us_rep3) Bool)
(declare-const dummy11 us_rep3)
(declare-datatypes () ((account_balance__ref (mk_account_balance__ref (account_balance__content us_rep3)))))
(define-fun account_balance__ref___projection ((a account_balance__ref)) us_rep3 (account_balance__content a))
(declare-datatypes () ((map__ref4 (mk_map__ref4 (map__content4 (Array Int us_rep3))))))
(declare-fun slide4 ((Array Int us_rep3) Int Int) (Array Int us_rep3))
(assert (forall ((a (Array Int us_rep3))) (forall ((first Int)) (! (= (slide4 a first first) a) :pattern ((slide4 a first first))))))
(assert (forall ((a (Array Int us_rep3))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide4 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide4 a old_first new_first) i))))))))
(define-fun bool_eq8 ((a (Array Int us_rep3)) (a__first Int) (a__last Int) (b (Array Int us_rep3)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_165 Int)) (=> (and (<= a__first temp___idx_165) (<= temp___idx_165 a__last)) (= (bool_eq7 (select a temp___idx_165) (select b (+ (- b__first a__first) temp___idx_165))) true)))) true false))
(assert (forall ((a (Array Int us_rep3)) (b (Array Int us_rep3))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq8 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_165 Int)) (=> (and (<= a__first temp___idx_165) (<= temp___idx_165 a__last)) (= (bool_eq7 (select a temp___idx_165) (select b (+ (- b__first a__first) temp___idx_165))) true))))))))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-fun balance (Int (Array Int us_rep1) (Array Int us_rep3)) us_rep)
(declare-fun balance__function_guard (us_rep Int (Array Int us_rep1) (Array Int us_rep3)) Bool)
(assert true)
(assert (forall ((account Int)) (forall ((database__availability__links (Array Int us_rep1))) (forall ((database__accounts_balance (Array Int us_rep3))) (! (=> (dynamic_invariant account true true true true) (= (balance account database__availability__links database__accounts_balance) (rec__database__account_balance__value (us_split_fields7 (select database__accounts_balance account))))) :pattern ((balance account database__availability__links database__accounts_balance)))))))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(define-fun dynamic_invariant1 ((temp___expr_241 Int) (temp___is_init_237 Bool) (temp___skip_constant_238 Bool) (temp___do_toplevel_239 Bool) (temp___do_typ_inv_240 Bool)) Bool (=> (or (= temp___is_init_237 true) (<= 0 200000)) (in_range3 temp___expr_241)))
(declare-sort name_len 0)
(declare-fun name_lenqtint (name_len) Int)
(assert (forall ((i name_len)) (and (<= 1 (name_lenqtint i)) (<= (name_lenqtint i) 255))))
(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq12 (name_len name_len) Bool)
(declare-const dummy12 name_len)
(declare-datatypes () ((name_len__ref (mk_name_len__ref (name_len__content name_len)))))
(define-fun name_len__ref___projection ((a name_len__ref)) name_len (name_len__content a))
(declare-const no_name (Array Int character))
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-sort num_position 0)
(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq13 (num_position num_position) Bool)
(declare-const dummy13 num_position)
(declare-datatypes () ((num_position__ref (mk_num_position__ref (num_position__content num_position)))))
(define-fun num_position__ref___projection ((a num_position__ref)) num_position (num_position__content a))
(declare-const no_id (Array Int num))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const customer (Array Int character))
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const id (Array Int num))
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const account Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const no_account_rec us_rep2)
(declare-const attr__ATTRIBUTE_ADDRESS9 Int)
(define-fun dynamic_invariant2 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range temp___expr_74)))
(assert true)
(assert (forall ((account1 Int)) (forall ((database__availability__links (Array Int us_rep1))) (! (= (= (is_available account1 database__availability__links) true) (= (rec__database__availability__account_link__available (us_split_fields3 (select database__availability__links account1))) true)) :pattern ((is_available account1 database__availability__links))))))
(declare-const rliteral ext_account_num)
(assert (= (ext_account_numqtint rliteral) 0))
(assert (= no_account_rec (mk___rep2 (mk___split_fields2 no_name no_id rliteral))))
(define-fun dynamic_invariant3 ((temp___expr_170 Int) (temp___is_init_166 Bool) (temp___skip_constant_167 Bool) (temp___do_toplevel_168 Bool) (temp___do_typ_inv_169 Bool)) Bool (=> (or (= temp___is_init_166 true) (<= 1 255)) (in_range6 temp___expr_170)))
(declare-fun identity__no_name__aggregate_def (Int) (Array Int character))
(assert (= no_name (identity__no_name__aggregate_def 32)))
(assert (forall ((temp___155 Int)) (=> (dynamic_invariant2 temp___155 true true true true) (forall ((temp___156 Int)) (= (to_rep (select (identity__no_name__aggregate_def temp___155) temp___156)) temp___155)))))
(define-fun dynamic_invariant4 ((temp___expr_187 Int) (temp___is_init_183 Bool) (temp___skip_constant_184 Bool) (temp___do_toplevel_185 Bool) (temp___do_typ_inv_186 Bool)) Bool (=> (or (= temp___is_init_183 true) (<= 0 999)) (in_range5 temp___expr_187)))
(define-fun dynamic_invariant5 ((temp___expr_194 Int) (temp___is_init_190 Bool) (temp___skip_constant_191 Bool) (temp___do_toplevel_192 Bool) (temp___do_typ_inv_193 Bool)) Bool (=> (or (= temp___is_init_190 true) (<= 0 2)) (in_range7 temp___expr_194)))
(declare-fun identity__no_id__aggregate_def (Int Int Int) (Array Int num))
(assert (= no_id (identity__no_id__aggregate_def 0 0 0)))
(declare-const rliteral1 num)
(assert (= (numqtint rliteral1) 0))
(assert (forall ((temp___159 Int) (temp___160 Int) (temp___161 Int)) (let ((temp___158 (identity__no_id__aggregate_def temp___159 temp___160 temp___161))) (=> (and (and (dynamic_invariant4 temp___159 true true true true) (dynamic_invariant4 temp___160 true true true true)) (dynamic_invariant4 temp___161 true true true true)) (and (and (= (select temp___158 0) rliteral1) (= (select temp___158 1) rliteral1)) (= (select temp___158 2) rliteral1))))))
(define-fun dynamic_invariant6 ((temp___expr_211 Int) (temp___is_init_207 Bool) (temp___skip_constant_208 Bool) (temp___do_toplevel_209 Bool) (temp___do_typ_inv_210 Bool)) Bool (=> (or (= temp___is_init_207 true) (<= 0 6)) (in_range1 temp___expr_211)))
(define-fun dynamic_invariant7 ((temp___expr_225 Int) (temp___is_init_221 Bool) (temp___skip_constant_222 Bool) (temp___do_toplevel_223 Bool) (temp___do_typ_inv_224 Bool)) Bool (=> (or (= temp___is_init_221 true) (<= 0 1000000)) (in_range2 temp___expr_225)))
(declare-const links (Array Int us_rep1))
(declare-const first_available Int)
(declare-const accounts (Array Int us_rep2))
(declare-const accounts_balance (Array Int us_rep3))
(assert (= (mk___rep2 (mk___split_fields2 no_name no_id rliteral)) no_account_rec))
(assert (in_range3 first_available))
(assert (in_range4 account))
(assert (and (= (existing account links) true) (and (= (belongs_to account customer id accounts) true) (= (is_empty (balance account links accounts_balance)) true))))
(assert (not (= (existing account links) true)))
(check-sat)
(exit)
