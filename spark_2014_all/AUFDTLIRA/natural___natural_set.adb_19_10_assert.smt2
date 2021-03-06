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
(declare-sort set_length 0)
(declare-fun set_lengthqtint (set_length) Int)
(assert (forall ((i set_length)) (and (<= 0 (set_lengthqtint i)) (<= (set_lengthqtint i) 10))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (set_length set_length) Bool)
(declare-const dummy1 set_length)
(declare-datatypes () ((set_length__ref (mk_set_length__ref (set_length__content set_length)))))
(define-fun set_length__ref___projection ((a set_length__ref)) set_length (set_length__content a))
(define-fun to_rep ((x set_length)) Int (set_lengthqtint x))
(declare-fun of_rep (Int) set_length)
(assert (forall ((x set_length)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x set_length)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort element_t 0)
(declare-fun element_tqtint (element_t) Int)
(assert (forall ((i element_t)) (and (<= (- 1) (element_tqtint i)) (<= (element_tqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= (- 1) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (element_t element_t) Bool)
(declare-const dummy2 element_t)
(declare-datatypes () ((element_t__ref (mk_element_t__ref (element_t__content element_t)))))
(define-fun element_t__ref___projection ((a element_t__ref)) element_t (element_t__content a))
(define-fun to_rep1 ((x element_t)) Int (element_tqtint x))
(declare-fun of_rep1 (Int) element_t)
(assert (forall ((x element_t)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x element_t)) (! (in_range3 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range3 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int element_t))))))
(declare-fun slide ((Array Int element_t) Int Int) (Array Int element_t))
(assert (forall ((a (Array Int element_t))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int element_t))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int element_t)) (a__first Int) (a__last Int) (b (Array Int element_t)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154))))))) true false))
(assert (forall ((a (Array Int element_t)) (b (Array Int element_t))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_154 Int)) (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last)) (= (to_rep1 (select a temp___idx_154)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_154)))))))))))
(declare-const dummy3 (Array Int element_t))
(declare-const value__size Int)
(declare-fun object__size ((Array Int element_t)) Int)
(declare-const value__component__size Int)
(declare-fun object__component__size ((Array Int element_t)) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment ((Array Int element_t)) Int)
(assert (<= 0 value__size))
(assert (forall ((a (Array Int element_t))) (<= 0 (object__size a))))
(assert (<= 0 value__component__size))
(assert (forall ((a (Array Int element_t))) (<= 0 (object__component__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a (Array Int element_t))) (<= 0 (object__alignment a))))
(declare-fun user_eq3 ((Array Int element_t) (Array Int element_t)) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__natural_set__t__len set_length) (rec__natural_set__t__m (Array Int element_t))))))
(define-fun us_split_fields_Len__projection ((a us_split_fields)) set_length (rec__natural_set__t__len a))
(define-fun us_split_fields_M__projection ((a us_split_fields)) (Array Int element_t) (rec__natural_set__t__m a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep (rec__natural_set__t__len (us_split_fields1 a))) (to_rep (rec__natural_set__t__len (us_split_fields1 b)))) (= (bool_eq (rec__natural_set__t__m (us_split_fields1 a)) 1 10 (rec__natural_set__t__m (us_split_fields1 b)) 1 10) true)) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const natural_set__t__len__first__bit Int)
(declare-const natural_set__t__len__last__bit Int)
(declare-const natural_set__t__len__position Int)
(assert (<= 0 natural_set__t__len__first__bit))
(assert (< natural_set__t__len__first__bit natural_set__t__len__last__bit))
(assert (<= 0 natural_set__t__len__position))
(declare-const natural_set__t__m__first__bit Int)
(declare-const natural_set__t__m__last__bit Int)
(declare-const natural_set__t__m__position Int)
(assert (<= 0 natural_set__t__m__first__bit))
(assert (< natural_set__t__m__first__bit natural_set__t__m__last__bit))
(assert (<= 0 natural_set__t__m__position))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))
(declare-fun valid (us_rep) Bool)
(declare-fun valid__function_guard (Bool us_rep) Bool)
(assert true)
(assert (forall ((s us_rep)) (! (= (= (valid s) true) (and (forall ((i Int)) (=> (and (<= 1 i) (<= i (to_rep (rec__natural_set__t__len (us_split_fields1 s))))) (in_range1 (to_rep1 (let ((temp___202 (rec__natural_set__t__m (us_split_fields1 s)))) (select temp___202 i)))))) (forall ((i Int)) (=> (and (<= (+ (to_rep (rec__natural_set__t__len (us_split_fields1 s))) 1) i) (<= i 10)) (= (to_rep1 (let ((temp___203 (rec__natural_set__t__m (us_split_fields1 s)))) (select temp___203 i))) (- 1)))))) :pattern ((valid s)))))
(declare-fun full (us_rep) Bool)
(declare-fun full__function_guard (Bool us_rep) Bool)
(declare-fun members (us_rep) Int)
(declare-fun members__function_guard (Int us_rep) Bool)
(assert true)
(assert (forall ((s us_rep)) (! (= (= (full s) true) (= (members s) 10)) :pattern ((full s)))))
(declare-fun contains (us_rep Int) Bool)
(declare-fun contains__function_guard (Bool us_rep Int) Bool)
(assert true)
(assert (forall ((s us_rep)) (forall ((value Int)) (! (= (= (contains s value) true) (exists ((i Int)) (and (and (<= 1 i) (<= i (to_rep (rec__natural_set__t__len (us_split_fields1 s))))) (= (to_rep1 (let ((temp___212 (rec__natural_set__t__m (us_split_fields1 s)))) (select temp___212 i))) value)))) :pattern ((contains s value))))))
(declare-sort set_index 0)
(declare-fun set_indexqtint (set_index) Int)
(assert (forall ((i set_index)) (and (<= 1 (set_indexqtint i)) (<= (set_indexqtint i) 10))))
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 10)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (set_index set_index) Bool)
(declare-const dummy5 set_index)
(declare-datatypes () ((set_index__ref (mk_set_index__ref (set_index__content set_index)))))
(define-fun set_index__ref___projection ((a set_index__ref)) set_index (set_index__content a))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const value Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(assert (forall ((s us_rep)) (! (let ((result (members s))) (and (and (<= 0 result) (<= result 10)) (dynamic_invariant result true false true true))) :pattern ((members s)))))
(assert (forall ((s us_rep)) (! (= (members s) (to_rep (rec__natural_set__t__len (us_split_fields1 s)))) :pattern ((members s)))))
(define-fun dynamic_invariant1 ((temp___expr_173 Int) (temp___is_init_169 Bool) (temp___skip_constant_170 Bool) (temp___do_toplevel_171 Bool) (temp___do_typ_inv_172 Bool)) Bool (=> (or (= temp___is_init_169 true) (<= (- 1) 2147483647)) (in_range3 temp___expr_173)))
(define-fun dynamic_invariant2 ((temp___expr_159 Int) (temp___is_init_155 Bool) (temp___skip_constant_156 Bool) (temp___do_toplevel_157 Bool) (temp___do_typ_inv_158 Bool)) Bool (=> (or (= temp___is_init_155 true) (<= 0 10)) (in_range2 temp___expr_159)))
(define-fun dynamic_invariant3 ((temp___expr_166 Int) (temp___is_init_162 Bool) (temp___skip_constant_163 Bool) (temp___do_toplevel_164 Bool) (temp___do_typ_inv_165 Bool)) Bool (=> (or (= temp___is_init_162 true) (<= 1 10)) (in_range4 temp___expr_166)))
(declare-const s__split_fields set_length)
(declare-const s__split_fields1 (Array Int element_t))
(declare-const o Bool)
(declare-const o1 Int)
(declare-const o2 set_length)
(declare-const o3 set_length)
(declare-const o4 (Array Int element_t))
(declare-const temp___233 set_length)
(declare-const temp___2331 (Array Int element_t))
(declare-const o5 element_t)
(declare-const o6 Int)
(declare-const o7 (Array Int element_t))
(declare-const o8 set_length)
(declare-const o9 (Array Int element_t))
(declare-const temp___237 set_length)
(declare-const temp___2371 (Array Int element_t))
(declare-const result Bool)
(declare-const result1 set_length)
(declare-const result2 (Array Int element_t))
(declare-const s__split_fields2 set_length)
(declare-const s__split_fields3 (Array Int element_t))
(declare-const result3 set_length)
(declare-const result4 (Array Int element_t))
(declare-const s__split_fields4 set_length)
(declare-const s__split_fields5 (Array Int element_t))
(assert (in_range1 value))
(assert (and (= (valid (mk___rep (mk___split_fields s__split_fields s__split_fields1))) true) (not (= (full (mk___rep (mk___split_fields s__split_fields s__split_fields1))) true))))
(assert (and (= o (contains (mk___rep (mk___split_fields s__split_fields s__split_fields1)) value)) (= (= o true) (exists ((i Int)) (and (and (<= 1 i) (<= i (to_rep s__split_fields))) (= (to_rep1 (select s__split_fields1 i)) value))))))
(assert (= result (ite (not (= o true)) true false)))
(assert (= result true))
(assert (and (= o1 (+ (to_rep s__split_fields) 1)) (in_range2 (+ (to_rep s__split_fields) 1))))
(assert (= (to_rep o2) o1))
(assert (= o2 o3))
(assert (= s__split_fields1 o4))
(assert (= temp___233 o3))
(assert (= temp___2331 o4))
(assert (= (mk___split_fields__ref (mk___split_fields result1 result2)) (mk___split_fields__ref (mk___split_fields s__split_fields s__split_fields1))))
(assert (= temp___233 s__split_fields2))
(assert (= temp___2331 s__split_fields3))
(assert (= (to_rep1 o5) value))
(assert (and (<= 1 (to_rep s__split_fields2)) (<= (to_rep s__split_fields2) 10)))
(assert (= o6 (to_rep s__split_fields2)))
(assert (= o7 (store s__split_fields3 o6 o5)))
(assert (= s__split_fields2 o8))
(assert (= o7 o9))
(assert (= temp___237 o8))
(assert (= temp___2371 o9))
(assert (= result3 s__split_fields2))
(assert (= result4 s__split_fields3))
(assert (= temp___237 s__split_fields4))
(assert (= temp___2371 s__split_fields5))
(assert (not (= (contains (mk___rep (mk___split_fields s__split_fields4 s__split_fields5)) value) true)))
(check-sat)
(exit)
