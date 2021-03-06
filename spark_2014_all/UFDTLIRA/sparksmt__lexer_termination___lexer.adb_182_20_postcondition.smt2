(set-info :smt-lib-version 2.5)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic UFDTLIRA)
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
(declare-sort integer 0)
(declare-fun integerqtint (integer) Int)
(assert (forall ((i integer)) (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))
(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq (integer integer) Bool)
(declare-const dummy integer)
(declare-datatypes () ((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content a))
(declare-sort natural 0)
(declare-fun naturalqtint (natural) Int)
(assert (forall ((i natural)) (and (<= 0 (naturalqtint i)) (<= (naturalqtint i) 2147483647))))
(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)
(declare-fun user_eq1 (natural natural) Bool)
(declare-const dummy1 natural)
(declare-datatypes () ((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content a))
(define-fun dynamic_invariant ((temp___expr_39 Int) (temp___is_init_35 Bool) (temp___skip_constant_36 Bool) (temp___do_toplevel_37 Bool) (temp___do_typ_inv_38 Bool)) Bool (=> (or (= temp___is_init_35 true) (<= 0 2147483647)) (in_range2 temp___expr_39)))
(declare-sort positive 0)
(declare-fun positiveqtint (positive) Int)
(assert (forall ((i positive)) (and (<= 1 (positiveqtint i)) (<= (positiveqtint i) 2147483647))))
(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)
(declare-fun user_eq2 (positive positive) Bool)
(declare-const dummy2 positive)
(declare-datatypes () ((positive__ref (mk_positive__ref (positive__content positive)))))
(define-fun positive__ref___projection ((a positive__ref)) positive (positive__content a))
(define-fun dynamic_invariant1 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(declare-sort character 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (character character) Bool)
(declare-const dummy3 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep (character) Int)
(declare-fun of_rep (Int) character)
(assert (forall ((x character)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x character)) (! (in_range4 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range4 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort capacity_range 0)
(declare-fun capacity_rangeqtint (capacity_range) Int)
(assert (forall ((i capacity_range)) (and (<= 0 (capacity_rangeqtint i)) (<= (capacity_rangeqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq4 (capacity_range capacity_range) Bool)
(declare-const dummy4 capacity_range)
(declare-datatypes () ((capacity_range__ref (mk_capacity_range__ref (capacity_range__content capacity_range)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) capacity_range (capacity_range__content a))
(declare-sort us_main_type 0)
(declare-fun us_main_eq (us_main_type us_main_type) Bool)
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__unbounded_strings__char_vectors__vector__capacity capacity_range)))))
(define-fun us_split_discrs___2__projection ((a us_split_discrs)) capacity_range (rec__unbounded_strings__char_vectors__vector__capacity a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___2__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__unbounded_strings__char_vectors__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type (rec__unbounded_strings__char_vectors__vector a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___3__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields)))))
(define-fun us_rep___6__projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___7__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const unbounded_strings__char_vectors__vector__capacity__first__bit Int)
(declare-const unbounded_strings__char_vectors__vector__capacity__last__bit Int)
(declare-const unbounded_strings__char_vectors__vector__capacity__position Int)
(assert (<= 0 unbounded_strings__char_vectors__vector__capacity__first__bit))
(assert (< unbounded_strings__char_vectors__vector__capacity__first__bit unbounded_strings__char_vectors__vector__capacity__last__bit))
(assert (<= 0 unbounded_strings__char_vectors__vector__capacity__position))
(declare-fun user_eq5 (us_rep us_rep) Bool)
(declare-const dummy5 us_rep)
(declare-datatypes () ((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content a))
(define-fun to_rep1 ((x capacity_range)) Int (capacity_rangeqtint x))
(declare-fun of_rep1 (Int) capacity_range)
(assert (forall ((x capacity_range)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x capacity_range)) (! (in_range5 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(define-fun in_range6 ((rec__unbounded_strings__char_vectors__vector__capacity1 Int) (a us_rep)) Bool (= rec__unbounded_strings__char_vectors__vector__capacity1 (to_rep1 (rec__unbounded_strings__char_vectors__vector__capacity (us_split_discrs1 a)))))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const unbounded_strings__char_vectors__vector__capacity__first__bit1 Int)
(declare-const unbounded_strings__char_vectors__vector__capacity__last__bit1 Int)
(declare-const unbounded_strings__char_vectors__vector__capacity__position1 Int)
(assert (<= 0 unbounded_strings__char_vectors__vector__capacity__first__bit1))
(assert (< unbounded_strings__char_vectors__vector__capacity__first__bit1 unbounded_strings__char_vectors__vector__capacity__last__bit1))
(assert (<= 0 unbounded_strings__char_vectors__vector__capacity__position1))
(declare-fun user_eq6 (us_rep us_rep) Bool)
(declare-const dummy6 us_rep)
(declare-datatypes () ((unbounded_string__ref (mk_unbounded_string__ref (unbounded_string__content us_rep)))))
(define-fun unbounded_string__ref___projection ((a unbounded_string__ref)) us_rep (unbounded_string__content a))
(declare-fun length (us_rep) Int)
(declare-fun length__function_guard (Int us_rep) Bool)
(define-fun dynamic_invariant2 ((temp___expr_562 us_rep) (temp___is_init_558 Bool) (temp___skip_constant_559 Bool) (temp___do_toplevel_560 Bool) (temp___do_typ_inv_561 Bool)) Bool (=> (not (= temp___skip_constant_559 true)) (in_range6 32 temp___expr_562)))
(define-fun default_initial_assumption ((temp___expr_564 us_rep) (temp___skip_top_level_565 Bool)) Bool (and (= (to_rep1 (rec__unbounded_strings__char_vectors__vector__capacity (us_split_discrs1 temp___expr_564))) 32) (=> (not (= temp___skip_top_level_565 true)) (= (length temp___expr_564) 0))))
(assert (forall ((s us_rep)) (! (=> (dynamic_invariant2 s true true true true) (dynamic_invariant (length s) true false true true)) :pattern ((length s)))))
(declare-sort read_status 0)
(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 2)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq7 (read_status read_status) Bool)
(declare-const dummy7 read_status)
(declare-datatypes () ((read_status__ref (mk_read_status__ref (read_status__content read_status)))))
(define-fun read_status__ref___projection ((a read_status__ref)) read_status (read_status__content a))
(declare-fun to_rep2 (read_status) Int)
(declare-fun of_rep2 (Int) read_status)
(assert (forall ((x read_status)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x read_status)) (! (in_range7 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range7 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-datatypes () ((us_split_discrs2 (mk___split_discrs1 (rec__file_io__read_result__status read_status)))))
(define-fun us_split_discrs___projection ((a us_split_discrs2)) read_status (rec__file_io__read_result__status a))
(declare-datatypes () ((us_split_discrs__ref1 (mk___split_discrs__ref1 (us_split_discrs__content1 us_split_discrs2)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref1)) us_split_discrs2 (us_split_discrs__content1 a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__file_io__read_result__c character)))))
(define-fun us_split_fields_C__projection ((a us_split_fields2)) character (rec__file_io__read_result__c a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_discrs3 us_split_discrs2) (us_split_fields3 us_split_fields2) (attr__constrained Bool)))))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_discrs2 (us_split_discrs3 a))
(define-fun us_rep___4__projection ((a us_rep1)) us_split_fields2 (us_split_fields3 a))
(define-fun us_rep___5__projection ((a us_rep1)) Bool (attr__constrained a))
(define-fun file_io__read_result__c__pred ((a us_rep1)) Bool (= (to_rep2 (rec__file_io__read_result__status (us_split_discrs3 a))) 0))
(define-fun bool_eq ((a us_rep1) (b us_rep1)) Bool (ite (and (= (to_rep2 (rec__file_io__read_result__status (us_split_discrs3 a))) (to_rep2 (rec__file_io__read_result__status (us_split_discrs3 b)))) (=> (file_io__read_result__c__pred a) (= (to_rep (rec__file_io__read_result__c (us_split_fields3 a))) (to_rep (rec__file_io__read_result__c (us_split_fields3 b)))))) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep1) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep1) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep1)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment2 a))))
(declare-const file_io__read_result__status__first__bit Int)
(declare-const file_io__read_result__status__last__bit Int)
(declare-const file_io__read_result__status__position Int)
(assert (<= 0 file_io__read_result__status__first__bit))
(assert (< file_io__read_result__status__first__bit file_io__read_result__status__last__bit))
(assert (<= 0 file_io__read_result__status__position))
(declare-const file_io__read_result__c__first__bit Int)
(declare-const file_io__read_result__c__last__bit Int)
(declare-const file_io__read_result__c__position Int)
(assert (<= 0 file_io__read_result__c__first__bit))
(assert (< file_io__read_result__c__first__bit file_io__read_result__c__last__bit))
(assert (<= 0 file_io__read_result__c__position))
(declare-fun user_eq8 (us_rep1 us_rep1) Bool)
(declare-const dummy8 us_rep1)
(declare-datatypes () ((read_result__ref (mk_read_result__ref (read_result__content us_rep1)))))
(define-fun read_result__ref___projection ((a read_result__ref)) us_rep1 (read_result__content a))
(declare-const current_read__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const next_read__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-sort us_main_type1 0)
(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)
(declare-sort us_rep2 0)
(declare-fun bool_eq1 (us_rep2 us_rep2) Bool)
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep2) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep2) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep2)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment3 a))))
(declare-fun user_eq9 (us_rep2 us_rep2) Bool)
(declare-const dummy9 us_rep2)
(declare-datatypes () ((file__ref (mk_file__ref (file__content us_rep2)))))
(define-fun file__ref___projection ((a file__ref)) us_rep2 (file__content a))
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-fun local_invariant (us_rep2 us_split_fields2 us_split_discrs2 Int us_split_fields2 us_split_discrs2 Int) Bool)
(declare-fun local_invariant__function_guard (Bool us_rep2 us_split_fields2 us_split_discrs2 Int us_split_fields2 us_split_discrs2 Int) Bool)
(declare-fun size (us_rep2) Int)
(declare-fun size__function_guard (Int us_rep2) Bool)
(declare-fun index (us_rep2) Int)
(declare-fun index__function_guard (Int us_rep2) Bool)
(assert (forall ((lexer__the_file us_rep2)) (forall ((lexer__current_read__fields us_split_fields2) (lexer__next_read__fields us_split_fields2)) (forall ((lexer__current_read__discrs us_split_discrs2) (lexer__next_read__discrs us_split_discrs2)) (forall ((lexer__current_idx Int) (lexer__next_idx Int)) (! (= (= (local_invariant lexer__the_file lexer__current_read__fields lexer__current_read__discrs lexer__current_idx lexer__next_read__fields lexer__next_read__discrs lexer__next_idx) true) (and (and (and (and (and (and (not (= (attr__constrained (mk___rep1 lexer__current_read__discrs lexer__current_read__fields current_read__attr__constrained)) true)) (not (= (attr__constrained (mk___rep1 lexer__next_read__discrs lexer__next_read__fields next_read__attr__constrained)) true))) (<= lexer__current_idx (size lexer__the_file))) (<= lexer__next_idx (size lexer__the_file))) (= lexer__next_idx (index lexer__the_file))) (<= lexer__current_idx lexer__next_idx)) (ite (= (to_rep2 (rec__file_io__read_result__status (us_split_discrs3 (mk___rep1 lexer__next_read__discrs lexer__next_read__fields next_read__attr__constrained)))) 0) (and (= (to_rep2 (rec__file_io__read_result__status (us_split_discrs3 (mk___rep1 lexer__current_read__discrs lexer__current_read__fields current_read__attr__constrained)))) 0) (= lexer__current_idx (- lexer__next_idx 1))) (= lexer__current_idx lexer__next_idx)))) :pattern ((local_invariant lexer__the_file lexer__current_read__fields lexer__current_read__discrs lexer__current_idx lexer__next_read__fields lexer__next_read__discrs lexer__next_idx))))))))
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(define-fun default_initial_assumption1 ((temp___expr_524 us_rep1) (temp___skip_top_level_525 Bool)) Bool (and (= (attr__constrained temp___expr_524) false) (= (to_rep2 (rec__file_io__read_result__status (us_split_discrs3 temp___expr_524))) 2)))
(declare-const s__split_discrs us_split_discrs)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(define-fun dynamic_invariant3 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range4 temp___expr_74)))
(define-fun dynamic_invariant4 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(define-fun dynamic_invariant5 ((temp___expr_515 Int) (temp___is_init_511 Bool) (temp___skip_constant_512 Bool) (temp___do_toplevel_513 Bool) (temp___do_typ_inv_514 Bool)) Bool (=> (or (= temp___is_init_511 true) (<= 0 2)) (in_range7 temp___expr_515)))
(define-fun dynamic_invariant6 ((temp___expr_549 Int) (temp___is_init_545 Bool) (temp___skip_constant_546 Bool) (temp___do_toplevel_547 Bool) (temp___do_typ_inv_548 Bool)) Bool (=> (or (= temp___is_init_545 true) (<= 0 2147483647)) (in_range5 temp___expr_549)))
(declare-const the_file us_rep2)
(declare-const current_read__split_fields character)
(declare-const current_read__split_discrs read_status)
(declare-const current_line Int)
(declare-const current_col Int)
(declare-const current_idx Int)
(declare-const next_read__split_fields character)
(declare-const next_read__split_discrs read_status)
(declare-const next_idx Int)
(declare-const s__split_fields us_main_type)
(declare-const s__split_fields1 us_main_type)
(declare-const the_file1 us_rep2)
(declare-const current_read__split_fields1 character)
(declare-const current_read__split_discrs1 read_status)
(declare-const current_line1 Int)
(declare-const current_col1 Int)
(declare-const current_idx1 Int)
(declare-const next_read__split_fields1 character)
(declare-const next_read__split_discrs1 read_status)
(declare-const next_idx1 Int)
(declare-const the_file2 us_rep2)
(declare-const current_read__split_fields2 us_split_fields__ref1)
(declare-const current_read__split_discrs2 us_split_discrs__ref1)
(declare-const current_line2 int__ref)
(declare-const current_col2 int__ref)
(declare-const current_idx2 int__ref)
(declare-const next_read__split_fields2 us_split_fields__ref1)
(declare-const next_read__split_discrs2 us_split_discrs__ref1)
(declare-const next_idx2 int__ref)
(declare-const s__split_fields2 us_split_fields__ref)
(declare-const the_file3 us_rep2)
(declare-const current_read__split_fields3 us_split_fields2)
(declare-const current_read__split_discrs3 us_split_discrs2)
(declare-const current_line3 Int)
(declare-const current_col3 Int)
(declare-const current_idx3 Int)
(declare-const next_read__split_fields3 us_split_fields2)
(declare-const next_read__split_discrs3 us_split_discrs2)
(declare-const next_idx3 Int)
(declare-const s__split_fields3 us_split_fields)
(define-fun next_read__split_discrs4 () us_split_discrs2 (mk___split_discrs1 next_read__split_discrs1))
(define-fun next_read__split_fields4 () us_split_fields2 (mk___split_fields1 next_read__split_fields1))
(define-fun current_read__split_discrs4 () us_split_discrs2 (mk___split_discrs1 current_read__split_discrs1))
(define-fun current_read__split_fields4 () us_split_fields2 (mk___split_fields1 current_read__split_fields1))
(define-fun s__split_fields4 () us_split_fields (mk___split_fields s__split_fields1))
(assert (= current_read__attr__constrained false))
(assert (in_range3 current_line))
(assert (in_range2 current_col))
(assert (in_range2 current_idx))
(assert (= next_read__attr__constrained false))
(assert (in_range2 next_idx))
(assert (= 32 (to_rep1 (rec__unbounded_strings__char_vectors__vector__capacity s__split_discrs))))
(assert (and (= (local_invariant the_file (mk___split_fields1 current_read__split_fields) (mk___split_discrs1 current_read__split_discrs) current_idx (mk___split_fields1 next_read__split_fields) (mk___split_discrs1 next_read__split_discrs) next_idx) true) (= (to_rep2 current_read__split_discrs) 0)))
(assert (= (length (mk___rep s__split_discrs s__split_fields4)) (+ (length (mk___rep s__split_discrs (mk___split_fields s__split_fields))) 1)))
(assert (and (and (and (and (= (local_invariant the_file1 current_read__split_fields4 current_read__split_discrs4 current_idx1 next_read__split_fields4 next_read__split_discrs4 next_idx1) true) (= (bool_eq (mk___rep1 current_read__split_discrs4 current_read__split_fields4 current_read__attr__constrained) (mk___rep1 (mk___split_discrs1 next_read__split_discrs) (mk___split_fields1 next_read__split_fields) next_read__attr__constrained)) true)) (= current_idx1 next_idx)) (<= current_idx current_idx1)) (and (and (and (in_range3 current_line1) (in_range2 current_col1)) (in_range2 current_idx1)) (in_range2 next_idx1))))
(assert (= s__split_fields2 (mk___split_fields__ref s__split_fields4)))
(assert (= next_idx2 (mk_int__ref next_idx1)))
(assert (= next_read__split_discrs2 (mk___split_discrs__ref1 next_read__split_discrs4)))
(assert (= next_read__split_fields2 (mk___split_fields__ref1 next_read__split_fields4)))
(assert (= current_idx2 (mk_int__ref current_idx1)))
(assert (= current_col2 (mk_int__ref current_col1)))
(assert (= current_line2 (mk_int__ref current_line1)))
(assert (= current_read__split_discrs2 (mk___split_discrs__ref1 current_read__split_discrs4)))
(assert (= current_read__split_fields2 (mk___split_fields__ref1 current_read__split_fields4)))
(assert (= the_file1 the_file2))
(assert (= s__split_fields3 s__split_fields4))
(assert (= next_idx3 next_idx1))
(assert (= next_read__split_discrs3 next_read__split_discrs4))
(assert (= next_read__split_fields3 next_read__split_fields4))
(assert (= current_idx3 current_idx1))
(assert (= current_col3 current_col1))
(assert (= current_line3 current_line1))
(assert (= current_read__split_discrs3 current_read__split_discrs4))
(assert (= current_read__split_fields3 current_read__split_fields4))
(assert (= the_file3 the_file1))
(assert (not (= (length (mk___rep s__split_discrs (us_split_fields__content s__split_fields2))) (+ (length (mk___rep s__split_discrs (mk___split_fields s__split_fields))) 1))))
(check-sat)
(exit)
