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

(declare-sort integer 0)

(define-fun in_range ((x Int)) Bool (and (<= (- 2147483648) x)
                                    (<= x 2147483647)))

(define-fun bool_eq ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-fun dummy () integer)

(declare-datatypes ()
((integer__ref (mk_integer__ref (integer__content integer)))))
(define-fun integer__ref___projection ((a integer__ref)) integer (integer__content
                                                                 a))

(declare-sort natural 0)

(define-fun in_range1 ((x Int)) Bool (and (<= 0 x) (<= x 2147483647)))

(define-fun bool_eq1 ((x Int) (y Int)) Bool (ite (= x y) true false))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq1 (natural natural) Bool)

(declare-fun dummy1 () natural)

(declare-datatypes ()
((natural__ref (mk_natural__ref (natural__content natural)))))
(define-fun natural__ref___projection ((a natural__ref)) natural (natural__content
                                                                 a))

(define-fun dynamic_invariant ((temp___expr_33 Int) (temp___is_init_30 Bool)
  (temp___skip_constant_31 Bool)
  (temp___do_toplevel_32 Bool)) Bool (=>
                                     (or (= temp___is_init_30 true)
                                     (<= 0 2147483647)) (in_range1
                                     temp___expr_33)))

(declare-fun to_rep (natural) Int)

(declare-fun of_rep (Int) natural)

;; inversion_axiom
  (assert
  (forall ((x natural)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x natural)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-fun to_rep1 (integer) Int)

(declare-fun of_rep1 (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer))
  (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range (to_rep1 x)) :pattern ((to_rep1 x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range x) (= (to_rep1 (of_rep1 x)) x)) :pattern ((to_rep1
                                                             (of_rep1 x))) )))

(declare-datatypes ()
((us_split_fields
 (mk___split_fields
 (rec__object__t__area integer)(rec__object__t__max_width integer)(rec__object__t__max_height integer)(rec__ext__ us_private)))))
(define-fun us_split_fields_Area__projection ((a us_split_fields)) integer 
  (rec__object__t__area a))

(define-fun us_split_fields_Max_Width__projection ((a us_split_fields)) integer 
  (rec__object__t__max_width a))

(define-fun us_split_fields_Max_Height__projection ((a us_split_fields)) integer 
  (rec__object__t__max_height a))

(define-fun us_split_fields___projection ((a us_split_fields)) us_private 
  (rec__ext__ a))

(declare-datatypes ()
((us_split_fields__ref
 (mk___split_fields__ref (us_split_fields__content us_split_fields)))))
(define-fun us_split_fields__ref___projection ((a us_split_fields__ref)) us_split_fields 
  (us_split_fields__content a))

(declare-datatypes ()
((us_rep (mk___rep (us_split_fields1 us_split_fields)(attr__tag Int)))))
(define-fun us_rep___projection ((a us_rep)) us_split_fields (us_split_fields1
                                                             a))

(define-fun us_rep_2__projection ((a us_rep)) Int (attr__tag a))

(define-fun bool_eq2 ((a us_rep)
  (b us_rep)) Bool (ite (and
                        (and
                        (= (to_rep1
                           (rec__object__t__area (us_split_fields1 a))) 
                        (to_rep1 (rec__object__t__area (us_split_fields1 b))))
                        (= (to_rep1
                           (rec__object__t__max_width (us_split_fields1 a))) 
                        (to_rep1
                        (rec__object__t__max_width (us_split_fields1 b)))))
                        (= (to_rep1
                           (rec__object__t__max_height (us_split_fields1 a))) 
                        (to_rep1
                        (rec__object__t__max_height (us_split_fields1 b)))))
                   true false))

(declare-fun user_eq2 (us_rep us_rep) Bool)

(declare-fun us_dispatch_eq (us_rep us_rep) Bool)

(declare-fun us_tag () Int)

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

(declare-fun object__t__area__first__bit () Int)

(declare-fun object__t__area__last__bit () Int)

(declare-fun object__t__area__position () Int)

;; object__t__area__first__bit_axiom
  (assert (<= 0 object__t__area__first__bit))

;; object__t__area__last__bit_axiom
  (assert (< object__t__area__first__bit object__t__area__last__bit))

;; object__t__area__position_axiom
  (assert (<= 0 object__t__area__position))

(declare-fun object__t__max_width__first__bit () Int)

(declare-fun object__t__max_width__last__bit () Int)

(declare-fun object__t__max_width__position () Int)

;; object__t__max_width__first__bit_axiom
  (assert (<= 0 object__t__max_width__first__bit))

;; object__t__max_width__last__bit_axiom
  (assert
  (< object__t__max_width__first__bit object__t__max_width__last__bit))

;; object__t__max_width__position_axiom
  (assert (<= 0 object__t__max_width__position))

(declare-fun object__t__max_height__first__bit () Int)

(declare-fun object__t__max_height__last__bit () Int)

(declare-fun object__t__max_height__position () Int)

;; object__t__max_height__first__bit_axiom
  (assert (<= 0 object__t__max_height__first__bit))

;; object__t__max_height__last__bit_axiom
  (assert
  (< object__t__max_height__first__bit object__t__max_height__last__bit))

;; object__t__max_height__position_axiom
  (assert (<= 0 object__t__max_height__position))

(declare-fun dummy2 () us_rep)

(declare-datatypes () ((t__ref (mk_t__ref (t__content us_rep)))))
(define-fun t__ref___projection ((a t__ref)) us_rep (t__content a))

(declare-fun has_stored_area (us_rep) Bool)

(declare-fun has_stored_area__function_guard (Bool us_rep) Bool)

(declare-fun has_stored_area1 (Int us_rep) Bool)

(declare-fun has_stored_area__function_guard1 (Bool Int us_rep) Bool)

(define-fun to_int1 ((b Bool)) Int (ite (= b true) 1 0))

(define-fun of_int ((i Int)) Bool (ite (= i 0) false true))

(define-fun in_range2 ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Bool)

(define-fun default_initial_assumption ((temp___expr_136 us_rep)
  (temp___skip_top_level_137 Bool)) Bool (and
                                         (= (attr__tag temp___expr_136) 
                                         us_tag)
                                         (and
                                         (and
                                         (= (to_rep1
                                            (rec__object__t__area
                                            (us_split_fields1
                                            temp___expr_136))) (- 1))
                                         (= (to_rep1
                                            (rec__object__t__max_width
                                            (us_split_fields1
                                            temp___expr_136))) (- 1)))
                                         (= (to_rep1
                                            (rec__object__t__max_height
                                            (us_split_fields1
                                            temp___expr_136))) (- 1)))))

(declare-datatypes ()
((us_split_fields2
 (mk___split_fields1
 (rec__rectangle__t__width natural)(rec__rectangle__t__height natural)(rec__object__t__area1 integer)(rec__object__t__max_width1 integer)(rec__object__t__max_height1 integer)(rec__ext__1 us_private)))))
(define-fun us_split_fields_Width__projection ((a us_split_fields2)) natural 
  (rec__rectangle__t__width a))

(define-fun us_split_fields_Height__projection ((a us_split_fields2)) natural 
  (rec__rectangle__t__height a))

(define-fun us_split_fields_Area2__projection ((a us_split_fields2)) integer 
  (rec__object__t__area1 a))

(define-fun us_split_fields_Max_Width2__projection ((a us_split_fields2)) integer 
  (rec__object__t__max_width1 a))

(define-fun us_split_fields_Max_Height2__projection ((a us_split_fields2)) integer 
  (rec__object__t__max_height1 a))

(define-fun us_split_fields_2__projection ((a us_split_fields2)) us_private 
  (rec__ext__1 a))

(declare-datatypes ()
((us_split_fields__ref1
 (mk___split_fields__ref1 (us_split_fields__content1 us_split_fields2)))))
(define-fun us_split_fields__ref_2__projection ((a us_split_fields__ref1)) us_split_fields2 
  (us_split_fields__content1 a))

(declare-datatypes ()
((us_rep1 (mk___rep1 (us_split_fields3 us_split_fields2)(attr__tag1 Int)))))
(define-fun us_rep_3__projection ((a us_rep1)) us_split_fields2 (us_split_fields3
                                                                a))

(define-fun us_rep_4__projection ((a us_rep1)) Int (attr__tag1 a))

(declare-fun hide_ext__ (natural natural us_private) us_private)

(declare-fun extract__width (us_private) natural)

;; extract__width__conv
  (assert
  (forall ((width natural) (height natural))
  (forall ((rec__ext__2 us_private))
  (= (extract__width (hide_ext__ width height rec__ext__2)) width))))

(declare-fun extract__height (us_private) natural)

;; extract__height__conv
  (assert
  (forall ((width natural) (height natural))
  (forall ((rec__ext__2 us_private))
  (= (extract__height (hide_ext__ width height rec__ext__2)) height))))

(declare-fun extract__ext__ (us_private) us_private)

(define-fun to_base ((a us_rep1)) us_rep (mk___rep
                                         (mk___split_fields
                                         (rec__object__t__area1
                                         (us_split_fields3 a))
                                         (rec__object__t__max_width1
                                         (us_split_fields3 a))
                                         (rec__object__t__max_height1
                                         (us_split_fields3 a))
                                         (hide_ext__
                                         (rec__rectangle__t__width
                                         (us_split_fields3 a))
                                         (rec__rectangle__t__height
                                         (us_split_fields3 a))
                                         (rec__ext__1 (us_split_fields3 a))))
                                         (attr__tag1 a)))

(define-fun of_base ((r us_rep)) us_rep1 (mk___rep1
                                         (mk___split_fields1
                                         (extract__width
                                         (rec__ext__ (us_split_fields1 r)))
                                         (extract__height
                                         (rec__ext__ (us_split_fields1 r)))
                                         (rec__object__t__area
                                         (us_split_fields1 r))
                                         (rec__object__t__max_width
                                         (us_split_fields1 r))
                                         (rec__object__t__max_height
                                         (us_split_fields1 r))
                                         (extract__ext__
                                         (rec__ext__ (us_split_fields1 r))))
                                         (attr__tag r)))

(define-fun bool_eq3 ((a us_rep1)
  (b us_rep1)) Bool (ite (and
                         (and
                         (and
                         (and
                         (= (to_rep
                            (rec__rectangle__t__width (us_split_fields3 a))) 
                         (to_rep
                         (rec__rectangle__t__width (us_split_fields3 b))))
                         (= (to_rep
                            (rec__rectangle__t__height (us_split_fields3 a))) 
                         (to_rep
                         (rec__rectangle__t__height (us_split_fields3 b)))))
                         (= (to_rep1
                            (rec__object__t__area1 (us_split_fields3 a))) 
                         (to_rep1
                         (rec__object__t__area1 (us_split_fields3 b)))))
                         (= (to_rep1
                            (rec__object__t__max_width1 (us_split_fields3 a))) 
                         (to_rep1
                         (rec__object__t__max_width1 (us_split_fields3 b)))))
                         (= (to_rep1
                            (rec__object__t__max_height1
                            (us_split_fields3 a))) (to_rep1
                                                   (rec__object__t__max_height1
                                                   (us_split_fields3 b)))))
                    true false))

(declare-fun user_eq3 (us_rep1 us_rep1) Bool)

(declare-fun us_tag1 () Int)

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

(declare-fun rectangle__t__width__first__bit () Int)

(declare-fun rectangle__t__width__last__bit () Int)

(declare-fun rectangle__t__width__position () Int)

;; rectangle__t__width__first__bit_axiom
  (assert (<= 0 rectangle__t__width__first__bit))

;; rectangle__t__width__last__bit_axiom
  (assert (< rectangle__t__width__first__bit rectangle__t__width__last__bit))

;; rectangle__t__width__position_axiom
  (assert (<= 0 rectangle__t__width__position))

(declare-fun rectangle__t__height__first__bit () Int)

(declare-fun rectangle__t__height__last__bit () Int)

(declare-fun rectangle__t__height__position () Int)

;; rectangle__t__height__first__bit_axiom
  (assert (<= 0 rectangle__t__height__first__bit))

;; rectangle__t__height__last__bit_axiom
  (assert
  (< rectangle__t__height__first__bit rectangle__t__height__last__bit))

;; rectangle__t__height__position_axiom
  (assert (<= 0 rectangle__t__height__position))

(declare-fun object__t__area__first__bit1 () Int)

(declare-fun object__t__area__last__bit1 () Int)

(declare-fun object__t__area__position1 () Int)

;; object__t__area__first__bit_axiom
  (assert (<= 0 object__t__area__first__bit1))

;; object__t__area__last__bit_axiom
  (assert (< object__t__area__first__bit1 object__t__area__last__bit1))

;; object__t__area__position_axiom
  (assert (<= 0 object__t__area__position1))

(declare-fun object__t__max_width__first__bit1 () Int)

(declare-fun object__t__max_width__last__bit1 () Int)

(declare-fun object__t__max_width__position1 () Int)

;; object__t__max_width__first__bit_axiom
  (assert (<= 0 object__t__max_width__first__bit1))

;; object__t__max_width__last__bit_axiom
  (assert
  (< object__t__max_width__first__bit1 object__t__max_width__last__bit1))

;; object__t__max_width__position_axiom
  (assert (<= 0 object__t__max_width__position1))

(declare-fun object__t__max_height__first__bit1 () Int)

(declare-fun object__t__max_height__last__bit1 () Int)

(declare-fun object__t__max_height__position1 () Int)

;; object__t__max_height__first__bit_axiom
  (assert (<= 0 object__t__max_height__first__bit1))

;; object__t__max_height__last__bit_axiom
  (assert
  (< object__t__max_height__first__bit1 object__t__max_height__last__bit1))

;; object__t__max_height__position_axiom
  (assert (<= 0 object__t__max_height__position1))

(declare-fun dummy3 () us_rep1)

(declare-datatypes () ((t__ref1 (mk_t__ref1 (t__content1 us_rep1)))))
(define-fun t__ref_2__projection ((a t__ref1)) us_rep1 (t__content1 a))

;; has_stored_area__post_axiom
  (assert true)

;; has_stored_area__post__dispatch_axiom
  (assert true)

;; rectangle__t__compat_axiom
  (assert
  (forall ((obj us_rep))
  (! (=> (has_stored_area__function_guard1 (has_stored_area1 us_tag1 obj)
     us_tag1 obj)
     (and (has_stored_area__function_guard (has_stored_area obj) obj)
     (= (to_int1 (has_stored_area obj)) (to_int1
                                        (has_stored_area1 us_tag1 obj))))) :pattern (
  (has_stored_area1 us_tag1 obj)) )))

;; object__t__compat_axiom
  (assert
  (forall ((obj us_rep))
  (! (=> (has_stored_area__function_guard1 (has_stored_area1 us_tag obj)
     us_tag obj)
     (and (has_stored_area__function_guard (has_stored_area obj) obj)
     (= (to_int1 (has_stored_area obj)) (to_int1
                                        (has_stored_area1 us_tag obj))))) :pattern (
  (has_stored_area1 us_tag obj)) )))

;; has_stored_area__def_axiom
  (assert
  (forall ((obj us_rep))
  (! (=> (has_stored_area__function_guard (has_stored_area obj) obj)
     (= (= (has_stored_area obj) true) (in_range1
     (to_rep1 (rec__object__t__area (us_split_fields1 obj)))))) :pattern (
  (has_stored_area obj)) )))

(declare-fun get_stored_area (us_rep) Int)

(declare-fun get_stored_area__function_guard (Int us_rep) Bool)

(declare-fun get_stored_area1 (Int us_rep) Int)

(declare-fun get_stored_area__function_guard1 (Int Int us_rep) Bool)

;; get_stored_area__post_axiom
  (assert
  (forall ((obj us_rep))
  (! (and (has_stored_area__function_guard (has_stored_area obj) obj)
     (=> (= (has_stored_area obj) true)
     (let ((result (get_stored_area obj)))
     (=> (get_stored_area__function_guard result obj) (dynamic_invariant
     result true false true))))) :pattern ((get_stored_area obj)) )))

;; get_stored_area__post__dispatch_axiom
  (assert
  (forall ((attr__tag2 Int))
  (forall ((obj us_rep))
  (! (and (has_stored_area__function_guard1
     (has_stored_area1 (attr__tag obj) obj) (attr__tag obj) obj)
     (=> (= (has_stored_area1 (attr__tag obj) obj) true)
     (let ((result (get_stored_area1 attr__tag2 obj)))
     (=> (get_stored_area__function_guard1 result attr__tag2 obj)
     (dynamic_invariant result true false true))))) :pattern ((get_stored_area1
                                                              attr__tag2 obj)) ))))

;; rectangle__t__compat_axiom
  (assert
  (forall ((obj us_rep))
  (! (=> (get_stored_area__function_guard1 (get_stored_area1 us_tag1 obj)
     us_tag1 obj)
     (and (get_stored_area__function_guard (get_stored_area obj) obj)
     (= (get_stored_area obj) (get_stored_area1 us_tag1 obj)))) :pattern (
  (get_stored_area1 us_tag1 obj)) )))

;; object__t__compat_axiom
  (assert
  (forall ((obj us_rep))
  (! (=> (get_stored_area__function_guard1 (get_stored_area1 us_tag obj)
     us_tag obj)
     (and (get_stored_area__function_guard (get_stored_area obj) obj)
     (= (get_stored_area obj) (get_stored_area1 us_tag obj)))) :pattern (
  (get_stored_area1 us_tag obj)) )))

;; get_stored_area__def_axiom
  (assert
  (forall ((obj us_rep))
  (! (=> (get_stored_area__function_guard (get_stored_area obj) obj)
     (= (get_stored_area obj) (to_rep1
                              (rec__object__t__area (us_split_fields1 obj))))) :pattern (
  (get_stored_area obj)) )))

(declare-fun set_area__specific_post (Int us_split_fields Int Int
  us_split_fields) Bool)

;; rectangle__t__compat_axiom
  (assert
  (forall ((object__set_area__obj__fields us_split_fields)
  (object__set_area__obj__old__fields us_split_fields))
  (forall ((obj__attr__tag Int) (value Int))
  (! (=> (set_area__specific_post us_tag1 object__set_area__obj__fields
     obj__attr__tag value object__set_area__obj__old__fields)
     (and
     (and (has_stored_area__function_guard
     (has_stored_area
     (mk___rep object__set_area__obj__fields obj__attr__tag))
     (mk___rep object__set_area__obj__fields obj__attr__tag))
     (= (has_stored_area
        (mk___rep object__set_area__obj__fields obj__attr__tag)) true))
     (and (get_stored_area__function_guard
     (get_stored_area
     (mk___rep object__set_area__obj__fields obj__attr__tag))
     (mk___rep object__set_area__obj__fields obj__attr__tag))
     (= value (get_stored_area
              (mk___rep object__set_area__obj__fields obj__attr__tag)))))) :pattern ((set_area__specific_post
  us_tag1 object__set_area__obj__fields obj__attr__tag value
  object__set_area__obj__old__fields)) ))))

;; object__t__compat_axiom
  (assert
  (forall ((object__set_area__obj__fields us_split_fields)
  (object__set_area__obj__old__fields us_split_fields))
  (forall ((obj__attr__tag Int) (value Int))
  (! (=> (set_area__specific_post us_tag object__set_area__obj__fields
     obj__attr__tag value object__set_area__obj__old__fields)
     (and
     (and (has_stored_area__function_guard
     (has_stored_area
     (mk___rep object__set_area__obj__fields obj__attr__tag))
     (mk___rep object__set_area__obj__fields obj__attr__tag))
     (= (has_stored_area
        (mk___rep object__set_area__obj__fields obj__attr__tag)) true))
     (and (get_stored_area__function_guard
     (get_stored_area
     (mk___rep object__set_area__obj__fields obj__attr__tag))
     (mk___rep object__set_area__obj__fields obj__attr__tag))
     (= value (get_stored_area
              (mk___rep object__set_area__obj__fields obj__attr__tag)))))) :pattern ((set_area__specific_post
  us_tag object__set_area__obj__fields obj__attr__tag value
  object__set_area__obj__old__fields)) ))))

(define-fun default_initial_assumption1 ((temp___expr_173 us_rep1)
  (temp___skip_top_level_174 Bool)) Bool (and
                                         (= (attr__tag1 temp___expr_173) 
                                         us_tag1)
                                         (and
                                         (and
                                         (= (to_rep1
                                            (rec__object__t__area1
                                            (us_split_fields3
                                            temp___expr_173))) (- 1))
                                         (= (to_rep1
                                            (rec__object__t__max_width1
                                            (us_split_fields3
                                            temp___expr_173))) (- 1)))
                                         (= (to_rep1
                                            (rec__object__t__max_height1
                                            (us_split_fields3
                                            temp___expr_173))) (- 1)))))

(declare-fun rec____attr__tag () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS () Int)

(declare-fun attr__ATTRIBUTE_ADDRESS1 () Int)

(define-fun dynamic_invariant1 ((temp___expr_15 Int) (temp___is_init_12 Bool)
  (temp___skip_constant_13 Bool)
  (temp___do_toplevel_14 Bool)) Bool (=>
                                     (or (= temp___is_init_12 true)
                                     (<= (- 2147483648) 2147483647))
                                     (in_range temp___expr_15)))

(declare-fun rec____split_fields () natural)

(declare-fun rec____split_fields1 () natural)

(declare-fun rec____split_fields2 () integer)

(declare-fun rec____split_fields3 () integer)

(declare-fun rec____split_fields4 () integer)

(declare-fun rec____split_fields5 () us_private)

(declare-fun result__ () Int)

(declare-fun o () Bool)

(declare-fun result () Bool)

;; H
  (assert (=> (<= 0 2147483647) (in_range1 result__)))

;; H
  (assert
  (and
  (and
  (= o (has_stored_area
       (mk___rep
       (mk___split_fields rec____split_fields2 rec____split_fields3
       rec____split_fields4
       (hide_ext__ rec____split_fields rec____split_fields1
       rec____split_fields5)) rec____attr__tag)))
  (has_stored_area__function_guard o
  (mk___rep
  (mk___split_fields rec____split_fields2 rec____split_fields3
  rec____split_fields4
  (hide_ext__ rec____split_fields rec____split_fields1 rec____split_fields5))
  rec____attr__tag)))
  (= (= o true) (in_range1 (to_rep1 rec____split_fields2)))))

;; H
  (assert (= result (ite (not (= o true)) true false)))

;; H
  (assert (= result true))

(assert
;; WP_parameter_def
 ;; File "rectangle.ads", line 9, characters 0-0
  (not (in_range
  (* (to_rep rec____split_fields) (to_rep rec____split_fields1)))))
(check-sat)
