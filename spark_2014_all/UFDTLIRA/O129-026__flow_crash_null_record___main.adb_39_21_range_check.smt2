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
(declare-sort subtree_height_type 0)
(declare-fun subtree_height_typeqtint (subtree_height_type) Int)
(assert (forall ((i subtree_height_type)) (and (<= 0 (subtree_height_typeqtint i)) (<= (subtree_height_typeqtint i) 14))))
(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 14)))
(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)
(declare-fun user_eq (subtree_height_type subtree_height_type) Bool)
(declare-const dummy subtree_height_type)
(declare-datatypes () ((subtree_height_type__ref (mk_subtree_height_type__ref (subtree_height_type__content subtree_height_type)))))
(define-fun subtree_height_type__ref___projection ((a subtree_height_type__ref)) subtree_height_type (subtree_height_type__content a))
(define-fun to_rep ((x subtree_height_type)) Int (subtree_height_typeqtint x))
(declare-fun of_rep (Int) subtree_height_type)
(assert (forall ((x subtree_height_type)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)))))
(assert (forall ((x subtree_height_type)) (! (in_range (to_rep x)) :pattern ((to_rep x)))))
(assert (forall ((x Int)) (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep (of_rep x))))))
(declare-sort node_enum 0)
(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 0)))
(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)
(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)
(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)
(declare-fun user_eq1 (node_enum node_enum) Bool)
(declare-const dummy1 node_enum)
(declare-datatypes () ((node_enum__ref (mk_node_enum__ref (node_enum__content node_enum)))))
(define-fun node_enum__ref___projection ((a node_enum__ref)) node_enum (node_enum__content a))
(declare-fun to_rep1 (node_enum) Int)
(declare-fun of_rep1 (Int) node_enum)
(assert (forall ((x node_enum)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)))))
(assert (forall ((x node_enum)) (! (in_range1 (to_rep1 x)) :pattern ((to_rep1 x)))))
(assert (forall ((x Int)) (! (=> (in_range1 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1 (of_rep1 x))))))
(declare-datatypes () ((us_split_discrs (mk___split_discrs (rec__main__node_variant_type__m_variant node_enum)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) node_enum (rec__main__node_variant_type__m_variant a))
(declare-datatypes () ((us_split_discrs__ref (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs (us_split_discrs__content a))
(declare-datatypes () ((us_rep (mk___rep (us_split_discrs1 us_split_discrs) (attr__constrained Bool)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1 a))
(define-fun us_rep___2__projection ((a us_rep)) Bool (attr__constrained a))
(define-fun bool_eq ((a us_rep) (b us_rep)) Bool (ite (= (to_rep1 (rec__main__node_variant_type__m_variant (us_split_discrs1 a))) (to_rep1 (rec__main__node_variant_type__m_variant (us_split_discrs1 b)))) true false))
(declare-const value__size Int)
(declare-fun object__size (us_rep) Int)
(declare-const value__alignment Int)
(declare-fun object__alignment (us_rep) Int)
(assert (<= 0 value__size))
(assert (forall ((a us_rep)) (<= 0 (object__size a))))
(assert (<= 0 value__alignment))
(assert (forall ((a us_rep)) (<= 0 (object__alignment a))))
(declare-const main__node_variant_type__m_variant__first__bit Int)
(declare-const main__node_variant_type__m_variant__last__bit Int)
(declare-const main__node_variant_type__m_variant__position Int)
(assert (<= 0 main__node_variant_type__m_variant__first__bit))
(assert (< main__node_variant_type__m_variant__first__bit main__node_variant_type__m_variant__last__bit))
(assert (<= 0 main__node_variant_type__m_variant__position))
(declare-fun user_eq2 (us_rep us_rep) Bool)
(declare-const dummy2 us_rep)
(declare-datatypes () ((node_variant_type__ref (mk_node_variant_type__ref (node_variant_type__content us_rep)))))
(define-fun node_variant_type__ref___projection ((a node_variant_type__ref)) us_rep (node_variant_type__content a))
(declare-datatypes () ((us_split_fields (mk___split_fields (rec__main__node_type__variant_node us_rep)))))
(define-fun us_split_fields_Variant_Node__projection ((a us_split_fields)) us_rep (rec__main__node_type__variant_node a))
(declare-datatypes () ((us_split_fields__ref (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields (us_split_fields__content a))
(declare-datatypes () ((us_rep1 (mk___rep1 (us_split_fields1 us_split_fields)))))
(define-fun us_rep___3__projection ((a us_rep1)) us_split_fields (us_split_fields1 a))
(define-fun bool_eq1 ((a us_rep1) (b us_rep1)) Bool (ite (= (bool_eq (rec__main__node_type__variant_node (us_split_fields1 a)) (rec__main__node_type__variant_node (us_split_fields1 b))) true) true false))
(declare-const value__size1 Int)
(declare-fun object__size1 (us_rep1) Int)
(declare-const value__alignment1 Int)
(declare-fun object__alignment1 (us_rep1) Int)
(assert (<= 0 value__size1))
(assert (forall ((a us_rep1)) (<= 0 (object__size1 a))))
(assert (<= 0 value__alignment1))
(assert (forall ((a us_rep1)) (<= 0 (object__alignment1 a))))
(declare-const main__node_type__variant_node__first__bit Int)
(declare-const main__node_type__variant_node__last__bit Int)
(declare-const main__node_type__variant_node__position Int)
(assert (<= 0 main__node_type__variant_node__first__bit))
(assert (< main__node_type__variant_node__first__bit main__node_type__variant_node__last__bit))
(assert (<= 0 main__node_type__variant_node__position))
(declare-fun user_eq3 (us_rep1 us_rep1) Bool)
(declare-const dummy3 us_rep1)
(declare-datatypes () ((node_type__ref (mk_node_type__ref (node_type__content us_rep1)))))
(define-fun node_type__ref___projection ((a node_type__ref)) us_rep1 (node_type__content a))
(declare-datatypes () ((us_split_discrs2 (mk___split_discrs1 (rec__main__branch_type__m_height subtree_height_type)))))
(define-fun us_split_discrs___2__projection ((a us_split_discrs2)) subtree_height_type (rec__main__branch_type__m_height a))
(declare-datatypes () ((us_split_discrs__ref1 (mk___split_discrs__ref1 (us_split_discrs__content1 us_split_discrs2)))))
(define-fun us_split_discrs__ref___2__projection ((a us_split_discrs__ref1)) us_split_discrs2 (us_split_discrs__content1 a))
(declare-datatypes () ((us_split_fields2 (mk___split_fields1 (rec__main__branch_type__n us_rep1)))))
(define-fun us_split_fields_N__projection ((a us_split_fields2)) us_rep1 (rec__main__branch_type__n a))
(declare-datatypes () ((us_split_fields__ref1 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref___2__projection ((a us_split_fields__ref1)) us_split_fields2 (us_split_fields__content1 a))
(declare-datatypes () ((us_rep2 (mk___rep2 (us_split_discrs3 us_split_discrs2) (us_split_fields3 us_split_fields2)))))
(define-fun us_rep___4__projection ((a us_rep2)) us_split_discrs2 (us_split_discrs3 a))
(define-fun us_rep___5__projection ((a us_rep2)) us_split_fields2 (us_split_fields3 a))
(define-fun bool_eq2 ((a us_rep2) (b us_rep2)) Bool (ite (and (= (to_rep (rec__main__branch_type__m_height (us_split_discrs3 a))) (to_rep (rec__main__branch_type__m_height (us_split_discrs3 b)))) (= (bool_eq1 (rec__main__branch_type__n (us_split_fields3 a)) (rec__main__branch_type__n (us_split_fields3 b))) true)) true false))
(declare-const value__size2 Int)
(declare-fun object__size2 (us_rep2) Int)
(declare-const value__alignment2 Int)
(declare-fun object__alignment2 (us_rep2) Int)
(assert (<= 0 value__size2))
(assert (forall ((a us_rep2)) (<= 0 (object__size2 a))))
(assert (<= 0 value__alignment2))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment2 a))))
(declare-const main__branch_type__m_height__first__bit Int)
(declare-const main__branch_type__m_height__last__bit Int)
(declare-const main__branch_type__m_height__position Int)
(assert (<= 0 main__branch_type__m_height__first__bit))
(assert (< main__branch_type__m_height__first__bit main__branch_type__m_height__last__bit))
(assert (<= 0 main__branch_type__m_height__position))
(declare-const main__branch_type__n__first__bit Int)
(declare-const main__branch_type__n__last__bit Int)
(declare-const main__branch_type__n__position Int)
(assert (<= 0 main__branch_type__n__first__bit))
(assert (< main__branch_type__n__first__bit main__branch_type__n__last__bit))
(assert (<= 0 main__branch_type__n__position))
(declare-fun user_eq4 (us_rep2 us_rep2) Bool)
(declare-const dummy4 us_rep2)
(declare-datatypes () ((branch_type__ref (mk_branch_type__ref (branch_type__content us_rep2)))))
(define-fun branch_type__ref___projection ((a branch_type__ref)) us_rep2 (branch_type__content a))
(define-fun dynamic_invariant ((temp___expr_240 us_rep2) (temp___is_init_236 Bool) (temp___skip_constant_237 Bool) (temp___do_toplevel_238 Bool) (temp___do_typ_inv_239 Bool)) Bool (= (attr__constrained (rec__main__node_type__variant_node (us_split_fields1 (rec__main__branch_type__n (us_split_fields3 temp___expr_240))))) false))
(define-fun dynamic_invariant1 ((temp___expr_230 us_rep1) (temp___is_init_226 Bool) (temp___skip_constant_227 Bool) (temp___do_toplevel_228 Bool) (temp___do_typ_inv_229 Bool)) Bool (= (attr__constrained (rec__main__node_type__variant_node (us_split_fields1 temp___expr_230))) false))
(define-fun default_initial_assumption ((temp___expr_232 us_rep1) (temp___skip_top_level_233 Bool)) Bool (and (= (attr__constrained (rec__main__node_type__variant_node (us_split_fields1 temp___expr_232))) false) (= (to_rep1 (rec__main__node_variant_type__m_variant (us_split_discrs1 (rec__main__node_type__variant_node (us_split_fields1 temp___expr_232))))) 0)))
(define-fun in_range2 ((rec__main__node_variant_type__m_variant1 Int) (a us_rep)) Bool (= rec__main__node_variant_type__m_variant1 (to_rep1 (rec__main__node_variant_type__m_variant (us_split_discrs1 a)))))
(declare-const value__size3 Int)
(declare-fun object__size3 (us_rep) Int)
(declare-const value__alignment3 Int)
(declare-fun object__alignment3 (us_rep) Int)
(assert (<= 0 value__size3))
(assert (forall ((a us_rep)) (<= 0 (object__size3 a))))
(assert (<= 0 value__alignment3))
(assert (forall ((a us_rep)) (<= 0 (object__alignment3 a))))
(declare-const main__node_variant_type__m_variant__first__bit1 Int)
(declare-const main__node_variant_type__m_variant__last__bit1 Int)
(declare-const main__node_variant_type__m_variant__position1 Int)
(assert (<= 0 main__node_variant_type__m_variant__first__bit1))
(assert (< main__node_variant_type__m_variant__first__bit1 main__node_variant_type__m_variant__last__bit1))
(assert (<= 0 main__node_variant_type__m_variant__position1))
(declare-fun user_eq5 (us_rep us_rep) Bool)
(declare-const dummy5 us_rep)
(declare-datatypes () ((t1b__ref (mk_t1b__ref (t1b__content us_rep)))))
(define-fun t1b__ref___projection ((a t1b__ref)) us_rep (t1b__content a))
(declare-const null_node us_rep1)
(declare-const attr__ATTRIBUTE_ADDRESS Int)
(define-fun in_range3 ((rec__main__branch_type__m_height1 Int) (a us_rep2)) Bool (= rec__main__branch_type__m_height1 (to_rep (rec__main__branch_type__m_height (us_split_discrs3 a)))))
(declare-const value__size4 Int)
(declare-fun object__size4 (us_rep2) Int)
(declare-const value__alignment4 Int)
(declare-fun object__alignment4 (us_rep2) Int)
(assert (<= 0 value__size4))
(assert (forall ((a us_rep2)) (<= 0 (object__size4 a))))
(assert (<= 0 value__alignment4))
(assert (forall ((a us_rep2)) (<= 0 (object__alignment4 a))))
(declare-const main__branch_type__m_height__first__bit1 Int)
(declare-const main__branch_type__m_height__last__bit1 Int)
(declare-const main__branch_type__m_height__position1 Int)
(assert (<= 0 main__branch_type__m_height__first__bit1))
(assert (< main__branch_type__m_height__first__bit1 main__branch_type__m_height__last__bit1))
(assert (<= 0 main__branch_type__m_height__position1))
(declare-const main__branch_type__n__first__bit1 Int)
(declare-const main__branch_type__n__last__bit1 Int)
(declare-const main__branch_type__n__position1 Int)
(assert (<= 0 main__branch_type__n__first__bit1))
(assert (< main__branch_type__n__first__bit1 main__branch_type__n__last__bit1))
(assert (<= 0 main__branch_type__n__position1))
(declare-fun user_eq6 (us_rep2 us_rep2) Bool)
(declare-const dummy6 us_rep2)
(declare-datatypes () ((txS__ref (mk_txS__ref (txS__content us_rep2)))))
(define-fun txS__ref___projection ((a txS__ref)) us_rep2 (txS__content a))
(define-fun dynamic_invariant2 ((temp___expr_249 us_rep2) (temp___is_init_245 Bool) (temp___skip_constant_246 Bool) (temp___do_toplevel_247 Bool) (temp___do_typ_inv_248 Bool)) Bool (and (=> (not (= temp___skip_constant_246 true)) (in_range3 7 temp___expr_249)) (= (attr__constrained (rec__main__node_type__variant_node (us_split_fields1 (rec__main__branch_type__n (us_split_fields3 temp___expr_249))))) false)))
(define-fun default_initial_assumption1 ((temp___expr_252 us_rep2) (temp___skip_top_level_253 Bool)) Bool (and (= (to_rep (rec__main__branch_type__m_height (us_split_discrs3 temp___expr_252))) 7) (and (= (attr__constrained (rec__main__node_type__variant_node (us_split_fields1 (rec__main__branch_type__n (us_split_fields3 temp___expr_252))))) false) (= (to_rep1 (rec__main__node_variant_type__m_variant (us_split_discrs1 (rec__main__node_type__variant_node (us_split_fields1 (rec__main__branch_type__n (us_split_fields3 temp___expr_252))))))) 0))))
(declare-const x__split_discrs us_split_discrs2)
(declare-const attr__ATTRIBUTE_ADDRESS1 Int)
(define-fun dynamic_invariant3 ((temp___expr_207 Int) (temp___is_init_203 Bool) (temp___skip_constant_204 Bool) (temp___do_toplevel_205 Bool) (temp___do_typ_inv_206 Bool)) Bool (=> (or (= temp___is_init_203 true) (<= 0 14)) (in_range temp___expr_207)))
(define-fun dynamic_invariant4 ((temp___expr_214 Int) (temp___is_init_210 Bool) (temp___skip_constant_211 Bool) (temp___do_toplevel_212 Bool) (temp___do_typ_inv_213 Bool)) Bool (=> (or (= temp___is_init_210 true) (<= 0 0)) (in_range1 temp___expr_214)))
(define-fun default_initial_assumption2 ((temp___expr_223 us_rep) (temp___skip_top_level_224 Bool)) Bool (and (= (attr__constrained temp___expr_223) false) (= (to_rep1 (rec__main__node_variant_type__m_variant (us_split_discrs1 temp___expr_223))) 0)))
(assert (= null_node (mk___rep1 (mk___split_fields (let ((usq_ (mk___rep (mk___split_discrs (of_rep1 0)) true))) (mk___rep (us_split_discrs1 usq_) false))))))
(declare-const o node_enum)
(declare-const o1 node_enum)
(declare-const usq_ node_enum)
(declare-const usq_1 Bool)
(declare-const o2 node_enum)
(declare-const o3 Bool)
(declare-const o4 node_enum)
(declare-const o5 Bool)
(declare-const main__null_node__assume node_enum)
(declare-const main__null_node__assume1 Bool)
(assert (= (to_rep1 o) 0))
(assert (= o o1))
(assert (= usq_ o1))
(assert (= true usq_1))
(assert (= usq_ o2))
(assert (= false o3))
(assert (= o4 o2))
(assert (= o5 o3))
(assert (= main__null_node__assume o4))
(assert (= main__null_node__assume1 o5))
(assert (= (mk___rep1 (mk___split_fields (mk___rep (mk___split_discrs main__null_node__assume) main__null_node__assume1))) null_node))
(assert (= (attr__constrained (rec__main__node_type__variant_node (us_split_fields1 null_node))) false))
(assert (not (in_range 7)))
(check-sat)
(exit)
