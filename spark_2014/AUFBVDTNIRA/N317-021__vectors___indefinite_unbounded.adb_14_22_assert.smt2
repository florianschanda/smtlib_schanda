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

(declare-sort capacity_range 0)

(define-fun in_range ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (capacity_range capacity_range) Bool)

(declare-fun dummy () capacity_range)

(declare-datatypes ()
((capacity_range__ref
 (mk_capacity_range__ref (capacity_range__content capacity_range)))))
(define-fun capacity_range__ref___projection ((a capacity_range__ref)) capacity_range 
  (capacity_range__content a))

(declare-sort us_main_type 0)

(declare-fun us_main_eq (us_main_type us_main_type) Bool)

(declare-datatypes ()
((us_split_discrs
 (mk___split_discrs
 (rec__indefinite_unbounded__vect__vector__capacity capacity_range)))))
(define-fun us_split_discrs___projection ((a us_split_discrs)) capacity_range 
  (rec__indefinite_unbounded__vect__vector__capacity a))

(declare-datatypes ()
((us_split_discrs__ref
 (mk___split_discrs__ref (us_split_discrs__content us_split_discrs)))))
(define-fun us_split_discrs__ref___projection ((a us_split_discrs__ref)) us_split_discrs 
  (us_split_discrs__content a))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields (rec__indefinite_unbounded__vect__vector us_main_type)))))
(define-fun us_split_fields_Vector__projection ((a us_split_fields)) us_main_type 
  (rec__indefinite_unbounded__vect__vector a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep
 (mk___rep
 (us_split_discrs1 us_split_discrs)(us_split_fields1 us_split_fields)))))
(define-fun us_rep___projection ((a us_rep)) us_split_discrs (us_split_discrs1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) us_split_fields (us_split_fields1
                                                              a))

(declare-fun user_eq1 (us_rep us_rep) Bool)

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

(declare-fun indefinite_unbounded__vect__vector__capacity__first__bit () Int)

(declare-fun indefinite_unbounded__vect__vector__capacity__last__bit () Int)

(declare-fun indefinite_unbounded__vect__vector__capacity__position () Int)

;; indefinite_unbounded__vect__vector__capacity__first__bit_axiom
  (assert (<= 0 indefinite_unbounded__vect__vector__capacity__first__bit))

;; indefinite_unbounded__vect__vector__capacity__last__bit_axiom
  (assert
  (< indefinite_unbounded__vect__vector__capacity__first__bit indefinite_unbounded__vect__vector__capacity__last__bit))

;; indefinite_unbounded__vect__vector__capacity__position_axiom
  (assert (<= 0 indefinite_unbounded__vect__vector__capacity__position))

(declare-fun dummy1 () us_rep)

(declare-datatypes ()
((vector__ref (mk_vector__ref (vector__content us_rep)))))
(define-fun vector__ref___projection ((a vector__ref)) us_rep (vector__content
                                                              a))

(declare-fun length (us_rep) Int)

(declare-fun length__function_guard (Int us_rep) Bool)

(define-fun dynamic_invariant ((temp___expr_202 Int)
  (temp___is_init_199 Bool) (temp___skip_constant_200 Bool)
  (temp___do_toplevel_201 Bool)) Bool (=>
                                      (or (= temp___is_init_199 true)
                                      (<= 0 2147483647)) (in_range
                                      temp___expr_202)))

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range1 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Bool)

(declare-fun to_rep (capacity_range) Int)

(declare-fun of_rep (Int) capacity_range)

;; inversion_axiom
  (assert
  (forall ((x capacity_range))
  (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x capacity_range)) (! (in_range
  (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                           (of_rep x))) )))

(define-fun capacity ((container us_rep)) Int (ite (= (of_int 0) true)
                                              (to_rep
                                              (rec__indefinite_unbounded__vect__vector__capacity
                                              (us_split_discrs1 container)))
                                              2147483647))

(declare-fun capacity__function_guard (Int us_rep) Bool)

;; length__post_axiom
  (assert
  (forall ((container us_rep))
  (! (let ((result (length container)))
     (and (<= result (capacity container)) (dynamic_invariant result true
     false true))) :pattern ((length container)) )))

(declare-fun empty_vector (tuple0) us_rep)

(declare-fun empty_vector__function_guard (us_rep tuple0) Bool)

;; empty_vector__post_axiom
  (assert
  (forall ((us_void_param tuple0))
  (! (= (length (empty_vector us_void_param)) 0) :pattern ((empty_vector
                                                           us_void_param)) )))

(declare-fun oeq (us_rep us_rep) Bool)

(declare-fun oeq__function_guard (Bool us_rep us_rep) Bool)

(declare-sort us_main_type1 0)

(declare-fun us_main_eq1 (us_main_type1 us_main_type1) Bool)

(declare-sort us_rep1 0)

(declare-fun bool_eq1 (us_rep1 us_rep1) Bool)

(declare-fun user_eq2 (us_rep1 us_rep1) Bool)

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

(declare-fun dummy2 () us_rep1)

(declare-datatypes ()
((sequence__ref (mk_sequence__ref (sequence__content us_rep1)))))
(define-fun sequence__ref___projection ((a sequence__ref)) us_rep1 (sequence__content
                                                                   a))

(declare-fun length1 (us_rep1) Int)

(declare-fun length__function_guard1 (Int us_rep1) Bool)

(define-fun last ((container us_rep1)) Int (+ 0 (length1 container)))

(declare-fun last__function_guard (Int us_rep1) Bool)

(declare-fun get (us_rep1 Int) Int)

(declare-fun get__function_guard (Int us_rep1 Int) Bool)

(define-fun oeq1 ((left us_rep1)
  (right us_rep1)) Bool (and (= (length1 left) (length1 right)) (ite 
                                                                (forall
                                                                ((n Int))
                                                                (=>
                                                                (and (<= 1 n)
                                                                (<= n 
                                                                (last left)))
                                                                (= (get left
                                                                   n) 
                                                                (get right n))))
                                                                true false)))

(declare-fun oeq__function_guard1 (Bool us_rep1 us_rep1) Bool)

(declare-fun model__ (us_rep) us_rep1)

(declare-fun model____function_guard (us_rep1 us_rep) Bool)

;; oeq__post_axiom
  (assert
  (forall ((left us_rep) (right us_rep))
  (! (= (= (oeq left right) true)
     (= (oeq1 (model__ left) (model__ right)) true)) :pattern ((oeq left
                                                               right)) )))

(define-fun last_index ((container us_rep)) Int (last (model__ container)))

(declare-fun last_index__function_guard (Int us_rep) Bool)

(declare-sort extended_index 0)

(define-fun in_range2 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq2 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (extended_index extended_index) Bool)

(declare-fun dummy3 () extended_index)

(declare-datatypes ()
((extended_index__ref
 (mk_extended_index__ref (extended_index__content extended_index)))))
(define-fun extended_index__ref___projection ((a extended_index__ref)) extended_index 
  (extended_index__content a))

(define-fun dynamic_invariant1 ((temp___expr_196 Int)
  (temp___is_init_193 Bool) (temp___skip_constant_194 Bool)
  (temp___do_toplevel_195 Bool)) Bool (=>
                                      (or (= temp___is_init_193 true)
                                      (<= 0 2147483647)) (in_range2
                                      temp___expr_196)))

(declare-fun is_empty (us_rep) Bool)

(declare-fun is_empty__function_guard (Bool us_rep) Bool)

;; is_empty__post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (= (is_empty container) true) (= (length container) 0)) :pattern (
  (is_empty container)) )))

(declare-fun copy (us_rep Int) us_rep)

(declare-fun copy__function_guard (us_rep us_rep Int) Bool)

;; copy__post_axiom
  (assert
  (forall ((source us_rep))
  (forall ((capacity1 Int))
  (! (=>
     (and (dynamic_invariant capacity1 true true true)
     (=> (= (of_int 0) true)
     (or (= capacity1 0) (<= (length source) capacity1))))
     (let ((result (copy source capacity1)))
     (and (= (oeq1 (model__ result) (model__ source)) true)
     (ite (= capacity1 0)
     (= (to_rep
        (rec__indefinite_unbounded__vect__vector__capacity
        (us_split_discrs1 result))) (length source))
     (= (to_rep
        (rec__indefinite_unbounded__vect__vector__capacity
        (us_split_discrs1 result))) capacity1))))) :pattern ((copy source
                                                             capacity1)) ))))

(declare-fun first_index__function_guard (Int us_rep) Bool)

(declare-sort index_type 0)

(define-fun in_range3 ((x Int)) Bool (and (<= 1 x) (<= x 2147483647)))

(define-fun bool_eq3 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE3 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) Int)

(declare-fun user_eq4 (index_type index_type) Bool)

(declare-fun dummy4 () index_type)

(declare-datatypes ()
((index_type__ref (mk_index_type__ref (index_type__content index_type)))))
(define-fun index_type__ref___projection ((a index_type__ref)) index_type 
  (index_type__content a))

(define-fun dynamic_invariant2 ((temp___expr_184 Int)
  (temp___is_init_181 Bool) (temp___skip_constant_182 Bool)
  (temp___do_toplevel_183 Bool)) Bool (=>
                                      (or (= temp___is_init_181 true)
                                      (<= 1 2147483647)) (in_range3
                                      temp___expr_184)))

(define-fun element ((container us_rep)
  (index Int)) Int (get (model__ container) index))

(declare-fun element__function_guard (Int us_rep Int) Bool)

(declare-sort element_type 0)

(define-fun in_range4 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq4 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE4 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) Int)

(declare-fun user_eq5 (element_type element_type) Bool)

(declare-fun dummy5 () element_type)

(declare-datatypes ()
((element_type__ref
 (mk_element_type__ref (element_type__content element_type)))))
(define-fun element_type__ref___projection ((a element_type__ref)) element_type 
  (element_type__content a))

(define-fun dynamic_invariant3 ((temp___expr_190 Int)
  (temp___is_init_187 Bool) (temp___skip_constant_188 Bool)
  (temp___do_toplevel_189 Bool)) Bool (=>
                                      (or (= temp___is_init_187 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range4 temp___expr_190)))

(define-fun equal_except ((left us_rep1) (right us_rep1)
  (position Int)) Bool (and (= (length1 left) (length1 right)) (ite (forall
                                                                    ((i Int))
                                                                    (=>
                                                                    (and
                                                                    (<= 1 i)
                                                                    (<= i 
                                                                    (last
                                                                    left)))
                                                                    (=>
                                                                    (not
                                                                    (= i position))
                                                                    (= 
                                                                    (get left
                                                                    i) 
                                                                    (get
                                                                    right i)))))
                                                               true false)))

(declare-fun equal_except__function_guard (Bool us_rep1 us_rep1 Int) Bool)

(define-fun ole ((left us_rep1)
  (right us_rep1)) Bool (and (<= (length1 left) (length1 right)) (ite 
                                                                 (forall
                                                                 ((n Int))
                                                                 (=>
                                                                 (and
                                                                 (<= 1 n)
                                                                 (<= n 
                                                                 (last left)))
                                                                 (= (get left
                                                                    n) 
                                                                 (get right
                                                                 n)))) true
                                                                 false)))

(declare-fun ole__function_guard (Bool us_rep1 us_rep1) Bool)

(define-fun range_shifted ((left us_rep1) (right us_rep1) (fst Int) (lst Int)
  (offset Int)) Bool (and (ite (forall ((i Int))
                               (=> (and (<= fst i) (<= i lst))
                               (= (get left i) (get right (+ i offset)))))
                          true false) (ite (forall ((i Int))
                                           (=>
                                           (and (<= (+ fst offset) i)
                                           (<= i (+ lst offset)))
                                           (= (get left (- i offset)) 
                                           (get right i))))
                                      true false)))

(declare-fun range_shifted__function_guard (Bool us_rep1 us_rep1 Int Int
  Int) Bool)

(define-fun olt ((left us_rep1)
  (right us_rep1)) Bool (and (< (length1 left) (length1 right)) (ite 
                                                                (forall
                                                                ((n Int))
                                                                (=>
                                                                (and (<= 1 n)
                                                                (<= n 
                                                                (last left)))
                                                                (= (get left
                                                                   n) 
                                                                (get right n))))
                                                                true false)))

(declare-fun olt__function_guard (Bool us_rep1 us_rep1) Bool)

(define-fun m_elements_reversed ((left us_rep1)
  (right us_rep1)) Bool (and (and (= (length1 left) (length1 right)) 
  (ite (forall ((i Int))
       (=> (and (<= 1 i) (<= i (last left)))
       (= (get left i) (get right (+ (- (last left) i) 1)))))
  true false)) (ite (forall ((i Int))
                    (=> (and (<= 1 i) (<= i (last right)))
                    (= (get right i) (get left (+ (- (last left) i) 1)))))
               true false)))

(declare-fun m_elements_reversed__function_guard (Bool us_rep1 us_rep1) Bool)

(define-fun equal_except__2 ((left us_rep1) (right us_rep1) (x Int)
  (y Int)) Bool (and (= (length1 left) (length1 right)) (ite (forall
                                                             ((i Int))
                                                             (=>
                                                             (and (<= 1 i)
                                                             (<= i (last
                                                                   left)))
                                                             (=>
                                                             (and
                                                             (not (= i x))
                                                             (not (= i y)))
                                                             (= (get left i) 
                                                             (get right i)))))
                                                        true false)))

(declare-fun equal_except__2__function_guard (Bool us_rep1 us_rep1 Int
  Int) Bool)

(define-fun m_elements_swapped ((left us_rep1) (right us_rep1) (x Int)
  (y Int)) Bool (and (and (and (= (length1 left) (length1 right)) (= 
  (get left x) (get right y))) (= (get left y) (get right x))) (equal_except__2
                                                               left right x
                                                               y)))

(declare-fun m_elements_swapped__function_guard (Bool us_rep1 us_rep1 Int
  Int) Bool)

(define-fun first_element ((container us_rep)) Int (get (model__ container)
                                                   1))

(declare-fun first_element__function_guard (Int us_rep) Bool)

(define-fun last_element ((container us_rep)) Int (get (model__ container)
                                                  (last_index container)))

(declare-fun last_element__function_guard (Int us_rep) Bool)

(declare-fun find_index (us_rep Int Int) Int)

(declare-fun find_index__function_guard (Int us_rep Int Int) Bool)

(define-fun contains ((container us_rep1) (fst Int) (lst Int)
  (item Int)) Bool (ite (exists ((i Int))
                        (and (and (<= fst i) (<= i lst))
                        (= (get container i) item)))
                   true false))

(declare-fun contains__function_guard (Bool us_rep1 Int Int Int) Bool)

;; find_index__post_axiom
  (assert
  (forall ((container us_rep))
  (forall ((item Int) (index Int))
  (! (=>
     (and (dynamic_invariant3 item true true true) (dynamic_invariant2 index
     true true true))
     (let ((result (find_index container item index)))
     (and
     (ite (or (< (last_index container) index)
          (not
          (= (contains (model__ container) index (last_index container) item) true)))
     (= result 0)
     (and
     (and (and (<= index result) (<= result (last_index container)))
     (= (get (model__ container) result) item))
     (not (= (contains (model__ container) index (- result 1) item) true))))
     (dynamic_invariant1 result true false true)))) :pattern ((find_index
                                                              container item
                                                              index)) ))))

(declare-fun reverse_find_index (us_rep Int Int) Int)

(declare-fun reverse_find_index__function_guard (Int us_rep Int Int) Bool)

;; reverse_find_index__post_axiom
  (assert
  (forall ((container us_rep))
  (forall ((item Int) (index Int))
  (! (=>
     (and (dynamic_invariant3 item true true true) (dynamic_invariant2 index
     true true true))
     (let ((result (reverse_find_index container item index)))
     (and
     (ite (not
          (= (contains (model__ container) 1
             (ite (<= index (last_index container)) index
             (last_index container)) item) true))
     (= result 0)
     (and
     (and
     (and (and (<= 1 result) (<= result index))
     (<= result (last_index container)))
     (= (get (model__ container) result) item))
     (not
     (= (contains (model__ container) (+ result 1)
        (ite (<= index (last_index container)) index (last_index container))
        item) true))))
     (dynamic_invariant1 result true false true)))) :pattern ((reverse_find_index
                                                              container item
                                                              index)) ))))

(declare-fun contains1 (us_rep Int) Bool)

(declare-fun contains__function_guard1 (Bool us_rep Int) Bool)

;; contains__post_axiom
  (assert
  (forall ((container us_rep))
  (forall ((item Int))
  (! (=> (dynamic_invariant3 item true true true)
     (= (= (contains1 container item) true)
     (= (contains (model__ container) 1 (last_index container) item) true))) :pattern (
  (contains1 container item)) ))))

(define-fun has_element ((container us_rep)
  (position Int)) Bool (and (ite (<= 1 position) true false) (ite (<= position 
                                                             (last_index
                                                             container)) true
                                                             false)))

(declare-fun has_element__function_guard (Bool us_rep Int) Bool)

(declare-fun is_sorted (us_rep) Bool)

(declare-fun is_sorted__function_guard (Bool us_rep) Bool)

(declare-fun lt (Int Int) Bool)

(declare-fun lt__function_guard (Bool Int Int) Bool)

;; temp___result_132_def
  (assert
  (forall ((container us_rep1) (i Int) (j Int)) (lt__function_guard
  (lt (get container i) (get container j)) (get container i)
  (get container j))))

(define-fun m_elements_sorted ((container us_rep1)) Bool (ite (forall
                                                              ((i Int))
                                                              (=>
                                                              (and (<= 1 i)
                                                              (<= i (last
                                                                    container)))
                                                              (forall
                                                              ((j Int))
                                                              (=>
                                                              (and (<= i j)
                                                              (<= j (last
                                                                    container)))
                                                              (or
                                                              (= (get
                                                                 container i) 
                                                              (get container
                                                              j))
                                                              (= (lt
                                                                 (get
                                                                 container i)
                                                                 (get
                                                                 container j)) true))))))
                                                         true false))

(declare-fun m_elements_sorted__function_guard (Bool us_rep1) Bool)

;; is_sorted__post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (= (is_sorted container) true)
     (= (m_elements_sorted (model__ container)) true)) :pattern ((is_sorted
                                                                 container)) )))

(define-fun m_elements_included ((left us_rep1) (l_fst Int) (l_lst Int)
  (right us_rep1) (r_fst Int)
  (r_lst Int)) Bool (ite (forall ((i Int))
                         (=> (and (<= l_fst i) (<= i l_lst))
                         (exists ((j Int))
                         (and (and (<= r_fst j) (<= j r_lst))
                         (= (get left i) (get right j))))))
                    true false))

(declare-fun m_elements_included__function_guard (Bool us_rep1 Int Int
  us_rep1 Int Int) Bool)

(define-fun in_range5 ((rec__indefinite_unbounded__vect__vector__capacity1 Int)
  (a us_rep)) Bool (= rec__indefinite_unbounded__vect__vector__capacity1 
  (to_rep
  (rec__indefinite_unbounded__vect__vector__capacity (us_split_discrs1 a)))))

(declare-fun value__size2 () Int)

(declare-fun object__size2 (us_rep) Int)

(declare-fun value__alignment2 () Int)

(declare-fun object__alignment2 (us_rep) Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__size2 a))))

;; value__alignment_axiom
  (assert (<= 0 value__alignment2))

;; object__alignment_axiom
  (assert (forall ((a us_rep)) (<= 0 (object__alignment2 a))))

(declare-fun indefinite_unbounded__vect__vector__capacity__first__bit1 () Int)

(declare-fun indefinite_unbounded__vect__vector__capacity__last__bit1 () Int)

(declare-fun indefinite_unbounded__vect__vector__capacity__position1 () Int)

;; indefinite_unbounded__vect__vector__capacity__first__bit_axiom
  (assert (<= 0 indefinite_unbounded__vect__vector__capacity__first__bit1))

;; indefinite_unbounded__vect__vector__capacity__last__bit_axiom
  (assert
  (< indefinite_unbounded__vect__vector__capacity__first__bit1 indefinite_unbounded__vect__vector__capacity__last__bit1))

;; indefinite_unbounded__vect__vector__capacity__position_axiom
  (assert (<= 0 indefinite_unbounded__vect__vector__capacity__position1))

(declare-fun dummy6 () us_rep)

(declare-datatypes () ((tvS__ref (mk_tvS__ref (tvS__content us_rep)))))
(define-fun tvS__ref___projection ((a tvS__ref)) us_rep (tvS__content a))

(define-fun dynamic_invariant4 ((temp___expr_328 us_rep)
  (temp___is_init_325 Bool) (temp___skip_constant_326 Bool)
  (temp___do_toplevel_327 Bool)) Bool (=>
                                      (not (= temp___skip_constant_326 true))
                                      (in_range5 2 temp___expr_328)))

(define-fun default_initial_assumption ((temp___expr_330 us_rep)
  (temp___skip_top_level_331 Bool)) Bool (and
                                         (= (to_rep
                                            (rec__indefinite_unbounded__vect__vector__capacity
                                            (us_split_discrs1
                                            temp___expr_330))) 2)
                                         (=>
                                         (not
                                         (= temp___skip_top_level_331 true))
                                         (= (is_empty temp___expr_330) true))))

(declare-fun v__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun w__split_discrs () us_split_discrs)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(declare-sort integer 0)

(define-fun in_range6 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq5 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE5 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) Int)

(declare-fun user_eq6 (integer integer) Bool)

(declare-fun dummy7 () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(define-fun dynamic_invariant5 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range6 temp___expr_15)))

;; lt__post_axiom
  (assert true)

;; lt__def_axiom
  (assert
  (forall ((left Int) (right Int))
  (! (=> (lt__function_guard (lt left right) left right)
     (= (= (lt left right) true) (< left right))) :pattern ((lt left right)) )))

(declare-sort count_type 0)

(define-fun in_range7 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq6 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE6 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check6 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE6 (us_image) Int)

(declare-fun user_eq7 (count_type count_type) Bool)

(declare-fun dummy8 () count_type)

(declare-datatypes ()
((count_type__ref (mk_count_type__ref (count_type__content count_type)))))
(define-fun count_type__ref___projection ((a count_type__ref)) count_type 
  (count_type__content a))

(define-fun dynamic_invariant6 ((temp___expr_178 Int)
  (temp___is_init_175 Bool) (temp___skip_constant_176 Bool)
  (temp___do_toplevel_177 Bool)) Bool (=>
                                      (or (= temp___is_init_175 true)
                                      (<= 0 2147483647)) (in_range7
                                      temp___expr_178)))

;; user_eq__def_axiom
  (assert
  (forall ((a us_rep1) (b us_rep1))
  (! (= (user_eq2 a b) (oeq1 a b)) :pattern ((user_eq2 a b)) )))

(define-fun default_initial_assumption1 ((temp___expr_236 us_rep1)
  (temp___skip_top_level_237 Bool)) Bool (=>
                                         (not
                                         (= temp___skip_top_level_237 true))
                                         (= (length1 temp___expr_236) 0)))

;; model____post_axiom
  (assert
  (forall ((container us_rep))
  (! (= (length1 (model__ container)) (length container)) :pattern ((model__
                                                                    container)) )))

(declare-sort extended_index1 0)

(define-fun in_range8 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq7 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE7 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check7 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE7 (us_image) Int)

(declare-fun user_eq8 (extended_index1 extended_index1) Bool)

(declare-fun dummy9 () extended_index1)

(declare-datatypes ()
((extended_index__ref1
 (mk_extended_index__ref1 (extended_index__content1 extended_index1)))))
(define-fun extended_index__ref_2__projection ((a extended_index__ref1)) extended_index1 
  (extended_index__content1 a))

(define-fun dynamic_invariant7 ((temp___expr_229 Int)
  (temp___is_init_226 Bool) (temp___skip_constant_227 Bool)
  (temp___do_toplevel_228 Bool)) Bool (=>
                                      (or (= temp___is_init_226 true)
                                      (<= 0 2147483647)) (in_range8
                                      temp___expr_229)))

;; length__post_axiom
  (assert
  (forall ((container us_rep1))
  (! (let ((result (length1 container)))
     (and (<= (+ 0 result) 2147483647) (dynamic_invariant6 result true false
     true))) :pattern ((length1 container)) )))

(declare-sort element_type1 0)

(define-fun in_range9 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(define-fun bool_eq8 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE8 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check8 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE8 (us_image) Int)

(declare-fun user_eq9 (element_type1 element_type1) Bool)

(declare-fun dummy10 () element_type1)

(declare-datatypes ()
((element_type__ref1
 (mk_element_type__ref1 (element_type__content1 element_type1)))))
(define-fun element_type__ref_2__projection ((a element_type__ref1)) element_type1 
  (element_type__content1 a))

(define-fun dynamic_invariant8 ((temp___expr_223 Int)
  (temp___is_init_220 Bool) (temp___skip_constant_221 Bool)
  (temp___do_toplevel_222 Bool)) Bool (=>
                                      (or (= temp___is_init_220 true)
                                      (<= (- 2147483648) 2147483647))
                                      (in_range9 temp___expr_223)))

;; get__post_axiom
  (assert
  (forall ((container us_rep1))
  (forall ((position Int))
  (! (=>
     (and (dynamic_invariant7 position true true true)
     (and (<= 1 position) (<= position (last container))))
     (dynamic_invariant8 (get container position) true false true)) :pattern (
  (get container position)) ))))

(declare-fun v__split_fields () us_main_type)

(declare-fun us () Int)

(declare-fun indefinite_unbounded__vect__clear__container__fields () us_main_type)

(declare-fun result () us_main_type)

(declare-fun v__split_fields1 () us_main_type)

(define-fun v__split_fields2 () us_split_fields (mk___split_fields
                                                v__split_fields1))

(define-fun indefinite_unbounded__vect__clear__container__fields1 () us_split_fields 
  (mk___split_fields indefinite_unbounded__vect__clear__container__fields))

;; H
  (assert (and (= us 2) (in_range 2)))

;; H
  (assert (default_initial_assumption
  (mk___rep v__split_discrs (mk___split_fields v__split_fields)) false))

;; H
  (assert
  (= 2 (to_rep
       (rec__indefinite_unbounded__vect__vector__capacity v__split_discrs))))

;; H
  (assert
  (= (length
     (mk___rep v__split_discrs
     indefinite_unbounded__vect__clear__container__fields1)) 0))

;; H
  (assert (= result v__split_fields))

;; H
  (assert
  (= v__split_fields2 indefinite_unbounded__vect__clear__container__fields1))

(assert
;; WP_parameter_def
 ;; File "a-cfinve.ads", line 813, characters 0-0
  (not (= (is_empty (mk___rep v__split_discrs v__split_fields2)) true)))
(check-sat)
