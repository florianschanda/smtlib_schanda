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
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (positive positive) Bool)
(declare-const dummy1 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(declare-sort character 0)
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq2 (character character) Bool)
(declare-const dummy2 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(define-fun to_rep1 ((x integer)) Int (integerqtint x))
(declare-fun of_rep1 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range f) (=> (in_range l) (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range low) (and (in_range high) (=> (<= low high) (and (in_range1 low) (in_range1 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int character)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))
(define-fun of_array ((a (Array Int character)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep1 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep1 (last (rt a))))
(define-fun length ((a us_t)) Int (ite (<= (first1 a) (last1 a)) (+ (- (last1 a) (first1 a)) 1) 0))
(declare-const value__size Int)
(declare-fun object__size ((Array Int character)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int character)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int character)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment a))))
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep1 (first (rt x))) (to_rep1 (last (rt x))) (elts y) (to_rep1 (first (rt y))) (to_rep1 (last (rt y)))))
(declare-fun user_eq3 (us_t us_t) Bool)
(declare-const dummy3 us_t)
(declare-fun to_string (us_image) us_t)
(declare-fun from_string (us_t) us_image)
(declare-datatypes () ((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__unit1__t1__c1 integer) (rec__ext__ us_private)))))
(define-fun us_split_fields_C1__projection ((a us_split_fields)) integer (rec__unit1__t1__c1 a))
(define-fun us_split_fields___projection ((a us_split_fields)) us_private (rec__ext__ a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields) (attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___2__projection ((a us_rep)) Int (attr__tag a))
(define-fun bool_eq2 ((a us_rep) (b us_rep)) Bool (ite (= (to_rep1 (rec__unit1__t1__c1 (us_split_fields1 a))) (to_rep1 (rec__unit1__t1__c1 (us_split_fields1 b)))) true false))
(declare-fun us_dispatch_eq (us_rep us_rep) Bool)
(declare-const us_tag Int)
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const unit1__t1__c1__first__bit Int)
(declare-const unit1__t1__c1__last__bit Int)
(declare-const unit1__t1__c1__position Int)
(assert (<= 0 unit1__t1__c1__first__bit))
(assert (< unit1__t1__c1__first__bit unit1__t1__c1__last__bit))
(assert (<= 0 unit1__t1__c1__position))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((t1__ref (mk_t1__ref (t1__content us_rep)))))
(define-fun t1__ref___projection ((a t1__ref)) us_rep (t1__content a))
(declare-fun is_zero (us_rep) Bool)
(declare-fun is_zero__function_guard (Bool us_rep) Bool)
(declare-fun is_zero1 (Int us_rep) Bool)
(declare-fun is_zero__function_guard1 (Bool Int us_rep) Bool)
(define-fun in_range3 ((x Int)) Bool (or (= x 0) (= x 1)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Bool) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Bool)
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__unit2__t2__c2 integer) (rec__unit1__t1__c11 integer) (rec__ext__1 us_private)))))
(define-fun us_split_fields_C2__projection ((a us_split_fields2)) integer (rec__unit2__t2__c2 a))
(define-fun us_split_fields_C1__2__projection ((a us_split_fields2)) integer (rec__unit1__t1__c11 a))
(define-fun us_split_fields___2__projection ((a us_split_fields2)) us_private (rec__ext__1 a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2) (attr__tag1 Int)))))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun us_rep___4__projection ((a us_rep1)) Int (attr__tag1 a))
(declare-fun hide_ext__ (integer us_private) us_private)
(declare-fun extract__c2 (us_private) integer)
(assert (forall ((c2 integer)) (forall ((rec__ext__2 us_private)) (= (extract__c2 (hide_ext__ c2 rec__ext__2)) c2))))
(declare-fun extract__ext__ (us_private) us_private)
(define-fun to_base ((a us_rep1)) us_rep (mk___rep (mk___split_fields (rec__unit1__t1__c11 (us_split_fields3 a)) (hide_ext__ (rec__unit2__t2__c2 (us_split_fields3 a)) (rec__ext__1 (us_split_fields3 a)))) (attr__tag1 a)))
(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1 (mk___split_fields1 (extract__c2 (rec__ext__ (us_split_fields1 r))) (rec__unit1__t1__c1 (us_split_fields1 r)) (extract__ext__ (rec__ext__ (us_split_fields1 r)))) (attr__tag r)))
(define-fun bool_eq3 ((a us_rep1) (b us_rep1)) Bool (ite (and (= (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 a))) (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 b)))) (= (to_rep1 (rec__unit1__t1__c11 (us_split_fields3 a))) (to_rep1 (rec__unit1__t1__c11 (us_split_fields3 b))))) true false))
(declare-const us_tag1 Int)
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep1) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep1) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))
(declare-const unit2__t2__c2__first__bit Int)
(declare-const unit2__t2__c2__last__bit Int)
(declare-const unit2__t2__c2__position Int)
(assert (<= 0 unit2__t2__c2__first__bit))
(assert (< unit2__t2__c2__first__bit unit2__t2__c2__last__bit))
(assert (<= 0 unit2__t2__c2__position))
(declare-const unit1__t1__c1__first__bit1 Int)
(declare-const unit1__t1__c1__last__bit1 Int)
(declare-const unit1__t1__c1__position1 Int)
(assert (<= 0 unit1__t1__c1__first__bit1))
(assert (< unit1__t1__c1__first__bit1 unit1__t1__c1__last__bit1))
(assert (<= 0 unit1__t1__c1__position1))
(declare-fun user_eq5 (us_rep1 us_rep1) Bool)
(declare-const dummy5 us_rep1)
(declare-datatypes () ((t2__ref (mk_t2__ref (t2__content us_rep1)))))
(define-fun t2__ref___projection ((a t2__ref)) us_rep1 (t2__content a))
(declare-fun is_zero2 (us_rep1) Bool)
(declare-fun is_zero__function_guard2 (Bool us_rep1) Bool)
(declare-fun is_zero3 (Int us_rep1) Bool)
(declare-fun is_zero__function_guard3 (Bool Int us_rep1) Bool)
(define-fun default_initial_assumption ((temp___expr_178 us_rep) (temp___skip_top_level_179 Bool)) Bool (= (attr__tag temp___expr_178) us_tag))
(assert true)
(assert true)
(assert (forall ((x us_rep)) (! (= (ite (is_zero x) 1 0) (ite (is_zero1 us_tag x) 1 0)) :pattern ((is_zero1 us_tag x)))))
(assert (forall ((x us_rep)) (! (= (ite (is_zero2 (of_base x)) 1 0) (ite (is_zero1 us_tag1 x) 1 0)) :pattern ((is_zero1 us_tag1 x)))))
(assert (forall ((x us_rep)) (! (= (= (is_zero x) true) (= (to_rep1 (rec__unit1__t1__c1 (us_split_fields1 x))) 0)) :pattern ((is_zero x)))))
(declare-fun create__specific_post (Int us_split_fields Int us_split_fields) Bool)
(assert (forall ((unit1__create__x__fields us_split_fields) (unit1__create__x__old__fields us_split_fields)) (forall ((x__attr__tag Int)) (! (=> (create__specific_post us_tag unit1__create__x__fields x__attr__tag unit1__create__x__old__fields) (= (to_rep1 (rec__unit1__t1__c1 (us_split_fields1 (mk___rep unit1__create__x__fields x__attr__tag)))) 0)) :pattern ((create__specific_post us_tag unit1__create__x__fields x__attr__tag unit1__create__x__old__fields))))))
(assert (forall ((unit1__create__x__fields us_split_fields) (unit1__create__x__old__fields us_split_fields)) (forall ((x__attr__tag Int)) (! (=> (create__specific_post us_tag1 unit1__create__x__fields x__attr__tag unit1__create__x__old__fields) (let ((temp___x_187 (of_base (mk___rep unit1__create__x__fields x__attr__tag)))) (and (= (to_rep1 (rec__unit1__t1__c11 (us_split_fields3 temp___x_187))) 0) (= (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 temp___x_187))) 0)))) :pattern ((create__specific_post us_tag1 unit1__create__x__fields x__attr__tag unit1__create__x__old__fields))))))
(declare-fun is_max (us_rep) Bool)
(declare-fun is_max__function_guard (Bool us_rep) Bool)
(declare-fun is_max1 (Int us_rep) Bool)
(declare-fun is_max__function_guard1 (Bool Int us_rep) Bool)
(declare-fun is_max2 (us_rep1) Bool)
(declare-fun is_max__function_guard2 (Bool us_rep1) Bool)
(declare-fun is_max3 (Int us_rep1) Bool)
(declare-fun is_max__function_guard3 (Bool Int us_rep1) Bool)
(assert true)
(assert true)
(assert (forall ((x us_rep)) (! (= (ite (is_max x) 1 0) (ite (is_max1 us_tag x) 1 0)) :pattern ((is_max1 us_tag x)))))
(assert (forall ((x us_rep)) (! (= (ite (is_max2 (of_base x)) 1 0) (ite (is_max1 us_tag1 x) 1 0)) :pattern ((is_max1 us_tag1 x)))))
(assert (forall ((x us_rep)) (! (= (= (is_max x) true) (= (to_rep1 (rec__unit1__t1__c1 (us_split_fields1 x))) 2147483647)) :pattern ((is_max x)))))
(declare-fun next (us_rep) us_rep)
(declare-fun next__function_guard (us_rep us_rep) Bool)
(declare-fun next1 (Int us_rep) us_rep)
(declare-fun next__function_guard1 (us_rep Int us_rep) Bool)
(declare-fun bump__specific_post (Int us_split_fields Int us_split_fields) Bool)
(assert (forall ((unit1__bump__x__fields us_split_fields) (unit1__bump__x__old__fields us_split_fields)) (forall ((x__attr__tag Int)) (! (=> (bump__specific_post us_tag unit1__bump__x__fields x__attr__tag unit1__bump__x__old__fields) (= (to_rep1 (rec__unit1__t1__c1 (us_split_fields1 (mk___rep unit1__bump__x__fields x__attr__tag)))) (+ (to_rep1 (rec__unit1__t1__c1 (us_split_fields1 (mk___rep unit1__bump__x__old__fields x__attr__tag)))) 1))) :pattern ((bump__specific_post us_tag unit1__bump__x__fields x__attr__tag unit1__bump__x__old__fields))))))
(assert (forall ((unit1__bump__x__fields us_split_fields) (unit1__bump__x__old__fields us_split_fields)) (forall ((x__attr__tag Int)) (! (=> (bump__specific_post us_tag1 unit1__bump__x__fields x__attr__tag unit1__bump__x__old__fields) (let ((temp___x_192 (of_base (mk___rep unit1__bump__x__old__fields x__attr__tag)))) (let ((temp___x_1921 (of_base (mk___rep unit1__bump__x__fields x__attr__tag)))) (and (= (to_rep1 (rec__unit1__t1__c11 (us_split_fields3 temp___x_1921))) (+ (to_rep1 (rec__unit1__t1__c11 (us_split_fields3 temp___x_192))) 1)) (= (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 temp___x_1921))) (+ (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 temp___x_192))) 1)))))) :pattern ((bump__specific_post us_tag1 unit1__bump__x__fields x__attr__tag unit1__bump__x__old__fields))))))
(define-fun default_initial_assumption1 ((temp___expr_200 us_rep1) (temp___skip_top_level_201 Bool)) Bool (= (attr__tag1 temp___expr_200) us_tag1))
(assert true)
(assert true)
(assert (forall ((x us_rep1)) (! (= (ite (is_zero2 x) 1 0) (ite (is_zero3 us_tag1 x) 1 0)) :pattern ((is_zero3 us_tag1 x)))))
(assert (forall ((x us_rep1)) (! (= (= (is_zero2 x) true) (and (= (is_zero (to_base x)) true) (= (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 x))) 0))) :pattern ((is_zero2 x)))))
(declare-fun create__specific_post1 (Int us_split_fields2 Int us_split_fields2) Bool)
(assert (forall ((unit2__create__x__fields us_split_fields2) (unit2__create__x__old__fields us_split_fields2)) (forall ((x__attr__tag Int)) (! (=> (create__specific_post1 us_tag1 unit2__create__x__fields x__attr__tag unit2__create__x__old__fields) (and (= (to_rep1 (rec__unit1__t1__c11 (us_split_fields3 (mk___rep1 unit2__create__x__fields x__attr__tag)))) 0) (= (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 (mk___rep1 unit2__create__x__fields x__attr__tag)))) 0))) :pattern ((create__specific_post1 us_tag1 unit2__create__x__fields x__attr__tag unit2__create__x__old__fields))))))
(assert true)
(assert true)
(assert (forall ((x us_rep1)) (! (= (ite (is_max2 x) 1 0) (ite (is_max3 us_tag1 x) 1 0)) :pattern ((is_max3 us_tag1 x)))))
(assert (forall ((x us_rep1)) (! (= (= (is_max2 x) true) (or (= (is_max (to_base x)) true) (= (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 x))) 2147483647))) :pattern ((is_max2 x)))))
(declare-fun next2 (us_rep1) us_rep1)
(declare-fun next__function_guard2 (us_rep1 us_rep1) Bool)
(declare-fun next3 (Int us_rep1) us_rep1)
(declare-fun next__function_guard3 (us_rep1 Int us_rep1) Bool)
(declare-fun bump__specific_post1 (Int us_split_fields2 Int us_split_fields2) Bool)
(assert (forall ((unit2__bump__x__fields us_split_fields2) (unit2__bump__x__old__fields us_split_fields2)) (forall ((x__attr__tag Int)) (! (=> (bump__specific_post1 us_tag1 unit2__bump__x__fields x__attr__tag unit2__bump__x__old__fields) (and (= (to_rep1 (rec__unit1__t1__c11 (us_split_fields3 (mk___rep1 unit2__bump__x__fields x__attr__tag)))) (+ (to_rep1 (rec__unit1__t1__c11 (us_split_fields3 (mk___rep1 unit2__bump__x__old__fields x__attr__tag)))) 1)) (= (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 (mk___rep1 unit2__bump__x__fields x__attr__tag)))) (+ (to_rep1 (rec__unit2__t2__c2 (us_split_fields3 (mk___rep1 unit2__bump__x__old__fields x__attr__tag)))) 1)))) :pattern ((bump__specific_post1 us_tag1 unit2__bump__x__fields x__attr__tag unit2__bump__x__old__fields))))))
(declare-const x1__attr__tag Int)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const x2__attr__tag Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-fun temp___String_Literal_614 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_614 us_void_param) 1)) 83) (= (to_rep (select (temp___String_Literal_614 us_void_param) 2)) 117)) (= (to_rep (select (temp___String_Literal_614 us_void_param) 3)) 99)) (= (to_rep (select (temp___String_Literal_614 us_void_param) 4)) 99)) (= (to_rep (select (temp___String_Literal_614 us_void_param) 5)) 101)) (= (to_rep (select (temp___String_Literal_614 us_void_param) 6)) 115)) (= (to_rep (select (temp___String_Literal_614 us_void_param) 7)) 115)) (= (to_rep (select (temp___String_Literal_614 us_void_param) 8)) 33)) :pattern ((temp___String_Literal_614 us_void_param)))))
(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range temp___expr_18)))
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range1 temp___expr_46)))
(define-fun dynamic_invariant2 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range2 temp___expr_74)))
(define-fun dynamic_invariant3 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(assert (forall ((x us_rep)) (! (= (next x) (next1 us_tag x)) :pattern ((next1 us_tag x)))))
(assert (forall ((x us_rep)) (! (= (to_base (next2 (of_base x))) (next1 us_tag1 x)) :pattern ((next1 us_tag1 x)))))
(assert (forall ((x us_rep1)) (! (= (next2 x) (next3 us_tag1 x)) :pattern ((next3 us_tag1 x)))))
(declare-const x1__split_fields integer)
(declare-const x1__split_fields1 us_private)
(declare-const x1__split_fields2 integer)
(declare-const x1__split_fields3 us_private)
(declare-const x2__split_fields integer)
(declare-const x2__split_fields1 integer)
(declare-const x2__split_fields2 us_private)
(assert (= x1__attr__tag us_tag))
(assert (= x2__attr__tag us_tag1))
(assert (= (to_rep1 x1__split_fields) 0))
(assert (= (is_zero (mk___rep (mk___split_fields x1__split_fields x1__split_fields1) x1__attr__tag)) true))
(assert (= (to_rep1 x1__split_fields2) (+ (to_rep1 x1__split_fields) 1)))
(assert (not (= (is_max (mk___rep (mk___split_fields x1__split_fields2 x1__split_fields3) x1__attr__tag)) true)))
(assert (and (= (to_rep1 x2__split_fields1) 0) (= (to_rep1 x2__split_fields) 0)))
(assert (not (= (is_zero2 (mk___rep1 (mk___split_fields1 x2__split_fields x2__split_fields1 x2__split_fields2) x2__attr__tag)) true)))
(check-sat)
(exit)
