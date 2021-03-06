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
(declare-sort character 0)
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (character character) Bool)
(declare-const dummy character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep (select a temp___idx_91)) (to_rep (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(declare-sort datalengtht 0)
(declare-fun datalengthtqtint (datalengtht) Int)
(assert (forall ((i datalengtht)) (and (<= 0 (datalengthtqtint i)) (<= (datalengthtqtint i) 78))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 78)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (datalengtht datalengtht) Bool)
(declare-const dummy1 datalengtht)
(declare-datatypes () ((datalengtht__ref (mk_datalengtht__ref (datalengtht__content datalengtht)))))
(define-fun datalengtht__ref___projection ((a datalengtht__ref)) datalengtht (datalengtht__content a))
(define-fun to_rep1 ((x datalengtht)) Int (datalengthtqtint x))
(declare-fun of_rep1 (Int) datalengtht)
(assert (forall ((x datalengtht)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x datalengtht)) (! (in_range2 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-sort datai 0)
(declare-fun dataiqtint (datai) Int)
(assert (forall ((i datai)) (and (<= 1 (dataiqtint i)) (<= (dataiqtint i) 78))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 78)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (datai datai) Bool)
(declare-const dummy2 datai)
(declare-datatypes () ((datai__ref (mk_datai__ref (datai__content datai)))))
(define-fun datai__ref___projection ((a datai__ref)) datai (datai__content a))
(declare-const dummy3 (Array Int character))
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
(declare-fun user_eq3 ((Array Int character) (Array Int character)) Bool)
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__keyboard__datat__length datalengtht) (rec__keyboard__datat__text (Array Int character))))))
(define-fun us_split_fields_Length__projection ((a us_split_fields)) datalengtht (rec__keyboard__datat__length a))
(define-fun us_split_fields_Text__projection ((a us_split_fields)) (Array Int character) (rec__keyboard__datat__text a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_fields1 us_split_fields)))))
(define-fun us_rep___2__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep1 (rec__keyboard__datat__length (us_split_fields1 a))) (to_rep1 (rec__keyboard__datat__length (us_split_fields1 b)))) (= (bool_eq (rec__keyboard__datat__text (us_split_fields1 a)) 1 78 (rec__keyboard__datat__text (us_split_fields1 b)) 1 78) true)) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const keyboard__datat__length__first__bit Int)
(declare-const keyboard__datat__length__last__bit Int)
(declare-const keyboard__datat__length__position Int)
(assert (<= 0 keyboard__datat__length__first__bit))
(assert (< keyboard__datat__length__first__bit keyboard__datat__length__last__bit))
(assert (<= 0 keyboard__datat__length__position))
(declare-const keyboard__datat__text__first__bit Int)
(declare-const keyboard__datat__text__last__bit Int)
(declare-const keyboard__datat__text__position Int)
(assert (<= 0 keyboard__datat__text__first__bit))
(assert (< keyboard__datat__text__first__bit keyboard__datat__text__last__bit))
(assert (<= 0 keyboard__datat__text__position))
(declare-fun user_eq4 (us_rep us_rep) Bool)
(declare-const dummy4 us_rep)
(declare-datatypes () ((datat__ref (mk_datat__ref (datat__content us_rep)))))
(define-fun datat__ref___projection ((a datat__ref)) us_rep (datat__content a))
(declare-sort opt 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 1 x) (<= x 4)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq5 (opt opt) Bool)
(declare-const dummy5 opt)
(declare-datatypes () ((opt__ref (mk_opt__ref (opt__content opt)))))
(define-fun opt__ref___projection ((a opt__ref)) opt (opt__content a))
(define-fun dynamic_invariant ((temp___expr_479 Int) (temp___is_init_475 Bool) (temp___skip_constant_476 Bool) (temp___do_toplevel_477 Bool) (temp___do_typ_inv_478 Bool)) Bool (=> (or (= temp___is_init_475 true) (<= 1 4)) (in_range4 temp___expr_479)))
(declare-const keyedop us_rep)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const op Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-sort datalengtht1 0)
(declare-fun datalengthtqtint1 (datalengtht1) Int)
(assert (forall ((i datalengtht1)) (and (<= 0 (datalengthtqtint1 i)) (<= (datalengthtqtint1 i) 18))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 18)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq6 (datalengtht1 datalengtht1) Bool)
(declare-const dummy6 datalengtht1)
(declare-datatypes () ((datalengtht__ref1 (mk_datalengtht__ref1 (datalengtht__content1 datalengtht1)))))
(define-fun datalengtht__ref___2__projection ((a datalengtht__ref1)) datalengtht1 (datalengtht__content1 a))
(define-fun to_rep2 ((x datalengtht1)) Int (datalengthtqtint1 x))
(declare-fun of_rep2 (Int) datalengtht1)
(assert (forall ((x datalengtht1)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x datalengtht1)) (! (in_range5 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-sort datai1 0)
(declare-fun dataiqtint1 (datai1) Int)
(assert (forall ((i datai1)) (and (<= 1 (dataiqtint1 i)) (<= (dataiqtint1 i) 18))))
(define-fun in_range6 ((x Int)) Bool (and (<= 1 x) (<= x 18)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq7 (datai1 datai1) Bool)
(declare-const dummy7 datai1)
(declare-datatypes () ((datai__ref1 (mk_datai__ref1 (datai__content1 datai1)))))
(define-fun datai__ref___2__projection ((a datai__ref1)) datai1 (datai__content1 a))
(define-fun to_rep3 ((x datai1)) Int (dataiqtint1 x))
(declare-fun of_rep3 (Int) datai1)
(assert (forall ((x datai1)) (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)))))
(assert (forall ((x datai1)) (! (in_range6 (to_rep3 x)) :pattern ((to_rep3 x)))))
(assert (forall ((x Int)) (! (=> (in_range6 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3 (of_rep3 x))))))
(declare-const dummy8 (Array Int character))
(declare-const value__size2 Int)
(declare-fun object__size2 ((Array Int character)) Int)
(declare-const value__component__size1 Int)
(declare-fun object__component__size1 ((Array Int character)) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 ((Array Int character)) Int)
(assert (<= 0 value__size2))
(assert (forall ((a (Array Int character))) (<= 0 (object__size2 a))))
(assert (<= 0 value__component__size1))
(assert (forall ((a (Array Int character))) (<= 0 (object__component__size1 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a (Array Int character))) (<= 0 (object__alignment2 a))))
(declare-fun user_eq8 ((Array Int character) (Array Int character)) Bool)
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__admin__datat__length datalengtht1) (rec__admin__datat__minmatchlength datai1) (rec__admin__datat__text (Array Int character))))))
(define-fun us_split_fields_Length__2__projection ((a us_split_fields2)) datalengtht1 (rec__admin__datat__length a))
(define-fun us_split_fields_MinMatchLength__projection ((a us_split_fields2)) datai1 (rec__admin__datat__minmatchlength a))
(define-fun us_split_fields_Text__2__projection ((a us_split_fields2)) (Array Int character) (rec__admin__datat__text a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___4__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___4__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq2 ((a us_rep1) (b us_rep1)) Bool (ite (and (and (= (to_rep2 (rec__admin__datat__length (us_split_fields3 a))) (to_rep2 (rec__admin__datat__length (us_split_fields3 b)))) (= (to_rep3 (rec__admin__datat__minmatchlength (us_split_fields3 a))) (to_rep3 (rec__admin__datat__minmatchlength (us_split_fields3 b))))) (= (bool_eq (rec__admin__datat__text (us_split_fields3 a)) 1 18 (rec__admin__datat__text (us_split_fields3 b)) 1 18) true)) true false))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep1) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep1) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep1)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment3 a))))
(declare-const admin__datat__length__first__bit Int)
(declare-const admin__datat__length__last__bit Int)
(declare-const admin__datat__length__position Int)
(assert (<= 0 admin__datat__length__first__bit))
(assert (< admin__datat__length__first__bit admin__datat__length__last__bit))
(assert (<= 0 admin__datat__length__position))
(declare-const admin__datat__minmatchlength__first__bit Int)
(declare-const admin__datat__minmatchlength__last__bit Int)
(declare-const admin__datat__minmatchlength__position Int)
(assert (<= 0 admin__datat__minmatchlength__first__bit))
(assert (< admin__datat__minmatchlength__first__bit admin__datat__minmatchlength__last__bit))
(assert (<= 0 admin__datat__minmatchlength__position))
(declare-const admin__datat__text__first__bit Int)
(declare-const admin__datat__text__last__bit Int)
(declare-const admin__datat__text__position Int)
(assert (<= 0 admin__datat__text__first__bit))
(assert (< admin__datat__text__first__bit admin__datat__text__last__bit))
(assert (<= 0 admin__datat__text__position))
(declare-fun user_eq9 (us_rep1 us_rep1) Bool)
(declare-const dummy9 us_rep1)
(declare-datatypes () ((datat__ref1 (mk_datat__ref1 (datat__content1 us_rep1)))))
(define-fun datat__ref___2__projection ((a datat__ref1)) us_rep1 (datat__content1 a))
(declare-datatypes () ((map__ref1 (mk_map__ref1 (map__content1 (Array Int us_rep1))))))
(declare-fun slide1 ((Array Int us_rep1) Int Int) (Array Int us_rep1))
(assert (forall ((a (Array Int us_rep1))) (forall ((first Int)) (! (= (slide1 a first first) a) :pattern ((slide1 a first first))))))
(assert (forall ((a (Array Int us_rep1))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide1 a old_first new_first) i))))))))
(define-fun bool_eq3 ((a (Array Int us_rep1)) (a__first Int) (a__last Int) (b (Array Int us_rep1)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_178 Int)) (=> (and (<= a__first temp___idx_178) (<= temp___idx_178 a__last)) (= (bool_eq2 (select a temp___idx_178) (select b (+ (- b__first a__first) temp___idx_178))) true)))) true false))
(assert (forall ((a (Array Int us_rep1)) (b (Array Int us_rep1))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq3 b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_178 Int)) (=> (and (<= a__first temp___idx_178) (<= temp___idx_178 a__last)) (= (bool_eq2 (select a temp___idx_178) (select b (+ (- b__first a__first) temp___idx_178))) true))))))))
(declare-const optokeyed (Array Int us_rep1))
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-fun admin__optokeyed__aggregate_def (us_rep1 us_rep1 us_rep1 us_rep1) (Array Int us_rep1))
(declare-fun temp___String_Literal_185 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_185 us_void_param) 1)) 65) (= (to_rep (select (temp___String_Literal_185 us_void_param) 2)) 82)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 3)) 67)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 4)) 72)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 5)) 73)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 6)) 86)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 7)) 69)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 8)) 32)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 9)) 76)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 10)) 79)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 11)) 71)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 12)) 32)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 13)) 32)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 15)) 32)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 16)) 32)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 17)) 32)) (= (to_rep (select (temp___String_Literal_185 us_void_param) 18)) 32)) :pattern ((temp___String_Literal_185 us_void_param)))))
(declare-fun temp___String_Literal_186 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_186 us_void_param) 1)) 85) (= (to_rep (select (temp___String_Literal_186 us_void_param) 2)) 80)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 3)) 68)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 4)) 65)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 5)) 84)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 6)) 69)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 7)) 32)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 8)) 67)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 9)) 79)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 10)) 78)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 11)) 70)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 12)) 73)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 13)) 71)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 15)) 68)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 16)) 65)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 17)) 84)) (= (to_rep (select (temp___String_Literal_186 us_void_param) 18)) 65)) :pattern ((temp___String_Literal_186 us_void_param)))))
(declare-fun temp___String_Literal_187 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_187 us_void_param) 1)) 79) (= (to_rep (select (temp___String_Literal_187 us_void_param) 2)) 86)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 3)) 69)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 4)) 82)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 5)) 82)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 6)) 73)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 7)) 68)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 8)) 69)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 9)) 32)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 10)) 76)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 11)) 79)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 12)) 67)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 13)) 75)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 15)) 32)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 16)) 32)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 17)) 32)) (= (to_rep (select (temp___String_Literal_187 us_void_param) 18)) 32)) :pattern ((temp___String_Literal_187 us_void_param)))))
(declare-fun temp___String_Literal_188 (tuple0) (Array Int character))
(assert (forall ((us_void_param tuple0)) (! (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= (to_rep (select (temp___String_Literal_188 us_void_param) 1)) 83) (= (to_rep (select (temp___String_Literal_188 us_void_param) 2)) 72)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 3)) 85)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 4)) 84)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 5)) 68)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 6)) 79)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 7)) 87)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 8)) 78)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 9)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 10)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 11)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 12)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 13)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 14)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 15)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 16)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 17)) 32)) (= (to_rep (select (temp___String_Literal_188 us_void_param) 18)) 32)) :pattern ((temp___String_Literal_188 us_void_param)))))
(define-fun dynamic_invariant1 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range1 temp___expr_74)))
(define-fun dynamic_invariant2 ((temp___expr_528 Int) (temp___is_init_524 Bool) (temp___skip_constant_525 Bool) (temp___do_toplevel_526 Bool) (temp___do_typ_inv_527 Bool)) Bool (=> (or (= temp___is_init_524 true) (<= 0 18)) (in_range5 temp___expr_528)))
(define-fun dynamic_invariant3 ((temp___expr_535 Int) (temp___is_init_531 Bool) (temp___skip_constant_532 Bool) (temp___do_toplevel_533 Bool) (temp___do_typ_inv_534 Bool)) Bool (=> (or (= temp___is_init_531 true) (<= 1 18)) (in_range6 temp___expr_535)))
(declare-const rliteral datalengtht1)
(assert (= (datalengthtqtint1 rliteral) 11))
(declare-const rliteral1 datai1)
(assert (= (dataiqtint1 rliteral1) 7))
(declare-const rliteral2 datalengtht1)
(assert (= (datalengthtqtint1 rliteral2) 18))
(declare-const rliteral3 datai1)
(assert (= (dataiqtint1 rliteral3) 6))
(declare-const rliteral4 datalengtht1)
(assert (= (datalengthtqtint1 rliteral4) 13))
(declare-const rliteral5 datai1)
(assert (= (dataiqtint1 rliteral5) 8))
(declare-const rliteral6 datalengtht1)
(assert (= (datalengthtqtint1 rliteral6) 8))
(assert (= optokeyed (admin__optokeyed__aggregate_def (mk___rep1 (mk___split_fields1 rliteral rliteral1 (temp___String_Literal_185 Tuple0))) (mk___rep1 (mk___split_fields1 rliteral2 rliteral3 (temp___String_Literal_186 Tuple0))) (mk___rep1 (mk___split_fields1 rliteral4 rliteral5 (temp___String_Literal_187 Tuple0))) (mk___rep1 (mk___split_fields1 rliteral6 rliteral5 (temp___String_Literal_188 Tuple0))))))
(assert (forall ((temp___180 us_rep1) (temp___181 us_rep1) (temp___182 us_rep1) (temp___183 us_rep1)) (let ((temp___179 (admin__optokeyed__aggregate_def temp___180 temp___181 temp___182 temp___183))) (and (and (and (= (select temp___179 1) temp___180) (= (select temp___179 2) temp___181)) (= (select temp___179 3) temp___182)) (= (select temp___179 4) temp___183)))))
(define-fun dynamic_invariant4 ((temp___expr_435 Int) (temp___is_init_431 Bool) (temp___skip_constant_432 Bool) (temp___do_toplevel_433 Bool) (temp___do_typ_inv_434 Bool)) Bool (=> (or (= temp___is_init_431 true) (<= 0 78)) (in_range2 temp___expr_435)))
(define-fun dynamic_invariant5 ((temp___expr_442 Int) (temp___is_init_438 Bool) (temp___skip_constant_439 Bool) (temp___do_toplevel_440 Bool) (temp___do_typ_inv_441 Bool)) Bool (=> (or (= temp___is_init_438 true) (<= 1 78)) (in_range3 temp___expr_442)))
(declare-const i Int)
(assert (= (admin__optokeyed__aggregate_def (mk___rep1 (mk___split_fields1 rliteral rliteral1 (temp___String_Literal_185 Tuple0))) (mk___rep1 (mk___split_fields1 rliteral2 rliteral3 (temp___String_Literal_186 Tuple0))) (mk___rep1 (mk___split_fields1 rliteral4 rliteral5 (temp___String_Literal_187 Tuple0))) (mk___rep1 (mk___split_fields1 rliteral6 rliteral5 (temp___String_Literal_188 Tuple0)))) optokeyed))
(assert (in_range4 op))
(assert (<= (to_rep3 (rec__admin__datat__minmatchlength (us_split_fields3 (select optokeyed op)))) (to_rep1 (rec__keyboard__datat__length (us_split_fields1 keyedop)))))
(assert (<= (to_rep1 (rec__keyboard__datat__length (us_split_fields1 keyedop))) (to_rep2 (rec__admin__datat__length (us_split_fields3 (select optokeyed op))))))
(assert (<= 1 i))
(assert (<= i (to_rep1 (rec__keyboard__datat__length (us_split_fields1 keyedop)))))
(assert (not (<= i 78)))
(check-sat)
(exit)
