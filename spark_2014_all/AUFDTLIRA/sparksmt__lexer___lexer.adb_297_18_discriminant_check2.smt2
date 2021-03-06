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
(define-fun to_rep ((x natural)) Int (naturalqtint x))
(declare-fun of_rep (Int) natural)
(assert (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x natural)) (! (in_range2 (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range2 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
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
(declare-sort character 0)
(define-fun in_range4 ((x Int)) Bool (and (<= 0 x) (<= x 255)))
(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)
(declare-fun user_eq3 (character character) Bool)
(declare-const dummy3 character)
(declare-datatypes () ((character__ref (mk_character__ref (character__content character)))))
(define-fun character__ref___projection ((a character__ref)) character (character__content a))
(declare-fun to_rep1 (character) Int)
(declare-fun of_rep1 (Int) character)
(assert (forall ((x character)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x character)) (! (in_range4 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range4 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((map__ref (mk_map__ref (map__content (Array Int character))))))
(declare-fun slide ((Array Int character) Int Int) (Array Int character))
(assert (forall ((a (Array Int character))) (forall ((first Int)) (! (= (slide a first first) a) :pattern ((slide a first first))))))
(assert (forall ((a (Array Int character))) (forall ((old_first Int)) (forall ((new_first Int)) (forall ((i Int)) (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select (slide a old_first new_first) i))))))))
(define-fun bool_eq ((a (Array Int character)) (a__first Int) (a__last Int) (b (Array Int character)) (b__first Int) (b__last Int)) Bool (ite (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep1 (select a temp___idx_91)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_91))))))) true false))
(assert (forall ((a (Array Int character)) (b (Array Int character))) (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int)) (=> (= (bool_eq b b__first b__last a a__first a__last) true) (and (ite (<= a__first a__last) (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first))) (< b__last b__first)) (forall ((temp___idx_91 Int)) (=> (and (<= a__first temp___idx_91) (<= temp___idx_91 a__last)) (= (to_rep1 (select a temp___idx_91)) (to_rep1 (select b (+ (- b__first a__first) temp___idx_91)))))))))))
(define-fun to_rep2 ((x integer)) Int (integerqtint x))
(declare-fun of_rep2 (Int) integer)
(assert (forall ((x integer)) (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)))))
(assert (forall ((x integer)) (! (in_range1 (to_rep2 x)) :pattern ((to_rep2 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2 (of_rep2 x))))))
(declare-sort t 0)
(declare-fun first (t) integer)
(declare-fun last (t) integer)
(declare-fun mk (Int Int) t)
(assert (forall ((f Int) (l Int)) (! (=> (in_range1 f) (=> (in_range1 l) (and (= (to_rep2 (first (mk f l))) f) (= (to_rep2 (last (mk f l))) l)))) :pattern ((mk f l)))))
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool (and (in_range1 low) (and (in_range1 high) (=> (<= low high) (and (in_range3 low) (in_range3 high))))))
(declare-datatypes () ((us_t (mk___t (elts (Array Int character)) (rt t)))))
(define-fun to_array ((a us_t)) (Array Int character) (elts a))
(define-fun of_array ((a (Array Int character)) (f Int) (l Int)) us_t (mk___t a (mk f l)))
(define-fun first1 ((a us_t)) Int (to_rep2 (first (rt a))))
(define-fun last1 ((a us_t)) Int (to_rep2 (last (rt a))))
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
(define-fun bool_eq1 ((x us_t) (y us_t)) Bool (bool_eq (elts x) (to_rep2 (first (rt x))) (to_rep2 (last (rt x))) (elts y) (to_rep2 (first (rt y))) (to_rep2 (last (rt y)))))
(declare-fun user_eq4 (us_t us_t) Bool)
(declare-const dummy4 us_t)
(declare-fun to_string (us_image) us_t)
(declare-fun from_string (us_t) us_image)
(declare-datatypes () ((string__ref (mk_string__ref (string__content us_t)))))
(define-fun string__ref___projection ((a string__ref)) us_t (string__content a))
(define-fun dynamic_invariant1 ((temp___expr_96 us_t) (temp___is_init_92 Bool) (temp___skip_constant_93 Bool) (temp___do_toplevel_94 Bool) (temp___do_typ_inv_95 Bool)) Bool (=> (not (= temp___skip_constant_93 true)) (dynamic_property 1 2147483647 (first1 temp___expr_96) (last1 temp___expr_96))))
(declare-fun invariant__ (us_private) Bool)
(declare-fun invariant____function_guard (Bool us_private) Bool)
(assert true)
(declare-sort name_id 0)
(declare-fun name_idqtint (name_id) Int)
(assert (forall ((i name_id)) (and (<= 0 (name_idqtint i)) (<= (name_idqtint i) 2147483647))))
(define-fun in_range5 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))
(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)
(declare-fun user_eq5 (name_id name_id) Bool)
(declare-const dummy5 name_id)
(declare-datatypes () ((name_id__ref (mk_name_id__ref (name_id__content name_id)))))
(define-fun name_id__ref___projection ((a name_id__ref)) name_id (name_id__content a))
(define-fun dynamic_invariant2 ((temp___expr_719 Int) (temp___is_init_715 Bool) (temp___skip_constant_716 Bool) (temp___do_toplevel_717 Bool) (temp___do_typ_inv_718 Bool)) Bool (=> (or (= temp___is_init_715 true) (<= 0 2147483647)) (in_range5 temp___expr_719)))
(define-fun to_rep3 ((x name_id)) Int (name_idqtint x))
(declare-fun of_rep3 (Int) name_id)
(assert (forall ((x name_id)) (! (= (of_rep3 (to_rep3 x)) x) :pattern ((to_rep3 x)))))
(assert (forall ((x name_id)) (! (in_range5 (to_rep3 x)) :pattern ((to_rep3 x)))))
(assert (forall ((x Int)) (! (=> (in_range5 x) (= (to_rep3 (of_rep3 x)) x)) :pattern ((to_rep3 (of_rep3 x))))))
(declare-sort token_kind 0)
(define-fun in_range6 ((x Int)) Bool (and (<= 0 x) (<= x 8)))
(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)
(declare-fun user_eq6 (token_kind token_kind) Bool)
(declare-const dummy6 token_kind)
(declare-datatypes () ((token_kind__ref (mk_token_kind__ref (token_kind__content token_kind)))))
(define-fun token_kind__ref___projection ((a token_kind__ref)) token_kind (token_kind__content a))
(define-fun dynamic_invariant3 ((temp___expr_729 Int) (temp___is_init_725 Bool) (temp___skip_constant_726 Bool) (temp___do_toplevel_727 Bool) (temp___do_typ_inv_728 Bool)) Bool (=> (or (= temp___is_init_725 true) (<= 0 8)) (in_range6 temp___expr_729)))
(declare-fun to_rep4 (token_kind) Int)
(declare-fun of_rep4 (Int) token_kind)
(assert (forall ((x token_kind)) (! (= (of_rep4 (to_rep4 x)) x) :pattern ((to_rep4 x)))))
(assert (forall ((x token_kind)) (! (in_range6 (to_rep4 x)) :pattern ((to_rep4 x)))))
(assert (forall ((x Int)) (! (=> (in_range6 x) (= (to_rep4 (of_rep4 x)) x)) :pattern ((to_rep4 (of_rep4 x))))))
(declare-sort valued_tokens 0)
(define-fun in_range7 ((x Int)) Bool (and (<= 3 x) (<= x 8)))
(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)
(declare-fun user_eq7 (valued_tokens valued_tokens) Bool)
(declare-const dummy7 valued_tokens)
(declare-datatypes () ((valued_tokens__ref (mk_valued_tokens__ref (valued_tokens__content valued_tokens)))))
(define-fun valued_tokens__ref___projection ((a valued_tokens__ref)) valued_tokens (valued_tokens__content a))
(define-fun dynamic_invariant4 ((temp___expr_736 Int) (temp___is_init_732 Bool) (temp___skip_constant_733 Bool) (temp___do_toplevel_734 Bool) (temp___do_typ_inv_735 Bool)) Bool (=> (or (= temp___is_init_732 true) (<= 3 8)) (in_range7 temp___expr_736)))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__lexer__token__kind token_kind)))))
(define-fun us_split_discrs___3__projection ((a us_split_discrs)) token_kind (rec__lexer__token__kind a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___3__projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__lexer__token__line natural) (rec__lexer__token__col natural) (rec__lexer__token__length natural) (rec__lexer__token__value name_id)))))
(define-fun us_split_fields_Line__projection ((a us_split_fields)) natural (rec__lexer__token__line a))
(define-fun us_split_fields_Col__projection ((a us_split_fields)) natural (rec__lexer__token__col a))
(define-fun us_split_fields_Length__projection ((a us_split_fields)) natural (rec__lexer__token__length a))
(define-fun us_split_fields_Value__projection ((a us_split_fields)) name_id (rec__lexer__token__value a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___4__projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (us_split_fields1 us_split_fields) (attr__constrained Bool)))))
(define-fun us_rep___8__projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___9__projection ((a us_rep)) us_split_fields (us_split_fields1 a))
(define-fun us_rep___10__projection ((a us_rep)) Bool (attr__constrained a))
(define-fun lexer__token__value__pred ((a us_rep)) Bool (and (<= 3 (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a)))) (<= (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a))) 8)))
(define-fun bool_eq2 ((a us_rep) (b us_rep)) Bool (ite (and (= (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a))) (to_rep4 (rec__lexer__token__kind (us_split_discrs1 b)))) (and (and (and (= (to_rep (rec__lexer__token__line (us_split_fields1 a))) (to_rep (rec__lexer__token__line (us_split_fields1 b)))) (= (to_rep (rec__lexer__token__col (us_split_fields1 a))) (to_rep (rec__lexer__token__col (us_split_fields1 b))))) (= (to_rep (rec__lexer__token__length (us_split_fields1 a))) (to_rep (rec__lexer__token__length (us_split_fields1 b))))) (=> (lexer__token__value__pred a) (= (to_rep3 (rec__lexer__token__value (us_split_fields1 a))) (to_rep3 (rec__lexer__token__value (us_split_fields1 b))))))) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep)) (<= 0 (object__alignment1 a))))
(declare-const lexer__token__kind__first__bit Int)
(declare-const lexer__token__kind__last__bit Int)
(declare-const lexer__token__kind__position Int)
(assert (<= 0 lexer__token__kind__first__bit))
(assert (< lexer__token__kind__first__bit lexer__token__kind__last__bit))
(assert (<= 0 lexer__token__kind__position))
(declare-const lexer__token__line__first__bit Int)
(declare-const lexer__token__line__last__bit Int)
(declare-const lexer__token__line__position Int)
(assert (<= 0 lexer__token__line__first__bit))
(assert (< lexer__token__line__first__bit lexer__token__line__last__bit))
(assert (<= 0 lexer__token__line__position))
(declare-const lexer__token__col__first__bit Int)
(declare-const lexer__token__col__last__bit Int)
(declare-const lexer__token__col__position Int)
(assert (<= 0 lexer__token__col__first__bit))
(assert (< lexer__token__col__first__bit lexer__token__col__last__bit))
(assert (<= 0 lexer__token__col__position))
(declare-const lexer__token__length__first__bit Int)
(declare-const lexer__token__length__last__bit Int)
(declare-const lexer__token__length__position Int)
(assert (<= 0 lexer__token__length__first__bit))
(assert (< lexer__token__length__first__bit lexer__token__length__last__bit))
(assert (<= 0 lexer__token__length__position))
(declare-const lexer__token__value__first__bit Int)
(declare-const lexer__token__value__last__bit Int)
(declare-const lexer__token__value__position Int)
(assert (<= 0 lexer__token__value__first__bit))
(assert (< lexer__token__value__first__bit lexer__token__value__last__bit))
(assert (<= 0 lexer__token__value__position))
(declare-fun user_eq8 (us_rep us_rep) Bool)
(declare-const dummy8 us_rep)
(declare-datatypes () ((token__ref (mk_token__ref (token__content us_rep)))))
(define-fun token__ref___projection ((a token__ref)) us_rep (token__content a))
(define-fun default_initial_assumption ((temp___expr_745 us_rep) (temp___skip_top_level_746 Bool)) Bool (and (= (attr__constrained temp___expr_745) false) (= (to_rep4 (rec__lexer__token__kind (us_split_discrs1 temp___expr_745))) 0)))
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(declare-const t__attr__constrained Bool)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(declare-const attr__ATTRIBUTE_ADDRESS2 Int)
(declare-const attr__ATTRIBUTE_ADDRESS3 Int)
(declare-const attr__ATTRIBUTE_ADDRESS4 Int)
(declare-const kind Int)
(declare-const attr__ATTRIBUTE_ADDRESS5 Int)
(declare-const value us_t)
(declare-const attr__ATTRIBUTE_ADDRESS6 Int)
(declare-const t_length Int)
(declare-const attr__ATTRIBUTE_ADDRESS7 Int)
(declare-const attr__ATTRIBUTE_ADDRESS8 Int)
(declare-const r28b Int)
(declare-const attr__ATTRIBUTE_ADDRESS9 Int)
(define-fun in_range8 ((rec__lexer__token__kind1 Int) (a us_rep)) Bool (= rec__lexer__token__kind1 (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a)))))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))
(declare-const lexer__token__kind__first__bit1 Int)
(declare-const lexer__token__kind__last__bit1 Int)
(declare-const lexer__token__kind__position1 Int)
(assert (<= 0 lexer__token__kind__first__bit1))
(assert (< lexer__token__kind__first__bit1 lexer__token__kind__last__bit1))
(assert (<= 0 lexer__token__kind__position1))
(declare-const lexer__token__line__first__bit1 Int)
(declare-const lexer__token__line__last__bit1 Int)
(declare-const lexer__token__line__position1 Int)
(assert (<= 0 lexer__token__line__first__bit1))
(assert (< lexer__token__line__first__bit1 lexer__token__line__last__bit1))
(assert (<= 0 lexer__token__line__position1))
(declare-const lexer__token__col__first__bit1 Int)
(declare-const lexer__token__col__last__bit1 Int)
(declare-const lexer__token__col__position1 Int)
(assert (<= 0 lexer__token__col__first__bit1))
(assert (< lexer__token__col__first__bit1 lexer__token__col__last__bit1))
(assert (<= 0 lexer__token__col__position1))
(declare-const lexer__token__length__first__bit1 Int)
(declare-const lexer__token__length__last__bit1 Int)
(declare-const lexer__token__length__position1 Int)
(assert (<= 0 lexer__token__length__first__bit1))
(assert (< lexer__token__length__first__bit1 lexer__token__length__last__bit1))
(assert (<= 0 lexer__token__length__position1))
(declare-const lexer__token__value__first__bit1 Int)
(declare-const lexer__token__value__last__bit1 Int)
(declare-const lexer__token__value__position1 Int)
(assert (<= 0 lexer__token__value__first__bit1))
(assert (< lexer__token__value__first__bit1 lexer__token__value__last__bit1))
(assert (<= 0 lexer__token__value__position1))
(declare-fun user_eq9 (us_rep us_rep) Bool)
(declare-const dummy9 us_rep)
(declare-datatypes () ((t29b__ref (mk_t29b__ref (t29b__content us_rep)))))
(define-fun t29b__ref___projection ((a t29b__ref)) us_rep (t29b__content a))
(declare-const r31b Int)
(declare-const attr__ATTRIBUTE_ADDRESS10 Int)
(define-fun in_range9 ((rec__lexer__token__kind1 Int) (a us_rep)) Bool (= rec__lexer__token__kind1 (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a)))))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))
(declare-const lexer__token__kind__first__bit2 Int)
(declare-const lexer__token__kind__last__bit2 Int)
(declare-const lexer__token__kind__position2 Int)
(assert (<= 0 lexer__token__kind__first__bit2))
(assert (< lexer__token__kind__first__bit2 lexer__token__kind__last__bit2))
(assert (<= 0 lexer__token__kind__position2))
(declare-const lexer__token__line__first__bit2 Int)
(declare-const lexer__token__line__last__bit2 Int)
(declare-const lexer__token__line__position2 Int)
(assert (<= 0 lexer__token__line__first__bit2))
(assert (< lexer__token__line__first__bit2 lexer__token__line__last__bit2))
(assert (<= 0 lexer__token__line__position2))
(declare-const lexer__token__col__first__bit2 Int)
(declare-const lexer__token__col__last__bit2 Int)
(declare-const lexer__token__col__position2 Int)
(assert (<= 0 lexer__token__col__first__bit2))
(assert (< lexer__token__col__first__bit2 lexer__token__col__last__bit2))
(assert (<= 0 lexer__token__col__position2))
(declare-const lexer__token__length__first__bit2 Int)
(declare-const lexer__token__length__last__bit2 Int)
(declare-const lexer__token__length__position2 Int)
(assert (<= 0 lexer__token__length__first__bit2))
(assert (< lexer__token__length__first__bit2 lexer__token__length__last__bit2))
(assert (<= 0 lexer__token__length__position2))
(declare-const lexer__token__value__first__bit2 Int)
(declare-const lexer__token__value__last__bit2 Int)
(declare-const lexer__token__value__position2 Int)
(assert (<= 0 lexer__token__value__first__bit2))
(assert (< lexer__token__value__first__bit2 lexer__token__value__last__bit2))
(assert (<= 0 lexer__token__value__position2))
(declare-fun user_eq10 (us_rep us_rep) Bool)
(declare-const dummy10 us_rep)
(declare-datatypes () ((t32b__ref (mk_t32b__ref (t32b__content us_rep)))))
(define-fun t32b__ref___projection ((a t32b__ref)) us_rep (t32b__content a))
(declare-const r34b Int)
(declare-const attr__ATTRIBUTE_ADDRESS11 Int)
(define-fun in_range10 ((rec__lexer__token__kind1 Int) (a us_rep)) Bool (= rec__lexer__token__kind1 (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a)))))
(declare-const value__size4 Int)
(declare-fun object__size4 (us_rep) Int)
(declare-const value__alignment4 Int)
(declare-fun object__alignment4 (us_rep) Int)
(assert (<= 0 value__size4))
(assert (forall ((a us_rep)) (<= 0 (object__size4 a))))
(assert (<= 0 value__alignment4))
(assert (forall ((a us_rep)) (<= 0 (object__alignment4 a))))
(declare-const lexer__token__kind__first__bit3 Int)
(declare-const lexer__token__kind__last__bit3 Int)
(declare-const lexer__token__kind__position3 Int)
(assert (<= 0 lexer__token__kind__first__bit3))
(assert (< lexer__token__kind__first__bit3 lexer__token__kind__last__bit3))
(assert (<= 0 lexer__token__kind__position3))
(declare-const lexer__token__line__first__bit3 Int)
(declare-const lexer__token__line__last__bit3 Int)
(declare-const lexer__token__line__position3 Int)
(assert (<= 0 lexer__token__line__first__bit3))
(assert (< lexer__token__line__first__bit3 lexer__token__line__last__bit3))
(assert (<= 0 lexer__token__line__position3))
(declare-const lexer__token__col__first__bit3 Int)
(declare-const lexer__token__col__last__bit3 Int)
(declare-const lexer__token__col__position3 Int)
(assert (<= 0 lexer__token__col__first__bit3))
(assert (< lexer__token__col__first__bit3 lexer__token__col__last__bit3))
(assert (<= 0 lexer__token__col__position3))
(declare-const lexer__token__length__first__bit3 Int)
(declare-const lexer__token__length__last__bit3 Int)
(declare-const lexer__token__length__position3 Int)
(assert (<= 0 lexer__token__length__first__bit3))
(assert (< lexer__token__length__first__bit3 lexer__token__length__last__bit3))
(assert (<= 0 lexer__token__length__position3))
(declare-const lexer__token__value__first__bit3 Int)
(declare-const lexer__token__value__last__bit3 Int)
(declare-const lexer__token__value__position3 Int)
(assert (<= 0 lexer__token__value__first__bit3))
(assert (< lexer__token__value__first__bit3 lexer__token__value__last__bit3))
(assert (<= 0 lexer__token__value__position3))
(declare-fun user_eq11 (us_rep us_rep) Bool)
(declare-const dummy11 us_rep)
(declare-datatypes () ((t35b__ref (mk_t35b__ref (t35b__content us_rep)))))
(define-fun t35b__ref___projection ((a t35b__ref)) us_rep (t35b__content a))
(declare-const r37b Int)
(declare-const attr__ATTRIBUTE_ADDRESS12 Int)
(define-fun in_range11 ((rec__lexer__token__kind1 Int) (a us_rep)) Bool (= rec__lexer__token__kind1 (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a)))))
(declare-const value__size5 Int)
(declare-fun object__size5 (us_rep) Int)
(declare-const value__alignment5 Int)
(declare-fun object__alignment5 (us_rep) Int)
(assert (<= 0 value__size5))
(assert (forall ((a us_rep)) (<= 0 (object__size5 a))))
(assert (<= 0 value__alignment5))
(assert (forall ((a us_rep)) (<= 0 (object__alignment5 a))))
(declare-const lexer__token__kind__first__bit4 Int)
(declare-const lexer__token__kind__last__bit4 Int)
(declare-const lexer__token__kind__position4 Int)
(assert (<= 0 lexer__token__kind__first__bit4))
(assert (< lexer__token__kind__first__bit4 lexer__token__kind__last__bit4))
(assert (<= 0 lexer__token__kind__position4))
(declare-const lexer__token__line__first__bit4 Int)
(declare-const lexer__token__line__last__bit4 Int)
(declare-const lexer__token__line__position4 Int)
(assert (<= 0 lexer__token__line__first__bit4))
(assert (< lexer__token__line__first__bit4 lexer__token__line__last__bit4))
(assert (<= 0 lexer__token__line__position4))
(declare-const lexer__token__col__first__bit4 Int)
(declare-const lexer__token__col__last__bit4 Int)
(declare-const lexer__token__col__position4 Int)
(assert (<= 0 lexer__token__col__first__bit4))
(assert (< lexer__token__col__first__bit4 lexer__token__col__last__bit4))
(assert (<= 0 lexer__token__col__position4))
(declare-const lexer__token__length__first__bit4 Int)
(declare-const lexer__token__length__last__bit4 Int)
(declare-const lexer__token__length__position4 Int)
(assert (<= 0 lexer__token__length__first__bit4))
(assert (< lexer__token__length__first__bit4 lexer__token__length__last__bit4))
(assert (<= 0 lexer__token__length__position4))
(declare-const lexer__token__value__first__bit4 Int)
(declare-const lexer__token__value__last__bit4 Int)
(declare-const lexer__token__value__position4 Int)
(assert (<= 0 lexer__token__value__first__bit4))
(assert (< lexer__token__value__first__bit4 lexer__token__value__last__bit4))
(assert (<= 0 lexer__token__value__position4))
(declare-fun user_eq12 (us_rep us_rep) Bool)
(declare-const dummy12 us_rep)
(declare-datatypes () ((t38b__ref (mk_t38b__ref (t38b__content us_rep)))))
(define-fun t38b__ref___projection ((a t38b__ref)) us_rep (t38b__content a))
(declare-const r40b Int)
(declare-const attr__ATTRIBUTE_ADDRESS13 Int)
(define-fun in_range12 ((rec__lexer__token__kind1 Int) (a us_rep)) Bool (= rec__lexer__token__kind1 (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a)))))
(declare-const value__size6 Int)
(declare-fun object__size6 (us_rep) Int)
(declare-const value__alignment6 Int)
(declare-fun object__alignment6 (us_rep) Int)
(assert (<= 0 value__size6))
(assert (forall ((a us_rep)) (<= 0 (object__size6 a))))
(assert (<= 0 value__alignment6))
(assert (forall ((a us_rep)) (<= 0 (object__alignment6 a))))
(declare-const lexer__token__kind__first__bit5 Int)
(declare-const lexer__token__kind__last__bit5 Int)
(declare-const lexer__token__kind__position5 Int)
(assert (<= 0 lexer__token__kind__first__bit5))
(assert (< lexer__token__kind__first__bit5 lexer__token__kind__last__bit5))
(assert (<= 0 lexer__token__kind__position5))
(declare-const lexer__token__line__first__bit5 Int)
(declare-const lexer__token__line__last__bit5 Int)
(declare-const lexer__token__line__position5 Int)
(assert (<= 0 lexer__token__line__first__bit5))
(assert (< lexer__token__line__first__bit5 lexer__token__line__last__bit5))
(assert (<= 0 lexer__token__line__position5))
(declare-const lexer__token__col__first__bit5 Int)
(declare-const lexer__token__col__last__bit5 Int)
(declare-const lexer__token__col__position5 Int)
(assert (<= 0 lexer__token__col__first__bit5))
(assert (< lexer__token__col__first__bit5 lexer__token__col__last__bit5))
(assert (<= 0 lexer__token__col__position5))
(declare-const lexer__token__length__first__bit5 Int)
(declare-const lexer__token__length__last__bit5 Int)
(declare-const lexer__token__length__position5 Int)
(assert (<= 0 lexer__token__length__first__bit5))
(assert (< lexer__token__length__first__bit5 lexer__token__length__last__bit5))
(assert (<= 0 lexer__token__length__position5))
(declare-const lexer__token__value__first__bit5 Int)
(declare-const lexer__token__value__last__bit5 Int)
(declare-const lexer__token__value__position5 Int)
(assert (<= 0 lexer__token__value__first__bit5))
(assert (< lexer__token__value__first__bit5 lexer__token__value__last__bit5))
(assert (<= 0 lexer__token__value__position5))
(declare-fun user_eq13 (us_rep us_rep) Bool)
(declare-const dummy13 us_rep)
(declare-datatypes () ((t41b__ref (mk_t41b__ref (t41b__content us_rep)))))
(define-fun t41b__ref___projection ((a t41b__ref)) us_rep (t41b__content a))
(declare-const r43b Int)
(declare-const attr__ATTRIBUTE_ADDRESS14 Int)
(define-fun in_range13 ((rec__lexer__token__kind1 Int) (a us_rep)) Bool (= rec__lexer__token__kind1 (to_rep4 (rec__lexer__token__kind (us_split_discrs1 a)))))
(declare-const value__size7 Int)
(declare-fun object__size7 (us_rep) Int)
(declare-const value__alignment7 Int)
(declare-fun object__alignment7 (us_rep) Int)
(assert (<= 0 value__size7))
(assert (forall ((a us_rep)) (<= 0 (object__size7 a))))
(assert (<= 0 value__alignment7))
(assert (forall ((a us_rep)) (<= 0 (object__alignment7 a))))
(declare-const lexer__token__kind__first__bit6 Int)
(declare-const lexer__token__kind__last__bit6 Int)
(declare-const lexer__token__kind__position6 Int)
(assert (<= 0 lexer__token__kind__first__bit6))
(assert (< lexer__token__kind__first__bit6 lexer__token__kind__last__bit6))
(assert (<= 0 lexer__token__kind__position6))
(declare-const lexer__token__line__first__bit6 Int)
(declare-const lexer__token__line__last__bit6 Int)
(declare-const lexer__token__line__position6 Int)
(assert (<= 0 lexer__token__line__first__bit6))
(assert (< lexer__token__line__first__bit6 lexer__token__line__last__bit6))
(assert (<= 0 lexer__token__line__position6))
(declare-const lexer__token__col__first__bit6 Int)
(declare-const lexer__token__col__last__bit6 Int)
(declare-const lexer__token__col__position6 Int)
(assert (<= 0 lexer__token__col__first__bit6))
(assert (< lexer__token__col__first__bit6 lexer__token__col__last__bit6))
(assert (<= 0 lexer__token__col__position6))
(declare-const lexer__token__length__first__bit6 Int)
(declare-const lexer__token__length__last__bit6 Int)
(declare-const lexer__token__length__position6 Int)
(assert (<= 0 lexer__token__length__first__bit6))
(assert (< lexer__token__length__first__bit6 lexer__token__length__last__bit6))
(assert (<= 0 lexer__token__length__position6))
(declare-const lexer__token__value__first__bit6 Int)
(declare-const lexer__token__value__last__bit6 Int)
(declare-const lexer__token__value__position6 Int)
(assert (<= 0 lexer__token__value__first__bit6))
(assert (< lexer__token__value__first__bit6 lexer__token__value__last__bit6))
(assert (<= 0 lexer__token__value__position6))
(declare-fun user_eq14 (us_rep us_rep) Bool)
(declare-const dummy14 us_rep)
(declare-datatypes () ((t44b__ref (mk_t44b__ref (t44b__content us_rep)))))
(define-fun t44b__ref___projection ((a t44b__ref)) us_rep (t44b__content a))
(define-fun dynamic_invariant5 ((temp___expr_46 Int) (temp___is_init_42 Bool) (temp___skip_constant_43 Bool) (temp___do_toplevel_44 Bool) (temp___do_typ_inv_45 Bool)) Bool (=> (or (= temp___is_init_42 true) (<= 1 2147483647)) (in_range3 temp___expr_46)))
(define-fun dynamic_invariant6 ((temp___expr_74 Int) (temp___is_init_70 Bool) (temp___skip_constant_71 Bool) (temp___do_toplevel_72 Bool) (temp___do_typ_inv_73 Bool)) Bool (=> (or (= temp___is_init_70 true) (<= 0 255)) (in_range4 temp___expr_74)))
(define-fun dynamic_invariant7 ((temp___expr_18 Int) (temp___is_init_14 Bool) (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool) (temp___do_typ_inv_17 Bool)) Bool (=> (or (= temp___is_init_14 true) (<= (- 2147483648) 2147483647)) (in_range1 temp___expr_18)))
(declare-const t__split_discrs token_kind)
(declare-const current_pos Int)
(declare-const first_line Int)
(declare-const first_col Int)
(declare-const first_pos Int)
(declare-const n Int)
(declare-const name_table us_private)
(declare-const o Int)
(declare-const lexer__read_token__new_token__2__t_length__assume Int)
(declare-const o1 token_kind)
(declare-const o2 name_id)
(declare-const o3 natural)
(declare-const o4 natural)
(declare-const o5 natural)
(declare-const o6 natural)
(declare-const o7 natural)
(declare-const o8 natural)
(declare-const o9 name_id)
(declare-const o10 token_kind)
(declare-const temp___1030 token_kind)
(declare-const temp___10301 natural)
(declare-const temp___10302 natural)
(declare-const temp___10303 natural)
(declare-const temp___10304 name_id)
(declare-const temp___10305 Bool)
(declare-const n1 Int)
(declare-const name_table1 us_private)
(assert (in_range2 current_pos))
(assert (in_range2 first_line))
(assert (in_range2 first_col))
(assert (in_range2 first_pos))
(assert (in_range7 kind))
(assert (dynamic_invariant1 value true false true true))
(assert (and (and (not (= t__attr__constrained true)) (= (invariant__ name_table) true)) (<= first_pos current_pos)))
(assert (and (= o (- current_pos first_pos)) (in_range1 (- current_pos first_pos))))
(assert (and (= lexer__read_token__new_token__2__t_length__assume o) (in_range2 o)))
(assert (= lexer__read_token__new_token__2__t_length__assume t_length))
(assert (in_range2 t_length))
(assert (=> (<= 0 2147483647) (in_range5 n)))
(assert (and (= (invariant__ name_table1) true) (in_range5 n1)))
(assert (= kind 3))
(assert (= (to_rep4 t__split_discrs) r28b))
(assert (in_range6 r28b))
(assert (= (to_rep3 o2) n1))
(assert (= (to_rep o3) t_length))
(assert (= (to_rep o4) first_col))
(assert (= (to_rep o5) first_line))
(assert (= o5 o6))
(assert (= o4 o7))
(assert (= o3 o8))
(assert (= o2 o9))
(assert (= (to_rep4 o1) 3))
(assert (= o1 o10))
(assert (= temp___1030 o10))
(assert (= temp___10301 o6))
(assert (= temp___10302 o7))
(assert (= temp___10303 o8))
(assert (= temp___10304 o9))
(assert (= true temp___10305))
(assert (= t__attr__constrained true))
(assert (not (= temp___1030 t__split_discrs)))
(check-sat)
(exit)
