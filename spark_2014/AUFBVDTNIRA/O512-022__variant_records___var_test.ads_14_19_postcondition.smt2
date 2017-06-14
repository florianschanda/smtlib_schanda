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

(declare-sort tristate 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (tristate tristate) Bool)

(declare-fun dummy () tristate)

(declare-datatypes ()
((tristate__ref (mk_tristate__ref (tristate__content tristate)))))
(define-fun tristate__ref___projection ((a tristate__ref)) tristate (tristate__content
                                                                    a))

(declare-fun to_rep (tristate) Int)

(declare-fun of_rep (Int) tristate)

;; inversion_axiom
  (assert
  (forall ((x tristate))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x tristate)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(define-fun dynamic_invariant ((temp___expr_137 Int)
  (temp___is_init_134 Bool) (temp___skip_constant_135 Bool)
  (temp___do_toplevel_136 Bool)) Bool (=>
                                      (or (= temp___is_init_134 true)
                                      (<= 0 2)) (in_range1 temp___expr_137)))

(declare-fun t_not (Int) Int)

(declare-fun t_not__function_guard (Int Int) Bool)

;; t_not__post_axiom
  (assert
  (forall ((op Int))
  (! (=> (dynamic_invariant op true true true)
     (let ((result (t_not op)))
     (=> (t_not__function_guard result op) (dynamic_invariant result true
     false true)))) :pattern ((t_not op)) )))

;; t_not__def_axiom
  (assert
  (forall ((op Int))
  (! (=>
     (and (dynamic_invariant op true true true) (t_not__function_guard
     (t_not op) op)) (= (t_not op) (ite (= op 0) 1 0))) :pattern ((t_not op)) )))

(declare-fun t_or (Int Int) Int)

(declare-fun t_or__function_guard (Int Int Int) Bool)

;; t_or__post_axiom
  (assert
  (forall ((left Int) (right Int))
  (! (=>
     (and (dynamic_invariant left true true true) (dynamic_invariant right
     true true true))
     (let ((result (t_or left right)))
     (=> (t_or__function_guard result left right) (dynamic_invariant result
     true false true)))) :pattern ((t_or left right)) )))

;; t_or__def_axiom
  (assert
  (forall ((left Int) (right Int))
  (! (=>
     (and
     (and (dynamic_invariant left true true true) (dynamic_invariant right
     true true true)) (t_or__function_guard (t_or left right) left right))
     (= (t_or left right) (ite (= left 0) 0 (ite (= left 1) right 2)))) :pattern (
  (t_or left right)) )))

(declare-fun t_and (Int Int) Int)

(declare-fun t_and__function_guard (Int Int Int) Bool)

;; t_and__post_axiom
  (assert
  (forall ((left Int) (right Int))
  (! (=>
     (and (dynamic_invariant left true true true) (dynamic_invariant right
     true true true))
     (let ((result (t_and left right)))
     (=> (t_and__function_guard result left right) (dynamic_invariant result
     true false true)))) :pattern ((t_and left right)) )))

;; t_and__def_axiom
  (assert
  (forall ((left Int) (right Int))
  (! (=>
     (and
     (and (dynamic_invariant left true true true) (dynamic_invariant right
     true true true)) (t_and__function_guard (t_and left right) left right))
     (= (t_and left right) (ite (= left 1) 1 (ite (= left 0) right 2)))) :pattern (
  (t_and left right)) )))

(declare-sort decision_kind 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 3)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq1 (decision_kind decision_kind) Bool)

(declare-fun dummy1 () decision_kind)

(declare-datatypes ()
((decision_kind__ref
 (mk_decision_kind__ref (decision_kind__content decision_kind)))))
(define-fun decision_kind__ref___projection ((a decision_kind__ref)) decision_kind 
  (decision_kind__content a))

(define-fun dynamic_invariant1 ((temp___expr_143 Int)
  (temp___is_init_140 Bool) (temp___skip_constant_141 Bool)
  (temp___do_toplevel_142 Bool)) Bool (=>
                                      (or (= temp___is_init_140 true)
                                      (<= 0 3)) (in_range2 temp___expr_143)))

(declare-fun to_rep1 (decision_kind) Int)

(declare-fun of_rep1 (Int) decision_kind)

;; inversion_axiom
  (assert
  (forall ((x decision_kind))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x decision_kind)) (! (in_range2
  (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range2 x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                              (of_rep1 x))) )))

(declare-sort node_id 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 1000)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq2 (node_id node_id) Bool)

(declare-fun dummy2 () node_id)

(declare-datatypes ()
((node_id__ref (mk_node_id__ref (node_id__content node_id)))))
(define-fun node_id__ref___projection ((a node_id__ref)) node_id (node_id__content
                                                                 a))

(define-fun dynamic_invariant2 ((temp___expr_149 Int)
  (temp___is_init_146 Bool) (temp___skip_constant_147 Bool)
  (temp___do_toplevel_148 Bool)) Bool (=>
                                      (or (= temp___is_init_146 true)
                                      (<= 1 1000)) (in_range3
                                      temp___expr_149)))

(declare-fun to_rep2 (node_id) Int)

(declare-fun of_rep2 (Int) node_id)

;; inversion_axiom
  (assert
  (forall ((x node_id))
  (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
  (assert
  (forall ((x node_id)) (! (in_range3 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range3 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                              (of_rep2 x))) )))

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs (rec__var__decision__kind decision_kind)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) decision_kind 
  (rec__var__decision__kind a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__var__decision__id node_id)(rec__var__decision__operand node_id)(rec__var__decision__left node_id)(rec__var__decision__right node_id)))))
(define-fun us_split_fields_Id__projection ((a us_split_fields)) node_id 
  (rec__var__decision__id a))

(define-fun us_split_fields_Operand__projection ((a us_split_fields)) node_id 
  (rec__var__decision__operand a))

(define-fun us_split_fields_Left__projection ((a us_split_fields)) node_id 
  (rec__var__decision__left a))

(define-fun us_split_fields_Right__projection ((a us_split_fields)) node_id 
  (rec__var__decision__right a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)(attr__constrained Bool)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(define-fun us_rep_3__projection ((a us_rep)) Bool (attr__constrained a))

(define-fun var__decision__operand__pred ((a us_rep)) Bool (= (to_rep1
                                                              (rec__var__decision__kind
                                                              (us_split_discrs1
                                                              a))) 1))

(define-fun var__decision__left__pred ((a us_rep)) Bool (or
                                                        (= (to_rep1
                                                           (rec__var__decision__kind
                                                           (us_split_discrs1
                                                           a))) 2)
                                                        (= (to_rep1
                                                           (rec__var__decision__kind
                                                           (us_split_discrs1
                                                           a))) 3)))

(define-fun var__decision__right__pred ((a us_rep)) Bool (or
                                                         (= (to_rep1
                                                            (rec__var__decision__kind
                                                            (us_split_discrs1
                                                            a))) 2)
                                                         (= (to_rep1
                                                            (rec__var__decision__kind
                                                            (us_split_discrs1
                                                            a))) 3)))

(define-fun bool_eq3 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (and
                        (and
                        (= (to_rep1
                           (rec__var__decision__kind (us_split_discrs1 a))) 
                        (to_rep1
                        (rec__var__decision__kind (us_split_discrs1 b))))
                        (= (to_rep2
                           (rec__var__decision__id (us_split_fields1 a))) 
                        (to_rep2
                        (rec__var__decision__id (us_split_fields1 b)))))
                        (=> (var__decision__operand__pred a)
                        (= (to_rep2
                           (rec__var__decision__operand (us_split_fields1 a))) 
                        (to_rep2
                        (rec__var__decision__operand (us_split_fields1 b))))))
                        (=> (var__decision__left__pred a)
                        (= (to_rep2
                           (rec__var__decision__left (us_split_fields1 a))) 
                        (to_rep2
                        (rec__var__decision__left (us_split_fields1 b))))))
                        (=> (var__decision__right__pred a)
                        (= (to_rep2
                           (rec__var__decision__right (us_split_fields1 a))) 
                        (to_rep2
                        (rec__var__decision__right (us_split_fields1 b))))))
                   true false))

(declare-fun user_eq3 (us_rep us_rep) Bool)

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

(declare-fun var__decision__kind__first__bit () Int)

(declare-fun var__decision__kind__last__bit () Int)

(declare-fun var__decision__kind__position () Int)

;; var__decision__kind__first__bit_axiom
  (assert (<= 0 var__decision__kind__first__bit))

;; var__decision__kind__last__bit_axiom
  (assert (< var__decision__kind__first__bit var__decision__kind__last__bit))

;; var__decision__kind__position_axiom
  (assert (<= 0 var__decision__kind__position))

(declare-fun var__decision__id__first__bit () Int)

(declare-fun var__decision__id__last__bit () Int)

(declare-fun var__decision__id__position () Int)

;; var__decision__id__first__bit_axiom
  (assert (<= 0 var__decision__id__first__bit))

;; var__decision__id__last__bit_axiom
  (assert (< var__decision__id__first__bit var__decision__id__last__bit))

;; var__decision__id__position_axiom
  (assert (<= 0 var__decision__id__position))

(declare-fun var__decision__operand__first__bit () Int)

(declare-fun var__decision__operand__last__bit () Int)

(declare-fun var__decision__operand__position () Int)

;; var__decision__operand__first__bit_axiom
  (assert (<= 0 var__decision__operand__first__bit))

;; var__decision__operand__last__bit_axiom
  (assert
  (< var__decision__operand__first__bit var__decision__operand__last__bit))

;; var__decision__operand__position_axiom
  (assert (<= 0 var__decision__operand__position))

(declare-fun var__decision__left__first__bit () Int)

(declare-fun var__decision__left__last__bit () Int)

(declare-fun var__decision__left__position () Int)

;; var__decision__left__first__bit_axiom
  (assert (<= 0 var__decision__left__first__bit))

;; var__decision__left__last__bit_axiom
  (assert (< var__decision__left__first__bit var__decision__left__last__bit))

;; var__decision__left__position_axiom
  (assert (<= 0 var__decision__left__position))

(declare-fun var__decision__right__first__bit () Int)

(declare-fun var__decision__right__last__bit () Int)

(declare-fun var__decision__right__position () Int)

;; var__decision__right__first__bit_axiom
  (assert (<= 0 var__decision__right__first__bit))

;; var__decision__right__last__bit_axiom
  (assert
  (< var__decision__right__first__bit var__decision__right__last__bit))

;; var__decision__right__position_axiom
  (assert (<= 0 var__decision__right__position))

(declare-fun dummy3 () us_rep)

(declare-datatypes ()
((decision__ref (mk_decision__ref (decision__content us_rep)))))
(define-fun decision__ref___projection ((a decision__ref)) us_rep (decision__content
                                                                  a))

(define-fun default_initial_assumption ((temp___expr_157 us_rep)
  (temp___skip_top_level_158 Bool)) Bool (and
                                         (= (attr__constrained
                                            temp___expr_157) false)
                                         (= (to_rep1
                                            (rec__var__decision__kind
                                            (us_split_discrs1
                                            temp___expr_157))) 0)))

(declare-datatypes ()
((map__ref (mk_map__ref (map__content (Array Int us_rep))))))
(declare-fun slide ((Array Int us_rep) Int Int) (Array Int us_rep))

;; slide_eq
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int us_rep)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(declare-fun concat1 ((Array Int us_rep) Int Int (Array Int us_rep) Int
  Int) (Array Int us_rep))

;; concat_def
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat1 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat1 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton1 (us_rep Int) (Array Int us_rep))

;; singleton_def
  (assert
  (forall ((v us_rep))
  (forall ((i Int))
  (! (= (select (singleton1 v i) i) v) :pattern ((select (singleton1 v i) i)) ))))

(define-fun bool_eq4 ((a (Array Int us_rep)) (a__first Int) (a__last Int)
  (b (Array Int us_rep)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_132 Int))
                           (=>
                           (and (<= a__first temp___idx_132)
                           (<= temp___idx_132 a__last))
                           (= (bool_eq3 (select a temp___idx_132)
                              (select b (+ (- b__first a__first) temp___idx_132))) true))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int us_rep)) (b (Array Int us_rep)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq4 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_132 Int))
  (=> (and (<= a__first temp___idx_132) (<= temp___idx_132 a__last))
  (= (bool_eq3 (select a temp___idx_132)
     (select b (+ (- b__first a__first) temp___idx_132))) true))))))))

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-datatypes ()
((map__ref1 (mk_map__ref1 (map__content1 (Array Int tristate))))))
(declare-fun slide1 ((Array Int tristate) Int Int) (Array Int tristate))

;; slide_eq
  (assert
  (forall ((a (Array Int tristate)))
  (forall ((first Int))
  (! (= (slide1 a first first) a) :pattern ((slide1 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int tristate)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide1 a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide1 a old_first new_first) i)) ))))))

(declare-fun concat2 ((Array Int tristate) Int Int (Array Int tristate) Int
  Int) (Array Int tristate))

;; concat_def
  (assert
  (forall ((a (Array Int tristate)) (b (Array Int tristate)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (forall ((i Int))
  (! (and
     (=> (and (<= a_first i) (<= i a_last))
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select a i)))
     (=> (< a_last i)
     (= (select (concat2 a a_first a_last b b_first b_last) i) (select b (+ (- i a_last) (- b_first 1)))))) :pattern ((select 
  (concat2 a a_first a_last b b_first b_last) i)) )))))

(declare-fun singleton2 (tristate Int) (Array Int tristate))

;; singleton_def
  (assert
  (forall ((v tristate))
  (forall ((i Int))
  (! (= (select (singleton2 v i) i) v) :pattern ((select (singleton2 v i) i)) ))))

(define-fun bool_eq5 ((a (Array Int tristate)) (a__first Int) (a__last Int)
  (b (Array Int tristate)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_133 Int))
                           (=>
                           (and (<= a__first temp___idx_133)
                           (<= temp___idx_133 a__last))
                           (= (to_rep (select a temp___idx_133)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_133)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int tristate)) (b (Array Int tristate)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq5 b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_133 Int))
  (=> (and (<= a__first temp___idx_133) (<= temp___idx_133 a__last))
  (= (to_rep (select a temp___idx_133)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_133)))))))))))

(declare-fun compare ((Array Int tristate) Int Int (Array Int tristate) Int
  Int) Int)

;; compare_def_eq
  (assert
  (forall ((a (Array Int tristate)) (b (Array Int tristate)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (= (compare a a_first a_last b b_first b_last) 0)
     (= (bool_eq5 a a_first a_last b b_first b_last) true)) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_lt
  (assert
  (forall ((a (Array Int tristate)) (b (Array Int tristate)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< (compare a a_first a_last b b_first b_last) 0)
     (exists ((i Int) (j Int))
     (and (<= i a_last)
     (and (< j b_last)
     (and (= (bool_eq5 a a_first i b b_first j) true)
     (or (= i a_last)
     (and (< i a_last)
     (< (to_rep (select a (+ i 1))) (to_rep (select b (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

;; compare_def_gt
  (assert
  (forall ((a (Array Int tristate)) (b (Array Int tristate)))
  (forall ((a_first Int) (a_last Int) (b_first Int) (b_last Int))
  (! (= (< 0 (compare a a_first a_last b b_first b_last))
     (exists ((i Int) (j Int))
     (and (<= i b_last)
     (and (< j a_last)
     (and (= (bool_eq5 a a_first j b b_first i) true)
     (or (= i b_last)
     (and (< i b_last)
     (< (to_rep (select b (+ i 1))) (to_rep (select a (+ j 1))))))))))) :pattern (
  (compare a a_first a_last b b_first b_last)) ))))

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-fun root_id () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS2 () Int)

(declare-fun decision_eval (Int (Array Int us_rep) (Array Int tristate)) Int)

(declare-fun decision_eval__function_guard (Int Int (Array Int us_rep)
  (Array Int tristate)) Bool)

(declare-fun d__attr__constrained () Bool)

(declare-fun attr__ATTRIBUTE_ADDRESS3 () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS4 () Int)

(declare-fun decision_table () (Array Int us_rep))

(declare-fun condition_values () (Array Int tristate))

(declare-fun d__split_fields () node_id)

(declare-fun d__split_fields1 () node_id)

(declare-fun d__split_fields2 () node_id)

(declare-fun d__split_fields3 () node_id)

(declare-fun d__split_discrs () decision_kind)

(declare-fun kind () Int)

(declare-fun var_test__decision_eval__result () Int)

(declare-fun o () Int)

(declare-fun o1 () Int)

(declare-fun o2 () Int)

(declare-fun o3 () Int)

(declare-fun o4 () Int)

(declare-fun o5 () Int)

(declare-fun o6 () Int)

(declare-fun o7 () Int)

(declare-fun result () node_id)

(declare-fun result1 () node_id)

(declare-fun result2 () node_id)

(declare-fun result3 () node_id)

(declare-fun d__split_fields4 () node_id)

(declare-fun d__split_fields5 () node_id)

(declare-fun d__split_fields6 () node_id)

(declare-fun d__split_fields7 () node_id)

(declare-fun result4 () decision_kind)

(declare-fun d__split_discrs1 () decision_kind)

(declare-fun result5 () Int)

(declare-fun kind1 () Int)

(declare-fun result6 () Int)

(declare-fun var_test__decision_eval__result1 () Int)

(declare-fun result7 () Int)

(declare-fun var_test__decision_eval__result2 () Int)

(declare-fun result8 () Int)

(declare-fun var_test__decision_eval__result3 () Int)

(declare-fun result9 () Int)

(declare-fun var_test__decision_eval__result4 () Int)

(declare-fun var_test__decision_eval__result5 () Int)

(declare-fun var_test__decision_eval__result6 () Int)

(declare-fun var_test__decision_eval__result7 () Int)

(declare-fun var_test__decision_eval__result8 () Int)

(declare-fun var_test__decision_eval__result9 () int__ref)

(declare-fun var_test__decision_eval__result10 () Int)

(declare-fun var_test__decision_eval__result11 () int__ref)

(declare-fun var_test__decision_eval__result12 () Int)

(declare-fun d__split_fields8 () us_split_fields__ref)

(declare-fun d__split_discrs2 () us_split_discrs__ref)

(declare-fun kind2 () int__ref)

(declare-fun var_test__decision_eval__result13 () int__ref)

(declare-fun d__split_fields9 () us_split_fields)

(declare-fun d__split_discrs3 () us_split_discrs)

(declare-fun kind3 () Int)

(declare-fun var_test__decision_eval__result14 () Int)

(define-fun var_test__decision_eval__result15 () int__ref (mk_int__ref
                                                          var_test__decision_eval__result7))

(define-fun d__split_discrs4 () us_split_discrs (mk___split_discrs
                                                d__split_discrs1))

(define-fun d__split_fields10 () us_split_fields (mk___split_fields
                                                 d__split_fields4
                                                 d__split_fields5
                                                 d__split_fields6
                                                 d__split_fields7))

(declare-fun result10 () Int)

;; H
  (assert
  (forall ((temp___175 Int))
  (=> (and (<= 1 temp___175) (<= temp___175 1000))
  (= (attr__constrained (select decision_table temp___175)) false))))

;; H
  (assert (in_range3 root_id))

;; H
  (assert
  (forall ((x Int))
  (=> (and (<= 1 x) (<= x 1000))
  (not (= (to_rep (select condition_values x)) 2)))))

;; H
  (assert
  (= (mk___split_fields__ref
     (mk___split_fields result result1 result2 result3)) (mk___split_fields__ref
                                                         (mk___split_fields
                                                         d__split_fields
                                                         d__split_fields1
                                                         d__split_fields2
                                                         d__split_fields3))))

;; H
  (assert
  (= d__split_fields10 (us_split_fields1 (select decision_table root_id))))

;; H
  (assert
  (= (mk___split_discrs__ref (mk___split_discrs result4)) (mk___split_discrs__ref
                                                          (mk___split_discrs
                                                          d__split_discrs))))

;; H
  (assert
  (= d__split_discrs4 (us_split_discrs1 (select decision_table root_id))))

;; H
  (assert (= d__attr__constrained false))

;; H
  (assert (= (mk_int__ref result5) (mk_int__ref kind)))

;; H
  (assert (= kind1 (to_rep1 d__split_discrs1)))

;; H
  (assert (in_range2 kind1))

;; H
  (assert
  (= var_test__decision_eval__result11 var_test__decision_eval__result9))

;; H
  (assert
  (= var_test__decision_eval__result12 var_test__decision_eval__result10))

;; H
  (assert
  (=> (= kind1 0)
  (= var_test__decision_eval__result9 (mk_int__ref
                                      var_test__decision_eval__result1))))

;; H
  (assert
  (=> (= kind1 0)
  (= var_test__decision_eval__result10 var_test__decision_eval__result1)))

;; H
  (assert (=> (= kind1 0) (= result6 var_test__decision_eval__result)))

;; H
  (assert
  (=> (= kind1 0)
  (= var_test__decision_eval__result1 (to_rep
                                      (select condition_values (to_rep2
                                                               d__split_fields4))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (= var_test__decision_eval__result9 var_test__decision_eval__result15)))

;; H
  (assert
  (=> (not (= kind1 0))
  (= var_test__decision_eval__result10 var_test__decision_eval__result8)))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (= kind1 1)
  (= var_test__decision_eval__result2 var_test__decision_eval__result7))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (= kind1 1)
  (= var_test__decision_eval__result8 var_test__decision_eval__result2))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (= kind1 1)
  (and
  (and
  (= o (decision_eval (to_rep2 d__split_fields5) decision_table
       condition_values))
  (decision_eval__function_guard o (to_rep2 d__split_fields5) decision_table
  condition_values)) (and (in_range1 o) (not (= o 2)))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (= kind1 1)
  (and (and (= o1 (t_not o)) (t_not__function_guard o1 o))
  (and (in_range1 o1) (= o1 (ite (= o 0) 1 0)))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (= kind1 1) (= result7 var_test__decision_eval__result))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (= kind1 1) (= var_test__decision_eval__result2 o1))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (= var_test__decision_eval__result15 (mk_int__ref
                                       var_test__decision_eval__result5)))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (= var_test__decision_eval__result8 var_test__decision_eval__result6))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (= kind1 2)
  (= var_test__decision_eval__result3 var_test__decision_eval__result5)))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (= kind1 2)
  (= var_test__decision_eval__result6 var_test__decision_eval__result3)))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (= kind1 2)
  (and
  (and
  (= o3 (decision_eval (to_rep2 d__split_fields7) decision_table
        condition_values))
  (decision_eval__function_guard o3 (to_rep2 d__split_fields7) decision_table
  condition_values)) (and (in_range1 o3) (not (= o3 2))))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (= kind1 2)
  (and
  (and
  (= o2 (decision_eval (to_rep2 d__split_fields6) decision_table
        condition_values))
  (decision_eval__function_guard o2 (to_rep2 d__split_fields6) decision_table
  condition_values)) (and (in_range1 o2) (not (= o2 2))))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (= kind1 2)
  (and (and (= o4 (t_or o2 o3)) (t_or__function_guard o4 o2 o3))
  (and (in_range1 o4) (= o4 (ite (= o2 0) 0 (ite (= o2 1) o3 2)))))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (= kind1 2) (= result8 var_test__decision_eval__result)))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (= kind1 2) (= var_test__decision_eval__result3 o4)))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (not (= kind1 2))
  (= var_test__decision_eval__result4 var_test__decision_eval__result5)))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (not (= kind1 2))
  (= var_test__decision_eval__result6 var_test__decision_eval__result4)))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (not (= kind1 2))
  (and
  (and
  (= o6 (decision_eval (to_rep2 d__split_fields7) decision_table
        condition_values))
  (decision_eval__function_guard o6 (to_rep2 d__split_fields7) decision_table
  condition_values)) (and (in_range1 o6) (not (= o6 2))))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (not (= kind1 2))
  (and
  (and
  (= o5 (decision_eval (to_rep2 d__split_fields6) decision_table
        condition_values))
  (decision_eval__function_guard o5 (to_rep2 d__split_fields6) decision_table
  condition_values)) (and (in_range1 o5) (not (= o5 2))))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (not (= kind1 2))
  (and (and (= o7 (t_and o5 o6)) (t_and__function_guard o7 o5 o6))
  (and (in_range1 o7) (= o7 (ite (= o5 1) 1 (ite (= o5 0) o6 2)))))))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (not (= kind1 2)) (= result9 var_test__decision_eval__result)))))

;; H
  (assert
  (=> (not (= kind1 0))
  (=> (not (= kind1 1))
  (=> (not (= kind1 2)) (= var_test__decision_eval__result4 o7)))))

;; H
  (assert
  (= var_test__decision_eval__result13 var_test__decision_eval__result11))

;; H
  (assert (= kind2 (mk_int__ref kind1)))

;; H
  (assert (= d__split_discrs2 (mk___split_discrs__ref d__split_discrs4)))

;; H
  (assert (= d__split_fields8 (mk___split_fields__ref d__split_fields10)))

;; H
  (assert
  (= var_test__decision_eval__result14 var_test__decision_eval__result12))

;; H
  (assert (= kind3 kind1))

;; H
  (assert (= d__split_discrs3 d__split_discrs4))

;; H
  (assert (= d__split_fields9 d__split_fields10))

;; H
  (assert (= result10 (int__content var_test__decision_eval__result13)))

(assert
;; WP_parameter_def
 ;; File "tristates.ads", line 3, characters 0-0
  (not (not (= (int__content var_test__decision_eval__result13) 2))))
(check-sat)
